@interface CNContactVCardSerialization
+ (NSArray)contactsWithData:(NSData *)data error:(NSError *)error;
+ (NSData)dataWithContacts:(NSArray *)contacts error:(NSError *)error;
+ (id)contactsWithData:(id)data options:(id)options error:(id *)error;
+ (id)contactsWithMECARDString:(id)string error:(id *)error;
+ (id)dataWithContacts:(id)contacts options:(id)options error:(id *)error;
+ (id)dataWithContacts:(id)contacts options:(id)options error:(id *)error environment:(id)environment;
+ (id)descriptorForRequiredKeys;
+ (id)descriptorForRequiredKeysWithOptions:(id)options;
+ (id)descriptorForRequiredKeysWithOptions:(id)options description:(id)description;
+ (id)summaryOfLocationVCard:(id)card error:(id *)error;
+ (id)summaryOfVCard:(id)card error:(id *)error;
+ (void)contactsWithData:(id)data completionHandler:(id)handler;
+ (void)contactsWithData:(id)data scheduler:(id)scheduler completionHandler:(id)handler;
+ (void)dataWithContacts:(id)contacts options:(id)options completionHandler:(id)handler;
+ (void)dataWithContacts:(id)contacts options:(id)options scheduler:(id)scheduler completionHandler:(id)handler;
+ (void)logWritingContactsToVCard:(id)card options:(id)options logger:(id)logger;
@end

@implementation CNContactVCardSerialization

+ (id)descriptorForRequiredKeys
{
  optionsFromPreferences = [MEMORY[0x1E69E4B40] optionsFromPreferences];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactVCardSerialization descriptorForRequiredKeys]"];
  v5 = [self descriptorForRequiredKeysWithOptions:optionsFromPreferences description:v4];

  return v5;
}

+ (id)summaryOfVCard:(id)card error:(id *)error
{
  cardCopy = card;
  v6 = [[CNContactVCardSummary alloc] initWithData:cardCopy error:error];

  return v6;
}

+ (id)summaryOfLocationVCard:(id)card error:(id *)error
{
  cardCopy = card;
  v6 = [[CNContactLocationVCardSummary alloc] initWithData:cardCopy error:error];

  return v6;
}

+ (id)descriptorForRequiredKeysWithOptions:(id)options
{
  v4 = MEMORY[0x1E696AEC0];
  optionsCopy = options;
  v6 = [v4 stringWithUTF8String:"+[CNContactVCardSerialization descriptorForRequiredKeysWithOptions:]"];
  v7 = [self descriptorForRequiredKeysWithOptions:optionsCopy description:v6];

  return v7;
}

+ (id)descriptorForRequiredKeysWithOptions:(id)options description:(id)description
{
  v10[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v6 = [CNContactVCardWritingAdapter descriptorForAllSupportedKeysWithOptions:options];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [CNContact descriptorWithKeyDescriptors:v7 description:descriptionCopy];

  return v8;
}

+ (NSData)dataWithContacts:(NSArray *)contacts error:(NSError *)error
{
  v6 = MEMORY[0x1E69E4B40];
  v7 = contacts;
  optionsFromPreferences = [v6 optionsFromPreferences];
  v9 = [self dataWithContacts:v7 options:optionsFromPreferences error:error];

  return v9;
}

+ (id)dataWithContacts:(id)contacts options:(id)options error:(id *)error
{
  optionsCopy = options;
  contactsCopy = contacts;
  v10 = +[CNContactsEnvironment currentEnvironment];
  v11 = [self dataWithContacts:contactsCopy options:optionsCopy error:error environment:v10];

  return v11;
}

+ (id)dataWithContacts:(id)contacts options:(id)options error:(id *)error environment:(id)environment
{
  optionsCopy = options;
  contactsCopy = contacts;
  loggerProvider = [environment loggerProvider];
  regulatoryLogger = [loggerProvider regulatoryLogger];
  [self logWritingContactsToVCard:contactsCopy options:optionsCopy logger:regulatoryLogger];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__CNContactVCardSerialization_dataWithContacts_options_error_environment___block_invoke;
  v18[3] = &unk_1E7417488;
  v19 = optionsCopy;
  v14 = optionsCopy;
  v15 = [contactsCopy _cn_map:v18];

  v16 = [MEMORY[0x1E69E4B38] dataWithPeople:v15 options:v14 error:error];

  return v16;
}

+ (void)logWritingContactsToVCard:(id)card options:(id)options logger:(id)logger
{
  cardCopy = card;
  loggerCopy = logger;
  if (([options shouldSuppressRegulatoryLogging] & 1) == 0 && objc_msgSend(cardCopy, "_cn_any:", &__block_literal_global_132))
  {
    [loggerCopy readAndTransmittingContactsData];
  }
}

+ (NSArray)contactsWithData:(NSData *)data error:(NSError *)error
{
  v6 = MEMORY[0x1E69E4B30];
  v7 = data;
  v8 = objc_alloc_init(v6);
  v9 = [self contactsWithData:v7 options:v8 error:error];

  return v9;
}

+ (id)contactsWithData:(id)data options:(id)options error:(id *)error
{
  dataCopy = data;
  optionsCopy = options;
  if (dataCopy)
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
    if (optionsCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (optionsCopy)
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
  v11 = [MEMORY[0x1E69E4B20] parseData:dataCopy options:optionsCopy resultFactory:v10];

  return v11;
}

+ (void)contactsWithData:(id)data completionHandler:(id)handler
{
  v6 = MEMORY[0x1E6996818];
  handlerCopy = handler;
  dataCopy = data;
  globalAsyncScheduler = [v6 globalAsyncScheduler];
  [self contactsWithData:dataCopy scheduler:globalAsyncScheduler completionHandler:handlerCopy];
}

+ (void)contactsWithData:(id)data scheduler:(id)scheduler completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__CNContactVCardSerialization_contactsWithData_scheduler_completionHandler___block_invoke;
    v10[3] = &unk_1E74174B0;
    selfCopy = self;
    v11 = dataCopy;
    v12 = handlerCopy;
    [scheduler performBlock:v10];
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

+ (void)dataWithContacts:(id)contacts options:(id)options completionHandler:(id)handler
{
  v8 = MEMORY[0x1E6996818];
  handlerCopy = handler;
  optionsCopy = options;
  contactsCopy = contacts;
  globalAsyncScheduler = [v8 globalAsyncScheduler];
  [self dataWithContacts:contactsCopy options:optionsCopy scheduler:globalAsyncScheduler completionHandler:handlerCopy];
}

+ (void)dataWithContacts:(id)contacts options:(id)options scheduler:(id)scheduler completionHandler:(id)handler
{
  contactsCopy = contacts;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __84__CNContactVCardSerialization_dataWithContacts_options_scheduler_completionHandler___block_invoke;
    v11[3] = &unk_1E74174B0;
    selfCopy = self;
    v12 = contactsCopy;
    v13 = handlerCopy;
    [scheduler performBlock:v11];
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

+ (id)contactsWithMECARDString:(id)string error:(id *)error
{
  stringCopy = string;
  v6 = objc_alloc_init(CNContactVCardParsedResultBuilderFactory);
  v7 = [MEMORY[0x1E69E4B18] parseString:stringCopy resultFactory:v6 error:error];

  return v7;
}

@end