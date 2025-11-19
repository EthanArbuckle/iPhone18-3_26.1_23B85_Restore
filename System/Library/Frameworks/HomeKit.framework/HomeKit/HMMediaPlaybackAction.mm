@interface HMMediaPlaybackAction
+ (id)actionWithProtoBuf:(id)a3 home:(id)a4;
- (BOOL)_handleUpdates:(id)a3;
- (BOOL)_updateWithSerializedAction:(id)a3 home:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidWithError:(id *)a3;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMMediaPlaybackAction)init;
- (HMMediaPlaybackAction)initWithCoder:(id)a3;
- (HMMediaPlaybackAction)initWithDictionary:(id)a3 home:(id)a4;
- (HMMediaPlaybackAction)initWithMediaProfiles:(id)a3 playbackState:(int64_t)a4 volume:(id)a5 playbackArchive:(id)a6;
- (HMMediaPlaybackAction)initWithUUID:(id)a3;
- (MPPlaybackArchive)playbackArchive;
- (NSNumber)volume;
- (NSSet)mediaProfiles;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsProtoBuf;
- (id)initWithMediaProfiles:(uint64_t)a3 playbackState:(void *)a4 volume:(void *)a5 playbackArchive:(uint64_t)a6 uuid:;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)state;
- (void)__configureWithContext:(id)a3 actionSet:(id)a4;
- (void)updateWithAction:(id)a3 completionHandler:(id)a4;
@end

@implementation HMMediaPlaybackAction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = [(HMMediaPlaybackAction *)self mediaProfiles];
    v8 = [(HMMediaPlaybackAction *)v6 mediaProfiles];
    v9 = [v7 isEqualToSet:v8];

    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = [(HMMediaPlaybackAction *)self playbackArchive];
    v11 = [(HMMediaPlaybackAction *)v6 playbackArchive];
    v12 = HMFEqualObjects();

    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = [(HMMediaPlaybackAction *)self state];
    if (v13 == [(HMMediaPlaybackAction *)v6 state])
    {
      v14 = [(HMMediaPlaybackAction *)self volume];
      v15 = [(HMMediaPlaybackAction *)v6 volume];
      v16 = HMFEqualObjects();
    }

    else
    {
LABEL_10:
      v16 = 0;
    }
  }

  return v16;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(HMAction *)self actionSet];
    v8 = [v7 home];

    v9 = [v6 state];
    v10 = [v6 volume];
    v11 = [v6 playbackArchive];
    v12 = [v6 mediaProfiles];
    os_unfair_lock_lock_with_options();
    state = self->_state;
    v14 = state != v9;
    if (state != v9)
    {
      self->_state = v9;
    }

    volume = self->_volume;
    if ((HMFEqualObjects() & 1) == 0)
    {
      objc_storeStrong(&self->_volume, v10);
      v14 = 1;
    }

    playbackArchive = self->_playbackArchive;
    if ((HMFEqualObjects() & 1) == 0)
    {
      objc_storeStrong(&self->_playbackArchive, v11);
      v14 = 1;
    }

    mediaProfiles = self->_mediaProfiles;
    if ((HMFEqualObjects() & 1) == 0)
    {
      v18 = resolveProfiles(v12, v8);
      v19 = self->_mediaProfiles;
      self->_mediaProfiles = v18;

      v14 = 1;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_handleUpdates:(id)a3
{
  v4 = a3;
  v5 = [(HMAction *)self actionSet];
  v6 = [v5 home];
  LOBYTE(self) = [(HMMediaPlaybackAction *)self _updateWithSerializedAction:v4 home:v6];

  return self;
}

- (BOOL)_updateWithSerializedAction:(id)a3 home:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmf_numberForKey:@"kActionType"];
  v9 = [v8 unsignedIntegerValue];
  v10 = 0;
  if (v8 && v9 == 1)
  {
    v11 = [v6 hmf_numberForKey:@"state"];
    v12 = [v11 integerValue];
    v13 = [v6 hmf_numberForKey:@"volume"];
    v14 = [v6 hmf_dataForKey:@"playbackArchive"];
    v41 = v14;
    if (v14)
    {
      v44 = 0;
      v15 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:&v44];
      v16 = v44;
      if (!v15)
      {
        obj = v13;
        context = objc_autoreleasePoolPush();
        v17 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v46 = v35;
          v47 = 2112;
          v48 = v16;
          _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Couldn't decode playbackArchive: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v13 = obj;
      }
    }

    else
    {
      v15 = 0;
    }

    if (v12)
    {
      v19 = v11 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19 || v13 || v15)
    {
      obja = v13;
      v24 = [v6 hmf_arrayForKey:@"profiles"];
      v38 = v7;
      if (v24)
      {
        v25 = MEMORY[0x1E695DFD8];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __58__HMMediaPlaybackAction__updateWithSerializedAction_home___block_invoke;
        v42[3] = &unk_1E7548600;
        v43 = v7;
        v26 = [v24 na_map:v42];
        v27 = [v25 setWithArray:v26];
      }

      else
      {
        v27 = 0;
      }

      v28 = [v27 count];
      v10 = v28 != 0;
      if (v28)
      {
        os_unfair_lock_lock_with_options();
        self->_state = v12;
        objc_storeStrong(&self->_volume, obja);
        objc_storeStrong(&self->_playbackArchive, v15);
        objc_storeStrong(&self->_mediaProfiles, v27);
        os_unfair_lock_unlock(&self->_lock);
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = self;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v32 = contexta = v29;
          *buf = 138543362;
          v46 = v32;
          _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@_updateWithSerializedAction no media profiles in action", buf, 0xCu);

          v29 = contexta;
        }

        objc_autoreleasePoolPop(v29);
      }

      v7 = v38;
      v13 = obja;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v46 = v23;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@_updateWithSerializedAction no state, volume, or queue contained in action", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v10 = 0;
    }
  }

  v33 = *MEMORY[0x1E69E9840];
  return v10;
}

