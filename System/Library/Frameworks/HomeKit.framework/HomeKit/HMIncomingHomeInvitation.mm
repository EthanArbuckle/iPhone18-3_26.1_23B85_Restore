@interface HMIncomingHomeInvitation
+ (id)incomingHomeInvitationFromEncodedData:(id)a3 homeManager:(id)a4;
+ (id)shortDescription;
- (BOOL)isForPKSharingMessageInvitationWithAppleSharingDict:(id)a3;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMHomeManager)homeManager;
- (HMIncomingHomeInvitation)initWithCoder:(id)a3;
- (HMIncomingHomeInvitation)initWithInvitationData:(id)a3 homeManager:(id)a4;
- (NSArray)attributeDescriptions;
- (NSString)homeName;
- (NSString)shortDescription;
- (NSUUID)homeUUID;
- (void)__configureWithContext:(id)a3 homeManager:(id)a4;
- (void)_unconfigure;
- (void)acceptInviteWithCompletionHandler:(id)a3;
- (void)acceptInviteWithPresenceAuthStatus:(unint64_t)a3 completionHandler:(id)a4;
- (void)cancelInviteWithCompletionHandler:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)ignoreInviteWithCompletionHandler:(id)a3;
- (void)reportJunkInviteWithCompletionHandler:(id)a3;
@end

@implementation HMIncomingHomeInvitation

- (HMHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (NSArray)attributeDescriptions
{
  v26[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v25 = [(HMHomeInvitation *)self uniqueIdentifier];
  v24 = [v3 initWithName:@"ID" value:v25];
  v26[0] = v24;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v23 = [(HMIncomingHomeInvitation *)self inviter];
  v22 = [v23 userID];
  v21 = [v4 initWithName:@"Inviter UserID" value:v22];
  v26[1] = v21;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  v6 = [(HMIncomingHomeInvitation *)self inviter];
  v7 = [v6 name];
  v8 = [v5 initWithName:@"Inviter Name" value:v7];
  v26[2] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMIncomingHomeInvitation *)self isInviteeRestrictedGuest];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"Is RG" value:v10];
  v26[3] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMIncomingHomeInvitation *)self homeHasCameras];
  v13 = HMFBooleanToString();
  v14 = [v12 initWithName:@"DoesHomeHasCameras" value:v13];
  v26[4] = v14;
  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  v16 = [(HMIncomingHomeInvitation *)self restrictedGuestSchedule];
  v17 = [v15 initWithName:@"rgSchedule" value:v16];
  v26[5] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:6];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(HMHomeInvitation *)self invitationState];
    v7 = [v5 invitationState];
    v8 = v6 == v7;
    v9 = v6 != v7;
    if (!v8)
    {
      -[HMHomeInvitation _updateInvitationState:](self, "_updateInvitationState:", [v5 invitationState]);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMHomeInvitation *)self invitationData];
  [v4 encodeObject:v5 forKey:@"HM.invitationData"];
}

