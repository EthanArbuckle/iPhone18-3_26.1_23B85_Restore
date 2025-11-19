@interface IMBTranscriptMessageViewController
- (_TtC8Business34IMBTranscriptMessageViewController)initWithCoder:(id)a3;
- (_TtC8Business34IMBTranscriptMessageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)paymentRequestDidUpdate:(id)a3;
- (void)viewDidLoad;
@end

@implementation IMBTranscriptMessageViewController

- (_TtC8Business34IMBTranscriptMessageViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_10003C7E0();
}

- (_TtC8Business34IMBTranscriptMessageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)paymentRequestDidUpdate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_10003CE68();
  swift_unknownObjectRelease();
}

@end