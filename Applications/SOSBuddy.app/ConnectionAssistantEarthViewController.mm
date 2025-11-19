@interface ConnectionAssistantEarthViewController
- (_TtC8SOSBuddy38ConnectionAssistantEarthViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ConnectionAssistantEarthViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10004B4C8();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for ConnectionAssistantEarthViewController();
  v2 = v14.receiver;
  [(ConnectionAssistantEarthViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__metalView];
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v3 setFrame:{v7, v9, v11, v13}];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC8SOSBuddy38ConnectionAssistantEarthViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end