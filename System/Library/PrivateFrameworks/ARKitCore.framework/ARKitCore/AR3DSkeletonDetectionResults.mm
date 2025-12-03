@interface AR3DSkeletonDetectionResults
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AR3DSkeletonDetectionResults

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_timestamp;
  v6 = [(NSArray *)self->_detectedSkeletons copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

@end