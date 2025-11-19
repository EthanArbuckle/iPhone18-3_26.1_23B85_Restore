@interface SLGoogleLegacyTokenMigrationTokenResponse
- (SLGoogleLegacyTokenMigrationTokenResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5;
@end

@implementation SLGoogleLegacyTokenMigrationTokenResponse

- (SLGoogleLegacyTokenMigrationTokenResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = SLGoogleLegacyTokenMigrationTokenResponse;
  v7 = [(SLGoogleLegacyTokenMigrationResponse *)&v24 initWithData:a3 urlResponse:a4 error:?];
  v8 = v7;
  if (!a5 && v7)
  {
    v9 = [(SLGoogleLegacyTokenMigrationResponse *)v7 responseBody];
    v10 = [v9 componentsSeparatedByString:@"\n"];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if ([v16 hasPrefix:{@"Auth=", v20}])
          {
            v17 = [v16 substringFromIndex:5];
            token = v8->_token;
            v8->_token = v17;

            _SLLog(v5, 5, @"Successfully got a token");
            goto LABEL_13;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v8;
}

@end