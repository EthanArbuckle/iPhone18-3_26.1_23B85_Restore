@interface SFMultipleLineAlertAction
+ (id)actionWithTitle:(id)a3 detail:(id)a4 style:(int64_t)a5 handler:(id)a6;
@end

@implementation SFMultipleLineAlertAction

+ (id)actionWithTitle:(id)a3 detail:(id)a4 style:(int64_t)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[_SFMultipleLineAlertActionViewController alloc] initWithTitle:v12 detail:v11 style:a5];

  v14 = [a1 _actionWithContentViewController:v13 style:a5 handler:v10];

  return v14;
}

@end