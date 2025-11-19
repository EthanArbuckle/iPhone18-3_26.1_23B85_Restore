@interface ICWindow
- (BOOL)isDebugWindowVisible;
- (_TtC11MobileNotes19ICDebugStatusWindow)debugWindow;
- (id)nextResponder;
- (void)hideDebugStatusWindow:(id)a3;
- (void)setDebugWindow:(id)a3;
- (void)setUpDebugStatusWindow;
- (void)showDebugStatusWindow:(id)a3;
- (void)toggleDebugStatusWindowVisible:(id)a3;
@end

@implementation ICWindow

- (id)nextResponder
{
  v8.receiver = self;
  v8.super_class = ICWindow;
  v3 = [(ICWindow *)&v8 nextResponder];
  v4 = [(ICWindow *)self viewControllerManager];
  v5 = [v4 keyboardHandler];

  if (v5)
  {
    [v5 setParentResponder:v3];
    v6 = v5;

    v3 = v6;
  }

  return v3;
}

- (_TtC11MobileNotes19ICDebugStatusWindow)debugWindow
{
  v2 = self;
  v3 = sub_100233C0C();

  return v3;
}

- (void)setDebugWindow:(id)a3
{
  swift_beginAccess();
  v5 = a3;
  v6 = self;
  objc_setAssociatedObject(v6, &unk_1006C0D98, v5, 1);
  swift_endAccess();
}

- (BOOL)isDebugWindowVisible
{
  v2 = [(ICWindow *)self debugWindow];
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

- (void)setUpDebugStatusWindow
{
  v2 = self;
  sub_100233DB8();
}

- (void)hideDebugStatusWindow:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v5 = self;
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

- (void)showDebugStatusWindow:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_100234148();

  sub_1000073B4(v6, &qword_1006BE7A0);
}

- (void)toggleDebugStatusWindowVisible:(id)a3
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  v3 = [objc_opt_self() standardUserDefaults];
  [v3 set_ICDebugWindowEnabled:{objc_msgSend(v3, "_ICDebugWindowEnabled") ^ 1}];

  sub_1000073B4(v4, &qword_1006BE7A0);
}

@end