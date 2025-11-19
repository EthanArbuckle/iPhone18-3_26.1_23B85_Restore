@interface AAOBInheritanceShareAccessKeyOptionsModel
- (AAOBInheritanceShareAccessKeyOptionsModel)initWithBeneficiaryName:(id)a3 handle:(id)a4;
- (id)availableSharingOptions;
- (id)detailTextForShareAccessKeyType:(unint64_t)a3;
- (id)titleForShareAccessKeyType:(unint64_t)a3;
- (void)availableSharingOptionsWithCompletion:(id)a3;
@end

@implementation AAOBInheritanceShareAccessKeyOptionsModel

- (AAOBInheritanceShareAccessKeyOptionsModel)initWithBeneficiaryName:(id)a3 handle:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_beneficiaryName, a3);
  v30.receiver = self;
  v30.super_class = AAOBInheritanceShareAccessKeyOptionsModel;
  v9 = [(AAOBInheritanceShareAccessKeyOptionsModel *)&v30 init];
  v10 = v9;
  if (v9)
  {
    imageName = v9->_imageName;
    v9->_imageName = 0;

    objc_storeStrong(&v10->_recipientHandle, a4);
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
    {
      v13 = @"INHERITANCE_SHARE_KEY_OPTIONS_TITLE_v2";
    }

    else
    {
      v13 = @"INHERITANCE_SHARE_KEY_OPTIONS_TITLE";
    }

    v14 = [v12 localizedStringForKey:v13 value:0 table:@"Localizable"];
    title = v10->_title;
    v10->_title = v14;

    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
    {
      v17 = @"INHERITANCE_SHARE_KEY_OPTIONS_MESSAGE_v2";
    }

    else
    {
      v17 = @"INHERITANCE_SHARE_KEY_OPTIONS_MESSAGE";
    }

    v18 = [v16 localizedStringForKey:v17 value:0 table:@"Localizable"];
    detailText = v10->_detailText;
    v10->_detailText = v18;

    v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    if (+[AAFeatureFlags isSolariumEnabled])
    {
      v21 = @"INHERITANCE_SHARE_KEY_OPTIONS_LEARNMORE_TITLE_SOLARIUM";
    }

    else
    {
      v21 = @"INHERITANCE_SHARE_KEY_OPTIONS_LEARNMORE_TITLE";
    }

    v22 = [v20 localizedStringForKey:v21 value:0 table:@"Localizable"];
    helpLinkTitle = v10->_helpLinkTitle;
    v10->_helpLinkTitle = v22;

    helpLinkURL = v10->_helpLinkURL;
    v10->_helpLinkURL = @"https://support.apple.com/kb/HT212360";

    if (+[AAFeatureFlags isSolariumEnabled])
    {
      v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v26 = [v25 localizedStringForKey:@"INHERITANCE_SHARE_KEY_OPTIONS_CONTINUE_TITLE" value:0 table:@"Localizable"];
      primaryButton = v10->_primaryButton;
      v10->_primaryButton = v26;
    }

    else
    {
      v25 = v10->_primaryButton;
      v10->_primaryButton = 0;
    }

    secondaryButton = v10->_secondaryButton;
    v10->_secondaryButton = 0;
  }

  return v10;
}

- (id)availableSharingOptions
{
  if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
  {
    return &unk_1F2F24C38;
  }

  else
  {
    return &unk_1F2F24C50;
  }
}

- (void)availableSharingOptionsWithCompletion:(id)a3
{
  v4 = a3;
  recipientHandle = self->_recipientHandle;
  if (recipientHandle && [(NSString *)recipientHandle length])
  {
    v6 = [[AAMessagingDestination alloc] initWithHandle:self->_recipientHandle];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__AAOBInheritanceShareAccessKeyOptionsModel_availableSharingOptionsWithCompletion___block_invoke;
    v9[3] = &unk_1E7C9A780;
    v10 = v4;
    [(AAMessagingDestination *)v6 isRegisteredToiMessageWithCompletion:v9];
  }

  else
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Handle is either nil or empty.", v8, 2u);
    }

    v6 = [(AAOBInheritanceShareAccessKeyOptionsModel *)self defaultSharingOptions];
    (*(v4 + 2))(v4, v6);
  }
}

uint64_t __83__AAOBInheritanceShareAccessKeyOptionsModel_availableSharingOptionsWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v4 = _AALogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "The contact with is iMessage-able.", buf, 2u);
    }

    +[AAUrlBagHelper isLCInviteAcceptanceEnabled];
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "The contact with is not iMessage-able.", v7, 2u);
    }

    return (*(*(a1 + 32) + 16))();
  }
}

- (id)titleForShareAccessKeyType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v5 = +[AAUrlBagHelper isLCInviteAcceptanceEnabled];
    v6 = @"INHERITANCE_SHARE_KEY_OPTION_PRINT_TITLE";
    v7 = @"INHERITANCE_SHARE_KEY_OPTION_PRINT_TITLE_v2";
    goto LABEL_5;
  }

  if (!a3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v5 = +[AAUrlBagHelper isLCInviteAcceptanceEnabled];
    v6 = @"INHERITANCE_SHARE_KEY_OPTION_MESSAGE_TITLE";
    v7 = @"INHERITANCE_SHARE_KEY_OPTION_MESSAGE_TITLE_v2";
LABEL_5:
    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    v3 = [v4 localizedStringForKey:v8 value:0 table:@"Localizable"];
  }

  return v3;
}

- (id)detailTextForShareAccessKeyType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
    {
      v9 = @"INHERITANCE_SHARE_KEY_OPTION_PRINT_DETAILTEXT_v2";
    }

    else
    {
      v9 = @"INHERITANCE_SHARE_KEY_OPTION_PRINT_DETAILTEXT";
    }

    v3 = [v6 localizedStringForKey:v9 value:0 table:@"Localizable"];
  }

  else
  {
    if (a3)
    {
      goto LABEL_12;
    }

    v5 = MEMORY[0x1E696AEC0];
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
    {
      v7 = @"INHERITANCE_SHARE_KEY_OPTION_MESSAGE_DETAILTEXT_v2";
    }

    else
    {
      v7 = @"INHERITANCE_SHARE_KEY_OPTION_MESSAGE_DETAILTEXT";
    }

    v8 = [v6 localizedStringForKey:v7 value:0 table:@"Localizable"];
    v3 = [v5 stringWithFormat:v8, self->_beneficiaryName];
  }

LABEL_12:

  return v3;
}

@end