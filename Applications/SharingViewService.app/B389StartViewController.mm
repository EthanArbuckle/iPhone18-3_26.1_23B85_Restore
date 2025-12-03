@interface B389StartViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC18SharingViewService23B389StartViewController)initWithMainController:(id)controller;
- (void)continuePressed;
- (void)dismissPressed;
- (void)handleTapOutside;
- (void)transitionOutOfMulti;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation B389StartViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100052868(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10005586C(appear);
}

- (void)transitionOutOfMulti
{
  selfCopy = self;
  sub_100055B60();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000571A8(disappear);
}

- (void)dismissPressed
{
  selfCopy = self;
  sub_100057384();
}

- (void)continuePressed
{
  selfCopy = self;
  sub_1000573D4();
}

- (void)handleTapOutside
{
  selfCopy = self;
  sub_100057800();
}

- (_TtC18SharingViewService23B389StartViewController)initWithMainController:(id)controller
{
  controllerCopy = controller;
  v4 = sub_100066608(controllerCopy);

  return v4;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_100066718(recognizerCopy, touchCopy);

  return v9 & 1;
}

@end