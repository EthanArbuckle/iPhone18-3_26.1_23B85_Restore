@interface URLRestorationAction
- (URLRestorationAction)initWithResetUI:(BOOL)a3 compatibleWithNavigation:(BOOL)a4;
@end

@implementation URLRestorationAction

- (URLRestorationAction)initWithResetUI:(BOOL)a3 compatibleWithNavigation:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = URLRestorationAction;
  v6 = [(RestorationAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_resetUI = a3;
    v6->_compatibleWithNavigation = a4;
    [(RestorationAction *)v6 setSource:2];
  }

  return v7;
}

@end