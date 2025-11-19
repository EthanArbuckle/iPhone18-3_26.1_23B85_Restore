@interface AMSAttestation
+ (id)_attestationPListWithStyle:(unint64_t)a3 primaryAttestation:(id)a4 extendedAttestation:(id)a5 error:(id *)a6;
+ (id)_generateCertificateChainStringsForAccount:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)attestationHTTPBodyDataWithStyle:(unint64_t)a3 regenerateKeys:(BOOL)a4 error:(id *)a5;
+ (id)attestationWithAccount:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)attestationWithOptions:(id)a3 error:(id *)a4;
@end

@implementation AMSAttestation

+ (id)attestationWithAccount:(id)a3 options:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (![AMSCertificateManager shouldUseAccountSpecificCertificatesForAccount:v8])
  {
    v11 = [a1 attestationWithOptions:v9 error:a5];
    goto LABEL_33;
  }

  v10 = AMSSetLogKeyIfNeeded();
  if ([v9 regenerateKeys])
  {
    +[AMSCertificateManager deleteCertificatesForAccount:forSignaturePurpose:](AMSCertificateManager, "deleteCertificatesForAccount:forSignaturePurpose:", v8, [v9 purpose]);
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [v9 style];
  if (v12 <= 5)
  {
    if (((1 << v12) & 0x39) != 0)
    {
      v13 = +[AMSCertificateManager certificatesForAccount:forSignaturePurpose:](AMSCertificateManager, "certificatesForAccount:forSignaturePurpose:", v8, [v9 purpose]);
      v14 = v13;
      if (v13 && [v13 count] == 2)
      {
        v15 = 0;
      }

      else
      {
        v30 = 0;
        v16 = [a1 _generateCertificateChainStringsForAccount:v8 options:v9 error:&v30];
        v15 = v30;

        if (v15)
        {
          v28 = v10;
          v17 = +[AMSLogConfig sharedAttestationConfig];
          if (!v17)
          {
            v17 = +[AMSLogConfig sharedConfig];
          }

          v18 = [v17 OSLogObject];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = objc_opt_class();
            *buf = 138543874;
            v32 = v19;
            v33 = 2114;
            v34 = v28;
            v35 = 2114;
            v36 = v15;
            v27 = v19;
            _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Certificate chain lookup and/or generation failed with error: %{public}@", buf, 0x20u);
          }

          v10 = v28;
        }

        if (!v16)
        {
          v14 = 0;
LABEL_29:

          if (a5 && v15)
          {
            v25 = v15;
            *a5 = v15;
          }

          goto LABEL_32;
        }

        v14 = v16;
      }

      if ([v14 count] == 2)
      {
        if ([AMSCertificateManager isExpiredForCertificates:v14])
        {
          v29 = v10;
          v20 = +[AMSLogConfig sharedAttestationConfig];
          if (!v20)
          {
            v20 = +[AMSLogConfig sharedConfig];
          }

          v21 = [v20 OSLogObject];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = objc_opt_class();
            *buf = 138543618;
            v32 = v22;
            v33 = 2114;
            v34 = v29;
            v23 = v22;
            _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attesting with expired certificates", buf, 0x16u);
          }

          v10 = v29;
        }

        [v11 addObjectsFromArray:v14];
      }

      goto LABEL_29;
    }

    v24 = +[AMSCertificateManager legacyAttestationWithAccount:style:forPurpose:](AMSCertificateManager, "legacyAttestationWithAccount:style:forPurpose:", v8, [v9 style], objc_msgSend(v9, "purpose"));
    [v11 addObject:v24];
  }

  v15 = 0;
LABEL_32:

LABEL_33:

  return v11;
}

