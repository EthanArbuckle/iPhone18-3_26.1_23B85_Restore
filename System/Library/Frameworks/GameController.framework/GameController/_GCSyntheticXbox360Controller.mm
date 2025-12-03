@interface _GCSyntheticXbox360Controller
+ (id)devicePropertiesWithDescription:(id)description;
@end

@implementation _GCSyntheticXbox360Controller

+ (id)devicePropertiesWithDescription:(id)description
{
  v13[6] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (!devicePropertiesWithDescription__BaseProperties)
  {
    v12[0] = @"ReportDescriptor";
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&Xbox360DeviceDescriptor length:188];
    v13[0] = v4;
    v13[1] = @"Microsoft";
    v12[1] = @"Manufacturer";
    v12[2] = @"Product";
    v13[2] = @"GamePad-1";
    v13[3] = &unk_1F4E8E2E8;
    v12[3] = @"VendorID";
    v12[4] = @"ProductID";
    v12[5] = @"VersionNumber";
    v13[4] = &unk_1F4E8E300;
    v13[5] = &unk_1F4E8E318;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:6];
    v6 = devicePropertiesWithDescription__BaseProperties;
    devicePropertiesWithDescription__BaseProperties = v5;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 addEntriesFromDictionary:devicePropertiesWithDescription__BaseProperties];
  [v7 setObject:@"Xbox360Controller" forKey:@"_GCSyntheticDeviceType"];
  controllerIdentifier = [descriptionCopy controllerIdentifier];
  v9 = [controllerIdentifier description];
  [v7 setObject:v9 forKey:@"_GCSyntheticDeviceControllerIdentifier"];

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

@end