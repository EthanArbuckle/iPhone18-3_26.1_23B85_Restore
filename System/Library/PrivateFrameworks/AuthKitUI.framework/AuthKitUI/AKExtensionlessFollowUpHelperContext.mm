@interface AKExtensionlessFollowUpHelperContext
- (AKExtensionlessFollowUpHelperContext)initWithCoder:(id)coder;
- (UIViewController)presentingViewController;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKExtensionlessFollowUpHelperContext

- (AKExtensionlessFollowUpHelperContext)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v18.receiver = v3;
  v18.super_class = AKExtensionlessFollowUpHelperContext;
  v17 = [(AKExtensionlessFollowUpHelperContext *)&v18 init];
  selfCopy = v17;
  objc_storeStrong(&selfCopy, v17);
  if (v17)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_urlKey"];
    urlKey = selfCopy->_urlKey;
    selfCopy->_urlKey = v4;
    MEMORY[0x277D82BD8](urlKey);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v6;
    MEMORY[0x277D82BD8](altDSID);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_akAction"];
    akAction = selfCopy->_akAction;
    selfCopy->_akAction = v8;
    MEMORY[0x277D82BD8](akAction);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_uniqueItemIdentifier"];
    uniqueItemIdentifier = selfCopy->_uniqueItemIdentifier;
    selfCopy->_uniqueItemIdentifier = v10;
    MEMORY[0x277D82BD8](uniqueItemIdentifier);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_additionalInfo"];
    additionalInfo = selfCopy->_additionalInfo;
    selfCopy->_additionalInfo = v12;
    MEMORY[0x277D82BD8](additionalInfo);
    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_presentingViewController"];
    objc_storeWeak(&selfCopy->_presentingViewController, v16);
    MEMORY[0x277D82BD8](v16);
  }

  v15 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_urlKey forKey:@"_urlKey"];
  [location[0] encodeObject:selfCopy->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:selfCopy->_akAction forKey:@"_akAction"];
  [location[0] encodeObject:selfCopy->_uniqueItemIdentifier forKey:@"_uniqueItemIdentifier"];
  [location[0] encodeObject:selfCopy->_additionalInfo forKey:@"_additionalInfo"];
  v3 = location[0];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_presentingViewController);
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