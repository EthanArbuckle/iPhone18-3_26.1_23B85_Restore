@interface PersonalAudioOptionControl
- (CGSize)intrinsicContentSize;
- (PersonalAudioOptionControl)init;
- (PersonalAudioOptionControlDelegate)delegate;
- (void)_handleTapGestureRecognizer:(id)a3;
- (void)selectItem:(unint64_t)a3;
- (void)updateLayoutWithSelectedItem:(unint64_t)a3;
- (void)updateWithLeftNode:(id)a3 andRightNode:(id)a4;
@end

@implementation PersonalAudioOptionControl

- (PersonalAudioOptionControl)init
{
  v18.receiver = self;
  v18.super_class = PersonalAudioOptionControl;
  v2 = [(PersonalAudioOptionControl *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(UILabel);
    leftLabel = v2->_leftLabel;
    v2->_leftLabel = v3;

    [(UILabel *)v2->_leftLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v2->_leftLabel setTextAlignment:1];
    v5 = v2->_leftLabel;
    v6 = [UIFont _preferredFontForTextStyle:UIFontTextStyleHeadline maximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
    [(UILabel *)v5 setFont:v6];

    [(UILabel *)v2->_leftLabel setNumberOfLines:0];
    v7 = UIAccessibilityTraitButton;
    [(UILabel *)v2->_leftLabel setAccessibilityTraits:UIAccessibilityTraitButton];
    [(PersonalAudioOptionControl *)v2 addSubview:v2->_leftLabel];
    v8 = objc_alloc_init(UIView);
    separator = v2->_separator;
    v2->_separator = v8;

    [(UIView *)v2->_separator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PersonalAudioOptionControl *)v2 addSubview:v2->_separator];
    v10 = objc_alloc_init(UILabel);
    rightLabel = v2->_rightLabel;
    v2->_rightLabel = v10;

    [(UILabel *)v2->_rightLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v2->_rightLabel setTextAlignment:1];
    v12 = v2->_rightLabel;
    v13 = [UIFont _preferredFontForTextStyle:UIFontTextStyleHeadline maximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
    [(UILabel *)v12 setFont:v13];

    [(UILabel *)v2->_rightLabel setNumberOfLines:0];
    [(UILabel *)v2->_rightLabel setAccessibilityTraits:v7];
    [(PersonalAudioOptionControl *)v2 addSubview:v2->_rightLabel];
    v14 = +[NSMutableArray array];
    constraints = v2->_constraints;
    v2->_constraints = v14;

    [(PersonalAudioOptionControl *)v2 updateLayoutWithSelectedItem:0];
    v16 = [[UITapGestureRecognizer alloc] initWithTarget:v2 action:"_handleTapGestureRecognizer:"];
    [v16 setDelegate:v2];
    [(PersonalAudioOptionControl *)v2 addGestureRecognizer:v16];
    [(PersonalAudioOptionControl *)v2 setTapRecognizer:v16];
  }

  return v2;
}

- (void)_handleTapGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = v4;
  v10 = v4;
  if (!v4 || (v6 = [v4 state], v5 = v10, v6 == &dword_0 + 3))
  {
    leftLabel = self->_leftLabel;
    [v5 locationInView:leftLabel];
    if (([(UILabel *)leftLabel pointInside:0 withEvent:?]& 1) != 0)
    {
      v8 = 1;
    }

    else
    {
      rightLabel = self->_rightLabel;
      [v10 locationInView:rightLabel];
      if (![(UILabel *)rightLabel pointInside:0 withEvent:?])
      {
        goto LABEL_8;
      }

      v8 = 2;
    }

    [(PersonalAudioOptionControl *)self selectItem:v8];
  }

LABEL_8:

  _objc_release_x1();
}

- (void)updateLayoutWithSelectedItem:(unint64_t)a3
{
  v5 = [(UILabel *)self->_leftLabel layer];
  [v5 setMasksToBounds:0];

  v6 = [(UILabel *)self->_leftLabel layer];
  if (a3 == 1)
  {
    +[UIColor systemBlueColor];
  }

  else
  {
    +[UIColor secondarySystemFillColor];
  }
  v7 = ;
  [v6 setBackgroundColor:{objc_msgSend(v7, "CGColor")}];

  leftLabel = self->_leftLabel;
  if (a3 == 1)
  {
    +[UIColor systemWhiteColor];
  }

  else
  {
    +[UIColor systemBlueColor];
  }
  v9 = ;
  [(UILabel *)leftLabel setTextColor:v9];

  v10 = UIAccessibilityTraitButton;
  v11 = UIAccessibilityTraitSelected;
  if (a3 == 1)
  {
    v12 = UIAccessibilityTraitSelected;
  }

  else
  {
    v12 = 0;
  }

  [(UILabel *)self->_leftLabel setAccessibilityTraits:v12 | UIAccessibilityTraitButton];
  v13 = [(UILabel *)self->_rightLabel layer];
  [v13 setMasksToBounds:0];

  v14 = [(UILabel *)self->_rightLabel layer];
  if (a3 == 2)
  {
    +[UIColor systemBlueColor];
  }

  else
  {
    +[UIColor secondarySystemFillColor];
  }
  v15 = ;
  [v14 setBackgroundColor:{objc_msgSend(v15, "CGColor")}];

  rightLabel = self->_rightLabel;
  if (a3 == 2)
  {
    v17 = +[UIColor systemWhiteColor];
    [(UILabel *)rightLabel setTextColor:v17];
  }

  else
  {
    v17 = +[UIColor systemBlueColor];
    [(UILabel *)rightLabel setTextColor:v17];
    v11 = 0;
  }

  [(UILabel *)self->_rightLabel setAccessibilityTraits:v11 | v10];
  [(PersonalAudioOptionControl *)self removeConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  [(UILabel *)self->_leftLabel sizeThatFits:1.79769313e308, 50.0];
  v19 = v18;
  [(UILabel *)self->_rightLabel sizeThatFits:1.79769313e308, 50.0];
  if (v19 > 125.0 || v20 > 125.0)
  {
    self->_verticalLayout = 1;
    constraints = self->_constraints;
    v41 = _NSDictionaryOfVariableBindings(@"_leftLabel", self->_leftLabel, 0);
    v42 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_leftLabel]|" options:0 metrics:0 views:v41];
    [(NSMutableArray *)constraints addObjectsFromArray:v42];

    v43 = self->_constraints;
    v44 = _NSDictionaryOfVariableBindings(@"_rightLabel", self->_rightLabel, 0);
    v45 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_rightLabel]|" options:0 metrics:0 views:v44];
    [(NSMutableArray *)v43 addObjectsFromArray:v45];

    v46 = self->_constraints;
    v47 = _NSDictionaryOfVariableBindings(@"_leftLabel, _rightLabel", self->_leftLabel, self->_rightLabel, 0);
    v48 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[_leftLabel]-[_rightLabel]-|", 0, 0, v47);
    [(NSMutableArray *)v46 addObjectsFromArray:v48];

    v38 = [(UILabel *)self->_leftLabel layer];
    v39 = 15;
    [v38 setMaskedCorners:15];
  }

  else
  {
    self->_verticalLayout = 0;
    v21 = self->_constraints;
    v22 = [NSString stringWithFormat:@"V:|[_leftLabel(%lf)]|", 0x4049000000000000];
    v23 = _NSDictionaryOfVariableBindings(@"_leftLabel", self->_leftLabel, 0);
    v24 = [NSLayoutConstraint constraintsWithVisualFormat:v22 options:0 metrics:0 views:v23];
    [(NSMutableArray *)v21 addObjectsFromArray:v24];

    v25 = self->_constraints;
    v26 = [NSString stringWithFormat:@"V:|[_separator(%lf)]|", 0x4049000000000000];
    v27 = _NSDictionaryOfVariableBindings(@"_separator", self->_separator, 0);
    v28 = [NSLayoutConstraint constraintsWithVisualFormat:v26 options:0 metrics:0 views:v27];
    [(NSMutableArray *)v25 addObjectsFromArray:v28];

    v29 = self->_constraints;
    v30 = [NSString stringWithFormat:@"V:|[_rightLabel(%lf)]|", 0x4049000000000000];
    v31 = _NSDictionaryOfVariableBindings(@"_rightLabel", self->_rightLabel, 0);
    v32 = [NSLayoutConstraint constraintsWithVisualFormat:v30 options:0 metrics:0 views:v31];
    [(NSMutableArray *)v29 addObjectsFromArray:v32];

    v33 = self->_constraints;
    v34 = _NSDictionaryOfVariableBindings(@"_leftLabel, _separator, _rightLabel", self->_leftLabel, self->_separator, self->_rightLabel, 0);
    v35 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(25.0)-[_leftLabel][_separator(2.0)][_rightLabel]-(25.0)-|", 0, 0, v34);
    [(NSMutableArray *)v33 addObjectsFromArray:v35];

    v36 = [UIApp userInterfaceLayoutDirection];
    v37 = [(UILabel *)self->_leftLabel layer];
    v38 = v37;
    if (v36)
    {
      [v37 setMaskedCorners:10];
      v39 = 5;
    }

    else
    {
      [v37 setMaskedCorners:5];
      v39 = 10;
    }
  }

  v49 = [(UILabel *)self->_rightLabel layer];
  [v49 setMaskedCorners:v39];

  v50 = self->_constraints;
  v51 = [NSLayoutConstraint constraintWithItem:self->_leftLabel attribute:7 relatedBy:0 toItem:self->_rightLabel attribute:7 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v50 addObject:v51];

  v52 = self->_constraints;
  v53 = [NSLayoutConstraint constraintWithItem:self->_leftLabel attribute:8 relatedBy:0 toItem:self->_rightLabel attribute:8 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v52 addObject:v53];

  [(PersonalAudioOptionControl *)self addConstraints:self->_constraints];
  v54 = [(UILabel *)self->_leftLabel layer];
  [v54 setCornerRadius:25.0];

  v55 = [(UILabel *)self->_rightLabel layer];
  [v55 setCornerRadius:25.0];
}

