@interface NSCoder(Sanitization)
- (id)fp_sanitizer;
- (uint64_t)fp_checkProviderIdentifier:()Sanitization;
@end

@implementation NSCoder(Sanitization)

- (id)fp_sanitizer
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo = [self userInfo];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [userInfo objectForKey:@"FPXPCSanitizerKey"];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)fp_checkProviderIdentifier:()Sanitization
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  fp_sanitizer = [self fp_sanitizer];
  if (!fp_sanitizer)
  {
    goto LABEL_3;
  }

  v6 = fp_sanitizer;
  fp_toProviderID = [v4 fp_toProviderID];
  fp_sanitizer2 = [self fp_sanitizer];
  providerIdentifier = [fp_sanitizer2 providerIdentifier];
  fp_toProviderID2 = [providerIdentifier fp_toProviderID];
  v11 = [fp_toProviderID isEqualToString:fp_toProviderID2];

  if ((v11 & 1) == 0)
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(NSCoder(Sanitization) *)v4 fp_checkProviderIdentifier:self, v13];
    }

    v14 = MEMORY[0x1E696AEC0];
    fp_sanitizer3 = [self fp_sanitizer];
    providerIdentifier2 = [fp_sanitizer3 providerIdentifier];
    v17 = [v14 stringWithFormat:@"Got invalid provider identifier %@ from coder for extension %@", v4, providerIdentifier2];

    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A250];
    v24 = *MEMORY[0x1E696A278];
    v25[0] = v17;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v21 = [v18 errorWithDomain:v19 code:4101 userInfo:v20];
    [self failWithError:v21];

    v12 = 0;
  }

  else
  {
LABEL_3:
    v12 = 1;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)fp_checkProviderIdentifier:()Sanitization .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a2 fp_sanitizer];
  v6 = [v5 providerIdentifier];
  v8 = 138412546;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Got invalid provider identifier %@ from coder for extension %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end