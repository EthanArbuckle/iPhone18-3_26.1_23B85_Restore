@interface DragAndDropAnchorView
- (CGSize)intrinsicContentSize;
- (DragAndDropAnchorView)initWithDragAndDropMapItem:(id)a3 previewTraitCollection:(id)a4;
- (DragAndDropAnchorViewContentUpdateDelegate)contentUpdateDelegate;
- (double)bottomToSubtitleLabelConstant;
- (double)subtitleLabelBaselineToTitleLabelBaselineConstant;
- (double)titleLabelBaselineToTopConstant;
- (id)_effectiveTraitCollection;
- (void)addSubviews;
- (void)setTitle:(id)a3 subtitle:(id)a4;
- (void)updateWithInitialObject:(id)a3;
- (void)updateWithResolvedMapItem:(id)a3;
@end

@implementation DragAndDropAnchorView

- (DragAndDropAnchorViewContentUpdateDelegate)contentUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contentUpdateDelegate);

  return WeakRetained;
}

- (id)_effectiveTraitCollection
{
  previewTraitCollection = self->_previewTraitCollection;
  v3 = [(DragAndDropAnchorView *)self _maximumContentSizeCategory];
  v4 = [(UITraitCollection *)previewTraitCollection _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:v3];

  return v4;
}

- (void)setTitle:(id)a3 subtitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DragAndDropAnchorView *)self titleLabel];
  [v8 setText:v7];

  v9 = [(DragAndDropAnchorView *)self subtitleLabel];
  [v9 setText:v6];

  [(DragAndDropAnchorView *)self setNeedsLayout];
  v10 = [(DragAndDropAnchorView *)self contentUpdateDelegate];
  [v10 dragAndDropAnchorViewCellDidUpdateContent:self];
}

- (void)updateWithResolvedMapItem:(id)a3
{
  objc_storeStrong(&self->_mapItem, a3);
  v5 = a3;
  v7 = [v5 name];
  v6 = [v5 _addressFormattedAsShortenedAddress];

  [(DragAndDropAnchorView *)self setTitle:v7 subtitle:v6];
}

- (void)updateWithInitialObject:(id)a3
{
  mapItem = self->_mapItem;
  if (!mapItem)
  {
    mapItem = a3;
  }

  v10 = mapItem;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v10;
    v6 = [v5 name];
    v7 = [v5 _addressFormattedAsShortenedAddress];
LABEL_12:
    v9 = v7;

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v10;
    if ([v5 isMeCard])
    {
      v8 = [v5 localizedLabel];
      v6 = [v8 capitalizedString];
    }

    else
    {
      v6 = [v5 compositeName];
    }

    v7 = [v5 shortAddress];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v10 address];
    v9 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v10;
    v6 = [v5 title];
    v7 = [v5 locationDisplayString];
    goto LABEL_12;
  }

  v9 = 0;
  v6 = 0;
LABEL_13:
  [(DragAndDropAnchorView *)self setTitle:v6 subtitle:v9];
}

- (double)bottomToSubtitleLabelConstant
{
  v2 = [(DragAndDropAnchorView *)self titleLabel];
  v3 = [v2 font];
  [v3 _scaledValueForValue:14.0];
  v5 = v4;

  return v5;
}

- (double)subtitleLabelBaselineToTitleLabelBaselineConstant
{
  v2 = [(DragAndDropAnchorView *)self titleLabel];
  v3 = [v2 font];
  [v3 _scaledValueForValue:16.0];
  v5 = v4;

  return v5;
}

- (double)titleLabelBaselineToTopConstant
{
  v2 = [(DragAndDropAnchorView *)self titleLabel];
  v3 = [v2 font];
  [v3 _scaledValueForValue:22.0];
  v5 = v4;

  return v5;
}

- (CGSize)intrinsicContentSize
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = 32.0;
  }

  else
  {
    [(DragAndDropAnchorView *)self titleLabelBaselineToTopConstant];
    v5 = v4;
    [(DragAndDropAnchorView *)self subtitleLabelBaselineToTitleLabelBaselineConstant];
    v7 = v6 + v5;
    [(DragAndDropAnchorView *)self bottomToSubtitleLabelConstant];
    v3 = v7 + v8;
  }

  v9 = UIViewNoIntrinsicMetric;
  result.height = v3;
  result.width = v9;
  return result;
}

