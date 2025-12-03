@interface FASpotlightServiceViewController
- (void)viewDidLoad;
@end

@implementation FASpotlightServiceViewController

- (void)viewDidLoad
{
  v30 = objc_alloc_init(SPUIContactViewController);
  objc_storeStrong(&self->_spotlightViewController, v30);
  v3 = objc_opt_class();
  if (class_getProperty(v3, "isBackgroundColorViewHidden"))
  {
    spotlightViewController = self->_spotlightViewController;
    v5 = [[NSNumber alloc] initWithBool:1];
    [(SPUIContactViewController *)spotlightViewController setValue:v5 forKey:@"isBackgroundColorViewHidden"];
  }

  [(SPUIContactViewController *)self->_spotlightViewController setDelegate:self];
  [(FASpotlightServiceViewController *)self addChildViewController:self->_spotlightViewController];
  view = [(FASpotlightServiceViewController *)self view];
  view2 = [(SPUIContactViewController *)self->_spotlightViewController view];
  [view addSubview:view2];

  view3 = [(SPUIContactViewController *)self->_spotlightViewController view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [(SPUIContactViewController *)self->_spotlightViewController view];
  topAnchor = [view4 topAnchor];
  view5 = [(FASpotlightServiceViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[0] = v25;
  view6 = [(SPUIContactViewController *)self->_spotlightViewController view];
  leftAnchor = [view6 leftAnchor];
  view7 = [(FASpotlightServiceViewController *)self view];
  leftAnchor2 = [view7 leftAnchor];
  v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v31[1] = v20;
  view8 = [(SPUIContactViewController *)self->_spotlightViewController view];
  rightAnchor = [view8 rightAnchor];
  view9 = [(FASpotlightServiceViewController *)self view];
  rightAnchor2 = [view9 rightAnchor];
  v10 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v31[2] = v10;
  view10 = [(SPUIContactViewController *)self->_spotlightViewController view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(FASpotlightServiceViewController *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v31[3] = v15;
  v16 = [NSArray arrayWithObjects:v31 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  [(SPUIContactViewController *)self->_spotlightViewController didMoveToParentViewController:self];
}

@end