@interface BubbleTipCell
- (_TtC23ShelfKitCollectionViews13BubbleTipCell)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews13BubbleTipCell)initWithFrame:(CGRect)frame;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)prepareForReuse;
@end

@implementation BubbleTipCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_11FE8C();
}

- (_TtC23ShelfKitCollectionViews13BubbleTipCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_objectGraph) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_messageViewController) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(BubbleTipCell *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews13BubbleTipCell)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_objectGraph) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_messageViewController) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(BubbleTipCell *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  sub_1205C4(controllerCopy, resultCopy);
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  sub_1220B0(error);
}

@end