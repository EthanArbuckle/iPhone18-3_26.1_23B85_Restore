@interface VCMediaDeviceErrorUtils
+ (id)mediaDeviceErrorEvent:(int64_t)event errorPath:(id)path returnCode:(int64_t)code reason:(id)reason;
@end

@implementation VCMediaDeviceErrorUtils

+ (id)mediaDeviceErrorEvent:(int64_t)event errorPath:(id)path returnCode:(int64_t)code reason:(id)reason
{
  if (event == 1)
  {
    return [MEMORY[0x1E696ABC0] AVConferenceServiceError:32028 detailedCode:1 returnCode:code filePath:path description:@"Media device state transition failed" reason:reason];
  }

  else
  {
    return 0;
  }
}

@end