@interface APLockedAppDisclosureViewController
- (id)buttonTrayForAssistant:(id)assistant;
- (void)viewDidLayoutSubviews;
@end

@implementation APLockedAppDisclosureViewController

- (id)buttonTrayForAssistant:(id)assistant
{
  selfCopy = self;
  result = [(APLockedAppDisclosureViewController *)selfCopy view];
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

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for APLockedAppDisclosureViewController();
  v2 = v5.receiver;
  [(APLockedAppDisclosureViewController *)&v5 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC15AppProtectionUI35APLockedAppDisclosureViewController_scrollViewAssistant];
  scrollView = [*&v2[OBJC_IVAR____TtC15AppProtectionUI35APLockedAppDisclosureViewController_tccController] scrollView];
  [v3 performAdjustmentsForScrollView_];
}

@end