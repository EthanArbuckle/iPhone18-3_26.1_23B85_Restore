@interface UIView(APUIWidgetAdditions)
- (id)apuiFindInnermostSuperviewOfClass:()APUIWidgetAdditions;
@end

@implementation UIView(APUIWidgetAdditions)

- (id)apuiFindInnermostSuperviewOfClass:()APUIWidgetAdditions
{
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    superview = [self superview];
    selfCopy = [superview apuiFindInnermostSuperviewOfClass:a3];
  }

  return selfCopy;
}

@end