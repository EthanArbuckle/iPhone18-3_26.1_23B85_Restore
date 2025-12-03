@interface SHHapticSpatialTrackValidator
+ (BOOL)isValidSpatialTrackInformation:(id)information;
@end

@implementation SHHapticSpatialTrackValidator

+ (BOOL)isValidSpatialTrackInformation:(id)information
{
  informationCopy = information;
  v4 = informationCopy;
  if (informationCopy)
  {
    if ([informationCopy matchesStereo])
    {
      v5 = 1;
    }

    else
    {
      [v4 timeDrift];
      v5 = v7 <= 0.04;
    }

    v6 = sh_log_object();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (v5)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      matchesStereo = [v4 matchesStereo];
      [v4 timeDrift];
      v12 = 138412802;
      v13 = v8;
      v14 = 1024;
      v15 = matchesStereo;
      v16 = 2048;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Spatial track info is valid? %@, Matches stereo: %d, time drift %f", &v12, 0x1Cu);
    }
  }

  else
  {
    v6 = sh_log_object();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Haptic spatial track information isn't available.", &v12, 2u);
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

@end