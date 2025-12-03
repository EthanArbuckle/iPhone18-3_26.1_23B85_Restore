@interface MSDDefaultsInfo
- (MSDDefaultsInfo)initWithCoder:(id)coder;
- (MSDDefaultsInfo)initWithService:(id)service homeID:(id)d homeUserID:(id)iD;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSDDefaultsInfo

- (MSDDefaultsInfo)initWithService:(id)service homeID:(id)d homeUserID:(id)iD
{
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  v16.receiver = self;
  v16.super_class = MSDDefaultsInfo;
  v12 = [(MSDDefaultsInfo *)&v16 init];
  p_isa = &v12->super.isa;
  if (!v12)
  {
    goto LABEL_5;
  }

  v14 = 0;
  if (serviceCopy && iDCopy)
  {
    objc_storeStrong(&v12->_service, service);
    objc_storeStrong(p_isa + 5, d);
    objc_storeStrong(p_isa + 6, iD);
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

- (void)encodeWithCoder:(id)coder
{
  service = self->_service;
  coderCopy = coder;
  [coderCopy encodeObject:service forKey:@"kMediaServiceEncodeKey"];
  [coderCopy encodeObject:self->_homeID forKey:@"kHomeIDEncodeKey"];
  [coderCopy encodeObject:self->_homeUserID forKey:@"kHomeUserIDEncodeKey"];
  [coderCopy encodeObject:self->_recordName forKey:@"kRecordNameEncodeKey"];
  [coderCopy encodeObject:self->_recordType forKey:@"kRecordTypeEncodeKey"];
  [coderCopy encodeObject:self->_recordZoneName forKey:@"kRecordZoneNameEncodeKey"];
}

- (MSDDefaultsInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMediaServiceEncodeKey"];
  service = self->_service;
  self->_service = v5;

  if (!self->_service)
  {
    goto LABEL_6;
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kHomeIDEncodeKey"];
  homeID = self->_homeID;
  self->_homeID = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kHomeUserIDEncodeKey"];
  homeUserID = self->_homeUserID;
  self->_homeUserID = v9;

  if (self->_homeUserID)
  {
    v11 = [(MSDDefaultsInfo *)self initWithService:self->_service homeID:self->_homeID homeUserID:?];
    if (v11)
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRecordNameEncodeKey"];
      recordName = v11->_recordName;
      v11->_recordName = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRecordTypeEncodeKey"];
      recordType = v11->_recordType;
      v11->_recordType = v14;

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRecordZoneNameEncodeKey"];
      recordZoneName = v11->_recordZoneName;
      v11->_recordZoneName = v16;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
LABEL_6:
    selfCopy = 0;
  }

  return selfCopy;
}

@end