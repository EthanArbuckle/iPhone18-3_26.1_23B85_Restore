@interface AMSMescal
+ (AMSBagKeySet)bagKeySet;
+ (BOOL)_matchSignSapURL:(id)a3 bagDictionary:(id)a4;
+ (BOOL)primeTheConnectionWithBag:(id)a3 error:(id *)a4;
+ (BOOL)primeTheConnectionWithContract:(id)a3 error:(id *)a4;
+ (BOOL)primeTheConnectionWithContract:(id)a3 logKey:(id)a4 error:(id *)a5;
+ (BOOL)verifyTask:(id)a3 data:(id)a4 type:(int64_t)a5 bag:(id)a6 error:(id *)a7;
+ (BOOL)verifyTask:(id)a3 data:(id)a4 type:(int64_t)a5 bagContract:(id)a6 error:(id *)a7;
+ (BOOL)verifyTask:(id)a3 data:(id)a4 type:(int64_t)a5 bagContract:(id)a6 logKey:(id)a7 error:(id *)a8;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)_DAAPActionsForURLBagActions:(id)a3;
+ (id)_matchSignedActions:(id)a3 withURL:(id)a4;
+ (id)_signedActionDataFromRequest:(id)a3 policy:(id)a4;
+ (id)createBagForSubProfile;
+ (id)signatureFromData:(id)a3 type:(int64_t)a4 bag:(id)a5 error:(id *)a6;
+ (id)signatureFromData:(id)a3 type:(int64_t)a4 bagContract:(id)a5 error:(id *)a6;
+ (id)signatureFromData:(id)a3 type:(int64_t)a4 bagContract:(id)a5 logKey:(id)a6 error:(id *)a7;
+ (id)signaturePromiseFromData:(id)a3 type:(int64_t)a4 bag:(id)a5;
+ (id)signaturePromiseFromRequest:(id)a3 type:(int64_t)a4 bag:(id)a5;
+ (id)signatureUsingRequest:(id)a3 type:(int64_t)a4 bag:(id)a5 error:(id *)a6;
+ (id)signatureUsingRequest:(id)a3 type:(int64_t)a4 bagContract:(id)a5 error:(id *)a6;
+ (id)signatureUsingRequest:(id)a3 type:(int64_t)a4 bagContract:(id)a5 logKey:(id)a6 error:(id *)a7;
+ (id)verificationPromiseForTask:(id)a3 data:(id)a4 type:(int64_t)a5 bag:(id)a6;
@end

@implementation AMSMescal

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

+ (id)signaturePromiseFromData:(id)a3 type:(int64_t)a4 bag:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [AMSMescalSession sessionWithType:a4];
  v16 = v10;
  if (!v8)
  {
    v18 = @"Data not provided";
LABEL_7:
    v19 = AMSError(2, @"Mescal Signature Failed", v18, 0);
    v17 = [AMSPromise promiseWithError:v19];

    goto LABEL_8;
  }

  if (!v9)
  {
    v18 = @"Bag not provided";
    goto LABEL_7;
  }

  if (v10)
  {
    v17 = [v10 signData:v8 bag:v9];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __47__AMSMescal_signaturePromiseFromData_type_bag___block_invoke;
    v22[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v22[4] = a1;
    [v17 addErrorBlock:v22];
  }

  else
  {
    v21 = AMSErrorWithFormat(2, @"Mescal Signature Failed", @"Failed to locate session for type: %d", v11, v12, v13, v14, v15, a4);
    v17 = [AMSPromise promiseWithError:v21];
  }

LABEL_8:

  return v17;
}

void __47__AMSMescal_signaturePromiseFromData_type_bag___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError(v3);
    *buf = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to mescal-sign data. Error = %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }
}

