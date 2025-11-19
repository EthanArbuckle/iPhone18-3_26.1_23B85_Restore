@interface ASAccessoryCompanionAppInfo
- (ASAccessoryCompanionAppInfo)initWithBundleID:(id)a3;
@end

@implementation ASAccessoryCompanionAppInfo

- (ASAccessoryCompanionAppInfo)initWithBundleID:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = ASAccessoryCompanionAppInfo;
  v6 = [(ASAccessoryCompanionAppInfo *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, a3);
    v8 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v5 allowPlaceholder:1 error:0];
    v9 = [v8 localizedName];
    name = v7->_name;
    v7->_name = v9;

    v11 = [v8 iTunesMetadata];
    v12 = [v11 artistName];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_28499D698;
    }

    objc_storeStrong(&v7->_publisherName, v14);

    v15 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:v5];
    v16 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B228]];
    v17 = [v15 imageForDescriptor:v16];
    v18 = v17;
    if (v17 && ![v17 placeholder] || (objc_msgSend(v15, "prepareImageForDescriptor:", v16), v19 = objc_claimAutoreleasedReturnValue(), v18, (v18 = v19) != 0))
    {
      v20 = [MEMORY[0x277D755B8] imageWithCGImage:{objc_msgSend(v18, "CGImage")}];
      icon = v7->_icon;
      v7->_icon = v20;
    }

    else
    {
      v22 = objc_alloc_init(MEMORY[0x277D755B8]);
      v18 = v7->_icon;
      v7->_icon = v22;
    }
  }

  return v7;
}

@end