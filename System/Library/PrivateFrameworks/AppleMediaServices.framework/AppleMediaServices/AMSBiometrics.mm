@interface AMSBiometrics
+ (BOOL)_deleteKeysWithOptions:(id)options error:(id *)error;
+ (BOOL)_shouldAddBiometricHeader;
+ (BOOL)deleteAllKeysWithError:(id *)error;
+ (BOOL)deleteKeysWithError:(id *)error;
+ (BOOL)hasKeysForAccount:(id)account forSignaturePurpose:(unint64_t)purpose withError:(id *)error;
+ (BOOL)isActionSupportedForType:(int64_t)type account:(id)account options:(id)options error:(id *)error;
+ (BOOL)isAvailableForAccount:(id)account;
+ (BOOL)isDeviceInBiometricLockout;
+ (BOOL)isIdentityMapValid;
+ (BOOL)proxyDeleteAllKeysWithError:(id *)error;
+ (NSArray)identityMap;
+ (id)ACLVersionForAccessControl:(__SecAccessControl *)control;
+ (id)ACLVersionForAccount:(id)account options:(id)options error:(id *)error;
+ (id)ACLVersionForConstraints:(id)constraints;
+ (id)_stateHeaderValueForAccount:(id)account;
+ (id)disableForAccount:(id)account;
+ (id)handleResponse:(id)response financeResponse:(id)financeResponse session:(id)session taskInfo:(id)info;
+ (id)headersWithAccount:(id)account options:(id)options signatureResult:(id)result;
+ (id)isActionSupportedForType:(int64_t)type account:(id)account options:(id)options;
+ (id)minimumACLVersionForAction:(int64_t)action;
+ (id)resumptionHeadersFromRequest:(id)request;
+ (id)setState:(int64_t)state forAccount:(id)account;
+ (id)signAndReturnChallenge:(id)challenge withAccount:(id)account clientInfo:(id)info options:(id)options;
+ (id)signChallenge:(id)challenge withAccount:(id)account clientInfo:(id)info options:(id)options;
+ (int64_t)deviceState;
+ (int64_t)type;
+ (void)saveIdentityMap;
+ (void)setDeviceState:(int64_t)state;
@end

@implementation AMSBiometrics

+ (int64_t)deviceState
{
  type = [self type];
  if (type <= 7 && ((1 << type) & 0x8C) != 0 && +[AMSDefaults deviceBiometricsState]!= 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (NSArray)identityMap
{
  if (+[AMSDevice deviceIsAudioAccessory])
  {
    v2 = 0;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v3 = getBiometricKitClass_softClass;
    v12 = getBiometricKitClass_softClass;
    if (!getBiometricKitClass_softClass)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __getBiometricKitClass_block_invoke;
      v8[3] = &unk_1E73B3880;
      v8[4] = &v9;
      __getBiometricKitClass_block_invoke(v8);
      v3 = v10[3];
    }

    v4 = v3;
    _Block_object_dispose(&v9, 8);
    manager = [v3 manager];
    v2 = [manager identities:0];
  }

  v6 = [v2 copy];

  return v6;
}

+ (BOOL)isIdentityMapValid
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = AMSSetLogKeyIfNeeded();
  if (!+[AMSDevice deviceIsAudioAccessory])
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    oSLogObject2 = +[AMSDefaults deviceBiometricIdentities];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __35__AMSBiometrics_isIdentityMapValid__block_invoke;
    v31[3] = &unk_1E73B5088;
    selfCopy = self;
    v9 = v3;
    v32 = v9;
    v4 = v8;
    v33 = v4;
    [oSLogObject2 enumerateObjectsUsingBlock:v31];
    if ([v4 count])
    {
      v10 = +[AMSBiometrics identityMap];
      v11 = [v4 count];
      if (v11 == [v10 count])
      {
        v23 = oSLogObject2;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        obj = v4;
        v12 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v28;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v28 != v15)
              {
                objc_enumerationMutation(obj);
              }

              uuid = [*(*(&v27 + 1) + 8 * i) uuid];
              v25[0] = MEMORY[0x1E69E9820];
              v25[1] = 3221225472;
              v25[2] = __35__AMSBiometrics_isIdentityMapValid__block_invoke_77;
              v25[3] = &unk_1E73B50B0;
              v26 = uuid;
              v18 = uuid;
              if ([v10 indexOfObjectPassingTest:v25] != 0x7FFFFFFFFFFFFFFFLL)
              {
                ++v14;
              }
            }

            v13 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }

        v7 = v14 == [v10 count];
        oSLogObject2 = v23;
        goto LABEL_27;
      }
    }

    else
    {
      v10 = +[AMSLogConfig sharedConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v10 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        *buf = 138543618;
        v36 = v20;
        v37 = 2114;
        v38 = v9;
        v21 = v20;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping identity map check for no cached identities", buf, 0x16u);
      }
    }

    v7 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v36 = objc_opt_class();
    v37 = 2114;
    v38 = v3;
    v6 = v36;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping identity map check for audio accessory", buf, 0x16u);
  }

  v7 = 0;
