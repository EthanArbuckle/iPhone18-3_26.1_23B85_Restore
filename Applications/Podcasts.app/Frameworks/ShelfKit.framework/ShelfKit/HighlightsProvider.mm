@interface HighlightsProvider
- (BOOL)isSharedContentWithContentAdamId:(int64_t)id;
- (BOOL)isSharedContentWithPageAdamId:(id)id;
- (_TtC8ShelfKit18HighlightsProvider)init;
- (void)accountDidChange;
- (void)clearSharedItems;
- (void)dealloc;
- (void)highlightCenter:(id)center didRemoveHighlights:(id)highlights;
- (void)highlightCenterSettingsEnablementHasChanged:(void *)changed;
@end

@implementation HighlightsProvider

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightCenter);
  selfCopy = self;
  [v4 setDelegate:0];
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter removeObserver:selfCopy name:ACDAccountStoreDidChangeNotification object:0];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(HighlightsProvider *)&v7 dealloc];
}

- (void)accountDidChange
{
  selfCopy = self;
  sub_377D50();
}

- (BOOL)isSharedContentWithContentAdamId:(int64_t)id
{
  selfCopy = self;
  LOBYTE(id) = HighlightsProvider.isSharedContent(contentAdamId:)(id);

  return id & 1;
}

- (void)clearSharedItems
{
  v3 = OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightsDisplayedOnCurrentPage;
  swift_beginAccess();
  *(&self->super.isa + v3) = &_swiftEmptySetSingleton;
}

- (_TtC8ShelfKit18HighlightsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isSharedContentWithPageAdamId:(id)id
{
  if (id)
  {
    v4 = sub_3ED244();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  v9 = HighlightsProvider.isSharedContent(pageAdamId:)(v8);

  return v9;
}

- (void)highlightCenterSettingsEnablementHasChanged:(void *)changed
{
  changedCopy = changed;
  _s8ShelfKit18HighlightsProviderC021highlightCenterDidAddC0yySo011SLHighlightF0CF_0();
}

- (void)highlightCenter:(id)center didRemoveHighlights:(id)highlights
{
  sub_36174(0, &qword_503D28);
  v6 = sub_3ED584();
  centerCopy = center;
  selfCopy = self;
  sub_37D23C(v6);
}

@end