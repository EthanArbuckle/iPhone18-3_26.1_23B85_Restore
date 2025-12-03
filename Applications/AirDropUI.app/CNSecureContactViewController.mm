@interface CNSecureContactViewController
- (_TtC9AirDropUI29CNSecureContactViewController)initWithCoder:(id)coder;
- (_TtC9AirDropUI29CNSecureContactViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation CNSecureContactViewController

- (_TtC9AirDropUI29CNSecureContactViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CNSecureContactViewController();
  v9 = [(CNSecureContactViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC9AirDropUI29CNSecureContactViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CNSecureContactViewController();
  coderCopy = coder;
  v5 = [(CNSecureContactViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end