LABEL_28:

  return v7;
}

void __35__AMSBiometrics_isIdentityMapValid__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v12 = 0;
    v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:getBiometricKitIdentityClass() fromData:v4 error:&v12];
    v6 = v12;
    if (v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = *(a1 + 32);
        *buf = 138543874;
        v14 = v9;
        v15 = 2114;
        v16 = v10;
        v17 = 2114;
        v18 = v6;
        v11 = v9;
        _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to serialize biometric identity with error: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      getBiometricKitIdentityClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 40) addObject:v5];
      }
    }
  }
}

uint64_t __35__AMSBiometrics_isIdentityMapValid__block_invoke_77(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

+ (int64_t)type
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswerWithError();
  v3 = v2;
  v4 = *MEMORY[0x1E695E4D0];
  if (v2 != *MEMORY[0x1E695E4D0])
  {
    v5 = MGCopyAnswerWithError();
    if (v5 == v4)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if (v5)
    {
      CFRelease(v5);
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v7 = +[AMSLogConfig sharedConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v7 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = AMSSetLogKeyIfNeeded();
        *buf = 138543874;
        v17 = v9;
        v18 = 2114;
        v19 = v10;
        v20 = 1026;
        v21 = 0;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain touch identifier capability: %{public}d", buf, 0x1Cu);
      }

      if (!v3)
      {
        goto LABEL_15;
      }
    }

LABEL_9:
    CFRelease(v3);
    return v6;
  }

  v6 = 3;
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_15:
  v11 = +[AMSLogConfig sharedConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v13 = objc_opt_class();
    v14 = AMSSetLogKeyIfNeeded();
    *buf = 138543874;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    v20 = 1026;
    v21 = 0;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain pearl identifier capability: %{public}d", buf, 0x1Cu);
  }

  return v6;
}

+ (void)setDeviceState:(int64_t)state
{
  v39 = *MEMORY[0x1E69E9840];
  v23 = AMSSetLogKey(0);
  [AMSDefaults setDeviceBiometricsState:state];
  if (state == 2)
  {
    v30 = 0;
    [self deleteKeysWithError:&v30];
    v4 = v30;
    if (v4)
    {
      v5 = +[AMSLogConfig sharedAttestationConfig];
      if (!v5)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v5 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        *buf = 138543874;
        v34 = v7;
        v35 = 2114;
        v36 = v23;
        v37 = 2114;
        v38 = v4;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error deleting biometrics keys: %{public}@", buf, 0x20u);
      }
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v31[0] = AMSAccountMediaTypeAppStore;
  v31[1] = AMSAccountMediaTypeBooks;
  v31[2] = AMSAccountMediaTypeiTunes;
  v31[3] = AMSAccountMediaTypeAppStoreSandbox;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v27;
    *&v11 = 138543874;
    v22 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:{*(*(&v26 + 1) + 8 * v14), v22}];
        ams_activeiTunesAccount = [v15 ams_activeiTunesAccount];

        if (ams_activeiTunesAccount && ([v8 containsObject:ams_activeiTunesAccount] & 1) == 0)
        {
          [v8 addObject:ams_activeiTunesAccount];
          v17 = [self setState:0 forAccount:ams_activeiTunesAccount];
          v25 = 0;
          [v17 resultWithError:&v25];
          v18 = v25;

          if (v18)
          {
            v19 = +[AMSLogConfig sharedAttestationConfig];
            if (!v19)
            {
              v19 = +[AMSLogConfig sharedConfig];
            }

            oSLogObject2 = [v19 OSLogObject];
            if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
            {
              v21 = objc_opt_class();
              *buf = v22;
              v34 = v21;
              v35 = 2114;
              v36 = v23;
              v37 = 2114;
              v38 = v18;
              _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error unsetting biometrics state: %{public}@", buf, 0x20u);
            }
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v12);
  }
}

