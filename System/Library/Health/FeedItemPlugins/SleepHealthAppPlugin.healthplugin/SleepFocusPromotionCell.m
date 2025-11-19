@interface SleepFocusPromotionCell
- (_TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell)initWithCoder:(id)a3;
@end

@implementation SleepFocusPromotionCell

- (_TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell)initWithCoder:(id)a3
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self + OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_2908C9C3B675E281B22851DB0A656EF223SleepFocusPromotionCell_promotionView;
  type metadata accessor for SleepFocusPromotionView();
  *(&self->super.super.super.super.super.super.super.isa + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_29E754E48();
  __break(1u);
  return result;
}

@end