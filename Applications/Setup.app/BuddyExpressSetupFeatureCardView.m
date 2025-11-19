@interface BuddyExpressSetupFeatureCardView
+ (id)formattedSubtitleStringForComponents:(id)a3;
- (BuddyExpressSetupFeatureCardView)initWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5;
- (void)_toggleExpanded;
- (void)addCardCell:(id)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setNumberOfLinesForSubtitle:(int64_t)a3;
@end

@implementation BuddyExpressSetupFeatureCardView

- (BuddyExpressSetupFeatureCardView)initWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5
{
  v57 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v55 = 0;
  objc_storeStrong(&v55, a4);
  v54 = 0;
  objc_storeStrong(&v54, a5);
  v7 = v57;
  v57 = 0;
  v53.receiver = v7;
  v53.super_class = BuddyExpressSetupFeatureCardView;
  v57 = [(BuddyExpressSetupFeatureCardView *)&v53 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  objc_storeStrong(&v57, v57);
  if (v57)
  {
    v8 = +[UIColor secondarySystemBackgroundColor];
    [v57 setBackgroundColor:v8];

    [v57 _setContinuousCornerRadius:10.0];
    v9 = objc_alloc_init(NSMutableArray);
    v10 = *(v57 + 4);
    *(v57 + 4) = v9;

    v11 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v12 = *(v57 + 2);
    *(v57 + 2) = v11;

    [*(v57 + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v57 + 2) setAxis:1];
    [*(v57 + 2) setSpacing:16.0];
    [v57 addSubview:*(v57 + 2)];
    v13 = [v57 bottomAnchor];
    v14 = [*(v57 + 2) bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];
    v16 = *(v57 + 5);
    *(v57 + 5) = v15;

    v17 = v57;
    v47 = [*(v57 + 2) topAnchor];
    v46 = [v57 topAnchor];
    v18 = [v47 constraintEqualToAnchor:?];
    v59[0] = v18;
    v59[1] = *(v57 + 5);
    v19 = [*(v57 + 2) leadingAnchor];
    v20 = [v57 leadingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v59[2] = v21;
    v22 = [v57 trailingAnchor];
    v23 = [*(v57 + 2) trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v59[3] = v24;
    v25 = [NSArray arrayWithObjects:v59 count:4];
    [v17 addConstraints:v25];

    v26 = [BuddyExpressSetupFeatureCardPrimaryCell alloc];
    v27 = [(BuddyExpressSetupFeatureCardPrimaryCell *)v26 initWithTitle:location[0] subtitle:v55 icon:v54];
    v28 = *(v57 + 6);
    *(v57 + 6) = v27;

    [*(v57 + 6) setTranslatesAutoresizingMaskIntoConstraints:0];
    *&v51 = sub_10021D70C();
    *(&v51 + 1) = v29;
    *&v52 = v30;
    *(&v52 + 1) = v31;
    v32 = *(v57 + 6);
    v50 = v52;
    v49 = v51;
    [v32 setDirectionalLayoutMargins:{*&v51, v29, v30, v31}];
    [*(v57 + 6) setChevronHidden:1];
    [*(v57 + 2) addArrangedSubview:*(v57 + 6)];
    v33 = v57;
    v34 = [*(v57 + 6) heightAnchor];
    v35 = [v34 constraintGreaterThanOrEqualToConstant:60.0];
    v58 = v35;
    v36 = [NSArray arrayWithObjects:&v58 count:1];
    [v33 addConstraints:v36];

    v37 = [UITapGestureRecognizer alloc];
    v48 = [v37 initWithTarget:v57 action:"_toggleExpanded"];
    [*(v57 + 6) addGestureRecognizer:v48];
    v38 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v39 = *(v57 + 3);
    *(v57 + 3) = v38;

    [*(v57 + 3) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v57 + 3) setAxis:1];
    [*(v57 + 3) setSpacing:16.0];
    [*(v57 + 3) setLayoutMarginsRelativeArrangement:1];
    [*(v57 + 6) directionalLayoutMargins];
    [*(v57 + 3) setDirectionalLayoutMargins:{v40, v41, v42, v43}];
    objc_storeStrong(&v48, 0);
  }

  v44 = v57;
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v57, 0);
  return v44;
}

- (void)setExpanded:(BOOL)a3
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  self->_expanded = a3;
  v3 = [(BuddyExpressSetupFeatureCardView *)v27 primaryCell];
  [(BuddyExpressSetupFeatureCardPrimaryCell *)v3 setExpanded:v25];

  if (v25)
  {
    v4 = [(BuddyExpressSetupFeatureCardView *)v27 bottomStackViewConstraint];
    [(NSLayoutConstraint *)v4 setConstant:20.0];

    memset(__b, 0, sizeof(__b));
    v5 = [(BuddyExpressSetupFeatureCardView *)v27 cells];
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:__b objects:v29 count:16];
    if (v6)
    {
      v7 = *__b[2];
      do
      {
        for (i = 0; i < v6; ++i)
        {
          if (*__b[2] != v7)
          {
            objc_enumerationMutation(v5);
          }

          v24 = *(__b[1] + 8 * i);
          v9 = [(BuddyExpressSetupFeatureCardView *)v27 secondaryStackView];
          [(UIStackView *)v9 addArrangedSubview:v24];
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:__b objects:v29 count:16];
      }

      while (v6);
    }

    v10 = [(BuddyExpressSetupFeatureCardView *)v27 stackView];
    v11 = [(BuddyExpressSetupFeatureCardView *)v27 secondaryStackView];
    [(UIStackView *)v10 addArrangedSubview:v11];
  }

  else
  {
    v12 = [(BuddyExpressSetupFeatureCardView *)v27 bottomStackViewConstraint];
    [(NSLayoutConstraint *)v12 setConstant:0.0];

    memset(v21, 0, sizeof(v21));
    v13 = [(BuddyExpressSetupFeatureCardView *)v27 cells];
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:v21 objects:v28 count:16];
    if (v14)
    {
      v15 = *v21[2];
      do
      {
        for (j = 0; j < v14; ++j)
        {
          if (*v21[2] != v15)
          {
            objc_enumerationMutation(v13);
          }

          v22 = *(v21[1] + 8 * j);
          v17 = [(BuddyExpressSetupFeatureCardView *)v27 secondaryStackView];
          [(UIStackView *)v17 removeArrangedSubview:v22];

          [v22 removeFromSuperview];
        }

        v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:v21 objects:v28 count:16];
      }

      while (v14);
    }

    v18 = [(BuddyExpressSetupFeatureCardView *)v27 stackView];
    v19 = [(BuddyExpressSetupFeatureCardView *)v27 secondaryStackView];
    [(UIStackView *)v18 removeArrangedSubview:v19];

    v20 = [(BuddyExpressSetupFeatureCardView *)v27 secondaryStackView];
    [(UIStackView *)v20 removeFromSuperview];
  }
}

- (void)addCardCell:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyExpressSetupFeatureCardView *)v6 primaryCell];
  [(BuddyExpressSetupFeatureCardPrimaryCell *)v3 setChevronHidden:0];

  v4 = [(BuddyExpressSetupFeatureCardView *)v6 cells];
  [(NSMutableArray *)v4 addObject:location[0]];

  objc_storeStrong(location, 0);
}

- (void)setNumberOfLinesForSubtitle:(int64_t)a3
{
  v3 = [(BuddyExpressSetupFeatureCardView *)self primaryCell];
  [(BuddyExpressSetupFeatureCardPrimaryCell *)v3 setNumberOfLinesForSubtitle:a3];
}

+ (id)formattedSubtitleStringForComponents:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v2 = [(BuddyExpressSetupFeatureCardView *)self cells];
  v3 = [(NSMutableArray *)v2 count];

  if (v3)
  {
    [(BuddyExpressSetupFeatureCardView *)self setExpanded:![(BuddyExpressSetupFeatureCardView *)self isExpanded]];
  }
}

@end