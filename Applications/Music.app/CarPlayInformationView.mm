@interface CarPlayInformationView
+ (_TtC5Music22CarPlayInformationView)loading;
+ (id)errorWithTitle:(id)a3 buttonText:(id)a4 buttonAction:(id)a5;
+ (id)noContentWithTitle:(id)a3 subtitle:(id)a4 buttonText:(id)a5 buttonAction:(id)a6 isCentered:(BOOL)a7;
- (_TtC5Music22CarPlayInformationView)initWithCoder:(id)a3;
- (_TtC5Music22CarPlayInformationView)initWithFrame:(CGRect)a3;
@end

@implementation CarPlayInformationView

+ (_TtC5Music22CarPlayInformationView)loading
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v5 = String.init(localized:table:bundle:locale:comment:)();
  v7 = v6;
  v8 = objc_allocWithZone(ObjCClassMetadata);
  v9 = sub_100268B8C(v5, v7, 0, 0, 1, 0, 0, 0, 0, 0);

  return v9;
}

+ (id)errorWithTitle:(id)a3 buttonText:(id)a4 buttonAction:(id)a5
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  v15 = objc_allocWithZone(ObjCClassMetadata);
  v16 = sub_100268B8C(v8, v10, 0, 0, 0, v11, v13, sub_10026A294, v14, 0);

  return v16;
}

+ (id)noContentWithTitle:(id)a3 subtitle:(id)a4 buttonText:(id)a5 buttonAction:(id)a6 isCentered:(BOOL)a7
{
  v11 = _Block_copy(a6);
  if (a3)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v13;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    if (a4)
    {
LABEL_3:
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a4 = v15;
      if (a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v16 = 0;
      if (v11)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v14 = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a5 = v17;
  if (v11)
  {
LABEL_5:
    v18 = swift_allocObject();
    *(v18 + 16) = v11;
    v11 = sub_100115508;
    goto LABEL_10;
  }

LABEL_9:
  v18 = 0;
LABEL_10:
  v19 = sub_10026A004(v12, a3, v14, a4, v16, a5, v11, v18, a7);
  sub_100020438(v11);

  return v19;
}

- (_TtC5Music22CarPlayInformationView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC5Music22CarPlayInformationView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end