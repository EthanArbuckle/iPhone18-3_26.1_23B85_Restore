@interface TransitArtworkListView
+ ($8502DCEA08BBBE1AB2005217B3838BBD)_metricsForIdiom:(SEL)idiom;
+ (double)transitArtworkListHeight;
- ($8502DCEA08BBBE1AB2005217B3838BBD)_metrics;
- (CGSize)intrinsicContentSize;
- (TransitArtworkListView)initWithCoder:(id)coder;
- (TransitArtworkListView)initWithFrame:(CGRect)frame;
- (UIImage)arrowImage;
- (id)_addViewForArtwork:(id)artwork inContainer:(id)container constraints:(id)constraints previousViewInSegment:(id)segment leadingSpacing:(double)spacing;
- (id)_arrowImageView;
- (id)_createSizeConstraintsForArtworkViews:(id)views;
- (id)_segmentContainer;
- (void)_commonInit;
- (void)_configureContainerWithBackgroundIfNeeded:(id)needed constraints:(id)constraints;
- (void)_createNewMultilineShieldView;
- (void)_updateArtworkImageViewWithArtworks;
- (void)_updateTintColor:(id)color;
- (void)_updateTintColorForArrowImageView:(id)view;
- (void)_updateTintColorForView:(id)view;
- (void)layoutSubviews;
- (void)setArtworkData:(id)data;
- (void)setForcedWidth:(double)width;
- (void)setMaxWidth:(double)width;
- (void)setOverrideTintColor:(id)color;
- (void)setVerticalContentCompressionResistancePriority:(float)priority;
- (void)setVerticalContentHuggingPriority:(float)priority;
@end

@implementation TransitArtworkListView

- (void)setVerticalContentCompressionResistancePriority:(float)priority
{
  if (self->_verticalContentCompressionResistancePriority != priority)
  {
    self->_verticalContentCompressionResistancePriority = priority;
    [(MultilineWrappingListView *)self->_multilineWrappingStackView setContentCompressionResistancePriority:1 forAxis:?];
  }
}

- (void)setVerticalContentHuggingPriority:(float)priority
{
  if (self->_verticalContentHuggingPriority != priority)
  {
    self->_verticalContentHuggingPriority = priority;
    [(MultilineWrappingListView *)self->_multilineWrappingStackView setContentHuggingPriority:1 forAxis:?];
  }
}

- (id)_createSizeConstraintsForArtworkViews:(id)views
{
  viewsCopy = views;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  [(TransitArtworkListView *)self _metrics];
  v5 = +[NSMutableArray array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = viewsCopy;
  v42 = [v6 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v42)
  {
    v7 = *v44;
    v38 = &v50 + 1;
    v39 = v6;
    v40 = v5;
    v41 = *v44;
    do
    {
      v8 = 0;
      do
      {
        if (*v44 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v43 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v9 image], (v10 = objc_claimAutoreleasedReturnValue()) == 0) || (v11 = v10, objc_msgSend(v9, "image"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "size"), v14 = v13, v12, v11, v14 <= 0.0))
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          heightAnchor = [v9 heightAnchor];
          v15 = heightAnchor;
          if (isKindOfClass)
          {
            superview3 = [heightAnchor constraintEqualToConstant:*(&v49 + 1)];
            v52[0] = superview3;
            widthAnchor = [v9 widthAnchor];
            superview = [widthAnchor constraintEqualToConstant:0.0];
            v52[1] = superview;
            centerYAnchor = [NSArray arrayWithObjects:v52 count:2];
            [v5 addObjectsFromArray:centerYAnchor];
          }

          else
          {
            superview3 = [heightAnchor constraintLessThanOrEqualToConstant:*(&v49 + 1)];
            v51[0] = superview3;
            widthAnchor = [v9 centerYAnchor];
            superview = [v9 superview];
            centerYAnchor = [superview centerYAnchor];
            v30 = [widthAnchor constraintEqualToAnchor:centerYAnchor];
            v51[1] = v30;
            v31 = [NSArray arrayWithObjects:v51 count:2];
            [v5 addObjectsFromArray:v31];

            v7 = v41;
          }

          goto LABEL_17;
        }

        v15 = v9;
        image = [v15 image];
        [image size];
        v18 = v17;
        v20 = v19;

        if (v20 <= 0.0)
        {
          goto LABEL_18;
        }

        superview2 = [v15 superview];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          superview3 = [v15 superview];

          if (superview3)
          {
            showBackground = [superview3 showBackground];
            v24 = v38;
            if (showBackground)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {

          superview3 = 0;
        }

        v24 = &v49 + 1;
LABEL_22:
        v32 = fmin(*v24, v20);
        widthAnchor = [v15 heightAnchor];
        superview = [widthAnchor constraintEqualToConstant:v32];
        v53[0] = superview;
        centerYAnchor = [v15 widthAnchor];
        heightAnchor2 = [v15 heightAnchor];
        v34 = [centerYAnchor constraintEqualToAnchor:heightAnchor2 multiplier:v18 / v20];
        v53[1] = v34;
        v35 = [NSArray arrayWithObjects:v53 count:2];
        v5 = v40;
        [v40 addObjectsFromArray:v35];

        v6 = v39;
        v7 = v41;
LABEL_17:

LABEL_18:
        v8 = v8 + 1;
      }

      while (v42 != v8);
      v36 = [v6 countByEnumeratingWithState:&v43 objects:v54 count:16];
      v42 = v36;
    }

    while (v36);
  }

  return v5;
}

