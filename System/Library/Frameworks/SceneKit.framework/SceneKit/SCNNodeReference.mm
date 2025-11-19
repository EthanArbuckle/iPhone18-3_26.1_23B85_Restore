@interface SCNNodeReference
- (void)dealloc;
@end

@implementation SCNNodeReference

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNNodeReference;
  [(SCNReferenceNode *)&v3 dealloc];
}

@end