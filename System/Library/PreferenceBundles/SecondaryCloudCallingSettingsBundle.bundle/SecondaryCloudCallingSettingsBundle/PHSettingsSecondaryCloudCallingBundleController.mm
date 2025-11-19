@interface PHSettingsSecondaryCloudCallingBundleController
- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)a3;
- (id)labelValue;
- (id)parentListController;
- (id)specifiersWithSpecifier:(id)a3;
- (void)handleUserDidTapOnMainSpecifier:(id)a3 parentController:(id)a4;
- (void)performButtonActionForSpecifier:(id)a3;
@end

@implementation PHSettingsSecondaryCloudCallingBundleController

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = [(PHSettingsSecondaryCloudCallingBundleController *)self specifiersArray];
  if (!v4 && (+[TUCallCapabilities supportsPrimaryCalling]& 1) == 0)
  {
    if (!+[TUCallCapabilities supportsThumperCalling])
    {
      goto LABEL_9;
    }

    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v5 localizedStringForKey:@"SECONDARY_CLOUD_CALLING_CELL_TITLE" value:&stru_C760 table:@"SecondaryCloudCallingSettings"];

    v6 = [(PHSettingsSecondaryCloudCallingBundleController *)self parentListController];
    v7 = [(PHSettingsSecondaryCloudCallingBundleController *)self isStateDrivenNavigationPossibleWithParentController:v6];

    if (v7)
    {
      v8 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:"labelValue" detail:0 cell:2 edit:0];
      [v8 setButtonAction:"performButtonActionForSpecifier:"];
    }

    else
    {
      v8 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:"labelValue" detail:objc_opt_class() cell:2 edit:0];
    }

    [v8 setIdentifier:@"SECONDARY_CLOUD_CALLING"];
    v9 = [NSArray arrayWithObject:v8];
    [(PHSettingsSecondaryCloudCallingBundleController *)self setSpecifiersArray:v9];
  }

LABEL_9:

  return [(PHSettingsSecondaryCloudCallingBundleController *)self specifiersArray];
}

- (id)labelValue
{
  if (+[TUCallCapabilities isThumperCallingEnabled])
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = v2;
    v4 = @"ON";
  }

  else
  {
    v5 = +[TUCallCapabilities isRelayCallingEnabled];
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = v2;
    if (v5)
    {
      v4 = @"WHEN_NEARBY";
    }

    else
    {
      v4 = @"OFF";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_C760 table:@"SecondaryCloudCallingSettings"];

  return v6;
}

- (id)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)performButtonActionForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PHSettingsSecondaryCloudCallingBundleController *)self parentListController];
  [(PHSettingsSecondaryCloudCallingBundleController *)self handleUserDidTapOnMainSpecifier:v4 parentController:v5];
}

- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)a3
{
  v4 = sub_6684();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_66C4();
  sub_66B4();
  sub_66A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = [v9 traitCollection];
  sub_66D4();

  LOBYTE(v10) = sub_6664();
  (*(v5 + 8))(v8, v4);

  return v10 & 1;
}

- (void)handleUserDidTapOnMainSpecifier:(id)a3 parentController:(id)a4
{
  v18 = sub_6684();
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_66F4() - 8) + 64);
  __chkstk_darwin();
  v10 = sub_6654();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_66C4();
  sub_66B4();
  sub_66A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = a4;
  sub_66E4();
  sub_6644();
  v16 = [v15 traitCollection];
  sub_66D4();

  sub_610C();
  sub_6674();

  (*(v5 + 8))(v8, v18);
  (*(v11 + 8))(v14, v10);
}

@end