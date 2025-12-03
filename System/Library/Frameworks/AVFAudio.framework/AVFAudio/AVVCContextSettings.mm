@interface AVVCContextSettings
- (AVVCContextSettings)initWithMode:(int64_t)mode deviceUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AVVCContextSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 16) = [(AVVCContextSettings *)self activationMode];
  activationDeviceUID = [(AVVCContextSettings *)self activationDeviceUID];
  v6 = [activationDeviceUID copy];
  v7 = *(v4 + 24);
  *(v4 + 24) = v6;

  *(v4 + 8) = [(AVVCContextSettings *)self announceCallsEnabled];
  return v4;
}

- (AVVCContextSettings)initWithMode:(int64_t)mode deviceUID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = AVVCContextSettings;
  v7 = [(AVVCContextSettings *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_activationMode = mode;
    v9 = [dCopy copy];
    activationDeviceUID = v8->_activationDeviceUID;
    v8->_activationDeviceUID = v9;
  }

  return v8;
}

@end