+ (id)signaturePromiseFromRequest:(id)a3 type:(int64_t)a4 bag:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4)
  {
    if (v9)
    {
      v11 = [v8 HTTPMethod];
      v12 = [v11 isEqualToString:@"POST"];

      if (v12)
      {
        v13 = [v10 dictionaryForKey:@"sign-sap-request"];
        v14 = [v13 valuePromise];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __50__AMSMescal_signaturePromiseFromRequest_type_bag___block_invoke;
        v30[3] = &unk_1E73B9120;
        v32 = a1;
        v31 = v8;
        v15 = [v14 thenWithBlock:v30];
      }

      else
      {
        v13 = +[AMSOptional optionalWithNil];
        v15 = [AMSPromise promiseWithResult:v13];
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __50__AMSMescal_signaturePromiseFromRequest_type_bag___block_invoke_2;
      v26[3] = &unk_1E73B9148;
      v19 = v10;
      v27 = v19;
      v29 = a1;
      v28 = v8;
      v20 = [v15 thenWithBlock:v26];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __50__AMSMescal_signaturePromiseFromRequest_type_bag___block_invoke_4;
      v22[3] = &unk_1E73B9190;
      v24 = a4;
      v23 = v19;
      v25 = a1;
      v18 = [v20 thenWithBlock:v22];

      goto LABEL_10;
    }

    v16 = AMSError(2, @"Mescal Signature Failed", @"Bag not provided", 0);
    v17 = [AMSPromise promiseWithError:v16];
  }

  else
  {
    v16 = +[AMSOptional optionalWithNil];
    v17 = [AMSPromise promiseWithResult:v16];
  }

  v18 = v17;

LABEL_10:

  return v18;
}

id __50__AMSMescal_signaturePromiseFromRequest_type_bag___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 URL];
  LOBYTE(v3) = [v3 _matchSignSapURL:v6 bagDictionary:v5];

  if (v3)
  {
    v7 = [*(a1 + 32) HTTPBody];
    if (v7)
    {
      v8 = [[AMSOptional alloc] initWithValue:v7];
    }

    else
    {
      v8 = +[AMSOptional optionalWithNil];
    }

    v10 = v8;
    v9 = [AMSPromise promiseWithResult:v8];
  }

  else
  {
    v7 = +[AMSOptional optionalWithNil];
    v9 = [AMSPromise promiseWithResult:v7];
  }

  return v9;
}

id __50__AMSMescal_signaturePromiseFromRequest_type_bag___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];

  if (v4)
  {
    v5 = [AMSPromise promiseWithResult:v3];
  }

  else
  {
    v6 = [*(a1 + 32) dictionaryForKey:@"signed-actions"];
    v7 = [v6 valuePromise];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__AMSMescal_signaturePromiseFromRequest_type_bag___block_invoke_3;
    v11[3] = &unk_1E73B9120;
    v10 = *(a1 + 40);
    v8 = v10;
    v12 = v10;
    v5 = [v7 thenWithBlock:v11];
  }

  return v5;
}

id __50__AMSMescal_signaturePromiseFromRequest_type_bag___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 URL];
  v7 = [v3 _matchSignedActions:v5 withURL:v6];

  if (v7)
  {
    v8 = [*(a1 + 40) _signedActionDataFromRequest:*(a1 + 32) policy:v7];
    v9 = [[AMSOptional alloc] initWithValue:v8];
    v10 = [AMSPromise promiseWithResult:v9];
  }

  else
  {
    v8 = +[AMSOptional optionalWithNil];
    v10 = [AMSPromise promiseWithResult:v8];
  }

  return v10;
}

id __50__AMSMescal_signaturePromiseFromRequest_type_bag___block_invoke_4(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [a2 value];
  if (v3)
  {
    v4 = [AMSMescalSession sessionWithType:*(a1 + 40)];
    v10 = v4;
    if (v4)
    {
      v11 = [v4 signData:v3 bag:*(a1 + 32)];
      [v11 thenWithBlock:&__block_literal_global_88];
    }

    else
    {
      v11 = AMSErrorWithFormat(2, @"Mescal Signature Failed", @"Failed to locate session for type: %d", v5, v6, v7, v8, v9, *(a1 + 40));
      [AMSPromise promiseWithError:v11];
    }
    v19 = ;
  }

  else
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = AMSLogKey();
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_class();
      v17 = v16;
      if (v14)
      {
        a1 = AMSLogKey();
        [v15 stringWithFormat:@"%@: [%@] ", v17, a1];
      }

      else
      {
        [v15 stringWithFormat:@"%@: ", v16];
      }
      v18 = ;
      *buf = 138543362;
      v23 = v18;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping mescal - unable to locate data to sign", buf, 0xCu);
      if (v14)
      {

        v18 = a1;
      }
    }

    v20 = +[AMSOptional optionalWithNil];
    v19 = [AMSPromise promiseWithResult:v20];
  }

  return v19;
}

id __50__AMSMescal_signaturePromiseFromRequest_type_bag___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AMSOptional alloc] initWithValue:v2];

  v4 = [AMSPromise promiseWithResult:v3];

  return v4;
}

