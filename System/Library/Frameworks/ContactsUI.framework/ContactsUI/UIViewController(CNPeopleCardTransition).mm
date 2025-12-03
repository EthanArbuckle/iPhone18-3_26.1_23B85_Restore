@interface UIViewController(CNPeopleCardTransition)
- (id)_cardViewControllerTransitioning;
@end

@implementation UIViewController(CNPeopleCardTransition)

- (id)_cardViewControllerTransitioning
{
  selfCopy = objc_getAssociatedObject(self, "CardViewControllerTransitioning");
  if (!selfCopy)
  {
    if ([self conformsToProtocol:&unk_1F0D7C4F0])
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

@end