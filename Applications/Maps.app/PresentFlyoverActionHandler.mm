@interface PresentFlyoverActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation PresentFlyoverActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100F16E80;
    v7[3] = &unk_10165CFF8;
    v8 = contextCopy;
    [actionCopy resolveFlyoverWithCompletion:v7];
  }
}

@end