@interface SBSUIInCallWindowScene
- (unint64_t)ics_sceneType;
- (void)ics_requestTransitionToPresentationMode:(int64_t)mode shouldDismissCMASAlerts:(BOOL)alerts analyticsSource:(id)source completion:(id)completion;
@end

@implementation SBSUIInCallWindowScene

- (void)ics_requestTransitionToPresentationMode:(int64_t)mode shouldDismissCMASAlerts:(BOOL)alerts analyticsSource:(id)source completion:(id)completion
{
  alertsCopy = alerts;
  sourceCopy = source;
  completionCopy = completion;
  v12 = sub_100004F84();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = SBSInCallPresentationModeDescription();
    v19 = 138412802;
    v20 = v13;
    v21 = 1024;
    v22 = alertsCopy;
    v23 = 2112;
    v24 = sourceCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requesting scene transition, presentationMode=%@ isUserInitiated=%d analyticsSource=%@", &v19, 0x1Cu);
  }

  v14 = +[NSNotificationCenter defaultCenter];
  v15 = [NSNumber numberWithUnsignedInteger:[(SBSUIInCallWindowScene *)self ics_sceneType]];
  [v14 postNotificationName:@"ICSSceneManagerDidRequesFullScreenTransitionNotification" object:v15];

  [(SBSUIInCallWindowScene *)self requestTransitionToPresentationMode:mode isUserInitiated:alertsCopy analyticsSource:sourceCopy];
  if (completionCopy)
  {
    v16 = +[UIApplication sharedApplication];
    delegate = [v16 delegate];
    sceneManager = [delegate sceneManager];
    [sceneManager waitForPresentationMode:mode forSceneOfType:-[SBSUIInCallWindowScene ics_sceneType](self completion:{"ics_sceneType"), completionCopy}];
  }
}

- (unint64_t)ics_sceneType
{
  if (([(SBSUIInCallWindowScene *)self isScreenSharingPresentation]& 1) != 0)
  {
    return 1;
  }

  v4 = +[UIApplication sharedApplication];
  delegate = [v4 delegate];
  sceneManager = [delegate sceneManager];
  requestedPresentationConfigurationIdentifier = [(SBSUIInCallWindowScene *)self requestedPresentationConfigurationIdentifier];
  v8 = [sceneManager sceneTypeForConfigurationIdentifier:requestedPresentationConfigurationIdentifier];

  return v8;
}

@end