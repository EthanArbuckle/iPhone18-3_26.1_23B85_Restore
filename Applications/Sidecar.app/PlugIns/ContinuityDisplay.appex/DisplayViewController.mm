@interface DisplayViewController
- (DisplayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIView)displayView;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)setDisplayView:(id)a3;
- (void)viewDidLoad;
@end

@implementation DisplayViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100023858();
}

- (UIView)displayView
{
  v2 = sub_100023CA8();

  return v2;
}

- (void)setDisplayView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100023D14(v4);
}

- (DisplayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100057A50();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100026500(v5, v7, a4);
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v5 = sub_100026B58(self, a2, a5);

  return v5;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100026BAC();

  return v9;
}

@end