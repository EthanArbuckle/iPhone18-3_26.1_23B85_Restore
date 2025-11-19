@interface PhotosUIServiceUserSafetyViewController
- (void)_displayInterventionController;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)finish:(BOOL)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
@end

@implementation PhotosUIServiceUserSafetyViewController

- (void)finish:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100001524;
  v3[3] = &unk_100008248;
  v3[4] = self;
  v4 = a3;
  [(PhotosUIServiceUserSafetyViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)_displayInterventionController
{
  objc_initWeak(&location, self);
  v3 = [(PhotosUIServiceUserSafetyViewController *)self sensitivityInterventionManager];
  if (v3)
  {
    v4 = [(PhotosUIServiceUserSafetyViewController *)self sensitivityInterventionManager];
    v5 = [v4 canPresentIntervention];

    if (v5)
    {
      v6 = [(PhotosUIServiceUserSafetyViewController *)self sensitivityInterventionManager];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100001730;
      v7[3] = &unk_100008298;
      objc_copyWeak(&v8, &location);
      [v6 presentFromViewController:self completionHandler:v7];

      objc_destroyWeak(&v8);
    }
  }

  objc_destroyWeak(&location);
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001848;
  v7[3] = &unk_100008220;
  v7[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  [SCSensitivityAnalysis prefetchSensitiveContentPolicy:v7];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v9 = a4;
  v5 = [(PhotosUIServiceUserSafetyViewController *)self _remoteViewControllerProxy];
  [v5 setAllowsAlertStacking:1];
  v6 = [(PhotosUIServiceUserSafetyViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 _rootSheetPresentationController];
  [v8 _setShouldScaleDownBehindDescendantSheets:0];

  if (v9)
  {
    v9[2]();
  }
}

@end