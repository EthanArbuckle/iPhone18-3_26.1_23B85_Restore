@interface HMRemoteLoginHandler
+ (id)logCategory;
- (ACAccount)loggedInAccount;
- (BOOL)_configureAccessoryInfoDataProviderIfNeeded;
- (BOOL)isControllable;
- (BOOL)isSessionInProgress;
- (BOOL)mergeFromNewObject:(id)object;
- (HMAccessory)accessory;
- (HMRemoteLoginHandler)initWithCoder:(id)coder;
- (HMRemoteLoginHandler)initWithUUID:(id)d accessory:(id)accessory loggedInAccount:(id)account stagedLoggedInAccount:(id)inAccount anisetteDataProvider:(id)provider;
- (NSString)currentSessionID;
- (NSString)description;
- (NSUUID)uniqueIdentifier;
- (id)_accountFromAccountInfo:(id)info;
- (id)logIdentifier;
- (id)messageDestination;
- (void)_callAccountUpdateDelegate;
- (void)_companionLoginWithAccount:(id)account completion:(id)completion;
- (void)_configureWithContext:(id)context accessory:(id)accessory;
- (void)_handleLoginResponse:(id)response error:(id)error completion:(id)completion;
- (void)_handleQueryProxiedDeviceResponse:(id)response error:(id)error completion:(id)completion;
- (void)_handleRemoteLoginAccountUpdated:(id)updated;
- (void)_handleRemoteLoginSignoutResponse:(id)response error:(id)error completion:(id)completion;
- (void)_proxyLoginWithAuthResults:(id)results completion:(id)completion;
- (void)_queryProxiedDevice:(id)device;
- (void)_signout:(id)_signout;
- (void)accessoryInfoDataProvider:(id)provider didReceiveUpdatesForAccessoryWithIdentifier:(id)identifier accountInfo:(id)info;
- (void)companionLoginWithAccount:(id)account completion:(id)completion;
- (void)proxyLoginWithAuthResults:(id)results completion:(id)completion;
- (void)queryProxiedDevice:(id)device;
- (void)registerForMessages;
- (void)setCurrentSessionID:(id)d;
- (void)setLoggedInAccount:(id)account;
- (void)signout:(id)signout;
- (void)updateLoggedInAccount:(id)account completionHandler:(id)handler;
@end

@implementation HMRemoteLoginHandler

- (HMAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uniqueIdentifier = [(HMRemoteLoginHandler *)self uniqueIdentifier];
  uuid = [(HMRemoteLoginHandler *)self uuid];
  accessory = [(HMRemoteLoginHandler *)self accessory];
  uniqueIdentifier2 = [accessory uniqueIdentifier];
  currentSessionID = [(HMRemoteLoginHandler *)self currentSessionID];
  [(HMRemoteLoginHandler *)self isControllable];
  v10 = HMFBooleanToString();
  [(HMRemoteLoginHandler *)self isSessionInProgress];
  v11 = HMFBooleanToString();
  loggedInAccount = [(HMRemoteLoginHandler *)self loggedInAccount];
  v13 = [v3 stringWithFormat:@"<%@: identifier = %@, uuid = %@, accessory identifier = %@, currentSessionID = %@, isControllable = %@, sessionInProgress = %@, loggedInAccount = %@>", v4, uniqueIdentifier, uuid, uniqueIdentifier2, currentSessionID, v10, v11, loggedInAccount];

  return v13;
}

