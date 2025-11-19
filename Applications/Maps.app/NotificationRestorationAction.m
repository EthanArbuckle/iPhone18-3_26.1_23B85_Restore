@interface NotificationRestorationAction
- (NotificationRestorationAction)init;
@end

@implementation NotificationRestorationAction

- (NotificationRestorationAction)init
{
  v5.receiver = self;
  v5.super_class = NotificationRestorationAction;
  v2 = [(RestorationAction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RestorationAction *)v2 setSource:0];
  }

  return v3;
}

@end