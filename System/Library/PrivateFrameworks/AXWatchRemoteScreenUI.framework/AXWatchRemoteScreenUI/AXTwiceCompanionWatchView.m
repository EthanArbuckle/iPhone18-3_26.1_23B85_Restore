@interface AXTwiceCompanionWatchView
- (BOOL)digitalCrownAXLongPressed:(id)a3;
- (BOOL)digitalCrownButtonScrollDown:(id)a3;
- (BOOL)digitalCrownButtonScrollUp:(id)a3;
- (BOOL)digitalCrownDirectTouch:(id)a3;
- (BOOL)doubleDigitalCrownButtonTapped:(id)a3;
- (BOOL)sideButtonAXLongPressed:(id)a3;
- (BOOL)stingButtonAXKeycord:(id)a3;
- (BOOL)stingButtonAXLongPressed:(id)a3;
- (BOOL)tripleDigitalCrownButtonTapped:(id)a3;
- (void)dealloc;
- (void)digitalCrownButtonTappedWithSender:(id)a3;
- (void)digitalCrownSwipeDownWithGesture:(id)a3;
- (void)digitalCrownSwipeUpWithGesture:(id)a3;
- (void)doubleCrownButtonTappedWithSender:(id)a3;
- (void)handleLongPressGestureWithGesture:(id)a3 endBlock:(id)a4;
- (void)sideButtonTappedWithSender:(id)a3;
- (void)stingButtonTappedWithSender:(id)a3;
- (void)tripleCrownButtonTappedWithSender:(id)a3;
@end

@implementation AXTwiceCompanionWatchView

- (void)dealloc
{
  v2 = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, v2);

  v4.receiver = v2;
  v4.super_class = type metadata accessor for AXTwiceCompanionWatchView();
  [(AXTwiceCompanionWatchView *)&v4 dealloc];
}

- (void)digitalCrownButtonTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D6DB434();
}

- (void)doubleCrownButtonTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D6DB624();
}

- (void)tripleCrownButtonTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D6DB814();
}

- (void)digitalCrownSwipeUpWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D6DBA04();
}

- (void)digitalCrownSwipeDownWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D6DBBF4();
}

- (void)sideButtonTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D6DBDE4();
}

- (void)handleLongPressGestureWithGesture:(id)a3 endBlock:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_23D6DC378(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)stingButtonTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D6DC714();
}

- (BOOL)doubleDigitalCrownButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_23D6DC904();

  return self & 1;
}

- (BOOL)tripleDigitalCrownButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_23D6DCAF8();

  return self & 1;
}

- (BOOL)digitalCrownButtonScrollUp:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_23D6DCCEC();

  return self & 1;
}

- (BOOL)digitalCrownButtonScrollDown:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_23D6DCEE0();

  return self & 1;
}

- (BOOL)digitalCrownAXLongPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_23D6DD0D4();

  return self & 1;
}

- (BOOL)digitalCrownDirectTouch:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_23D6DD2C8();

  return self & 1;
}

- (BOOL)sideButtonAXLongPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_23D6DD4E8();

  return self & 1;
}

- (BOOL)stingButtonAXLongPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_23D6DD6DC();

  return self & 1;
}

- (BOOL)stingButtonAXKeycord:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_23D6DD8D0();

  return self & 1;
}

@end