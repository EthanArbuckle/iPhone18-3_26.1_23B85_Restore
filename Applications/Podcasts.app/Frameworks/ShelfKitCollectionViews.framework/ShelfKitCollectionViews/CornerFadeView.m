@interface CornerFadeView
- (_TtC23ShelfKitCollectionViews14CornerFadeView)initWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation CornerFadeView

- (void)drawRect:(CGRect)a3
{
  v3 = self;
  sub_22EF90();
}

- (_TtC23ShelfKitCollectionViews14CornerFadeView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_alignment) = 1;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_safetyCutoutSize);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews14CornerFadeView_fadeLength) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

@end