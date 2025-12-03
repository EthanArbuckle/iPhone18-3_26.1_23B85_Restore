@interface UnpreventableHoverGestureRecognizer
- (_TtC23ShelfKitCollectionViews35UnpreventableHoverGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
@end

@implementation UnpreventableHoverGestureRecognizer

- (_TtC23ShelfKitCollectionViews35UnpreventableHoverGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_30D448();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_2DD8A8(v6, action);
}

@end