+ (id)ACLVersionForAccessControl:(__SecAccessControl *)control
{
  v17 = *MEMORY[0x1E69E9840];
  if (control)
  {
    CFRetain(control);
    v5 = SecAccessControlGetConstraints();
    v6 = [self ACLVersionForConstraints:v5];
    CFRelease(control);
  }

  else
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = AMSSetLogKeyIfNeeded();
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ACL version evaluation failed for no ACL", &v13, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)ACLVersionForAccount:(id)account options:(id)options error:(id *)error
{
  v6 = [AMSKeychain copyAccessControlRefWithAccount:account options:options error:error];

  return [self ACLVersionForAccessControl:v6];
}

+ (id)ACLVersionForConstraints:(id)constraints
{
  v18 = *MEMORY[0x1E69E9840];
  constraintsCopy = constraints;
  if ([self isActionSupported:7 withConstraints:constraintsCopy])
  {
    selfCopy6 = self;
    v6 = 7;
LABEL_13:
    v7 = [selfCopy6 minimumACLVersionForAction:v6];
    goto LABEL_14;
  }

  if ([self isActionSupported:6 withConstraints:constraintsCopy])
  {
    selfCopy6 = self;
    v6 = 6;
    goto LABEL_13;
  }

  if ([self isActionSupported:5 withConstraints:constraintsCopy])
  {
    selfCopy6 = self;
    v6 = 5;
    goto LABEL_13;
  }

  if ([self isActionSupported:3 withConstraints:constraintsCopy])
  {
    selfCopy6 = self;
    v6 = 3;
    goto LABEL_13;
  }

  if ([self isActionSupported:1 withConstraints:constraintsCopy])
  {
    selfCopy6 = self;
    v6 = 1;
    goto LABEL_13;
  }

  if ([self isActionSupported:0 withConstraints:constraintsCopy])
  {
    selfCopy6 = self;
    v6 = 0;
    goto LABEL_13;
  }

  v9 = +[AMSLogConfig sharedConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = AMSSetLogKeyIfNeeded();
    v14 = 138543618;
    v15 = v11;
    v16 = 2114;
    v17 = v13;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to determine version for ACL", &v14, 0x16u);
  }

  v7 = 0;
LABEL_14:

  return v7;
}

+ (id)disableForAccount:(id)account
{
  v19 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v12 = 0;
  [AMSBiometrics deleteKeysWithError:&v12];
  v5 = v12;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedAttestationConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error deleting biometrics keys: %{public}@", buf, 0x20u);
    }
  }

  v10 = [self setState:2 forAccount:accountCopy];

  return v10;
}

