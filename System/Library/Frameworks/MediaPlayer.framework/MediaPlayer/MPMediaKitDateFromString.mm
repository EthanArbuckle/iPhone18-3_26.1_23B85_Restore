@interface MPMediaKitDateFromString
@end

@implementation MPMediaKitDateFromString

uint64_t ___MPMediaKitDateFromString_block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MPMediaKitDateFromString_mediaKitDateFormatter;
  _MPMediaKitDateFromString_mediaKitDateFormatter = v0;

  v2 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [_MPMediaKitDateFromString_mediaKitDateFormatter setTimeZone:v2];

  v3 = _MPMediaKitDateFromString_mediaKitDateFormatter;

  return [v3 setFormatOptions:275];
}

@end