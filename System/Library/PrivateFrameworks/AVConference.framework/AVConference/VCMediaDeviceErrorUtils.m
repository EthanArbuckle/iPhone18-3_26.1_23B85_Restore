@interface VCMediaDeviceErrorUtils
+ (id)mediaDeviceErrorEvent:(int64_t)a3 errorPath:(id)a4 returnCode:(int64_t)a5 reason:(id)a6;
@end

@implementation VCMediaDeviceErrorUtils

+ (id)mediaDeviceErrorEvent:(int64_t)a3 errorPath:(id)a4 returnCode:(int64_t)a5 reason:(id)a6
{
  if (a3 == 1)
  {
    return [MEMORY[0x1E696ABC0] AVConferenceServiceError:32028 detailedCode:1 returnCode:a5 filePath:a4 description:@"Media device state transition failed" reason:a6];
  }

  else
  {
    return 0;
  }
}

@end