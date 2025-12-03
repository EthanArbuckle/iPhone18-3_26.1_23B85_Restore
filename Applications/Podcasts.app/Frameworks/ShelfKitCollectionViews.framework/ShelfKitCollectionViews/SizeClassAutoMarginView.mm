@interface SizeClassAutoMarginView
- (_TtC23ShelfKitCollectionViews23SizeClassAutoMarginView)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews23SizeClassAutoMarginView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SizeClassAutoMarginView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_19ECD8();
}

- (_TtC23ShelfKitCollectionViews23SizeClassAutoMarginView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews23SizeClassAutoMarginView_totalWidth) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SizeClassAutoMarginView();
  return [(SizeClassAutoMarginView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews23SizeClassAutoMarginView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews23SizeClassAutoMarginView_totalWidth) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SizeClassAutoMarginView();
  coderCopy = coder;
  v5 = [(SizeClassAutoMarginView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end