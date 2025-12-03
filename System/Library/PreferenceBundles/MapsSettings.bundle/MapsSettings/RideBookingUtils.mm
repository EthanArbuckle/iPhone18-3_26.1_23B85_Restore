@interface RideBookingUtils
+ (id)sharedUtils;
- (BOOL)isEnabled;
@end

@implementation RideBookingUtils

+ (id)sharedUtils
{
  if (qword_96CD8 != -1)
  {
    sub_3B584();
  }

  v3 = qword_96CE0;

  return v3;
}

- (BOOL)isEnabled
{
  if (qword_96CF0 != -1)
  {
    sub_3B598();
  }

  v2 = byte_96CE9;
  if ((byte_96CE8 & 1) == 0)
  {
    BOOL = GEOConfigGetBOOL();
    if (byte_96CF9)
    {
      v4 = byte_96CF8;
    }

    else
    {
      v4 = 1;
    }

    if (!BOOL)
    {
      v4 = 0;
    }

    byte_96CE9 = v4;
    byte_96CE8 = 1;
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/Utils/RideBookingUtils.m");
      v7 = [NSString alloc];
      byte_96CE9 = [v7 initWithFormat:@"RideBookingIsEnabled: %d", byte_96CE9];
      *buf = 136315394;
      v11 = v6;
      v12 = 2112;
      v13 = byte_96CE9;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }
  }

  return v2;
}

@end