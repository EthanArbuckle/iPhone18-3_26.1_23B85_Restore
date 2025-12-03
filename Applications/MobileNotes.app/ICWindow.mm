@interface ICWindow
- (BOOL)isDebugWindowVisible;
- (_TtC11MobileNotes19ICDebugStatusWindow)debugWindow;
- (id)nextResponder;
- (void)hideDebugStatusWindow:(id)window;
- (void)setDebugWindow:(id)window;
- (void)setUpDebugStatusWindow;
- (void)showDebugStatusWindow:(id)window;
- (void)toggleDebugStatusWindowVisible:(id)visible;
@end

@implementation ICWindow

- (id)nextResponder
{
  v8.receiver = self;
  v8.super_class = ICWindow;
  nextResponder = [(ICWindow *)&v8 nextResponder];
  viewControllerManager = [(ICWindow *)self viewControllerManager];
  keyboardHandler = [viewControllerManager keyboardHandler];

  if (keyboardHandler)
  {
    [keyboardHandler setParentResponder:nextResponder];
    v6 = keyboardHandler;

    nextResponder = v6;
  }

  return nextResponder;
}

- (_TtC11MobileNotes19ICDebugStatusWindow)debugWindow
{
  selfCopy = self;
  v3 = sub_100233C0C();

  return v3;
}

- (void)setDebugWindow:(id)window
{
  swift_beginAccess();
  windowCopy = window;
  selfCopy = self;
  objc_setAssociatedObject(selfCopy, &unk_1006C0D98, windowCopy, 1);
  swift_endAccess();
}

- (BOOL)isDebugWindowVisible
{
  debugWindow = [(ICWindow *)self debugWindow];
  v3 = debugWindow;
  if (debugWindow)
  {
  }

  return v3 != 0;
}

- (void)setUpDebugStatusWindow
{
  selfCopy = self;
  sub_100233DB8();
}

- (void)hideDebugStatusWindow:(id)window
{
  if (window)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    selfCopy2 = self;
  }

  v6 = [(ICWindow *)self debugWindow:v8];
  if (v6)
  {
    v7 = v6;
    [(ICDebugStatusWindow *)v6 setHidden:1];
    [(ICDebugStatusWindow *)v7 setWindowScene:0];
    [(ICWindow *)self setDebugWindow:0];
  }

  sub_1000073B4(&v8, &qword_1006BE7A0);
}

- (void)showDebugStatusWindow:(id)window
{
  if (window)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100234148();

  sub_1000073B4(v6, &qword_1006BE7A0);
}

- (void)toggleDebugStatusWindowVisible:(id)visible
{
  if (visible)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  [standardUserDefaults set_ICDebugWindowEnabled:{objc_msgSend(standardUserDefaults, "_ICDebugWindowEnabled") ^ 1}];

  sub_1000073B4(v4, &qword_1006BE7A0);
}

@end