- (void)_configureContainerWithBackgroundIfNeeded:(id)needed constraints:(id)constraints
{
  neededCopy = needed;
  constraintsCopy = constraints;
  subviews = [neededCopy subviews];
  if (![subviews count])
  {
    goto LABEL_4;
  }

  subviews2 = [neededCopy subviews];
  lastObject = [subviews2 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [neededCopy setShowBackground:1];
    subviews = [neededCopy heightAnchor];
    [(TransitArtworkListView *)self _metrics];
    v12 = [subviews constraintEqualToConstant:v13];
    [constraintsCopy addObject:v12];

LABEL_4:
  }
}

- (UIImage)arrowImage
{
  arrowImage = self->_arrowImage;
  if (!arrowImage)
  {
    traitCollection = [(TransitArtworkListView *)self traitCollection];
    if ([traitCollection userInterfaceIdiom] == 5)
    {
      v5 = 5.0;
    }

    else
    {
      v5 = 8.0;
    }

    v6 = [UIImage systemImageNamed:@"arrowtriangle.forward.fill"];
    v7 = [UIImageSymbolConfiguration configurationWithPointSize:2 weight:v5];
    v8 = [v6 imageWithConfiguration:v7];
    v9 = self->_arrowImage;
    self->_arrowImage = v8;

    arrowImage = self->_arrowImage;
  }

  return arrowImage;
}

- (id)_arrowImageView
{
  v3 = [[UIImageView alloc] initWithImage:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v4) = 1148846080;
  [v3 _mapkit_setContentCompressionResistancePriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v3 _mapkit_setContentHuggingPriority:1 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v3 _mapkit_setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v3 _mapkit_setContentCompressionResistancePriority:1 forAxis:v7];
  arrowImage = [(TransitArtworkListView *)self arrowImage];
  [v3 setImage:arrowImage];

  [(TransitArtworkListView *)self _updateTintColorForArrowImageView:v3];
  [v3 setAccessibilityIdentifier:@"ArrowImageView"];

  return v3;
}