- (void)addSubviews
{
  v105 = +[NSMutableArray array];
  if (sub_10000FA08(self) == 5)
  {
    [(DragAndDropAnchorView *)self _setContinuousCornerRadius:5.0];
    [(DragAndDropAnchorView *)self setClipsToBounds:1];
    v3 = +[UIColor systemBackgroundColor];
    [(DragAndDropAnchorView *)self setBackgroundColor:v3];

    v4 = [(MKMapItem *)self->_mapItem _styleAttributes];
    [(UITraitCollection *)self->_previewTraitCollection displayScale];
    v6 = v5;
    LOBYTE(v59) = [(UITraitCollection *)self->_previewTraitCollection userInterfaceStyle]== 2;
    v7 = [MKIconManager imageForStyle:v4 size:3 forScale:0 format:0 transparent:0 transitMode:0 interactive:v6 nightMode:v59];

    if (v7)
    {
      v8 = [[UIImageView alloc] initWithImage:v7];
      [(DragAndDropAnchorView *)self setImageView:v8];

      v9 = [(DragAndDropAnchorView *)self imageView];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

      v10 = [(DragAndDropAnchorView *)self imageView];
      [(DragAndDropAnchorView *)self addSubview:v10];

      v103 = [(DragAndDropAnchorView *)self imageView];
      v101 = [v103 leadingAnchor];
      v98 = [(DragAndDropAnchorView *)self leadingAnchor];
      v96 = [v101 constraintEqualToAnchor:v98 constant:14.0];
      v108[0] = v96;
      v93 = [(DragAndDropAnchorView *)self imageView];
      v90 = [v93 centerYAnchor];
      v87 = [(DragAndDropAnchorView *)self centerYAnchor];
      v11 = [v90 constraintEqualToAnchor:v87];
      v108[1] = v11;
      v12 = [(DragAndDropAnchorView *)self imageView];
      v13 = [v12 heightAnchor];
      v14 = [v13 constraintEqualToConstant:20.0];
      v108[2] = v14;
      v15 = [(DragAndDropAnchorView *)self imageView];
      v16 = [v15 widthAnchor];
      v17 = [v16 constraintEqualToConstant:20.0];
      v108[3] = v17;
      v18 = [NSArray arrayWithObjects:v108 count:4];
      [v105 addObjectsFromArray:v18];
    }
  }

  v19 = [(DragAndDropAnchorView *)self _effectiveTraitCollection];
  v20 = objc_alloc_init(UILabel);
  [(DragAndDropAnchorView *)self setTitleLabel:v20];

  v21 = [(DragAndDropAnchorView *)self titleLabel];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = +[UIColor labelColor];
  v23 = [(DragAndDropAnchorView *)self titleLabel];
  [v23 setTextColor:v22];

  v24 = [UIFont system13SemiboldCompatibleWithTraitCollection:v19];
  v25 = [(DragAndDropAnchorView *)self titleLabel];
  [v25 setFont:v24];

  v26 = [(DragAndDropAnchorView *)self titleLabel];
  [(DragAndDropAnchorView *)self addSubview:v26];

  if (sub_10000FA08(self) != 5)
  {
    v27 = objc_alloc_init(UILabel);
    [(DragAndDropAnchorView *)self setSubtitleLabel:v27];

    v28 = [(DragAndDropAnchorView *)self subtitleLabel];
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

    v29 = +[UIColor secondaryLabelColor];
    v30 = [(DragAndDropAnchorView *)self subtitleLabel];
    [v30 setTextColor:v29];

    v31 = [UIFont system13CompatibleWithTraitCollection:v19];
    v32 = [(DragAndDropAnchorView *)self subtitleLabel];
    [v32 setFont:v31];

    v33 = [(DragAndDropAnchorView *)self subtitleLabel];
    [(DragAndDropAnchorView *)self addSubview:v33];
  }

  v104 = v19;
  if (sub_10000FA08(self) == 5)
  {
    v34 = [(DragAndDropAnchorView *)self titleLabel];
    v35 = [v34 leadingAnchor];
    v99 = [(DragAndDropAnchorView *)self imageView];
    if (v99)
    {
      v97 = [(DragAndDropAnchorView *)self imageView];
      v36 = [v97 trailingAnchor];
    }

    else
    {
      v36 = [(DragAndDropAnchorView *)self leadingAnchor];
      v97 = v36;
    }

    v92 = [(DragAndDropAnchorView *)self imageView];
    v95 = v36;
    v49 = 8.0;
    if (!v92)
    {
      v49 = 14.0;
    }

    v102 = v35;
    v89 = [v35 constraintEqualToAnchor:v36 constant:v49];
    v107[0] = v89;
    v50 = [(DragAndDropAnchorView *)self titleLabel];
    v51 = [v50 trailingAnchor];
    v52 = [(DragAndDropAnchorView *)self trailingAnchor];
    v53 = [v51 constraintEqualToAnchor:v52 constant:-14.0];
    v107[1] = v53;
    v54 = [(DragAndDropAnchorView *)self titleLabel];
    v55 = [v54 centerYAnchor];
    v56 = [(DragAndDropAnchorView *)self centerYAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];
    v107[2] = v57;
    v58 = [NSArray arrayWithObjects:v107 count:3];
    [v105 addObjectsFromArray:v58];

    v47 = v99;
    if (v99)
    {
      v48 = v104;
    }

    else
    {
      v48 = v104;
    }
  }

  else
  {
    v34 = objc_alloc_init(UILayoutGuide);
    [(DragAndDropAnchorView *)self addLayoutGuide:v34];
    v37 = [v34 leadingAnchor];
    v100 = [(DragAndDropAnchorView *)self leadingAnchor];
    v102 = v37;
    v97 = [v37 constraintEqualToAnchor:v100 constant:14.0];
    v106[0] = v97;
    v94 = [v34 trailingAnchor];
    v91 = [(DragAndDropAnchorView *)self trailingAnchor];
    v88 = [v94 constraintEqualToAnchor:v91 constant:-14.0];
    v106[1] = v88;
    v86 = [v34 topAnchor];
    v85 = [(DragAndDropAnchorView *)self topAnchor];
    v84 = [v86 constraintEqualToAnchor:v85];
    v106[2] = v84;
    v83 = [v34 bottomAnchor];
    v82 = [(DragAndDropAnchorView *)self bottomAnchor];
    v81 = [v83 constraintEqualToAnchor:v82];
    v106[3] = v81;
    v80 = [(DragAndDropAnchorView *)self titleLabel];
    v79 = [v80 firstBaselineAnchor];
    v78 = [v34 topAnchor];
    [(DragAndDropAnchorView *)self titleLabelBaselineToTopConstant];
    v77 = [v79 constraintEqualToAnchor:v78 constant:?];
    v106[4] = v77;
    v76 = [(DragAndDropAnchorView *)self titleLabel];
    v75 = [v76 leadingAnchor];
    v74 = [v34 leadingAnchor];
    v73 = [v75 constraintEqualToAnchor:v74];
    v106[5] = v73;
    v72 = [(DragAndDropAnchorView *)self titleLabel];
    v71 = [v72 trailingAnchor];
    v70 = [v34 trailingAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v106[6] = v69;
    v68 = [(DragAndDropAnchorView *)self subtitleLabel];
    v66 = [v68 firstBaselineAnchor];
    v67 = [(DragAndDropAnchorView *)self titleLabel];
    v65 = [v67 lastBaselineAnchor];
    [(DragAndDropAnchorView *)self subtitleLabelBaselineToTitleLabelBaselineConstant];
    v64 = [v66 constraintEqualToAnchor:v65 constant:?];
    v106[7] = v64;
    v63 = [(DragAndDropAnchorView *)self subtitleLabel];
    v62 = [v63 leadingAnchor];
    v61 = [v34 leadingAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v106[8] = v60;
    v38 = [(DragAndDropAnchorView *)self subtitleLabel];
    v39 = [v38 trailingAnchor];
    v40 = [v34 trailingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    v106[9] = v41;
    v42 = [v34 bottomAnchor];
    v43 = [(DragAndDropAnchorView *)self subtitleLabel];
    v44 = [v43 lastBaselineAnchor];
    [(DragAndDropAnchorView *)self bottomToSubtitleLabelConstant];
    v45 = [v42 constraintEqualToAnchor:v44 constant:?];
    v106[10] = v45;
    v46 = [NSArray arrayWithObjects:v106 count:11];
    [v105 addObjectsFromArray:v46];

    v47 = v100;
    v48 = v104;
  }

  [NSLayoutConstraint activateConstraints:v105];
}

- (DragAndDropAnchorView)initWithDragAndDropMapItem:(id)a3 previewTraitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = DragAndDropAnchorView;
  v8 = [(DragAndDropAnchorView *)&v16 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v8)
  {
    v9 = [v6 presentationObject];
    v10 = sub_10000FA08(v8);
    v11 = [v6 resolvedMapItem];
    v12 = v11;
    if (v10 == 5)
    {
      v13 = v11;
      if (!v11)
      {
        v13 = [v6 originalMapItem];
      }

      objc_storeStrong(&v8->_mapItem, v13);
      if (!v12)
      {
      }
    }

    else
    {
      mapItem = v8->_mapItem;
      v8->_mapItem = v11;
      v12 = mapItem;
    }

    objc_storeStrong(&v8->_previewTraitCollection, a4);
    [(DragAndDropAnchorView *)v8 addSubviews];
    [(DragAndDropAnchorView *)v8 updateWithInitialObject:v9];
  }

  return v8;
}

@end