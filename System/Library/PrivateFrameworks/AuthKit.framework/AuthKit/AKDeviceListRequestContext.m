@interface AKDeviceListRequestContext
- (AKDeviceListRequestContext)init;
- (AKDeviceListRequestContext)initWithCoder:(id)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKDeviceListRequestContext

- (AKDeviceListRequestContext)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AKDeviceListRequestContext;
  v8 = [(AKDeviceListRequestContext *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v2 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v8->_identifier;
    v8->_identifier = v2;
    MEMORY[0x1E69E5920](identifier);
    v8->_forceFetch = 0;
    v8->_type = 1;
  }

  v5 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (AKDeviceListRequestContext)initWithCoder:(id)a3
{
  v52 = &v56;
  v56 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v56;
  v56 = 0;
  v54.receiver = v3;
  v54.super_class = AKDeviceListRequestContext;
  v53 = [(AKDeviceListRequestContext *)&v54 init];
  v56 = v53;
  objc_storeStrong(&v56, v53);
  if (v53)
  {
    v34 = location[0];
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v56->_identifier;
    v56->_identifier = v4;
    MEMORY[0x1E69E5920](identifier);
    v35 = location[0];
    v50 = 0x1E696A000uLL;
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v56->_altDSID;
    v56->_altDSID = v6;
    MEMORY[0x1E69E5920](altDSID);
    v38 = location[0];
    v44 = 0x1E695D000uLL;
    v37 = MEMORY[0x1E695DFD8];
    v45 = 0x1E695D000uLL;
    v36 = objc_opt_class();
    v8 = *(v50 + 3776);
    v39 = [v37 setWithObjects:{v36, objc_opt_class(), 0}];
    v9 = [v38 decodeObjectOfClasses:? forKey:?];
    services = v56->_services;
    v56->_services = v9;
    MEMORY[0x1E69E5920](services);
    MEMORY[0x1E69E5920](v39);
    v42 = location[0];
    v41 = *(v44 + 4056);
    v11 = *(v45 + 3784);
    v40 = objc_opt_class();
    v12 = *(v50 + 3776);
    v43 = [v41 setWithObjects:{v40, objc_opt_class(), 0}];
    v13 = [v42 decodeObjectOfClasses:? forKey:?];
    operatingSystems = v56->_operatingSystems;
    v56->_operatingSystems = v13;
    MEMORY[0x1E69E5920](operatingSystems);
    MEMORY[0x1E69E5920](v43);
    v15 = [location[0] decodeBoolForKey:@"_includeUntrustedDevices"];
    v56->_includeUntrustedDevices = v15;
    v16 = [location[0] decodeBoolForKey:@"_includeFamilyDevices"];
    v17 = v44;
    v18 = v45;
    v56->_includeFamilyDevices = v16;
    v48 = location[0];
    v47 = *(v17 + 4056);
    v19 = *(v18 + 3784);
    v46 = objc_opt_class();
    v20 = *(v50 + 3776);
    v49 = [v47 setWithObjects:{v46, objc_opt_class(), 0}];
    v21 = [v48 decodeObjectOfClasses:? forKey:?];
    serialNumbers = v56->_serialNumbers;
    v56->_serialNumbers = v21;
    MEMORY[0x1E69E5920](serialNumbers);
    MEMORY[0x1E69E5920](v49);
    v23 = [location[0] decodeBoolForKey:@"_forceFetch"];
    v56->_forceFetch = v23;
    v24 = [location[0] decodeIntegerForKey:@"_type"];
    v56->_type = v24;
    v25 = [location[0] decodeBoolForKey:@"_fetchDeviceSafetyState"];
    v26 = v50;
    v56->_fetchDeviceSafetyState = v25;
    v51 = location[0];
    v27 = *(v26 + 3776);
    v28 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedBundleID"];
    proxiedBundleID = v56->_proxiedBundleID;
    v56->_proxiedBundleID = v28;
    MEMORY[0x1E69E5920](proxiedBundleID);
  }

  v31 = &v56;
  v33 = MEMORY[0x1E69E5928](v56);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v31, obj);
  return v33;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_identifier];
  [location[0] encodeObject:v4->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:v4->_services forKey:@"_services"];
  [location[0] encodeObject:v4->_operatingSystems forKey:@"_operatingSystems"];
  [location[0] encodeBool:v4->_includeUntrustedDevices forKey:@"_includeUntrustedDevices"];
  [location[0] encodeBool:v4->_includeFamilyDevices forKey:@"_includeFamilyDevices"];
  [location[0] encodeObject:v4->_serialNumbers forKey:@"_serialNumbers"];
  [location[0] encodeBool:v4->_forceFetch forKey:@"_forceFetch"];
  [location[0] encodeInteger:v4->_type forKey:@"_type"];
  [location[0] encodeBool:v4->_fetchDeviceSafetyState forKey:@"_fetchDeviceSafetyState"];
  [location[0] encodeObject:v4->_proxiedBundleID forKey:@"_proxiedBundleID"];
  objc_storeStrong(location, 0);
}

- (NSString)description
{
  v5 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  type = self->_type;
  v6 = [(NSUUID *)self->_identifier UUIDString];
  v7 = [v5 stringWithFormat:@"{<%@:%p>: type: %ld, identifier: %@, altDSID: %@, forceFetch: %d, fetchDeviceSafetyState: %d, os: %@, services: %@, untrusted: %d, family: %d, serialNumbers: %@, proxiedBundleID: %@, }", v3, self, type, v6, self->_altDSID, self->_forceFetch, self->_fetchDeviceSafetyState, self->_operatingSystems, self->_services, self->_includeUntrustedDevices, self->_includeFamilyDevices, self->_serialNumbers, self->_proxiedBundleID];
  MEMORY[0x1E69E5920](v6);

  return v7;
}

@end