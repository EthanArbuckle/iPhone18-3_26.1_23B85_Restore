@interface PPKTextFormattingViewController
- (_TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController)init;
- (_TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController)initWithCoder:(id)a3;
- (_TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController)initWithConfiguration:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PPKTextFormattingViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(UITextFormattingViewController *)&v8 viewWillAppear:v3];
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  PPKTextFormattingViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = self;
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

- (_TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController)initWithConfiguration:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_observationTimer) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_lastFirstResponder) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(UITextFormattingViewController *)&v7 initWithConfiguration:a3];
}

- (_TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_observationTimer) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_lastFirstResponder) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(UITextFormattingViewController *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end