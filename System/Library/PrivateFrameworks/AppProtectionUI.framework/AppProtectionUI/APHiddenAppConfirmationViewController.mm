@interface APHiddenAppConfirmationViewController
- (id)buttonTrayForAssistant:(id)assistant;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
@end

@implementation APHiddenAppConfirmationViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1AEA26710(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1AEA26824();
}

- (id)buttonTrayForAssistant:(id)assistant
{
  selfCopy = self;
  result = [(APHiddenAppConfirmationViewController *)selfCopy view];
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