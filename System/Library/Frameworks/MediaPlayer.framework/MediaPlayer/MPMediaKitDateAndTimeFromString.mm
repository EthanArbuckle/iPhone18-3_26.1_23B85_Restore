@interface MPMediaKitDateAndTimeFromString
@end

@implementation MPMediaKitDateAndTimeFromString

uint64_t ___MPMediaKitDateAndTimeFromString_block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MPMediaKitDateAndTimeFromString_mediaKitDateAndTimeFormatter;
  _MPMediaKitDateAndTimeFromString_mediaKitDateAndTimeFormatter = v0;

  v2 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [_MPMediaKitDateAndTimeFromString_mediaKitDateAndTimeFormatter setTimeZone:v2];

  v3 = _MPMediaKitDateAndTimeFromString_mediaKitDateAndTimeFormatter;

  return [v3 setFormatOptions:1907];
}

@end