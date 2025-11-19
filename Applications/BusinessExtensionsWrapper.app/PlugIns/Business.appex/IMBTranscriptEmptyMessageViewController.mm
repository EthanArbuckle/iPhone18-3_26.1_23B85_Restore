@interface IMBTranscriptEmptyMessageViewController
- (_TtC8Business39IMBTranscriptEmptyMessageViewController)initWithCoder:(id)a3;
- (_TtC8Business39IMBTranscriptEmptyMessageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation IMBTranscriptEmptyMessageViewController

- (_TtC8Business39IMBTranscriptEmptyMessageViewController)initWithCoder:(id)a3
{
  *&self->conversation[OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_messagesAppProxy] = 0;
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_bubbleView);
  *v4 = 0;
  v4[1] = 0;
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100030C9C();
}

- (_TtC8Business39IMBTranscriptEmptyMessageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end