- (id)_segmentContainer
{
  v2 = [[TransitArtworkSegmentContainer alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(TransitArtworkSegmentContainer *)v2 setClipsToBounds:0];
  [(TransitArtworkSegmentContainer *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(TransitArtworkSegmentContainer *)v2 setAccessibilityIdentifier:v4];

  return v2;
}

- (id)_addViewForArtwork:(id)artwork inContainer:(id)container constraints:(id)constraints previousViewInSegment:(id)segment leadingSpacing:(double)spacing
{
  artworkCopy = artwork;
  containerCopy = container;
  constraintsCopy = constraints;
  segmentCopy = segment;
  if ([artworkCopy artworkSourceType] == 3)
  {
    v16 = [[MKArtworkLabelView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v17 = [GEOComposedString alloc];
    textDataSource = [artworkCopy textDataSource];
    text = [textDataSource text];
    v20 = [v17 initWithGeoFormattedString:text];

    v21 = [[MKServerFormattedString alloc] initWithComposedString:v20];
    [v16 setFormattedString:v21];
LABEL_3:

    goto LABEL_5;
  }

  v16 = [[MKArtworkImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v20 = [[MKSizedTransitArtwork alloc] initWithArtwork:artworkCopy shieldSize:{-[TransitArtworkListView shieldSize](self, "shieldSize")}];
  [v16 setImageSource:v20];
  image = [v16 image];

  if (!image)
  {
    v21 = sub_100035E6C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v33 = 138412290;
      v34 = artworkCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to construct an image for artwork: %@", &v33, 0xCu);
    }

    goto LABEL_3;
  }

LABEL_5:

  [(TransitArtworkListView *)self _updateTintColorForView:v16];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (containerCopy)
  {
    [containerCopy addSubview:v16];
    leadingAnchor = [v16 leadingAnchor];
    if (segmentCopy)
    {
      trailingAnchor = [segmentCopy trailingAnchor];
      [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:spacing];
    }

    else
    {
      trailingAnchor = [containerCopy leadingAnchor];
      [leadingAnchor constraintEqualToAnchor:trailingAnchor];
    }
    v25 = ;

    [constraintsCopy addObject:v25];
    centerYAnchor = [v16 centerYAnchor];
    centerYAnchor2 = [containerCopy centerYAnchor];
    v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [constraintsCopy addObject:v28];

    topAnchor = [v16 topAnchor];
    topAnchor2 = [containerCopy topAnchor];
    v31 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    [constraintsCopy addObject:v31];
  }

  else
  {
    [(MultilineWrappingListView *)self->_multilineWrappingStackView addArrangedSubview:v16 withCustomHorizontalSpacing:spacing];
  }

  [v16 setAccessibilityIdentifier:@"ArtworkView"];

  return v16;
}

- (void)_createNewMultilineShieldView
{
  [(MultilineWrappingListView *)self->_multilineWrappingStackView removeFromSuperview];
  [(TransitArtworkListView *)self _metrics];
  v3 = [[MultilineWrappingListView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  multilineWrappingStackView = self->_multilineWrappingStackView;
  self->_multilineWrappingStackView = v3;

  [(MultilineWrappingListView *)self->_multilineWrappingStackView setInterlineSpacing:0.0];
  [(MultilineWrappingListView *)self->_multilineWrappingStackView setMaxLineHeight:0.0];
  [(MultilineWrappingListView *)self->_multilineWrappingStackView setHorizontalSpacing:0.0];
  [(TransitArtworkListView *)self verticalContentHuggingPriority];
  if (v5 > 0.0)
  {
    v6 = self->_multilineWrappingStackView;
    [(TransitArtworkListView *)self verticalContentHuggingPriority];
    [(MultilineWrappingListView *)v6 setContentHuggingPriority:1 forAxis:?];
  }

  [(MultilineWrappingListView *)self->_multilineWrappingStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MultilineWrappingListView *)self->_multilineWrappingStackView setAccessibilityIdentifier:@"MultilineWrappingStackView"];
  [(TransitArtworkListView *)self addSubview:self->_multilineWrappingStackView];
  widthAnchor = [(MultilineWrappingListView *)self->_multilineWrappingStackView widthAnchor];
  v8 = [widthAnchor constraintLessThanOrEqualToConstant:self->_maxWidth];
  maxWidthConstraint = self->_maxWidthConstraint;
  self->_maxWidthConstraint = v8;

  widthAnchor2 = [(MultilineWrappingListView *)self->_multilineWrappingStackView widthAnchor];
  v11 = [widthAnchor2 constraintEqualToConstant:self->_forcedWidth];
  widthConstraint = self->_widthConstraint;
  self->_widthConstraint = v11;

  [(NSLayoutConstraint *)self->_maxWidthConstraint setActive:self->_maxWidth > 0.0];
  [(NSLayoutConstraint *)self->_widthConstraint setActive:self->_forcedWidth > 0.0];
  leadingAnchor = [(MultilineWrappingListView *)self->_multilineWrappingStackView leadingAnchor];
  leadingAnchor2 = [(TransitArtworkListView *)self leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[0] = v23;
  trailingAnchor = [(MultilineWrappingListView *)self->_multilineWrappingStackView trailingAnchor];
  trailingAnchor2 = [(TransitArtworkListView *)self trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[1] = v15;
  topAnchor = [(MultilineWrappingListView *)self->_multilineWrappingStackView topAnchor];
  topAnchor2 = [(TransitArtworkListView *)self topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[2] = v18;
  bottomAnchor = [(MultilineWrappingListView *)self->_multilineWrappingStackView bottomAnchor];
  bottomAnchor2 = [(TransitArtworkListView *)self bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v21;
  v22 = [NSArray arrayWithObjects:v26 count:4];
  [NSLayoutConstraint activateConstraints:v22];
}

- (void)_updateArtworkImageViewWithArtworks
{
  v57 = +[NSMutableArray array];
  v55 = +[NSMutableArray array];
  v58 = +[NSMutableArray array];
  v77 = 0u;
  v75 = 0u;
  memset(v76, 0, sizeof(v76));
  [(TransitArtworkListView *)self _metrics];
  [(TransitArtworkListView *)self _createNewMultilineShieldView];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = self->_artworkData;
  v48 = [(NSArray *)obj countByEnumeratingWithState:&v71 objects:v81 count:16];
  if (!v48)
  {
    showBackground = 0;
    goto LABEL_59;
  }

  showBackground = 0;
  v3 = 0;
  v47 = *v72;
  do
  {
    for (i = 0; i != v48; i = v38 + 1)
    {
      if (*v72 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v50 = i;
      v5 = *(*(&v71 + 1) + 8 * i);
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v67 objects:v80 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v68;
        do
        {
          for (j = 0; j != v8; j = j + 1)
          {
            if (*v68 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v9 += [*(*(&v67 + 1) + 8 * j) count];
          }

          v8 = [v6 countByEnumeratingWithState:&v67 objects:v80 count:16];
        }

        while (v8);

        if (v9 > 2)
        {
LABEL_17:
          _segmentContainer = 0;
          v49 = 0;
          goto LABEL_19;
        }
      }

      else
      {
      }

      traitCollection = [(TransitArtworkListView *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom == 5)
      {
        goto LABEL_17;
      }

      _segmentContainer = [(TransitArtworkListView *)self _segmentContainer];
      v49 = 1;
LABEL_19:
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v51 = v6;
      v53 = [v51 countByEnumeratingWithState:&v63 objects:v79 count:16];
      v15 = 0;
      if (v53)
      {
        v52 = *v64;
        v16 = 1;
        do
        {
          for (k = 0; k != v53; k = k + 1)
          {
            if (*v64 != v52)
            {
              objc_enumerationMutation(v51);
            }

            v18 = *(*(&v63 + 1) + 8 * k);
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v56 = v18;
            v19 = [v56 countByEnumeratingWithState:&v59 objects:v78 count:16];
            if (v19)
            {
              v20 = v19;
              v54 = k;
              v21 = 0;
              v22 = *v60;
              do
              {
                for (m = 0; m != v20; m = m + 1)
                {
                  v24 = v15;
                  if (*v60 != v22)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v25 = *(*(&v59 + 1) + 8 * m);
                  if ((([(TransitArtworkListView *)self separatorStyle]== 0) & v16) == 1 && v3 != 0)
                  {
                    arrowImage = [(TransitArtworkListView *)self arrowImage];

                    if (arrowImage)
                    {
                      _arrowImageView = [(TransitArtworkListView *)self _arrowImageView];
                      [(MultilineWrappingListView *)self->_multilineWrappingStackView addArrangedSubview:_arrowImageView];
                      [v55 addObject:_arrowImageView];
                      ++v3;
                    }
                  }

                  if (v24)
                  {
                    if ([v25 artworkSourceType] == 3)
                    {
                      v29 = *(v76 + 1);
                    }

                    else
                    {
                      v30 = &v75 + 1;
                      if (v21)
                      {
                        v30 = v76;
                      }

                      v29 = *v30;
                    }
                  }

                  else
                  {
                    v29 = *&v75;
                  }

                  v31 = [(TransitArtworkListView *)self _addViewForArtwork:v25 inContainer:_segmentContainer constraints:v58 previousViewInSegment:v24 leadingSpacing:v29];
                  [v57 addObject:v31];
                  v15 = v31;

                  v16 = 0;
                  ++v3;
                  v21 = v15;
                }

                v20 = [v56 countByEnumeratingWithState:&v59 objects:v78 count:16];
                v16 = 0;
                v21 = v15;
              }

              while (v20);

              v16 = 0;
              k = v54;
            }
          }

          v53 = [v51 countByEnumeratingWithState:&v63 objects:v79 count:16];
        }

        while (v53);
      }

      if (v49)
      {
        v32 = _segmentContainer;
        subviews = [_segmentContainer subviews];
        v34 = [subviews count];

        if (v34 && v15)
        {
          [(TransitArtworkListView *)self _configureContainerWithBackgroundIfNeeded:v32 constraints:v58];
          trailingAnchor = [v32 trailingAnchor];
          trailingAnchor2 = [v15 trailingAnchor];
          v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
          [v58 addObject:v37];

          [(MultilineWrappingListView *)self->_multilineWrappingStackView addArrangedSubview:v32];
          if (showBackground)
          {
            showBackground = 1;
          }

          else
          {
            showBackground = [v32 showBackground];
          }
        }

        v38 = v50;
      }

      else
      {
        v38 = v50;
        v32 = _segmentContainer;
      }
    }

    v48 = [(NSArray *)obj countByEnumeratingWithState:&v71 objects:v81 count:16];
  }

  while (v48);
LABEL_59:

  if ([v57 count])
  {
    v39 = [(TransitArtworkListView *)self _createSizeConstraintsForArtworkViews:v57];
    [v58 addObjectsFromArray:v39];
  }

  if (showBackground)
  {
    [(MultilineWrappingListView *)self->_multilineWrappingStackView setMaxLineHeight:*&v77];
  }

  v40 = [v57 copy];
  artworkImageViews = self->_artworkImageViews;
  self->_artworkImageViews = v40;

  v42 = [v55 copy];
  arrowImageViews = self->_arrowImageViews;
  self->_arrowImageViews = v42;

  overrideTintColor = [(TransitArtworkListView *)self overrideTintColor];
  [(TransitArtworkListView *)self _updateTintColor:overrideTintColor];

  [NSLayoutConstraint activateConstraints:v58];
}

- (void)_updateTintColorForArrowImageView:(id)view
{
  viewCopy = view;
  traitCollection = [(TransitArtworkListView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 5)
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v5 = ;
  [viewCopy setTintColor:v5];
}

- (void)_updateTintColorForView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = viewCopy;
    v4 = +[UIColor secondaryLabelColor];
    [v3 setTintColor:v4];
  }
}

- (void)_updateTintColor:(id)color
{
  colorCopy = color;
  if (colorCopy)
  {
    v41 = 0uLL;
    v42 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    v5 = self->_artworkImageViews;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v40;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v40 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v39 + 1) + 8 * i);
          traitCollection = [(TransitArtworkListView *)self traitCollection];
          if ([traitCollection userInterfaceIdiom] == 5)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              [v10 setTextColor:colorCopy];
              continue;
            }
          }

          else
          {
          }

          [v10 setTintColor:colorCopy];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v7);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = self->_arrowImageViews;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v35 + 1) + 8 * j) setTintColor:colorCopy];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v33 = 0uLL;
    v34 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v18 = self->_artworkImageViews;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v31 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (k = 0; k != v20; k = k + 1)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [(TransitArtworkListView *)self _updateTintColorForView:*(*(&v31 + 1) + 8 * k)];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v31 objects:v44 count:16];
      }

      while (v20);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = self->_arrowImageViews;
    v23 = [(NSArray *)v13 countByEnumeratingWithState:&v27 objects:v43 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      do
      {
        for (m = 0; m != v24; m = m + 1)
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v13);
          }

          [(TransitArtworkListView *)self _updateTintColorForArrowImageView:*(*(&v27 + 1) + 8 * m), v27];
        }

        v24 = [(NSArray *)v13 countByEnumeratingWithState:&v27 objects:v43 count:16];
      }

      while (v24);
    }
  }
}

