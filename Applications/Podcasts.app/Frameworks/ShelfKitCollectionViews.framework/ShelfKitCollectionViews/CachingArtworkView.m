@interface CachingArtworkView
- (CGRect)bounds;
- (CGRect)frame;
- (_TtC23ShelfKitCollectionViews18CachingArtworkView)init;
- (_TtC23ShelfKitCollectionViews18CachingArtworkView)initWithFrame:(CGRect)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation CachingArtworkView

- (_TtC23ShelfKitCollectionViews18CachingArtworkView)init
{
  *&self->_TtC23ShelfKitCollectionViews11ArtworkView_opaque[OBJC_IVAR____TtC23ShelfKitCollectionViews18CachingArtworkView_subscription] = 0;
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews18CachingArtworkView_subscribedRequest;
  v4 = sub_303398();
  (*(*(v4 - 8) + 56))(&self->_TtC23ShelfKitCollectionViews11ArtworkView_opaque[v3], 1, 1, v4);
  v5 = &self->_TtC23ShelfKitCollectionViews11ArtworkView_opaque[OBJC_IVAR____TtC23ShelfKitCollectionViews18CachingArtworkView_imageProvider];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&self->_TtC23ShelfKitCollectionViews11ArtworkView_opaque[OBJC_IVAR____TtC23ShelfKitCollectionViews18CachingArtworkView_pageRenderController] = 0;
  *&self->_TtC23ShelfKitCollectionViews11ArtworkView_opaque[OBJC_IVAR____TtC23ShelfKitCollectionViews18CachingArtworkView_objectGraph] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CachingArtworkView();
  return [(ArtworkView *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
}

- (_TtC23ShelfKitCollectionViews18CachingArtworkView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGRect)frame
{
  sub_21CEF8(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_21CFDC(&selRef_frame, &selRef_setFrame_, x, y, width, height);
}

- (CGRect)bounds
{
  sub_21CEF8(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_21CFDC(&selRef_bounds, &selRef_setBounds_, x, y, width, height);
}

@end