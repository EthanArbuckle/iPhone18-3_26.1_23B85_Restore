@interface RidesharingTippingView
- (RidesharingTippingView)initWithCoder:(id)coder;
- (RidesharingTippingView)initWithOptions:(id)options updateBlock:(id)block;
- (id)description;
- (void)_commonInitWithOptions:(id)options;
- (void)_selectedOption:(id)option fromOptions:(id)options;
- (void)setTippingOptions:(id)options;
- (void)tapped:(id)tapped;
@end

@implementation RidesharingTippingView

- (void)setTippingOptions:(id)options
{
  optionsCopy = options;
  if (![(NSArray *)self->_tippingOptions isEqualToArray:optionsCopy])
  {
    v5 = [optionsCopy mutableCopy];
    v6 = [v5 sortedArrayUsingComparator:&stru_10162CFD0];
    tippingOptions = self->_tippingOptions;
    self->_tippingOptions = v6;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
    v9 = [arrangedSubviews countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        v12 = 0;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          [(UIStackView *)self->_stackView removeArrangedSubview:*(*(&v25 + 1) + 8 * v12)];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [arrangedSubviews countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v10);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = self->_tippingOptions;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        v17 = 0;
        do
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v21 + 1) + 8 * v17);
          v19 = objc_alloc_init(RidesharingTippingOptionView);
          [(RidesharingTippingOptionView *)v19 setAmount:v18, v21];
          [(UIStackView *)self->_stackView addArrangedSubview:v19];
          [(RidesharingTippingOptionView *)v19 setNeedsDisplay];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v15);
    }

    v20 = objc_alloc_init(RidesharingTippingOptionView);
    [(RidesharingTippingOptionView *)v20 setOther:1];
    [(UIStackView *)self->_stackView addArrangedSubview:v20];
    [(RidesharingTippingOptionView *)v20 setNeedsDisplay];
  }
}

- (id)description
{
  arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
  v3 = [NSString stringWithFormat:@"RidesharingTippingView\nOptions:%@", arrangedSubviews];

  return v3;
}

- (void)_selectedOption:(id)option fromOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  v8 = [optionCopy isSelected] ^ 1;
  v9 = [optionCopy isOther] | v8;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = optionsCopy;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v17 + 1) + 8 * i) setSelected:{0, v17}];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [optionCopy setSelected:v9 & 1];
  updateBlock = self->_updateBlock;
  if (updateBlock)
  {
    if (v9)
    {
      amount = [optionCopy amount];
      updateBlock[2](updateBlock, amount);
    }

    else
    {
      updateBlock[2](updateBlock, 0);
    }
  }
}

