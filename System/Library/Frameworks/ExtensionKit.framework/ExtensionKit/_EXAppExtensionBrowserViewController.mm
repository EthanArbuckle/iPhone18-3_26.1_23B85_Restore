@interface _EXAppExtensionBrowserViewController
- (_EXAppExtensionBrowserViewController)initWithCoder:(id)coder;
- (_EXAppExtensionBrowserViewController)initWithConfiguration:(id)configuration;
- (_EXAppExtensionBrowserViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation _EXAppExtensionBrowserViewController

- (_EXAppExtensionBrowserViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _EXAppExtensionBrowserViewController;
  coderCopy = coder;
  v4 = [(EXAppExtensionBrowserViewController *)&v6 initWithCoder:coderCopy];

  if (v4)
  {
  }

  return v4;
}

- (_EXAppExtensionBrowserViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D2A003E8();
    bundleCopy = bundle;
    v7 = sub_1D2A003B8();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = _EXAppExtensionBrowserViewController;
  v9 = [(EXAppExtensionBrowserViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_EXAppExtensionBrowserViewController)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = _EXAppExtensionBrowserViewController;
  return [(EXAppExtensionBrowserViewController *)&v4 initWithConfiguration:configuration];
}

@end