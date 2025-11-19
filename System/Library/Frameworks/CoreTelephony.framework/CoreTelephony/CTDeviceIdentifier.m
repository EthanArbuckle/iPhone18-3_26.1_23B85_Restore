@interface CTDeviceIdentifier
- (BOOL)isEqual:(id)a3;
- (BOOL)isVinylCapable;
- (CTDeviceIdentifier)init;
- (CTDeviceIdentifier)initWithCoder:(id)a3;
- (CTDeviceIdentifier)initWithDeviceType:(unint64_t)a3 EID:(id)a4 IMEI:(id)a5 idsDeviceId:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (CTDeviceIdentifier)initWithDeviceType:(unint64_t)a3 EID:(id)a4 IMEI:(id)a5 idsDeviceId:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = CTDeviceIdentifier;
  v13 = [(CTDeviceIdentifier *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_deviceType = a3;
    v15 = [v10 copy];
    EID = v14->_EID;
    v14->_EID = v15;

    v17 = [v11 copy];
    IMEI = v14->_IMEI;
    v14->_IMEI = v17;

    v19 = [v12 copy];
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
  v4 = [(CTDeviceIdentifier *)self deviceName];
  [v3 appendFormat:@" deviceName=%@", v4];

  v5 = [(CTDeviceIdentifier *)self modelName];
  [v3 appendFormat:@" modelName=%@", v5];

  [v3 appendFormat:@" deviceType=%s", CTDeviceTypeAsString(-[CTDeviceIdentifier deviceType](self, "deviceType"))];
  v6 = [(CTDeviceIdentifier *)self EID];
  [v3 appendFormat:@" EID=%@", v6];

  v7 = [(CTDeviceIdentifier *)self IMEI];
  [v3 appendFormat:@" IMEI=%@", v7];

  v8 = [(CTDeviceIdentifier *)self idsDeviceId];
  [v3 appendFormat:@" idsDeviceId=%@", v8];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (v6 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(CTDeviceIdentifier *)self deviceName];
      v8 = [(CTDeviceIdentifier *)v6 deviceName];
      if (v7 != v8)
      {
        v3 = [(CTDeviceIdentifier *)self deviceName];
        v4 = [(CTDeviceIdentifier *)v6 deviceName];
        if (![v3 isEqualToString:v4])
        {
          v9 = 0;
          goto LABEL_15;
        }
      }

      v10 = [(CTDeviceIdentifier *)self modelName];
      v11 = [(CTDeviceIdentifier *)v6 modelName];
      if (v10 != v11 || (v12 = [(CTDeviceIdentifier *)self deviceType], v12 != [(CTDeviceIdentifier *)v6 deviceType]))
      {

        v9 = 0;
        goto LABEL_14;
      }

      v13 = [(CTDeviceIdentifier *)self EID];
      v14 = [(CTDeviceIdentifier *)v6 EID];
      v33 = v13;
      if (v13 != v14)
      {
        v15 = [(CTDeviceIdentifier *)self EID];
        v29 = [(CTDeviceIdentifier *)v6 EID];
        v30 = v15;
        if (![v15 isEqualToString:v29])
        {
          v9 = 0;
          goto LABEL_29;
        }
      }

      v17 = [(CTDeviceIdentifier *)self IMEI];
      v31 = [(CTDeviceIdentifier *)v6 IMEI];
      v32 = v17;
      if (v17 == v31)
      {
        v28 = v14;
      }

      else
      {
        v18 = [(CTDeviceIdentifier *)self IMEI];
        v26 = [(CTDeviceIdentifier *)v6 IMEI];
        v27 = v18;
        if (![v18 isEqualToString:?])
        {
          v9 = 0;
          v23 = v31;
          goto LABEL_27;
        }

        v28 = v14;
      }

      v19 = [(CTDeviceIdentifier *)self idsDeviceId];
      v20 = [(CTDeviceIdentifier *)v6 idsDeviceId];
      v21 = v20;
      if (v19 == v20)
      {

        v9 = 1;
      }

      else
      {
        v24 = [(CTDeviceIdentifier *)self idsDeviceId];
        [(CTDeviceIdentifier *)v6 idsDeviceId];
        v22 = v25 = v19;
        v9 = [v24 isEqualToString:v22];
      }

      v23 = v31;
      v14 = v28;
      if (v32 == v31)
      {
LABEL_28:

        if (v33 == v14)
        {
LABEL_30:

LABEL_14:
          if (v7 == v8)
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

- (CTDeviceIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CTDeviceIdentifier;
  v5 = [(CTDeviceIdentifier *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelName"];
    modelName = v5->_modelName;
    v5->_modelName = v8;

    v5->_deviceType = [v4 decodeIntegerForKey:@"deviceType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EID"];
    EID = v5->_EID;
    v5->_EID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IMEI"];
    IMEI = v5->_IMEI;
    v5->_IMEI = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idsDeviceId"];
    idsDeviceId = v5->_idsDeviceId;
    v5->_idsDeviceId = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  deviceName = self->_deviceName;
  v5 = a3;
  [v5 encodeObject:deviceName forKey:@"deviceName"];
  [v5 encodeObject:self->_modelName forKey:@"modelName"];
  [v5 encodeInteger:self->_deviceType forKey:@"deviceType"];
  [v5 encodeObject:self->_EID forKey:@"EID"];
  [v5 encodeObject:self->_IMEI forKey:@"IMEI"];
  [v5 encodeObject:self->_idsDeviceId forKey:@"idsDeviceId"];
}

@end