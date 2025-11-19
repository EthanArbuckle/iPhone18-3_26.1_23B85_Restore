@interface AKAppiTunesMetadata
- (AKAppiTunesMetadata)initWithBundleId:(id)a3 shortName:(id)a4 appName:(id)a5 appDeveloperName:(id)a6 adamID:(id)a7;
@end

@implementation AKAppiTunesMetadata

- (AKAppiTunesMetadata)initWithBundleId:(id)a3 shortName:(id)a4 appName:(id)a5 appDeveloperName:(id)a6 adamID:(id)a7
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  v27 = 0;
  objc_storeStrong(&v27, a6);
  v26 = 0;
  objc_storeStrong(&v26, a7);
  v7 = v31;
  v31 = 0;
  v25.receiver = v7;
  v25.super_class = AKAppiTunesMetadata;
  v20 = [(AKAppiTunesMetadata *)&v25 init];
  v31 = v20;
  objc_storeStrong(&v31, v20);
  if (v20)
  {
    v8 = [location[0] copy];
    bundleId = v31->_bundleId;
    v31->_bundleId = v8;
    MEMORY[0x1E69E5920](bundleId);
    v23 = 0;
    v21 = 0;
    if ([v29 length])
    {
      v24 = [v29 copy];
      v23 = 1;
      objc_storeStrong(&v31->_appName, v24);
    }

    else
    {
      v22 = [v28 copy];
      v21 = 1;
      objc_storeStrong(&v31->_appName, v22);
    }

    if (v21)
    {
      MEMORY[0x1E69E5920](v22);
    }

    if (v23)
    {
      MEMORY[0x1E69E5920](v24);
    }

    v10 = [v27 copy];
    appDeveloperName = v31->_appDeveloperName;
    v31->_appDeveloperName = v10;
    MEMORY[0x1E69E5920](appDeveloperName);
    v12 = [v26 copy];
    adamID = v31->_adamID;
    v31->_adamID = v12;
    MEMORY[0x1E69E5920](adamID);
  }

  v15 = MEMORY[0x1E69E5928](v31);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v31, 0);
  return v15;
}

@end