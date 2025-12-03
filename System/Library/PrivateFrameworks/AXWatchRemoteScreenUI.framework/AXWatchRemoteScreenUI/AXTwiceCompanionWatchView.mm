@interface AXTwiceCompanionWatchView
- (BOOL)digitalCrownAXLongPressed:(id)pressed;
- (BOOL)digitalCrownButtonScrollDown:(id)down;
- (BOOL)digitalCrownButtonScrollUp:(id)up;
- (BOOL)digitalCrownDirectTouch:(id)touch;
- (BOOL)doubleDigitalCrownButtonTapped:(id)tapped;
- (BOOL)sideButtonAXLongPressed:(id)pressed;
- (BOOL)stingButtonAXKeycord:(id)keycord;
- (BOOL)stingButtonAXLongPressed:(id)pressed;
- (BOOL)tripleDigitalCrownButtonTapped:(id)tapped;
- (void)dealloc;
- (void)digitalCrownButtonTappedWithSender:(id)sender;
- (void)digitalCrownSwipeDownWithGesture:(id)gesture;
- (void)digitalCrownSwipeUpWithGesture:(id)gesture;
- (void)doubleCrownButtonTappedWithSender:(id)sender;
- (void)handleLongPressGestureWithGesture:(id)gesture endBlock:(id)block;
- (void)sideButtonTappedWithSender:(id)sender;
- (void)stingButtonTappedWithSender:(id)sender;
- (void)tripleCrownButtonTappedWithSender:(id)sender;
@end

@implementation AXTwiceCompanionWatchView

- (void)dealloc
{
  selfCopy = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, selfCopy);

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for AXTwiceCompanionWatchView();
  [(AXTwiceCompanionWatchView *)&v4 dealloc];
}

- (void)digitalCrownButtonTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_23D6DB434();
}

- (void)doubleCrownButtonTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_23D6DB624();
}

- (void)tripleCrownButtonTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_23D6DB814();
}

- (void)digitalCrownSwipeUpWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_23D6DBA04();
}

- (void)digitalCrownSwipeDownWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_23D6DBBF4();
}

- (void)sideButtonTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_23D6DBDE4();
}

- (void)handleLongPressGestureWithGesture:(id)gesture endBlock:(id)block
{
  v6 = _Block_copy(block);
  _Block_copy(v6);
  gestureCopy = gesture;
  selfCopy = self;
  sub_23D6DC378(gestureCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)stingButtonTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_23D6DC714();
}

- (BOOL)doubleDigitalCrownButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  LOBYTE(self) = sub_23D6DC904();

  return self & 1;
}

- (BOOL)tripleDigitalCrownButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  LOBYTE(self) = sub_23D6DCAF8();

  return self & 1;
}

- (BOOL)digitalCrownButtonScrollUp:(id)up
{
  upCopy = up;
  selfCopy = self;
  LOBYTE(self) = sub_23D6DCCEC();

  return self & 1;
}

- (BOOL)digitalCrownButtonScrollDown:(id)down
{
  downCopy = down;
  selfCopy = self;
  LOBYTE(self) = sub_23D6DCEE0();

  return self & 1;
}

- (BOOL)digitalCrownAXLongPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  LOBYTE(self) = sub_23D6DD0D4();

  return self & 1;
}

- (BOOL)digitalCrownDirectTouch:(id)touch
{
  touchCopy = touch;
  selfCopy = self;
  LOBYTE(self) = sub_23D6DD2C8();

  return self & 1;
}

- (BOOL)sideButtonAXLongPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  LOBYTE(self) = sub_23D6DD4E8();

  return self & 1;
}

- (BOOL)stingButtonAXLongPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  LOBYTE(self) = sub_23D6DD6DC();

  return self & 1;
}

- (BOOL)stingButtonAXKeycord:(id)keycord
{
  keycordCopy = keycord;
  selfCopy = self;
  LOBYTE(self) = sub_23D6DD8D0();

  return self & 1;
}

@end