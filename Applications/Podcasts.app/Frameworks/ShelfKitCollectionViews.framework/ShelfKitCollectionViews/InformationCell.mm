@interface InformationCell
- (_TtC23ShelfKitCollectionViews15InformationCell)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation InformationCell

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(InformationCell *)&v6 traitCollectionDidChange:v4];
  sub_26216C();
}

- (_TtC23ShelfKitCollectionViews15InformationCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_kind) = 16;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_info;
  v10 = sub_307A88();
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_shouldShowChevron) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_shouldShowDownwardChevron) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_objectGraph) = 0;
  v11 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_reload);
  *v11 = 0;
  v11[1] = 0;
  v13.receiver = self;
  v13.super_class = ObjectType;
  return [(InformationCell *)&v13 initWithFrame:x, y, width, height];
}

@end