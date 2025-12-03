@interface AKAppiTunesMetadata
- (AKAppiTunesMetadata)initWithBundleId:(id)id shortName:(id)name appName:(id)appName appDeveloperName:(id)developerName adamID:(id)d;
@end

@implementation AKAppiTunesMetadata

- (AKAppiTunesMetadata)initWithBundleId:(id)id shortName:(id)name appName:(id)appName appDeveloperName:(id)developerName adamID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, id);
  v29 = 0;
  objc_storeStrong(&v29, name);
  v28 = 0;
  objc_storeStrong(&v28, appName);
  v27 = 0;
  objc_storeStrong(&v27, developerName);
  v26 = 0;
  objc_storeStrong(&v26, d);
  v7 = selfCopy;
  selfCopy = 0;
  v25.receiver = v7;
  v25.super_class = AKAppiTunesMetadata;
  v20 = [(AKAppiTunesMetadata *)&v25 init];
  selfCopy = v20;
  objc_storeStrong(&selfCopy, v20);
  if (v20)
  {
    v8 = [location[0] copy];
    bundleId = selfCopy->_bundleId;
    selfCopy->_bundleId = v8;
    MEMORY[0x1E69E5920](bundleId);
    v23 = 0;
    v21 = 0;
    if ([v29 length])
    {
      v24 = [v29 copy];
      v23 = 1;
      objc_storeStrong(&selfCopy->_appName, v24);
    }

    else
    {
      v22 = [v28 copy];
      v21 = 1;
      objc_storeStrong(&selfCopy->_appName, v22);
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
    appDeveloperName = selfCopy->_appDeveloperName;
    selfCopy->_appDeveloperName = v10;
    MEMORY[0x1E69E5920](appDeveloperName);
    v12 = [v26 copy];
    adamID = selfCopy->_adamID;
    selfCopy->_adamID = v12;
    MEMORY[0x1E69E5920](adamID);
  }

  v15 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v15;
}

@end