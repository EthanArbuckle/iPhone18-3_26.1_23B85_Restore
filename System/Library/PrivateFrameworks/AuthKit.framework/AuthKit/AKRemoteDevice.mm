@interface AKRemoteDevice
- (AKRemoteDevice)initWithCoder:(id)coder;
- (AKRemoteDevice)initWithInfo:(id)info;
- (void)_initWithInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
- (void)setDeviceRestrictionState:(id)state;
@end

@implementation AKRemoteDevice

- (AKRemoteDevice)initWithInfo:(id)info
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v3 = selfCopy;
  selfCopy = 0;
  v6 = [(AKRemoteDevice *)v3 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    [(AKRemoteDevice *)selfCopy _initWithInfo:location[0]];
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)_initWithInfo:(id)info
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v54 = objc_opt_class();
  v55 = [location[0] objectForKeyedSubscript:@"name"];
  v3 = _AKSafeCast_27(v54, v55);
  name = selfCopy->_name;
  selfCopy->_name = v3;
  MEMORY[0x1E69E5920](name);
  MEMORY[0x1E69E5920](v55);
  v56 = objc_opt_class();
  v57 = [location[0] objectForKeyedSubscript:@"serialNumber"];
  v5 = _AKSafeCast_27(v56, v57);
  serialNumber = selfCopy->_serialNumber;
  selfCopy->_serialNumber = v5;
  MEMORY[0x1E69E5920](serialNumber);
  MEMORY[0x1E69E5920](v57);
  v58 = objc_opt_class();
  v59 = [location[0] objectForKeyedSubscript:@"buildNumber"];
  v7 = _AKSafeCast_27(v58, v59);
  buildNumber = selfCopy->_buildNumber;
  selfCopy->_buildNumber = v7;
  MEMORY[0x1E69E5920](buildNumber);
  MEMORY[0x1E69E5920](v59);
  v60 = objc_opt_class();
  v61 = [location[0] objectForKeyedSubscript:@"os"];
  v9 = _AKSafeCast_27(v60, v61);
  operatingSystemName = selfCopy->_operatingSystemName;
  selfCopy->_operatingSystemName = v9;
  MEMORY[0x1E69E5920](operatingSystemName);
  MEMORY[0x1E69E5920](v61);
  v62 = objc_opt_class();
  v63 = [location[0] objectForKeyedSubscript:@"osVersion"];
  v11 = _AKSafeCast_27(v62, v63);
  operatingSystemVersion = selfCopy->_operatingSystemVersion;
  selfCopy->_operatingSystemVersion = v11;
  MEMORY[0x1E69E5920](operatingSystemVersion);
  MEMORY[0x1E69E5920](v63);
  v64 = objc_opt_class();
  v65 = [location[0] objectForKeyedSubscript:@"model"];
  v13 = _AKSafeCast_27(v64, v65);
  model = selfCopy->_model;
  selfCopy->_model = v13;
  MEMORY[0x1E69E5920](model);
  MEMORY[0x1E69E5920](v65);
  v66 = objc_opt_class();
  v67 = [location[0] objectForKeyedSubscript:@"mid"];
  v15 = _AKSafeCast_27(v66, v67);
  machineId = selfCopy->_machineId;
  selfCopy->_machineId = v15;
  MEMORY[0x1E69E5920](machineId);
  MEMORY[0x1E69E5920](v67);
  v68 = objc_opt_class();
  v69 = [location[0] objectForKeyedSubscript:@"ptkn"];
  v17 = _AKSafeCast_27(v68, v69);
  pushToken = selfCopy->_pushToken;
  selfCopy->_pushToken = v17;
  MEMORY[0x1E69E5920](pushToken);
  MEMORY[0x1E69E5920](v69);
  v71 = MEMORY[0x1E695DF00];
  v70 = objc_opt_class();
  v73 = [location[0] objectForKeyedSubscript:@"lastUpdatedDate"];
  v72 = _AKSafeCast_27(v70, v73);
  [v72 doubleValue];
  v20 = [v71 dateWithTimeIntervalSince1970:v19 / 1000.0];
  lastUpdatedDate = selfCopy->_lastUpdatedDate;
  selfCopy->_lastUpdatedDate = v20;
  MEMORY[0x1E69E5920](lastUpdatedDate);
  MEMORY[0x1E69E5920](v72);
  MEMORY[0x1E69E5920](v73);
  v74 = objc_opt_class();
  v76 = [location[0] objectForKeyedSubscript:@"trusted"];
  v75 = _AKSafeCast_27(v74, v76);
  bOOLValue = [v75 BOOLValue];
  selfCopy->_trusted = bOOLValue;
  MEMORY[0x1E69E5920](v75);
  MEMORY[0x1E69E5920](v76);
  v77 = objc_opt_class();
  v79 = [location[0] objectForKeyedSubscript:@"circleStatus"];
  v78 = _AKSafeCast_27(v77, v79);
  bOOLValue2 = [v78 BOOLValue];
  selfCopy->_inCircle = bOOLValue2;
  MEMORY[0x1E69E5920](v78);
  MEMORY[0x1E69E5920](v79);
  v80 = objc_opt_class();
  v81 = [location[0] objectForKeyedSubscript:@"dc"];
  v24 = _AKSafeCast_27(v80, v81);
  colorCode = selfCopy->_colorCode;
  selfCopy->_colorCode = v24;
  MEMORY[0x1E69E5920](colorCode);
  MEMORY[0x1E69E5920](v81);
  v82 = objc_opt_class();
  v83 = [location[0] objectForKeyedSubscript:@"dec"];
  v26 = _AKSafeCast_27(v82, v83);
  enclosureColorCode = selfCopy->_enclosureColorCode;
  selfCopy->_enclosureColorCode = v26;
  MEMORY[0x1E69E5920](enclosureColorCode);
  MEMORY[0x1E69E5920](v83);
  v84 = objc_opt_class();
  v85 = [location[0] objectForKeyedSubscript:@"clcg"];
  v28 = _AKSafeCast_27(v84, v85);
  coverGlassColorCode = selfCopy->_coverGlassColorCode;
  selfCopy->_coverGlassColorCode = v28;
  MEMORY[0x1E69E5920](coverGlassColorCode);
  MEMORY[0x1E69E5920](v85);
  v86 = objc_opt_class();
  v87 = [location[0] objectForKeyedSubscript:@"clhs"];
  v30 = _AKSafeCast_27(v86, v87);
  housingColorCode = selfCopy->_housingColorCode;
  selfCopy->_housingColorCode = v30;
  MEMORY[0x1E69E5920](housingColorCode);
  MEMORY[0x1E69E5920](v87);
  v88 = objc_opt_class();
  v89 = [location[0] objectForKeyedSubscript:@"clbg"];
  v32 = _AKSafeCast_27(v88, v89);
  backingColorCode = selfCopy->_backingColorCode;
  selfCopy->_backingColorCode = v32;
  MEMORY[0x1E69E5920](backingColorCode);
  MEMORY[0x1E69E5920](v89);
  v90 = objc_opt_class();
  v91 = [location[0] objectForKeyedSubscript:@"additionalInfo"];
  v34 = _AKSafeCast_27(v90, v91);
  additionalInfo = selfCopy->_additionalInfo;
  selfCopy->_additionalInfo = v34;
  MEMORY[0x1E69E5920](additionalInfo);
  MEMORY[0x1E69E5920](v91);
  v92 = objc_opt_class();
  v93 = [location[0] objectForKeyedSubscript:@"lastCacheUpdatedDate"];
  v96 = _AKSafeCast_27(v92, v93);
  MEMORY[0x1E69E5920](v93);
  if (v96)
  {
    v53 = MEMORY[0x1E695DF00];
    [v96 doubleValue];
    v37 = [v53 dateWithTimeIntervalSince1970:v36 / 1000.0];
    lastCacheUpdatedDate = selfCopy->_lastCacheUpdatedDate;
    selfCopy->_lastCacheUpdatedDate = v37;
    MEMORY[0x1E69E5920](lastCacheUpdatedDate);
  }

  v49 = objc_opt_class();
  v50 = [location[0] objectForKeyedSubscript:@"services"];
  v95 = _AKSafeCast_27(v49, v50);
  MEMORY[0x1E69E5920](v50);
  v39 = [v95 stringByReplacingOccurrencesOfString:@"|" withString:{@", "}];
  services = selfCopy->_services;
  selfCopy->_services = v39;
  MEMORY[0x1E69E5920](services);
  v51 = objc_opt_class();
  v52 = [location[0] objectForKeyedSubscript:@"deletedDate"];
  v94 = _AKSafeCast_27(v51, v52);
  MEMORY[0x1E69E5920](v52);
  if (v94)
  {
    v48 = MEMORY[0x1E695DF00];
    [v94 doubleValue];
    v42 = [v48 dateWithTimeIntervalSince1970:v41 / 1000.0];
    deletedDate = selfCopy->_deletedDate;
    selfCopy->_deletedDate = v42;
    MEMORY[0x1E69E5920](deletedDate);
  }

  v45 = objc_opt_class();
  v47 = [location[0] objectForKeyedSubscript:@"reason"];
  v46 = _AKSafeCast_27(v45, v47);
  integerValue = [v46 integerValue];
  selfCopy->_removalReason = integerValue;
  MEMORY[0x1E69E5920](v46);
  MEMORY[0x1E69E5920](v47);
  objc_storeStrong(&v94, 0);
  objc_storeStrong(&v95, 0);
  objc_storeStrong(&v96, 0);
  objc_storeStrong(location, 0);
}

