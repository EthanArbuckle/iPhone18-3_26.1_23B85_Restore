@interface FMFriendLocationAlertsViewController
- (void)handleFenceTapWithGestureRecognizer:(id)recognizer;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMFriendLocationAlertsViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMFriendLocationAlertsViewController();
  v4 = v7.receiver;
  [(FMSettingsUpdateViewController *)&v7 viewWillAppear:appearCopy];
  v5 = *(*&v4[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 48);

  v6 = sub_10015D034(v4, v5);

  *&v4[OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_peopleSubscription] = v6;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10015917C(disappear);
}

- (void)handleFenceTapWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_10015B418(recognizerCopy);
}

@end