@interface AKAppleIDPasskeySetupContext
- (AKAppleIDPasskeySetupContext)initWithAltDSID:(id)d;
- (AKAppleIDPasskeySetupContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAppleIDPasskeySetupContext

- (AKAppleIDPasskeySetupContext)initWithAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKAppleIDPasskeySetupContext;
  v6 = [(AKAppleIDPasskeySetupContext *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_altDSID, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKAppleIDPasskeySetupContext)initWithCoder:(id)coder
{
  v22 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v25.receiver = v3;
  v25.super_class = AKAppleIDPasskeySetupContext;
  v23 = [(AKAppleIDPasskeySetupContext *)&v25 init];
  selfCopy = v23;
  objc_storeStrong(&selfCopy, v23);
  if (v23)
  {
    v14 = location[0];
    v15 = 0x1E696A000uLL;
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v4;
    MEMORY[0x1E69E5920](altDSID);
    v19 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v6 = *(v15 + 3776);
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v21 = 0;
    v7 = [v19 setWithObjects:{v18, v16, v17, objc_opt_class(), 0}];
    v20 = &v24;
    v24 = v7;
    v8 = [location[0] decodeObjectOfClasses:v7 forKey:@"_appProvidedData"];
    appProvidedData = selfCopy->_appProvidedData;
    selfCopy->_appProvidedData = v8;
    MEMORY[0x1E69E5920](appProvidedData);
    objc_storeStrong(v20, v21);
  }

  v11 = &selfCopy;
  v13 = MEMORY[0x1E69E5928](selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v11, obj);
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:selfCopy->_appProvidedData forKey:@"_appProvidedData"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v9[2] = a2;
  v9[1] = zone;
  v9[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSString *)selfCopy->_altDSID copy];
  v4 = *(v9[0] + 1);
  *(v9[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSDictionary *)selfCopy->_appProvidedData copy];
  v6 = *(v9[0] + 2);
  *(v9[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v8 = MEMORY[0x1E69E5928](v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p {\n\taltDSID: %@, \n\tappProvidedData: %@, \n}>", v5, self, self->_altDSID, self->_appProvidedData];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

@end