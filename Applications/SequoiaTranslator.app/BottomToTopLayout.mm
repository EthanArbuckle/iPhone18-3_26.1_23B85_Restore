@interface BottomToTopLayout
- (_TtC17SequoiaTranslator17BottomToTopLayout)initWithSection:(id)section;
- (_TtC17SequoiaTranslator17BottomToTopLayout)initWithSection:(id)section configuration:(id)configuration;
- (_TtC17SequoiaTranslator17BottomToTopLayout)initWithSectionProvider:(id)provider;
- (_TtC17SequoiaTranslator17BottomToTopLayout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)prepareLayout;
@end

@implementation BottomToTopLayout

- (void)prepareLayout
{
  selfCopy = self;
  sub_10001F6E4();
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_10001FCE0(x, y, width, height);
  v9 = v8;

  if (v9)
  {
    sub_1000208F8();
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  return v10.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v9 = sub_10001FF20(v7);

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (_TtC17SequoiaTranslator17BottomToTopLayout)initWithSection:(id)section
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_cachedAttributes) = &_swiftEmptyDictionarySingleton;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_viewportHeight) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_additionalSpeakButtonPadding) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_faceToFaceSide) = 2;
  v5.receiver = self;
  v5.super_class = type metadata accessor for BottomToTopLayout();
  return [(BottomToTopLayout *)&v5 initWithSection:section];
}

- (_TtC17SequoiaTranslator17BottomToTopLayout)initWithSection:(id)section configuration:(id)configuration
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_cachedAttributes) = &_swiftEmptyDictionarySingleton;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_viewportHeight) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_additionalSpeakButtonPadding) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator17BottomToTopLayout_faceToFaceSide) = 2;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BottomToTopLayout();
  return [(BottomToTopLayout *)&v7 initWithSection:section configuration:configuration];
}

- (_TtC17SequoiaTranslator17BottomToTopLayout)initWithSectionProvider:(id)provider
{
  v3 = _Block_copy(provider);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_100020418(sub_10002094C, v4);
}

- (_TtC17SequoiaTranslator17BottomToTopLayout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  v5 = _Block_copy(provider);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_100020580(sub_100020880, v6, configuration);
}

@end