+ (BOOL)hasKeysForAccount:(id)account forSignaturePurpose:(unint64_t)purpose withError:(id *)error
{
  accountCopy = account;
  v8 = objc_alloc_init(AMSKeychainOptions);
  [(AMSKeychainOptions *)v8 setPurpose:purpose];
  [(AMSKeychainOptions *)v8 setStyle:+[AMSKeychainOptions preferredAttestationStyle]];
  style = [(AMSKeychainOptions *)v8 style];
  if (style > 5)
  {
    v13 = 0;
    goto LABEL_11;
  }

  if (((1 << style) & 0x39) != 0)
  {
    v19 = 0;
    v10 = &v19;
    v11 = [AMSKeychain copyCertificatePrivateKeyWithContext:0 account:accountCopy options:v8 error:&v19];
  }

  else
  {
    v18 = 0;
    v10 = &v18;
    v11 = [AMSKeychain copyPrivateKeyWithContext:0 account:accountCopy options:v8 error:&v18];
  }

  v12 = v11;
  v13 = *v10;
  if (!v12)
  {
LABEL_11:
    if (error)
    {
      v16 = @"There was no private key for account";
      goto LABEL_13;
    }

LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  v14 = SecKeyCopyPublicKey(v12);
  CFRelease(v12);
  if (!v14)
  {
    if (error)
    {
      v16 = @"There was no public key for account";
LABEL_13:
      AMSError(7, v16, 0, v13);
      *error = v15 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  CFRelease(v14);
  v15 = 1;
LABEL_15:

  return v15;
}

+ (BOOL)isDeviceInBiometricLockout
{
  currentUser = [MEMORY[0x1E696EE60] currentUser];
  state = [currentUser state];
  biometry = [state biometry];
  isLockedOut = [biometry isLockedOut];

  return isLockedOut;
}

+ (BOOL)deleteKeysWithError:(id *)error
{
  if (AMSIsEntitledForDirectKeychainAccess())
  {

    return [AMSBiometrics deleteAllKeysWithError:error];
  }

  else
  {

    return [AMSBiometrics proxyDeleteAllKeysWithError:error];
  }
}

+ (BOOL)deleteAllKeysWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = AMSSetLogKey(0);
  v6 = objc_alloc_init(AMSKeychainOptions);
  [(AMSKeychainOptions *)v6 setPurpose:0];
  [(AMSKeychainOptions *)v6 setStyle:+[AMSKeychainOptions preferredAttestationStyle]];
  v20 = 0;
  [self _deleteKeysWithOptions:v6 error:&v20];
  v7 = v20;
  v8 = v7 == 0;
  if (v7)
  {
    v9 = +[AMSLogConfig sharedAttestationConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      *buf = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v5;
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error deleting primary keys: %{public}@", buf, 0x20u);
    }
  }

  v12 = objc_alloc_init(AMSKeychainOptions);
  [(AMSKeychainOptions *)v12 setPurpose:1];
  [(AMSKeychainOptions *)v12 setStyle:+[AMSKeychainOptions preferredAttestationStyle]];
  v19 = v7;
  [self _deleteKeysWithOptions:v12 error:&v19];
  v13 = v19;

  if (v13)
  {
    v14 = +[AMSLogConfig sharedAttestationConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      *buf = 138543874;
      v22 = v16;
      v23 = 2114;
      v24 = v5;
      v25 = 2114;
      v26 = v13;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error deleting extended keys: %{public}@", buf, 0x20u);
    }

    v8 = 0;
  }

  if (error)
  {
    v17 = v13;
    *error = v13;
  }

  return v8;
}

+ (id)handleResponse:(id)response financeResponse:(id)financeResponse session:(id)session taskInfo:(id)info
{
  v62 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  sessionCopy = session;
  infoCopy = info;
  properties = [infoCopy properties];
  disableBiometricsResponseHandling = [properties disableBiometricsResponseHandling];

  if (disableBiometricsResponseHandling)
  {
    v14 = +[AMSURLAction proceedAction];
    v15 = [AMSPromise promiseWithResult:v14];
    goto LABEL_25;
  }

  properties2 = [infoCopy properties];
  logUUID = [properties2 logUUID];
  v18 = AMSSetLogKey(logUUID);

  v14 = +[AMSBinaryPromise promiseWithSuccess];
  v19 = [responseCopy ams_valueForHTTPHeaderField:@"X-Apple-TID-Action"];
  if (v19)
  {
    selfCopy = self;
    v20 = +[AMSLogConfig sharedConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v50 = sessionCopy;
      v22 = AMSLogKey();
      v23 = MEMORY[0x1E696AEC0];
      v24 = objc_opt_class();
      v25 = v24;
      if (v22)
      {
        logUUID = AMSLogKey();
        [v23 stringWithFormat:@"%@: [%@] ", v25, logUUID];
      }

      else
      {
        [v23 stringWithFormat:@"%@: ", v24];
      }
      v26 = ;
      *buf = 138543618;
      v59 = v26;
      v60 = 2114;
      v61 = v19;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Received touch ID action: %{public}@", buf, 0x16u);
      if (v22)
      {

        v26 = logUUID;
      }

      sessionCopy = v50;
    }

    if ([v19 isEqualToString:@"RP"])
    {
      v27 = [AMSBiometricsTokenUpdateTask alloc];
      properties3 = [infoCopy properties];
      account = [properties3 account];
      v30 = [(AMSBiometricsTokenUpdateTask *)v27 initWithAccount:account];

      performUpdate = [(AMSBiometricsTokenUpdateTask *)v30 performUpdate];
      v32 = v14;
LABEL_22:

      v14 = performUpdate;
      goto LABEL_23;
    }

    if (![v19 isEqualToString:@"EP"])
    {
LABEL_23:
      self = selfCopy;
      goto LABEL_24;
    }

    v33 = [AMSBiometricsPresentationProxy alloc];
    task = [infoCopy task];
    v51 = sessionCopy;
    v30 = [(AMSBiometricsPresentationProxy *)v33 initWithSession:sessionCopy task:task];

    v35 = [AMSBiometricsTokenUpdateTask alloc];
    properties4 = [infoCopy properties];
    account2 = [properties4 account];
    v32 = [(AMSBiometricsTokenUpdateTask *)v35 initWithAccount:account2];

    [(AMSBiometricsTokenUpdateTask *)v32 setPresentationDelegate:v30];
    [(AMSBiometricsTokenUpdateTask *)v32 setShouldRequestConfirmation:1];
    properties5 = [infoCopy properties];
    clientInfo = [properties5 clientInfo];
    [(AMSBiometricsTokenUpdateTask *)v32 setClientInfo:clientInfo];

    v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
    properties6 = [infoCopy properties];
    purchaseInfo = [properties6 purchaseInfo];
    buyParams = [purchaseInfo buyParams];
    v43 = [buyParams parameterForKey:@"mtTopic"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = v43;

      if (v44)
      {
        v45 = v49;
        [v49 setObject:v44 forKeyedSubscript:@"topic"];
        sessionCopy = v51;
LABEL_21:
        [(AMSBiometricsTokenUpdateTask *)v32 setAdditionalDialogMetrics:v45];
        performUpdate = [(AMSBiometricsTokenUpdateTask *)v32 performUpdate];

        goto LABEL_22;
      }
    }

    else
    {

      v44 = 0;
    }

    v45 = v49;
    sessionCopy = v51;
    goto LABEL_21;
  }

LABEL_24:
  promiseAdapter = [(AMSBiometricsTokenUpdateTask *)v14 promiseAdapter];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __65__AMSBiometrics_handleResponse_financeResponse_session_taskInfo___block_invoke;
  v53[3] = &unk_1E73B5100;
  v54 = responseCopy;
  v55 = v19;
  v56 = infoCopy;
  selfCopy2 = self;
  v47 = v19;
  v15 = [promiseAdapter continueWithBlock:v53];

LABEL_25:

  return v15;
}

id __65__AMSBiometrics_handleResponse_financeResponse_session_taskInfo___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = +[AMSURLAction proceedAction];
  v3 = [*(a1 + 32) ams_valueForHTTPHeaderField:@"X-Apple-TID-Challenge"];
  v4 = [*(a1 + 32) ams_valueForHTTPHeaderField:@"X-Apple-TID-Pkeyid"];
  v5 = [v4 isEqualToString:@"EXT"];
  if (*(a1 + 40) || (v3 ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v17 = [AMSPromise promiseWithResult:v2];
  }

  else
  {
    v7 = [*(a1 + 48) properties];
    v8 = [v7 keychainOptions];
    v9 = [v8 copy];

    [v9 setPurpose:1];
    v10 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = AMSLogKey();
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      v15 = v14;
      if (v12)
      {
        v26 = AMSLogKey();
        [v13 stringWithFormat:@"%@: [%@] ", v15, v26];
      }

      else
      {
        [v13 stringWithFormat:@"%@: ", v14];
      }
      v16 = ;
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "purpose")}];
      *buf = 138543618;
      v32 = v16;
      v33 = 2114;
      v34 = v18;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Signing challenge: %{public}@", buf, 0x16u);

      if (v12)
      {

        v16 = v26;
      }
    }

    v19 = *(a1 + 56);
    v20 = [*(a1 + 48) properties];
    v21 = [v20 account];
    v22 = [*(a1 + 48) properties];
    v23 = [v22 clientInfo];
    v24 = [v19 signAndReturnChallenge:v3 withAccount:v21 clientInfo:v23 options:v9];

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __65__AMSBiometrics_handleResponse_financeResponse_session_taskInfo___block_invoke_111;
    v27[3] = &unk_1E73B50D8;
    v30 = *(a1 + 56);
    v28 = v3;
    v29 = *(a1 + 48);
    v17 = [v24 continueWithBlock:v27];
  }

  return v17;
}

