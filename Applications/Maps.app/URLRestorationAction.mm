@interface URLRestorationAction
- (URLRestorationAction)initWithResetUI:(BOOL)i compatibleWithNavigation:(BOOL)navigation;
@end

@implementation URLRestorationAction

- (URLRestorationAction)initWithResetUI:(BOOL)i compatibleWithNavigation:(BOOL)navigation
{
  v9.receiver = self;
  v9.super_class = URLRestorationAction;
  v6 = [(RestorationAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_resetUI = i;
    v6->_compatibleWithNavigation = navigation;
    [(RestorationAction *)v6 setSource:2];
  }

  return v7;
}

@end