@interface SiriResponsesController
- (_TtC24AssistantSettingsSupport23SiriResponsesController)initWithCoder:(id)coder;
- (_TtC24AssistantSettingsSupport23SiriResponsesController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation SiriResponsesController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2413FDABC();
}

- (_TtC24AssistantSettingsSupport23SiriResponsesController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_24140EC1C();
    bundleCopy = bundle;
    v7 = sub_24140EC0C();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SiriResponsesController();
  v9 = [(SiriResponsesController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC24AssistantSettingsSupport23SiriResponsesController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SiriResponsesController();
  coderCopy = coder;
  v5 = [(SiriResponsesController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end