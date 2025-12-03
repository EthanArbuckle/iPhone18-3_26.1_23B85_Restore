@interface MapsBannerContentView
- (id)_bodyContentView:(id)view;
- (id)_bodyView:(id)view;
- (id)_topView:(id)view;
- (id)accessibilityIdentifier;
- (void)setCenterBodyContent:(BOOL)content;
- (void)setContent:(id)content;
@end

@implementation MapsBannerContentView

- (id)accessibilityIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)_topView:(id)view
{
  viewCopy = view;
  v4 = +[UIStackView _maps_HStack];
  [v4 setAccessibilityIdentifier:@"TopViewHorizontalStack"];
  [v4 setAlignment:1];
  leadingTopView = [viewCopy leadingTopView];
  [v4 _maps_addArrangedExpandingSubview:leadingTopView];

  v6 = [UIStackView _maps_Spacer:0.0];
  [v4 _maps_addArrangedContentHuggingSubview:v6];

  trailingTopView = [viewCopy trailingTopView];

  if (trailingTopView)
  {
    trailingTopView2 = [viewCopy trailingTopView];
    [v4 _maps_addArrangedContentHuggingSubview:trailingTopView2 padding:{30.0, 0.0}];
  }

  return v4;
}

- (id)_bodyContentView:(id)view
{
  viewCopy = view;
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
  v7 = [(MapsBannerContentView *)self _topView:viewCopy];
  [v5 _maps_addArrangedExpandingSubview:v7];
  trailingTopView = [viewCopy trailingTopView];

  if (trailingTopView)
  {
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor = [v7 widthAnchor];
    widthAnchor2 = [v5 widthAnchor];
    v11 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v11 setActive:1];
  }

  bottomView = [viewCopy bottomView];

  if (bottomView)
  {
    bottomView2 = [viewCopy bottomView];
    [v5 _maps_addArrangedContentHuggingSubview:bottomView2 padding:{2.0, 0.0}];
  }

  return v5;
}

- (id)_bodyView:(id)view
{
  viewCopy = view;
  v5 = +[UIStackView _maps_HStack];
  [v5 setAccessibilityIdentifier:@"BodyViewHorizontalStack"];
  [v5 setAlignment:3];
  iconView = [viewCopy iconView];

  if (iconView)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    iconView2 = [viewCopy iconView];
    constraints = [iconView2 constraints];

    v9 = [constraints countByEnumeratingWithState:&v50 objects:v55 count:16];
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
            objc_enumerationMutation(constraints);
          }

          v14 = *(*(&v50 + 1) + 8 * v13);
          firstItem = [v14 firstItem];
          iconView3 = [viewCopy iconView];
          if (firstItem == iconView3 && [v14 firstAttribute] == 8 && !objc_msgSend(v14, "relation") && !objc_msgSend(v14, "secondAttribute"))
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
        v19 = [constraints countByEnumeratingWithState:&v50 objects:v55 count:16];
        v11 = v19;
      }

      while (v19);
    }

LABEL_19:

    iconView4 = [viewCopy iconView];
    leadingTopView = [viewCopy leadingTopView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v20 = 0;
    if ((isKindOfClass & 1) != 0 && v10 > 0.0)
    {
      leadingTopView2 = [viewCopy leadingTopView];
      font = [leadingTopView2 font];
      [font ascender];
      [font lineHeight];
      UIRoundToViewScale();
      v26 = v25;
      v27 = [[BannerContentVisibilityProxyView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      [(BannerContentVisibilityProxyView *)v27 setAccessibilityIdentifier:@"IconProxyView"];
      [(BannerContentVisibilityProxyView *)v27 setTranslatesAutoresizingMaskIntoConstraints:0];
      iconView5 = [viewCopy iconView];
      [(BannerContentVisibilityProxyView *)v27 setVisibilityModel:iconView5];

      iconView6 = [viewCopy iconView];
      [(BannerContentVisibilityProxyView *)v27 addSubview:iconView6];

      v30 = v27;
      widthAnchor = [(BannerContentVisibilityProxyView *)v30 widthAnchor];
      iconView7 = [viewCopy iconView];
      widthAnchor2 = [iconView7 widthAnchor];
      v44 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v54[0] = v44;
      heightAnchor = [(BannerContentVisibilityProxyView *)v30 heightAnchor];
      v42 = [heightAnchor constraintEqualToConstant:0.0];
      v54[1] = v42;
      iconView8 = [viewCopy iconView];
      centerXAnchor = [iconView8 centerXAnchor];
      [(BannerContentVisibilityProxyView *)v30 centerXAnchor];
      v31 = v49 = self;

      v32 = [centerXAnchor constraintEqualToAnchor:v31];
      v54[2] = v32;
      iconView9 = [viewCopy iconView];
      topAnchor = [iconView9 topAnchor];
      firstBaselineAnchor = [leadingTopView2 firstBaselineAnchor];
      v36 = [topAnchor constraintEqualToAnchor:firstBaselineAnchor constant:3.0 - v26];
      v54[3] = v36;
      v20 = [NSArray arrayWithObjects:v54 count:4];

      self = v49;
      iconView4 = v30;
    }

    [iconView4 setAccessibilityIdentifier:@"IconRepresentationView"];
    [v5 _maps_addArrangedContentHuggingSubview:iconView4 padding:{2.0, 8.0}];
  }

  else
  {
    v20 = 0;
  }

  v37 = [(MapsBannerContentView *)self _bodyContentView:viewCopy];
  [v5 _maps_addArrangedExpandingSubview:v37 padding:{2.0, 2.0}];

  if (v20)
  {
    [NSLayoutConstraint activateConstraints:v20];
  }

  return v5;
}

- (void)setContent:(id)content
{
  contentCopy = content;
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
    allConstraints = [v9 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];

    vStack = self->_vStack;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  content = [(MapsBannerContentView *)self content];
  allViews = [content allViews];
  v13 = [(UIStackView *)vStack _maps_deepArrangedSubviewsExcluding:allViews];

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

  headerView = [(MapsBannerContent *)contentCopy headerView];

  if (headerView)
  {
    v19 = self->_vStack;
    headerView2 = [(MapsBannerContent *)contentCopy headerView];
    [(UIStackView *)v19 _maps_addArrangedContentHuggingSubview:headerView2 padding:0.0, 12.0];
  }

  v21 = self->_vStack;
  v22 = [(MapsBannerContentView *)self _bodyView:contentCopy];
  [(UIStackView *)v21 _maps_addArrangedContentHuggingSubview:v22 padding:0.0, 5.0];

  footerView = [(MapsBannerContent *)contentCopy footerView];

  if (footerView)
  {
    v24 = self->_vStack;
    footerView2 = [(MapsBannerContent *)contentCopy footerView];
    [(UIStackView *)v24 _maps_addArrangedContentHuggingSubview:footerView2 padding:11.0, 0.0];
  }

  content = self->_content;
  self->_content = contentCopy;
}

- (void)setCenterBodyContent:(BOOL)content
{
  if (self->_centerBodyContent != content)
  {
    self->_centerBodyContent = content;
    [(MapsBannerContentView *)self _updateContent];
  }
}

@end