- (void)setOverrideTintColor:(id)color
{
  colorCopy = color;
  v6 = self->_overrideTintColor;
  v7 = colorCopy;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_overrideTintColor, color);
      [(TransitArtworkListView *)self _updateTintColor:v9];
      v7 = v9;
    }
  }
}

- (void)setForcedWidth:(double)width
{
  if (vabdd_f64(width, self->_forcedWidth) > 2.22044605e-16)
  {
    self->_forcedWidth = width;
    [(NSLayoutConstraint *)self->_widthConstraint setConstant:width];
    [(NSLayoutConstraint *)self->_widthConstraint setActive:width > 0.0];
    [(MultilineWrappingListView *)self->_multilineWrappingStackView invalidateIntrinsicContentSize];

    [(TransitArtworkListView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setMaxWidth:(double)width
{
  if (self->_maxWidth != width)
  {
    self->_maxWidth = width;
    [(NSLayoutConstraint *)self->_maxWidthConstraint setConstant:width];
    [(NSLayoutConstraint *)self->_maxWidthConstraint setActive:width > 0.0];
    [(MultilineWrappingListView *)self->_multilineWrappingStackView invalidateIntrinsicContentSize];

    [(TransitArtworkListView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  [(MultilineWrappingListView *)self->_multilineWrappingStackView intrinsicContentSize];
  if (self->_forcedWidth > 0.0)
  {
    forcedWidth = self->_forcedWidth;
  }

  result.height = v4;
  result.width = forcedWidth;
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = TransitArtworkListView;
  [(TransitArtworkListView *)&v6 layoutSubviews];
  [(TransitArtworkListView *)self bounds];
  if (self->_lastSize.width != v3 || self->_lastSize.height != v4)
  {
    self->_lastSize.width = v3;
    self->_lastSize.height = v4;
    [(MultilineWrappingListView *)self->_multilineWrappingStackView invalidateIntrinsicContentSize];
    [(TransitArtworkListView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setArtworkData:(id)data
{
  dataCopy = data;
  if (self->_artworkData != dataCopy)
  {
    v6 = dataCopy;
    objc_storeStrong(&self->_artworkData, data);
    [(TransitArtworkListView *)self _updateArtworkImageViewWithArtworks];
    dataCopy = v6;
  }
}

- ($8502DCEA08BBBE1AB2005217B3838BBD)_metrics
{
  v5 = objc_opt_class();
  traitCollection = [(TransitArtworkListView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  if (v5)
  {
    [v5 _metricsForIdiom:userInterfaceIdiom];
  }

  else
  {
    *&retstr->var4 = 0u;
    *&retstr->var6 = 0u;
    *&retstr->var0 = 0u;
    *&retstr->var2 = 0u;
  }

  return result;
}

- (void)_commonInit
{
  [(TransitArtworkListView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  self->_separatorStyle = 0;
  [(TransitArtworkListView *)self setShieldSize:6];

  [(TransitArtworkListView *)self setAccessibilityIdentifier:@"TransitArtworkList"];
}

- (TransitArtworkListView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TransitArtworkListView;
  v3 = [(TransitArtworkListView *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TransitArtworkListView *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (TransitArtworkListView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = TransitArtworkListView;
  v3 = [(TransitArtworkListView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TransitArtworkListView *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

+ (double)transitArtworkListHeight
{
  v3 = +[UIDevice currentDevice];
  [self _metricsForIdiom:{objc_msgSend(v3, "userInterfaceIdiom")}];

  return v5;
}

+ ($8502DCEA08BBBE1AB2005217B3838BBD)_metricsForIdiom:(SEL)idiom
{
  if (a4 == 4)
  {
    v4 = &xmmword_101215628;
  }

  else if (a4 == 5)
  {
    v4 = &xmmword_1012155E8;
  }

  else
  {
    v4 = &xmmword_101215668;
  }

  v5 = v4[1];
  *&retstr->var0 = *v4;
  *&retstr->var2 = v5;
  v6 = v4[3];
  *&retstr->var4 = v4[2];
  *&retstr->var6 = v6;
  return result;
}

@end