@interface LearnMoreSmartFoldersFiltersView
- (_TtC11MobileNotes32LearnMoreSmartFoldersFiltersView)initWithFrame:(CGRect)a3;
@end

@implementation LearnMoreSmartFoldersFiltersView

- (_TtC11MobileNotes32LearnMoreSmartFoldersFiltersView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView_heightConstraint) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView____lazy_storage___collectionView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView_diffableDataSource) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(LearnMoreSmartFoldersFiltersView *)&v11 initWithFrame:x, y, width, height];
  sub_1004B4F24();

  return v9;
}

@end