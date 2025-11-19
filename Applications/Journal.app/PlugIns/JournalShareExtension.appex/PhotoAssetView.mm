@interface PhotoAssetView
- (CGRect)bounds;
- (CGRect)frame;
- (_TtC21JournalShareExtension14PhotoAssetView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PhotoAssetView

- (_TtC21JournalShareExtension14PhotoAssetView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC21JournalShareExtension14PhotoAssetView_assetImageView;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(UIImageView) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension14PhotoAssetView_needsCropRectUpdate) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension14PhotoAssetView_photoAsset) = 0;
  v9 = OBJC_IVAR____TtC21JournalShareExtension14PhotoAssetView_latestImageRequestID;
  v10 = sub_1000FF874();
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  v13.receiver = self;
  v13.super_class = type metadata accessor for PhotoAssetView();
  v11 = [(JournalAssetView *)&v13 initWithFrame:x, y, width, height];
  sub_1000CC0A8();

  return v11;
}

- (CGRect)frame
{
  sub_1000CC26C(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)bounds
{
  sub_1000CC26C(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotoAssetView();
  v2 = v3.receiver;
  [(PhotoAssetView *)&v3 layoutSubviews];
  if (v2[OBJC_IVAR____TtC21JournalShareExtension14PhotoAssetView_needsCropRectUpdate] == 1)
  {
    sub_1000CC41C();
  }
}

@end