- (id)logIdentifier
{
  uuid = [(HMRemoteLoginHandler *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (id)_accountFromAccountInfo:(id)info
{
  v45 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v35 = 138543618;
    v36 = v8;
    v37 = 2112;
    v38 = infoCopy;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Transferring account: %@", &v35, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_autoreleasePoolPush();
  v10 = selfCopy;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    username = [infoCopy username];
    aaAltDSID = [infoCopy aaAltDSID];
    amsAltDSID = [infoCopy amsAltDSID];
    [infoCopy signedIn];
    v16 = HMFBooleanToString();
    v35 = 138544386;
    v36 = v12;
    v37 = 2112;
    v38 = username;
    v39 = 2112;
    v40 = aaAltDSID;
    v41 = 2112;
    v42 = amsAltDSID;
    v43 = 2112;
    v44 = v16;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Transferring account username: %@, aaAltDSID:%@, amsAltDSID: %@, signedIn: %@", &v35, 0x34u);
  }

  objc_autoreleasePoolPop(v9);
  username2 = [infoCopy username];

  if (username2)
  {
    v18 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v19 = [v18 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959930]];
    if (v19)
    {
      v20 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v19];
      if (v20)
      {
        username3 = [infoCopy username];
        [v20 setUsername:username3];

        aaAltDSID2 = [infoCopy aaAltDSID];
        [v20 _aa_setAltDSID:aaAltDSID2];

        amsAltDSID2 = [infoCopy amsAltDSID];
        [v20 ams_setAltDSID:amsAltDSID2];

        v24 = [v20 copy];
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = v10;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          v35 = 138543618;
          v36 = v32;
          v37 = 2112;
          v38 = infoCopy;
          _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to transform accountInfo %@", &v35, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        v24 = 0;
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v10;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v28;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine store account type for iTunesStore", &v35, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)accessoryInfoDataProvider:(id)provider didReceiveUpdatesForAccessoryWithIdentifier:(id)identifier accountInfo:(id)info
{
  v22 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  identifierCopy = identifier;
  infoCopy = info;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v14;
    v20 = 2112;
    v21 = infoCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Received updated accountInfo: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  os_unfair_lock_lock_with_options();
  v15 = [(HMRemoteLoginHandler *)selfCopy _accountFromAccountInfo:infoCopy];
  loggedInAccount = selfCopy->_loggedInAccount;
  selfCopy->_loggedInAccount = v15;

  selfCopy->_didReceiveAccountInfo = 1;
  os_unfair_lock_unlock(&selfCopy->_lock);
  [(HMRemoteLoginHandler *)selfCopy _callAccountUpdateDelegate];

  v17 = *MEMORY[0x1E69E9840];
}

- (HMRemoteLoginHandler)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIdentifierKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRemoteLoginAccount"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kStagedRemoteLoginAccount"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRemoteLoginAnisetterProviderBridge"];

  v10 = [(HMRemoteLoginHandler *)self initWithUUID:v5 accessory:v6 loggedInAccount:v7 stagedLoggedInAccount:v8 anisetteDataProvider:v9];
  return v10;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMRemoteLoginHandler *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (void)_handleRemoteLoginSignoutResponse:(id)response error:(id)error completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (errorCopy)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      loggedInAccount = [(HMRemoteLoginHandler *)selfCopy loggedInAccount];
      v22 = 138543874;
      v23 = v15;
      v24 = 2112;
      v25 = loggedInAccount;
      v26 = 2112;
      v27 = errorCopy;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Signing out of account %@ failed with error: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      loggedInAccount2 = [(HMRemoteLoginHandler *)selfCopy loggedInAccount];
      v22 = 138543618;
      v23 = v17;
      v24 = 2112;
      v25 = loggedInAccount2;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Signed out of account %@ successfully", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMRemoteLoginHandler *)selfCopy setLoggedInAccount:0];
  }

  context = [(HMRemoteLoginHandler *)selfCopy context];
  delegateCaller = [context delegateCaller];
  [delegateCaller callCompletion:completionCopy error:errorCopy];

  [(HMRemoteLoginHandler *)selfCopy setCurrentSessionID:0];
  v21 = *MEMORY[0x1E69E9840];
}

- (void)_signout:(id)_signout
{
  v45 = *MEMORY[0x1E69E9840];
  _signoutCopy = _signout;
  currentSessionID = [(HMRemoteLoginHandler *)self currentSessionID];

  if (currentSessionID)
  {
    if (_signoutCopy)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = 15;
LABEL_4:
      context = [v6 hmErrorWithCode:v7];
      _signoutCopy[2](_signoutCopy, context);
LABEL_17:
    }
  }

  else
  {
    loggedInAccount = [(HMRemoteLoginHandler *)self loggedInAccount];

    if (loggedInAccount)
    {
      context = [(HMRemoteLoginHandler *)self context];
      if (context)
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
        v39 = @"kRemoteLoginSessionID";
        uUIDString = [uUID UUIDString];
        v40 = uUIDString;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

        v13 = objc_alloc(MEMORY[0x1E69A2A10]);
        v14 = objc_alloc(MEMORY[0x1E69A2A00]);
        uuid = [(HMRemoteLoginHandler *)self uuid];
        v16 = [v14 initWithTarget:uuid];
        v17 = [v13 initWithName:@"kRemoteLoginSignout" destination:v16 payload:v12];

        v33 = MEMORY[0x1E69E9820];
        v34 = 3221225472;
        v35 = __33__HMRemoteLoginHandler__signout___block_invoke;
        v36 = &unk_1E754DE00;
        selfCopy = self;
        v38 = _signoutCopy;
        [v17 setResponseHandler:&v33];
        v18 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [(HMRemoteLoginHandler *)selfCopy2 loggedInAccount:v33];
          *buf = 138543618;
          v42 = v21;
          v43 = 2112;
          v44 = v22;
          _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Signing out of account: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        messageDispatcher = [context messageDispatcher];
        [messageDispatcher sendMessage:v17];
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v31;
          v43 = 2080;
          v44 = "[HMRemoteLoginHandler _signout:]";
          _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
      }

      goto LABEL_17;
    }

    v24 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v27;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@There is no logged in account, cannot sign out", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    if (_signoutCopy)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = 3;
      goto LABEL_4;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)signout:(id)signout
{
  v26 = *MEMORY[0x1E69E9840];
  signoutCopy = signout;
  context = [(HMRemoteLoginHandler *)self context];
  if (!signoutCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMRemoteLoginHandler signout:]", @"completion"];
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
    block[2] = __32__HMRemoteLoginHandler_signout___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v21 = signoutCopy;
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
      v25 = "[HMRemoteLoginHandler signout:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(signoutCopy + 2))(signoutCopy, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_handleLoginResponse:(id)response error:(id)error completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  completionCopy = completion;
  if (errorCopy)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v14;
      v29 = 2112;
      v30 = errorCopy;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to login with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v15 = [responseCopy hmf_dataForKey:@"kRemoteLoginAccount"];
    if (v15)
    {
      v26 = 0;
      v16 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:&v26];
      v17 = v26;
      if (!v16)
      {
        v18 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v21 = v25 = v18;
          *buf = 138543618;
          v28 = v21;
          v29 = 2112;
          v30 = v17;
          _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive logged in account from logged in account data: %@", buf, 0x16u);

          v18 = v25;
        }

        objc_autoreleasePoolPop(v18);
      }
    }

    else
    {
      v16 = 0;
    }

    [(HMRemoteLoginHandler *)self setLoggedInAccount:v16, v25];
  }

  context = [(HMRemoteLoginHandler *)self context];
  delegateCaller = [context delegateCaller];
  [delegateCaller callCompletion:completionCopy error:errorCopy];

  [(HMRemoteLoginHandler *)self setCurrentSessionID:0];
  v24 = *MEMORY[0x1E69E9840];
}