id __65__AMSBiometrics_handleResponse_financeResponse_session_taskInfo___block_invoke_111(uint64_t a1, void *a2, void *a3)
{
  v45[4] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = +[AMSLogConfig sharedConfig];
  v9 = v8;
  if (v6)
  {
    if (!v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = AMSLogKey();
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      v14 = v13;
      if (v11)
      {
        v3 = AMSLogKey();
        [v12 stringWithFormat:@"%@: [%@] ", v14, v3];
      }

      else
      {
        [v12 stringWithFormat:@"%@: ", v13];
      }
      v15 = ;
      *buf = 138543362;
      v41 = v15;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully signed extended action.", buf, 0xCu);
      if (v11)
      {

        v15 = v3;
      }
    }

    v22 = +[AMSURLAction retryAction];
    [v22 setReason:@"extended biometrics"];
    [v22 setRetryIdentifier:0x1F073A118];
    v23 = [v6 publicKey];
    v24 = [v23 base64EncodedStringWithOptions:0];

    v25 = *(a1 + 32);
    v44[0] = @"X-Apple-TID-Challenge";
    v44[1] = @"X-Apple-TID-Pkey";
    v45[0] = v25;
    v45[1] = v24;
    v44[2] = @"X-Apple-TID-Signature";
    v26 = [v6 signature];
    v44[3] = @"X-Apple-TID-SignatureVersion";
    v45[2] = v26;
    v45[3] = @"1";
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:4];
    [v22 setUpdatedHeaders:v27];
  }

  else
  {
    if (!v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v9 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = AMSLogKey();
      v18 = MEMORY[0x1E696AEC0];
      v19 = objc_opt_class();
      v20 = v19;
      if (v17)
      {
        v3 = AMSLogKey();
        [v18 stringWithFormat:@"%@: [%@] ", v20, v3];
      }

      else
      {
        [v18 stringWithFormat:@"%@: ", v19];
      }
      v21 = ;
      *buf = 138543618;
      v41 = v21;
      v42 = 2114;
      v43 = v7;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@Biometrics signature failed. Error: %{public}@", buf, 0x16u);
      if (v17)
      {

        v21 = v3;
      }
    }

    if ([v7 code] == 6)
    {
      v22 = [AMSURLAction actionWithError:v7];
      [*(a1 + 40) setError:v7];
    }

    else
    {
      v28 = +[AMSLogConfig sharedConfig];
      if (!v28)
      {
        v28 = +[AMSLogConfig sharedConfig];
      }

      v29 = [v28 OSLogObject];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = AMSLogKey();
        v31 = MEMORY[0x1E696AEC0];
        v32 = objc_opt_class();
        v33 = v32;
        if (v30)
        {
          a1 = AMSLogKey();
          [v31 stringWithFormat:@"%@: [%@] ", v33, a1];
        }

        else
        {
          [v31 stringWithFormat:@"%@: ", v32];
        }
        v34 = ;
        *buf = 138543362;
        v41 = v34;
        _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Falling back to password.", buf, 0xCu);
        if (v30)
        {

          v34 = a1;
        }
      }

      v22 = +[AMSURLAction retryAction];
      [v22 setReason:@"extended biometric fallback"];
      [v22 setRetryIdentifier:0x1F073A118];
      v38 = @"X-Apple-TID-Action";
      v39 = @"FB";
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      [v22 setUpdatedHeaders:v35];
    }
  }

  v36 = [AMSPromise promiseWithResult:v22];

  return v36;
}

