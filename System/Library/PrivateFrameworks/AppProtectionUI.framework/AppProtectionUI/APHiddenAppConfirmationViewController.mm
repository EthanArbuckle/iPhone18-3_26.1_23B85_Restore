@interface APHiddenAppConfirmationViewController
- (id)buttonTrayForAssistant:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation APHiddenAppConfirmationViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1AEA26710(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1AEA26824();
}

- (id)buttonTrayForAssistant:(id)a3
{
  v3 = self;
  result = [(APHiddenAppConfirmationViewController *)v3 view];
  if (result)
  {
    v5 = result;

    type metadata accessor for APWelcomeControllerWithBraveButtonTrayView();
    v6 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_buttonTray);
    v7 = v6;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end