id __58__HMMediaPlaybackAction__updateWithSerializedAction_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a2;
  v5 = [[v3 alloc] initWithUUIDString:v4];

  v6 = [*(a1 + 32) mediaProfileWithProfileUUID:v5];

  return v6;
}

- (BOOL)isValidWithError:(id *)a3
{
  v4 = [(HMMediaPlaybackAction *)self mediaProfiles];
  v5 = [v4 count];

  if (!v5)
  {
    return 0;
  }

  if ([(HMMediaPlaybackAction *)self state])
  {
    return 1;
  }

  v7 = [(HMMediaPlaybackAction *)self volume];
  if (v7)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(HMMediaPlaybackAction *)self playbackArchive];
    v6 = v7 != 0;
  }

  return v6;
}

- (id)_serializeForAdd
{
  v32[1] = *MEMORY[0x1E69E9840];
  if ([(HMAction *)self isValid])
  {
    v26.receiver = self;
    v26.super_class = HMMediaPlaybackAction;
    v3 = [(HMAction *)&v26 _serializeForAdd];
    v4 = [v3 mutableCopy];

    v31 = @"state";
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMMediaPlaybackAction state](self, "state")}];
    v32[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    [v4 addEntriesFromDictionary:v6];

    v7 = [(HMMediaPlaybackAction *)self volume];

    if (v7)
    {
      v8 = [(HMMediaPlaybackAction *)self volume];
      [v4 setObject:v8 forKey:@"volume"];
    }

    v9 = [(HMMediaPlaybackAction *)self playbackArchive];

    if (v9)
    {
      v10 = MEMORY[0x1E696ACC8];
      v11 = [(HMMediaPlaybackAction *)self playbackArchive];
      v25 = 0;
      v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v25];
      v13 = v25;

      if (v12)
      {
        [v4 setObject:v12 forKey:@"playbackArchive"];
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        v16 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543618;
          v28 = v18;
          v29 = 2112;
          v30 = v13;
          _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Couldn't encode playbackArchive: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
      }
    }

    v19 = [(HMMediaPlaybackAction *)self mediaProfiles];
    v20 = [v19 copy];

    v21 = [v20 na_map:&__block_literal_global_19667];
    v22 = [v21 allObjects];
    [v4 setObject:v22 forKeyedSubscript:@"profiles"];

    v14 = [v4 copy];
  }

  else
  {
    v14 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v14;
}

