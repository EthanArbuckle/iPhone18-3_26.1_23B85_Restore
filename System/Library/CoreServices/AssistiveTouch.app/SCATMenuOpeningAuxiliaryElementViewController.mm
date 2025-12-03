@interface SCATMenuOpeningAuxiliaryElementViewController
- (SCATMenuOpeningAuxiliaryElementViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation SCATMenuOpeningAuxiliaryElementViewController

- (SCATMenuOpeningAuxiliaryElementViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SCATMenuOpeningAuxiliaryElementViewController;
  v4 = [(SCATMenuOpeningAuxiliaryElementViewController *)&v7 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_opt_new();
    [(SCATMenuOpeningAuxiliaryElementViewController *)v4 setMenuOpeningElement:v5];
  }

  return v4;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = SCATMenuOpeningAuxiliaryElementViewController;
  [(SCATAuxiliaryElementManagerViewController *)&v11 viewDidLoad];
  view = [(SCATMenuOpeningAuxiliaryElementViewController *)self view];
  menuOpeningElement = [(SCATMenuOpeningAuxiliaryElementViewController *)self menuOpeningElement];
  [view addSubview:menuOpeningElement];
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [menuOpeningElement bottomAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:20.0];
  [v7 setActive:1];

  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [menuOpeningElement trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:20.0];
  [v10 setActive:1];
}

@end