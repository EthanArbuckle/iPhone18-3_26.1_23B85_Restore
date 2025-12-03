@interface BAReadingSessionData
- (BAReadingSessionData)init;
- (BAReadingSessionData)initWithPercentCompletionStart:(id)start percentCompletionEnd:(id)end isFreeSample:(id)sample deviceOrientation:(int64_t)orientation;
@end

@implementation BAReadingSessionData

- (BAReadingSessionData)initWithPercentCompletionStart:(id)start percentCompletionEnd:(id)end isFreeSample:(id)sample deviceOrientation:(int64_t)orientation
{
  *(&self->super.isa + OBJC_IVAR___BAReadingSessionData_percentCompletionStart) = start;
  *(&self->super.isa + OBJC_IVAR___BAReadingSessionData_percentCompletionEnd) = end;
  *(&self->super.isa + OBJC_IVAR___BAReadingSessionData_isFreeSample) = sample;
  *(&self->super.isa + OBJC_IVAR___BAReadingSessionData_deviceOrientation) = orientation;
  v13.receiver = self;
  v13.super_class = type metadata accessor for BridgedReadingSessionData();
  startCopy = start;
  endCopy = end;
  sampleCopy = sample;
  return [(BAReadingSessionData *)&v13 init];
}

- (BAReadingSessionData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end