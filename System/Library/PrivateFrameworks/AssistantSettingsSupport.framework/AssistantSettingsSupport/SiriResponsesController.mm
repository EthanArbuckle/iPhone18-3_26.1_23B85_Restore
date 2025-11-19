@interface SiriResponsesController
- (_TtC24AssistantSettingsSupport23SiriResponsesController)initWithCoder:(id)a3;
- (_TtC24AssistantSettingsSupport23SiriResponsesController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation SiriResponsesController

- (void)viewDidLoad
{
  v2 = self;
  sub_2413FDABC();
}

- (_TtC24AssistantSettingsSupport23SiriResponsesController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_24140EC1C();
    v6 = a4;
    v7 = sub_24140EC0C();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SiriResponsesController();
  v9 = [(SiriResponsesController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC24AssistantSettingsSupport23SiriResponsesController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SiriResponsesController();
  v4 = a3;
  v5 = [(SiriResponsesController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end