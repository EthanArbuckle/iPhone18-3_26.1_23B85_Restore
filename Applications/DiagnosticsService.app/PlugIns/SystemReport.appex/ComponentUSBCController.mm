@interface ComponentUSBCController
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentUSBCController

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  v3 = [DAComponentUtil getIORegistryName:@"AppleHPMDeviceHALType4" property:@"UUID" optionalKey:0];
  if (v3 || ([DAComponentUtil getIORegistryName:@"AppleHPMDeviceHALType3" property:@"UUID" optionalKey:0], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [NSString stringWithFormat:@"%llx", MGGetSInt64Answer()];
    v6 = @"ecid";
    goto LABEL_4;
  }

  v7 = [DAComponentUtil getIORegistryName:@"AppleHPMDevice" property:@"UUID" optionalKey:0];
  if (v7)
  {
    v4 = v7;
    v8 = [[NSString alloc] initWithData:v7 encoding:4];
    if (!v8)
    {
      v9 = +[NSNull null];
      [attributesCopy setObject:v9 forKeyedSubscript:@"UUID"];

      v5 = 0;
      goto LABEL_5;
    }

    v5 = v8;
    v6 = @"UUID";
LABEL_4:
    [attributesCopy setObject:v5 forKeyedSubscript:v6];
LABEL_5:
  }
}

@end