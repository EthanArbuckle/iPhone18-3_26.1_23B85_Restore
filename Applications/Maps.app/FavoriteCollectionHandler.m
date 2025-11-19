@interface FavoriteCollectionHandler
+ (id)FavoriteCollectionIdentifier;
+ (void)setTitle:(id)a3;
- (BOOL)containsItem:(id)a3;
- (NSArray)storeSubscriptionTypes;
- (NSNumber)numberOfItems;
- (NSURL)fullSharingURL;
- (UIImage)_glyphImage;
- (UIImage)glyphImage;
- (UIImage)image;
- (_TtC4Maps25FavoriteCollectionHandler)initWithCollection:(id)a3;
- (void)addObjects:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)fetchCoverPhotoForFrameSize:(CGSize)a3 scale:(double)a4 completion:(id)a5;
- (void)removeObjects:(id)a3 completion:(id)a4;
- (void)setStoreSubscriptionTypes:(id)a3;
- (void)set_glyphImage:(id)a3;
- (void)storeDidChange:(id)a3;
- (void)updateTitle:(id)a3 forMapItem:(id)a4 completion:(id)a5;
@end

@implementation FavoriteCollectionHandler

+ (id)FavoriteCollectionIdentifier
{
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

+ (void)setTitle:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (qword_1019068E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&static FavoriteCollectionHandler.title = v3;
  *(&static FavoriteCollectionHandler.title + 1) = v5;
}

- (UIImage)glyphImage
{
  v2 = self;
  v3 = FavoriteCollectionHandler._glyphImage.getter();

  return v3;
}

- (UIImage)_glyphImage
{
  v2 = self;
  v3 = FavoriteCollectionHandler._glyphImage.getter();

  return v3;
}

- (void)set_glyphImage:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler____lazy_storage____glyphImage);
  *(self + OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler____lazy_storage____glyphImage) = a3;
  v5 = a3;
  v6 = self;
  sub_10005D280(v4);
}

- (UIImage)image
{
  sub_100014C84(0, &qword_10190AB90);
  static MapsDesignConstants.Image.Guides.favorites.getter();
  v2 = static UIImage.mapsDesignImage(_:)();

  return v2;
}

- (void)fetchCoverPhotoForFrameSize:(CGSize)a3 scale:(double)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = self;
  v8 = [(FavoriteCollectionHandler *)v7 image];
  v6[2](v6, v8, 0);

  _Block_release(v6);
}

- (NSURL)fullSharingURL
{
  v3 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = self;
  v10 = [(CollectionHandler *)v9 fullSharingURLFromContainedMapItems];
  if (v10)
  {
    v11 = v10;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  }

  else
  {

    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  }

  sub_100102C34(v5, v8);
  type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v8, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    URL._bridgeToObjectiveC()(v14);
    v17 = v16;
    (*(v13 + 8))(v8, v12);
    v15 = v17;
  }

  return v15;
}

- (void)dealloc
{
  type metadata accessor for MapsSyncStore();
  v3 = self;
  v4 = static MapsSyncStore.sharedStore.getter();
  v5 = v3;
  dispatch thunk of MapsSyncStore.unsubscribe(_:)();

  v6.receiver = v5;
  v6.super_class = type metadata accessor for FavoriteCollectionHandler();
  [(FavoriteCollectionHandler *)&v6 dealloc];
}

- (BOOL)containsItem:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FavoriteCollectionHandler();
  v4 = [(CollectionHandler *)&v7 itemForMapItem:a3];
  v5 = v4;
  if (v4)
  {
  }

  return v5 != 0;
}

- (void)addObjects:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_10041A668;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  FavoriteCollectionHandler.add(_:completion:)(v6, v5, v7);
  sub_1000D3B90(v5, v7);
}

- (void)removeObjects:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_10041A668;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  FavoriteCollectionHandler.remove(_:completion:)(v6, v5, v7);
  sub_1000D3B90(v5, v7);
}

- (void)updateTitle:(id)a3 forMapItem:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v7)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v7 = sub_100115C80;
  }

  else
  {
    v11 = 0;
  }

  v12 = a4;
  v13 = self;
  FavoriteCollectionHandler.updateTitle(_:for:completion:)(v8, v10, v12, v7, v11);
  sub_1000D3B90(v7, v11);
}

- (NSNumber)numberOfItems
{
  if (*(self + OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_placeCount + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(NSNumber) initWithInteger:*(self + OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_placeCount)];
  }

  return v3;
}

- (NSArray)storeSubscriptionTypes
{
  swift_beginAccess();

  sub_1000CE6B8(&qword_1019083F0);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setStoreSubscriptionTypes:(id)a3
{
  sub_1000CE6B8(&qword_1019083F0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_storeSubscriptionTypes;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (void)storeDidChange:(id)a3
{
  v3 = self;
  _s4Maps25FavoriteCollectionHandlerC14storeDidChangeyySay0A4Sync0aH6ObjectCmGF_0();
}

- (_TtC4Maps25FavoriteCollectionHandler)initWithCollection:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end