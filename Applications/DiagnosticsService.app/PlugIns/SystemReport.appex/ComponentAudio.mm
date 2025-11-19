@interface ComponentAudio
- (BOOL)isPresent;
@end

@implementation ComponentAudio

- (BOOL)isPresent
{
  v2 = IOServiceMatching("AppleEmbeddedAudio");
  CFDictionarySetValue(v2, @"CodecUID", @"Codec");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"Ping", kCFAllocatorDefault, 0);
    IOObjectRelease(v4);
    v6 = CFProperty == kCFBooleanTrue;
    if (CFProperty != kCFBooleanTrue)
    {
      v7 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Audio NOT found. Codec ping failed.", buf, 2u);
      }
    }

    if (CFProperty)
    {
      CFRelease(CFProperty);
    }
  }

  else
  {
    v8 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Audio NOT found. Cannot find AppleEmbeddedAudio service.", v10, 2u);
    }

    return 0;
  }

  return v6;
}

@end