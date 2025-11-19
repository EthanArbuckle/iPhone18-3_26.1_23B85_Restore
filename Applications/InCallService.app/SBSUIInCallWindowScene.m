@interface SBSUIInCallWindowScene
- (unint64_t)ics_sceneType;
- (void)ics_requestTransitionToPresentationMode:(int64_t)a3 shouldDismissCMASAlerts:(BOOL)a4 analyticsSource:(id)a5 completion:(id)a6;
@end

@implementation SBSUIInCallWindowScene

- (void)ics_requestTransitionToPresentationMode:(int64_t)a3 shouldDismissCMASAlerts:(BOOL)a4 analyticsSource:(id)a5 completion:(id)a6
{
  v7 = a4;
  v10 = a5;
  v11 = a6;
  v12 = sub_100004F84();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = SBSInCallPresentationModeDescription();
    v19 = 138412802;
    v20 = v13;
    v21 = 1024;
    v22 = v7;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requesting scene transition, presentationMode=%@ isUserInitiated=%d analyticsSource=%@", &v19, 0x1Cu);
  }

  v14 = +[NSNotificationCenter defaultCenter];
  v15 = [NSNumber numberWithUnsignedInteger:[(SBSUIInCallWindowScene *)self ics_sceneType]];
  [v14 postNotificationName:@"ICSSceneManagerDidRequesFullScreenTransitionNotification" object:v15];

  [(SBSUIInCallWindowScene *)self requestTransitionToPresentationMode:a3 isUserInitiated:v7 analyticsSource:v10];
  if (v11)
  {
    v16 = +[UIApplication sharedApplication];
    v17 = [v16 delegate];
    v18 = [v17 sceneManager];
    [v18 waitForPresentationMode:a3 forSceneOfType:-[SBSUIInCallWindowScene ics_sceneType](self completion:{"ics_sceneType"), v11}];
  }
}

- (unint64_t)ics_sceneType
{
  if (([(SBSUIInCallWindowScene *)self isScreenSharingPresentation]& 1) != 0)
  {
    return 1;
  }

  v4 = +[UIApplication sharedApplication];
  v5 = [v4 delegate];
  v6 = [v5 sceneManager];
  v7 = [(SBSUIInCallWindowScene *)self requestedPresentationConfigurationIdentifier];
  v8 = [v6 sceneTypeForConfigurationIdentifier:v7];

  return v8;
}

@end