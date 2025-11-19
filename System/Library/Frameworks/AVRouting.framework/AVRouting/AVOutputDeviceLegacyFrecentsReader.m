@interface AVOutputDeviceLegacyFrecentsReader
+ (id)defaultFrecentsReader;
- (NSArray)deviceIDs;
- (id)frecencyInfoForDeviceWithID:(id)a3;
@end

@implementation AVOutputDeviceLegacyFrecentsReader

+ (id)defaultFrecentsReader
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (NSArray)deviceIDs
{
  v2 = CFPreferencesCopyKeyList(@"com.apple.avfoundation.frecents", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);

  return v2;
}

- (id)frecencyInfoForDeviceWithID:(id)a3
{
  v3 = CFPreferencesCopyAppValue(a3, @"com.apple.avfoundation.frecents");

  return v3;
}

@end