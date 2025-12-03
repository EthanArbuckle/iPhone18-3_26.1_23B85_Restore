@interface HistoryDetailSheetViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (_TtC7Measure32HistoryDetailSheetViewController)initWithCoder:(id)coder;
- (void)buildMenuWithBuilder:(id)builder;
- (void)clearAll;
- (void)copy:(id)copy;
- (void)undo;
- (void)validateCommand:(id)command;
@end

@implementation HistoryDetailSheetViewController

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100157AB4(builder);
  swift_unknownObjectRelease();
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_100158070(action, v10);

  sub_100018F04(v10, &unk_1004A6970);
  return v8 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  [(HistoryDetailSheetViewController *)commandCopy action];
  if (static Selector.== infix(_:_:)())
  {
    mainBundle = [objc_opt_self() mainBundle];
    v11._object = 0xE000000000000000;
    v6._countAndFlagsBits = 0x4C4C415F59504F43;
    v6._object = 0xE800000000000000;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, mainBundle, v7, v11);

    v8 = String._bridgeToObjectiveC()();

    [(HistoryDetailSheetViewController *)commandCopy setTitle:v8];

    commandCopy = selfCopy;
    selfCopy = v8;
  }
}

- (void)copy:(id)copy
{
  if (copy)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
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
    selfCopy = self;

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
  selfCopy = self;
  sub_100158914();
}

- (_TtC7Measure32HistoryDetailSheetViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(MeasurementDetailSheetViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end