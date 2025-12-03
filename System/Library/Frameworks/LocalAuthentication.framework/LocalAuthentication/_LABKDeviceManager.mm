@interface _LABKDeviceManager
+ (id)availableDevicesWithFailure:(BOOL *)failure;
@end

@implementation _LABKDeviceManager

+ (id)availableDevicesWithFailure:(BOOL *)failure
{
  array = [MEMORY[0x1E695DF70] array];
  v6 = +[_LAAuthenticationBiometricMethodShim sharedInstance];
  biometricMethodState = [v6 biometricMethodState];
  isTouchID = [biometricMethodState isTouchID];

  if (isTouchID)
  {
    v9 = [_LABKDeviceDescriptor deviceDescriptorForType:1];
    [array addObject:v9];
  }

  v10 = +[_LAAuthenticationBiometricMethodShim sharedInstance];
  biometricMethodState2 = [v10 biometricMethodState];
  isFaceID = [biometricMethodState2 isFaceID];

  if (isFaceID)
  {
    v13 = [_LABKDeviceDescriptor deviceDescriptorForType:2];
    [array addObject:v13];
  }

  [_LABKLog logClass:objc_opt_class() selector:a2 message:@"-> %@", array];
  if (failure)
  {
    *failure = 0;
  }

  v14 = [array copy];

  return v14;
}

@end