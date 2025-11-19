@interface B389StartViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtC18SharingViewService23B389StartViewController)initWithMainController:(id)a3;
- (void)continuePressed;
- (void)dismissPressed;
- (void)handleTapOutside;
- (void)transitionOutOfMulti;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation B389StartViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100052868(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10005586C(a3);
}

- (void)transitionOutOfMulti
{
  v2 = self;
  sub_100055B60();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1000571A8(a3);
}

- (void)dismissPressed
{
  v2 = self;
  sub_100057384();
}

- (void)continuePressed
{
  v2 = self;
  sub_1000573D4();
}

- (void)handleTapOutside
{
  v2 = self;
  sub_100057800();
}

- (_TtC18SharingViewService23B389StartViewController)initWithMainController:(id)a3
{
  v3 = a3;
  v4 = sub_100066608(v3);

  return v4;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100066718(v6, v7);

  return v9 & 1;
}

@end