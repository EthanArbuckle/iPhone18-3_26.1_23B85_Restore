@interface TextActivityItemProvider
- (_TtC8AppStore24TextActivityItemProvider)initWithPlaceholderItem:(id)item;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)item;
@end

@implementation TextActivityItemProvider

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if (type)
  {
    v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore24TextActivityItemProvider_excludedActivityTypes);
    controllerCopy = controller;
    selfCopy = self;
    typeCopy = type;
    if (sub_100296374(typeCopy, v7))
    {

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  v15 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore24TextActivityItemProvider_text);
  v14 = *&self->text[OBJC_IVAR____TtC8AppStore24TextActivityItemProvider_text];
  v22[3] = &type metadata for String;
  v22[0] = v15;
  v22[1] = v14;

  v16 = sub_10002A400(v22, &type metadata for String);
  v17 = *(&type metadata for String - 1);
  v18 = __chkstk_darwin(v16);
  v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v18);
  v11 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v17 + 8))(v20, &type metadata for String);
  sub_100007000(v22);
LABEL_6:

  return v11;
}

- (id)item
{

  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v2;
}

- (_TtC8AppStore24TextActivityItemProvider)initWithPlaceholderItem:(id)item
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end