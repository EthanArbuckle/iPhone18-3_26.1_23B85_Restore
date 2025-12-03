@interface CLBActivationMetricsInfo
- (CLBActivationMetricsInfo)init;
- (CLBActivationMetricsInfo)initWithSignpostID:(unint64_t)d activationEventTime:(double)time launchMetricsPayload:(id)payload;
- (OS_xpc_object)launchMetricsPayload;
- (void)setLaunchMetricsPayload:(id)payload;
@end

@implementation CLBActivationMetricsInfo

- (OS_xpc_object)launchMetricsPayload
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setLaunchMetricsPayload:(id)payload
{
  *(&self->super.isa + OBJC_IVAR___CLBActivationMetricsInfo_launchMetricsPayload) = payload;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (CLBActivationMetricsInfo)initWithSignpostID:(unint64_t)d activationEventTime:(double)time launchMetricsPayload:(id)payload
{
  v5 = OBJC_IVAR___CLBActivationMetricsInfo_launchMetricsPayload;
  *(&self->super.isa + OBJC_IVAR___CLBActivationMetricsInfo_launchMetricsPayload) = 0;
  *(&self->super.isa + OBJC_IVAR___CLBActivationMetricsInfo_signpostID) = d;
  *(&self->super.isa + OBJC_IVAR___CLBActivationMetricsInfo_activationEventTime) = time;
  *(&self->super.isa + v5) = payload;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActivationMetricsInfo();
  swift_unknownObjectRetain();
  return [(CLBActivationMetricsInfo *)&v7 init];
}

- (CLBActivationMetricsInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end