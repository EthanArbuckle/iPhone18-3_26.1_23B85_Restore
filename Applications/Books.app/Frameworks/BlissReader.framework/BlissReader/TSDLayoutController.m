@interface TSDLayoutController
- (BOOL)isCompactHeight;
- (BOOL)isCompactWidth;
- (id)th_traitsCache;
@end

@implementation TSDLayoutController

- (id)th_traitsCache
{
  v2 = [objc_msgSend(-[TSDLayoutController canvas](self "canvas")];
  v3 = TSUCheckedProtocolCast();
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v5 = THLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_29CCA0(v5);
      }
    }
  }

  return [v4 traitsCache];
}

- (BOOL)isCompactWidth
{
  v2 = [(TSDLayoutController *)self th_traitsCache];

  return [v2 isCompactWidth];
}

- (BOOL)isCompactHeight
{
  v2 = [(TSDLayoutController *)self th_traitsCache];

  return [v2 isCompactHeight];
}

@end