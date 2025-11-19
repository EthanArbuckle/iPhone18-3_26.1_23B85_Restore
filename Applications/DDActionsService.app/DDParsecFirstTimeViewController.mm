@interface DDParsecFirstTimeViewController
- (DDParsecFirstTimeViewController)initWithNibName:(id)a3 bundle:(id)a4 bag:(id)a5 sceneAwareVariant:(BOOL)a6 solarium:(BOOL)a7;
- (void)updateForCurrentTraitCollection;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DDParsecFirstTimeViewController

- (DDParsecFirstTimeViewController)initWithNibName:(id)a3 bundle:(id)a4 bag:(id)a5 sceneAwareVariant:(BOOL)a6 solarium:(BOOL)a7
{
  v8 = a6;
  v12 = a5;
  v37.receiver = self;
  v37.super_class = DDParsecFirstTimeViewController;
  v13 = [(DDParsecFirstTimeViewController *)&v37 initWithNibName:a3 bundle:a4];
  v14 = v13;
  if (v13)
  {
    v13->_solarium = a7;
    v15 = objc_opt_new();
    [(DDParsecFirstTimeViewController *)v14 setView:v15];

    v16 = [(DDParsecFirstTimeViewController *)v14 view];
    [v16 setAlwaysBounceVertical:1];

    v17 = +[NSCharacterSet whitespaceCharacterSet];
    if (v8)
    {
      [v12 sceneAwareLookupFirstUseDescriptionText];
    }

    else
    {
      [v12 firstUseDescriptionText];
    }
    v18 = ;
    v19 = [v18 stringByTrimmingCharactersInSet:v17];
    v20 = [NSString stringWithFormat:@"%@ ", v19];

    v21 = [v12 firstUseLearnMoreText];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = DDLocalizedString();
    }

    v24 = v23;

    v25 = [v24 stringByTrimmingCharactersInSet:v17];
    v26 = [NSString stringWithFormat:@"%@ ", v25];

    v27 = [SearchUIFirstTimeExperienceViewController alloc];
    if (v8)
    {
      [v12 sceneAwareLookupEnabledDomains];
    }

    else
    {
      [v12 enabledDomains];
    }
    v28 = ;
    v29 = DDLocalizedString();
    v30 = [v27 initWithDomains:v28 explanationText:v20 learnMoreText:v26 continueButtonTitle:v29];
    firstExperienceViewController = v14->_firstExperienceViewController;
    v14->_firstExperienceViewController = v30;

    [(DDParsecFirstTimeViewController *)v14 addChildViewController:v14->_firstExperienceViewController];
    v32 = [(DDParsecFirstTimeViewController *)v14 view];
    v33 = [(SearchUIFirstTimeExperienceViewController *)v14->_firstExperienceViewController view];
    [v32 addSubview:v33];

    v34 = [(SearchUIFirstTimeExperienceViewController *)v14->_firstExperienceViewController view];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

    v35 = v14;
  }

  return v14;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000043B0;
  v4[3] = &unk_100018918;
  v4[4] = self;
  [a4 animateAlongsideTransition:v4 completion:0];
}

- (void)updateForCurrentTraitCollection
{
  v3 = [(SearchUIFirstTimeExperienceViewController *)self->_firstExperienceViewController delegate];
  v4 = [v3 presentsWithMargins];

  v5 = [(DDParsecFirstTimeViewController *)self traitCollection];
  [v5 displayScale];
  v7 = v6;
  v8 = [(SearchUIFirstTimeExperienceViewController *)self->_firstExperienceViewController delegate];
  [v8 setDDViewScale:v7];

  v39 = [(SearchUIFirstTimeExperienceViewController *)self->_firstExperienceViewController view];
  v9 = [(DDParsecFirstTimeViewController *)self view];
  if (v4)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 8.0;
  }

  v11 = [v39 layer];
  [v11 cornerRadius];
  v13 = v12;

  if (v13 != v10)
  {
    v14 = [v39 layer];
    [v14 setCornerRadius:v10];
  }

  if ((self->_solarium | v4))
  {
    v15 = 0;
    v16 = v39;
    v17 = 0;
    if (self->_solarium)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = +[UIColor systemGroupedBackgroundColor];
    v16 = v39;
    v17 = 0;
    if (self->_solarium)
    {
      goto LABEL_12;
    }
  }

  if (((v4 ^ 1) & 1) == 0)
  {
    v17 = +[UIColor systemGroupedBackgroundColor];
    v16 = v39;
  }

LABEL_12:
  v18 = [v16 backgroundColor];

  if (v18 != v15)
  {
    [v39 setBackgroundColor:v15];
  }

  v19 = [v9 backgroundColor];

  if (v19 != v17)
  {
    [v9 setBackgroundColor:v17];
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
    v23 = [v39 leadingAnchor];
    v24 = [v9 safeAreaLayoutGuide];
    v25 = [v24 leadingAnchor];
    v26 = [v23 constraintEqualToAnchor:v25 constant:v10];
    v27 = self->_leadingConstraint;
    self->_leadingConstraint = v26;

    [(NSLayoutConstraint *)self->_leadingConstraint setActive:1];
    v28 = [v9 safeAreaLayoutGuide];
    v29 = [v28 trailingAnchor];
    v30 = [v39 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:v10];
    trailingConstraint = self->_trailingConstraint;
    self->_trailingConstraint = v31;

    [(NSLayoutConstraint *)self->_trailingConstraint setActive:1];
  }

  v33 = [(DDParsecFirstTimeViewController *)self view];
  [v33 layoutIfNeeded];

  [v39 frame];
  v35 = v34;
  v37 = v36;
  v38 = [(DDParsecFirstTimeViewController *)self view];
  [v38 setContentSize:{v35, v37}];
}

@end