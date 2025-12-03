@interface PaperKitTestVC
- (_TtC7Journal14PaperKitTestVC)initWithNibName:(id)name bundle:(id)bundle;
- (void)buttonTapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PaperKitTestVC

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1006D31E4();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1006D33D0();
}

- (void)buttonTapped
{
  v2 = *(*(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal14PaperKitTestVC_paperKitView) + OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController);
  selfCopy = self;
  view = [v2 view];
  if (view)
  {
    v5 = view;
    [view becomeFirstResponder];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC7Journal14PaperKitTestVC)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1006D35C4(v5, v7, bundle);
}

@end