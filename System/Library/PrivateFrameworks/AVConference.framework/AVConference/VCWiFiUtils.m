@interface VCWiFiUtils
+ (BOOL)getInfraChannelNumber:(int *)a3 is5Ghz:(BOOL *)a4 isPresent:(BOOL *)a5;
@end

@implementation VCWiFiUtils

+ (BOOL)getInfraChannelNumber:(int *)a3 is5Ghz:(BOOL *)a4 isPresent:(BOOL *)a5
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
  if (a5)
  {
    *a5 = Int32IfPresent != 0;
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

  if (a3)
  {
    *a3 = v12[0];
  }

  if (a4)
  {
    *a4 = 0;
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