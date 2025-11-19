@interface ARSkeleton
- (id)initPrivate;
@end

@implementation ARSkeleton

- (id)initPrivate
{
  v3.receiver = self;
  v3.super_class = ARSkeleton;
  return [(ARSkeleton *)&v3 init];
}

@end