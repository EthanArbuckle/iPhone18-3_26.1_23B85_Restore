@interface BAReadingSessionData
- (BAReadingSessionData)init;
- (BAReadingSessionData)initWithPercentCompletionStart:(id)a3 percentCompletionEnd:(id)a4 isFreeSample:(id)a5 deviceOrientation:(int64_t)a6;
@end

@implementation BAReadingSessionData

- (BAReadingSessionData)initWithPercentCompletionStart:(id)a3 percentCompletionEnd:(id)a4 isFreeSample:(id)a5 deviceOrientation:(int64_t)a6
{
  *(&self->super.isa + OBJC_IVAR___BAReadingSessionData_percentCompletionStart) = a3;
  *(&self->super.isa + OBJC_IVAR___BAReadingSessionData_percentCompletionEnd) = a4;
  *(&self->super.isa + OBJC_IVAR___BAReadingSessionData_isFreeSample) = a5;
  *(&self->super.isa + OBJC_IVAR___BAReadingSessionData_deviceOrientation) = a6;
  v13.receiver = self;
  v13.super_class = type metadata accessor for BridgedReadingSessionData();
  v9 = a3;
  v10 = a4;
  v11 = a5;
  return [(BAReadingSessionData *)&v13 init];
}

- (BAReadingSessionData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end