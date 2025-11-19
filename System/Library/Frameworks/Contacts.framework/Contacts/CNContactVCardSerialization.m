@interface CNContactVCardSerialization
+ (NSArray)contactsWithData:(NSData *)data error:(NSError *)error;
+ (NSData)dataWithContacts:(NSArray *)contacts error:(NSError *)error;
+ (id)contactsWithData:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)contactsWithMECARDString:(id)a3 error:(id *)a4;
+ (id)dataWithContacts:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)dataWithContacts:(id)a3 options:(id)a4 error:(id *)a5 environment:(id)a6;
+ (id)descriptorForRequiredKeys;
+ (id)descriptorForRequiredKeysWithOptions:(id)a3;
+ (id)descriptorForRequiredKeysWithOptions:(id)a3 description:(id)a4;
+ (id)summaryOfLocationVCard:(id)a3 error:(id *)a4;
+ (id)summaryOfVCard:(id)a3 error:(id *)a4;
+ (void)contactsWithData:(id)a3 completionHandler:(id)a4;
+ (void)contactsWithData:(id)a3 scheduler:(id)a4 completionHandler:(id)a5;
+ (void)dataWithContacts:(id)a3 options:(id)a4 completionHandler:(id)a5;
+ (void)dataWithContacts:(id)a3 options:(id)a4 scheduler:(id)a5 completionHandler:(id)a6;
+ (void)logWritingContactsToVCard:(id)a3 options:(id)a4 logger:(id)a5;
@end

@implementation CNContactVCardSerialization

+ (id)descriptorForRequiredKeys
{
  v3 = [MEMORY[0x1E69E4B40] optionsFromPreferences];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactVCardSerialization descriptorForRequiredKeys]"];
  v5 = [a1 descriptorForRequiredKeysWithOptions:v3 description:v4];

  return v5;
}

+ (id)summaryOfVCard:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[CNContactVCardSummary alloc] initWithData:v5 error:a4];

  return v6;
}

+ (id)summaryOfLocationVCard:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[CNContactLocationVCardSummary alloc] initWithData:v5 error:a4];

  return v6;
}

+ (id)descriptorForRequiredKeysWithOptions:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 stringWithUTF8String:"+[CNContactVCardSerialization descriptorForRequiredKeysWithOptions:]"];
  v7 = [a1 descriptorForRequiredKeysWithOptions:v5 description:v6];

  return v7;
}

+ (id)descriptorForRequiredKeysWithOptions:(id)a3 description:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [CNContactVCardWritingAdapter descriptorForAllSupportedKeysWithOptions:a3];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [CNContact descriptorWithKeyDescriptors:v7 description:v5];

  return v8;
}

+ (NSData)dataWithContacts:(NSArray *)contacts error:(NSError *)error
{
  v6 = MEMORY[0x1E69E4B40];
  v7 = contacts;
  v8 = [v6 optionsFromPreferences];
  v9 = [a1 dataWithContacts:v7 options:v8 error:error];

  return v9;
}

+ (id)dataWithContacts:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[CNContactsEnvironment currentEnvironment];
  v11 = [a1 dataWithContacts:v9 options:v8 error:a5 environment:v10];

  return v11;
}

+ (id)dataWithContacts:(id)a3 options:(id)a4 error:(id *)a5 environment:(id)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [a6 loggerProvider];
  v13 = [v12 regulatoryLogger];
  [a1 logWritingContactsToVCard:v11 options:v10 logger:v13];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__CNContactVCardSerialization_dataWithContacts_options_error_environment___block_invoke;
  v18[3] = &unk_1E7417488;
  v19 = v10;
  v14 = v10;
  v15 = [v11 _cn_map:v18];

  v16 = [MEMORY[0x1E69E4B38] dataWithPeople:v15 options:v14 error:a5];

  return v16;
}

+ (void)logWritingContactsToVCard:(id)a3 options:(id)a4 logger:(id)a5
{
  v8 = a3;
  v7 = a5;
  if (([a4 shouldSuppressRegulatoryLogging] & 1) == 0 && objc_msgSend(v8, "_cn_any:", &__block_literal_global_132))
  {
    [v7 readAndTransmittingContactsData];
  }
}

+ (NSArray)contactsWithData:(NSData *)data error:(NSError *)error
{
  v6 = MEMORY[0x1E69E4B30];
  v7 = data;
  v8 = objc_alloc_init(v6);
  v9 = [a1 contactsWithData:v7 options:v8 error:error];

  return v9;
}

+ (id)contactsWithData:(id)a3 options:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_10 != -1)
  {
    +[CNContactVCardSerialization contactsWithData:options:error:];
  }

  v8 = CNGuardOSLog_cn_once_object_0_10;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_10, OS_LOG_TYPE_FAULT))
  {
    [CNContactVCardSerialization contactsWithData:v8 options:? error:?];
    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (v7)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_10 != -1)
  {
    +[CNContactVCardSerialization contactsWithData:options:error:];
  }

  v9 = CNGuardOSLog_cn_once_object_0_10;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_10, OS_LOG_TYPE_FAULT))
  {
    [CNContactVCardSerialization contactsWithData:v9 options:? error:?];
  }

LABEL_10:
  v10 = objc_alloc_init(CNContactVCardParsedResultBuilderFactory);
  v11 = [MEMORY[0x1E69E4B20] parseData:v6 options:v7 resultFactory:v10];

  return v11;
}

+ (void)contactsWithData:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x1E6996818];
  v7 = a4;
  v8 = a3;
  v9 = [v6 globalAsyncScheduler];
  [a1 contactsWithData:v8 scheduler:v9 completionHandler:v7];
}

+ (void)contactsWithData:(id)a3 scheduler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__CNContactVCardSerialization_contactsWithData_scheduler_completionHandler___block_invoke;
    v10[3] = &unk_1E74174B0;
    v13 = a1;
    v11 = v8;
    v12 = v9;
    [a4 performBlock:v10];
  }
}

void __76__CNContactVCardSerialization_contactsWithData_scheduler_completionHandler___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  v6 = 0;
  v4 = [v2 contactsWithData:v3 error:&v6];
  v5 = v6;
  (*(a1[5] + 16))();
}

+ (void)dataWithContacts:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = MEMORY[0x1E6996818];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 globalAsyncScheduler];
  [a1 dataWithContacts:v11 options:v10 scheduler:v12 completionHandler:v9];
}

+ (void)dataWithContacts:(id)a3 options:(id)a4 scheduler:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __84__CNContactVCardSerialization_dataWithContacts_options_scheduler_completionHandler___block_invoke;
    v11[3] = &unk_1E74174B0;
    v14 = a1;
    v12 = v9;
    v13 = v10;
    [a5 performBlock:v11];
  }
}

void __84__CNContactVCardSerialization_dataWithContacts_options_scheduler_completionHandler___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  v6 = 0;
  v4 = [v2 dataWithContacts:v3 error:&v6];
  v5 = v6;
  (*(a1[5] + 16))();
}

+ (id)contactsWithMECARDString:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(CNContactVCardParsedResultBuilderFactory);
  v7 = [MEMORY[0x1E69E4B18] parseString:v5 resultFactory:v6 error:a4];

  return v7;
}

@end