@interface RAPEntryPointViewControllerFactory
+ (void)createViewControllerWithEntryPointProvider:(id)a3 appStateCreator:(id)a4 completion:(id)a5 wasCancelled:(id)a6 willSend:(id)a7 wasSent:(id)a8;
@end

@implementation RAPEntryPointViewControllerFactory

+ (void)createViewControllerWithEntryPointProvider:(id)a3 appStateCreator:(id)a4 completion:(id)a5 wasCancelled:(id)a6 willSend:(id)a7 wasSent:(id)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (v13)
  {
    v18 = a4;
    +[UIApplication sharedMapsDelegate];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1006CBADC;
    v21 = v20[3] = &unk_1016268C8;
    v23 = v15;
    v22 = v13;
    v24 = v16;
    v25 = v17;
    v26 = v14;
    v19 = v21;
    [v18 createReportAProblemAppStateWithCompletion:v20];
  }
}

@end