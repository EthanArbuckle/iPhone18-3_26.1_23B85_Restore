@interface HMRemoteLoginHandler
+ (id)logCategory;
- (ACAccount)loggedInAccount;
- (BOOL)_configureAccessoryInfoDataProviderIfNeeded;
- (BOOL)isControllable;
- (BOOL)isSessionInProgress;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMAccessory)accessory;
- (HMRemoteLoginHandler)initWithCoder:(id)a3;
- (HMRemoteLoginHandler)initWithUUID:(id)a3 accessory:(id)a4 loggedInAccount:(id)a5 stagedLoggedInAccount:(id)a6 anisetteDataProvider:(id)a7;
- (NSString)currentSessionID;
- (NSString)description;
- (NSUUID)uniqueIdentifier;
- (id)_accountFromAccountInfo:(id)a3;
- (id)logIdentifier;
- (id)messageDestination;
- (void)_callAccountUpdateDelegate;
- (void)_companionLoginWithAccount:(id)a3 completion:(id)a4;
- (void)_configureWithContext:(id)a3 accessory:(id)a4;
- (void)_handleLoginResponse:(id)a3 error:(id)a4 completion:(id)a5;
- (void)_handleQueryProxiedDeviceResponse:(id)a3 error:(id)a4 completion:(id)a5;
- (void)_handleRemoteLoginAccountUpdated:(id)a3;
- (void)_handleRemoteLoginSignoutResponse:(id)a3 error:(id)a4 completion:(id)a5;
- (void)_proxyLoginWithAuthResults:(id)a3 completion:(id)a4;
- (void)_queryProxiedDevice:(id)a3;
- (void)_signout:(id)a3;
- (void)accessoryInfoDataProvider:(id)a3 didReceiveUpdatesForAccessoryWithIdentifier:(id)a4 accountInfo:(id)a5;
- (void)companionLoginWithAccount:(id)a3 completion:(id)a4;
- (void)proxyLoginWithAuthResults:(id)a3 completion:(id)a4;
- (void)queryProxiedDevice:(id)a3;
- (void)registerForMessages;
- (void)setCurrentSessionID:(id)a3;
- (void)setLoggedInAccount:(id)a3;
- (void)signout:(id)a3;
- (void)updateLoggedInAccount:(id)a3 completionHandler:(id)a4;
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
  v5 = [(HMRemoteLoginHandler *)self uniqueIdentifier];
  v6 = [(HMRemoteLoginHandler *)self uuid];
  v7 = [(HMRemoteLoginHandler *)self accessory];
  v8 = [v7 uniqueIdentifier];
  v9 = [(HMRemoteLoginHandler *)self currentSessionID];
  [(HMRemoteLoginHandler *)self isControllable];
  v10 = HMFBooleanToString();
  [(HMRemoteLoginHandler *)self isSessionInProgress];
  v11 = HMFBooleanToString();
  v12 = [(HMRemoteLoginHandler *)self loggedInAccount];
  v13 = [v3 stringWithFormat:@"<%@: identifier = %@, uuid = %@, accessory identifier = %@, currentSessionID = %@, isControllable = %@, sessionInProgress = %@, loggedInAccount = %@>", v4, v5, v6, v8, v9, v10, v11, v12];

  return v13;
}

- (id)logIdentifier
{
  v2 = [(HMRemoteLoginHandler *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)_accountFromAccountInfo:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v35 = 138543618;
    v36 = v8;
    v37 = 2112;
    v38 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Transferring account: %@", &v35, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_autoreleasePoolPush();
  v10 = v6;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v4 username];
    v14 = [v4 aaAltDSID];
    v15 = [v4 amsAltDSID];
    [v4 signedIn];
    v16 = HMFBooleanToString();
    v35 = 138544386;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    v39 = 2112;
    v40 = v14;
    v41 = 2112;
    v42 = v15;
    v43 = 2112;
    v44 = v16;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Transferring account username: %@, aaAltDSID:%@, amsAltDSID: %@, signedIn: %@", &v35, 0x34u);
  }

  objc_autoreleasePoolPop(v9);
  v17 = [v4 username];

  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v19 = [v18 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959930]];
    if (v19)
    {
      v20 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v19];
      if (v20)
      {
        v21 = [v4 username];
        [v20 setUsername:v21];

        v22 = [v4 aaAltDSID];
        [v20 _aa_setAltDSID:v22];

        v23 = [v4 amsAltDSID];
        [v20 ams_setAltDSID:v23];

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
          v38 = v4;
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

- (void)accessoryInfoDataProvider:(id)a3 didReceiveUpdatesForAccessoryWithIdentifier:(id)a4 accountInfo:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v14;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Received updated accountInfo: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  os_unfair_lock_lock_with_options();
  v15 = [(HMRemoteLoginHandler *)v12 _accountFromAccountInfo:v10];
  loggedInAccount = v12->_loggedInAccount;
  v12->_loggedInAccount = v15;

  v12->_didReceiveAccountInfo = 1;
  os_unfair_lock_unlock(&v12->_lock);
  [(HMRemoteLoginHandler *)v12 _callAccountUpdateDelegate];

  v17 = *MEMORY[0x1E69E9840];
}