+ (id)headersWithAccount:(id)account options:(id)options signatureResult:(id)result
{
  accountCopy = account;
  optionsCopy = options;
  resultCopy = result;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (resultCopy || ![optionsCopy purpose] || objc_msgSend(optionsCopy, "purpose") == 1)
  {
    if (!AMSIsEntitledForDirectKeychainAccess())
    {
      v13 = [AMSKeychain publicKeyHeaderWithAccount:accountCopy options:optionsCopy signatureResult:resultCopy];
      if (v13)
      {
        [v11 addEntriesFromDictionary:v13];
      }

      goto LABEL_14;
    }

    if ([AMSCertificateManager shouldUseAccountSpecificCertificatesForAccount:accountCopy])
    {
      v12 = +[AMSCertificateManager publicKeyForAccount:forSignaturePurpose:](AMSCertificateManager, "publicKeyForAccount:forSignaturePurpose:", accountCopy, [optionsCopy purpose]);
      if (!v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = 0;
      v12 = [AMSKeychain copyPublicKeyForAccount:accountCopy options:optionsCopy error:&v23];

      if (!v12)
      {
LABEL_14:
        [v11 setObject:@"1" forKeyedSubscript:@"X-Apple-TID-SignatureVersion"];
        goto LABEL_15;
      }
    }

    v22 = 0;
    v14 = SecKeyCopyExternalRepresentation(v12, &v22);
    CFRelease(v12);
    v15 = v22;
    v16 = [(__CFData *)v14 base64EncodedStringWithOptions:0];
    [v11 setObject:v16 forKeyedSubscript:@"X-Apple-TID-Pkey"];

    goto LABEL_14;
  }

LABEL_15:
  v17 = [self _stateHeaderValueForAccount:accountCopy];
  if (v17)
  {
    [v11 setObject:v17 forKeyedSubscript:@"X-Apple-TID-State"];
  }

  originalRequest = [resultCopy originalRequest];
  challenge = [originalRequest challenge];

  if (challenge)
  {
    [v11 setObject:challenge forKeyedSubscript:@"X-Apple-TID-Challenge"];
  }

  if (resultCopy)
  {
    signature = [resultCopy signature];
    if (signature)
    {
      [v11 setObject:signature forKeyedSubscript:@"X-Apple-TID-Signature"];
      [v11 setObject:@"1" forKeyedSubscript:@"X-Apple-TID-SignatureVersion"];
    }
  }

  return v11;
}

+ (BOOL)isAvailableForAccount:(id)account
{
  if ([AMSBiometrics stateForAccount:account]!= 1)
  {
    return 0;
  }

  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  if ([mEMORY[0x1E69ADFB8] isPasscodeSet])
  {
    v4 = +[AMSBiometrics identityMap];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)minimumACLVersionForAction:(int64_t)action
{
  v22 = *MEMORY[0x1E69E9840];
  result = @"1";
  if (action <= 4)
  {
    if ((action - 1) < 2)
    {
      return @"1.5";
    }

    if ((action - 3) >= 2)
    {
      if (!action)
      {
        return result;
      }

      goto LABEL_23;
    }

    return @"3";
  }

  if (action > 99)
  {
    if (action == 100)
    {
      return result;
    }

    if (action == 101)
    {
      return @"2";
    }

    if (action != 102)
    {
      goto LABEL_23;
    }

    return @"3";
  }

  switch(action)
  {
    case 5:
      v5 = +[AMSLogConfig sharedConfig];
      if (!v5)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v5 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        v8 = v7;
        v9 = AMSSetLogKeyIfNeeded();
        v16 = 138543618;
        v17 = v7;
        v18 = 2114;
        v19 = v9;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Passcode ACLs not supported on platform", &v16, 0x16u);
      }

      return 0;
    case 6:
      return @"4";
    case 7:
      return @"1.7";
  }

LABEL_23:
  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = AMSSetLogKeyIfNeeded();
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:action];
    v16 = 138543874;
    v17 = v12;
    v18 = 2114;
    v19 = v14;
    v20 = 2114;
    v21 = v15;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to determine ACL version for LocalAuth action type: %{public}@", &v16, 0x20u);
  }

  return 0;
}

