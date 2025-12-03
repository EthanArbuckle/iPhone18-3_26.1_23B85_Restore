@interface SiriRestorationAction
- (SiriRestorationAction)initWithResetUI:(BOOL)i compatibleWithNavigation:(BOOL)navigation;
@end

@implementation SiriRestorationAction

- (SiriRestorationAction)initWithResetUI:(BOOL)i compatibleWithNavigation:(BOOL)navigation
{
  v7.receiver = self;
  v7.super_class = SiriRestorationAction;
  v4 = [(URLRestorationAction *)&v7 initWithResetUI:i compatibleWithNavigation:navigation];
  v5 = v4;
  if (v4)
  {
    [(RestorationAction *)v4 setSource:5];
  }

  return v5;
}

@end