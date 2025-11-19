@interface UIWindow
- (id)im_ancestorConformingToProtocol:(id)a3;
@end

@implementation UIWindow

- (id)im_ancestorConformingToProtocol:(id)a3
{
  v4 = a3;
  v5 = [(UIWindow *)self windowScene];
  v6 = [v5 delegate];
  if (![v6 conformsToProtocol:v4] || (v7 = v6) == 0)
  {
    objc_opt_class();
    v8 = BUDynamicCast();
    v7 = [v8 controller];
    if (([v7 conformsToProtocol:v4] & 1) == 0)
    {

LABEL_7:
      v9 = +[UIApplication jsa_sharedApplicationIfNotExtension];
      v10 = [v9 delegate];

      if ([v10 conformsToProtocol:v4])
      {
        v7 = v10;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_11;
    }

    if (!v7)
    {
      goto LABEL_7;
    }
  }

LABEL_11:

  return v7;
}

@end