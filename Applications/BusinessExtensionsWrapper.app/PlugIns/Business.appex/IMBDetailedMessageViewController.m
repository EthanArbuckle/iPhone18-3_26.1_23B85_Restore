@interface IMBDetailedMessageViewController
- (_TtC8Business32IMBDetailedMessageViewController)initWithCoder:(id)a3;
- (_TtC8Business32IMBDetailedMessageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation IMBDetailedMessageViewController

- (_TtC8Business32IMBDetailedMessageViewController)initWithCoder:(id)a3
{
  *&self->conversation[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate] = 0;
  swift_unknownObjectWeakInit();
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for IMBDetailedMessageViewController();
  v2 = v6.receiver;
  [(IMBDetailedMessageViewController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() tertiarySystemBackgroundColor];
    [v4 setBackgroundColor:v5];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC8Business32IMBDetailedMessageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end