+ (id)verificationPromiseForTask:(id)a3 data:(id)a4 type:(int64_t)a5 bag:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (v12)
  {
    if (a5 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = a5;
    }

    v15 = [v12 dictionaryForKey:@"sign-sap-response"];
    v16 = [v15 valuePromise];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __54__AMSMescal_verificationPromiseForTask_data_type_bag___block_invoke;
    v27[3] = &unk_1E73B91B8;
    v31 = a1;
    v28 = v10;
    v32 = v14;
    v29 = v11;
    v30 = v13;
    v17 = [v16 continueWithBlock:v27];
    v18 = [v17 binaryPromiseAdapter];
  }

  else
  {
    v19 = +[AMSLogConfig sharedConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = AMSLogKey();
      v22 = MEMORY[0x1E696AEC0];
      v23 = objc_opt_class();
      v24 = v23;
      if (v21)
      {
        a1 = AMSLogKey();
        [v22 stringWithFormat:@"%@: [%@] ", v24, a1];
      }

      else
      {
        [v22 stringWithFormat:@"%@: ", v23];
      }
      v25 = ;
      *buf = 138543362;
      v34 = v25;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Mescal verification will be skipped as bag was not provided.", buf, 0xCu);
      if (v21)
      {

        v25 = a1;
      }
    }

    v18 = +[AMSBinaryPromise promiseWithSuccess];
  }

  return v18;
}

id __54__AMSMescal_verificationPromiseForTask_data_type_bag___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 ams_isBagValueMissingError])
    {
      v8 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
    }

    else
    {
      v13 = +[AMSLogConfig sharedConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = AMSLogKey();
        v16 = MEMORY[0x1E696AEC0];
        v17 = objc_opt_class();
        v18 = v17;
        if (v15)
        {
          a1 = AMSLogKey();
          [v16 stringWithFormat:@"%@: [%@] ", v18, a1];
        }

        else
        {
          [v16 stringWithFormat:@"%@: ", v17];
        }
        v19 = ;
        v27 = AMSLogableError(v7);
        *buf = 138543618;
        v31 = v19;
        v32 = 2114;
        v33 = v27;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to load SAP response dictionary. Defaulting to failing verification as the requirement to verify couldn't be confirmed. Error = %{public}@", buf, 0x16u);
        if (v15)
        {

          v19 = a1;
        }
      }

      v8 = [AMSPromise promiseWithError:v7];
    }

    v26 = v8;
  }

  else
  {
    v9 = [*(a1 + 32) currentRequest];
    v10 = [v9 URL];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v20 = [*(a1 + 32) originalRequest];
      v12 = [v20 URL];
    }

    if ([*(a1 + 56) _matchSignSapURL:v12 bagDictionary:v5])
    {
      v21 = [*(a1 + 32) response];
      v22 = [v21 ams_valueForHTTPHeaderField:@"X-Apple-ActionSignature"];

      if (v22)
      {
        v23 = [AMSMescalSession sessionWithType:*(a1 + 64)];
        v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v22 options:0];
        v25 = [v23 verifyData:*(a1 + 40) withSignature:v24 bag:*(a1 + 48)];
        v26 = [v25 promiseAdapter];

        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __54__AMSMescal_verificationPromiseForTask_data_type_bag___block_invoke_29;
        v29[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
        v29[4] = *(a1 + 56);
        [v26 addErrorBlock:v29];
      }

      else
      {
        v26 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
      }
    }

    else
    {
      v26 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
    }
  }

  return v26;
}

void __54__AMSMescal_verificationPromiseForTask_data_type_bag___block_invoke_29(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError(v3);
    *buf = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to verify the task. Error = %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_129 != -1)
  {
    dispatch_once(&_MergedGlobals_129, &__block_literal_global_33);
  }

  v3 = qword_1ED6E2E38;

  return v3;
}

void __26__AMSMescal_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E2E38;
  qword_1ED6E2E38 = @"AMSCore";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E2E40 != -1)
  {
    dispatch_once(&qword_1ED6E2E40, &__block_literal_global_38_0);
  }

  v3 = qword_1ED6E2E48;

  return v3;
}

void __33__AMSMescal_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E2E48;
  qword_1ED6E2E48 = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

