@interface CNDDUISecureContactViewController
- (_TtC17DeviceDiscoveryUI33CNDDUISecureContactViewController)initWithCoder:(id)coder;
- (_TtC17DeviceDiscoveryUI33CNDDUISecureContactViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation CNDDUISecureContactViewController

- (_TtC17DeviceDiscoveryUI33CNDDUISecureContactViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_238154CCC();
    bundleCopy = bundle;
    v7 = sub_238154C8C();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CNDDUISecureContactViewController();
  v9 = [(CNDDUISecureContactViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC17DeviceDiscoveryUI33CNDDUISecureContactViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CNDDUISecureContactViewController();
  coderCopy = coder;
  v5 = [(CNDDUISecureContactViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end