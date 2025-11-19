@interface FMNoveltyViewController
- (NSArray)keyCommands;
- (_TtC6FindMy23FMNoveltyViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC6FindMy23FMNoveltyViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)continue;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FMNoveltyViewController

- (void)continue
{
  v1 = a1;
  sub_1004FF0FC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(FMNoveltyViewController *)&v8 viewWillAppear:v3];
  v5 = [v4 parentViewController];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100142550();
      v7 = v6;
    }

    else
    {
      v7 = v4;
      v4 = v6;
    }
  }
}

- (NSArray)keyCommands
{
  sub_10007EBC0(&qword_1006AFC30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1005528C0;
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() keyCommandWithInput:v3 modifierFlags:0 action:"returnPressed"];

  *(v2 + 32) = v4;
  sub_10000905C(0, &unk_1006B50D0);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (_TtC6FindMy23FMNoveltyViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_1004FF454(v9, v11, a4, v13, v14, v16, a6);
  }

  a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return sub_1004FF454(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC6FindMy23FMNoveltyViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = a5;
  return sub_1004FF6A0(v9, v11, a4, v13, a5, a6);
}

@end