id __41__HMMediaPlaybackAction__serializeForAdd__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 profileUniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (HMMediaPlaybackAction)initWithDictionary:(id)a3 home:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = HMMediaPlaybackAction;
  v8 = [(HMAction *)&v18 initWithDictionary:v6 home:v7];
  v9 = v8;
  if (v8 && ![(HMMediaPlaybackAction *)v8 _updateWithSerializedAction:v6 home:v7])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v9;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = objc_opt_class();
      *buf = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)updateWithAction:(id)a3 completionHandler:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMMediaPlaybackAction updateWithAction:completionHandler:]", @"action"];
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

LABEL_18:
    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v29;
    v33 = 2112;
    v34 = v25;
    _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

LABEL_19:
    objc_autoreleasePoolPop(v26);
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v25 userInfo:0];
    objc_exception_throw(v30);
  }

  v8 = v7;
  v9 = [(HMAction *)self context];
  if (!v8)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMMediaPlaybackAction updateWithAction:completionHandler:]", @"completion"];
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v10 = v9;
  if (v9)
  {
    v11 = [(HMAction *)self actionSet];
    v12 = [v11 home];
    if (v12)
    {
      v13 = [v6 _serializeForAdd];
      v14 = [(HMAction *)self uuid];

      if (v14)
      {
        [v11 _updateAction:self changes:v13 completionHandler:v8];
LABEL_13:

        goto LABEL_14;
      }

      [(HMMediaPlaybackAction *)self _updateWithSerializedAction:v13 home:v12];
      v21 = [v10 delegateCaller];
      v20 = v21;
      v22 = v8;
      v23 = 0;
    }

    else
    {
      v13 = [v10 delegateCaller];
      v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
      v21 = v13;
      v22 = v8;
      v23 = v20;
    }

    [v21 callCompletion:v22 error:v23];

    goto LABEL_13;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v18;
    v33 = 2080;
    v34 = "[HMMediaPlaybackAction updateWithAction:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (v8)[2](v8, v19);

LABEL_14:
  v24 = *MEMORY[0x1E69E9840];
}

