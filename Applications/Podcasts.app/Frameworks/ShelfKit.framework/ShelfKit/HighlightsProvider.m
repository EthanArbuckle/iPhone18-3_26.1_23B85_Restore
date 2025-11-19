@interface HighlightsProvider
- (BOOL)isSharedContentWithContentAdamId:(int64_t)a3;
- (BOOL)isSharedContentWithPageAdamId:(id)a3;
- (_TtC8ShelfKit18HighlightsProvider)init;
- (void)accountDidChange;
- (void)clearSharedItems;
- (void)dealloc;
- (void)highlightCenter:(id)a3 didRemoveHighlights:(id)a4;
- (void)highlightCenterSettingsEnablementHasChanged:(void *)a1;
@end

@implementation HighlightsProvider

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightCenter);
  v5 = self;
  [v4 setDelegate:0];
  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver:v5 name:ACDAccountStoreDidChangeNotification object:0];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(HighlightsProvider *)&v7 dealloc];
}

- (void)accountDidChange
{
  v2 = self;
  sub_377D50();
}

- (BOOL)isSharedContentWithContentAdamId:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = HighlightsProvider.isSharedContent(contentAdamId:)(a3);

  return a3 & 1;
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

- (BOOL)isSharedContentWithPageAdamId:(id)a3
{
  if (a3)
  {
    v4 = sub_3ED244();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  v9 = HighlightsProvider.isSharedContent(pageAdamId:)(v8);

  return v9;
}

- (void)highlightCenterSettingsEnablementHasChanged:(void *)a1
{
  v1 = a1;
  _s8ShelfKit18HighlightsProviderC021highlightCenterDidAddC0yySo011SLHighlightF0CF_0();
}

- (void)highlightCenter:(id)a3 didRemoveHighlights:(id)a4
{
  sub_36174(0, &qword_503D28);
  v6 = sub_3ED584();
  v7 = a3;
  v8 = self;
  sub_37D23C(v6);
}

@end