@interface CNDDUISecureContactViewController
- (_TtC17DeviceDiscoveryUI33CNDDUISecureContactViewController)initWithCoder:(id)a3;
- (_TtC17DeviceDiscoveryUI33CNDDUISecureContactViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation CNDDUISecureContactViewController

- (_TtC17DeviceDiscoveryUI33CNDDUISecureContactViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_238154CCC();
    v6 = a4;
    v7 = sub_238154C8C();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CNDDUISecureContactViewController();
  v9 = [(CNDDUISecureContactViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC17DeviceDiscoveryUI33CNDDUISecureContactViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CNDDUISecureContactViewController();
  v4 = a3;
  v5 = [(CNDDUISecureContactViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end