- (HMRemoteLoginHandler)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIdentifierKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kRemoteLoginAccount"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kStagedRemoteLoginAccount"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kRemoteLoginAnisetterProviderBridge"];

  v10 = [(HMRemoteLoginHandler *)self initWithUUID:v5 accessory:v6 loggedInAccount:v7 stagedLoggedInAccount:v8 anisetteDataProvider:v9];
  return v10;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  v4 = [(HMRemoteLoginHandler *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (void)_handleRemoteLoginSignoutResponse:(id)a3 error:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v9)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [(HMRemoteLoginHandler *)v12 loggedInAccount];
      v22 = 138543874;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Signing out of account %@ failed with error: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [(HMRemoteLoginHandler *)v12 loggedInAccount];
      v22 = 138543618;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Signed out of account %@ successfully", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMRemoteLoginHandler *)v12 setLoggedInAccount:0];
  }

  v19 = [(HMRemoteLoginHandler *)v12 context];
  v20 = [v19 delegateCaller];
  [v20 callCompletion:v10 error:v9];

  [(HMRemoteLoginHandler *)v12 setCurrentSessionID:0];
  v21 = *MEMORY[0x1E69E9840];
}

- (void)_signout:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMRemoteLoginHandler *)self currentSessionID];

  if (v5)
  {
    if (v4)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = 15;
LABEL_4:
      v8 = [v6 hmErrorWithCode:v7];
      v4[2](v4, v8);
LABEL_17:
    }
  }

  else
  {
    v9 = [(HMRemoteLoginHandler *)self loggedInAccount];

    if (v9)
    {
      v8 = [(HMRemoteLoginHandler *)self context];
      if (v8)
      {
        v10 = [MEMORY[0x1E696AFB0] UUID];
        v39 = @"kRemoteLoginSessionID";
        v11 = [v10 UUIDString];
        v40 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

        v13 = objc_alloc(MEMORY[0x1E69A2A10]);
        v14 = objc_alloc(MEMORY[0x1E69A2A00]);
        v15 = [(HMRemoteLoginHandler *)self uuid];
        v16 = [v14 initWithTarget:v15];
        v17 = [v13 initWithName:@"kRemoteLoginSignout" destination:v16 payload:v12];

        v33 = MEMORY[0x1E69E9820];
        v34 = 3221225472;
        v35 = __33__HMRemoteLoginHandler__signout___block_invoke;
        v36 = &unk_1E754DE00;
        v37 = self;
        v38 = v4;
        [v17 setResponseHandler:&v33];
        v18 = objc_autoreleasePoolPush();
        v19 = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [(HMRemoteLoginHandler *)v19 loggedInAccount:v33];
          *buf = 138543618;
          v42 = v21;
          v43 = 2112;
          v44 = v22;
          _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Signing out of account: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        v23 = [v8 messageDispatcher];
        [v23 sendMessage:v17];
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        v29 = self;
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
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v27;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@There is no logged in account, cannot sign out", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    if (v4)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = 3;
      goto LABEL_4;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)signout:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMRemoteLoginHandler *)self context];
  if (!v4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMRemoteLoginHandler signout:]", @"completion"];
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
    block[2] = __32__HMRemoteLoginHandler_signout___block_invoke;
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
      v25 = "[HMRemoteLoginHandler signout:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_handleLoginResponse:(id)a3 error:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v14;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to login with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v15 = [v8 hmf_dataForKey:@"kRemoteLoginAccount"];
    if (v15)
    {
      v26 = 0;
      v16 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:&v26];
      v17 = v26;
      if (!v16)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = self;
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

  v22 = [(HMRemoteLoginHandler *)self context];
  v23 = [v22 delegateCaller];
  [v23 callCompletion:v10 error:v9];

  [(HMRemoteLoginHandler *)self setCurrentSessionID:0];
  v24 = *MEMORY[0x1E69E9840];
}

