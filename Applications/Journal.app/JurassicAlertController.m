@interface JurassicAlertController
- (_TtC7Journal23JurassicAlertController)initWithCoder:(id)a3;
- (_TtC7Journal23JurassicAlertController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation JurassicAlertController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for JurassicAlertController();
  v2 = v6.receiver;
  [(JurassicAlertController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemIndigoColor];
    [v4 setTintColor:v5];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC7Journal23JurassicAlertController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for JurassicAlertController();
  v9 = [(JurassicAlertController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC7Journal23JurassicAlertController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for JurassicAlertController();
  v4 = a3;
  v5 = [(JurassicAlertController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end