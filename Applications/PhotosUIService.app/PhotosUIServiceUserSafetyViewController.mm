@interface PhotosUIServiceUserSafetyViewController
- (void)_displayInterventionController;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)finish:(BOOL)finish;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
@end

@implementation PhotosUIServiceUserSafetyViewController

- (void)finish:(BOOL)finish
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100001524;
  v3[3] = &unk_100008248;
  v3[4] = self;
  finishCopy = finish;
  [(PhotosUIServiceUserSafetyViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)_displayInterventionController
{
  objc_initWeak(&location, self);
  sensitivityInterventionManager = [(PhotosUIServiceUserSafetyViewController *)self sensitivityInterventionManager];
  if (sensitivityInterventionManager)
  {
    sensitivityInterventionManager2 = [(PhotosUIServiceUserSafetyViewController *)self sensitivityInterventionManager];
    canPresentIntervention = [sensitivityInterventionManager2 canPresentIntervention];

    if (canPresentIntervention)
    {
      sensitivityInterventionManager3 = [(PhotosUIServiceUserSafetyViewController *)self sensitivityInterventionManager];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100001730;
      v7[3] = &unk_100008298;
      objc_copyWeak(&v8, &location);
      [sensitivityInterventionManager3 presentFromViewController:self completionHandler:v7];

      objc_destroyWeak(&v8);
    }
  }

  objc_destroyWeak(&location);
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001848;
  v7[3] = &unk_100008220;
  v7[4] = self;
  contextCopy = context;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = contextCopy;
  [SCSensitivityAnalysis prefetchSensitiveContentPolicy:v7];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  _remoteViewControllerProxy = [(PhotosUIServiceUserSafetyViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
  view = [(PhotosUIServiceUserSafetyViewController *)self view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  if (completionCopy)
  {
    completionCopy[2]();
  }
}

@end