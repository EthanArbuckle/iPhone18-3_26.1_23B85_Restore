@interface CLUIServer.SecureViewController
- (_TtCC15ClarityUIServer10CLUIServer20SecureViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation CLUIServer.SecureViewController

- (_TtCC15ClarityUIServer10CLUIServer20SecureViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_E72C();
    v6 = a4;
    v7 = sub_E6FC();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CLUIServer.SecureViewController();
  v9 = [(CLUIServer.SecureViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

@end