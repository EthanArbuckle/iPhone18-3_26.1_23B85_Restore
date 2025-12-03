@interface PPKTextFormattingViewController
- (_TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController)init;
- (_TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController)initWithCoder:(id)coder;
- (_TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController)initWithConfiguration:(id)configuration;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PPKTextFormattingViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(UITextFormattingViewController *)&v8 viewWillAppear:appearCopy];
  view = [v4 view];
  if (view)
  {
    v6 = view;
    clearColor = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  PPKTextFormattingViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  specialized PPKTextFormattingViewController.viewWillDisappear(_:)();
}

- (_TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_observationTimer) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_lastFirstResponder) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(UITextFormattingViewController *)&v5 init];
}

- (_TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController)initWithConfiguration:(id)configuration
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_observationTimer) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_lastFirstResponder) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(UITextFormattingViewController *)&v7 initWithConfiguration:configuration];
}

- (_TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_observationTimer) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_lastFirstResponder) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(UITextFormattingViewController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end