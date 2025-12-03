@interface BCEngagementEventController
- (BCEngagementEventController)init;
- (BCEngagementEventDataProvider)dataProvider;
- (void)setDataProvider:(id)provider;
- (void)submitEvent:(id)event :(id)a4;
@end

@implementation BCEngagementEventController

- (BCEngagementEventDataProvider)dataProvider
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDataProvider:(id)provider
{
  v5 = OBJC_IVAR___BCEngagementEventController_dataProvider;
  swift_beginAccess();
  *(&self->super.isa + v5) = provider;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (BCEngagementEventController)init
{
  *(&self->super.isa + OBJC_IVAR___BCEngagementEventController_dataProvider) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for EngagementEventController();
  return [(BCEngagementEventController *)&v3 init];
}

- (void)submitEvent:(id)event :(id)a4
{
  v6 = sub_1EEF04();
  v8 = v7;
  if (a4)
  {
    a4 = sub_1EEE54();
  }

  selfCopy = self;
  sub_1C4B80(v6, v8, a4);
}

@end