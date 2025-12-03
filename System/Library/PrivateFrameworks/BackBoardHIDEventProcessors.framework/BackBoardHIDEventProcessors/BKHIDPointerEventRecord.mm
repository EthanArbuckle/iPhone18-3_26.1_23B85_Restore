@interface BKHIDPointerEventRecord
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation BKHIDPointerEventRecord

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v5 = [v3 appendDouble:@"trackedTime" withName:4 decimalPrecision:v4 - self->_destinationCaptureTime];
  v6 = [v3 appendBool:self->_didTrackButtonDown withName:@"didTrackButtonDown"];
  v7 = [v3 appendBool:self->_didTrackPointerMovement withName:@"didTrackPointerMovement"];

  return v3;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKHIDPointerEventRecord *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKHIDPointerEventRecord *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BKHIDPointerEventRecord *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_senderInfo withName:@"senderInfo"];
  v6 = [succinctDescriptionBuilder appendObject:self->_destinations withName:@"destinations"];
  v7 = [succinctDescriptionBuilder appendDouble:@"destinationCaptureTime" withName:4 decimalPrecision:self->_destinationCaptureTime];
  v8 = [succinctDescriptionBuilder appendBool:self->_trackingButtonDown withName:@"trackingButtonDown"];
  v9 = [succinctDescriptionBuilder appendBool:self->_trackingPointerMovement withName:@"trackingPointerMovement"];

  return succinctDescriptionBuilder;
}

@end