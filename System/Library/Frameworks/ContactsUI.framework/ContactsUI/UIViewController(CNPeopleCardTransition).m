@interface UIViewController(CNPeopleCardTransition)
- (id)_cardViewControllerTransitioning;
@end

@implementation UIViewController(CNPeopleCardTransition)

- (id)_cardViewControllerTransitioning
{
  v2 = objc_getAssociatedObject(a1, "CardViewControllerTransitioning");
  if (!v2)
  {
    if ([a1 conformsToProtocol:&unk_1F0D7C4F0])
    {
      v2 = a1;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

@end