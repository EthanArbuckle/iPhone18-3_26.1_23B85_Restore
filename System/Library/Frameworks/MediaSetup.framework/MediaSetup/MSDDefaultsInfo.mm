@interface MSDDefaultsInfo
- (MSDDefaultsInfo)initWithCoder:(id)a3;
- (MSDDefaultsInfo)initWithService:(id)a3 homeID:(id)a4 homeUserID:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSDDefaultsInfo

- (MSDDefaultsInfo)initWithService:(id)a3 homeID:(id)a4 homeUserID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = MSDDefaultsInfo;
  v12 = [(MSDDefaultsInfo *)&v16 init];
  p_isa = &v12->super.isa;
  if (!v12)
  {
    goto LABEL_5;
  }

  v14 = 0;
  if (v9 && v11)
  {
    objc_storeStrong(&v12->_service, a3);
    objc_storeStrong(p_isa + 5, a4);
    objc_storeStrong(p_isa + 6, a5);
LABEL_5:
    v14 = p_isa;
  }

  return v14;
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 na_safeSetObject:self->_homeID forKey:@"homeID"];
  [v3 na_safeSetObject:self->_homeUserID forKey:@"homeUserID"];
  [v3 na_safeSetObject:self->_recordName forKey:@"recordName"];
  [v3 na_safeSetObject:self->_recordType forKey:@"recordType"];
  [v3 na_safeSetObject:self->_recordZoneName forKey:@"recordZoneName"];
  v4 = [MEMORY[0x277CCAB68] stringWithFormat:@"<MSDefaultsInfo: %@", v3];
  v5 = v4;
  if (self->_service)
  {
    [v4 appendFormat:@"MediaService = %@>\n", self->_service];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  service = self->_service;
  v5 = a3;
  [v5 encodeObject:service forKey:@"kMediaServiceEncodeKey"];
  [v5 encodeObject:self->_homeID forKey:@"kHomeIDEncodeKey"];
  [v5 encodeObject:self->_homeUserID forKey:@"kHomeUserIDEncodeKey"];
  [v5 encodeObject:self->_recordName forKey:@"kRecordNameEncodeKey"];
  [v5 encodeObject:self->_recordType forKey:@"kRecordTypeEncodeKey"];
  [v5 encodeObject:self->_recordZoneName forKey:@"kRecordZoneNameEncodeKey"];
}

- (MSDDefaultsInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMediaServiceEncodeKey"];
  service = self->_service;
  self->_service = v5;

  if (!self->_service)
  {
    goto LABEL_6;
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kHomeIDEncodeKey"];
  homeID = self->_homeID;
  self->_homeID = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kHomeUserIDEncodeKey"];
  homeUserID = self->_homeUserID;
  self->_homeUserID = v9;

  if (self->_homeUserID)
  {
    v11 = [(MSDDefaultsInfo *)self initWithService:self->_service homeID:self->_homeID homeUserID:?];
    if (v11)
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kRecordNameEncodeKey"];
      recordName = v11->_recordName;
      v11->_recordName = v12;

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kRecordTypeEncodeKey"];
      recordType = v11->_recordType;
      v11->_recordType = v14;

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kRecordZoneNameEncodeKey"];
      recordZoneName = v11->_recordZoneName;
      v11->_recordZoneName = v16;
    }

    self = v11;
    v18 = self;
  }

  else
  {
LABEL_6:
    v18 = 0;
  }

  return v18;
}

@end