- (void)_proxyLoginWithAuthResults:(id)results completion:(id)completion
{
  v62 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = [results copy];
  currentSessionID = [(HMRemoteLoginHandler *)self currentSessionID];

  if (!currentSessionID)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v13 = *MEMORY[0x1E698DBF0];
    v14 = [v7 hmf_stringForKey:*MEMORY[0x1E698DBF0]];
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = v14;
    v51 = uUID;
    v16 = *MEMORY[0x1E698DBD0];
    v17 = [v7 hmf_stringForKey:*MEMORY[0x1E698DBD0]];
    if (v17)
    {
      v18 = v17;
      v19 = *MEMORY[0x1E698DBC8];
      v20 = [v7 hmf_stringForKey:*MEMORY[0x1E698DBC8]];
      if (v20)
      {
        v21 = v20;
        v50 = *MEMORY[0x1E698DB40];
        v22 = [v7 hmf_stringForKey:?];

        uUID = v51;
        if (v22)
        {
          context = [(HMRemoteLoginHandler *)self context];
          if (context)
          {
            context2 = context;
            v56[0] = v13;
            v25 = [v7 hmf_stringForKey:v13];
            v57[0] = v25;
            v56[1] = v16;
            v26 = [v7 hmf_stringForKey:v16];
            v57[1] = v26;
            v56[2] = v19;
            v27 = [v7 hmf_stringForKey:v19];
            v57[2] = v27;
            v56[3] = v50;
            v28 = [v7 hmf_stringForKey:?];
            v57[3] = v28;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:4];

            v54[0] = @"kRemoteLoginSessionID";
            uUIDString = [v51 UUIDString];
            v54[1] = @"kRemoteLoginAuthResults";
            v55[0] = uUIDString;
            v31 = encodeRootObject(v29);
            v55[1] = v31;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];

            v33 = objc_alloc(MEMORY[0x1E69A2A10]);
            v34 = objc_alloc(MEMORY[0x1E69A2A00]);
            uuid = [(HMRemoteLoginHandler *)self uuid];
            v36 = [v34 initWithTarget:uuid];
            v37 = [v33 initWithName:@"kRemoteLoginProxyAuthentication" destination:v36 payload:v32];

            uUID = v51;
            v52[0] = MEMORY[0x1E69E9820];
            v52[1] = 3221225472;
            v52[2] = __62__HMRemoteLoginHandler__proxyLoginWithAuthResults_completion___block_invoke;
            v52[3] = &unk_1E754DE00;
            v52[4] = self;
            v53 = completionCopy;
            [v37 setResponseHandler:v52];
            messageDispatcher = [context2 messageDispatcher];
            [messageDispatcher sendMessage:v37];
          }

          else
          {
            v46 = objc_autoreleasePoolPush();
            selfCopy = self;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v49 = HMFGetLogIdentifier();
              *buf = 138543618;
              v59 = v49;
              v60 = 2080;
              v61 = "[HMRemoteLoginHandler _proxyLoginWithAuthResults:completion:]";
              _os_log_impl(&dword_19BB39000, v48, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v46);
            context2 = 0;
          }

          goto LABEL_16;
        }

LABEL_12:
        v39 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543362;
          v59 = v42;
          _os_log_impl(&dword_19BB39000, v41, OS_LOG_TYPE_ERROR, "%{public}@Missing required auth parameters", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v39);
        if (!completionCopy)
        {
          goto LABEL_17;
        }

        context2 = [(HMRemoteLoginHandler *)selfCopy2 context];
        delegateCaller = [context2 delegateCaller];
        v44 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        [delegateCaller callCompletion:completionCopy error:v44];

LABEL_16:
LABEL_17:

        goto LABEL_18;
      }
    }

    uUID = v51;
    goto LABEL_12;
  }

  if (completionCopy)
  {
    context3 = [(HMRemoteLoginHandler *)self context];
    delegateCaller2 = [context3 delegateCaller];
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:15];
    [delegateCaller2 callCompletion:completionCopy error:v11];
  }

