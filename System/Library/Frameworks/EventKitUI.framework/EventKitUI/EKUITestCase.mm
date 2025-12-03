@interface EKUITestCase
- (id)controller;
@end

@implementation EKUITestCase

- (id)controller
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"EKUITestCase.m" lineNumber:18 description:@"Override in Subclass"];

  return 0;
}

@end