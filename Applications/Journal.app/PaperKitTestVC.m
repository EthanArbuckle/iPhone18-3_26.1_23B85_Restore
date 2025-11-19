@interface PaperKitTestVC
- (_TtC7Journal14PaperKitTestVC)initWithNibName:(id)a3 bundle:(id)a4;
- (void)buttonTapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PaperKitTestVC

- (void)viewDidLoad
{
  v2 = self;
  sub_1006D31E4();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1006D33D0();
}

- (void)buttonTapped
{
  v2 = *(*(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal14PaperKitTestVC_paperKitView) + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController);
  v3 = self;
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 becomeFirstResponder];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC7Journal14PaperKitTestVC)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1006D35C4(v5, v7, a4);
}

@end