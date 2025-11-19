@interface PhoneSettingsReplyWithMessageBundleController
- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)a3;
- (id)parentListController;
- (id)specifiersWithSpecifier:(id)a3;
- (void)handleUserDidTapOnMainSpecifier:(id)a3 parentController:(id)a4;
- (void)performButtonActionForSpecifier:(id)a3;
@end

@implementation PhoneSettingsReplyWithMessageBundleController

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = [(PhoneSettingsReplyWithMessageBundleController *)self specifiersArray];

  if (!v4)
  {
    v5 = [NSMutableArray arrayWithCapacity:2];
    v6 = [(PhoneSettingsReplyWithMessageBundleController *)self parentListController];
    v7 = [(PhoneSettingsReplyWithMessageBundleController *)self isStateDrivenNavigationPossibleWithParentController:v6];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"REPLY_WITH_MESSAGE_CELL_TITLE" value:&stru_85E0 table:@"Reply With Message"];
    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = objc_opt_class();
    }

    v11 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:v10 cell:2 edit:0];

    [v11 setIdentifier:@"REPLY_WITH_MESSAGES"];
    if (v7)
    {
      [v11 setButtonAction:"performButtonActionForSpecifier:"];
    }

    [v5 addObject:v11];
    [(PhoneSettingsReplyWithMessageBundleController *)self setSpecifiersArray:v5];
  }

  return [(PhoneSettingsReplyWithMessageBundleController *)self specifiersArray];
}

- (id)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)performButtonActionForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PhoneSettingsReplyWithMessageBundleController *)self parentListController];
  [(PhoneSettingsReplyWithMessageBundleController *)self handleUserDidTapOnMainSpecifier:v4 parentController:v5];
}

- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)a3
{
  v4 = sub_2D84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2DC4();
  sub_2DB4();
  sub_2DA4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = [v9 traitCollection];
  sub_2DD4();

  LOBYTE(v10) = sub_2D64();
  (*(v5 + 8))(v8, v4);

  return v10 & 1;
}

- (void)handleUserDidTapOnMainSpecifier:(id)a3 parentController:(id)a4
{
  v18 = sub_2D84();
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_2DF4() - 8) + 64);
  __chkstk_darwin();
  v10 = sub_2D54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2DC4();
  sub_2DB4();
  sub_2DA4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = a4;
  sub_2DE4();
  sub_2D44();
  v16 = [v15 traitCollection];
  sub_2DD4();

  sub_2680();
  sub_2D74();

  (*(v5 + 8))(v8, v18);
  (*(v11 + 8))(v14, v10);
}

@end