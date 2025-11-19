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
  v6 = [(FASpotlightServiceViewController *)self view];
  v7 = [(SPUIContactViewController *)self->_spotlightViewController view];
  [v6 addSubview:v7];

  v8 = [(SPUIContactViewController *)self->_spotlightViewController view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v29 = [(SPUIContactViewController *)self->_spotlightViewController view];
  v27 = [v29 topAnchor];
  v28 = [(FASpotlightServiceViewController *)self view];
  v26 = [v28 topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v31[0] = v25;
  v24 = [(SPUIContactViewController *)self->_spotlightViewController view];
  v22 = [v24 leftAnchor];
  v23 = [(FASpotlightServiceViewController *)self view];
  v21 = [v23 leftAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v31[1] = v20;
  v19 = [(SPUIContactViewController *)self->_spotlightViewController view];
  v17 = [v19 rightAnchor];
  v18 = [(FASpotlightServiceViewController *)self view];
  v9 = [v18 rightAnchor];
  v10 = [v17 constraintEqualToAnchor:v9];
  v31[2] = v10;
  v11 = [(SPUIContactViewController *)self->_spotlightViewController view];
  v12 = [v11 bottomAnchor];
  v13 = [(FASpotlightServiceViewController *)self view];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v31[3] = v15;
  v16 = [NSArray arrayWithObjects:v31 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  [(SPUIContactViewController *)self->_spotlightViewController didMoveToParentViewController:self];
}

@end