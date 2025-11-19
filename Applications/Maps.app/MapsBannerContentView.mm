@interface MapsBannerContentView
- (id)_bodyContentView:(id)a3;
- (id)_bodyView:(id)a3;
- (id)_topView:(id)a3;
- (id)accessibilityIdentifier;
- (void)setCenterBodyContent:(BOOL)a3;
- (void)setContent:(id)a3;
@end

@implementation MapsBannerContentView

- (id)accessibilityIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)_topView:(id)a3
{
  v3 = a3;
  v4 = +[UIStackView _maps_HStack];
  [v4 setAccessibilityIdentifier:@"TopViewHorizontalStack"];
  [v4 setAlignment:1];
  v5 = [v3 leadingTopView];
  [v4 _maps_addArrangedExpandingSubview:v5];

  v6 = [UIStackView _maps_Spacer:0.0];
  [v4 _maps_addArrangedContentHuggingSubview:v6];

  v7 = [v3 trailingTopView];

  if (v7)
  {
    v8 = [v3 trailingTopView];
    [v4 _maps_addArrangedContentHuggingSubview:v8 padding:{30.0, 0.0}];
  }

  return v4;
}

- (id)_bodyContentView:(id)a3
{
  v4 = a3;
  v5 = +[UIStackView _maps_VStack];
  [v5 setAccessibilityIdentifier:@"BodyContentVerticalStack"];
  if ([(MapsBannerContentView *)self centerBodyContent])
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  [v5 setAlignment:v6];
  v7 = [(MapsBannerContentView *)self _topView:v4];
  [v5 _maps_addArrangedExpandingSubview:v7];
  v8 = [v4 trailingTopView];

  if (v8)
  {
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v7 widthAnchor];
    v10 = [v5 widthAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [v11 setActive:1];
  }

  v12 = [v4 bottomView];

  if (v12)
  {
    v13 = [v4 bottomView];
    [v5 _maps_addArrangedContentHuggingSubview:v13 padding:{2.0, 0.0}];
  }

  return v5;
}

