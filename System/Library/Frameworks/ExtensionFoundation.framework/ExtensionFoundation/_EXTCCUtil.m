@interface _EXTCCUtil
+ (BOOL)photoServiceAuthorizationStatusWithExtensionUUID:(id)a3 error:(id *)a4;
@end

@implementation _EXTCCUtil

+ (BOOL)photoServiceAuthorizationStatusWithExtensionUUID:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E69635D0]) initWithUUID:v5 error:0];
  v7 = [v6 containingBundleRecord];
  if (v7 && (Default = CFAllocatorGetDefault(), (v9 = CFBundleCreate(Default, [v7 URL])) != 0))
  {
    v10 = v9;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = TCCAccessCopyInformationForBundle();
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v12)
    {
      v27 = v10;
      v28 = v6;
      v29 = a4;
      v30 = v5;
      v13 = *v32;
      v14 = MEMORY[0x1E69D54F8];
      v15 = MEMORY[0x1E69D55C8];
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          v18 = [v17 objectForKey:*v14];
          v19 = [v18 isEqualToString:*v15];

          if (v19)
          {
            v23 = [v17 objectForKey:*MEMORY[0x1E69D54E8]];
            LOBYTE(v12) = [v23 BOOLValue];

            goto LABEL_14;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

LABEL_14:
      a4 = v29;
      v5 = v30;
      v10 = v27;
      v6 = v28;
    }

    CFRelease(v10);
    v22 = 0;
  }

  else
  {
    v35 = *MEMORY[0x1E696A578];
    v20 = MEMORY[0x1E696AEC0];
    v21 = [v5 UUIDString];
    v12 = [v20 stringWithFormat:@"Unable to resolve plugin for UUID %@", v21];
    v36 = v12;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.extensionKit.errorDomain" code:5 userInfo:v11];
    LOBYTE(v12) = 0;
  }

  if (a4)
  {
    v24 = v22;
    *a4 = v22;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v12;
}

@end