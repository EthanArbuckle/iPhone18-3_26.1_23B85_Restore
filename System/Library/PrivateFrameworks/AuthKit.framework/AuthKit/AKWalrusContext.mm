@interface AKWalrusContext
- (AKWalrusContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKWalrusContext

- (AKWalrusContext)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v11 = [(AKWalrusContext *)v3 init];
  selfCopy = v11;
  objc_storeStrong(&selfCopy, v11);
  if (v11)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = selfCopy->_identifier;
    selfCopy->_identifier = v4;
    _objc_release(identifier);
    v6 = [location[0] decodeBoolForKey:@"_cliMode"];
    selfCopy->_cliMode = v6;
    v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v7;
    _objc_release(altDSID);
  }

  v10 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_identifier forKey:@"_identifier"];
  [location[0] encodeBool:selfCopy->_cliMode forKey:@"_cliMode"];
  [location[0] encodeObject:selfCopy->_altDSID forKey:@"_altDSID"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v9[2] = a2;
  v9[1] = zone;
  v9[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v9[0] + 8) = selfCopy->_cliMode;
  v3 = [(NSString *)selfCopy->_altDSID copy];
  v4 = *(v9[0] + 3);
  *(v9[0] + 3) = v3;
  _objc_release(v4);
  v5 = [(NSUUID *)selfCopy->_identifier copy];
  v6 = *(v9[0] + 2);
  *(v9[0] + 2) = v5;
  _objc_release(v6);
  v8 = _objc_retain(v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

@end