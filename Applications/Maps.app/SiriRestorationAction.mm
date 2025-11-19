@interface SiriRestorationAction
- (SiriRestorationAction)initWithResetUI:(BOOL)a3 compatibleWithNavigation:(BOOL)a4;
@end

@implementation SiriRestorationAction

- (SiriRestorationAction)initWithResetUI:(BOOL)a3 compatibleWithNavigation:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = SiriRestorationAction;
  v4 = [(URLRestorationAction *)&v7 initWithResetUI:a3 compatibleWithNavigation:a4];
  v5 = v4;
  if (v4)
  {
    [(RestorationAction *)v4 setSource:5];
  }

  return v5;
}

@end