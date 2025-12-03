@interface RELongPressGesture
- (void)onUILongPress:(id)press;
@end

@implementation RELongPressGesture

- (void)onUILongPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  RELongPressGesture.onUILongPress(_:)(pressCopy);
}

@end