- (HMMediaPlaybackAction)initWithCoder:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = HMMediaPlaybackAction;
  v5 = [(HMAction *)&v32 initWithCoder:v4];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = [(HMAction *)v5 actionSet];
  v8 = [v7 home];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"HMMPA.profiles"];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __39__HMMediaPlaybackAction_initWithCoder___block_invoke;
  v30[3] = &unk_1E75485B8;
  v13 = v8;
  v31 = v13;
  v14 = [v12 na_map:v30];
  mediaProfiles = v6->_mediaProfiles;
  v6->_mediaProfiles = v14;

  v16 = [(NSSet *)v6->_mediaProfiles count];
  if (v16)
  {
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMPA.state"];
    v6->_state = [v17 integerValue];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMPA.volume"];
    volume = v6->_volume;
    v6->_volume = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMPA.archive"];
    playbackArchive = v6->_playbackArchive;
    v6->_playbackArchive = v20;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v6;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = objc_opt_class();
      *buf = 138543618;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive %@, no media profiles", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }

  if (!v16)
  {
    v27 = 0;
  }

  else
  {
LABEL_8:
    v27 = v6;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

id __39__HMMediaPlaybackAction_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  v4 = [v2 mediaProfileWithUUID:v3];

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock_with_options();
  v4 = [(HMMediaPlaybackAction *)[HMMutableMediaPlaybackAction alloc] initWithMediaProfiles:self->_state playbackState:self->_volume volume:self->_playbackArchive playbackArchive:0 uuid:?];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)initWithMediaProfiles:(uint64_t)a3 playbackState:(void *)a4 volume:(void *)a5 playbackArchive:(uint64_t)a6 uuid:
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = HMMediaPlaybackAction;
    v14 = objc_msgSendSuper2(&v20, sel_initWithUUID_, a6);
    if (v14)
    {
      v15 = [v11 copy];
      v16 = *(v14 + 7);
      *(v14 + 7) = v15;

      *(v14 + 8) = a3;
      v17 = [v12 copy];
      v18 = *(v14 + 9);
      *(v14 + 9) = v17;

      objc_storeStrong(v14 + 10, a5);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)actionWithProtoBuf:(id)a3 home:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = MEMORY[0x1E696AFB0];
    v11 = v6[1];
    v12 = [v10 hmf_UUIDWithBytesAsData:v11];

    if (v12)
    {
      v50 = a1;
      v52 = v12;
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v14 = v6[3];
      v15 = [v14 countByEnumeratingWithState:&v55 objects:v64 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v56;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v56 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [MEMORY[0x1E696AFB0] hmf_UUIDWithBytesAsData:*(*(&v55 + 1) + 8 * i)];
            v20 = [v8 mediaProfileWithUUID:v19];
            if (!v20)
            {
              v32 = objc_autoreleasePoolPush();
              v33 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v34 = HMFGetLogIdentifier();
                *buf = 138543618;
                v61 = v34;
                v62 = 2112;
                v63 = v19;
                _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find mediaProfile: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v32);
              v9 = 0;
              v12 = v52;
              goto LABEL_33;
            }

            v21 = v20;
            [v13 addObject:v20];
          }

          v16 = [v14 countByEnumeratingWithState:&v55 objects:v64 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v13];
      v49 = *(v6 + 4);
      v22 = 0x1E696A000uLL;
      if (v6[5])
      {
        v23 = MEMORY[0x1E695DFD8];
        v59 = objc_opt_class();
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
        v25 = [v23 setWithArray:v24];

        v26 = MEMORY[0x1E696ACD0];
        v27 = v6[5];
        v54 = 0;
        v19 = [v26 unarchivedObjectOfClasses:v25 fromData:v27 error:&v54];
        v28 = v54;

        if (!v19)
        {
          v29 = objc_autoreleasePoolPush();
          v30 = v50;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            contexta = HMFGetLogIdentifier();
            *buf = 138543618;
            v61 = contexta;
            v62 = 2112;
            v63 = v28;
            _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive volume from volume data: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
        }

        v22 = 0x1E696A000;
      }

      else
      {
        v19 = 0;
      }

      if (v6[4])
      {
        v38 = *(v22 + 3280);
        v39 = objc_opt_class();
        v40 = v6[4];
        v53 = 0;
        v41 = [v38 unarchivedObjectOfClass:v39 fromData:v40 error:&v53];
        v42 = v53;

        v12 = v52;
        if (!v41)
        {
          context = objc_autoreleasePoolPush();
          v43 = v50;
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v51 = HMFGetLogIdentifier();
            *buf = 138543618;
            v61 = v51;
            v62 = 2112;
            v63 = v42;
            _os_log_impl(&dword_19BB39000, v44, OS_LOG_TYPE_ERROR, "%{public}@Can't decode playbackArchive from protobuf: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
        }
      }

      else
      {
        v41 = 0;
        v12 = v52;
      }

      v9 = [[HMMediaPlaybackAction alloc] initWithMediaProfiles:v14 playbackState:v49 volume:v19 playbackArchive:v41 uuid:v12];

LABEL_33:
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v61 = v37;
        _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@Couldn't decode uuid for action", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      v9 = 0;
    }
  }

  v45 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock_with_options();
  v4 = [[HMMediaPlaybackAction alloc] initWithMediaProfiles:self->_state playbackState:self->_volume volume:self->_playbackArchive playbackArchive:0 uuid:?];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)encodeAsProtoBuf
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(HMPBMediaPlaybackAction);
  v4 = [(HMAction *)self uuid];
  v5 = [v4 hm_convertToData];
  if (v3)
  {
    objc_storeStrong(&v3->_actionUUID, v5);
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v3)
  {
    objc_storeStrong(&v3->_mediaProfiles, v6);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = [(HMMediaPlaybackAction *)self mediaProfiles];
  v8 = [v7 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    do
    {
      v11 = 0;
      do
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v44 + 1) + 8 * v11) uniqueIdentifier];
        v13 = [v12 hm_convertToData];

        if (v3)
        {
          mediaProfiles = v3->_mediaProfiles;
        }

        else
        {
          mediaProfiles = 0;
        }

        v15 = mediaProfiles;
        [(NSMutableArray *)v15 addObject:v13];

        ++v11;
      }

      while (v9 != v11);
      v16 = [v7 countByEnumeratingWithState:&v44 objects:v52 count:16];
      v9 = v16;
    }

    while (v16);
  }

  v17 = [(HMMediaPlaybackAction *)self state];
  if (v3)
  {
    *&v3->_has |= 1u;
    v3->_mediaPlaybackState = v17;
  }

  v18 = [(HMMediaPlaybackAction *)self volume];

  if (v18)
  {
    v19 = MEMORY[0x1E696ACC8];
    v20 = [(HMMediaPlaybackAction *)self volume];
    v43 = 0;
    v21 = [v19 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v43];
    v22 = v43;
    if (v3)
    {
      objc_storeStrong(&v3->_volume, v21);

      volume = v3->_volume;
    }

    else
    {

      volume = 0;
    }

    v24 = volume;

    if (!v24)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v49 = v34;
        v50 = 2112;
        v51 = v22;
        _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Couldn't encode volume: %@", buf, 0x16u);
      }

      v35 = v32;
      goto LABEL_35;
    }
  }

  v25 = [(HMMediaPlaybackAction *)self playbackArchive];

  if (!v25)
  {
LABEL_28:
    v31 = objc_alloc_init(HMPBActionContainer);
    [(HMPBActionContainer *)v31 setType:2];
    [(HMPBActionContainer *)v31 setMediaPlaybackAction:v3];
    goto LABEL_36;
  }

  v26 = MEMORY[0x1E696ACC8];
  v27 = [(HMMediaPlaybackAction *)self playbackArchive];
  v42 = 0;
  v28 = [v26 archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v42];
  v22 = v42;
  if (v3)
  {
    objc_storeStrong(&v3->_playbackArchive, v28);

    playbackArchive = v3->_playbackArchive;
  }

  else
  {

    playbackArchive = 0;
  }

  v30 = playbackArchive;

  if (v30)
  {

    goto LABEL_28;
  }

  v36 = objc_autoreleasePoolPush();
  v37 = self;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = HMFGetLogIdentifier();
    *buf = 138543618;
    v49 = v39;
    v50 = 2112;
    v51 = v22;
    _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, "%{public}@Couldn't encode playbackArchive: %@", buf, 0x16u);
  }

  v35 = v36;
