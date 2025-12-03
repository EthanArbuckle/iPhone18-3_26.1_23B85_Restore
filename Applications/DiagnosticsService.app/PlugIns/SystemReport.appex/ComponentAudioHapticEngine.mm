@interface ComponentAudioHapticEngine
- (BOOL)isPresent;
- (id)arcSerialNumber;
- (id)getArcModuleClass;
- (id)getArcModuleSerialNumberKey;
- (void)populateAttributes:(id)attributes;
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

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  arcSerialNumber = [(ComponentAudioHapticEngine *)self arcSerialNumber];
  v5 = arcSerialNumber;
  if (arcSerialNumber && [arcSerialNumber length])
  {
    [attributesCopy setObject:v5 forKeyedSubscript:@"arcSerialNumber"];
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
  getArcModuleClass = [(ComponentAudioHapticEngine *)self getArcModuleClass];

  if (getArcModuleClass == @"AppleHapticsSupportArcEEPROM")
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
  getArcModuleClass = [(ComponentAudioHapticEngine *)self getArcModuleClass];
  getArcModuleSerialNumberKey = [(ComponentAudioHapticEngine *)self getArcModuleSerialNumberKey];
  v5 = [DAComponentUtil getIORegistryClass:getArcModuleClass property:getArcModuleSerialNumberKey optionalKey:0];

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