+ (id)attestationWithOptions:(id)a3 error:(id *)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = AMSSetLogKeyIfNeeded();
  v9 = +[AMSLogConfig sharedAttestationConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v52 = v11;
    *buf = 138544130;
    v64 = v11;
    v65 = 2114;
    v66 = v8;
    v67 = 2050;
    v68 = [v6 regenerateKeys];
    v69 = 2050;
    v70 = [v6 style];
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Start retrieve certification from keychain, options.regenerateKeys: %{public}lu, options.style: %{public}lu", buf, 0x2Au);
  }

  if ([v6 regenerateKeys])
  {
    v12 = [v6 style];
    if (v12 <= 5)
    {
      if (((1 << v12) & 0x39) != 0)
      {
        v62 = 0;
        v13 = &v62;
        [AMSKeychain deleteCertificateChainWithOptions:v6 error:&v62];
      }

      else
      {
        v61 = 0;
        v13 = &v61;
        [AMSKeychain deleteKeyPairWithOptions:v6 error:&v61];
      }

      v14 = *v13;
      if (v14)
      {
        v15 = v14;
        v16 = +[AMSLogConfig sharedAttestationConfig];
        if (!v16)
        {
          v16 = +[AMSLogConfig sharedConfig];
        }

        v17 = [v16 OSLogObject];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = objc_opt_class();
          *buf = 138543874;
          v64 = v18;
          v65 = 2114;
          v66 = v8;
          v67 = 2114;
          v68 = v15;
          _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attestation did not delete keys: %{public}@", buf, 0x20u);
        }
      }
    }
  }

  v19 = [v6 style];
  if (v19 > 5)
  {
    v22 = 0;
    goto LABEL_67;
  }

  if (((1 << v19) & 0x31) != 0)
  {
    v60 = 0;
    v20 = [AMSKeychain certificateChainStringsForOptions:v6 error:&v60];
    v21 = v60;
    if (v20 && [v20 count] == 2 && !v21)
    {
      v22 = 0;
      v23 = v20;
    }

    else
    {
      v27 = +[AMSLogConfig sharedAttestationConfig];
      if (!v27)
      {
        v27 = +[AMSLogConfig sharedConfig];
      }

      v28 = [v27 OSLogObject];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_opt_class();
        *buf = 138543874;
        v64 = v29;
        v65 = 2114;
        v66 = v8;
        v67 = 2114;
        v68 = v21;
        v30 = a4;
        v31 = v29;
        _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did not find certificates in keychain, generating new certifcates: %{public}@", buf, 0x20u);

        a4 = v30;
      }

      v59 = v21;
      v23 = [a1 _generateCertificateChainStringsForAccount:0 options:v6 error:&v59];
      v22 = v59;

      if (v22)
      {
        v32 = +[AMSLogConfig sharedAttestationConfig];
        if (!v32)
        {
          v32 = +[AMSLogConfig sharedConfig];
        }

        v33 = [v32 OSLogObject];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = objc_opt_class();
          *buf = 138543874;
          v64 = v34;
          v65 = 2114;
          v66 = v8;
          v67 = 2114;
          v68 = v22;
          v35 = a4;
          v36 = v34;
          _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Certificate chain lookup and/or generation failed with error: %{public}@", buf, 0x20u);

          a4 = v35;
        }
      }
    }

    if ([AMSCertificateManager isExpiredForCertificates:v23])
    {
      v37 = +[AMSLogConfig sharedAttestationConfig];
      if (!v37)
      {
        v37 = +[AMSLogConfig sharedConfig];
      }

      v38 = [v37 OSLogObject];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = objc_opt_class();
        *buf = 138543618;
        v64 = v39;
        v65 = 2114;
        v66 = v8;
        v40 = v39;
        _os_log_impl(&dword_192869000, v38, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attesting with expired certificates", buf, 0x16u);
      }
    }

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __47__AMSAttestation_attestationWithOptions_error___block_invoke;
    v57[3] = &unk_1E73B3A38;
    v58 = v7;
    [v23 enumerateObjectsUsingBlock:v57];
    v41 = v58;
  }

  else
  {
    if (((1 << v19) & 6) != 0)
    {
      v53 = 0;
      v23 = [AMSKeychain legacyAttestationForOptions:v6 error:&v53];
      v22 = v53;
      if (v22)
      {
        v24 = +[AMSLogConfig sharedAttestationConfig];
        if (!v24)
        {
          v24 = +[AMSLogConfig sharedConfig];
        }

        v25 = [v24 OSLogObject];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          *buf = 138543874;
          v64 = v26;
          v65 = 2114;
          v66 = v8;
          v67 = 2114;
          v68 = v22;
          _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Legacy attestation failed with error: %{public}@", buf, 0x20u);
        }
      }

      if (v23)
      {
        [v7 addObject:v23];
      }

      goto LABEL_62;
    }

    v56 = 0;
    v23 = [a1 _generateCertificateChainStringsForAccount:0 options:v6 error:&v56];
    v22 = v56;
    if (v22)
    {
      v42 = +[AMSLogConfig sharedAttestationConfig];
      if (!v42)
      {
        v42 = +[AMSLogConfig sharedConfig];
      }

      v43 = [v42 OSLogObject];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = objc_opt_class();
        *buf = 138543874;
        v64 = v44;
        v65 = 2114;
        v66 = v8;
        v67 = 2114;
        v68 = v22;
        _os_log_impl(&dword_192869000, v43, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Certificate chain attestation failed with error: %{public}@", buf, 0x20u);
      }
    }

    if ([AMSCertificateManager isExpiredForCertificates:v23])
    {
      v45 = +[AMSLogConfig sharedAttestationConfig];
      if (!v45)
      {
        v45 = +[AMSLogConfig sharedConfig];
      }

      v46 = [v45 OSLogObject];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = objc_opt_class();
        *buf = 138543618;
        v64 = v47;
        v65 = 2114;
        v66 = v8;
        v48 = v47;
        _os_log_impl(&dword_192869000, v46, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attesting with expired certificates", buf, 0x16u);
      }
    }

    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __47__AMSAttestation_attestationWithOptions_error___block_invoke_4;
    v54[3] = &unk_1E73B3A38;
    v55 = v7;
    [v23 enumerateObjectsUsingBlock:v54];
    v41 = v55;
  }

