@interface CTRemoteDevice
- (BOOL)isEqual:(id)equal;
- (CTRemoteDevice)init;
- (CTRemoteDevice)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  deviceID = [(CTRemoteDevice *)self deviceID];
  [v3 appendFormat:@" deviceID=%@", deviceID];

  remoteDisplayPlans = [(CTRemoteDevice *)self remoteDisplayPlans];
  [v3 appendFormat:@" remoteDisplayPlans:%@", remoteDisplayPlans];

  remotePlans = [(CTRemoteDevice *)self remotePlans];
  [v3 appendFormat:@" remotePlans=%@", remotePlans];

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
      deviceID = [(CTRemoteDevice *)self deviceID];
      deviceID2 = [(CTRemoteDevice *)equalCopy deviceID];
      if (deviceID != deviceID2)
      {
        deviceID3 = [(CTRemoteDevice *)self deviceID];
        deviceID4 = [(CTRemoteDevice *)equalCopy deviceID];
        if (![deviceID3 isEqual:deviceID4])
        {
          v9 = 0;
          goto LABEL_18;
        }
      }

      remoteDisplayPlans = [(CTRemoteDevice *)self remoteDisplayPlans];
      remoteDisplayPlans2 = [(CTRemoteDevice *)equalCopy remoteDisplayPlans];
      if (remoteDisplayPlans != remoteDisplayPlans2)
      {
        remoteDisplayPlans3 = [(CTRemoteDevice *)self remoteDisplayPlans];
        remoteDisplayPlans4 = [(CTRemoteDevice *)equalCopy remoteDisplayPlans];
        if (![remoteDisplayPlans3 isEqual:remoteDisplayPlans4])
        {
          v9 = 0;
          goto LABEL_16;
        }

        v25 = remoteDisplayPlans4;
        v26 = remoteDisplayPlans3;
      }

      remotePlans = [(CTRemoteDevice *)self remotePlans];
      remotePlans2 = [(CTRemoteDevice *)equalCopy remotePlans];
      v16 = remotePlans2;
      if (remotePlans == remotePlans2)
      {

        v9 = 1;
      }

      else
      {
        [(CTRemoteDevice *)self remotePlans];
        v17 = v24 = deviceID3;
        [(CTRemoteDevice *)equalCopy remotePlans];
        v23 = remoteDisplayPlans;
        v18 = deviceID2;
        v19 = deviceID;
        v21 = v20 = deviceID4;
        v9 = [v17 isEqual:v21];

        deviceID4 = v20;
        deviceID = v19;
        deviceID2 = v18;
        remoteDisplayPlans = v23;

        deviceID3 = v24;
      }

      remoteDisplayPlans4 = v25;
      remoteDisplayPlans3 = v26;
      if (remoteDisplayPlans == remoteDisplayPlans2)
      {
LABEL_17:

        if (deviceID == deviceID2)
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

- (CTRemoteDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CTRemoteDevice;
  v5 = [(CTRemoteDevice *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
    deviceID = v5->_deviceID;
    v5->_deviceID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"remoteDisplayPlans"];
    remoteDisplayPlans = v5->_remoteDisplayPlans;
    v5->_remoteDisplayPlans = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"remotePlans"];
    remotePlans = v5->_remotePlans;
    v5->_remotePlans = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  deviceID = self->_deviceID;
  coderCopy = coder;
  [coderCopy encodeObject:deviceID forKey:@"deviceID"];
  [coderCopy encodeObject:self->_remoteDisplayPlans forKey:@"remoteDisplayPlans"];
  [coderCopy encodeObject:self->_remotePlans forKey:@"remotePlans"];
}

@end