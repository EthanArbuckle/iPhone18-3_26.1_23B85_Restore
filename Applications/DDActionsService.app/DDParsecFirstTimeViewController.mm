@interface DDParsecFirstTimeViewController
- (DDParsecFirstTimeViewController)initWithNibName:(id)name bundle:(id)bundle bag:(id)bag sceneAwareVariant:(BOOL)variant solarium:(BOOL)solarium;
- (void)updateForCurrentTraitCollection;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation DDParsecFirstTimeViewController

- (DDParsecFirstTimeViewController)initWithNibName:(id)name bundle:(id)bundle bag:(id)bag sceneAwareVariant:(BOOL)variant solarium:(BOOL)solarium
{
  variantCopy = variant;
  bagCopy = bag;
  v37.receiver = self;
  v37.super_class = DDParsecFirstTimeViewController;
  v13 = [(DDParsecFirstTimeViewController *)&v37 initWithNibName:name bundle:bundle];
  v14 = v13;
  if (v13)
  {
    v13->_solarium = solarium;
    v15 = objc_opt_new();
    [(DDParsecFirstTimeViewController *)v14 setView:v15];

    view = [(DDParsecFirstTimeViewController *)v14 view];
    [view setAlwaysBounceVertical:1];

    v17 = +[NSCharacterSet whitespaceCharacterSet];
    if (variantCopy)
    {
      [bagCopy sceneAwareLookupFirstUseDescriptionText];
    }

    else
    {
      [bagCopy firstUseDescriptionText];
    }
    v18 = ;
    v19 = [v18 stringByTrimmingCharactersInSet:v17];
    v20 = [NSString stringWithFormat:@"%@ ", v19];

    firstUseLearnMoreText = [bagCopy firstUseLearnMoreText];
    v22 = firstUseLearnMoreText;
    if (firstUseLearnMoreText)
    {
      v23 = firstUseLearnMoreText;
    }

    else
    {
      v23 = DDLocalizedString();
    }

    v24 = v23;

    v25 = [v24 stringByTrimmingCharactersInSet:v17];
    v26 = [NSString stringWithFormat:@"%@ ", v25];

    v27 = [SearchUIFirstTimeExperienceViewController alloc];
    if (variantCopy)
    {
      [bagCopy sceneAwareLookupEnabledDomains];
    }

    else
    {
      [bagCopy enabledDomains];
    }
    v28 = ;
    v29 = DDLocalizedString();
    v30 = [v27 initWithDomains:v28 explanationText:v20 learnMoreText:v26 continueButtonTitle:v29];
    firstExperienceViewController = v14->_firstExperienceViewController;
    v14->_firstExperienceViewController = v30;

    [(DDParsecFirstTimeViewController *)v14 addChildViewController:v14->_firstExperienceViewController];
    view2 = [(DDParsecFirstTimeViewController *)v14 view];
    view3 = [(SearchUIFirstTimeExperienceViewController *)v14->_firstExperienceViewController view];
    [view2 addSubview:view3];

    view4 = [(SearchUIFirstTimeExperienceViewController *)v14->_firstExperienceViewController view];
    [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v35 = v14;
  }

  return v14;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000043B0;
  v4[3] = &unk_100018918;
  v4[4] = self;
  [coordinator animateAlongsideTransition:v4 completion:0];
}

- (void)updateForCurrentTraitCollection
{
  delegate = [(SearchUIFirstTimeExperienceViewController *)self->_firstExperienceViewController delegate];
  presentsWithMargins = [delegate presentsWithMargins];

  traitCollection = [(DDParsecFirstTimeViewController *)self traitCollection];
  [traitCollection displayScale];
  v7 = v6;
  delegate2 = [(SearchUIFirstTimeExperienceViewController *)self->_firstExperienceViewController delegate];
  [delegate2 setDDViewScale:v7];

  view = [(SearchUIFirstTimeExperienceViewController *)self->_firstExperienceViewController view];
  view2 = [(DDParsecFirstTimeViewController *)self view];
  if (presentsWithMargins)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 8.0;
  }

  layer = [view layer];
  [layer cornerRadius];
  v13 = v12;

  if (v13 != v10)
  {
    layer2 = [view layer];
    [layer2 setCornerRadius:v10];
  }

  if ((self->_solarium | presentsWithMargins))
  {
    v15 = 0;
    v16 = view;
    v17 = 0;
    if (self->_solarium)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = +[UIColor systemGroupedBackgroundColor];
    v16 = view;
    v17 = 0;
    if (self->_solarium)
    {
      goto LABEL_12;
    }
  }

  if (((presentsWithMargins ^ 1) & 1) == 0)
  {
    v17 = +[UIColor systemGroupedBackgroundColor];
    v16 = view;
  }

LABEL_12:
  backgroundColor = [v16 backgroundColor];

  if (backgroundColor != v15)
  {
    [view setBackgroundColor:v15];
  }

  backgroundColor2 = [view2 backgroundColor];

  if (backgroundColor2 != v17)
  {
    [view2 setBackgroundColor:v17];
  }

  leadingConstraint = self->_leadingConstraint;
  if (leadingConstraint)
  {
    [(NSLayoutConstraint *)leadingConstraint constant];
    if (v21 != v10)
    {
      [(NSLayoutConstraint *)self->_leadingConstraint setConstant:v10];
    }

    [(NSLayoutConstraint *)self->_trailingConstraint constant];
    if (v22 != v10)
    {
      [(NSLayoutConstraint *)self->_trailingConstraint setConstant:v10];
    }
  }

  else
  {
    leadingAnchor = [view leadingAnchor];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v10];
    v27 = self->_leadingConstraint;
    self->_leadingConstraint = v26;

    [(NSLayoutConstraint *)self->_leadingConstraint setActive:1];
    safeAreaLayoutGuide2 = [view2 safeAreaLayoutGuide];
    trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v10];
    trailingConstraint = self->_trailingConstraint;
    self->_trailingConstraint = v31;

    [(NSLayoutConstraint *)self->_trailingConstraint setActive:1];
  }

  view3 = [(DDParsecFirstTimeViewController *)self view];
  [view3 layoutIfNeeded];

  [view frame];
  v35 = v34;
  v37 = v36;
  view4 = [(DDParsecFirstTimeViewController *)self view];
  [view4 setContentSize:{v35, v37}];
}

@end