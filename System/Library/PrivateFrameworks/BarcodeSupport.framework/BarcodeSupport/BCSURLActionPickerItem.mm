@interface BCSURLActionPickerItem
- (BCSURLActionPickerItem)initWithLabel:(id)label action:(id)action appLink:(id)link codePayload:(id)payload preferApplicationIcon:(BOOL)icon;
- (BCSURLActionPickerItem)initWithLabel:(id)label action:(id)action url:(id)url applicationRecord:(id)record preferApplicationIcon:(BOOL)icon;
- (BOOL)useInlineMenu;
- (id)actionURL;
- (id)icon;
- (id)targetApplicationBundleIdentifier;
- (void)performActionWithFBOptions:(id)options;
@end

@implementation BCSURLActionPickerItem

- (BCSURLActionPickerItem)initWithLabel:(id)label action:(id)action url:(id)url applicationRecord:(id)record preferApplicationIcon:(BOOL)icon
{
  urlCopy = url;
  recordCopy = record;
  v19.receiver = self;
  v19.super_class = BCSURLActionPickerItem;
  v15 = [(BCSActionPickerItem *)&v19 initWithLabel:label action:action];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_url, url);
    objc_storeStrong(&v16->_applicationRecord, record);
    v16->_preferApplicationIcon = icon;
    v17 = v16;
  }

  return v16;
}

- (BCSURLActionPickerItem)initWithLabel:(id)label action:(id)action appLink:(id)link codePayload:(id)payload preferApplicationIcon:(BOOL)icon
{
  iconCopy = icon;
  linkCopy = link;
  payloadCopy = payload;
  v21.receiver = self;
  v21.super_class = BCSURLActionPickerItem;
  v15 = [(BCSActionPickerItem *)&v21 initWithLabel:label action:action];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_appLink, link);
    objc_storeStrong(&v16->_codePayload, payload);
    v16->_preferApplicationIcon = iconCopy;
    if (iconCopy)
    {
      targetApplicationRecord = [(LSAppLink *)v16->_appLink targetApplicationRecord];
      applicationRecord = v16->_applicationRecord;
      v16->_applicationRecord = targetApplicationRecord;
    }

    v19 = v16;
  }

  return v16;
}

- (id)icon
{
  bundleIdentifier = [(LSApplicationRecord *)self->_applicationRecord bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.mobilesafari"];

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

- (void)performActionWithFBOptions:(id)options
{
  optionsCopy = options;
  appLink = self->_appLink;
  v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (appLink)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSURLActionPickerItem: opening app link", buf, 2u);
    }

    _bcs_openAppLinkIgnoringOpenStrategy(self->_appLink, optionsCopy, self->_codePayload);
    v7 = +[BCSQRCodeParser sharedParser];
    targetApplicationProxy = [(LSAppLink *)self->_appLink targetApplicationProxy];
    bundleIdentifier = [targetApplicationProxy bundleIdentifier];
    v10 = [(LSAppLink *)self->_appLink URL];
    [v7 setPreferredBundleIdentifier:bundleIdentifier forURL:v10];
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
      bundleIdentifier2 = [(LSApplicationRecord *)self->_applicationRecord bundleIdentifier];
      [v11 setPreferredBundleIdentifier:bundleIdentifier2 forURL:self->_url];
    }

    action = [(BCSActionPickerItem *)self action];
    hasSensitiveURL = [action hasSensitiveURL];

    if (hasSensitiveURL)
    {
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      url = self->_url;
      v26 = 0;
      v17 = [defaultWorkspace openSensitiveURL:url withOptions:optionsCopy error:&v26];
      v18 = v26;

      if ((v17 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [BCSURLActionPickerItem performActionWithFBOptions:v18];
      }
    }

    else
    {
      applicationRecord = self->_applicationRecord;
      defaultWorkspace2 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v21 = defaultWorkspace2;
      v22 = self->_url;
      if (applicationRecord)
      {
        bundleIdentifier3 = [(LSApplicationRecord *)self->_applicationRecord bundleIdentifier];
        v18 = [v21 operationToOpenResource:v22 usingApplication:bundleIdentifier3 uniqueDocumentIdentifier:0 isContentManaged:0 sourceAuditToken:0 userInfo:0 options:optionsCopy delegate:0];

        [v18 start];
      }

      else
      {
        v25 = 0;
        v24 = [defaultWorkspace2 openURL:v22 withOptions:optionsCopy error:&v25];
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
    targetApplicationProxy = [(LSAppLink *)self->_appLink targetApplicationProxy];
    bundleIdentifier = [targetApplicationProxy bundleIdentifier];
  }

  else
  {
    bundleIdentifier = [(LSApplicationRecord *)self->_applicationRecord bundleIdentifier];
  }

  return bundleIdentifier;
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
  bundleIdentifier = [(LSApplicationRecord *)self->_applicationRecord bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.mobilesafari"];

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