+ (id)resumptionHeadersFromRequest:(id)request
{
  v33[7] = *MEMORY[0x1E69E9840];
  allHTTPHeaderFields = [request allHTTPHeaderFields];
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v32[0] = @"X-Apple-TID-Pkey";
  v5 = [allHTTPHeaderFields objectForKeyedSubscript:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F071BA78;
  }

  v33[0] = v7;
  v32[1] = @"X-Apple-TID-Challenge";
  v8 = [allHTTPHeaderFields objectForKeyedSubscript:?];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F071BA78;
  }

  v33[1] = v10;
  v32[2] = @"X-Apple-TID-Signature";
  v11 = [allHTTPHeaderFields objectForKeyedSubscript:?];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F071BA78;
  }

  v33[2] = v13;
  v32[3] = @"X-Apple-TID-State";
  v14 = [allHTTPHeaderFields objectForKeyedSubscript:?];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_1F071BA78;
  }

  v33[3] = v16;
  v32[4] = @"X-Apple-TID-SignatureVersion";
  v17 = [allHTTPHeaderFields objectForKeyedSubscript:?];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_1F071BA78;
  }

  v33[4] = v19;
  v32[5] = @"X-Apple-AMD";
  v20 = [allHTTPHeaderFields objectForKeyedSubscript:?];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &stru_1F071BA78;
  }

  v33[5] = v22;
  v32[6] = @"X-Apple-AMD-M";
  v23 = [allHTTPHeaderFields objectForKeyedSubscript:?];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = &stru_1F071BA78;
  }

  v33[6] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:7];
  v27 = [v4 initWithDictionary:v26];

  v28 = [allHTTPHeaderFields objectForKeyedSubscript:@"X-Apple-TID-Pkey"];

  if (v28)
  {
    v29 = [allHTTPHeaderFields objectForKeyedSubscript:@"X-Apple-TID-Signature"];

    if (v29)
    {
      v30 = @"PK";
    }

    else
    {
      v30 = @"FB";
    }

    [v27 setObject:v30 forKey:@"X-Apple-TID-Action"];
  }

  return v27;
}

+ (void)saveIdentityMap
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = +[AMSBiometrics identityMap];
  v3 = [v2 count];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = +[AMSBiometrics identityMap];
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v30;
      v10 = 0x1E696A000uLL;
      v11 = 0x1E73B0000uLL;
      *&v7 = 138543874;
      v24 = v7;
      v25 = v5;
      do
      {
        v12 = 0;
        v27 = v8;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v29 + 1) + 8 * v12);
          v14 = *(v10 + 3272);
          v28 = 0;
          v15 = [v14 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:{&v28, v24}];
          v16 = v28;
          if (v15)
          {
            [v4 addObject:v15];
          }

          else
          {
            sharedConfig = [*(v11 + 3552) sharedConfig];
            if (!sharedConfig)
            {
              sharedConfig = [*(v11 + 3552) sharedConfig];
            }

            oSLogObject = [sharedConfig OSLogObject];
            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
            {
              v19 = v11;
              v20 = v9;
              v21 = v4;
              v22 = objc_opt_class();
              v26 = v22;
              v23 = AMSSetLogKeyIfNeeded();
              *buf = v24;
              v34 = v22;
              v4 = v21;
              v9 = v20;
              v11 = v19;
              v35 = 2114;
              v36 = v23;
              v37 = 2114;
              v38 = v16;
              _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to archive identity. Error = %{public}@", buf, 0x20u);

              v5 = v25;
              v10 = 0x1E696A000;
            }

            v8 = v27;
          }

          ++v12;
        }

        while (v8 != v12);
        v8 = [v5 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v4 = 0;
  }

  [AMSDefaults setDeviceBiometricIdentities:v4];
}

+ (id)setState:(int64_t)state forAccount:(id)account
{
  accountCopy = account;
  [accountCopy ams_setBiometricsState:state];
  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v7 = [ams_sharedAccountStore ams_saveAccount:accountCopy];

  return v7;
}

+ (id)signChallenge:(id)challenge withAccount:(id)account clientInfo:(id)info options:(id)options
{
  v6 = [self signAndReturnChallenge:challenge withAccount:account clientInfo:info options:options];
  v7 = [v6 thenWithBlock:&__block_literal_global_21];

  return v7;
}

id __62__AMSBiometrics_signChallenge_withAccount_clientInfo_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 signature];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

+ (id)signAndReturnChallenge:(id)challenge withAccount:(id)account clientInfo:(id)info options:(id)options
{
  optionsCopy = options;
  infoCopy = info;
  accountCopy = account;
  challengeCopy = challenge;
  v18 = 0;
  v13 = [[AMSBiometricsSignatureRequest alloc] initWithAccount:accountCopy clientInfo:infoCopy challenge:challengeCopy localAuthContext:0 options:optionsCopy error:&v18];

  v14 = v18;
  if (v13)
  {
    v15 = [[AMSBiometricsSignatureTask alloc] initWithRequest:v13];
    performSignature = [(AMSBiometricsSignatureTask *)v15 performSignature];
  }

  else
  {
    performSignature = [AMSPromise promiseWithError:v14];
  }

  return performSignature;
}

+ (BOOL)_deleteKeysWithOptions:(id)options error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  style = [optionsCopy style];
  if (style > 5)
  {
    v10 = 0;
    v9 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (((1 << style) & 0x39) != 0)
  {
    v18 = 0;
    v7 = &v18;
    v8 = [AMSKeychain deleteCertificateChainWithOptions:optionsCopy error:&v18];
  }

  else
  {
    v17 = 0;
    v7 = &v17;
    v8 = [AMSKeychain deleteKeyPairWithOptions:optionsCopy error:&v17];
  }

  v9 = v8;
  v10 = *v7;
  if (v10)
  {
    v11 = +[AMSLogConfig sharedAttestationConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error deleting keys: %{public}@", buf, 0x20u);
    }
  }

  if (error)
  {
LABEL_12:
    v15 = v10;
    *error = v10;
  }

LABEL_13:

  return v9;
}

