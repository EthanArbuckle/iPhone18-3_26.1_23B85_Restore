@interface ADSiriAudioRouteMonitor
+ (void)volumeAdjustmentSupportedByRoute:(id)route withCompletion:(id)completion;
@end

@implementation ADSiriAudioRouteMonitor

+ (void)volumeAdjustmentSupportedByRoute:(id)route withCompletion:(id)completion
{
  routeCopy = route;
  completionCopy = completion;
  btAddress = [routeCopy btAddress];
  v8 = [btAddress length];

  if (v8 != 17)
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v19 = v12;
      productID = [routeCopy productID];
      btAddress2 = [routeCopy btAddress];
      *buf = 136315650;
      v25 = "+[ADSiriAudioRouteMonitor volumeAdjustmentSupportedByRoute:withCompletion:]";
      v26 = 2112;
      v27 = productID;
      v28 = 2112;
      v29 = btAddress2;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s ProductID: %@, BTAddress: %@, route doesn't support volume adjustments", buf, 0x20u);
    }

    goto LABEL_8;
  }

  productID2 = [routeCopy productID];
  v10 = AFIsH1Headset();

  if (v10)
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v25 = "+[ADSiriAudioRouteMonitor volumeAdjustmentSupportedByRoute:withCompletion:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s H1 based headphones route, supports volume adjustment", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 1, 0);
    goto LABEL_9;
  }

  productID3 = [routeCopy productID];
  v14 = AFIsH2Headset();

  if (!v14)
  {
    v18 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v25 = "+[ADSiriAudioRouteMonitor volumeAdjustmentSupportedByRoute:withCompletion:]";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Volume adjustment is not supported for the current audio route", buf, 0xCu);
    }

LABEL_8:
    completionCopy[2](completionCopy, 0, 0);
    goto LABEL_9;
  }

  btAddress3 = [routeCopy btAddress];
  v16 = +[ADBluetoothManager sharedInstance];
  v17 = [v16 deviceWithAddress:btAddress3];

  if (v17)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100107B40;
    v22[3] = &unk_100511A90;
    v23 = completionCopy;
    [v17 getPersonalVolume:v22];
  }

LABEL_9:
}

@end