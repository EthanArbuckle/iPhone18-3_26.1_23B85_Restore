@interface SizeClassAutoMarginView
- (_TtC23ShelfKitCollectionViews23SizeClassAutoMarginView)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews23SizeClassAutoMarginView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SizeClassAutoMarginView

- (void)layoutSubviews
{
  v2 = self;
  sub_19ECD8();
}

- (_TtC23ShelfKitCollectionViews23SizeClassAutoMarginView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews23SizeClassAutoMarginView_totalWidth) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SizeClassAutoMarginView();
  return [(SizeClassAutoMarginView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews23SizeClassAutoMarginView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews23SizeClassAutoMarginView_totalWidth) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SizeClassAutoMarginView();
  v4 = a3;
  v5 = [(SizeClassAutoMarginView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end