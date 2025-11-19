@interface EKUITestCase
- (id)controller;
@end

@implementation EKUITestCase

- (id)controller
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"EKUITestCase.m" lineNumber:18 description:@"Override in Subclass"];

  return 0;
}

@end