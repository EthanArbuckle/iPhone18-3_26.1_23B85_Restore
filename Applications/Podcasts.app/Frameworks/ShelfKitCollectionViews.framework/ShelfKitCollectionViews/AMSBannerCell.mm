@interface AMSBannerCell
- (_TtC23ShelfKitCollectionViews13AMSBannerCell)initWithFrame:(CGRect)a3;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)messageViewController:(id)a3 enqueueEventWithFields:(id)a4 inTopic:(id)a5;
@end

@implementation AMSBannerCell

- (_TtC23ShelfKitCollectionViews13AMSBannerCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_objectGraph) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_metricsController) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_messageViewController) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13AMSBannerCell_amsDialogRequest) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(AMSBannerCell *)&v10 initWithFrame:x, y, width, height];
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_11EC28(v7);
}

- (void)messageViewController:(id)a3 enqueueEventWithFields:(id)a4 inTopic:(id)a5
{
  v8 = sub_30BF98();
  if (a5)
  {
    v9 = sub_30C0D8();
    a5 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = a3;
  v12 = self;
  sub_11EEF0(v8, v9, a5);
}

@end