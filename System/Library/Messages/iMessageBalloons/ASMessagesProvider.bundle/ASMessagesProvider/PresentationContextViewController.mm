@interface PresentationContextViewController
- (_TtC18ASMessagesProvider33PresentationContextViewController)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider33PresentationContextViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PresentationContextViewController

- (_TtC18ASMessagesProvider33PresentationContextViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_contextViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_hasPresentedViewController) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_dismissOverride);
  *v3 = 0;
  v3[1] = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_B3C30();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PresentationContextViewController();
  v4 = v7.receiver;
  [(PresentationContextViewController *)&v7 viewWillAppear:appearCopy];
  presentationController = [v4 presentationController];
  if (presentationController)
  {
    v6 = presentationController;
    [presentationController _setContainerIgnoresDirectTouchEvents:1];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_B3DE8(appear);
}

- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion
{
  v4 = *&transition;
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_B44C8;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_B409C(v4, v6, v7);
  sub_F704(v6);
}

- (_TtC18ASMessagesProvider33PresentationContextViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end