LABEL_62:
  if (v22)
  {
    if (a4)
    {
      v49 = v22;
      *a4 = v22;
    }

    [v7 removeAllObjects];
  }

LABEL_67:
  v50 = [v7 copy];

  return v50;
}

+ (id)attestationHTTPBodyDataWithStyle:(unint64_t)a3 regenerateKeys:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v43 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(AMSKeychainOptions);
  [(AMSKeychainOptions *)v9 setPurpose:0];
  [(AMSKeychainOptions *)v9 setRegenerateKeys:v6];
  [(AMSKeychainOptions *)v9 setStyle:a3];
  v10 = AMSSetLogKeyIfNeeded();
  v36 = 0;
  v32 = [AMSAttestation attestationWithOptions:v9 error:&v36];
  v11 = v36;
  if (v11)
  {
    v12 = +[AMSLogConfig sharedAttestationConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      *buf = 138543874;
      v38 = v14;
      v39 = 2114;
      v40 = v10;
      v41 = 2114;
      v42 = v11;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate primary attestation with error: %{public}@", buf, 0x20u);
    }
  }

  v15 = objc_alloc_init(AMSKeychainOptions);
  [(AMSKeychainOptions *)v15 setPurpose:1];
  [(AMSKeychainOptions *)v15 setRegenerateKeys:v6];
  [(AMSKeychainOptions *)v15 setStyle:a3];
  v35 = v11;
  v16 = [AMSAttestation attestationWithOptions:v15 error:&v35];
  v17 = v35;

  v18 = v10;
  v19 = a1;
  if (v17)
  {
    v20 = +[AMSLogConfig sharedAttestationConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      *buf = 138543874;
      v38 = v22;
      v39 = 2114;
      v40 = v18;
      v41 = 2114;
      v42 = v17;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Extended attestation failed with error: %{public}@", buf, 0x20u);
    }
  }

  v34 = v17;
  v23 = v32;
  v24 = [v19 _attestationPListWithStyle:a3 primaryAttestation:v32 extendedAttestation:v16 error:{&v34, v32}];
  v25 = v34;

  if (v24)
  {
    v26 = [MEMORY[0x1E696AE40] dataWithPropertyList:v24 format:100 options:0 error:0];
    if (!a5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v29 = +[AMSLogConfig sharedAttestationConfig];
  if (!v29)
  {
    v29 = +[AMSLogConfig sharedConfig];
  }

  v30 = [v29 OSLogObject];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = objc_opt_class();
    *buf = 138543618;
    v38 = v31;
    v39 = 2114;
    v40 = v18;
    _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create attestation plist", buf, 0x16u);
  }

  v26 = 0;
  v23 = v33;
  if (a5)
  {
LABEL_15:
    v27 = v25;
    *a5 = v25;
  }

LABEL_16:

  return v26;
}

