@interface RETapGesture
- (void)onUITap:(id)a3;
@end

@implementation RETapGesture

- (void)onUITap:(id)a3
{
  v4 = a3;
  v5 = self;
  RETapGesture.onUITap(_:)(v4);
}

@end