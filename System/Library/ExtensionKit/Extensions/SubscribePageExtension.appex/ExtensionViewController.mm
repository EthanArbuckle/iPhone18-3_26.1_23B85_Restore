@interface ExtensionViewController
- (ExtensionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setupWithParameters:(id)parameters;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ExtensionViewController

- (ExtensionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100753094();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1004B6B98(v5, v7, bundle);
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(ExtensionViewController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    clearColor = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:clearColor];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ExtensionViewController *)&v5 viewDidAppear:appearCopy];
  sub_10074E584();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ExtensionViewController *)&v5 viewWillAppear:appearCopy];
  sub_1004B712C();
}

- (void)setupWithParameters:(id)parameters
{
  v4 = sub_100752F44();
  selfCopy = self;
  sub_1004B72A8(v4);
}

@end