- (void)_proxyLoginWithAuthResults:(id)a3 completion:(id)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 copy];
  v8 = [(HMRemoteLoginHandler *)self currentSessionID];

  if (!v8)
  {
    v12 = [MEMORY[0x1E696AFB0] UUID];
    v13 = *MEMORY[0x1E698DBF0];
    v14 = [v7 hmf_stringForKey:*MEMORY[0x1E698DBF0]];
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = v14;
    v51 = v12;
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

        v12 = v51;
        if (v22)
        {
          v23 = [(HMRemoteLoginHandler *)self context];
          if (v23)
          {
            v24 = v23;
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
            v30 = [v51 UUIDString];
            v54[1] = @"kRemoteLoginAuthResults";
            v55[0] = v30;
            v31 = encodeRootObject(v29);
            v55[1] = v31;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];

            v33 = objc_alloc(MEMORY[0x1E69A2A10]);
            v34 = objc_alloc(MEMORY[0x1E69A2A00]);
            v35 = [(HMRemoteLoginHandler *)self uuid];
            v36 = [v34 initWithTarget:v35];
            v37 = [v33 initWithName:@"kRemoteLoginProxyAuthentication" destination:v36 payload:v32];

            v12 = v51;
            v52[0] = MEMORY[0x1E69E9820];
            v52[1] = 3221225472;
            v52[2] = __62__HMRemoteLoginHandler__proxyLoginWithAuthResults_completion___block_invoke;
            v52[3] = &unk_1E754DE00;
            v52[4] = self;
            v53 = v6;
            [v37 setResponseHandler:v52];
            v38 = [v24 messageDispatcher];
            [v38 sendMessage:v37];
          }

          else
          {
            v46 = objc_autoreleasePoolPush();
            v47 = self;
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
            v24 = 0;
          }

          goto LABEL_16;
        }

LABEL_12:
        v39 = objc_autoreleasePoolPush();
        v40 = self;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543362;
          v59 = v42;
          _os_log_impl(&dword_19BB39000, v41, OS_LOG_TYPE_ERROR, "%{public}@Missing required auth parameters", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v39);
        if (!v6)
        {
          goto LABEL_17;
        }

        v24 = [(HMRemoteLoginHandler *)v40 context];
        v43 = [v24 delegateCaller];
        v44 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        [v43 callCompletion:v6 error:v44];

LABEL_16:
LABEL_17:

        goto LABEL_18;
      }
    }

    v12 = v51;
    goto LABEL_12;
  }

  if (v6)
  {
    v9 = [(HMRemoteLoginHandler *)self context];
    v10 = [v9 delegateCaller];
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:15];
    [v10 callCompletion:v6 error:v11];
  }

LABEL_18:

  v45 = *MEMORY[0x1E69E9840];
}

- (void)proxyLoginWithAuthResults:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMRemoteLoginHandler *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMRemoteLoginHandler proxyLoginWithAuthResults:completion:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
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

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__HMRemoteLoginHandler_proxyLoginWithAuthResults_completion___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleQueryProxiedDeviceResponse:(id)a3 error:(id)a4 completion:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(HMRemoteLoginHandler *)self setCurrentSessionID:0];
  if (v8)
  {
    v11 = [v8 hmf_dataForKey:@"kRemoteLoginProxiedDevice"];
    if (v11)
    {
      v30 = v9;
      v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v30];
      v13 = v30;

      if (v12)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v32 = v17;
          v33 = 2112;
          v34 = v12;
          _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Query proxied device responded with device: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        v18 = [(HMRemoteLoginHandler *)v15 context];
        v19 = [v18 delegateCaller];
        [v19 callCompletion:v10 error:0 proxiedDevice:v12];

LABEL_18:
        v9 = v13;
        goto LABEL_19;
      }
    }

    else
    {
      v13 = v9;
    }

    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543874;
      v32 = v28;
      v33 = 2112;
      v34 = v8;
      v35 = 2112;
      v36 = v13;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@Query proxied device failed to decode with response: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    v12 = [(HMRemoteLoginHandler *)v26 context];
    v18 = [v12 delegateCaller];
    [v18 callCompletion:v10 error:v13 proxiedDevice:0];
    goto LABEL_18;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v24 = v9;
    if (!v9)
    {
      v24 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
    }

    *buf = 138543618;
    v32 = v23;
    v33 = 2112;
    v34 = v24;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Query proxied device responded with error: %@", buf, 0x16u);
    if (!v9)
    {
    }
  }

  objc_autoreleasePoolPop(v20);
  v11 = [(HMRemoteLoginHandler *)v21 context];
  v12 = [v11 delegateCaller];
  [v12 callCompletion:v10 error:v9 proxiedDevice:0];
