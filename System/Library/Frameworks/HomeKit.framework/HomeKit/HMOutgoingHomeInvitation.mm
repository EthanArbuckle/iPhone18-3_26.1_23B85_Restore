@interface HMOutgoingHomeInvitation
+ (id)homeInvitationsFromData:(id)data home:(id)home;
+ (id)homeInvitationsFromEncodedData:(id)data home:(id)home;
- (BOOL)_mergeWithNewAccessoryInvitations:(id)invitations;
- (BOOL)mergeFromNewObject:(id)object;
- (HMOutgoingHomeInvitation)initWithCoder:(id)coder;
- (HMOutgoingHomeInvitation)initWithInvitationData:(id)data home:(id)home;
- (NSDictionary)appleSharingDict;
- (void)__configureWithContext:(id)context home:(id)home;
- (void)_cancelInviteWithCompletionHandler:(id)handler;
- (void)_unconfigure;
- (void)cancelInviteWithCompletionHandler:(id)handler;
@end

@implementation HMOutgoingHomeInvitation

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    accessoryInvitations = [v5 accessoryInvitations];
    v7 = [(HMOutgoingHomeInvitation *)self _mergeWithNewAccessoryInvitations:accessoryInvitations];
    invitationState = [(HMHomeInvitation *)self invitationState];
    if (invitationState != [v5 invitationState])
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

- (HMOutgoingHomeInvitation)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.invitationData"];
  v21.receiver = self;
  v21.super_class = HMOutgoingHomeInvitation;
  v6 = [(HMHomeInvitation *)&v21 initWithCoder:coderCopy invitationData:v5];
  if (v6)
  {
    v7 = [HMUser alloc];
    inviteeUserID = [v5 inviteeUserID];
    inviteeName = [v5 inviteeName];
    inviteeUUID = [v5 inviteeUUID];
    home = [(HMHomeInvitation *)v6 home];
    v12 = [(HMUser *)v7 initWithUserID:inviteeUserID name:inviteeName uuid:inviteeUUID home:home];
    invitee = v6->_invitee;
    v6->_invitee = v12;

    accessoryInvitations = v6->_accessoryInvitations;
    v15 = MEMORY[0x1E695DFD8];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"HM.accessoryInvitations"];
    [(HMMutableArray *)accessoryInvitations setArray:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_mergeWithNewAccessoryInvitations:(id)invitations
{
  invitationsCopy = invitations;
  v5 = [HMObjectMergeCollection alloc];
  accessoryInvitations = [(HMOutgoingHomeInvitation *)self accessoryInvitations];
  v7 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:accessoryInvitations newObjects:invitationsCopy];

  removedObjects = [(HMObjectMergeCollection *)v7 removedObjects];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__HMOutgoingHomeInvitation__mergeWithNewAccessoryInvitations___block_invoke;
  v13[3] = &unk_1E754C138;
  v13[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v13];

  addedObjects = [(HMObjectMergeCollection *)v7 addedObjects];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__HMOutgoingHomeInvitation__mergeWithNewAccessoryInvitations___block_invoke_130;
  v12[3] = &unk_1E754C138;
  v12[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v12];

  [(HMObjectMergeCollection *)v7 mergeCommonObjects];
  finalObjects = [(HMObjectMergeCollection *)v7 finalObjects];
  [(HMMutableArray *)self->_accessoryInvitations setArray:finalObjects];

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

- (void)_cancelInviteWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  home = [(HMHomeInvitation *)self home];
  v5 = home;
  if (home)
  {
    [home _cancelInvitation:self completionHandler:handlerCopy];
  }

  else
  {
    context = [(HMHomeInvitation *)self context];
    delegateCaller = [context delegateCaller];
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    [delegateCaller callCompletion:handlerCopy error:v8];
  }
}

- (void)cancelInviteWithCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHomeInvitation *)self context];
  if (!handlerCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMOutgoingHomeInvitation cancelInviteWithCompletionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v6 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__HMOutgoingHomeInvitation_cancelInviteWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v21 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    (*(handlerCopy + 2))(handlerCopy, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_unconfigure
{
  v13 = *MEMORY[0x1E69E9840];
  context = [(HMHomeInvitation *)self context];

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (context)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring home invitation", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMHomeInvitation *)selfCopy setHome:0];
    [(HMHomeInvitation *)selfCopy setContext:0];
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

- (void)__configureWithContext:(id)context home:(id)home
{
  homeCopy = home;
  [(HMHomeInvitation *)self setContext:context];
  [(HMHomeInvitation *)self setHome:homeCopy];
}

- (HMOutgoingHomeInvitation)initWithInvitationData:(id)data home:(id)home
{
  dataCopy = data;
  homeCopy = home;
  v18.receiver = self;
  v18.super_class = HMOutgoingHomeInvitation;
  v8 = [(HMHomeInvitation *)&v18 initWithInvitationData:dataCopy home:homeCopy];
  if (v8)
  {
    v9 = [HMUser alloc];
    inviteeUserID = [dataCopy inviteeUserID];
    inviteeName = [dataCopy inviteeName];
    inviteeUUID = [dataCopy inviteeUUID];
    v13 = [(HMUser *)v9 initWithUserID:inviteeUserID name:inviteeName uuid:inviteeUUID home:homeCopy];
    invitee = v8->_invitee;
    v8->_invitee = v13;

    v15 = +[HMMutableArray array];
    accessoryInvitations = v8->_accessoryInvitations;
    v8->_accessoryInvitations = v15;
  }

  return v8;
}

+ (id)homeInvitationsFromData:(id)data home:(id)home
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  homeCopy = home;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dataCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = dataCopy;
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
        v15 = [(HMOutgoingHomeInvitation *)v14 initWithInvitationData:v13 home:homeCopy, v19];
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

+ (id)homeInvitationsFromEncodedData:(id)data home:(id)home
{
  v29[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  homeCopy = home;
  if (dataCopy)
  {
    v8 = MEMORY[0x1E696ACD0];
    v9 = MEMORY[0x1E695DFD8];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v11 = [v9 setWithArray:v10];
    v24 = 0;
    v12 = [v8 unarchivedObjectOfClasses:v11 fromData:dataCopy error:&v24];
    v13 = v24;

    if (!v12)
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      v21 = [HMOutgoingHomeInvitation homeInvitationsFromData:v20 home:homeCopy];
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
  identifier = [(HMHomeInvitation *)self identifier];
  uUIDString = [identifier UUIDString];
  v8[0] = uUIDString;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end