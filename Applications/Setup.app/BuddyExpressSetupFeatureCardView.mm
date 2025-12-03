@interface BuddyExpressSetupFeatureCardView
+ (id)formattedSubtitleStringForComponents:(id)components;
- (BuddyExpressSetupFeatureCardView)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon;
- (void)_toggleExpanded;
- (void)addCardCell:(id)cell;
- (void)setExpanded:(BOOL)expanded;
- (void)setNumberOfLinesForSubtitle:(int64_t)subtitle;
@end

@implementation BuddyExpressSetupFeatureCardView

- (BuddyExpressSetupFeatureCardView)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v55 = 0;
  objc_storeStrong(&v55, subtitle);
  v54 = 0;
  objc_storeStrong(&v54, icon);
  v7 = selfCopy;
  selfCopy = 0;
  v53.receiver = v7;
  v53.super_class = BuddyExpressSetupFeatureCardView;
  selfCopy = [(BuddyExpressSetupFeatureCardView *)&v53 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v8 = +[UIColor secondarySystemBackgroundColor];
    [selfCopy setBackgroundColor:v8];

    [selfCopy _setContinuousCornerRadius:10.0];
    v9 = objc_alloc_init(NSMutableArray);
    v10 = *(selfCopy + 4);
    *(selfCopy + 4) = v9;

    v11 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v12 = *(selfCopy + 2);
    *(selfCopy + 2) = v11;

    [*(selfCopy + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(selfCopy + 2) setAxis:1];
    [*(selfCopy + 2) setSpacing:16.0];
    [selfCopy addSubview:*(selfCopy + 2)];
    bottomAnchor = [selfCopy bottomAnchor];
    bottomAnchor2 = [*(selfCopy + 2) bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    v16 = *(selfCopy + 5);
    *(selfCopy + 5) = v15;

    v17 = selfCopy;
    topAnchor = [*(selfCopy + 2) topAnchor];
    topAnchor2 = [selfCopy topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:?];
    v59[0] = v18;
    v59[1] = *(selfCopy + 5);
    leadingAnchor = [*(selfCopy + 2) leadingAnchor];
    leadingAnchor2 = [selfCopy leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v59[2] = v21;
    trailingAnchor = [selfCopy trailingAnchor];
    trailingAnchor2 = [*(selfCopy + 2) trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v59[3] = v24;
    v25 = [NSArray arrayWithObjects:v59 count:4];
    [v17 addConstraints:v25];

    v26 = [BuddyExpressSetupFeatureCardPrimaryCell alloc];
    v27 = [(BuddyExpressSetupFeatureCardPrimaryCell *)v26 initWithTitle:location[0] subtitle:v55 icon:v54];
    v28 = *(selfCopy + 6);
    *(selfCopy + 6) = v27;

    [*(selfCopy + 6) setTranslatesAutoresizingMaskIntoConstraints:0];
    *&v51 = sub_10021D70C();
    *(&v51 + 1) = v29;
    *&v52 = v30;
    *(&v52 + 1) = v31;
    v32 = *(selfCopy + 6);
    v50 = v52;
    v49 = v51;
    [v32 setDirectionalLayoutMargins:{*&v51, v29, v30, v31}];
    [*(selfCopy + 6) setChevronHidden:1];
    [*(selfCopy + 2) addArrangedSubview:*(selfCopy + 6)];
    v33 = selfCopy;
    heightAnchor = [*(selfCopy + 6) heightAnchor];
    v35 = [heightAnchor constraintGreaterThanOrEqualToConstant:60.0];
    v58 = v35;
    v36 = [NSArray arrayWithObjects:&v58 count:1];
    [v33 addConstraints:v36];

    v37 = [UITapGestureRecognizer alloc];
    v48 = [v37 initWithTarget:selfCopy action:"_toggleExpanded"];
    [*(selfCopy + 6) addGestureRecognizer:v48];
    v38 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v39 = *(selfCopy + 3);
    *(selfCopy + 3) = v38;

    [*(selfCopy + 3) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(selfCopy + 3) setAxis:1];
    [*(selfCopy + 3) setSpacing:16.0];
    [*(selfCopy + 3) setLayoutMarginsRelativeArrangement:1];
    [*(selfCopy + 6) directionalLayoutMargins];
    [*(selfCopy + 3) setDirectionalLayoutMargins:{v40, v41, v42, v43}];
    objc_storeStrong(&v48, 0);
  }

  v44 = selfCopy;
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v44;
}

- (void)setExpanded:(BOOL)expanded
{
  selfCopy = self;
  v26 = a2;
  expandedCopy = expanded;
  self->_expanded = expanded;
  primaryCell = [(BuddyExpressSetupFeatureCardView *)selfCopy primaryCell];
  [(BuddyExpressSetupFeatureCardPrimaryCell *)primaryCell setExpanded:expandedCopy];

  if (expandedCopy)
  {
    bottomStackViewConstraint = [(BuddyExpressSetupFeatureCardView *)selfCopy bottomStackViewConstraint];
    [(NSLayoutConstraint *)bottomStackViewConstraint setConstant:20.0];

    memset(__b, 0, sizeof(__b));
    cells = [(BuddyExpressSetupFeatureCardView *)selfCopy cells];
    v6 = [(NSMutableArray *)cells countByEnumeratingWithState:__b objects:v29 count:16];
    if (v6)
    {
      v7 = *__b[2];
      do
      {
        for (i = 0; i < v6; ++i)
        {
          if (*__b[2] != v7)
          {
            objc_enumerationMutation(cells);
          }

          v24 = *(__b[1] + 8 * i);
          secondaryStackView = [(BuddyExpressSetupFeatureCardView *)selfCopy secondaryStackView];
          [(UIStackView *)secondaryStackView addArrangedSubview:v24];
        }

        v6 = [(NSMutableArray *)cells countByEnumeratingWithState:__b objects:v29 count:16];
      }

      while (v6);
    }

    stackView = [(BuddyExpressSetupFeatureCardView *)selfCopy stackView];
    secondaryStackView2 = [(BuddyExpressSetupFeatureCardView *)selfCopy secondaryStackView];
    [(UIStackView *)stackView addArrangedSubview:secondaryStackView2];
  }

  else
  {
    bottomStackViewConstraint2 = [(BuddyExpressSetupFeatureCardView *)selfCopy bottomStackViewConstraint];
    [(NSLayoutConstraint *)bottomStackViewConstraint2 setConstant:0.0];

    memset(v21, 0, sizeof(v21));
    cells2 = [(BuddyExpressSetupFeatureCardView *)selfCopy cells];
    v14 = [(NSMutableArray *)cells2 countByEnumeratingWithState:v21 objects:v28 count:16];
    if (v14)
    {
      v15 = *v21[2];
      do
      {
        for (j = 0; j < v14; ++j)
        {
          if (*v21[2] != v15)
          {
            objc_enumerationMutation(cells2);
          }

          v22 = *(v21[1] + 8 * j);
          secondaryStackView3 = [(BuddyExpressSetupFeatureCardView *)selfCopy secondaryStackView];
          [(UIStackView *)secondaryStackView3 removeArrangedSubview:v22];

          [v22 removeFromSuperview];
        }

        v14 = [(NSMutableArray *)cells2 countByEnumeratingWithState:v21 objects:v28 count:16];
      }

      while (v14);
    }

    stackView2 = [(BuddyExpressSetupFeatureCardView *)selfCopy stackView];
    secondaryStackView4 = [(BuddyExpressSetupFeatureCardView *)selfCopy secondaryStackView];
    [(UIStackView *)stackView2 removeArrangedSubview:secondaryStackView4];

    secondaryStackView5 = [(BuddyExpressSetupFeatureCardView *)selfCopy secondaryStackView];
    [(UIStackView *)secondaryStackView5 removeFromSuperview];
  }
}

- (void)addCardCell:(id)cell
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cell);
  primaryCell = [(BuddyExpressSetupFeatureCardView *)selfCopy primaryCell];
  [(BuddyExpressSetupFeatureCardPrimaryCell *)primaryCell setChevronHidden:0];

  cells = [(BuddyExpressSetupFeatureCardView *)selfCopy cells];
  [(NSMutableArray *)cells addObject:location[0]];

  objc_storeStrong(location, 0);
}

- (void)setNumberOfLinesForSubtitle:(int64_t)subtitle
{
  primaryCell = [(BuddyExpressSetupFeatureCardView *)self primaryCell];
  [(BuddyExpressSetupFeatureCardPrimaryCell *)primaryCell setNumberOfLinesForSubtitle:subtitle];
}

+ (id)formattedSubtitleStringForComponents:(id)components
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, components);
  if ([location[0] count] <= 2)
  {
    v10 = [NSListFormatter localizedStringByJoiningStrings:location[0]];
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    v4 = [(NSBundle *)v3 localizedStringForKey:@"EXPRESS_SETUP_FEATURE_CARD_AND_MORE" value:&stru_10032F900 table:@"Localizable"];
    v5 = [location[0] objectAtIndexedSubscript:0];
    v6 = [location[0] objectAtIndexedSubscript:1];
    v10 = [NSString localizedStringWithFormat:v4, v5, v6];
  }

  objc_storeStrong(location, 0);
  v7 = v10;

  return v7;
}

- (void)_toggleExpanded
{
  cells = [(BuddyExpressSetupFeatureCardView *)self cells];
  v3 = [(NSMutableArray *)cells count];

  if (v3)
  {
    [(BuddyExpressSetupFeatureCardView *)self setExpanded:![(BuddyExpressSetupFeatureCardView *)self isExpanded]];
  }
}

@end