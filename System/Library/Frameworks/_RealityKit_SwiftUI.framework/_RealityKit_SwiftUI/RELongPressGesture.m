@interface RELongPressGesture
- (void)onUILongPress:(id)a3;
@end

@implementation RELongPressGesture

- (void)onUILongPress:(id)a3
{
  v4 = a3;
  v5 = self;
  RELongPressGesture.onUILongPress(_:)(v4);
}

@end