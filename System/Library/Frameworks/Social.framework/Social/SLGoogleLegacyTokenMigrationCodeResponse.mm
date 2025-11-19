@interface SLGoogleLegacyTokenMigrationCodeResponse
- (SLGoogleLegacyTokenMigrationCodeResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5;
@end

@implementation SLGoogleLegacyTokenMigrationCodeResponse

- (SLGoogleLegacyTokenMigrationCodeResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v32.receiver = self;
  v32.super_class = SLGoogleLegacyTokenMigrationCodeResponse;
  v10 = [(SLGoogleLegacyTokenMigrationResponse *)&v32 initWithData:a3 urlResponse:v9 error:a5];
  v11 = v10;
  if (!a5)
  {
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DEC8]);
        v13 = MEMORY[0x1E696AC58];
        v14 = [v9 allHeaderFields];
        v15 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F41EC300];
        v16 = [v13 cookiesWithResponseHeaderFields:v14 forURL:v15];

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v29;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v29 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v28 + 1) + 8 * i);
              v23 = [v22 name];
              v24 = [v23 isEqualToString:@"oauth_code"];

              if (v24)
              {
                _SLLog(v5, 5, @"Successfully got an auth code");
                v25 = [v22 value];
                code = v11->_code;
                v11->_code = v25;

                goto LABEL_14;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v28 objects:v33 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

LABEL_14:
      }
    }
  }

  return v11;
}

@end