LABEL_19:

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_queryProxiedDevice:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMRemoteLoginHandler *)self context];
  if (v5)
  {
    v6 = [(HMRemoteLoginHandler *)self currentSessionID];

    if (v6)
    {
      if (v4)
      {
        v7 = [MEMORY[0x1E696ABC0] hmErrorWithCode:15];
        v4[2](v4, v7, 0);
      }
    }

    else
    {
      v12 = [MEMORY[0x1E696AFB0] UUID];
      v29 = @"kRemoteLoginSessionID";
      v13 = [v12 UUIDString];
      v30 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

      v15 = objc_alloc(MEMORY[0x1E69A2A10]);
      v16 = objc_alloc(MEMORY[0x1E69A2A00]);
      v17 = [(HMRemoteLoginHandler *)self uuid];
      v18 = [v16 initWithTarget:v17];
      v19 = [v15 initWithName:@"kRemoteLoginQueryProxiedDevice" destination:v18 payload:v14];

      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __44__HMRemoteLoginHandler__queryProxiedDevice___block_invoke;
      v26 = &unk_1E754DE00;
      v27 = self;
      v28 = v4;
      [v19 setResponseHandler:&v23];
      v20 = [v5 messageDispatcher];
      [v20 sendMessage:v19];

      v21 = [v12 UUIDString];
      [(HMRemoteLoginHandler *)self setCurrentSessionID:v21];
    }
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
      v32 = v11;
      v33 = 2080;
      v34 = "[HMRemoteLoginHandler _queryProxiedDevice:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)queryProxiedDevice:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMRemoteLoginHandler *)self context];
  v6 = v5;
  if (v5)
  {
    if (!v4)
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

    v7 = [v5 queue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __43__HMRemoteLoginHandler_queryProxiedDevice___block_invoke;
    v17[3] = &unk_1E754E458;
    v17[4] = self;
    v18 = v4;
    dispatch_async(v7, v17);
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
      v20 = v11;
      v21 = 2080;
      v22 = "[HMRemoteLoginHandler queryProxiedDevice:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_companionLoginWithAccount:(id)a3 completion:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMRemoteLoginHandler *)self context];
  if (v8)
  {
    v9 = [(HMRemoteLoginHandler *)self currentSessionID];

    if (v9)
    {
      if (v7)
      {
        v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:15];
        v7[2](v7, v10);
      }
    }

    else
    {
      v15 = [MEMORY[0x1E696AFB0] UUID];
      v33[0] = @"kRemoteLoginSessionID";
      v16 = [v15 UUIDString];
      v33[1] = @"kRemoteLoginAccount";
      v34[0] = v16;
      v17 = encodeRootObject(v6);
      v34[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

      v19 = objc_alloc(MEMORY[0x1E69A2A10]);
      v20 = objc_alloc(MEMORY[0x1E69A2A00]);
      v21 = [(HMRemoteLoginHandler *)self uuid];
      v22 = [v20 initWithTarget:v21];
      v23 = [v19 initWithName:@"kRemoteLoginCompanionAuthentication" destination:v22 payload:v18];

      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __62__HMRemoteLoginHandler__companionLoginWithAccount_completion___block_invoke;
      v30 = &unk_1E754DE00;
      v31 = self;
      v32 = v7;
      [v23 setResponseHandler:&v27];
      v24 = [v8 messageDispatcher];
      [v24 sendMessage:v23];

      v25 = [v15 UUIDString];
      [(HMRemoteLoginHandler *)self setCurrentSessionID:v25];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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

- (void)companionLoginWithAccount:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMRemoteLoginHandler *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMRemoteLoginHandler companionLoginWithAccount:completion:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
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

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__HMRemoteLoginHandler_companionLoginWithAccount_completion___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_callAccountUpdateDelegate
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(HMRemoteLoginHandler *)self context];
  v4 = [v3 delegateCaller];
  v5 = v4;
  if (v4)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__HMRemoteLoginHandler__callAccountUpdateDelegate__block_invoke;
    v11[3] = &unk_1E754E2A8;
    v11[4] = self;
    [v4 invokeBlock:v11];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v3;
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

- (BOOL)mergeFromNewObject:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMRemoteLoginHandler *)self _configureAccessoryInfoDataProviderIfNeeded];
  v6 = v4;
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
    v9 = [(HMRemoteLoginHandler *)self accessory];
    v10 = [v8 accessoryInfoDataProvider];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v14;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Unsubscribe to new object's accessory info data provider", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [v9 home];
      v16 = [v8 accessoryInfoDataProvider];
      v17 = [v15 uniqueIdentifier];
      v18 = [v9 uniqueIdentifier];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __43__HMRemoteLoginHandler_mergeFromNewObject___block_invoke;
      v49[3] = &unk_1E754E148;
      v49[4] = v12;
      [v16 unsubscribeToAccessoryInfoWithHomeIdentifier:v17 accessoryIdentifier:v18 accessoryInfoOptions:2 completionHandler:v49];
    }

    v19 = [(HMRemoteLoginHandler *)self loggedInAccount];
    v20 = [v8 loggedInAccount];
    v21 = HMFEqualObjects();

    if ((v21 & 1) == 0 && ([v9 supportsMessagedHomePodSettings] & 1) == 0)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [v8 loggedInAccount];
        *buf = 138543618;
        v51 = v25;
        v52 = 2112;
        v53 = v26;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@Merging logged in account: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v27 = [v8 loggedInAccount];
      [(HMRemoteLoginHandler *)v23 setLoggedInAccount:v27];

      v28 = [(HMRemoteLoginHandler *)v23 context];
      v29 = [v28 queue];

      if (v29)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __43__HMRemoteLoginHandler_mergeFromNewObject___block_invoke_64;
        block[3] = &unk_1E754E2A8;
        block[4] = v23;
        dispatch_async(v29, block);
        v5 = 1;
      }
    }

    v30 = [(HMRemoteLoginHandler *)self stagedLoggedInAccount];
    v31 = [v8 stagedLoggedInAccount];
    v32 = HMFEqualObjects();

    if ((v32 & 1) == 0)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        v37 = [v8 stagedLoggedInAccount];
        *buf = 138543618;
        v51 = v36;
        v52 = 2112;
        v53 = v37;
        _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_INFO, "%{public}@Merging staged logged in account: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v38 = [v8 stagedLoggedInAccount];
      [(HMRemoteLoginHandler *)v34 setStagedLoggedInAccount:v38];

      v39 = [(HMRemoteLoginHandler *)v34 context];
      v40 = [v39 queue];

      if (v40)
      {
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __43__HMRemoteLoginHandler_mergeFromNewObject___block_invoke_65;
        v47[3] = &unk_1E754E2A8;
        v47[4] = v34;
        dispatch_async(v40, v47);
        v5 = 1;
      }
    }
  }

  else
  {
    v41 = objc_autoreleasePoolPush();
    v42 = self;
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
  return v5;
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

- (void)_handleRemoteLoginAccountUpdated:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 shortDescription];
    *buf = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling remote login account updated message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [v4 dataForKey:@"kRemoteLoginAccount"];
  if (v10)
  {
    v18 = 0;
    v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v18];
    v12 = v18;
    if (!v11)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v6;
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

  [(HMRemoteLoginHandler *)v6 setLoggedInAccount:v11];
  [(HMRemoteLoginHandler *)v6 _callAccountUpdateDelegate];

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)isControllable
{
  v2 = [(HMRemoteLoginHandler *)self accessory];
  v3 = [v2 isControllable];

  return v3;
}

