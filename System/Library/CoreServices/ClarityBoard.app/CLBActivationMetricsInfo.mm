@interface CLBActivationMetricsInfo
- (CLBActivationMetricsInfo)init;
- (CLBActivationMetricsInfo)initWithSignpostID:(unint64_t)a3 activationEventTime:(double)a4 launchMetricsPayload:(id)a5;
- (OS_xpc_object)launchMetricsPayload;
- (void)setLaunchMetricsPayload:(id)a3;
@end

@implementation CLBActivationMetricsInfo

- (OS_xpc_object)launchMetricsPayload
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setLaunchMetricsPayload:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___CLBActivationMetricsInfo_launchMetricsPayload) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (CLBActivationMetricsInfo)initWithSignpostID:(unint64_t)a3 activationEventTime:(double)a4 launchMetricsPayload:(id)a5
{
  v5 = OBJC_IVAR___CLBActivationMetricsInfo_launchMetricsPayload;
  *(&self->super.isa + OBJC_IVAR___CLBActivationMetricsInfo_launchMetricsPayload) = 0;
  *(&self->super.isa + OBJC_IVAR___CLBActivationMetricsInfo_signpostID) = a3;
  *(&self->super.isa + OBJC_IVAR___CLBActivationMetricsInfo_activationEventTime) = a4;
  *(&self->super.isa + v5) = a5;
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