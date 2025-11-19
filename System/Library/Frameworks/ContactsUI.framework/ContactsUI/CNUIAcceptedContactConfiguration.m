@interface CNUIAcceptedContactConfiguration
+ (id)configurationForEmailAddress:(id)a3;
+ (id)configurationForPhoneNumber:(id)a3;
+ (id)log;
- (CNUIAcceptedContactConfiguration)initWithHandle:(id)a3 handleType:(int64_t)a4;
- (id)contactForNewContact;
- (id)sourceForRecentEvent;
- (void)recordAcceptedEventWithDisplayName:(id)a3 completionHandler:(id)a4;
- (void)recordAcceptedEventWithDisplayName:(id)a3 handle:(id)a4 metadata:(id)a5 sendingAddress:(id)a6 source:(id)a7 completionHandler:(id)a8;
@end

@implementation CNUIAcceptedContactConfiguration

- (void)recordAcceptedEventWithDisplayName:(id)a3 handle:(id)a4 metadata:(id)a5 sendingAddress:(id)a6 source:(id)a7 completionHandler:(id)a8
{
  v37 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = +[CNUIAcceptedContactConfiguration log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(CNUIAcceptedContactConfiguration *)self handle];
    *buf = 138412546;
    v34 = v21;
    v35 = 2112;
    v36 = v14;
    _os_log_impl(&dword_199A75000, v20, OS_LOG_TYPE_DEFAULT, "Generating event with handle: %@, displayName: %@", buf, 0x16u);
  }

  if (!v18)
  {
    v24 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v32 = @"Invalid source";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v26 = [v24 errorWithDomain:@"CNUIAcceptedContactConfigurationErrorDomain" code:1 userInfo:v25];
    goto LABEL_14;
  }

  v22 = [(CNUIAcceptedContactConfiguration *)self handleType];
  if (v22 == 1)
  {
    v23 = [getCRRecentContactsLibraryClass() recentEventForEmailAddress:v15 displayName:v14 metadata:v16];
  }

  else
  {
    if (v22)
    {
      v25 = 0;
      goto LABEL_11;
    }

    v23 = [getCRRecentContactsLibraryClass() recentEventForPhoneNumber:v15 displayName:v14 metadata:v16];
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

  v28 = [getCRRecentContactsLibraryClass() defaultInstance];
  v30 = v25;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  [v28 recordAcceptedContactEvents:v29 sendingAddress:v17 source:v18 completion:v19];

  v26 = 0;
LABEL_14:

  if (v19)
  {
    v19[2](v19, v26);
  }
}

- (void)recordAcceptedEventWithDisplayName:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(CNUIAcceptedContactConfiguration *)self handle];
  v8 = [(CNUIAcceptedContactConfiguration *)self metadata];
  v9 = [(CNUIAcceptedContactConfiguration *)self sendingAddress];
  v10 = [(CNUIAcceptedContactConfiguration *)self sourceForRecentEvent];
  [(CNUIAcceptedContactConfiguration *)self recordAcceptedEventWithDisplayName:v7 handle:v11 metadata:v8 sendingAddress:v9 source:v10 completionHandler:v6];
}

- (id)sourceForRecentEvent
{
  v2 = [(CNUIAcceptedContactConfiguration *)self source];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v5 bundleIdentifier];
  }

  return v4;
}

- (id)contactForNewContact
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNUIAcceptedContactConfiguration *)self contact];

  if (v3)
  {
    v4 = [(CNUIAcceptedContactConfiguration *)self contact];
    goto LABEL_8;
  }

  v4 = objc_opt_new();
  v5 = [(CNUIAcceptedContactConfiguration *)self handleType];
  if (v5 == 1)
  {
    v11 = MEMORY[0x1E695CEE0];
    v12 = [(CNUIAcceptedContactConfiguration *)self handle];
    v8 = [v11 labeledValueWithLabel:0 value:v12];

    v14 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [v4 setEmailAddresses:v9];
  }

  else
  {
    if (v5)
    {
      goto LABEL_8;
    }

    v6 = MEMORY[0x1E695CF50];
    v7 = [(CNUIAcceptedContactConfiguration *)self handle];
    v8 = [v6 phoneNumberWithStringValue:v7];

    v9 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:v8];
    v15[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [v4 setPhoneNumbers:v10];
  }

LABEL_8:

  return v4;
}

- (CNUIAcceptedContactConfiguration)initWithHandle:(id)a3 handleType:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CNUIAcceptedContactConfiguration;
  v8 = [(CNUIAcceptedContactConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_handle, a3);
    v9->_handleType = a4;
  }

  return v9;
}

+ (id)configurationForEmailAddress:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithHandle:v4 handleType:1];

  return v5;
}

+ (id)configurationForPhoneNumber:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithHandle:v4 handleType:0];

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