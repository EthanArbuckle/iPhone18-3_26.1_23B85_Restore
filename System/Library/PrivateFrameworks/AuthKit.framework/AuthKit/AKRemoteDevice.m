@interface AKRemoteDevice
- (AKRemoteDevice)initWithCoder:(id)a3;
- (AKRemoteDevice)initWithInfo:(id)a3;
- (void)_initWithInfo:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDeviceRestrictionState:(id)a3;
@end

@implementation AKRemoteDevice

- (AKRemoteDevice)initWithInfo:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6 = [(AKRemoteDevice *)v3 init];
  v8 = v6;
  objc_storeStrong(&v8, v6);
  if (v6)
  {
    [(AKRemoteDevice *)v8 _initWithInfo:location[0]];
  }

  v5 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)_initWithInfo:(id)a3
{
  v98 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v54 = objc_opt_class();
  v55 = [location[0] objectForKeyedSubscript:@"name"];
  v3 = _AKSafeCast_27(v54, v55);
  name = v98->_name;
  v98->_name = v3;
  MEMORY[0x1E69E5920](name);
  MEMORY[0x1E69E5920](v55);
  v56 = objc_opt_class();
  v57 = [location[0] objectForKeyedSubscript:@"serialNumber"];
  v5 = _AKSafeCast_27(v56, v57);
  serialNumber = v98->_serialNumber;
  v98->_serialNumber = v5;
  MEMORY[0x1E69E5920](serialNumber);
  MEMORY[0x1E69E5920](v57);
  v58 = objc_opt_class();
  v59 = [location[0] objectForKeyedSubscript:@"buildNumber"];
  v7 = _AKSafeCast_27(v58, v59);
  buildNumber = v98->_buildNumber;
  v98->_buildNumber = v7;
  MEMORY[0x1E69E5920](buildNumber);
  MEMORY[0x1E69E5920](v59);
  v60 = objc_opt_class();
  v61 = [location[0] objectForKeyedSubscript:@"os"];
  v9 = _AKSafeCast_27(v60, v61);
  operatingSystemName = v98->_operatingSystemName;
  v98->_operatingSystemName = v9;
  MEMORY[0x1E69E5920](operatingSystemName);
  MEMORY[0x1E69E5920](v61);
  v62 = objc_opt_class();
  v63 = [location[0] objectForKeyedSubscript:@"osVersion"];
  v11 = _AKSafeCast_27(v62, v63);
  operatingSystemVersion = v98->_operatingSystemVersion;
  v98->_operatingSystemVersion = v11;
  MEMORY[0x1E69E5920](operatingSystemVersion);
  MEMORY[0x1E69E5920](v63);
  v64 = objc_opt_class();
  v65 = [location[0] objectForKeyedSubscript:@"model"];
  v13 = _AKSafeCast_27(v64, v65);
  model = v98->_model;
  v98->_model = v13;
  MEMORY[0x1E69E5920](model);
  MEMORY[0x1E69E5920](v65);
  v66 = objc_opt_class();
  v67 = [location[0] objectForKeyedSubscript:@"mid"];
  v15 = _AKSafeCast_27(v66, v67);
  machineId = v98->_machineId;
  v98->_machineId = v15;
  MEMORY[0x1E69E5920](machineId);
  MEMORY[0x1E69E5920](v67);
  v68 = objc_opt_class();
  v69 = [location[0] objectForKeyedSubscript:@"ptkn"];
  v17 = _AKSafeCast_27(v68, v69);
  pushToken = v98->_pushToken;
  v98->_pushToken = v17;
  MEMORY[0x1E69E5920](pushToken);
  MEMORY[0x1E69E5920](v69);
  v71 = MEMORY[0x1E695DF00];
  v70 = objc_opt_class();
  v73 = [location[0] objectForKeyedSubscript:@"lastUpdatedDate"];
  v72 = _AKSafeCast_27(v70, v73);
  [v72 doubleValue];
  v20 = [v71 dateWithTimeIntervalSince1970:v19 / 1000.0];
  lastUpdatedDate = v98->_lastUpdatedDate;
  v98->_lastUpdatedDate = v20;
  MEMORY[0x1E69E5920](lastUpdatedDate);
  MEMORY[0x1E69E5920](v72);
  MEMORY[0x1E69E5920](v73);
  v74 = objc_opt_class();
  v76 = [location[0] objectForKeyedSubscript:@"trusted"];
  v75 = _AKSafeCast_27(v74, v76);
  v22 = [v75 BOOLValue];
  v98->_trusted = v22;
  MEMORY[0x1E69E5920](v75);
  MEMORY[0x1E69E5920](v76);
  v77 = objc_opt_class();
  v79 = [location[0] objectForKeyedSubscript:@"circleStatus"];
  v78 = _AKSafeCast_27(v77, v79);
  v23 = [v78 BOOLValue];
  v98->_inCircle = v23;
  MEMORY[0x1E69E5920](v78);
  MEMORY[0x1E69E5920](v79);
  v80 = objc_opt_class();
  v81 = [location[0] objectForKeyedSubscript:@"dc"];
  v24 = _AKSafeCast_27(v80, v81);
  colorCode = v98->_colorCode;
  v98->_colorCode = v24;
  MEMORY[0x1E69E5920](colorCode);
  MEMORY[0x1E69E5920](v81);
  v82 = objc_opt_class();
  v83 = [location[0] objectForKeyedSubscript:@"dec"];
  v26 = _AKSafeCast_27(v82, v83);
  enclosureColorCode = v98->_enclosureColorCode;
  v98->_enclosureColorCode = v26;
  MEMORY[0x1E69E5920](enclosureColorCode);
  MEMORY[0x1E69E5920](v83);
  v84 = objc_opt_class();
  v85 = [location[0] objectForKeyedSubscript:@"clcg"];
  v28 = _AKSafeCast_27(v84, v85);
  coverGlassColorCode = v98->_coverGlassColorCode;
  v98->_coverGlassColorCode = v28;
  MEMORY[0x1E69E5920](coverGlassColorCode);
  MEMORY[0x1E69E5920](v85);
  v86 = objc_opt_class();
  v87 = [location[0] objectForKeyedSubscript:@"clhs"];
  v30 = _AKSafeCast_27(v86, v87);
  housingColorCode = v98->_housingColorCode;
  v98->_housingColorCode = v30;
  MEMORY[0x1E69E5920](housingColorCode);
  MEMORY[0x1E69E5920](v87);
  v88 = objc_opt_class();
  v89 = [location[0] objectForKeyedSubscript:@"clbg"];
  v32 = _AKSafeCast_27(v88, v89);
  backingColorCode = v98->_backingColorCode;
  v98->_backingColorCode = v32;
  MEMORY[0x1E69E5920](backingColorCode);
  MEMORY[0x1E69E5920](v89);
  v90 = objc_opt_class();
  v91 = [location[0] objectForKeyedSubscript:@"additionalInfo"];
  v34 = _AKSafeCast_27(v90, v91);
  additionalInfo = v98->_additionalInfo;
  v98->_additionalInfo = v34;
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
    lastCacheUpdatedDate = v98->_lastCacheUpdatedDate;
    v98->_lastCacheUpdatedDate = v37;
    MEMORY[0x1E69E5920](lastCacheUpdatedDate);
  }

  v49 = objc_opt_class();
  v50 = [location[0] objectForKeyedSubscript:@"services"];
  v95 = _AKSafeCast_27(v49, v50);
  MEMORY[0x1E69E5920](v50);
  v39 = [v95 stringByReplacingOccurrencesOfString:@"|" withString:{@", "}];
  services = v98->_services;
  v98->_services = v39;
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
    deletedDate = v98->_deletedDate;
    v98->_deletedDate = v42;
    MEMORY[0x1E69E5920](deletedDate);
  }

  v45 = objc_opt_class();
  v47 = [location[0] objectForKeyedSubscript:@"reason"];
  v46 = _AKSafeCast_27(v45, v47);
  v44 = [v46 integerValue];
  v98->_removalReason = v44;
  MEMORY[0x1E69E5920](v46);
  MEMORY[0x1E69E5920](v47);
  objc_storeStrong(&v94, 0);
  objc_storeStrong(&v95, 0);
  objc_storeStrong(&v96, 0);
  objc_storeStrong(location, 0);
}