+ (id)_matchSignedActions:(id)a3 withURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = [v6 path];
    v9 = [v8 lastPathComponent];
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__40;
    v22 = __Block_byref_object_dispose__40;
    v23 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41__AMSMescal__matchSignedActions_withURL___block_invoke;
    v14[3] = &unk_1E73B91E0;
    v10 = v8;
    v15 = v10;
    v11 = v9;
    v16 = v11;
    v17 = &v18;
    [v5 enumerateKeysAndObjectsUsingBlock:v14];
    v12 = v19[5];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __41__AMSMescal__matchSignedActions_withURL___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 32) rangeOfString:v9 options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v7 objectForKey:*(a1 + 40)];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
      *a4 = 1;
    }
  }
}

+ (BOOL)_matchSignSapURL:(id)a3 bagDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 absoluteString];
    v9 = [v8 lastPathComponent];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __44__AMSMescal__matchSignSapURL_bagDictionary___block_invoke;
    v14[3] = &unk_1E73B9208;
    v10 = v8;
    v15 = v10;
    v17 = &v19;
    v11 = v9;
    v16 = v11;
    v18 = a1;
    [v7 enumerateKeysAndObjectsUsingBlock:v14];
    v12 = *(v20 + 24);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void __44__AMSMescal__matchSignSapURL_bagDictionary___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 32) rangeOfString:v7] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __44__AMSMescal__matchSignSapURL_bagDictionary___block_invoke_2;
      v15[3] = &unk_1E73B42A8;
      v16 = *(a1 + 40);
      v9 = [v8 ams_firstObjectPassingTest:v15];
      *(*(*(a1 + 48) + 8) + 24) = v9 != 0;

      v10 = *(*(*(a1 + 48) + 8) + 24);
      if ((v10 & 1) == 0)
      {
        v11 = [*(a1 + 56) _DAAPActionsForURLBagActions:v8];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __44__AMSMescal__matchSignSapURL_bagDictionary___block_invoke_3;
        v13[3] = &unk_1E73B42A8;
        v14 = *(a1 + 40);
        v12 = [v11 ams_firstObjectPassingTest:v13];
        *(*(*(a1 + 48) + 8) + 24) = v12 != 0;

        v10 = *(*(*(a1 + 48) + 8) + 24);
      }

      *a4 = v10;
    }
  }
}

uint64_t __44__AMSMescal__matchSignSapURL_bagDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
    goto LABEL_5;
  }

  v4 = v3;

  if (!v4)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = [*(a1 + 32) containsString:v4];
LABEL_6:

  return v5;
}

uint64_t __44__AMSMescal__matchSignSapURL_bagDictionary___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
    goto LABEL_5;
  }

  v4 = v3;

  if (!v4)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = [*(a1 + 32) containsString:v4];
LABEL_6:

  return v5;
}

+ (id)_DAAPActionsForURLBagActions:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) mutableCopy];
        v12 = [v11 rangeOfCharacterFromSet:v5 options:0 range:{0, objc_msgSend(v11, "length")}];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          for (j = v12; j != 0x7FFFFFFFFFFFFFFFLL; j = [v11 rangeOfCharacterFromSet:v5 options:0 range:{j + 2, objc_msgSend(v11, "length") - (j + 2)}])
          {
            [v11 insertString:@"-" atIndex:j];
          }
        }

        v14 = [v11 lowercaseString];
        [v4 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v4;
}

+ (id)_signedActionDataFromRequest:(id)a3 policy:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6)
  {
    v35 = 0;
    goto LABEL_44;
  }

  v8 = [v6 objectForKeyedSubscript:@"headers"];
  v9 = v8;
  v38 = v8;
  if (v8 && (v45 = 0u, v46 = 0u, v43 = 0u, v44 = 0u, (v10 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16]) != 0))
  {
    v11 = v10;
    v12 = 0;
    v13 = *v44;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [v5 valueForHTTPHeaderField:*(*(&v43 + 1) + 8 * i)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 dataUsingEncoding:4];
          if (v16)
          {
            v17 = v16;
            if (!v12)
            {
              v12 = objc_alloc_init(MEMORY[0x1E695DF88]);
            }

            [v12 appendData:v17];
          }

          v9 = v38;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v18 = [v7 objectForKeyedSubscript:@"fields"];
  if (v18)
  {
    v37 = v7;
    v19 = [v5 URL];
    v20 = [v19 ams_parameters];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v40;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [v20 objectForKeyedSubscript:*(*(&v39 + 1) + 8 * j)];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [v26 dataUsingEncoding:4];
            if (v27)
            {
              v28 = v27;
              if (!v12)
              {
                v12 = objc_alloc_init(MEMORY[0x1E695DF88]);
              }

              [v12 appendData:v28];
            }
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v23);
    }

    v7 = v37;
    v9 = v38;
  }

  v29 = [v7 objectForKeyedSubscript:@"path"];
  if (objc_opt_respondsToSelector())
  {
    v30 = [v7 objectForKeyedSubscript:@"path"];
    v31 = [v30 BOOLValue];

    if (!v31)
    {
      v9 = v38;
      goto LABEL_43;
    }

    v32 = [v5 URL];
    v29 = [v32 path];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [v29 dataUsingEncoding:4];
      if (v33)
      {
        v34 = v33;
        if (!v12)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF88]);
        }

        [v12 appendData:v34];
      }
    }

    v9 = v38;
  }

