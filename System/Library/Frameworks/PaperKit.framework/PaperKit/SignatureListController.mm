@interface SignatureListController
- (_TtC8PaperKit23SignatureListController)initWithCoder:(id)coder;
- (_TtC8PaperKit23SignatureListController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation SignatureListController

- (_TtC8PaperKit23SignatureListController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    bundleCopy = bundle;
    v10 = MEMORY[0x1DA6CCED0](v6, v8);
  }

  else
  {
    bundleCopy2 = bundle;
    v10 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for SignatureListController();
  v12 = [(SignatureListController *)&v14 initWithNibName:v10 bundle:bundle];

  return v12;
}

- (_TtC8PaperKit23SignatureListController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SignatureListController();
  coderCopy = coder;
  v5 = [(SignatureListController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end