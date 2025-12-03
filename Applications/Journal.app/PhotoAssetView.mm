@interface PhotoAssetView
- (CGRect)bounds;
- (CGRect)frame;
- (_TtC7Journal14PhotoAssetView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PhotoAssetView

- (_TtC7Journal14PhotoAssetView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(UIImageView) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14PhotoAssetView_needsCropRectUpdate) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset) = 0;
  v9 = OBJC_IVAR____TtC7Journal14PhotoAssetView_latestImageRequestID;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  v13.receiver = self;
  v13.super_class = type metadata accessor for PhotoAssetView();
  height = [(JournalAssetView *)&v13 initWithFrame:x, y, width, height];
  sub_1000701DC();

  return height;
}

- (CGRect)bounds
{
  sub_1000700A4(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)frame
{
  sub_1000700A4(self, a2, &selRef_frame);
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
  if (v2[OBJC_IVAR____TtC7Journal14PhotoAssetView_needsCropRectUpdate] == 1)
  {
    sub_10025FF04();
  }
}

@end