@interface HandoffRestorationAction
- (HandoffRestorationAction)init;
@end

@implementation HandoffRestorationAction

- (HandoffRestorationAction)init
{
  v5.receiver = self;
  v5.super_class = HandoffRestorationAction;
  v2 = [(RestorationAction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RestorationAction *)v2 setSource:0];
    [(RestorationAction *)v3 setFidelity:268435407];
  }

  return v3;
}

@end