@interface HMOutgoingHomeInvitation
+ (id)homeInvitationsFromData:(id)a3 home:(id)a4;
+ (id)homeInvitationsFromEncodedData:(id)a3 home:(id)a4;
- (BOOL)_mergeWithNewAccessoryInvitations:(id)a3;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMOutgoingHomeInvitation)initWithCoder:(id)a3;
- (HMOutgoingHomeInvitation)initWithInvitationData:(id)a3 home:(id)a4;
- (NSDictionary)appleSharingDict;
- (void)__configureWithContext:(id)a3 home:(id)a4;
- (void)_cancelInviteWithCompletionHandler:(id)a3;
- (void)_unconfigure;
- (void)cancelInviteWithCompletionHandler:(id)a3;
@end

@implementation HMOutgoingHomeInvitation

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 accessoryInvitations];
    v7 = [(HMOutgoingHomeInvitation *)self _mergeWithNewAccessoryInvitations:v6];
    v8 = [(HMHomeInvitation *)self invitationState];
    if (v8 != [v5 invitationState])
    {
      -[HMHomeInvitation _updateInvitationState:](self, "_updateInvitationState:", [v5 invitationState]);
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HMOutgoingHomeInvitation)initWithCoder:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.invitationData"];
  v21.receiver = self;
  v21.super_class = HMOutgoingHomeInvitation;
  v6 = [(HMHomeInvitation *)&v21 initWithCoder:v4 invitationData:v5];
  if (v6)
  {
    v7 = [HMUser alloc];
    v8 = [v5 inviteeUserID];
    v9 = [v5 inviteeName];
    v10 = [v5 inviteeUUID];
    v11 = [(HMHomeInvitation *)v6 home];
    v12 = [(HMUser *)v7 initWithUserID:v8 name:v9 uuid:v10 home:v11];
    invitee = v6->_invitee;
    v6->_invitee = v12;

    accessoryInvitations = v6->_accessoryInvitations;
    v15 = MEMORY[0x1E695DFD8];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"HM.accessoryInvitations"];
    [(HMMutableArray *)accessoryInvitations setArray:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_mergeWithNewAccessoryInvitations:(id)a3
{
  v4 = a3;
  v5 = [HMObjectMergeCollection alloc];
  v6 = [(HMOutgoingHomeInvitation *)self accessoryInvitations];
  v7 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:v6 newObjects:v4];

  v8 = [(HMObjectMergeCollection *)v7 removedObjects];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__HMOutgoingHomeInvitation__mergeWithNewAccessoryInvitations___block_invoke;
  v13[3] = &unk_1E754C138;
  v13[4] = self;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v13];

  v9 = [(HMObjectMergeCollection *)v7 addedObjects];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__HMOutgoingHomeInvitation__mergeWithNewAccessoryInvitations___block_invoke_130;
  v12[3] = &unk_1E754C138;
  v12[4] = self;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];

  [(HMObjectMergeCollection *)v7 mergeCommonObjects];
  v10 = [(HMObjectMergeCollection *)v7 finalObjects];
  [(HMMutableArray *)self->_accessoryInvitations setArray:v10];

  LOBYTE(self) = [(HMObjectMergeCollection *)v7 isModified];
  return self;
}

void __62__HMOutgoingHomeInvitation__mergeWithNewAccessoryInvitations___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed accessory invitation via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

void __62__HMOutgoingHomeInvitation__mergeWithNewAccessoryInvitations___block_invoke_130(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added accessory invitation via merge: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [v3 accessory];
  v9 = [*(a1 + 32) home];
  v10 = [v9 accessories];
  v11 = [v8 uniqueIdentifier];
  v12 = [v10 hmf_firstObjectWithUniqueIdentifier:v11];

  [v3 setAccessory:v12];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_cancelInviteWithCompletionHandler:(id)a3
{
  v9 = a3;
  v4 = [(HMHomeInvitation *)self home];
  v5 = v4;
  if (v4)
  {
    [v4 _cancelInvitation:self completionHandler:v9];
  }

  else
  {
    v6 = [(HMHomeInvitation *)self context];
    v7 = [v6 delegateCaller];
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    [v7 callCompletion:v9 error:v8];
  }
}

- (void)cancelInviteWithCompletionHandler:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMHomeInvitation *)self context];
  if (!v4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMOutgoingHomeInvitation cancelInviteWithCompletionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    objc_exception_throw(v19);
  }

  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__HMOutgoingHomeInvitation_cancelInviteWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v21 = v4;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v11;
      v24 = 2080;
      v25 = "[HMOutgoingHomeInvitation cancelInviteWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
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
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring home invitation", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMHomeInvitation *)v5 setHome:0];
    [(HMHomeInvitation *)v5 setContext:0];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)__configureWithContext:(id)a3 home:(id)a4
{
  v6 = a4;
  [(HMHomeInvitation *)self setContext:a3];
  [(HMHomeInvitation *)self setHome:v6];
}

- (HMOutgoingHomeInvitation)initWithInvitationData:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = HMOutgoingHomeInvitation;
  v8 = [(HMHomeInvitation *)&v18 initWithInvitationData:v6 home:v7];
  if (v8)
  {
    v9 = [HMUser alloc];
    v10 = [v6 inviteeUserID];
    v11 = [v6 inviteeName];
    v12 = [v6 inviteeUUID];
    v13 = [(HMUser *)v9 initWithUserID:v10 name:v11 uuid:v12 home:v7];
    invitee = v8->_invitee;
    v8->_invitee = v13;

    v15 = +[HMMutableArray array];
    accessoryInvitations = v8->_accessoryInvitations;
    v8->_accessoryInvitations = v15;
  }

  return v8;
}

+ (id)homeInvitationsFromData:(id)a3 home:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [HMOutgoingHomeInvitation alloc];
        v15 = [(HMOutgoingHomeInvitation *)v14 initWithInvitationData:v13 home:v6, v19];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)homeInvitationsFromEncodedData:(id)a3 home:(id)a4
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

    if (!v12)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = a1;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v17;
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive outgoing home invitation data from encoded invitations data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }

    v18 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v20)
    {
      v21 = [HMOutgoingHomeInvitation homeInvitationsFromData:v20 home:v7];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (NSDictionary)appleSharingDict
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"HMHomeInvitationIdentifierKey";
  v2 = [(HMHomeInvitation *)self identifier];
  v3 = [v2 UUIDString];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end