@interface OTJoiningConfiguration
- (OTJoiningConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OTJoiningConfiguration

- (OTJoiningConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = OTJoiningConfiguration;
  v5 = [(OTJoiningConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protocolType"];
    protocolType = v5->_protocolType;
    v5->_protocolType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueClientID"];
    uniqueClientID = v5->_uniqueClientID;
    v5->_uniqueClientID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueDeviceID"];
    uniqueDeviceID = v5->_uniqueDeviceID;
    v5->_uniqueDeviceID = v10;

    v5->_isInitiator = [v4 decodeBoolForKey:@"isInitiator"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingUUID"];
    pairingUUID = v5->_pairingUUID;
    v5->_pairingUUID = v12;

    v5->_epoch = [v4 decodeInt64ForKey:@"epoch"];
    v5->_timeout = [v4 decodeInt64ForKey:@"timeout"];
    v5->_testsEnabled = [v4 decodeBoolForKey:@"testsEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  protocolType = self->_protocolType;
  v5 = a3;
  [v5 encodeObject:protocolType forKey:@"protocolType"];
  [v5 encodeObject:self->_uniqueClientID forKey:@"uniqueClientID"];
  [v5 encodeObject:self->_uniqueDeviceID forKey:@"uniqueDeviceID"];
  [v5 encodeBool:self->_isInitiator forKey:@"isInitiator"];
  [v5 encodeObject:self->_pairingUUID forKey:@"pairingUUID"];
  [v5 encodeInt64:self->_epoch forKey:@"epoch"];
  [v5 encodeInt64:self->_timeout forKey:@"timeout"];
  [v5 encodeBool:self->_testsEnabled forKey:@"testsEnabled"];
}

@end