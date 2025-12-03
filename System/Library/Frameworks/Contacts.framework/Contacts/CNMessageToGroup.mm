@interface CNMessageToGroup
+ (id)descriptorForRequiredKeys;
+ (id)os_log;
- (CNMessageToGroup)init;
- (id)emailAddressForContact:(id)contact;
- (id)messageUrlForContacts:(id)contacts;
- (id)messagingAddressForContact:(id)contact;
- (id)santizeMessagingAddress:(id)address;
@end

@implementation CNMessageToGroup

+ (id)os_log
{
  if (os_log_cn_once_token_1_1 != -1)
  {
    +[CNMessageToGroup os_log];
  }

  v3 = os_log_cn_once_object_1_1;

  return v3;
}

uint64_t __26__CNMessageToGroup_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNMessageToGroup");
  v1 = os_log_cn_once_object_1_1;
  os_log_cn_once_object_1_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)descriptorForRequiredKeys
{
  v8[3] = *MEMORY[0x1E69E9840];
  v3 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v8[0] = v3;
  v8[1] = @"emailAddresses";
  v8[2] = @"phoneNumbers";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v5 = [self description];
  v6 = [CNContact descriptorWithKeyDescriptors:v4 description:v5];

  return v6;
}

- (CNMessageToGroup)init
{
  v7.receiver = self;
  v7.super_class = CNMessageToGroup;
  v2 = [(CNMessageToGroup *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(CNContactFormatter);
    contactFormatter = v2->_contactFormatter;
    v2->_contactFormatter = v3;

    [(CNContactFormatter *)v2->_contactFormatter setStyle:0];
    v5 = v2;
  }

  return v2;
}

- (id)messageUrlForContacts:(id)contacts
{
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __42__CNMessageToGroup_messageUrlForContacts___block_invoke;
  v16[3] = &unk_1E7412EB0;
  v16[4] = self;
  v3 = [contacts _cn_map:v16];
  v4 = [v3 _cn_filter:*MEMORY[0x1E6996550]];

  if ([v4 count])
  {
    v5 = [MEMORY[0x1E696AD60] stringWithString:@"sms://open?service=iMessage&recipients="];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __42__CNMessageToGroup_messageUrlForContacts___block_invoke_8;
    v14 = &unk_1E74139A8;
    v15 = v5;
    os_log = v5;
    [v4 enumerateObjectsUsingBlock:&v11];
    v7 = [os_log _cn_stringByAddingPercentEscapesToEntireURL:v11];
    v8 = [MEMORY[0x1E696AF20] componentsWithString:v7];
    v9 = [v8 URL];
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNMessageToGroup messageUrlForContacts:];
    }

    v9 = 0;
  }

  return v9;
}

id __42__CNMessageToGroup_messageUrlForContacts___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E6996588];
  v3 = [*(a1 + 32) messagingAddressForContact:a2];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

void __42__CNMessageToGroup_messageUrlForContacts___block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendString:v5];
}

- (id)emailAddressForContact:(id)contact
{
  emailAddresses = [contact emailAddresses];
  v4 = [emailAddresses _cn_firstObjectPassingTest:&__block_literal_global_16_0];

  value = [v4 value];

  return value;
}

uint64_t __43__CNMessageToGroup_emailAddressForContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E6996570];
  v3 = [a2 value];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

- (id)messagingAddressForContact:(id)contact
{
  contactCopy = contact;
  v5 = [(CNMessageToGroup *)self emailAddressForContact:contactCopy];
  phoneNumbers = [contactCopy phoneNumbers];
  firstObject = [phoneNumbers firstObject];
  value = [firstObject value];
  stringValue = [value stringValue];

  if (((*(*MEMORY[0x1E6996570] + 16))() & 1) != 0 || stringValue)
  {
    if (stringValue)
    {
      v12 = stringValue;
    }

    else
    {
      v12 = [(CNMessageToGroup *)self santizeMessagingAddress:v5];
    }

    v11 = v12;
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNMessageToGroup messagingAddressForContact:];
    }

    v11 = 0;
  }

  return v11;
}

- (id)santizeMessagingAddress:(id)address
{
  addressCopy = address;
  v4 = [getECEmailAddressClass[0]() emailAddressWithString:addressCopy];
  emailAddressValue = [v4 emailAddressValue];
  v6 = emailAddressValue;
  if (emailAddressValue)
  {
    displayName = [emailAddressValue displayName];
    emailAddressValue2 = [displayName emailAddressValue];

    if (emailAddressValue2 && ([emailAddressValue2 stringValue], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "simpleAddress"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v9, (v11 & 1) == 0))
    {
      simpleAddress = [v6 simpleAddress];
    }

    else
    {
      simpleAddress = [v6 stringValue];
    }

    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [v4 stringValue];
  }

  if (stringValue)
  {
    v14 = stringValue;
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNMessageToGroup santizeMessagingAddress:];
    }
  }

  return stringValue;
}

@end