- (void)tapped:(id)tapped
{
  tappedCopy = tapped;
  arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
  if ([arrangedSubviews count])
  {
    for (i = 0; i < [arrangedSubviews count]; ++i)
    {
      v7 = [arrangedSubviews objectAtIndexedSubscript:i];
      objc_opt_class();
      v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v7 : 0;
      v9 = v8;

      if (!v9)
      {
        break;
      }

      [tappedCopy locationInView:v9];
      if ([v9 pointInside:0 withEvent:?])
      {
        if ([v9 isOther])
        {
          selfCopy = self;
          v10 = +[NSLocale currentLocale];
          currencySymbol = [v10 currencySymbol];

          v11 = +[NSLocale currentLocale];
          currencyCode = [v11 currencyCode];

          v59 = 0u;
          v60 = 0u;
          v58 = 0u;
          v57 = 0u;
          v12 = arrangedSubviews;
          v13 = [v12 countByEnumeratingWithState:&v57 objects:v61 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v58;
            while (2)
            {
              for (j = 0; j != v14; j = j + 1)
              {
                if (*v58 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v57 + 1) + 8 * j);
                amount = [v17 amount];
                currencySymbol2 = [amount currencySymbol];

                if (currencySymbol2)
                {
                  v21 = [currencySymbol2 copy];

                  amount2 = [v17 amount];
                  currencyCode2 = [amount2 currencyCode];

                  v20 = v21;
                  currencyCode = currencyCode2;
                  goto LABEL_22;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v57 objects:v61 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          v20 = currencySymbol;
LABEL_22:

          v24 = +[NSBundle mainBundle];
          v25 = [v24 localizedStringForKey:@"ridesharing.feedback.tip.customTip.title" value:@"localized string not found" table:0];
          v26 = +[NSBundle mainBundle];
          v27 = [v26 localizedStringForKey:@"ridesharing.feedback.tip.customTip.message" value:@"localized string not found" table:0];
          v28 = [UIAlertController alertControllerWithTitle:v25 message:v27 preferredStyle:1];

          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_10089DA10;
          v54[3] = &unk_10162CF68;
          v29 = v9;
          v55 = v29;
          v47 = v20;
          v56 = v47;
          v30 = v28;
          [v28 addTextFieldWithConfigurationHandler:v54];
          v31 = +[NSBundle mainBundle];
          v32 = [v31 localizedStringForKey:@"ridesharing.feedback.tip.customTip.cancel" value:@"localized string not found" table:0];
          v33 = [UIAlertAction actionWithTitle:v32 style:1 handler:0];
          [v30 addAction:v33];

          v34 = +[NSBundle mainBundle];
          v35 = [v34 localizedStringForKey:@"ridesharing.feedback.tip.customTip.addTip" value:@"localized string not found" table:0];
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_10089DC20;
          v48[3] = &unk_10162CF90;
          v36 = v30;
          v49 = v36;
          v50 = v29;
          v37 = currencyCode;
          v51 = v37;
          v52 = selfCopy;
          v53 = v12;
          v38 = [UIAlertAction actionWithTitle:v35 style:0 handler:v48];
          [v36 addAction:v38];

          delegate = [(RidesharingTippingView *)selfCopy delegate];
          if (delegate)
          {
            v40 = delegate;
            delegate2 = [(RidesharingTippingView *)selfCopy delegate];
            v42 = objc_opt_respondsToSelector();

            if (v42)
            {
              delegate3 = [(RidesharingTippingView *)selfCopy delegate];
              [delegate3 presentCustomTipAlert:v36];
            }
          }
        }

        else
        {
          [(RidesharingTippingView *)self _selectedOption:v9 fromOptions:arrangedSubviews];
        }

        break;
      }
    }
  }
}

- (void)_commonInitWithOptions:(id)options
{
  optionsCopy = options;
  layer = [(RidesharingTippingView *)self layer];
  [layer setCornerRadius:4.0];

  layer2 = [(RidesharingTippingView *)self layer];
  [layer2 setMasksToBounds:1];

  v7 = objc_alloc_init(UIStackView);
  stackView = self->_stackView;
  self->_stackView = v7;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAxis:0];
  [(UIStackView *)self->_stackView setSpacing:0.0];
  [(UIStackView *)self->_stackView setDistribution:1];
  [(UIStackView *)self->_stackView setAlignment:3];
  [(RidesharingTippingView *)self addSubview:self->_stackView];
  topAnchor = [(UIStackView *)self->_stackView topAnchor];
  topAnchor2 = [(RidesharingTippingView *)self topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v11 setActive:1];

  leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
  leadingAnchor2 = [(RidesharingTippingView *)self leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v14 setActive:1];

  bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
  bottomAnchor2 = [(RidesharingTippingView *)self bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v17 setActive:1];

  trailingAnchor = [(UIStackView *)self->_stackView trailingAnchor];
  trailingAnchor2 = [(RidesharingTippingView *)self trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v20 setActive:1];

  [(RidesharingTippingView *)self setTippingOptions:optionsCopy];
  v21 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tapped:"];
  tapGesture = self->_tapGesture;
  self->_tapGesture = v21;

  [(UITapGestureRecognizer *)self->_tapGesture setNumberOfTapsRequired:1];
  [(UITapGestureRecognizer *)self->_tapGesture setNumberOfTouchesRequired:1];
  v23 = self->_tapGesture;

  [(RidesharingTippingView *)self addGestureRecognizer:v23];
}

- (RidesharingTippingView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = RidesharingTippingView;
  v3 = [(RidesharingTippingView *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(RidesharingTippingView *)v3 _commonInitWithOptions:&__NSArray0__struct];
    v5 = v4;
  }

  return v4;
}

- (RidesharingTippingView)initWithOptions:(id)options updateBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = RidesharingTippingView;
  v8 = [(RidesharingTippingView *)&v14 init];
  if (v8)
  {
    v9 = [blockCopy copy];
    updateBlock = v8->_updateBlock;
    v8->_updateBlock = v9;

    if (optionsCopy)
    {
      v11 = optionsCopy;
    }

    else
    {
      v11 = &__NSArray0__struct;
    }

    [(RidesharingTippingView *)v8 _commonInitWithOptions:v11];
    v12 = v8;
  }

  return v8;
}

@end