LABEL_18:

  v45 = *MEMORY[0x1E69E9840];
}

- (void)proxyLoginWithAuthResults:(id)results completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  completionCopy = completion;
  context = [(HMRemoteLoginHandler *)self context];
  if (!completionCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMRemoteLoginHandler proxyLoginWithAuthResults:completion:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__HMRemoteLoginHandler_proxyLoginWithAuthResults_completion___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = resultsCopy;
    v25 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v14;
      v28 = 2080;
      v29 = "[HMRemoteLoginHandler proxyLoginWithAuthResults:completion:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleQueryProxiedDeviceResponse:(id)response error:(id)error completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  completionCopy = completion;
  [(HMRemoteLoginHandler *)self setCurrentSessionID:0];
  if (responseCopy)
  {
    context3 = [responseCopy hmf_dataForKey:@"kRemoteLoginProxiedDevice"];
    if (context3)
    {
      v30 = errorCopy;
      context2 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:context3 error:&v30];
      v13 = v30;

      if (context2)
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v32 = v17;
          v33 = 2112;
          v34 = context2;
          _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Query proxied device responded with device: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        context = [(HMRemoteLoginHandler *)selfCopy context];
        delegateCaller = [context delegateCaller];
        [delegateCaller callCompletion:completionCopy error:0 proxiedDevice:context2];

LABEL_18:
        errorCopy = v13;
        goto LABEL_19;
      }
    }

    else
    {
      v13 = errorCopy;
    }

    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543874;
      v32 = v28;
      v33 = 2112;
      v34 = responseCopy;
      v35 = 2112;
      v36 = v13;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@Query proxied device failed to decode with response: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    context2 = [(HMRemoteLoginHandler *)selfCopy2 context];
    context = [context2 delegateCaller];
    [context callCompletion:completionCopy error:v13 proxiedDevice:0];
    goto LABEL_18;
  }

  v20 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v24 = errorCopy;
    if (!errorCopy)
    {
      v24 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
    }

    *buf = 138543618;
    v32 = v23;
    v33 = 2112;
    v34 = v24;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Query proxied device responded with error: %@", buf, 0x16u);
    if (!errorCopy)
    {
    }
  }

  objc_autoreleasePoolPop(v20);
  context3 = [(HMRemoteLoginHandler *)selfCopy3 context];
  context2 = [context3 delegateCaller];
  [context2 callCompletion:completionCopy error:errorCopy proxiedDevice:0];