- (void)setDeviceRestrictionState:(id)state
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  v5 = [AKDeviceSafetyRestrictionState alloc];
  machineId = [(AKRemoteDevice *)selfCopy machineId];
  serialNumber = [(AKRemoteDevice *)selfCopy serialNumber];
  v3 = -[AKDeviceSafetyRestrictionState initWithDeviceMID:serialNumber:restrictionReason:](v5, "initWithDeviceMID:serialNumber:restrictionReason:", machineId, serialNumber, [location[0] reason]);
  deviceRestrictionState = selfCopy->_deviceRestrictionState;
  selfCopy->_deviceRestrictionState = v3;
  MEMORY[0x1E69E5920](deviceRestrictionState);
  MEMORY[0x1E69E5920](serialNumber);
  MEMORY[0x1E69E5920](machineId);
  objc_storeStrong(location, 0);
}

- (AKRemoteDevice)initWithCoder:(id)coder
{
  v55[4] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v52.receiver = v3;
  v52.super_class = AKRemoteDevice;
  v51 = [(AKRemoteDevice *)&v52 init];
  selfCopy = v51;
  objc_storeStrong(&selfCopy, v51);
  if (v51)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = selfCopy->_name;
    selfCopy->_name = v4;
    MEMORY[0x1E69E5920](name);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_serialNumber"];
    serialNumber = selfCopy->_serialNumber;
    selfCopy->_serialNumber = v6;
    MEMORY[0x1E69E5920](serialNumber);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_buildNumber"];
    buildNumber = selfCopy->_buildNumber;
    selfCopy->_buildNumber = v8;
    MEMORY[0x1E69E5920](buildNumber);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_operatingSystemName"];
    operatingSystemName = selfCopy->_operatingSystemName;
    selfCopy->_operatingSystemName = v10;
    MEMORY[0x1E69E5920](operatingSystemName);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_operatingSystemVersion"];
    operatingSystemVersion = selfCopy->_operatingSystemVersion;
    selfCopy->_operatingSystemVersion = v12;
    MEMORY[0x1E69E5920](operatingSystemVersion);
    v14 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_model"];
    model = selfCopy->_model;
    selfCopy->_model = v14;
    MEMORY[0x1E69E5920](model);
    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_machineId"];
    machineId = selfCopy->_machineId;
    selfCopy->_machineId = v16;
    MEMORY[0x1E69E5920](machineId);
    v18 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_pushToken"];
    pushToken = selfCopy->_pushToken;
    selfCopy->_pushToken = v18;
    MEMORY[0x1E69E5920](pushToken);
    v20 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_lastUpdatedDate"];
    lastUpdatedDate = selfCopy->_lastUpdatedDate;
    selfCopy->_lastUpdatedDate = v20;
    MEMORY[0x1E69E5920](lastUpdatedDate);
    v22 = [location[0] decodeBoolForKey:@"_trusted"];
    selfCopy->_trusted = v22;
    v23 = [location[0] decodeBoolForKey:@"_inCircle"];
    selfCopy->_inCircle = v23;
    v24 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_colorCode"];
    colorCode = selfCopy->_colorCode;
    selfCopy->_colorCode = v24;
    MEMORY[0x1E69E5920](colorCode);
    v26 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_enclosureColorCode"];
    enclosureColorCode = selfCopy->_enclosureColorCode;
    selfCopy->_enclosureColorCode = v26;
    MEMORY[0x1E69E5920](enclosureColorCode);
    v28 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_coverGlassColorCode"];
    coverGlassColorCode = selfCopy->_coverGlassColorCode;
    selfCopy->_coverGlassColorCode = v28;
    MEMORY[0x1E69E5920](coverGlassColorCode);
    v30 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_housingColorCode"];
    housingColorCode = selfCopy->_housingColorCode;
    selfCopy->_housingColorCode = v30;
    MEMORY[0x1E69E5920](housingColorCode);
    v32 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_backingColorCode"];
    backingColorCode = selfCopy->_backingColorCode;
    selfCopy->_backingColorCode = v32;
    MEMORY[0x1E69E5920](backingColorCode);
    v48 = location[0];
    v47 = MEMORY[0x1E695DFD8];
    v55[0] = objc_opt_class();
    v55[1] = objc_opt_class();
    v55[2] = objc_opt_class();
    v55[3] = objc_opt_class();
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:4];
    v49 = [v47 setWithArray:?];
    v34 = [v48 decodeObjectOfClasses:? forKey:?];
    additionalInfo = selfCopy->_additionalInfo;
    selfCopy->_additionalInfo = v34;
    MEMORY[0x1E69E5920](additionalInfo);
    MEMORY[0x1E69E5920](v49);
    MEMORY[0x1E69E5920](v50);
    v36 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_services"];
    services = selfCopy->_services;
    selfCopy->_services = v36;
    MEMORY[0x1E69E5920](services);
    v38 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_lastCacheUpdatedDate"];
    lastCacheUpdatedDate = selfCopy->_lastCacheUpdatedDate;
    selfCopy->_lastCacheUpdatedDate = v38;
    MEMORY[0x1E69E5920](lastCacheUpdatedDate);
    v40 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_deletedDate"];
    deletedDate = selfCopy->_deletedDate;
    selfCopy->_deletedDate = v40;
    MEMORY[0x1E69E5920](deletedDate);
    v42 = [location[0] decodeIntegerForKey:@"_removalReason"];
    selfCopy->_removalReason = v42;
    v43 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_deviceRestrictionState"];
    deviceRestrictionState = selfCopy->_deviceRestrictionState;
    selfCopy->_deviceRestrictionState = v43;
    MEMORY[0x1E69E5920](deviceRestrictionState);
  }

  v46 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x1E69E9840];
  return v46;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_name forKey:@"_name"];
  [location[0] encodeObject:selfCopy->_serialNumber forKey:@"_serialNumber"];
  [location[0] encodeObject:selfCopy->_buildNumber forKey:@"_buildNumber"];
  [location[0] encodeObject:selfCopy->_operatingSystemName forKey:@"_operatingSystemName"];
  [location[0] encodeObject:selfCopy->_operatingSystemVersion forKey:@"_operatingSystemVersion"];
  [location[0] encodeObject:selfCopy->_model forKey:@"_model"];
  [location[0] encodeObject:selfCopy->_machineId forKey:@"_machineId"];
  [location[0] encodeObject:selfCopy->_pushToken forKey:@"_pushToken"];
  [location[0] encodeObject:selfCopy->_lastUpdatedDate forKey:@"_lastUpdatedDate"];
  [location[0] encodeBool:selfCopy->_trusted forKey:@"_trusted"];
  [location[0] encodeBool:selfCopy->_inCircle forKey:@"_inCircle"];
  [location[0] encodeObject:selfCopy->_colorCode forKey:@"_colorCode"];
  [location[0] encodeObject:selfCopy->_enclosureColorCode forKey:@"_enclosureColorCode"];
  [location[0] encodeObject:selfCopy->_coverGlassColorCode forKey:@"_coverGlassColorCode"];
  [location[0] encodeObject:selfCopy->_housingColorCode forKey:@"_housingColorCode"];
  [location[0] encodeObject:selfCopy->_backingColorCode forKey:@"_backingColorCode"];
  [location[0] encodeObject:selfCopy->_additionalInfo forKey:@"_additionalInfo"];
  [location[0] encodeObject:selfCopy->_services forKey:@"_services"];
  [location[0] encodeObject:selfCopy->_lastCacheUpdatedDate forKey:@"_lastCacheUpdatedDate"];
  [location[0] encodeObject:selfCopy->_deletedDate forKey:@"_deletedDate"];
  [location[0] encodeInteger:selfCopy->_removalReason forKey:@"_removalReason"];
  [location[0] encodeObject:selfCopy->_deviceRestrictionState forKey:@"_deviceRestrictionState"];
  objc_storeStrong(location, 0);
}

@end