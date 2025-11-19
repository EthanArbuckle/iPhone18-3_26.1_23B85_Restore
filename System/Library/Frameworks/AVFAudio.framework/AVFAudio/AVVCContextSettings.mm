@interface AVVCContextSettings
- (AVVCContextSettings)initWithMode:(int64_t)a3 deviceUID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AVVCContextSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 16) = [(AVVCContextSettings *)self activationMode];
  v5 = [(AVVCContextSettings *)self activationDeviceUID];
  v6 = [v5 copy];
  v7 = *(v4 + 24);
  *(v4 + 24) = v6;

  *(v4 + 8) = [(AVVCContextSettings *)self announceCallsEnabled];
  return v4;
}

- (AVVCContextSettings)initWithMode:(int64_t)a3 deviceUID:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = AVVCContextSettings;
  v7 = [(AVVCContextSettings *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_activationMode = a3;
    v9 = [v6 copy];
    activationDeviceUID = v8->_activationDeviceUID;
    v8->_activationDeviceUID = v9;
  }

  return v8;
}

@end