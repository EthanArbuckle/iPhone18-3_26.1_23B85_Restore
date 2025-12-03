@interface RETapGesture
- (void)onUITap:(id)tap;
@end

@implementation RETapGesture

- (void)onUITap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  RETapGesture.onUITap(_:)(tapCopy);
}

@end