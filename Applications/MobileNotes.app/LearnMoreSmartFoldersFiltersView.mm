@interface LearnMoreSmartFoldersFiltersView
- (_TtC11MobileNotes32LearnMoreSmartFoldersFiltersView)initWithFrame:(CGRect)frame;
@end

@implementation LearnMoreSmartFoldersFiltersView

- (_TtC11MobileNotes32LearnMoreSmartFoldersFiltersView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView_heightConstraint) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView____lazy_storage___collectionView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersView_diffableDataSource) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  height = [(LearnMoreSmartFoldersFiltersView *)&v11 initWithFrame:x, y, width, height];
  sub_1004B4F24();

  return height;
}

@end