@interface CarplayUtilities
+ (BOOL)eventCanDialIn:(id)in;
+ (BOOL)eventCanNavigate:(id)navigate;
+ (id)dateForSection:(int64_t)section;
+ (int64_t)numberOfLinesInString:(id)string;
@end

@implementation CarplayUtilities

+ (BOOL)eventCanNavigate:(id)navigate
{
  preferredLocation = [navigate preferredLocation];
  v4 = [EKMapsUtilities mapsURLForFallbackLocationTitle:0 structuredLocation:preferredLocation hasMapItemLaunchOptionFromTimeToLeaveNotification:0];

  return v4 != 0;
}

+ (BOOL)eventCanDialIn:(id)in
{
  inCopy = in;
  virtualConference = [inCopy virtualConference];
  joinMethods = [virtualConference joinMethods];
  firstObject = [joinMethods firstObject];
  v7 = [firstObject URL];
  v8 = v7;
  if (v7)
  {
    conferenceURLForDisplay = v7;
  }

  else
  {
    conferenceURLForDisplay = [inCopy conferenceURLForDisplay];
  }

  v10 = conferenceURLForDisplay;

  absoluteString = [v10 absoluteString];
  v12 = [absoluteString length];

  if (v12)
  {
    if ([v10 cal_hasSchemeTel])
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      v13 = [EKConferenceUtils applicationRecordForURL:v10 incomplete:0];
      bundleIdentifier = [v13 bundleIdentifier];

      if ([bundleIdentifier length])
      {
        if (_os_feature_enabled_impl() && (+[EKConferenceUtils FacetimeAppBundleID](EKConferenceUtils, "FacetimeAppBundleID"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [bundleIdentifier isEqualToString:v15], v15, v16))
        {
          v17 = kCalUILogCarplayHandle;
          LOBYTE(v12) = 1;
          if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "FaceTime link detected. Should include tappable cell in CarPlay.", buf, 2u);
          }
        }

        else
        {
          v24 = 0;
          v18 = +[FBSOpenApplicationService dashboardService];
          LOBYTE(v12) = [v18 canOpenApplication:bundleIdentifier reason:&v24];

          if ((v12 & 1) == 0)
          {
            v19 = kCalUILogCarplayHandle;
            if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
            {
              v20 = v24;
              v21 = v19;
              v22 = [NSNumber numberWithInteger:v20];
              *buf = 138412546;
              v26 = v10;
              v27 = 2112;
              v28 = v22;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Couldn't open URL %@ in CarPlay, so not including tappable cell for it: %@", buf, 0x16u);
            }
          }
        }
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }
  }

  return v12;
}

+ (int64_t)numberOfLinesInString:(id)string
{
  if (!string)
  {
    return 1;
  }

  v8 = 0;
  stringCopy = string;
  v4 = [NSRegularExpression regularExpressionWithPattern:@"\n" options:0 error:&v8];
  v5 = [v4 numberOfMatchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];

  v6 = v5 + 1;
  return v6;
}

+ (id)dateForSection:(int64_t)section
{
  v4 = CUIKNowDate();
  v5 = v4;
  if (section)
  {
    v6 = +[NSCalendar currentCalendar];
    v7 = CalCopyTimeZone();
    [v6 setTimeZone:v7];

    v8 = [v6 dateByAddingUnit:16 value:1 toDate:v5 options:0];
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

@end