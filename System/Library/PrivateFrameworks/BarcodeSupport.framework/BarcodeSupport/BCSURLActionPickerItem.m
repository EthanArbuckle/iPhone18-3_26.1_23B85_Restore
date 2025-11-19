@interface BCSURLActionPickerItem
- (BCSURLActionPickerItem)initWithLabel:(id)a3 action:(id)a4 appLink:(id)a5 codePayload:(id)a6 preferApplicationIcon:(BOOL)a7;
- (BCSURLActionPickerItem)initWithLabel:(id)a3 action:(id)a4 url:(id)a5 applicationRecord:(id)a6 preferApplicationIcon:(BOOL)a7;
- (BOOL)useInlineMenu;
- (id)actionURL;
- (id)icon;
- (id)targetApplicationBundleIdentifier;
- (void)performActionWithFBOptions:(id)a3;
@end

@implementation BCSURLActionPickerItem

- (BCSURLActionPickerItem)initWithLabel:(id)a3 action:(id)a4 url:(id)a5 applicationRecord:(id)a6 preferApplicationIcon:(BOOL)a7
{
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = BCSURLActionPickerItem;
  v15 = [(BCSActionPickerItem *)&v19 initWithLabel:a3 action:a4];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_url, a5);
    objc_storeStrong(&v16->_applicationRecord, a6);
    v16->_preferApplicationIcon = a7;
    v17 = v16;
  }

  return v16;
}

- (BCSURLActionPickerItem)initWithLabel:(id)a3 action:(id)a4 appLink:(id)a5 codePayload:(id)a6 preferApplicationIcon:(BOOL)a7
{
  v7 = a7;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = BCSURLActionPickerItem;
  v15 = [(BCSActionPickerItem *)&v21 initWithLabel:a3 action:a4];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_appLink, a5);
    objc_storeStrong(&v16->_codePayload, a6);
    v16->_preferApplicationIcon = v7;
    if (v7)
    {
      v17 = [(LSAppLink *)v16->_appLink targetApplicationRecord];
      applicationRecord = v16->_applicationRecord;
      v16->_applicationRecord = v17;
    }

    v19 = v16;
  }

  return v16;
}

- (id)icon
{
  v3 = [(LSApplicationRecord *)self->_applicationRecord bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.mobilesafari"];

  if (v4)
  {
    goto LABEL_7;
  }

  if (!self->_preferApplicationIcon || !self->_applicationRecord || (UIImageClass = getUIImageClass(), -[LSApplicationRecord bundleIdentifier](self->_applicationRecord, "bundleIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), MGGetFloat32Answer(), [UIImageClass _applicationIconImageForBundleIdentifier:v6 format:0 scale:v7], v8 = objc_claimAutoreleasedReturnValue(), v6, !v8))
  {
    if (!self->_url && !self->_appLink)
    {
      v9 = @"arrow.up.forward.app";
      goto LABEL_8;
    }

LABEL_7:
    v9 = @"safari";
LABEL_8:
    v8 = [getUIImageClass() systemImageNamed:v9];
  }

  return v8;
}

- (void)performActionWithFBOptions:(id)a3
{
  v4 = a3;
  appLink = self->_appLink;
  v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (appLink)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSURLActionPickerItem: opening app link", buf, 2u);
    }

    _bcs_openAppLinkIgnoringOpenStrategy(self->_appLink, v4, self->_codePayload);
    v7 = +[BCSQRCodeParser sharedParser];
    v8 = [(LSAppLink *)self->_appLink targetApplicationProxy];
    v9 = [v8 bundleIdentifier];
    v10 = [(LSAppLink *)self->_appLink URL];
    [v7 setPreferredBundleIdentifier:v9 forURL:v10];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSURLActionPickerItem: opening url", buf, 2u);
    }

    if ([(NSURL *)self->_url _bcs_isUPIURL])
    {
      v11 = +[BCSQRCodeParser sharedParser];
      v12 = [(LSApplicationRecord *)self->_applicationRecord bundleIdentifier];
      [v11 setPreferredBundleIdentifier:v12 forURL:self->_url];
    }

    v13 = [(BCSActionPickerItem *)self action];
    v14 = [v13 hasSensitiveURL];

    if (v14)
    {
      v15 = [MEMORY[0x277CC1E80] defaultWorkspace];
      url = self->_url;
      v26 = 0;
      v17 = [v15 openSensitiveURL:url withOptions:v4 error:&v26];
      v18 = v26;

      if ((v17 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [BCSURLActionPickerItem performActionWithFBOptions:v18];
      }
    }

    else
    {
      applicationRecord = self->_applicationRecord;
      v20 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v21 = v20;
      v22 = self->_url;
      if (applicationRecord)
      {
        v23 = [(LSApplicationRecord *)self->_applicationRecord bundleIdentifier];
        v18 = [v21 operationToOpenResource:v22 usingApplication:v23 uniqueDocumentIdentifier:0 isContentManaged:0 sourceAuditToken:0 userInfo:0 options:v4 delegate:0];

        [v18 start];
      }

      else
      {
        v25 = 0;
        v24 = [v20 openURL:v22 withOptions:v4 error:&v25];
        v18 = v25;

        if ((v24 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [BCSURLActionPickerItem performActionWithFBOptions:v18];
        }
      }
    }

    [(BCSActionPickerItem *)self didPerformAction];
  }
}

- (id)targetApplicationBundleIdentifier
{
  if (self->_appLink)
  {
    v2 = [(LSAppLink *)self->_appLink targetApplicationProxy];
    v3 = [v2 bundleIdentifier];
  }

  else
  {
    v3 = [(LSApplicationRecord *)self->_applicationRecord bundleIdentifier];
  }

  return v3;
}

- (id)actionURL
{
  if (self->_appLink)
  {
    v2 = [(LSAppLink *)self->_appLink URL];
  }

  else
  {
    v2 = self->_url;
  }

  return v2;
}

- (BOOL)useInlineMenu
{
  v3 = [(LSApplicationRecord *)self->_applicationRecord bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.mobilesafari"];

  return (v4 & 1) == 0 && self->_applicationRecord != 0;
}

- (void)performActionWithFBOptions:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSURLAction: cannot open Home app with sensitive URL with error: %{private}@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end