+ (id)_stateHeaderValueForAccount:(id)account
{
  v34 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  if (([self _shouldAddBiometricHeader] & 1) == 0)
  {
    v15 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = v17;
      v19 = AMSSetLogKeyIfNeeded();
      v20 = AMSHashIfNeeded(accountCopy);
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "type")}];
      *buf = 138544130;
      v25 = v17;
      v26 = 2114;
      v27 = v19;
      v28 = 2114;
      v29 = v20;
      v30 = 2114;
      v31 = v21;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping biometrics state header for account: %{public}@, biometricsType: %{public}@", buf, 0x2Au);
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v5 = [AMSBiometrics stateForAccount:accountCopy];
  type = [self type];
  v7 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v23 = v9;
    v10 = AMSSetLogKeyIfNeeded();
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v13 = AMSHashIfNeeded(accountCopy);
    *buf = 138544386;
    v25 = v9;
    v26 = 2114;
    v27 = v10;
    v28 = 2114;
    v29 = v11;
    v30 = 2114;
    v31 = v12;
    v32 = 2114;
    v33 = v13;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Preparing biometrics state header, account biometricsState %{public}@, biometricsType: %{public}@, account: %{public}@", buf, 0x34u);
  }

  if ((type - 2) > 5)
  {
    goto LABEL_16;
  }

  if (!v5)
  {
    v14 = @"U";
    goto LABEL_17;
  }

  if (v5 == 2)
  {
    v14 = @"D";
    goto LABEL_17;
  }

  if (v5 != 1)
  {
    goto LABEL_16;
  }

  v14 = off_1E73B51D0[type - 2];
LABEL_17:

  return v14;
}

+ (BOOL)_shouldAddBiometricHeader
{
  v2 = +[AMSBiometrics identityMap];
  if ([v2 count])
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    isPasscodeSet = [mEMORY[0x1E69ADFB8] isPasscodeSet];
  }

  else
  {
    isPasscodeSet = 0;
  }

  return isPasscodeSet;
}

+ (id)isActionSupportedForType:(int64_t)type account:(id)account options:(id)options
{
  accountCopy = account;
  optionsCopy = options;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__8;
  v23 = __Block_byref_object_dispose__8;
  v24 = objc_alloc_init(AMSDaemonConnection);
  v9 = [v20[5] securityServiceProxyWithDelegate:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__AMSBiometrics_isActionSupportedForType_account_options___block_invoke;
  v14[3] = &unk_1E73B5170;
  typeCopy = type;
  v10 = accountCopy;
  v15 = v10;
  v11 = optionsCopy;
  v16 = v11;
  v17 = &v19;
  v12 = [v9 thenWithBlock:v14];

  _Block_object_dispose(&v19, 8);

  return v12;
}

AMSMutablePromise *__58__AMSBiometrics_isActionSupportedForType_account_options___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = a1[7];
  v6 = a1[4];
  v7 = a1[5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__AMSBiometrics_isActionSupportedForType_account_options___block_invoke_2;
  v11[3] = &unk_1E73B5148;
  v8 = v4;
  v9 = a1[6];
  v12 = v8;
  v13 = v9;
  [v3 isActionSupportedForType:v5 account:v6 options:v7 completion:v11];

  return v8;
}

void __58__AMSBiometrics_isActionSupportedForType_account_options___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    [*(a1 + 32) finishWithError:?];
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    [v4 finishWithResult:v5];
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

+ (BOOL)isActionSupportedForType:(int64_t)type account:(id)account options:(id)options error:(id *)error
{
  v6 = [self isActionSupportedForType:type account:account options:{options, error}];
  v10 = 0;
  v7 = [v6 resultWithError:&v10];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

+ (BOOL)proxyDeleteAllKeysWithError:(id *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = objc_alloc_init(AMSDaemonConnection);
  v3 = [v12[5] securityServiceProxyWithDelegate:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__AMSBiometrics_proxyDeleteAllKeysWithError___block_invoke;
  v10[3] = &unk_1E73B5198;
  v10[4] = &v11;
  v4 = [v3 thenWithBlock:v10];
  v9 = 0;
  v5 = [v4 resultWithError:&v9];
  v6 = v9;
  bOOLValue = [v5 BOOLValue];

  _Block_object_dispose(&v11, 8);
  return bOOLValue;
}

AMSMutablePromise *__45__AMSBiometrics_proxyDeleteAllKeysWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__AMSBiometrics_proxyDeleteAllKeysWithError___block_invoke_2;
  v8[3] = &unk_1E73B5148;
  v5 = v4;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  [v3 deleteAllKeysWithCompletion:v8];

  return v5;
}

void __45__AMSBiometrics_proxyDeleteAllKeysWithError___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    [*(a1 + 32) finishWithError:?];
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    [v4 finishWithResult:v5];
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

@end