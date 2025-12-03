@interface AMSBannerCell
- (_TtC23ShelfKitCollectionViews13AMSBannerCell)initWithFrame:(CGRect)frame;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)messageViewController:(id)controller enqueueEventWithFields:(id)fields inTopic:(id)topic;
@end

@implementation AMSBannerCell

- (_TtC23ShelfKitCollectionViews13AMSBannerCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_objectGraph) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_metricsController) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_messageViewController) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_amsDialogRequest) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(AMSBannerCell *)&v10 initWithFrame:x, y, width, height];
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  sub_11EC28(resultCopy);
}

- (void)messageViewController:(id)controller enqueueEventWithFields:(id)fields inTopic:(id)topic
{
  v8 = sub_30BF98();
  if (topic)
  {
    v9 = sub_30C0D8();
    topic = v10;
  }

  else
  {
    v9 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_11EEF0(v8, v9, topic);
}

@end