+ (id)_attestationPListWithStyle:(unint64_t)a3 primaryAttestation:(id)a4 extendedAttestation:(id)a5 error:(id *)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = AMSSetLogKeyIfNeeded();
  if (a3 > 5)
  {
LABEL_16:
    v15 = 0;
    goto LABEL_41;
  }

  if (((1 << a3) & 0x39) != 0)
  {
    if ([v9 count] == 2)
    {
      if ((a3 & 0xFFFFFFFFFFFFFFFBLL) != 0 || [v10 count] == 2)
      {
        if (v9)
        {
          [v11 setObject:v9 forKeyedSubscript:@"primaryX509Chain"];
        }

        if (v10)
        {
          [v11 setObject:v10 forKeyedSubscript:@"extendedX509Chain"];
        }

        goto LABEL_16;
      }

      v16 = +[AMSLogConfig sharedAttestationConfig];
      if (!v16)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      v27 = objc_opt_class();
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
      *buf = 138543874;
      v34 = v27;
      v35 = 2114;
      v36 = v12;
      v37 = 2114;
      v38 = v25;
      v26 = "%{public}@: [%{public}@] Cannot create cert-based extended attestation with %{public}@ certs in chain.";
      goto LABEL_36;
    }

    v16 = +[AMSLogConfig sharedAttestationConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
      *buf = 138543874;
      v34 = v18;
      v35 = 2114;
      v36 = v12;
      v37 = 2114;
      v38 = v19;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Cannot create cert-based primary attestation with %{public}@ certs in chain.", buf, 0x20u);
    }

    v20 = @"Incorrect number of attestation: %@";
  }

  else
  {
    if ([v9 count] == 1)
    {
      if ([v10 count] == 1)
      {
        if ([v9 count])
        {
          v13 = [v9 objectAtIndexedSubscript:0];
          [v11 setObject:v13 forKeyedSubscript:@"touchIdAttestation"];
        }

        if ([v10 count])
        {
          v14 = [v10 objectAtIndexedSubscript:0];
          [v11 setObject:v14 forKeyedSubscript:@"extendedAttestation"];
        }

        goto LABEL_16;
      }

      v16 = +[AMSLogConfig sharedAttestationConfig];
      if (!v16)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      v24 = objc_opt_class();
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
      *buf = 138543874;
      v34 = v24;
      v35 = 2114;
      v36 = v12;
      v37 = 2114;
      v38 = v25;
      v26 = "%{public}@: [%{public}@] Cannot create legacy-based extended attestation with %{public}@ elements in reponse.";
LABEL_36:
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, v26, buf, 0x20u);

LABEL_37:
      v20 = @"Incorrect number of attestations: %@";
      v23 = v10;
      goto LABEL_38;
    }

    v16 = +[AMSLogConfig sharedAttestationConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
      *buf = 138543874;
      v34 = v21;
      v35 = 2114;
      v36 = v12;
      v37 = 2114;
      v38 = v22;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Cannot create legacy-based primary attestation with %{public}@ elements in reponse.", buf, 0x20u);
    }

    v20 = @"Incorrect number of attestations: %@";
  }

  v23 = v9;
LABEL_38:

  v28 = MEMORY[0x1E696AEC0];
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v23, "count")}];
  v30 = [v28 stringWithFormat:v20, v29];
  v15 = AMSError(2, @"Attestation Error", v30, 0);

  if (a6 && v15)
  {
    v31 = v15;
    *a6 = v15;
  }

LABEL_41:

  return v11;
}

+ (id)_generateCertificateChainStringsForAccount:(id)a3 options:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DF70];
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(v7);
  v11 = [[AMSClientCertificateTask alloc] initWithOptions:v8];

  v12 = [(AMSClientCertificateTask *)v11 performClientCertChainRequestWithAccount:v9];

  v28 = 0;
  v13 = [v12 resultWithError:&v28];
  v14 = v28;
  if (v14)
  {
    v15 = +[AMSLogConfig sharedAttestationConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v30 = v17;
      v31 = 2114;
      v32 = v18;
      v33 = 2114;
      v34 = v14;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Create cert chain failed with error: %{public}@", buf, 0x20u);
    }
  }

  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __75__AMSAttestation__generateCertificateChainStringsForAccount_options_error___block_invoke;
  v26 = &unk_1E73B3A60;
  v19 = v10;
  v27 = v19;
  [v13 enumerateObjectsUsingBlock:&v23];
  if (a5)
  {
    v20 = v14;
    *a5 = v14;
  }

  v21 = [v19 copy];

  return v21;
}

void __75__AMSAttestation__generateCertificateChainStringsForAccount_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 base64EncodedStringWithOptions:0];
  [*(a1 + 32) addObject:v3];
}

@end