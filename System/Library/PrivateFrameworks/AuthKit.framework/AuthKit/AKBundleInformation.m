@interface AKBundleInformation
- (AKBundleInformation)initWithBundleIdentifier:(id)a3 bundleName:(id)a4 bundleDescription:(id)a5 bundleType:(unint64_t)a6 otherInfo:(id)a7;
- (AKBundleInformation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKBundleInformation

- (AKBundleInformation)initWithBundleIdentifier:(id)a3 bundleName:(id)a4 bundleDescription:(id)a5 bundleType:(unint64_t)a6 otherInfo:(id)a7
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = a6;
  v16 = 0;
  objc_storeStrong(&v16, a7);
  v7 = v21;
  v21 = 0;
  v15.receiver = v7;
  v15.super_class = AKBundleInformation;
  v14 = [(AKBundleInformation *)&v15 init];
  v21 = v14;
  objc_storeStrong(&v21, v14);
  if (v14)
  {
    objc_storeStrong(&v21->_bundleName, v19);
    objc_storeStrong(&v21->_bundleIdentifier, location[0]);
    objc_storeStrong(&v21->_bundleDescription, v18);
    v21->_bundleType = v17;
    objc_storeStrong(&v21->_otherInfo, v16);
  }

  v9 = _objc_retain(v21);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v21, 0);
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v6->_bundleName forKey:@"_bundleName"];
  [location[0] encodeObject:v6->_bundleIdentifier forKey:@"_bundleIdentifier"];
  [location[0] encodeObject:v6->_bundleDescription forKey:@"_bundleDescription"];
  v3 = location[0];
  v4 = [NSNumber numberWithUnsignedInteger:v6->_bundleType];
  [v3 encodeObject:? forKey:?];
  _objc_release(v4);
  [location[0] encodeObject:v6->_otherInfo forKey:@"_otherInfo"];
  objc_storeStrong(location, 0);
}

- (AKBundleInformation)initWithCoder:(id)a3
{
  v33 = &v37;
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v37;
  v37 = 0;
  v34 = [(AKBundleInformation *)v3 init];
  v37 = v34;
  objc_storeStrong(&v37, v34);
  if (v34)
  {
    v22 = location[0];
    v27 = AKBiometricRatchetController_ptr;
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_bundleName"];
    bundleName = v37->_bundleName;
    v37->_bundleName = v4;
    _objc_release(bundleName);
    v23 = location[0];
    v6 = v27[100];
    v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    bundleIdentifier = v37->_bundleIdentifier;
    v37->_bundleIdentifier = v7;
    _objc_release(bundleIdentifier);
    v24 = location[0];
    v9 = v27[100];
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_bundleDescription"];
    bundleDescription = v37->_bundleDescription;
    v37->_bundleDescription = v10;
    _objc_release(bundleDescription);
    v25 = location[0];
    v26 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_bundleType"];
    v12 = [v26 integerValue];
    v13 = v26;
    v37->_bundleType = v12;
    _objc_release(v13);
    v30 = NSSet;
    v29 = objc_opt_class();
    v14 = v27[100];
    v28 = objc_opt_class();
    v32 = 0;
    v15 = [NSSet setWithObjects:v29, v28, objc_opt_class(), 0];
    v31 = &v35;
    v35 = v15;
    v16 = [location[0] decodeObjectOfClasses:v15 forKey:@"_otherInfo"];
    otherInfo = v37->_otherInfo;
    v37->_otherInfo = v16;
    _objc_release(otherInfo);
    objc_storeStrong(v31, v32);
  }

  v19 = &v37;
  v21 = _objc_retain(v37);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v19, obj);
  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14 = self;
  v13[2] = a2;
  v13[1] = a3;
  v13[0] = objc_alloc_init(AKBundleInformation);
  v3 = [(NSString *)v14->_bundleName copy];
  v4 = *(v13[0] + 2);
  *(v13[0] + 2) = v3;
  _objc_release(v4);
  v5 = [(NSString *)v14->_bundleIdentifier copy];
  v6 = *(v13[0] + 1);
  *(v13[0] + 1) = v5;
  _objc_release(v6);
  v7 = [(NSString *)v14->_bundleDescription copy];
  v8 = *(v13[0] + 3);
  *(v13[0] + 3) = v7;
  _objc_release(v8);
  *(v13[0] + 4) = v14->_bundleType;
  v9 = [(NSDictionary *)v14->_otherInfo copy];
  v10 = *(v13[0] + 5);
  *(v13[0] + 5) = v9;
  _objc_release(v10);
  v12 = _objc_retain(v13[0]);
  objc_storeStrong(v13, 0);
  return v12;
}

@end