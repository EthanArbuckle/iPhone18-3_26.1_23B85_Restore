@interface DictionaryViewController
- (_TtC17SequoiaTranslator24DictionaryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)closeActionWithSender:(id)a3;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation DictionaryViewController

- (_TtC17SequoiaTranslator24DictionaryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1000DEB38(v5, v7, a4);
}

- (void)loadView
{
  v3 = objc_allocWithZone(UIView);
  v8 = self;
  v4 = [v3 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = sub_1000DE778();
  [v4 addSubview:v5];

  v6 = sub_1000DE78C();
  [v4 addSubview:v6];

  v7 = v4;
  [(DictionaryViewController *)v8 setView:v7];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000DF16C();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DictionaryViewController();
  v4 = v10.receiver;
  [(DictionaryViewController *)&v10 viewDidDisappear:v3];
  v5 = String._bridgeToObjectiveC()();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v9[4] = sub_1000E2464;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100241654;
  v9[3] = &unk_100383838;
  v7 = _Block_copy(v9);
  v8 = v4;

  AnalyticsSendEventLazy();

  _Block_release(v7);
}

- (void)closeActionWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000DFB64();

  sub_100008664(&v5);
}

@end