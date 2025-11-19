@interface AKExtensionlessFollowUpHelperContext
- (AKExtensionlessFollowUpHelperContext)initWithCoder:(id)a3;
- (UIViewController)presentingViewController;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKExtensionlessFollowUpHelperContext

- (AKExtensionlessFollowUpHelperContext)initWithCoder:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v20;
  v20 = 0;
  v18.receiver = v3;
  v18.super_class = AKExtensionlessFollowUpHelperContext;
  v17 = [(AKExtensionlessFollowUpHelperContext *)&v18 init];
  v20 = v17;
  objc_storeStrong(&v20, v17);
  if (v17)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_urlKey"];
    urlKey = v20->_urlKey;
    v20->_urlKey = v4;
    MEMORY[0x277D82BD8](urlKey);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v20->_altDSID;
    v20->_altDSID = v6;
    MEMORY[0x277D82BD8](altDSID);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_akAction"];
    akAction = v20->_akAction;
    v20->_akAction = v8;
    MEMORY[0x277D82BD8](akAction);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_uniqueItemIdentifier"];
    uniqueItemIdentifier = v20->_uniqueItemIdentifier;
    v20->_uniqueItemIdentifier = v10;
    MEMORY[0x277D82BD8](uniqueItemIdentifier);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_additionalInfo"];
    additionalInfo = v20->_additionalInfo;
    v20->_additionalInfo = v12;
    MEMORY[0x277D82BD8](additionalInfo);
    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_presentingViewController"];
    objc_storeWeak(&v20->_presentingViewController, v16);
    MEMORY[0x277D82BD8](v16);
  }

  v15 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v20, 0);
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v6->_urlKey forKey:@"_urlKey"];
  [location[0] encodeObject:v6->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:v6->_akAction forKey:@"_akAction"];
  [location[0] encodeObject:v6->_uniqueItemIdentifier forKey:@"_uniqueItemIdentifier"];
  [location[0] encodeObject:v6->_additionalInfo forKey:@"_additionalInfo"];
  v3 = location[0];
  WeakRetained = objc_loadWeakRetained(&v6->_presentingViewController);
  [v3 encodeObject:? forKey:?];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(location, 0);
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end