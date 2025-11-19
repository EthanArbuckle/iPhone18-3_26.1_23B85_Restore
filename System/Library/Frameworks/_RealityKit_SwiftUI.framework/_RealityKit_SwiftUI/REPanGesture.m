@interface REPanGesture
- (void)onUIPan;
@end

@implementation REPanGesture

- (void)onUIPan
{
  v2 = self;
  REPanGesture.onUIPan()();
}

@end