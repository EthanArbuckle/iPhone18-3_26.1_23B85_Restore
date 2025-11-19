@interface ExtensionViewController
- (ExtensionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setupWithParameters:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ExtensionViewController

- (ExtensionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100753094();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1004B6B98(v5, v7, a4);
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(ExtensionViewController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ExtensionViewController *)&v5 viewDidAppear:v3];
  sub_10074E584();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ExtensionViewController *)&v5 viewWillAppear:v3];
  sub_1004B712C();
}

- (void)setupWithParameters:(id)a3
{
  v4 = sub_100752F44();
  v5 = self;
  sub_1004B72A8(v4);
}

@end