- (void)selectItem:(unint64_t)a3
{
  [(PersonalAudioOptionControl *)self updateLayoutWithSelectedItem:?];
  switch(a3)
  {
    case 0uLL:
      return;
    case 2uLL:
      v5 = [(PersonalAudioOptionControl *)self rightNode];
      goto LABEL_6;
    case 1uLL:
      v5 = [(PersonalAudioOptionControl *)self leftNode];
LABEL_6:
      v6 = v5;
      [(PersonalAudioOptionControl *)self setSelectedNode:v5];

      break;
  }

  v7 = [(PersonalAudioOptionControl *)self delegate];
  [v7 didSelectOptionControl:self];
}

- (void)updateWithLeftNode:(id)a3 andRightNode:(id)a4
{
  v27 = a3;
  v6 = a4;
  [(PersonalAudioOptionControl *)self setLeftNode:v27];
  [(PersonalAudioOptionControl *)self setRightNode:v6];
  if (+[HCUtilities isInternalInstall](HCUtilities, "isInternalInstall") && (+[PASettings sharedInstance](PASettings, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 personalMediaDebugMode], v7, v8))
  {
    v9 = [(PAEnrollmentNode *)self->_leftNode configuration];

    leftLabel = self->_leftLabel;
    v11 = [v27 name];
    if (v9)
    {
      v12 = [v27 configuration];
      v13 = [v12 level];
      v14 = [v27 configuration];
      v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ [%lu, %lu]", v11, v13, [v14 shape]);
      [(UILabel *)leftLabel setText:v15];
    }

    else
    {
      v12 = paLocString();
      v14 = [NSString stringWithFormat:@"%@ [%@]", v11, v12];
      [(UILabel *)leftLabel setText:v14];
    }

    v20 = [v6 configuration];

    rightLabel = self->_rightLabel;
    v19 = [v6 name];
    if (v20)
    {
      v22 = [v6 configuration];
      v23 = [v22 level];
      v24 = [v6 configuration];
      v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ [%lu, %lu]", v19, v23, [v24 shape]);
      [(UILabel *)rightLabel setText:v25];
    }

    else
    {
      v22 = paLocString();
      v26 = [NSString stringWithFormat:@"%@ [%@]", v19, v22];
      [(UILabel *)rightLabel setText:v26];
    }
  }

  else
  {
    v16 = self->_leftLabel;
    v17 = [v27 name];
    [(UILabel *)v16 setText:v17];

    v18 = self->_rightLabel;
    v19 = [v6 name];
    [(UILabel *)v18 setText:v19];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 50.0;
  v3 = 125.0;
  if (self->_verticalLayout)
  {
    v2 = 125.0;
  }

  result.height = v2;
  result.width = v3;
  return result;
}

- (PersonalAudioOptionControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end