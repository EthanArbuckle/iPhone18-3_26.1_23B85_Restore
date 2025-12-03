@interface MTLFunctionStitchingGraphSPI
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MTLFunctionStitchingGraphSPI

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = MTLFunctionStitchingGraphSPI;
  return [(MTLFunctionStitchingGraph *)&v4 copyWithZone:zone];
}

@end