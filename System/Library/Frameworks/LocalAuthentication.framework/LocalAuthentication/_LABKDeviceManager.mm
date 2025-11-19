@interface _LABKDeviceManager
+ (id)availableDevicesWithFailure:(BOOL *)a3;
@end

@implementation _LABKDeviceManager

+ (id)availableDevicesWithFailure:(BOOL *)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = +[_LAAuthenticationBiometricMethodShim sharedInstance];
  v7 = [v6 biometricMethodState];
  v8 = [v7 isTouchID];

  if (v8)
  {
    v9 = [_LABKDeviceDescriptor deviceDescriptorForType:1];
    [v5 addObject:v9];
  }

  v10 = +[_LAAuthenticationBiometricMethodShim sharedInstance];
  v11 = [v10 biometricMethodState];
  v12 = [v11 isFaceID];

  if (v12)
  {
    v13 = [_LABKDeviceDescriptor deviceDescriptorForType:2];
    [v5 addObject:v13];
  }

  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"-> %@", v5];
  if (a3)
  {
    *a3 = 0;
  }

  v14 = [v5 copy];

  return v14;
}

@end