LABEL_43:
  v35 = v12;

LABEL_44:

  return v35;
}

+ (BOOL)primeTheConnectionWithBag:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = AMSError(12, @"Deprecated API", @"This API has been deprecated.", 0);
  }

  return 0;
}

+ (BOOL)primeTheConnectionWithContract:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = AMSGenerateLogCorrelationKey();
  LOBYTE(a4) = [a1 primeTheConnectionWithContract:v6 logKey:v7 error:a4];

  return a4;
}

+ (BOOL)primeTheConnectionWithContract:(id)a3 logKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = AMSSetLogKey(a4);
  v10 = [[AMSContractBagShim alloc] initWithBagContract:v8];

  LOBYTE(a5) = [a1 primeTheConnectionWithBag:v10 error:a5];
  return a5;
}

+ (id)signatureFromData:(id)a3 type:(int64_t)a4 bagContract:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = AMSGenerateLogCorrelationKey();
  v13 = [a1 signatureFromData:v11 type:a4 bagContract:v10 logKey:v12 error:a6];

  return v13;
}

+ (id)signatureFromData:(id)a3 type:(int64_t)a4 bagContract:(id)a5 logKey:(id)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a3;
  v14 = AMSSetLogKey(a6);
  v15 = [[AMSContractBagShim alloc] initWithBagContract:v12];

  v16 = [a1 signatureFromData:v13 type:a4 bag:v15 error:a7];

  return v16;
}

+ (id)signatureUsingRequest:(id)a3 type:(int64_t)a4 bagContract:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = AMSGenerateLogCorrelationKey();
  v13 = [a1 signatureUsingRequest:v11 type:a4 bagContract:v10 logKey:v12 error:a6];

  return v13;
}

+ (id)signatureUsingRequest:(id)a3 type:(int64_t)a4 bagContract:(id)a5 logKey:(id)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a3;
  v14 = AMSSetLogKey(a6);
  v15 = [[AMSContractBagShim alloc] initWithBagContract:v12];

  v16 = [a1 signatureUsingRequest:v13 type:a4 bag:v15 error:a7];

  return v16;
}

+ (BOOL)verifyTask:(id)a3 data:(id)a4 type:(int64_t)a5 bagContract:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = AMSGenerateLogCorrelationKey();
  LOBYTE(a7) = [a1 verifyTask:v14 data:v13 type:a5 bagContract:v12 logKey:v15 error:a7];

  return a7;
}

+ (BOOL)verifyTask:(id)a3 data:(id)a4 type:(int64_t)a5 bagContract:(id)a6 logKey:(id)a7 error:(id *)a8
{
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = AMSSetLogKey(a7);
  v18 = [[AMSContractBagShim alloc] initWithBagContract:v14];

  LOBYTE(a8) = [a1 verifyTask:v16 data:v15 type:a5 bag:v18 error:a8];
  return a8;
}

+ (id)signatureUsingRequest:(id)a3 type:(int64_t)a4 bag:(id)a5 error:(id *)a6
{
  v7 = [a1 signaturePromiseFromRequest:a3 type:a4 bag:a5];
  v8 = [v7 resultWithError:a6];
  v9 = [v8 value];

  return v9;
}

+ (id)signatureFromData:(id)a3 type:(int64_t)a4 bag:(id)a5 error:(id *)a6
{
  v7 = [a1 signaturePromiseFromData:a3 type:a4 bag:a5];
  v8 = [v7 resultWithError:a6];

  return v8;
}

+ (BOOL)verifyTask:(id)a3 data:(id)a4 type:(int64_t)a5 bag:(id)a6 error:(id *)a7
{
  v8 = [a1 verificationPromiseForTask:a3 data:a4 type:a5 bag:a6];
  LOBYTE(a7) = [v8 resultWithError:a7];

  return a7;
}

@end