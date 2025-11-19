@interface CTRemoteDevice
- (BOOL)isEqual:(id)a3;
- (CTRemoteDevice)init;
- (CTRemoteDevice)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTRemoteDevice

- (CTRemoteDevice)init
{
  v8.receiver = self;
  v8.super_class = CTRemoteDevice;
  v2 = [(CTRemoteDevice *)&v8 init];
  v3 = v2;
  if (v2)
  {
    deviceID = v2->_deviceID;
    v2->_deviceID = 0;

    remoteDisplayPlans = v3->_remoteDisplayPlans;
    v3->_remoteDisplayPlans = 0;

    remotePlans = v3->_remotePlans;
    v3->_remotePlans = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTRemoteDevice *)self deviceID];
  [v3 appendFormat:@" deviceID=%@", v4];

  v5 = [(CTRemoteDevice *)self remoteDisplayPlans];
  [v3 appendFormat:@" remoteDisplayPlans:%@", v5];

  v6 = [(CTRemoteDevice *)self remotePlans];
  [v3 appendFormat:@" remotePlans=%@", v6];

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
      v7 = [(CTRemoteDevice *)self deviceID];
      v8 = [(CTRemoteDevice *)v6 deviceID];
      if (v7 != v8)
      {
        v3 = [(CTRemoteDevice *)self deviceID];
        v4 = [(CTRemoteDevice *)v6 deviceID];
        if (![v3 isEqual:v4])
        {
          v9 = 0;
          goto LABEL_18;
        }
      }

      v10 = [(CTRemoteDevice *)self remoteDisplayPlans];
      v11 = [(CTRemoteDevice *)v6 remoteDisplayPlans];
      if (v10 != v11)
      {
        v12 = [(CTRemoteDevice *)self remoteDisplayPlans];
        v13 = [(CTRemoteDevice *)v6 remoteDisplayPlans];
        if (![v12 isEqual:v13])
        {
          v9 = 0;
          goto LABEL_16;
        }

        v25 = v13;
        v26 = v12;
      }

      v14 = [(CTRemoteDevice *)self remotePlans];
      v15 = [(CTRemoteDevice *)v6 remotePlans];
      v16 = v15;
      if (v14 == v15)
      {

        v9 = 1;
      }

      else
      {
        [(CTRemoteDevice *)self remotePlans];
        v17 = v24 = v3;
        [(CTRemoteDevice *)v6 remotePlans];
        v23 = v10;
        v18 = v8;
        v19 = v7;
        v21 = v20 = v4;
        v9 = [v17 isEqual:v21];

        v4 = v20;
        v7 = v19;
        v8 = v18;
        v10 = v23;

        v3 = v24;
      }

      v13 = v25;
      v12 = v26;
      if (v10 == v11)
      {
LABEL_17:

        if (v7 == v8)
        {
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:

        goto LABEL_19;
      }

LABEL_16:

      goto LABEL_17;
    }

    v9 = 0;
  }

LABEL_20:

  return v9;
}

- (CTRemoteDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CTRemoteDevice;
  v5 = [(CTRemoteDevice *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
    deviceID = v5->_deviceID;
    v5->_deviceID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"remoteDisplayPlans"];
    remoteDisplayPlans = v5->_remoteDisplayPlans;
    v5->_remoteDisplayPlans = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"remotePlans"];
    remotePlans = v5->_remotePlans;
    v5->_remotePlans = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  deviceID = self->_deviceID;
  v5 = a3;
  [v5 encodeObject:deviceID forKey:@"deviceID"];
  [v5 encodeObject:self->_remoteDisplayPlans forKey:@"remoteDisplayPlans"];
  [v5 encodeObject:self->_remotePlans forKey:@"remotePlans"];
}

@end