@interface HistoryDetailSheetViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (_TtC7Measure32HistoryDetailSheetViewController)initWithCoder:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)clearAll;
- (void)copy:(id)a3;
- (void)undo;
- (void)validateCommand:(id)a3;
@end

@implementation HistoryDetailSheetViewController

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100157AB4(a3);
  swift_unknownObjectRelease();
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_100158070(a3, v10);

  sub_100018F04(v10, &unk_1004A6970);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v9 = self;
  [(HistoryDetailSheetViewController *)v4 action];
  if (static Selector.== infix(_:_:)())
  {
    v5 = [objc_opt_self() mainBundle];
    v11._object = 0xE000000000000000;
    v6._countAndFlagsBits = 0x4C4C415F59504F43;
    v6._object = 0xE800000000000000;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v11);

    v8 = String._bridgeToObjectiveC()();

    [(HistoryDetailSheetViewController *)v4 setTitle:v8];

    v4 = v9;
    v9 = v8;
  }
}

- (void)copy:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_10015851C();

  sub_100018F04(v6, &unk_1004A6970);
}

- (void)undo
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(**(Strong + qword_1004AF9B0) + 200);
    v8 = self;

    v7 = v5(v6);

    (*(*v7 + 280))(sub_100084EAC, 0);
  }

  else
  {
    __break(1u);
  }
}

- (void)clearAll
{
  v2 = self;
  sub_100158914();
}

- (_TtC7Measure32HistoryDetailSheetViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(MeasurementDetailSheetViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end