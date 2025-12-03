@interface VCWiFiUtils
+ (BOOL)getInfraChannelNumber:(int *)number is5Ghz:(BOOL *)ghz isPresent:(BOOL *)present;
@end

@implementation VCWiFiUtils

+ (BOOL)getInfraChannelNumber:(int *)number is5Ghz:(BOOL *)ghz isPresent:(BOOL *)present
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  if (!softLink_WiFiCopyCurrentNetworkInfoEx)
  {
    return 0;
  }

  v8 = softLink_WiFiCopyCurrentNetworkInfoEx(0, v12 + 4);
  if (HIDWORD(v12[0]))
  {
    goto LABEL_13;
  }

  Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
  if (present)
  {
    *present = Int32IfPresent != 0;
  }

  if (!Int32IfPresent)
  {
LABEL_13:
    v10 = 0;
    if (!v8)
    {
      return v10;
    }

    goto LABEL_11;
  }

  if (number)
  {
    *number = v12[0];
  }

  if (ghz)
  {
    *ghz = 0;
  }

  v10 = 1;
  if (v8)
  {
LABEL_11:
    CFRelease(v8);
  }

  return v10;
}

@end