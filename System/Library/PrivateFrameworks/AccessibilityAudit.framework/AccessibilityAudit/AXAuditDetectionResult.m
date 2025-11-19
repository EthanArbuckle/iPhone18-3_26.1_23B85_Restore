@interface AXAuditDetectionResult
- (CGRect)detectionRegion;
@end

@implementation AXAuditDetectionResult

- (CGRect)detectionRegion
{
  x = self->_detectionRegion.origin.x;
  y = self->_detectionRegion.origin.y;
  width = self->_detectionRegion.size.width;
  height = self->_detectionRegion.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end