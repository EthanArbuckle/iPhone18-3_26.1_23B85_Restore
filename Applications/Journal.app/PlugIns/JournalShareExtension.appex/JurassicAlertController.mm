@interface JurassicAlertController
- (_TtC21JournalShareExtension23JurassicAlertController)initWithCoder:(id)coder;
- (_TtC21JournalShareExtension23JurassicAlertController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation JurassicAlertController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for JurassicAlertController();
  v2 = v6.receiver;
  [(JurassicAlertController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    systemIndigoColor = [objc_opt_self() systemIndigoColor];
    [v4 setTintColor:systemIndigoColor];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC21JournalShareExtension23JurassicAlertController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_100100FD4();
    bundleCopy = bundle;
    v7 = sub_100100F94();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for JurassicAlertController();
  v9 = [(JurassicAlertController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC21JournalShareExtension23JurassicAlertController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for JurassicAlertController();
  coderCopy = coder;
  v5 = [(JurassicAlertController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end