@interface MTLDebugSubProgram
- (void)releaseInternal;
@end

@implementation MTLDebugSubProgram

- (void)releaseInternal
{
  v2.receiver = self;
  v2.super_class = MTLDebugSubProgram;
  [(MTLDebugSubProgram *)&v2 release];
}

@end