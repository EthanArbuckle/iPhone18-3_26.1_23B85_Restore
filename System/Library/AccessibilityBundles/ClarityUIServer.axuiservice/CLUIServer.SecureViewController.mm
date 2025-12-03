@interface CLUIServer.SecureViewController
- (_TtCC15ClarityUIServer10CLUIServer20SecureViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation CLUIServer.SecureViewController

- (_TtCC15ClarityUIServer10CLUIServer20SecureViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_E72C();
    bundleCopy = bundle;
    v7 = sub_E6FC();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CLUIServer.SecureViewController();
  v9 = [(CLUIServer.SecureViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

@end