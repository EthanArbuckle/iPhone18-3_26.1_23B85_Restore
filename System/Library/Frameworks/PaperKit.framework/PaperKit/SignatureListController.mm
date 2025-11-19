@interface SignatureListController
- (_TtC8PaperKit23SignatureListController)initWithCoder:(id)a3;
- (_TtC8PaperKit23SignatureListController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation SignatureListController

- (_TtC8PaperKit23SignatureListController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v9 = a4;
    v10 = MEMORY[0x1DA6CCED0](v6, v8);
  }

  else
  {
    v11 = a4;
    v10 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for SignatureListController();
  v12 = [(SignatureListController *)&v14 initWithNibName:v10 bundle:a4];

  return v12;
}

- (_TtC8PaperKit23SignatureListController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SignatureListController();
  v4 = a3;
  v5 = [(SignatureListController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end