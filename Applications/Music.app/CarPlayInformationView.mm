@interface CarPlayInformationView
+ (_TtC5Music22CarPlayInformationView)loading;
+ (id)errorWithTitle:(id)title buttonText:(id)text buttonAction:(id)action;
+ (id)noContentWithTitle:(id)title subtitle:(id)subtitle buttonText:(id)text buttonAction:(id)action isCentered:(BOOL)centered;
- (_TtC5Music22CarPlayInformationView)initWithCoder:(id)coder;
- (_TtC5Music22CarPlayInformationView)initWithFrame:(CGRect)frame;
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

+ (id)errorWithTitle:(id)title buttonText:(id)text buttonAction:(id)action
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = _Block_copy(action);
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

+ (id)noContentWithTitle:(id)title subtitle:(id)subtitle buttonText:(id)text buttonAction:(id)action isCentered:(BOOL)centered
{
  v11 = _Block_copy(action);
  if (title)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    title = v13;
    if (subtitle)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    if (subtitle)
    {
LABEL_3:
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      subtitle = v15;
      if (text)
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
  if (!text)
  {
    goto LABEL_8;
  }

LABEL_4:
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  text = v17;
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
  v19 = sub_10026A004(v12, title, v14, subtitle, v16, text, v11, v18, centered);
  sub_100020438(v11);

  return v19;
}

- (_TtC5Music22CarPlayInformationView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC5Music22CarPlayInformationView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end