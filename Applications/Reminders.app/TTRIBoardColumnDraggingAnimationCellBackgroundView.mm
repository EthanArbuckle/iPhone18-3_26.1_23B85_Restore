@interface TTRIBoardColumnDraggingAnimationCellBackgroundView
+ (Class)layerClass;
- (_TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation TTRIBoardColumnDraggingAnimationCellBackgroundView

+ (Class)layerClass
{
  sub_100003540(0, &qword_10077BEF8);

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(TTRIBoardColumnDraggingAnimationCellBackgroundView *)&v7 layoutSubviews];
  [v2 bounds];
  if ((v2[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_boundsUsedForShapePath + 32] & 1) == 0 && !CGRectEqualToRect(*&v3, *&v2[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_boundsUsedForShapePath]))
  {
    sub_1002FD128();
  }

  sub_1002FCC88();
}

- (_TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shape;
  v11 = type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shape(0);
  (*(*(v11 - 8) + 56))(self + v10, 1, 1, v11);
  v12 = self + OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_debugShowsBoundingBox) = 0;
  v13 = self + OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_boundsUsedForShapePath;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[32] = 1;
  v15.receiver = self;
  v15.super_class = ObjectType;
  return [(TTRIBoardColumnDraggingAnimationCellBackgroundView *)&v15 initWithFrame:x, y, width, height];
}

@end