- (id)_bodyView:(id)a3
{
  v4 = a3;
  v5 = +[UIStackView _maps_HStack];
  [v5 setAccessibilityIdentifier:@"BodyViewHorizontalStack"];
  [v5 setAlignment:3];
  v6 = [v4 iconView];

  if (v6)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v7 = [v4 iconView];
    v8 = [v7 constraints];

    v9 = [v8 countByEnumeratingWithState:&v50 objects:v55 count:16];
    v10 = 0.0;
    if (v9)
    {
      v11 = v9;
      v12 = *v51;
      do
      {
        v13 = 0;
        do
        {
          if (*v51 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v50 + 1) + 8 * v13);
          v15 = [v14 firstItem];
          v16 = [v4 iconView];
          if (v15 == v16 && [v14 firstAttribute] == 8 && !objc_msgSend(v14, "relation") && !objc_msgSend(v14, "secondAttribute"))
          {
            [v14 constant];
            v18 = v17;

            if (v18 > 0.0)
            {
              [v14 constant];
              v10 = v21;
              goto LABEL_19;
            }
          }

          else
          {
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v19 = [v8 countByEnumeratingWithState:&v50 objects:v55 count:16];
        v11 = v19;
      }

      while (v19);
    }

LABEL_19:

    v22 = [v4 iconView];
    v23 = [v4 leadingTopView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v20 = 0;
    if ((isKindOfClass & 1) != 0 && v10 > 0.0)
    {
      v41 = [v4 leadingTopView];
      v48 = [v41 font];
      [v48 ascender];
      [v48 lineHeight];
      UIRoundToViewScale();
      v26 = v25;
      v27 = [[BannerContentVisibilityProxyView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      [(BannerContentVisibilityProxyView *)v27 setAccessibilityIdentifier:@"IconProxyView"];
      [(BannerContentVisibilityProxyView *)v27 setTranslatesAutoresizingMaskIntoConstraints:0];
      v28 = [v4 iconView];
      [(BannerContentVisibilityProxyView *)v27 setVisibilityModel:v28];

      v29 = [v4 iconView];
      [(BannerContentVisibilityProxyView *)v27 addSubview:v29];

      v30 = v27;
      v46 = [(BannerContentVisibilityProxyView *)v30 widthAnchor];
      v47 = [v4 iconView];
      v45 = [v47 widthAnchor];
      v44 = [v46 constraintEqualToAnchor:v45];
      v54[0] = v44;
      v43 = [(BannerContentVisibilityProxyView *)v30 heightAnchor];
      v42 = [v43 constraintEqualToConstant:0.0];
      v54[1] = v42;
      v40 = [v4 iconView];
      v39 = [v40 centerXAnchor];
      [(BannerContentVisibilityProxyView *)v30 centerXAnchor];
      v31 = v49 = self;

      v32 = [v39 constraintEqualToAnchor:v31];
      v54[2] = v32;
      v33 = [v4 iconView];
      v34 = [v33 topAnchor];
      v35 = [v41 firstBaselineAnchor];
      v36 = [v34 constraintEqualToAnchor:v35 constant:3.0 - v26];
      v54[3] = v36;
      v20 = [NSArray arrayWithObjects:v54 count:4];

      self = v49;
      v22 = v30;
    }

    [v22 setAccessibilityIdentifier:@"IconRepresentationView"];
    [v5 _maps_addArrangedContentHuggingSubview:v22 padding:{2.0, 8.0}];
  }

  else
  {
    v20 = 0;
  }

  v37 = [(MapsBannerContentView *)self _bodyContentView:v4];
  [v5 _maps_addArrangedExpandingSubview:v37 padding:{2.0, 2.0}];

  if (v20)
  {
    [NSLayoutConstraint activateConstraints:v20];
  }

  return v5;
}

- (void)setContent:(id)a3
{
  v4 = a3;
  vStack = self->_vStack;
  if (!vStack)
  {
    v6 = +[UIStackView _maps_VStack];
    v7 = self->_vStack;
    self->_vStack = v6;

    [(UIStackView *)self->_vStack setAccessibilityIdentifier:@"MainVerticalStack"];
    [(MapsBannerContentView *)self addSubview:self->_vStack];
    LODWORD(v8) = 1148846080;
    v9 = [(UIStackView *)self->_vStack _maps_constraintsEqualToEdgesOfView:self priority:v8];
    v10 = [v9 allConstraints];
    [NSLayoutConstraint activateConstraints:v10];

    vStack = self->_vStack;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [(MapsBannerContentView *)self content];
  v12 = [v11 allViews];
  v13 = [(UIStackView *)vStack _maps_deepArrangedSubviewsExcluding:v12];

  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v27 + 1) + 8 * v17) removeFromSuperview];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  v18 = [(MapsBannerContent *)v4 headerView];

  if (v18)
  {
    v19 = self->_vStack;
    v20 = [(MapsBannerContent *)v4 headerView];
    [(UIStackView *)v19 _maps_addArrangedContentHuggingSubview:v20 padding:0.0, 12.0];
  }

  v21 = self->_vStack;
  v22 = [(MapsBannerContentView *)self _bodyView:v4];
  [(UIStackView *)v21 _maps_addArrangedContentHuggingSubview:v22 padding:0.0, 5.0];

  v23 = [(MapsBannerContent *)v4 footerView];

  if (v23)
  {
    v24 = self->_vStack;
    v25 = [(MapsBannerContent *)v4 footerView];
    [(UIStackView *)v24 _maps_addArrangedContentHuggingSubview:v25 padding:11.0, 0.0];
  }

  content = self->_content;
  self->_content = v4;
}

- (void)setCenterBodyContent:(BOOL)a3
{
  if (self->_centerBodyContent != a3)
  {
    self->_centerBodyContent = a3;
    [(MapsBannerContentView *)self _updateContent];
  }
}

@end