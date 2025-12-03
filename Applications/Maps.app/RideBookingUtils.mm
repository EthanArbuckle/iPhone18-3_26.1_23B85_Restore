@interface RideBookingUtils
+ (id)sharedUtils;
- (BOOL)isEnabled;
@end

@implementation RideBookingUtils

- (BOOL)isEnabled
{
  if (qword_10195D8A8 != -1)
  {
    dispatch_once(&qword_10195D8A8, &stru_10162AAA8);
  }

  v2 = byte_10195D8A1;
  if ((byte_10195D8A0 & 1) == 0)
  {
    BOOL = GEOConfigGetBOOL();
    if (byte_10195D8B1)
    {
      v4 = byte_10195D8B0;
    }

    else
    {
      v4 = 1;
    }

    if (!BOOL)
    {
      v4 = 0;
    }

    byte_10195D8A1 = v4;
    byte_10195D8A0 = 1;
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/Utils/RideBookingUtils.m");
      v7 = [NSString alloc];
      byte_10195D8A1 = [v7 initWithFormat:@"RideBookingIsEnabled: %d", byte_10195D8A1];
      *buf = 136315394;
      v11 = v6;
      v12 = 2112;
      v13 = byte_10195D8A1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }
  }

  return v2;
}

+ (id)sharedUtils
{
  if (qword_10195D890 != -1)
  {
    dispatch_once(&qword_10195D890, &stru_10162AA88);
  }

  v3 = qword_10195D898;

  return v3;
}

@end