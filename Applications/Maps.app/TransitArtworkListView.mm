@interface TransitArtworkListView
+ ($8502DCEA08BBBE1AB2005217B3838BBD)_metricsForIdiom:(SEL)a3;
+ (double)transitArtworkListHeight;
- ($8502DCEA08BBBE1AB2005217B3838BBD)_metrics;
- (CGSize)intrinsicContentSize;
- (TransitArtworkListView)initWithCoder:(id)a3;
- (TransitArtworkListView)initWithFrame:(CGRect)a3;
- (UIImage)arrowImage;
- (id)_addViewForArtwork:(id)a3 inContainer:(id)a4 constraints:(id)a5 previousViewInSegment:(id)a6 leadingSpacing:(double)a7;
- (id)_arrowImageView;
- (id)_createSizeConstraintsForArtworkViews:(id)a3;
- (id)_segmentContainer;
- (void)_commonInit;
- (void)_configureContainerWithBackgroundIfNeeded:(id)a3 constraints:(id)a4;
- (void)_createNewMultilineShieldView;
- (void)_updateArtworkImageViewWithArtworks;
- (void)_updateTintColor:(id)a3;
- (void)_updateTintColorForArrowImageView:(id)a3;
- (void)_updateTintColorForView:(id)a3;
- (void)layoutSubviews;
- (void)setArtworkData:(id)a3;
- (void)setForcedWidth:(double)a3;
- (void)setMaxWidth:(double)a3;
- (void)setOverrideTintColor:(id)a3;
- (void)setVerticalContentCompressionResistancePriority:(float)a3;
- (void)setVerticalContentHuggingPriority:(float)a3;
@end

@implementation TransitArtworkListView

- (void)setVerticalContentCompressionResistancePriority:(float)a3
{
  if (self->_verticalContentCompressionResistancePriority != a3)
  {
    self->_verticalContentCompressionResistancePriority = a3;
    [(MultilineWrappingListView *)self->_multilineWrappingStackView setContentCompressionResistancePriority:1 forAxis:?];
  }
}

- (void)setVerticalContentHuggingPriority:(float)a3
{
  if (self->_verticalContentHuggingPriority != a3)
  {
    self->_verticalContentHuggingPriority = a3;
    [(MultilineWrappingListView *)self->_multilineWrappingStackView setContentHuggingPriority:1 forAxis:?];
  }
}

- (id)_createSizeConstraintsForArtworkViews:(id)a3
{
  v4 = a3;
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
  v6 = v4;
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
          v26 = [v9 heightAnchor];
          v15 = v26;
          if (isKindOfClass)
          {
            v22 = [v26 constraintEqualToConstant:*(&v49 + 1)];
            v52[0] = v22;
            v27 = [v9 widthAnchor];
            v28 = [v27 constraintEqualToConstant:0.0];
            v52[1] = v28;
            v29 = [NSArray arrayWithObjects:v52 count:2];
            [v5 addObjectsFromArray:v29];
          }

          else
          {
            v22 = [v26 constraintLessThanOrEqualToConstant:*(&v49 + 1)];
            v51[0] = v22;
            v27 = [v9 centerYAnchor];
            v28 = [v9 superview];
            v29 = [v28 centerYAnchor];
            v30 = [v27 constraintEqualToAnchor:v29];
            v51[1] = v30;
            v31 = [NSArray arrayWithObjects:v51 count:2];
            [v5 addObjectsFromArray:v31];

            v7 = v41;
          }

          goto LABEL_17;
        }

        v15 = v9;
        v16 = [v15 image];
        [v16 size];
        v18 = v17;
        v20 = v19;

        if (v20 <= 0.0)
        {
          goto LABEL_18;
        }

        v21 = [v15 superview];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [v15 superview];

          if (v22)
          {
            v23 = [v22 showBackground];
            v24 = v38;
            if (v23)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {

          v22 = 0;
        }

        v24 = &v49 + 1;
LABEL_22:
        v32 = fmin(*v24, v20);
        v27 = [v15 heightAnchor];
        v28 = [v27 constraintEqualToConstant:v32];
        v53[0] = v28;
        v29 = [v15 widthAnchor];
        v33 = [v15 heightAnchor];
        v34 = [v29 constraintEqualToAnchor:v33 multiplier:v18 / v20];
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

- (void)_configureContainerWithBackgroundIfNeeded:(id)a3 constraints:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 subviews];
  if (![v8 count])
  {
    goto LABEL_4;
  }

  v9 = [v6 subviews];
  v10 = [v9 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v6 setShowBackground:1];
    v8 = [v6 heightAnchor];
    [(TransitArtworkListView *)self _metrics];
    v12 = [v8 constraintEqualToConstant:v13];
    [v7 addObject:v12];

