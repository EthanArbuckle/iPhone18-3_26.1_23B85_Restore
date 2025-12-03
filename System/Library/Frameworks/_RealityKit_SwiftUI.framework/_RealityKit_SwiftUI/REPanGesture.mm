@interface REPanGesture
- (void)onUIPan;
@end

@implementation REPanGesture

- (void)onUIPan
{
  selfCopy = self;
  REPanGesture.onUIPan()();
}

@end