- (BOOL)isSessionInProgress
{
  v2 = [(HMRemoteLoginHandler *)self currentSessionID];
  v3 = v2 != 0;

  return v3;
}

- (void)setCurrentSessionID:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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

- (void)updateLoggedInAccount:(id)a3 completionHandler:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMRemoteLoginHandler *)self context];
  if (!v7)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMRemoteLoginHandler updateLoggedInAccount:completionHandler:]", @"completionHandler"];
    v19 = objc_autoreleasePoolPush();
    v20 = self;
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

  v9 = v8;
  if (v8)
  {
    v10 = [v6 copy];
    v11 = [v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__HMRemoteLoginHandler_updateLoggedInAccount_completionHandler___block_invoke;
    block[3] = &unk_1E754D208;
    v25 = v10;
    v26 = self;
    v28 = v7;
    v27 = v9;
    v12 = v10;
    dispatch_async(v11, block);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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
    (*(v7 + 2))(v7, v12);
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

- (void)setLoggedInAccount:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMRemoteLoginHandler *)v6 loggedInAccount];
    v13 = 138543874;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating logged in account: %@ from: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v10 = [v4 copy];
  loggedInAccount = v6->_loggedInAccount;
  v6->_loggedInAccount = v10;

  os_unfair_lock_unlock(&v6->_lock);
  v12 = *MEMORY[0x1E69E9840];
}

