@interface RidesharingTippingView
- (RidesharingTippingView)initWithCoder:(id)a3;
- (RidesharingTippingView)initWithOptions:(id)a3 updateBlock:(id)a4;
- (id)description;
- (void)_commonInitWithOptions:(id)a3;
- (void)_selectedOption:(id)a3 fromOptions:(id)a4;
- (void)setTippingOptions:(id)a3;
- (void)tapped:(id)a3;
@end

@implementation RidesharingTippingView

- (void)setTippingOptions:(id)a3
{
  v4 = a3;
  if (![(NSArray *)self->_tippingOptions isEqualToArray:v4])
  {
    v5 = [v4 mutableCopy];
    v6 = [v5 sortedArrayUsingComparator:&stru_10162CFD0];
    tippingOptions = self->_tippingOptions;
    self->_tippingOptions = v6;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [(UIStackView *)self->_stackView arrangedSubviews];
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(v8);
          }

          [(UIStackView *)self->_stackView removeArrangedSubview:*(*(&v25 + 1) + 8 * v12)];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
  v2 = [(UIStackView *)self->_stackView arrangedSubviews];
  v3 = [NSString stringWithFormat:@"RidesharingTippingView\nOptions:%@", v2];

  return v3;
}

- (void)_selectedOption:(id)a3 fromOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 isSelected] ^ 1;
  v9 = [v6 isOther] | v8;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v7;
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

  [v6 setSelected:v9 & 1];
  updateBlock = self->_updateBlock;
  if (updateBlock)
  {
    if (v9)
    {
      v16 = [v6 amount];
      updateBlock[2](updateBlock, v16);
    }

    else
    {
      updateBlock[2](updateBlock, 0);
    }
  }
}

- (void)tapped:(id)a3
{
  v4 = a3;
  v5 = [(UIStackView *)self->_stackView arrangedSubviews];
  if ([v5 count])
  {
    for (i = 0; i < [v5 count]; ++i)
    {
      v7 = [v5 objectAtIndexedSubscript:i];
      objc_opt_class();
      v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v7 : 0;
      v9 = v8;

      if (!v9)
      {
        break;
      }

      [v4 locationInView:v9];
      if ([v9 pointInside:0 withEvent:?])
      {
        if ([v9 isOther])
        {
          v45 = self;
          v10 = +[NSLocale currentLocale];
          v44 = [v10 currencySymbol];

          v11 = +[NSLocale currentLocale];
          v46 = [v11 currencyCode];

          v59 = 0u;
          v60 = 0u;
          v58 = 0u;
          v57 = 0u;
          v12 = v5;
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
                v18 = [v17 amount];
                v19 = [v18 currencySymbol];

                if (v19)
                {
                  v21 = [v19 copy];

                  v22 = [v17 amount];
                  v23 = [v22 currencyCode];

                  v20 = v21;
                  v46 = v23;
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

          v20 = v44;
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
          v37 = v46;
          v51 = v37;
          v52 = v45;
          v53 = v12;
          v38 = [UIAlertAction actionWithTitle:v35 style:0 handler:v48];
          [v36 addAction:v38];

          v39 = [(RidesharingTippingView *)v45 delegate];
          if (v39)
          {
            v40 = v39;
            v41 = [(RidesharingTippingView *)v45 delegate];
            v42 = objc_opt_respondsToSelector();

            if (v42)
            {
              v43 = [(RidesharingTippingView *)v45 delegate];
              [v43 presentCustomTipAlert:v36];
            }
          }
        }

        else
        {
          [(RidesharingTippingView *)self _selectedOption:v9 fromOptions:v5];
        }

        break;
      }
    }
  }
}

- (void)_commonInitWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(RidesharingTippingView *)self layer];
  [v5 setCornerRadius:4.0];

  v6 = [(RidesharingTippingView *)self layer];
  [v6 setMasksToBounds:1];

  v7 = objc_alloc_init(UIStackView);
  stackView = self->_stackView;
  self->_stackView = v7;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAxis:0];
  [(UIStackView *)self->_stackView setSpacing:0.0];
  [(UIStackView *)self->_stackView setDistribution:1];
  [(UIStackView *)self->_stackView setAlignment:3];
  [(RidesharingTippingView *)self addSubview:self->_stackView];
  v9 = [(UIStackView *)self->_stackView topAnchor];
  v10 = [(RidesharingTippingView *)self topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(UIStackView *)self->_stackView leadingAnchor];
  v13 = [(RidesharingTippingView *)self leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [(UIStackView *)self->_stackView bottomAnchor];
  v16 = [(RidesharingTippingView *)self bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [(UIStackView *)self->_stackView trailingAnchor];
  v19 = [(RidesharingTippingView *)self trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  [(RidesharingTippingView *)self setTippingOptions:v4];
  v21 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tapped:"];
  tapGesture = self->_tapGesture;
  self->_tapGesture = v21;

  [(UITapGestureRecognizer *)self->_tapGesture setNumberOfTapsRequired:1];
  [(UITapGestureRecognizer *)self->_tapGesture setNumberOfTouchesRequired:1];
  v23 = self->_tapGesture;

  [(RidesharingTippingView *)self addGestureRecognizer:v23];
}

- (RidesharingTippingView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = RidesharingTippingView;
  v3 = [(RidesharingTippingView *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(RidesharingTippingView *)v3 _commonInitWithOptions:&__NSArray0__struct];
    v5 = v4;
  }

  return v4;
}

- (RidesharingTippingView)initWithOptions:(id)a3 updateBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = RidesharingTippingView;
  v8 = [(RidesharingTippingView *)&v14 init];
  if (v8)
  {
    v9 = [v7 copy];
    updateBlock = v8->_updateBlock;
    v8->_updateBlock = v9;

    if (v6)
    {
      v11 = v6;
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