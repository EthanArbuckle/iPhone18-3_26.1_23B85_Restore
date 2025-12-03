@interface RAPEntryPointViewControllerFactory
+ (void)createViewControllerWithEntryPointProvider:(id)provider appStateCreator:(id)creator completion:(id)completion wasCancelled:(id)cancelled willSend:(id)send wasSent:(id)sent;
@end

@implementation RAPEntryPointViewControllerFactory

+ (void)createViewControllerWithEntryPointProvider:(id)provider appStateCreator:(id)creator completion:(id)completion wasCancelled:(id)cancelled willSend:(id)send wasSent:(id)sent
{
  providerCopy = provider;
  completionCopy = completion;
  cancelledCopy = cancelled;
  sendCopy = send;
  sentCopy = sent;
  if (providerCopy)
  {
    creatorCopy = creator;
    +[UIApplication sharedMapsDelegate];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1006CBADC;
    v21 = v20[3] = &unk_1016268C8;
    v23 = cancelledCopy;
    v22 = providerCopy;
    v24 = sendCopy;
    v25 = sentCopy;
    v26 = completionCopy;
    v19 = v21;
    [creatorCopy createReportAProblemAppStateWithCompletion:v20];
  }
}

@end