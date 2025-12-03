@interface IMBDetailedMessageViewController
- (_TtC8Business32IMBDetailedMessageViewController)initWithCoder:(id)coder;
- (_TtC8Business32IMBDetailedMessageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation IMBDetailedMessageViewController

- (_TtC8Business32IMBDetailedMessageViewController)initWithCoder:(id)coder
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
  view = [v2 view];
  if (view)
  {
    v4 = view;
    tertiarySystemBackgroundColor = [objc_opt_self() tertiarySystemBackgroundColor];
    [v4 setBackgroundColor:tertiarySystemBackgroundColor];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC8Business32IMBDetailedMessageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end