LABEL_4:
  }
}

- (UIImage)arrowImage
{
  arrowImage = self->_arrowImage;
  if (!arrowImage)
  {
    v4 = [(TransitArtworkListView *)self traitCollection];
    if ([v4 userInterfaceIdiom] == 5)
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
  v8 = [(TransitArtworkListView *)self arrowImage];
  [v3 setImage:v8];

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

- (id)_addViewForArtwork:(id)a3 inContainer:(id)a4 constraints:(id)a5 previousViewInSegment:(id)a6 leadingSpacing:(double)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([v12 artworkSourceType] == 3)
  {
    v16 = [[MKArtworkLabelView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v17 = [GEOComposedString alloc];
    v18 = [v12 textDataSource];
    v19 = [v18 text];
    v20 = [v17 initWithGeoFormattedString:v19];

    v21 = [[MKServerFormattedString alloc] initWithComposedString:v20];
    [v16 setFormattedString:v21];
LABEL_3:

    goto LABEL_5;
  }

  v16 = [[MKArtworkImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v20 = [[MKSizedTransitArtwork alloc] initWithArtwork:v12 shieldSize:{-[TransitArtworkListView shieldSize](self, "shieldSize")}];
  [v16 setImageSource:v20];
  v22 = [v16 image];

  if (!v22)
  {
    v21 = sub_100035E6C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v33 = 138412290;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to construct an image for artwork: %@", &v33, 0xCu);
    }

    goto LABEL_3;
  }

LABEL_5:

  [(TransitArtworkListView *)self _updateTintColorForView:v16];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (v13)
  {
    [v13 addSubview:v16];
    v23 = [v16 leadingAnchor];
    if (v15)
    {
      v24 = [v15 trailingAnchor];
      [v23 constraintEqualToAnchor:v24 constant:a7];
    }

    else
    {
      v24 = [v13 leadingAnchor];
      [v23 constraintEqualToAnchor:v24];
    }
    v25 = ;

    [v14 addObject:v25];
    v26 = [v16 centerYAnchor];
    v27 = [v13 centerYAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    [v14 addObject:v28];

    v29 = [v16 topAnchor];
    v30 = [v13 topAnchor];
    v31 = [v29 constraintGreaterThanOrEqualToAnchor:v30];
    [v14 addObject:v31];
  }

  else
  {
    [(MultilineWrappingListView *)self->_multilineWrappingStackView addArrangedSubview:v16 withCustomHorizontalSpacing:a7];
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
  v7 = [(MultilineWrappingListView *)self->_multilineWrappingStackView widthAnchor];
  v8 = [v7 constraintLessThanOrEqualToConstant:self->_maxWidth];
  maxWidthConstraint = self->_maxWidthConstraint;
  self->_maxWidthConstraint = v8;

  v10 = [(MultilineWrappingListView *)self->_multilineWrappingStackView widthAnchor];
  v11 = [v10 constraintEqualToConstant:self->_forcedWidth];
  widthConstraint = self->_widthConstraint;
  self->_widthConstraint = v11;

  [(NSLayoutConstraint *)self->_maxWidthConstraint setActive:self->_maxWidth > 0.0];
  [(NSLayoutConstraint *)self->_widthConstraint setActive:self->_forcedWidth > 0.0];
  v25 = [(MultilineWrappingListView *)self->_multilineWrappingStackView leadingAnchor];
  v24 = [(TransitArtworkListView *)self leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v26[0] = v23;
  v13 = [(MultilineWrappingListView *)self->_multilineWrappingStackView trailingAnchor];
  v14 = [(TransitArtworkListView *)self trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v26[1] = v15;
  v16 = [(MultilineWrappingListView *)self->_multilineWrappingStackView topAnchor];
  v17 = [(TransitArtworkListView *)self topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v26[2] = v18;
  v19 = [(MultilineWrappingListView *)self->_multilineWrappingStackView bottomAnchor];
  v20 = [(TransitArtworkListView *)self bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
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
    v45 = 0;
    goto LABEL_59;
  }

  v45 = 0;
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
          v14 = 0;
          v49 = 0;
          goto LABEL_19;
        }
      }

      else
      {
      }

      v12 = [(TransitArtworkListView *)self traitCollection];
      v13 = [v12 userInterfaceIdiom];

      if (v13 == 5)
      {
        goto LABEL_17;
      }

      v14 = [(TransitArtworkListView *)self _segmentContainer];
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
                    v27 = [(TransitArtworkListView *)self arrowImage];

                    if (v27)
                    {
                      v28 = [(TransitArtworkListView *)self _arrowImageView];
                      [(MultilineWrappingListView *)self->_multilineWrappingStackView addArrangedSubview:v28];
                      [v55 addObject:v28];
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

                  v31 = [(TransitArtworkListView *)self _addViewForArtwork:v25 inContainer:v14 constraints:v58 previousViewInSegment:v24 leadingSpacing:v29];
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
        v32 = v14;
        v33 = [v14 subviews];
        v34 = [v33 count];

        if (v34 && v15)
        {
          [(TransitArtworkListView *)self _configureContainerWithBackgroundIfNeeded:v32 constraints:v58];
          v35 = [v32 trailingAnchor];
          v36 = [v15 trailingAnchor];
          v37 = [v35 constraintEqualToAnchor:v36];
          [v58 addObject:v37];

          [(MultilineWrappingListView *)self->_multilineWrappingStackView addArrangedSubview:v32];
          if (v45)
          {
            v45 = 1;
          }

          else
          {
            v45 = [v32 showBackground];
          }
        }

        v38 = v50;
      }

      else
      {
        v38 = v50;
        v32 = v14;
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

  if (v45)
  {
    [(MultilineWrappingListView *)self->_multilineWrappingStackView setMaxLineHeight:*&v77];
  }

  v40 = [v57 copy];
  artworkImageViews = self->_artworkImageViews;
  self->_artworkImageViews = v40;

  v42 = [v55 copy];
  arrowImageViews = self->_arrowImageViews;
  self->_arrowImageViews = v42;

  v44 = [(TransitArtworkListView *)self overrideTintColor];
  [(TransitArtworkListView *)self _updateTintColor:v44];

  [NSLayoutConstraint activateConstraints:v58];
}

- (void)_updateTintColorForArrowImageView:(id)a3
{
  v4 = a3;
  v6 = [(TransitArtworkListView *)self traitCollection];
  if ([v6 userInterfaceIdiom] == 5)
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v5 = ;
  [v4 setTintColor:v5];
}

- (void)_updateTintColorForView:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = v5;
    v4 = +[UIColor secondaryLabelColor];
    [v3 setTintColor:v4];
  }
}

- (void)_updateTintColor:(id)a3
{
  v4 = a3;
  if (v4)
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
          v11 = [(TransitArtworkListView *)self traitCollection];
          if ([v11 userInterfaceIdiom] == 5)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              [v10 setTextColor:v4];
              continue;
            }
          }

          else
          {
          }

          [v10 setTintColor:v4];
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

          [*(*(&v35 + 1) + 8 * j) setTintColor:v4];
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

- (void)setOverrideTintColor:(id)a3
{
  v5 = a3;
  v6 = self->_overrideTintColor;
  v7 = v5;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_overrideTintColor, a3);
      [(TransitArtworkListView *)self _updateTintColor:v9];
      v7 = v9;
    }
  }
}

- (void)setForcedWidth:(double)a3
{
  if (vabdd_f64(a3, self->_forcedWidth) > 2.22044605e-16)
  {
    self->_forcedWidth = a3;
    [(NSLayoutConstraint *)self->_widthConstraint setConstant:a3];
    [(NSLayoutConstraint *)self->_widthConstraint setActive:a3 > 0.0];
    [(MultilineWrappingListView *)self->_multilineWrappingStackView invalidateIntrinsicContentSize];

    [(TransitArtworkListView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setMaxWidth:(double)a3
{
  if (self->_maxWidth != a3)
  {
    self->_maxWidth = a3;
    [(NSLayoutConstraint *)self->_maxWidthConstraint setConstant:a3];
    [(NSLayoutConstraint *)self->_maxWidthConstraint setActive:a3 > 0.0];
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

- (void)setArtworkData:(id)a3
{
  v5 = a3;
  if (self->_artworkData != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_artworkData, a3);
    [(TransitArtworkListView *)self _updateArtworkImageViewWithArtworks];
    v5 = v6;
  }
}

- ($8502DCEA08BBBE1AB2005217B3838BBD)_metrics
{
  v5 = objc_opt_class();
  v8 = [(TransitArtworkListView *)self traitCollection];
  v6 = [v8 userInterfaceIdiom];
  if (v5)
  {
    [v5 _metricsForIdiom:v6];
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

- (TransitArtworkListView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = TransitArtworkListView;
  v3 = [(TransitArtworkListView *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TransitArtworkListView *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (TransitArtworkListView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = TransitArtworkListView;
  v3 = [(TransitArtworkListView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  [a1 _metricsForIdiom:{objc_msgSend(v3, "userInterfaceIdiom")}];

  return v5;
}

+ ($8502DCEA08BBBE1AB2005217B3838BBD)_metricsForIdiom:(SEL)a3
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