@interface AR3DSkeletonDetectionResults
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AR3DSkeletonDetectionResults

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_timestamp;
  v6 = [(NSArray *)self->_detectedSkeletons copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

@end