@interface UIKitRelationshipGestureRecognizer
- (_TtC7SwiftUI34UIKitRelationshipGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
@end

@implementation UIKitRelationshipGestureRecognizer

- (_TtC7SwiftUI34UIKitRelationshipGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return UIKitRelationshipGestureRecognizer.init(target:action:)(v6, a4);
}

@end