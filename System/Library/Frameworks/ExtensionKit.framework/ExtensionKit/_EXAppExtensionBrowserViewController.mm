@interface _EXAppExtensionBrowserViewController
- (_EXAppExtensionBrowserViewController)initWithCoder:(id)a3;
- (_EXAppExtensionBrowserViewController)initWithConfiguration:(id)a3;
- (_EXAppExtensionBrowserViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation _EXAppExtensionBrowserViewController

- (_EXAppExtensionBrowserViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _EXAppExtensionBrowserViewController;
  v3 = a3;
  v4 = [(EXAppExtensionBrowserViewController *)&v6 initWithCoder:v3];

  if (v4)
  {
  }

  return v4;
}

- (_EXAppExtensionBrowserViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D2A003E8();
    v6 = a4;
    v7 = sub_1D2A003B8();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = _EXAppExtensionBrowserViewController;
  v9 = [(EXAppExtensionBrowserViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_EXAppExtensionBrowserViewController)initWithConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = _EXAppExtensionBrowserViewController;
  return [(EXAppExtensionBrowserViewController *)&v4 initWithConfiguration:a3];
}

@end