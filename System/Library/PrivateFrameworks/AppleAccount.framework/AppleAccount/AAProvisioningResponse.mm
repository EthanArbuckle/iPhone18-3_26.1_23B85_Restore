@interface AAProvisioningResponse
- (AAProvisioningResponse)initWithDictionary:(id)dictionary;
- (AAProvisioningResponse)initWithHTTPResponse:(id)response data:(id)data;
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

- (AAProvisioningResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v13.receiver = self;
  v13.super_class = AAProvisioningResponse;
  v4 = [(AAAuthenticationResponse *)&v13 initWithHTTPResponse:response data:data];
  v5 = v4;
  if (v4)
  {
    httpResponse = v4->super.super._httpResponse;
    if (httpResponse)
    {
      if ([(NSHTTPURLResponse *)httpResponse statusCode]== 200)
      {
        responseDictionary = [(AAResponse *)v5 responseDictionary];

        if (responseDictionary)
        {
          responseDictionary2 = [(AAResponse *)v5 responseDictionary];
          v9 = [responseDictionary2 objectForKey:@"com.apple.mobileme"];
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

- (AAProvisioningResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = AAProvisioningResponse;
  v5 = [(AAProvisioningResponse *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    responseDictionary = v5->super.super._responseDictionary;
    v5->super.super._responseDictionary = v6;

    responseDictionary = [(AAResponse *)v5 responseDictionary];

    if (responseDictionary)
    {
      responseDictionary2 = [(AAResponse *)v5 responseDictionary];
      v10 = [responseDictionary2 objectForKey:@"com.apple.mobileme"];
      v11 = [v10 copy];
      icloud = v5->_icloud;
      v5->_icloud = v11;

      responseDictionary3 = [(AAResponse *)v5 responseDictionary];
      v14 = [responseDictionary3 objectForKey:@"appleAccountInfo"];
      v15 = [v14 copy];
      appleAccount = v5->super._appleAccount;
      v5->super._appleAccount = v15;

      responseDictionary4 = [(AAResponse *)v5 responseDictionary];
      v18 = [responseDictionary4 objectForKey:@"tokens"];
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
  provisionedDataclasses = [(AAProvisioningResponse *)self provisionedDataclasses];
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(provisionedDataclasses, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSDictionary *)self->_icloud allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allKeys);
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

      v8 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isManagedAppleID
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"isManagedAppleID"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isNotesMigrated
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"notesMigrated"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isRemindersMigrated
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"tantorMigrated"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isRemindersAutoMigratableToCK
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"autoMigrateToTantor"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isSandboxAccount
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"isSandboxAcct"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isCloudDocsMigrated
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"brMigrated"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasOptionalTerms
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"hasOptionalTerms"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isFamilyEligible
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"familyEligible"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unint64_t)ageCategory
{
  v2 = [(NSDictionary *)self->super._appleAccount objectForKey:@"ageCategory"];
  integerValue = [v2 integerValue];

  return integerValue;
}

@end