- (ACAccount)loggedInAccount
{
  if ([(HMRemoteLoginHandler *)self didReceiveAccountInfo])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(HMRemoteLoginHandler *)self stagedLoggedInAccount];
  }

  os_unfair_lock_lock_with_options();
  loggedInAccount = self->_loggedInAccount;
  if (!loggedInAccount)
  {
    loggedInAccount = v3;
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
  v4 = [(HMRemoteLoginHandler *)self context];
  v3 = [v4 messageDispatcher];
  [v3 registerForMessage:@"kRemoteLoginAccountUpdatedNotificationKey" receiver:self selector:sel__handleRemoteLoginAccountUpdated_];
}

- (BOOL)_configureAccessoryInfoDataProviderIfNeeded
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [(HMRemoteLoginHandler *)self accessory];
  v4 = [v3 home];
  if (!v4 || ([v3 supportsMessagedHomePodSettings] & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v4 uuid];
      v23 = [v3 uuid];
      v24 = [(HMRemoteLoginHandler *)v19 accessory];
      [v24 supportsMessagedHomePodSettings];
      v25 = HMFBooleanToString();
      *buf = 138544130;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      v33 = 2112;
      v34 = v23;
      v35 = 2112;
      v36 = v25;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Did not subscribe to accessory info data provider due to home: %@ accessory: %@ supportsMessagedHomePodSettings: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    goto LABEL_16;
  }

  v5 = [(HMRemoteLoginHandler *)self accessoryInfoDataProvider];

  if (v5)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v6 = [MEMORY[0x1E696AE30] processInfo];
  v7 = [v6 processName];

  if (([v7 isEqualToString:@"Home"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"HDSViewService") & 1) != 0 || isInternalBuild() && (objc_msgSend(v7, "isEqualToString:", @"hdsutil") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"homeutil"))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring accessory info data provider", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [v4 homeManager];
    v13 = [v12 createAccessoryInfoDataProvider];
    [(HMRemoteLoginHandler *)v9 setAccessoryInfoDataProvider:v13];

    v14 = [(HMRemoteLoginHandler *)v9 accessoryInfoDataProvider];
    v15 = [v4 uniqueIdentifier];
    v16 = [v3 uniqueIdentifier];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __67__HMRemoteLoginHandler__configureAccessoryInfoDataProviderIfNeeded__block_invoke;
    v28[3] = &unk_1E754E148;
    v28[4] = v9;
    [v14 configureWithHomeIdentifier:v15 accessoryIdentifier:v16 accessoryInfoOptions:2 dataProviderDelegate:v9 completionHandler:v28];

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

- (void)_configureWithContext:(id)a3 accessory:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(HMRemoteLoginHandler *)self setContext:v7];
  [(HMRemoteLoginHandler *)self setAccessory:v6];

  v8 = [(HMRemoteLoginHandler *)self anisetteDataProvider];
  [v8 _configureWithContext:v7];
}

- (HMRemoteLoginHandler)initWithUUID:(id)a3 accessory:(id)a4 loggedInAccount:(id)a5 stagedLoggedInAccount:(id)a6 anisetteDataProvider:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = HMRemoteLoginHandler;
  v18 = [(HMRemoteLoginHandler *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uuid, a3);
    objc_storeWeak(&v19->_accessory, v14);
    objc_storeStrong(&v19->_loggedInAccount, a5);
    objc_storeStrong(&v19->_stagedLoggedInAccount, a6);
    objc_storeStrong(&v19->_anisetteDataProvider, a7);
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