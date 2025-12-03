@interface CTDeviceIdentifier
- (BOOL)isEqual:(id)equal;
- (BOOL)isVinylCapable;
- (CTDeviceIdentifier)init;
- (CTDeviceIdentifier)initWithCoder:(id)coder;
- (CTDeviceIdentifier)initWithDeviceType:(unint64_t)type EID:(id)d IMEI:(id)i idsDeviceId:(id)id;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTDeviceIdentifier

- (CTDeviceIdentifier)init
{
  v10.receiver = self;
  v10.super_class = CTDeviceIdentifier;
  v2 = [(CTDeviceIdentifier *)&v10 init];
  v3 = v2;
  if (v2)
  {
    deviceName = v2->_deviceName;
    v2->_deviceName = 0;

    modelName = v3->_modelName;
    v3->_modelName = 0;

    EID = v3->_EID;
    v3->_deviceType = 0;
    v3->_EID = 0;

    IMEI = v3->_IMEI;
    v3->_IMEI = 0;

    idsDeviceId = v3->_idsDeviceId;
    v3->_idsDeviceId = 0;
  }

  return v3;
}

- (CTDeviceIdentifier)initWithDeviceType:(unint64_t)type EID:(id)d IMEI:(id)i idsDeviceId:(id)id
{
  dCopy = d;
  iCopy = i;
  idCopy = id;
  v22.receiver = self;
  v22.super_class = CTDeviceIdentifier;
  v13 = [(CTDeviceIdentifier *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_deviceType = type;
    v15 = [dCopy copy];
    EID = v14->_EID;
    v14->_EID = v15;

    v17 = [iCopy copy];
    IMEI = v14->_IMEI;
    v14->_IMEI = v17;

    v19 = [idCopy copy];
    idsDeviceId = v14->_idsDeviceId;
    v14->_idsDeviceId = v19;
  }

  return v14;
}

- (BOOL)isVinylCapable
{
  EID = self->_EID;
  if (EID)
  {
    EID = [(NSString *)EID length];
    if (EID)
    {
      LOBYTE(EID) = [(NSString *)self->_EID caseInsensitiveCompare:@"00000000000000000000000000000000"]!= NSOrderedSame;
    }
  }

  return EID;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  deviceName = [(CTDeviceIdentifier *)self deviceName];
  [v3 appendFormat:@" deviceName=%@", deviceName];

  modelName = [(CTDeviceIdentifier *)self modelName];
  [v3 appendFormat:@" modelName=%@", modelName];

  [v3 appendFormat:@" deviceType=%s", CTDeviceTypeAsString(-[CTDeviceIdentifier deviceType](self, "deviceType"))];
  v6 = [(CTDeviceIdentifier *)self EID];
  [v3 appendFormat:@" EID=%@", v6];

  iMEI = [(CTDeviceIdentifier *)self IMEI];
  [v3 appendFormat:@" IMEI=%@", iMEI];

  idsDeviceId = [(CTDeviceIdentifier *)self idsDeviceId];
  [v3 appendFormat:@" idsDeviceId=%@", idsDeviceId];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      deviceName = [(CTDeviceIdentifier *)self deviceName];
      deviceName2 = [(CTDeviceIdentifier *)equalCopy deviceName];
      if (deviceName != deviceName2)
      {
        deviceName3 = [(CTDeviceIdentifier *)self deviceName];
        deviceName4 = [(CTDeviceIdentifier *)equalCopy deviceName];
        if (![deviceName3 isEqualToString:deviceName4])
        {
          v9 = 0;
          goto LABEL_15;
        }
      }

      modelName = [(CTDeviceIdentifier *)self modelName];
      modelName2 = [(CTDeviceIdentifier *)equalCopy modelName];
      if (modelName != modelName2 || (v12 = [(CTDeviceIdentifier *)self deviceType], v12 != [(CTDeviceIdentifier *)equalCopy deviceType]))
      {

        v9 = 0;
        goto LABEL_14;
      }

      v13 = [(CTDeviceIdentifier *)self EID];
      v14 = [(CTDeviceIdentifier *)equalCopy EID];
      v33 = v13;
      if (v13 != v14)
      {
        v15 = [(CTDeviceIdentifier *)self EID];
        v29 = [(CTDeviceIdentifier *)equalCopy EID];
        v30 = v15;
        if (![v15 isEqualToString:v29])
        {
          v9 = 0;
          goto LABEL_29;
        }
      }

      iMEI = [(CTDeviceIdentifier *)self IMEI];
      iMEI2 = [(CTDeviceIdentifier *)equalCopy IMEI];
      v32 = iMEI;
      if (iMEI == iMEI2)
      {
        v28 = v14;
      }

      else
      {
        iMEI3 = [(CTDeviceIdentifier *)self IMEI];
        iMEI4 = [(CTDeviceIdentifier *)equalCopy IMEI];
        v27 = iMEI3;
        if (![iMEI3 isEqualToString:?])
        {
          v9 = 0;
          v23 = iMEI2;
          goto LABEL_27;
        }

        v28 = v14;
      }

      idsDeviceId = [(CTDeviceIdentifier *)self idsDeviceId];
      idsDeviceId2 = [(CTDeviceIdentifier *)equalCopy idsDeviceId];
      v21 = idsDeviceId2;
      if (idsDeviceId == idsDeviceId2)
      {

        v9 = 1;
      }

      else
      {
        idsDeviceId3 = [(CTDeviceIdentifier *)self idsDeviceId];
        [(CTDeviceIdentifier *)equalCopy idsDeviceId];
        v22 = v25 = idsDeviceId;
        v9 = [idsDeviceId3 isEqualToString:v22];
      }

      v23 = iMEI2;
      v14 = v28;
      if (v32 == iMEI2)
      {
LABEL_28:

        if (v33 == v14)
        {
LABEL_30:

LABEL_14:
          if (deviceName == deviceName2)
          {
LABEL_16:

            goto LABEL_17;
          }

LABEL_15:

          goto LABEL_16;
        }

LABEL_29:

        goto LABEL_30;
      }

LABEL_27:

      goto LABEL_28;
    }

    v9 = 0;
  }

LABEL_17:

  return v9;
}

- (CTDeviceIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CTDeviceIdentifier;
  v5 = [(CTDeviceIdentifier *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelName"];
    modelName = v5->_modelName;
    v5->_modelName = v8;

    v5->_deviceType = [coderCopy decodeIntegerForKey:@"deviceType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EID"];
    EID = v5->_EID;
    v5->_EID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMEI"];
    IMEI = v5->_IMEI;
    v5->_IMEI = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsDeviceId"];
    idsDeviceId = v5->_idsDeviceId;
    v5->_idsDeviceId = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  deviceName = self->_deviceName;
  coderCopy = coder;
  [coderCopy encodeObject:deviceName forKey:@"deviceName"];
  [coderCopy encodeObject:self->_modelName forKey:@"modelName"];
  [coderCopy encodeInteger:self->_deviceType forKey:@"deviceType"];
  [coderCopy encodeObject:self->_EID forKey:@"EID"];
  [coderCopy encodeObject:self->_IMEI forKey:@"IMEI"];
  [coderCopy encodeObject:self->_idsDeviceId forKey:@"idsDeviceId"];
}

@end