LABEL_35:
  objc_autoreleasePoolPop(v35);

  v31 = 0;
LABEL_36:

  v40 = *MEMORY[0x1E69E9840];

  return v31;
}

- (MPPlaybackArchive)playbackArchive
{
  os_unfair_lock_lock_with_options();
  v3 = self->_playbackArchive;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSNumber)volume
{
  os_unfair_lock_lock_with_options();
  v3 = self->_volume;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (int64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (NSSet)mediaProfiles
{
  os_unfair_lock_lock_with_options();
  v3 = self->_mediaProfiles;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)__configureWithContext:(id)a3 actionSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMMediaPlaybackAction;
  [(HMAction *)&v11 __configureWithContext:v6 actionSet:v7];
  v8 = [v7 home];
  os_unfair_lock_lock_with_options();
  v9 = resolveProfiles(self->_mediaProfiles, v8);
  mediaProfiles = self->_mediaProfiles;
  self->_mediaProfiles = v9;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMMediaPlaybackAction)initWithMediaProfiles:(id)a3 playbackState:(int64_t)a4 volume:(id)a5 playbackArchive:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (![v10 count])
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!a4 && !v11 && !v12)
  {
LABEL_7:
    v15 = _HMFPreconditionFailure();
    [(HMMediaPlaybackAction *)v15 initWithUUID:v16, v17];
  }

  v13 = [(HMMediaPlaybackAction *)self initWithMediaProfiles:v10 playbackState:a4 volume:v11 playbackArchive:v12 uuid:0];

  return v13;
}

- (HMMediaPlaybackAction)initWithUUID:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMMediaPlaybackAction)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end