LABEL_19:

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_queryProxiedDevice:(id)device
{
  v35 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  context = [(HMRemoteLoginHandler *)self context];
  if (context)
  {
    currentSessionID = [(HMRemoteLoginHandler *)self currentSessionID];

    if (currentSessionID)
    {
      if (deviceCopy)
      {
        v7 = [MEMORY[0x1E696ABC0] hmErrorWithCode:15];
        deviceCopy[2](deviceCopy, v7, 0);
      }
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      v29 = @"kRemoteLoginSessionID";
      uUIDString = [uUID UUIDString];
      v30 = uUIDString;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

      v15 = objc_alloc(MEMORY[0x1E69A2A10]);
      v16 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [(HMRemoteLoginHandler *)self uuid];
      v18 = [v16 initWithTarget:uuid];
      v19 = [v15 initWithName:@"kRemoteLoginQueryProxiedDevice" destination:v18 payload:v14];

      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __44__HMRemoteLoginHandler__queryProxiedDevice___block_invoke;
      v26 = &unk_1E754DE00;
      selfCopy = self;
      v28 = deviceCopy;
      [v19 setResponseHandler:&v23];
      messageDispatcher = [context messageDispatcher];
      [messageDispatcher sendMessage:v19];

      uUIDString2 = [uUID UUIDString];
      [(HMRemoteLoginHandler *)self setCurrentSessionID:uUIDString2];
    }
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
      v32 = v11;
      v33 = 2080;
      v34 = "[HMRemoteLoginHandler _queryProxiedDevice:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)queryProxiedDevice:(id)device
{
  v23 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  context = [(HMRemoteLoginHandler *)self context];
  v6 = context;
  if (context)
  {
    if (!deviceCopy)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v20 = v15;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@queryProxiedDevice - nil completion", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
      objc_exception_throw(v16);
    }

    queue = [context queue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __43__HMRemoteLoginHandler_queryProxiedDevice___block_invoke;
    v17[3] = &unk_1E754E458;
    v17[4] = self;
    v18 = deviceCopy;
    dispatch_async(queue, v17);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v11;
      v21 = 2080;
      v22 = "[HMRemoteLoginHandler queryProxiedDevice:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_companionLoginWithAccount:(id)account completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  context = [(HMRemoteLoginHandler *)self context];
  if (context)
  {
    currentSessionID = [(HMRemoteLoginHandler *)self currentSessionID];

    if (currentSessionID)
    {
      if (completionCopy)
      {
        v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:15];
        completionCopy[2](completionCopy, v10);
      }
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      v33[0] = @"kRemoteLoginSessionID";
      uUIDString = [uUID UUIDString];
      v33[1] = @"kRemoteLoginAccount";
      v34[0] = uUIDString;
      v17 = encodeRootObject(accountCopy);
      v34[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

      v19 = objc_alloc(MEMORY[0x1E69A2A10]);
      v20 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [(HMRemoteLoginHandler *)self uuid];
      v22 = [v20 initWithTarget:uuid];
      v23 = [v19 initWithName:@"kRemoteLoginCompanionAuthentication" destination:v22 payload:v18];

      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __62__HMRemoteLoginHandler__companionLoginWithAccount_completion___block_invoke;
      v30 = &unk_1E754DE00;
      selfCopy = self;
      v32 = completionCopy;
      [v23 setResponseHandler:&v27];
      messageDispatcher = [context messageDispatcher];
      [messageDispatcher sendMessage:v23];

      uUIDString2 = [uUID UUIDString];
      [(HMRemoteLoginHandler *)self setCurrentSessionID:uUIDString2];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v14;
      v37 = 2080;
      v38 = "[HMRemoteLoginHandler _companionLoginWithAccount:completion:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)companionLoginWithAccount:(id)account completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  context = [(HMRemoteLoginHandler *)self context];
  if (!completionCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMRemoteLoginHandler companionLoginWithAccount:completion:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__HMRemoteLoginHandler_companionLoginWithAccount_completion___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = accountCopy;
    v25 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v14;
      v28 = 2080;
      v29 = "[HMRemoteLoginHandler companionLoginWithAccount:completion:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_callAccountUpdateDelegate
{
  v16 = *MEMORY[0x1E69E9840];
  context = [(HMRemoteLoginHandler *)self context];
  delegateCaller = [context delegateCaller];
  v5 = delegateCaller;
  if (delegateCaller)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__HMRemoteLoginHandler__callAccountUpdateDelegate__block_invoke;
    v11[3] = &unk_1E754E2A8;
    v11[4] = self;
    [delegateCaller invokeBlock:v11];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = context;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of updated logged in account due to no delegate caller on context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __50__HMRemoteLoginHandler__callAccountUpdateDelegate__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) accessory];
  v3 = [v2 delegate];
  if ([v3 conformsToProtocol:&unk_1F0F63E80])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [*(a1 + 32) loggedInAccount];
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v10;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of did update logged in account: %@ delegate: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (objc_opt_respondsToSelector())
  {
    [v5 accessory:v2 didUpdateLoggedInAccount:v6];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)mergeFromNewObject:(id)object
{
  v54 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  _configureAccessoryInfoDataProviderIfNeeded = [(HMRemoteLoginHandler *)self _configureAccessoryInfoDataProviderIfNeeded];
  v6 = objectCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    accessory = [(HMRemoteLoginHandler *)self accessory];
    accessoryInfoDataProvider = [v8 accessoryInfoDataProvider];

    if (accessoryInfoDataProvider)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v14;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Unsubscribe to new object's accessory info data provider", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      home = [accessory home];
      accessoryInfoDataProvider2 = [v8 accessoryInfoDataProvider];
      uniqueIdentifier = [home uniqueIdentifier];
      uniqueIdentifier2 = [accessory uniqueIdentifier];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __43__HMRemoteLoginHandler_mergeFromNewObject___block_invoke;
      v49[3] = &unk_1E754E148;
      v49[4] = selfCopy;
      [accessoryInfoDataProvider2 unsubscribeToAccessoryInfoWithHomeIdentifier:uniqueIdentifier accessoryIdentifier:uniqueIdentifier2 accessoryInfoOptions:2 completionHandler:v49];
    }

    loggedInAccount = [(HMRemoteLoginHandler *)self loggedInAccount];
    loggedInAccount2 = [v8 loggedInAccount];
    v21 = HMFEqualObjects();

    if ((v21 & 1) == 0 && ([accessory supportsMessagedHomePodSettings] & 1) == 0)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        loggedInAccount3 = [v8 loggedInAccount];
        *buf = 138543618;
        v51 = v25;
        v52 = 2112;
        v53 = loggedInAccount3;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@Merging logged in account: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      loggedInAccount4 = [v8 loggedInAccount];
      [(HMRemoteLoginHandler *)selfCopy2 setLoggedInAccount:loggedInAccount4];

      context = [(HMRemoteLoginHandler *)selfCopy2 context];
      queue = [context queue];

      if (queue)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __43__HMRemoteLoginHandler_mergeFromNewObject___block_invoke_64;
        block[3] = &unk_1E754E2A8;
        block[4] = selfCopy2;
        dispatch_async(queue, block);
        _configureAccessoryInfoDataProviderIfNeeded = 1;
      }
    }

    stagedLoggedInAccount = [(HMRemoteLoginHandler *)self stagedLoggedInAccount];
    stagedLoggedInAccount2 = [v8 stagedLoggedInAccount];
    v32 = HMFEqualObjects();

    if ((v32 & 1) == 0)
    {
      v33 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        stagedLoggedInAccount3 = [v8 stagedLoggedInAccount];
        *buf = 138543618;
        v51 = v36;
        v52 = 2112;
        v53 = stagedLoggedInAccount3;
        _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_INFO, "%{public}@Merging staged logged in account: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      stagedLoggedInAccount4 = [v8 stagedLoggedInAccount];
      [(HMRemoteLoginHandler *)selfCopy3 setStagedLoggedInAccount:stagedLoggedInAccount4];

      context2 = [(HMRemoteLoginHandler *)selfCopy3 context];
      queue2 = [context2 queue];

      if (queue2)
      {
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __43__HMRemoteLoginHandler_mergeFromNewObject___block_invoke_65;
        v47[3] = &unk_1E754E2A8;
        v47[4] = selfCopy3;
        dispatch_async(queue2, v47);
        _configureAccessoryInfoDataProviderIfNeeded = 1;
      }
    }
  }

  else
  {
    v41 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v44;
      _os_log_impl(&dword_19BB39000, v43, OS_LOG_TYPE_ERROR, "%{public}@Remote login handler from new home data is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v41);
  }

  v45 = *MEMORY[0x1E69E9840];
  return _configureAccessoryInfoDataProviderIfNeeded;
}

void __43__HMRemoteLoginHandler_mergeFromNewObject___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to unsubscribe to accessory info data provider with error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleRemoteLoginAccountUpdated:(id)updated
{
  v23 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [updatedCopy shortDescription];
    *buf = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = shortDescription;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling remote login account updated message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [updatedCopy dataForKey:@"kRemoteLoginAccount"];
  if (v10)
  {
    v18 = 0;
    v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v18];
    v12 = v18;
    if (!v11)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = selfCopy;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v20 = v16;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive logged in account from logged in account data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  [(HMRemoteLoginHandler *)selfCopy setLoggedInAccount:v11];
  [(HMRemoteLoginHandler *)selfCopy _callAccountUpdateDelegate];

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)isControllable
{
  accessory = [(HMRemoteLoginHandler *)self accessory];
  isControllable = [accessory isControllable];

  return isControllable;
}

- (BOOL)isSessionInProgress
{
  currentSessionID = [(HMRemoteLoginHandler *)self currentSessionID];
  v3 = currentSessionID != 0;

  return v3;
}

- (void)setCurrentSessionID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v4 = [dCopy copy];
  currentSessionID = self->_currentSessionID;
  self->_currentSessionID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)currentSessionID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_currentSessionID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateLoggedInAccount:(id)account completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  handlerCopy = handler;
  context = [(HMRemoteLoginHandler *)self context];
  if (!handlerCopy)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMRemoteLoginHandler updateLoggedInAccount:completionHandler:]", @"completionHandler"];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v22;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v9 = context;
  if (context)
  {
    v10 = [accountCopy copy];
    queue = [v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__HMRemoteLoginHandler_updateLoggedInAccount_completionHandler___block_invoke;
    block[3] = &unk_1E754D208;
    v25 = v10;
    selfCopy2 = self;
    v28 = handlerCopy;
    v27 = v9;
    v12 = v10;
    dispatch_async(queue, block);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v16;
      v31 = 2080;
      v32 = "[HMRemoteLoginHandler updateLoggedInAccount:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v12);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __64__HMRemoteLoginHandler_updateLoggedInAccount_completionHandler___block_invoke(void **a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v30 = @"kRemoteLoginAccount";
  v2 = a1 + 4;
  v3 = encodeRootObject(a1[4]);
  v31[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];

  v5 = MEMORY[0x1E69A2A10];
  v6 = [a1[5] messageDestination];
  v7 = [v5 messageWithName:@"HMRL.ua" destination:v6 payload:v4];

  objc_initWeak(&location, a1[5]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__HMRemoteLoginHandler_updateLoggedInAccount_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E754D988;
  objc_copyWeak(&v28, &location);
  v26 = *v2;
  v27 = a1[7];
  v8 = _Block_copy(aBlock);
  v9 = [a1[5] context];
  v10 = [v9 pendingRequests];

  v11 = [v7 identifier];
  v12 = _Block_copy(v8);
  [v10 addCompletionBlock:v12 forIdentifier:v11];

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __64__HMRemoteLoginHandler_updateLoggedInAccount_completionHandler___block_invoke_58;
  v21 = &unk_1E754E480;
  v13 = v10;
  v22 = v13;
  v14 = v11;
  v23 = v14;
  v15 = v8;
  v24 = v15;
  [v7 setResponseHandler:&v18];
  v16 = [a1[6] messageDispatcher];
  [v16 sendMessage:v7 completionHandler:0];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  v17 = *MEMORY[0x1E69E9840];
}

void __64__HMRemoteLoginHandler_updateLoggedInAccount_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Update logged in account: %@ responded with success", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 setLoggedInAccount:*(a1 + 32)];
  }

  v10 = [WeakRetained context];
  v11 = [v10 delegateCaller];
  [v11 callCompletion:*(a1 + 40) error:v3];

  v12 = *MEMORY[0x1E69E9840];
}

void __64__HMRemoteLoginHandler_updateLoggedInAccount_completionHandler___block_invoke_58(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)setLoggedInAccount:(id)account
{
  v19 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    loggedInAccount = [(HMRemoteLoginHandler *)selfCopy loggedInAccount];
    v13 = 138543874;
    v14 = v8;
    v15 = 2112;
    v16 = accountCopy;
    v17 = 2112;
    v18 = loggedInAccount;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating logged in account: %@ from: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v10 = [accountCopy copy];
  loggedInAccount = selfCopy->_loggedInAccount;
  selfCopy->_loggedInAccount = v10;

  os_unfair_lock_unlock(&selfCopy->_lock);
  v12 = *MEMORY[0x1E69E9840];
}

- (ACAccount)loggedInAccount
{
  if ([(HMRemoteLoginHandler *)self didReceiveAccountInfo])
  {
    stagedLoggedInAccount = 0;
  }

  else
  {
    stagedLoggedInAccount = [(HMRemoteLoginHandler *)self stagedLoggedInAccount];
  }

  os_unfair_lock_lock_with_options();
  loggedInAccount = self->_loggedInAccount;
  if (!loggedInAccount)
  {
    loggedInAccount = stagedLoggedInAccount;
  }

  v5 = loggedInAccount;
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (NSUUID)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:self->_uuid];
    v5 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v4;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v6 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)registerForMessages
{
  context = [(HMRemoteLoginHandler *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"kRemoteLoginAccountUpdatedNotificationKey" receiver:self selector:sel__handleRemoteLoginAccountUpdated_];
}

- (BOOL)_configureAccessoryInfoDataProviderIfNeeded
{
  v37 = *MEMORY[0x1E69E9840];
  accessory = [(HMRemoteLoginHandler *)self accessory];
  home = [accessory home];
  if (!home || ([accessory supportsMessagedHomePodSettings] & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      uuid = [home uuid];
      uuid2 = [accessory uuid];
      accessory2 = [(HMRemoteLoginHandler *)selfCopy accessory];
      [accessory2 supportsMessagedHomePodSettings];
      v25 = HMFBooleanToString();
      *buf = 138544130;
      v30 = v21;
      v31 = 2112;
      v32 = uuid;
      v33 = 2112;
      v34 = uuid2;
      v35 = 2112;
      v36 = v25;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Did not subscribe to accessory info data provider due to home: %@ accessory: %@ supportsMessagedHomePodSettings: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    goto LABEL_16;
  }

  accessoryInfoDataProvider = [(HMRemoteLoginHandler *)self accessoryInfoDataProvider];

  if (accessoryInfoDataProvider)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];

  if (([processName isEqualToString:@"Home"] & 1) != 0 || (objc_msgSend(processName, "isEqualToString:", @"HDSViewService") & 1) != 0 || isInternalBuild() && (objc_msgSend(processName, "isEqualToString:", @"hdsutil") & 1) != 0 || objc_msgSend(processName, "isEqualToString:", @"homeutil"))
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring accessory info data provider", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    homeManager = [home homeManager];
    createAccessoryInfoDataProvider = [homeManager createAccessoryInfoDataProvider];
    [(HMRemoteLoginHandler *)selfCopy2 setAccessoryInfoDataProvider:createAccessoryInfoDataProvider];

    accessoryInfoDataProvider2 = [(HMRemoteLoginHandler *)selfCopy2 accessoryInfoDataProvider];
    uniqueIdentifier = [home uniqueIdentifier];
    uniqueIdentifier2 = [accessory uniqueIdentifier];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __67__HMRemoteLoginHandler__configureAccessoryInfoDataProviderIfNeeded__block_invoke;
    v28[3] = &unk_1E754E148;
    v28[4] = selfCopy2;
    [accessoryInfoDataProvider2 configureWithHomeIdentifier:uniqueIdentifier accessoryIdentifier:uniqueIdentifier2 accessoryInfoOptions:2 dataProviderDelegate:selfCopy2 completionHandler:v28];

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

LABEL_17:
  v26 = *MEMORY[0x1E69E9840];
  return v17;
}

void __67__HMRemoteLoginHandler__configureAccessoryInfoDataProviderIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_ERROR, "%{public}@Subscribed to accessory info data provider with error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_configureWithContext:(id)context accessory:(id)accessory
{
  accessoryCopy = accessory;
  contextCopy = context;
  [(HMRemoteLoginHandler *)self setContext:contextCopy];
  [(HMRemoteLoginHandler *)self setAccessory:accessoryCopy];

  anisetteDataProvider = [(HMRemoteLoginHandler *)self anisetteDataProvider];
  [anisetteDataProvider _configureWithContext:contextCopy];
}

- (HMRemoteLoginHandler)initWithUUID:(id)d accessory:(id)accessory loggedInAccount:(id)account stagedLoggedInAccount:(id)inAccount anisetteDataProvider:(id)provider
{
  dCopy = d;
  accessoryCopy = accessory;
  accountCopy = account;
  inAccountCopy = inAccount;
  providerCopy = provider;
  v21.receiver = self;
  v21.super_class = HMRemoteLoginHandler;
  v18 = [(HMRemoteLoginHandler *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uuid, d);
    objc_storeWeak(&v19->_accessory, accessoryCopy);
    objc_storeStrong(&v19->_loggedInAccount, account);
    objc_storeStrong(&v19->_stagedLoggedInAccount, inAccount);
    objc_storeStrong(&v19->_anisetteDataProvider, provider);
    v19->_didReceiveAccountInfo = 0;
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t51_43725 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t51_43725, &__block_literal_global_43726);
  }

  v3 = logCategory__hmf_once_v52_43727;

  return v3;
}

uint64_t __35__HMRemoteLoginHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v52_43727;
  logCategory__hmf_once_v52_43727 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end