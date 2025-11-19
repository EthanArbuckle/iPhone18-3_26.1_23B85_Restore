@interface SSHBHIDAmbientLightSensorSample
- (NSString)description;
@end

@implementation SSHBHIDAmbientLightSensorSample

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithString:v5];

  [v6 appendFormat:@"\nlevel: %u", -[SSHBHIDAmbientLightSensorSample level](self, "level")];
  [v6 appendFormat:@"\nrawchannel0: %u", -[SSHBHIDAmbientLightSensorSample rawchannel0](self, "rawchannel0")];
  [v6 appendFormat:@"\nrawchannel1: %u", -[SSHBHIDAmbientLightSensorSample rawchannel1](self, "rawchannel1")];
  [v6 appendFormat:@"\nrawchannel2: %u", -[SSHBHIDAmbientLightSensorSample rawchannel2](self, "rawchannel2")];
  [v6 appendFormat:@"\nrawchannel3: %u", -[SSHBHIDAmbientLightSensorSample rawchannel3](self, "rawchannel3")];
  [v6 appendFormat:@"\nbrightnesschange: %u", -[SSHBHIDAmbientLightSensorSample brightnesschange](self, "brightnesschange")];
  [v6 appendFormat:@"\norientation: %u", -[SSHBHIDAmbientLightSensorSample orientation](self, "orientation")];

  return v6;
}

@end