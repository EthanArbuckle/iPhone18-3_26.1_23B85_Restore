@interface FMDAudioPlayerFactory
+ (id)initWithContentsOfURL:(id)l error:(id *)error;
@end

@implementation FMDAudioPlayerFactory

+ (id)initWithContentsOfURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = +[FMDAVRouteControllerFactory isAutomationActive];
  v7 = sub_100003BEC();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDAutomationAVAudioPlayer: switching to automation", buf, 2u);
    }

    v9 = +[FMDAutomationHelperFactory sharedFactory];
    v10 = [v9 automationHelperClassWithName:@"FMDAutomationAVAudioPlayer"];

    v11 = [v10 alloc];
    v18 = 0;
    v12 = &v18;
    v13 = [v11 initWithError:&v18];
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v20 = lCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AVAudioPlayer: initWithContentsOfURL: %@", buf, 0xCu);
    }

    v17 = 0;
    v12 = &v17;
    v13 = [[AVAudioPlayer alloc] initWithContentsOfURL:lCopy error:&v17];
  }

  v14 = v13;
  v15 = *v12;
  if (error)
  {
    v15 = v15;
    *error = v15;
  }

  return v14;
}

@end