@interface DisplayViewController
- (DisplayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIView)displayView;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)setDisplayView:(id)view;
- (void)viewDidLoad;
@end

@implementation DisplayViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100023858();
}

- (UIView)displayView
{
  v2 = sub_100023CA8();

  return v2;
}

- (void)setDisplayView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_100023D14(viewCopy);
}

- (DisplayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100057A50();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100026500(v5, v7, bundle);
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  v5 = sub_100026B58(self, a2, region);

  return v5;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_100026BAC();

  return v9;
}

@end