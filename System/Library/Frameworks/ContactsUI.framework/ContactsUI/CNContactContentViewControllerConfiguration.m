@interface CNContactContentViewControllerConfiguration
+ (id)log;
- (CNContactStore)contactStore;
- (id)initForOutOfProcess:(BOOL)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation CNContactContentViewControllerConfiguration

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_fault_impl(&dword_199A75000, v5, OS_LOG_TYPE_FAULT, "Unsupported CNContactContentViewControllerConfiguration key: %{public}@. Please update the configuration, or update CNContactViewOptionExcludedViewConfigurationKeys", &v6, 0xCu);
  }
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE28]);
    if ([MEMORY[0x1E695CD58] suggestionsEnabled])
    {
      [v4 setIncludeSuggestedContacts:1];
    }

    v5 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v4];
    v6 = self->_contactStore;
    self->_contactStore = v5;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (id)initForOutOfProcess:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = CNContactContentViewControllerConfiguration;
  v4 = [(CNContactContentViewControllerConfiguration *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_isOutOfProcess = a3;
    v6 = +[CNContactView allCardProperties];
    displayedProperties = v5->_displayedProperties;
    v5->_displayedProperties = v6;

    v5->_allowsEditing = 1;
    v5->_allowsActions = 1;
    *&v5->_allowsCardActions = 16843009;
    *&v5->_allowsSendMessage = 16777217;
    v5->_allowsSettingLinkedContactsAsPreferred = 1;
    *&v5->_allowsActionsModel = 65793;
    *&v5->_showsInlineActions = 257;
    v5->_showsGroupMembership = 1;
    *&v5->_hideCardActions = 0;
    v5->_showContactBlockingFirst = 0;
    v8 = [MEMORY[0x1E695CD80] sharedFullNameFormatter];
    contactFormatter = v5->_contactFormatter;
    v5->_contactFormatter = v8;
  }

  return v5;
}

+ (id)log
{
  if (log_cn_once_token_0_54152 != -1)
  {
    dispatch_once(&log_cn_once_token_0_54152, &__block_literal_global_54153);
  }

  v3 = log_cn_once_object_0_54154;

  return v3;
}

uint64_t __50__CNContactContentViewControllerConfiguration_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "ControllerConfiguration");
  v1 = log_cn_once_object_0_54154;
  log_cn_once_object_0_54154 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end