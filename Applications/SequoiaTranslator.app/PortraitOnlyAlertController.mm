@interface PortraitOnlyAlertController
- (_TtC17SequoiaTranslator27PortraitOnlyAlertController)initWithCoder:(id)coder;
- (_TtC17SequoiaTranslator27PortraitOnlyAlertController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation PortraitOnlyAlertController

- (_TtC17SequoiaTranslator27PortraitOnlyAlertController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for PortraitOnlyAlertController();
  v9 = [(PortraitOnlyAlertController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC17SequoiaTranslator27PortraitOnlyAlertController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PortraitOnlyAlertController();
  coderCopy = coder;
  v5 = [(PortraitOnlyAlertController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end