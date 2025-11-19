@interface AKWalrusContext
- (AKWalrusContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKWalrusContext

- (AKWalrusContext)initWithCoder:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v13 = 0;
  v11 = [(AKWalrusContext *)v3 init];
  v13 = v11;
  objc_storeStrong(&v13, v11);
  if (v11)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v13->_identifier;
    v13->_identifier = v4;
    _objc_release(identifier);
    v6 = [location[0] decodeBoolForKey:@"_cliMode"];
    v13->_cliMode = v6;
    v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v13->_altDSID;
    v13->_altDSID = v7;
    _objc_release(altDSID);
  }

  v10 = _objc_retain(v13);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_identifier forKey:@"_identifier"];
  [location[0] encodeBool:v4->_cliMode forKey:@"_cliMode"];
  [location[0] encodeObject:v4->_altDSID forKey:@"_altDSID"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10 = self;
  v9[2] = a2;
  v9[1] = a3;
  v9[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v9[0] + 8) = v10->_cliMode;
  v3 = [(NSString *)v10->_altDSID copy];
  v4 = *(v9[0] + 3);
  *(v9[0] + 3) = v3;
  _objc_release(v4);
  v5 = [(NSUUID *)v10->_identifier copy];
  v6 = *(v9[0] + 2);
  *(v9[0] + 2) = v5;
  _objc_release(v6);
  v8 = _objc_retain(v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

@end