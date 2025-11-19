@interface ComponentAudioHapticEngine
- (BOOL)isPresent;
- (id)arcSerialNumber;
- (id)getArcModuleClass;
- (id)getArcModuleSerialNumberKey;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentAudioHapticEngine

- (BOOL)isPresent
{
  if (findDeviceWithName("audio-actuator") || findDeviceWithName("audio-actuator0") || findDeviceWithName("audio-haptic"))
  {
    return 1;
  }

  DeviceWithName = findDeviceWithName("homer");
  return DeviceWithName & findDeviceWithName("maggie-arc");
}

- (void)populateAttributes:(id)a3
{
  v6 = a3;
  v4 = [(ComponentAudioHapticEngine *)self arcSerialNumber];
  v5 = v4;
  if (v4 && [v4 length])
  {
    [v6 setObject:v5 forKeyedSubscript:@"arcSerialNumber"];
  }
}

- (id)getArcModuleClass
{
  if ([DAComponentUtil IORegistryNameExists:@"AppleHapticsSupportArcEEPROM" optionalKey:0])
  {
    return @"AppleHapticsSupportArcEEPROM";
  }

  else
  {
    return @"AppleAD5860";
  }
}

- (id)getArcModuleSerialNumberKey
{
  v2 = [(ComponentAudioHapticEngine *)self getArcModuleClass];

  if (v2 == @"AppleHapticsSupportArcEEPROM")
  {
    return @"ArcSerialNumber";
  }

  else
  {
    return @"arc-sn";
  }
}

- (id)arcSerialNumber
{
  v3 = [(ComponentAudioHapticEngine *)self getArcModuleClass];
  v4 = [(ComponentAudioHapticEngine *)self getArcModuleSerialNumberKey];
  v5 = [DAComponentUtil getIORegistryClass:v3 property:v4 optionalKey:0];

  if (v5)
  {
    v6 = [[NSString alloc] initWithData:v5 encoding:4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end