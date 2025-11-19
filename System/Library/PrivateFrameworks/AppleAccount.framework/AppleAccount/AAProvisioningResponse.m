@interface AAProvisioningResponse
- (AAProvisioningResponse)initWithDictionary:(id)a3;
- (AAProvisioningResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
- (BOOL)hasOptionalTerms;
- (BOOL)isCloudDocsMigrated;
- (BOOL)isFamilyEligible;
- (BOOL)isManagedAppleID;
- (BOOL)isNotesMigrated;
- (BOOL)isRemindersAutoMigratableToCK;
- (BOOL)isRemindersMigrated;
- (BOOL)isSandboxAccount;
- (NSDictionary)dataclassProperties;
- (unint64_t)ageCategory;
@end

@implementation AAProvisioningResponse

- (AAProvisioningResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v13.receiver = self;
  v13.super_class = AAProvisioningResponse;
  v4 = [(AAAuthenticationResponse *)&v13 initWithHTTPResponse:a3 data:a4];
  v5 = v4;
  if (v4)
  {
    httpResponse = v4->super.super._httpResponse;
    if (httpResponse)
    {
      if ([(NSHTTPURLResponse *)httpResponse statusCode]== 200)
      {
        v7 = [(AAResponse *)v5 responseDictionary];

        if (v7)
        {
          v8 = [(AAResponse *)v5 responseDictionary];
          v9 = [v8 objectForKey:@"com.apple.mobileme"];
          v10 = [v9 copy];
          icloud = v5->_icloud;
          v5->_icloud = v10;
        }

        [(AAResponse *)v5 setError:0];
      }
    }
  }

  return v5;
}

- (AAProvisioningResponse)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = AAProvisioningResponse;
  v5 = [(AAProvisioningResponse *)&v22 init];
  if (v5)
  {
    v6 = [v4 copy];
    responseDictionary = v5->super.super._responseDictionary;
    v5->super.super._responseDictionary = v6;

    v8 = [(AAResponse *)v5 responseDictionary];

    if (v8)
    {
      v9 = [(AAResponse *)v5 responseDictionary];
      v10 = [v9 objectForKey:@"com.apple.mobileme"];
      v11 = [v10 copy];
      icloud = v5->_icloud;
      v5->_icloud = v11;

      v13 = [(AAResponse *)v5 responseDictionary];
      v14 = [v13 objectForKey:@"appleAccountInfo"];
      v15 = [v14 copy];
      appleAccount = v5->super._appleAccount;
      v5->super._appleAccount = v15;

      v17 = [(AAResponse *)v5 responseDictionary];
      v18 = [v17 objectForKey:@"tokens"];
      v19 = [v18 copy];
      tokens = v5->super._tokens;
      v5->super._tokens = v19;
    }
  }

  return v5;
}

- (NSDictionary)dataclassProperties
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v4 = [(AAProvisioningResponse *)self provisionedDataclasses];
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSDictionary *)self->_icloud allKeys];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 hasPrefix:@"com.apple.Dataclass"])
        {
          v12 = [(NSDictionary *)self->_icloud objectForKey:v11];
          if (v12)
          {
            [v5 setObject:v12 forKey:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isManagedAppleID
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"isManagedAppleID"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isNotesMigrated
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"notesMigrated"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isRemindersMigrated
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"tantorMigrated"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isRemindersAutoMigratableToCK
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"autoMigrateToTantor"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isSandboxAccount
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"isSandboxAcct"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isCloudDocsMigrated
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"brMigrated"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasOptionalTerms
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"hasOptionalTerms"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isFamilyEligible
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"familyEligible"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unint64_t)ageCategory
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"ageCategory"];
  v3 = [v2 integerValue];

  return v3;
}

@end