- (HMIncomingHomeInvitation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.invitationData"];
  v17.receiver = self;
  v17.super_class = HMIncomingHomeInvitation;
  v6 = [(HMHomeInvitation *)&v17 initWithCoder:v4 invitationData:v5];
  if (v6)
  {
    v7 = [HMUser alloc];
    v8 = [v5 inviterUserID];
    v9 = [v5 inviterName];
    v10 = [v5 inviterUUID];
    v11 = [(HMHomeInvitation *)v6 home];
    v12 = [(HMUser *)v7 initWithUserID:v8 name:v9 uuid:v10 home:v11];
    inviter = v6->_inviter;
    v6->_inviter = v12;

    v6->_homeHasCameras = [v4 decodeBoolForKey:@"HMIncomingInvitationHomeHasCamerasCodingKey"];
    v6->_inviteeRestrictedGuest = [v4 decodeBoolForKey:@"HM.u.isRG"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.RG.Schedule"];
    restrictedGuestSchedule = v6->_restrictedGuestSchedule;
    v6->_restrictedGuestSchedule = v14;
  }

  return v6;
}

- (void)reportJunkInviteWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMHomeInvitation *)self context];
  if (!v4)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMIncomingHomeInvitation reportJunkInviteWithCompletionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v22;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v6 = v5;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling a junk invitation.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [(HMIncomingHomeInvitation *)v8 homeManager];
    if (v12)
    {
      v13 = v12;
      [v12 _reportJunkInvitation:v8 completionHandler:v4];
    }

    else
    {
      v15 = [v6 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [v15 callCompletion:v4 error:v16];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v14;
      v26 = 2080;
      v27 = "[HMIncomingHomeInvitation reportJunkInviteWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v4[2](v4, v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)acceptInviteWithPresenceAuthStatus:(unint64_t)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(HMHomeInvitation *)self context];
  if (!v6)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMIncomingHomeInvitation acceptInviteWithPresenceAuthStatus:completionHandler:]", @"completion"];
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v25;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
    objc_exception_throw(v26);
  }

  v8 = v7;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = HMUserPresenceAuthorizationStatusAsString(a3);
      *buf = 138543618;
      v28 = v13;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling accepted invitation with presenceAuthStatus: %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v15 = [(HMIncomingHomeInvitation *)v10 homeManager];
    if (v15)
    {
      v16 = v15;
      [v15 _acceptInvitation:v10 presenceAuthStatus:a3 completionHandler:v6];
    }

    else
    {
      v18 = [v8 delegateCaller];
      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:21 userInfo:0];
      [v18 callCompletion:v6 error:v19];

      v16 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v17;
      v29 = 2080;
      v30 = "[HMIncomingHomeInvitation acceptInviteWithPresenceAuthStatus:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v6[2](v6, v16);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)acceptInviteWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMHomeInvitation *)self context];
  if (!v4)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMIncomingHomeInvitation acceptInviteWithCompletionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v22;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v6 = v5;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling accepted invitation.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [(HMIncomingHomeInvitation *)v8 homeManager];
    if (v12)
    {
      v13 = v12;
      [v12 _acceptInvitation:v8 completionHandler:v4];
    }

    else
    {
      v15 = [v6 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:21 userInfo:0];
      [v15 callCompletion:v4 error:v16];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v14;
      v26 = 2080;
      v27 = "[HMIncomingHomeInvitation acceptInviteWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v4[2](v4, v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)ignoreInviteWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMHomeInvitation *)self context];
  if (!v4)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMIncomingHomeInvitation ignoreInviteWithCompletionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v22;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v6 = v5;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling ignored invitation.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [(HMIncomingHomeInvitation *)v8 homeManager];
    if (v12)
    {
      v13 = v12;
      [v12 _ignoreInvitation:v8 completionHandler:v4];
    }

    else
    {
      v15 = [v6 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [v15 callCompletion:v4 error:v16];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v14;
      v26 = 2080;
      v27 = "[HMIncomingHomeInvitation ignoreInviteWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v4[2](v4, v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)cancelInviteWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMHomeInvitation *)self context];
  if (!v4)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMIncomingHomeInvitation cancelInviteWithCompletionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v22;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v6 = v5;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling declined invitation.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [(HMIncomingHomeInvitation *)v8 homeManager];
    if (v12)
    {
      v13 = v12;
      [v12 _declineInvitation:v8 completionHandler:v4];
    }

    else
    {
      v15 = [v6 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [v15 callCompletion:v4 error:v16];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v14;
      v26 = 2080;
      v27 = "[HMIncomingHomeInvitation cancelInviteWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v4[2](v4, v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (NSUUID)homeUUID
{
  v2 = [(HMHomeInvitation *)self invitationData];
  v3 = [v2 homeUUID];

  return v3;
}

- (NSString)homeName
{
  v2 = [(HMHomeInvitation *)self invitationData];
  v3 = [v2 homeName];

  return v3;
}

- (void)_unconfigure
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(HMHomeInvitation *)self context];

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring incoming Home invitation", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMIncomingHomeInvitation *)v5 setHomeManager:0];
    [(HMHomeInvitation *)v5 setContext:0];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)__configureWithContext:(id)a3 homeManager:(id)a4
{
  v6 = a4;
  [(HMHomeInvitation *)self setContext:a3];
  [(HMIncomingHomeInvitation *)self setHomeManager:v6];
}

- (HMIncomingHomeInvitation)initWithInvitationData:(id)a3 homeManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = HMIncomingHomeInvitation;
  v8 = [(HMHomeInvitation *)&v16 initWithInvitationData:v6 home:0];
  if (v8)
  {
    v9 = [HMUser alloc];
    v10 = [v6 inviterUserID];
    v11 = [v6 inviterName];
    v12 = [v6 inviterUUID];
    v13 = [(HMUser *)v9 initWithUserID:v10 name:v11 uuid:v12 home:0];
    inviter = v8->_inviter;
    v8->_inviter = v13;

    objc_storeWeak(&v8->_homeManager, v7);
  }

  return v8;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)incomingHomeInvitationFromEncodedData:(id)a3 homeManager:(id)a4
{
  v29[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = MEMORY[0x1E696ACD0];
    v9 = MEMORY[0x1E695DFD8];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v11 = [v9 setWithArray:v10];
    v24 = 0;
    v12 = [v8 unarchivedObjectOfClasses:v11 fromData:v6 error:&v24];
    v13 = v24;

    if (v12)
    {
      v14 = v12;
      objc_opt_class();
      v15 = objc_opt_isKindOfClass() & 1;
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v15)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = a1;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v21;
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive incoming home invitation data from encoded invitations data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  v14 = MEMORY[0x1E695E0F0];
LABEL_12:

  v22 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)isForPKSharingMessageInvitationWithAppleSharingDict:(id)a3
{
  v4 = [a3 hmf_stringForKey:@"HMHomeInvitationIdentifierKey"];
  v5 = [(HMHomeInvitation *)self identifier];
  v6 = [v5 UUIDString];
  v7 = [v4 isEqualToString:v6];

  return v7;
}

@end