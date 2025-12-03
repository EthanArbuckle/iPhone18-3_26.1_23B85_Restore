@interface UIKitRelationshipGestureRecognizer
- (_TtC7SwiftUI34UIKitRelationshipGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
@end

@implementation UIKitRelationshipGestureRecognizer

- (_TtC7SwiftUI34UIKitRelationshipGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return UIKitRelationshipGestureRecognizer.init(target:action:)(v6, action);
}

@end