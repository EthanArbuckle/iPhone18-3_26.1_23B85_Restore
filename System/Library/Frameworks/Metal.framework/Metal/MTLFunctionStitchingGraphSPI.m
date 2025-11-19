@interface MTLFunctionStitchingGraphSPI
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MTLFunctionStitchingGraphSPI

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = MTLFunctionStitchingGraphSPI;
  return [(MTLFunctionStitchingGraph *)&v4 copyWithZone:a3];
}

@end