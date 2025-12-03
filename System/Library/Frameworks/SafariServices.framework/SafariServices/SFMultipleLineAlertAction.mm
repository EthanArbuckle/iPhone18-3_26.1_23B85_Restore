@interface SFMultipleLineAlertAction
+ (id)actionWithTitle:(id)title detail:(id)detail style:(int64_t)style handler:(id)handler;
@end

@implementation SFMultipleLineAlertAction

+ (id)actionWithTitle:(id)title detail:(id)detail style:(int64_t)style handler:(id)handler
{
  handlerCopy = handler;
  detailCopy = detail;
  titleCopy = title;
  v13 = [[_SFMultipleLineAlertActionViewController alloc] initWithTitle:titleCopy detail:detailCopy style:style];

  v14 = [self _actionWithContentViewController:v13 style:style handler:handlerCopy];

  return v14;
}

@end