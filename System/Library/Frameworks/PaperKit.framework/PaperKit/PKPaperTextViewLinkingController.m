@interface PKPaperTextViewLinkingController
- (UIMenu)linkItemsMenu;
- (_TtC8PaperKit32PKPaperTextViewLinkingController)init;
- (_TtC8PaperKit32PKPaperTextViewLinkingController)initWithTextView:(id)a3;
@end

@implementation PKPaperTextViewLinkingController

- (_TtC8PaperKit32PKPaperTextViewLinkingController)initWithTextView:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = objc_allocWithZone(type metadata accessor for SynapseLinkingEngine());
  v6 = a3;
  v7 = [v5 init];
  swift_getObjectType();
  v8 = specialized PKPaperTextViewLinkingController.init(textView:linkingEngine:)(v6, v7, objc_allocWithZone(ObjectType));
  swift_deallocPartialClassInstance();
  return v8;
}

- (UIMenu)linkItemsMenu
{
  v2 = self;
  v3.super.super.isa = PKPaperTextViewLinkingController.linkItemsMenu.getter().super.super.isa;

  return v3.super.super.isa;
}

- (_TtC8PaperKit32PKPaperTextViewLinkingController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end