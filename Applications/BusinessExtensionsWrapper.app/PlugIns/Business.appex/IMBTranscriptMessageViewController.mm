@interface IMBTranscriptMessageViewController
- (_TtC8Business34IMBTranscriptMessageViewController)initWithCoder:(id)coder;
- (_TtC8Business34IMBTranscriptMessageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)paymentRequestDidUpdate:(id)update;
- (void)viewDidLoad;
@end

@implementation IMBTranscriptMessageViewController

- (_TtC8Business34IMBTranscriptMessageViewController)initWithCoder:(id)coder
{
  *&self->pluginBubbleContext[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_messagesAppProxy] = 0;
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_bubbleView);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_authvc) = 0;
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10003C7E0();
}

- (_TtC8Business34IMBTranscriptMessageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)paymentRequestDidUpdate:(id)update
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10003CE68();
  swift_unknownObjectRelease();
}

@end