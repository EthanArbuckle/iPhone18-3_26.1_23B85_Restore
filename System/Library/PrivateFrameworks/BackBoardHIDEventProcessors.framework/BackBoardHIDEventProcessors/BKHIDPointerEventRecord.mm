@interface BKHIDPointerEventRecord
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
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
  v2 = [(BKHIDPointerEventRecord *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BKHIDPointerEventRecord *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(BKHIDPointerEventRecord *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_senderInfo withName:@"senderInfo"];
  v6 = [v4 appendObject:self->_destinations withName:@"destinations"];
  v7 = [v4 appendDouble:@"destinationCaptureTime" withName:4 decimalPrecision:self->_destinationCaptureTime];
  v8 = [v4 appendBool:self->_trackingButtonDown withName:@"trackingButtonDown"];
  v9 = [v4 appendBool:self->_trackingPointerMovement withName:@"trackingPointerMovement"];

  return v4;
}

@end