- (void)setDeviceRestrictionState:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [AKDeviceSafetyRestrictionState alloc];
  v7 = [(AKRemoteDevice *)v9 machineId];
  v6 = [(AKRemoteDevice *)v9 serialNumber];
  v3 = -[AKDeviceSafetyRestrictionState initWithDeviceMID:serialNumber:restrictionReason:](v5, "initWithDeviceMID:serialNumber:restrictionReason:", v7, v6, [location[0] reason]);
  deviceRestrictionState = v9->_deviceRestrictionState;
  v9->_deviceRestrictionState = v3;
  MEMORY[0x1E69E5920](deviceRestrictionState);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  objc_storeStrong(location, 0);
}

- (AKRemoteDevice)initWithCoder:(id)a3
{
  v55[4] = *MEMORY[0x1E69E9840];
  v54 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v54;
  v54 = 0;
  v52.receiver = v3;
  v52.super_class = AKRemoteDevice;
  v51 = [(AKRemoteDevice *)&v52 init];
  v54 = v51;
  objc_storeStrong(&v54, v51);
  if (v51)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v54->_name;
    v54->_name = v4;
    MEMORY[0x1E69E5920](name);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_serialNumber"];
    serialNumber = v54->_serialNumber;
    v54->_serialNumber = v6;
    MEMORY[0x1E69E5920](serialNumber);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_buildNumber"];
    buildNumber = v54->_buildNumber;
    v54->_buildNumber = v8;
    MEMORY[0x1E69E5920](buildNumber);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_operatingSystemName"];
    operatingSystemName = v54->_operatingSystemName;
    v54->_operatingSystemName = v10;
    MEMORY[0x1E69E5920](operatingSystemName);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_operatingSystemVersion"];
    operatingSystemVersion = v54->_operatingSystemVersion;
    v54->_operatingSystemVersion = v12;
    MEMORY[0x1E69E5920](operatingSystemVersion);
    v14 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_model"];
    model = v54->_model;
    v54->_model = v14;
    MEMORY[0x1E69E5920](model);
    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_machineId"];
    machineId = v54->_machineId;
    v54->_machineId = v16;
    MEMORY[0x1E69E5920](machineId);
    v18 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_pushToken"];
    pushToken = v54->_pushToken;
    v54->_pushToken = v18;
    MEMORY[0x1E69E5920](pushToken);
    v20 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_lastUpdatedDate"];
    lastUpdatedDate = v54->_lastUpdatedDate;
    v54->_lastUpdatedDate = v20;
    MEMORY[0x1E69E5920](lastUpdatedDate);
    v22 = [location[0] decodeBoolForKey:@"_trusted"];
    v54->_trusted = v22;
    v23 = [location[0] decodeBoolForKey:@"_inCircle"];
    v54->_inCircle = v23;
    v24 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_colorCode"];
    colorCode = v54->_colorCode;
    v54->_colorCode = v24;
    MEMORY[0x1E69E5920](colorCode);
    v26 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_enclosureColorCode"];
    enclosureColorCode = v54->_enclosureColorCode;
    v54->_enclosureColorCode = v26;
    MEMORY[0x1E69E5920](enclosureColorCode);
    v28 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_coverGlassColorCode"];
    coverGlassColorCode = v54->_coverGlassColorCode;
    v54->_coverGlassColorCode = v28;
    MEMORY[0x1E69E5920](coverGlassColorCode);
    v30 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_housingColorCode"];
    housingColorCode = v54->_housingColorCode;
    v54->_housingColorCode = v30;
    MEMORY[0x1E69E5920](housingColorCode);
    v32 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_backingColorCode"];
    backingColorCode = v54->_backingColorCode;
    v54->_backingColorCode = v32;
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
    additionalInfo = v54->_additionalInfo;
    v54->_additionalInfo = v34;
    MEMORY[0x1E69E5920](additionalInfo);
    MEMORY[0x1E69E5920](v49);
    MEMORY[0x1E69E5920](v50);
    v36 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_services"];
    services = v54->_services;
    v54->_services = v36;
    MEMORY[0x1E69E5920](services);
    v38 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_lastCacheUpdatedDate"];
    lastCacheUpdatedDate = v54->_lastCacheUpdatedDate;
    v54->_lastCacheUpdatedDate = v38;
    MEMORY[0x1E69E5920](lastCacheUpdatedDate);
    v40 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_deletedDate"];
    deletedDate = v54->_deletedDate;
    v54->_deletedDate = v40;
    MEMORY[0x1E69E5920](deletedDate);
    v42 = [location[0] decodeIntegerForKey:@"_removalReason"];
    v54->_removalReason = v42;
    v43 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_deviceRestrictionState"];
    deviceRestrictionState = v54->_deviceRestrictionState;
    v54->_deviceRestrictionState = v43;
    MEMORY[0x1E69E5920](deviceRestrictionState);
  }

  v46 = MEMORY[0x1E69E5928](v54);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v54, 0);
  *MEMORY[0x1E69E9840];
  return v46;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_name forKey:@"_name"];
  [location[0] encodeObject:v4->_serialNumber forKey:@"_serialNumber"];
  [location[0] encodeObject:v4->_buildNumber forKey:@"_buildNumber"];
  [location[0] encodeObject:v4->_operatingSystemName forKey:@"_operatingSystemName"];
  [location[0] encodeObject:v4->_operatingSystemVersion forKey:@"_operatingSystemVersion"];
  [location[0] encodeObject:v4->_model forKey:@"_model"];
  [location[0] encodeObject:v4->_machineId forKey:@"_machineId"];
  [location[0] encodeObject:v4->_pushToken forKey:@"_pushToken"];
  [location[0] encodeObject:v4->_lastUpdatedDate forKey:@"_lastUpdatedDate"];
  [location[0] encodeBool:v4->_trusted forKey:@"_trusted"];
  [location[0] encodeBool:v4->_inCircle forKey:@"_inCircle"];
  [location[0] encodeObject:v4->_colorCode forKey:@"_colorCode"];
  [location[0] encodeObject:v4->_enclosureColorCode forKey:@"_enclosureColorCode"];
  [location[0] encodeObject:v4->_coverGlassColorCode forKey:@"_coverGlassColorCode"];
  [location[0] encodeObject:v4->_housingColorCode forKey:@"_housingColorCode"];
  [location[0] encodeObject:v4->_backingColorCode forKey:@"_backingColorCode"];
  [location[0] encodeObject:v4->_additionalInfo forKey:@"_additionalInfo"];
  [location[0] encodeObject:v4->_services forKey:@"_services"];
  [location[0] encodeObject:v4->_lastCacheUpdatedDate forKey:@"_lastCacheUpdatedDate"];
  [location[0] encodeObject:v4->_deletedDate forKey:@"_deletedDate"];
  [location[0] encodeInteger:v4->_removalReason forKey:@"_removalReason"];
  [location[0] encodeObject:v4->_deviceRestrictionState forKey:@"_deviceRestrictionState"];
  objc_storeStrong(location, 0);
}

@end