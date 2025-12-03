@interface CNUIAcceptedContactConfiguration
+ (id)configurationForEmailAddress:(id)address;
+ (id)configurationForPhoneNumber:(id)number;
+ (id)log;
- (CNUIAcceptedContactConfiguration)initWithHandle:(id)handle handleType:(int64_t)type;
- (id)contactForNewContact;
- (id)sourceForRecentEvent;
- (void)recordAcceptedEventWithDisplayName:(id)name completionHandler:(id)handler;
- (void)recordAcceptedEventWithDisplayName:(id)name handle:(id)handle metadata:(id)metadata sendingAddress:(id)address source:(id)source completionHandler:(id)handler;
@end

@implementation CNUIAcceptedContactConfiguration

- (void)recordAcceptedEventWithDisplayName:(id)name handle:(id)handle metadata:(id)metadata sendingAddress:(id)address source:(id)source completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handleCopy = handle;
  metadataCopy = metadata;
  addressCopy = address;
  sourceCopy = source;
  handlerCopy = handler;
  v20 = +[CNUIAcceptedContactConfiguration log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    handle = [(CNUIAcceptedContactConfiguration *)self handle];
    *buf = 138412546;
    v34 = handle;
    v35 = 2112;
    v36 = nameCopy;
    _os_log_impl(&dword_199A75000, v20, OS_LOG_TYPE_DEFAULT, "Generating event with handle: %@, displayName: %@", buf, 0x16u);
  }

  if (!sourceCopy)
  {
    v24 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v32 = @"Invalid source";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v26 = [v24 errorWithDomain:@"CNUIAcceptedContactConfigurationErrorDomain" code:1 userInfo:v25];
    goto LABEL_14;
  }

  handleType = [(CNUIAcceptedContactConfiguration *)self handleType];
  if (handleType == 1)
  {
    v23 = [getCRRecentContactsLibraryClass() recentEventForEmailAddress:handleCopy displayName:nameCopy metadata:metadataCopy];
  }

  else
  {
    if (handleType)
    {
      v25 = 0;
      goto LABEL_11;
    }

    v23 = [getCRRecentContactsLibraryClass() recentEventForPhoneNumber:handleCopy displayName:nameCopy metadata:metadataCopy];
  }

  v25 = v23;
LABEL_11:
  v27 = +[CNUIAcceptedContactConfiguration log];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v25;
    _os_log_impl(&dword_199A75000, v27, OS_LOG_TYPE_DEFAULT, "Generated event: %@", buf, 0xCu);
  }

  defaultInstance = [getCRRecentContactsLibraryClass() defaultInstance];
  v30 = v25;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  [defaultInstance recordAcceptedContactEvents:v29 sendingAddress:addressCopy source:sourceCopy completion:handlerCopy];

  v26 = 0;
LABEL_14:

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v26);
  }
}

- (void)recordAcceptedEventWithDisplayName:(id)name completionHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  handle = [(CNUIAcceptedContactConfiguration *)self handle];
  metadata = [(CNUIAcceptedContactConfiguration *)self metadata];
  sendingAddress = [(CNUIAcceptedContactConfiguration *)self sendingAddress];
  sourceForRecentEvent = [(CNUIAcceptedContactConfiguration *)self sourceForRecentEvent];
  [(CNUIAcceptedContactConfiguration *)self recordAcceptedEventWithDisplayName:nameCopy handle:handle metadata:metadata sendingAddress:sendingAddress source:sourceForRecentEvent completionHandler:handlerCopy];
}

- (id)sourceForRecentEvent
{
  source = [(CNUIAcceptedContactConfiguration *)self source];
  v3 = source;
  if (source)
  {
    bundleIdentifier = source;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  return bundleIdentifier;
}

- (id)contactForNewContact
{
  v15[1] = *MEMORY[0x1E69E9840];
  contact = [(CNUIAcceptedContactConfiguration *)self contact];

  if (contact)
  {
    contact2 = [(CNUIAcceptedContactConfiguration *)self contact];
    goto LABEL_8;
  }

  contact2 = objc_opt_new();
  handleType = [(CNUIAcceptedContactConfiguration *)self handleType];
  if (handleType == 1)
  {
    v11 = MEMORY[0x1E695CEE0];
    handle = [(CNUIAcceptedContactConfiguration *)self handle];
    v8 = [v11 labeledValueWithLabel:0 value:handle];

    v14 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [contact2 setEmailAddresses:v9];
  }

  else
  {
    if (handleType)
    {
      goto LABEL_8;
    }

    v6 = MEMORY[0x1E695CF50];
    handle2 = [(CNUIAcceptedContactConfiguration *)self handle];
    v8 = [v6 phoneNumberWithStringValue:handle2];

    v9 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:v8];
    v15[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [contact2 setPhoneNumbers:v10];
  }

LABEL_8:

  return contact2;
}

- (CNUIAcceptedContactConfiguration)initWithHandle:(id)handle handleType:(int64_t)type
{
  handleCopy = handle;
  v11.receiver = self;
  v11.super_class = CNUIAcceptedContactConfiguration;
  v8 = [(CNUIAcceptedContactConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_handle, handle);
    v9->_handleType = type;
  }

  return v9;
}

+ (id)configurationForEmailAddress:(id)address
{
  addressCopy = address;
  v5 = [[self alloc] initWithHandle:addressCopy handleType:1];

  return v5;
}

+ (id)configurationForPhoneNumber:(id)number
{
  numberCopy = number;
  v5 = [[self alloc] initWithHandle:numberCopy handleType:0];

  return v5;
}

+ (id)log
{
  if (log_cn_once_token_2_38817 != -1)
  {
    dispatch_once(&log_cn_once_token_2_38817, &__block_literal_global_38818);
  }

  v3 = log_cn_once_object_2_38819;

  return v3;
}

uint64_t __39__CNUIAcceptedContactConfiguration_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.ui", "CNUIAcceptedContactConfiguration");
  v1 = log_cn_once_object_2_38819;
  log_cn_once_object_2_38819 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end