@interface DragAndDropAnchorView
- (CGSize)intrinsicContentSize;
- (DragAndDropAnchorView)initWithDragAndDropMapItem:(id)item previewTraitCollection:(id)collection;
- (DragAndDropAnchorViewContentUpdateDelegate)contentUpdateDelegate;
- (double)bottomToSubtitleLabelConstant;
- (double)subtitleLabelBaselineToTitleLabelBaselineConstant;
- (double)titleLabelBaselineToTopConstant;
- (id)_effectiveTraitCollection;
- (void)addSubviews;
- (void)setTitle:(id)title subtitle:(id)subtitle;
- (void)updateWithInitialObject:(id)object;
- (void)updateWithResolvedMapItem:(id)item;
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
  _maximumContentSizeCategory = [(DragAndDropAnchorView *)self _maximumContentSizeCategory];
  v4 = [(UITraitCollection *)previewTraitCollection _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:_maximumContentSizeCategory];

  return v4;
}

- (void)setTitle:(id)title subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  titleCopy = title;
  titleLabel = [(DragAndDropAnchorView *)self titleLabel];
  [titleLabel setText:titleCopy];

  subtitleLabel = [(DragAndDropAnchorView *)self subtitleLabel];
  [subtitleLabel setText:subtitleCopy];

  [(DragAndDropAnchorView *)self setNeedsLayout];
  contentUpdateDelegate = [(DragAndDropAnchorView *)self contentUpdateDelegate];
  [contentUpdateDelegate dragAndDropAnchorViewCellDidUpdateContent:self];
}

- (void)updateWithResolvedMapItem:(id)item
{
  objc_storeStrong(&self->_mapItem, item);
  itemCopy = item;
  name = [itemCopy name];
  _addressFormattedAsShortenedAddress = [itemCopy _addressFormattedAsShortenedAddress];

  [(DragAndDropAnchorView *)self setTitle:name subtitle:_addressFormattedAsShortenedAddress];
}

- (void)updateWithInitialObject:(id)object
{
  mapItem = self->_mapItem;
  if (!mapItem)
  {
    mapItem = object;
  }

  v10 = mapItem;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v10;
    name = [v5 name];
    _addressFormattedAsShortenedAddress = [v5 _addressFormattedAsShortenedAddress];
LABEL_12:
    v9 = _addressFormattedAsShortenedAddress;

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v10;
    if ([v5 isMeCard])
    {
      localizedLabel = [v5 localizedLabel];
      name = [localizedLabel capitalizedString];
    }

    else
    {
      name = [v5 compositeName];
    }

    _addressFormattedAsShortenedAddress = [v5 shortAddress];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [v10 address];
    v9 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v10;
    name = [v5 title];
    _addressFormattedAsShortenedAddress = [v5 locationDisplayString];
    goto LABEL_12;
  }

  v9 = 0;
  name = 0;
LABEL_13:
  [(DragAndDropAnchorView *)self setTitle:name subtitle:v9];
}

- (double)bottomToSubtitleLabelConstant
{
  titleLabel = [(DragAndDropAnchorView *)self titleLabel];
  font = [titleLabel font];
  [font _scaledValueForValue:14.0];
  v5 = v4;

  return v5;
}

- (double)subtitleLabelBaselineToTitleLabelBaselineConstant
{
  titleLabel = [(DragAndDropAnchorView *)self titleLabel];
  font = [titleLabel font];
  [font _scaledValueForValue:16.0];
  v5 = v4;

  return v5;
}

- (double)titleLabelBaselineToTopConstant
{
  titleLabel = [(DragAndDropAnchorView *)self titleLabel];
  font = [titleLabel font];
  [font _scaledValueForValue:22.0];
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

    _styleAttributes = [(MKMapItem *)self->_mapItem _styleAttributes];
    [(UITraitCollection *)self->_previewTraitCollection displayScale];
    v6 = v5;
    LOBYTE(v59) = [(UITraitCollection *)self->_previewTraitCollection userInterfaceStyle]== 2;
    v7 = [MKIconManager imageForStyle:_styleAttributes size:3 forScale:0 format:0 transparent:0 transitMode:0 interactive:v6 nightMode:v59];

    if (v7)
    {
      v8 = [[UIImageView alloc] initWithImage:v7];
      [(DragAndDropAnchorView *)self setImageView:v8];

      imageView = [(DragAndDropAnchorView *)self imageView];
      [imageView setTranslatesAutoresizingMaskIntoConstraints:0];

      imageView2 = [(DragAndDropAnchorView *)self imageView];
      [(DragAndDropAnchorView *)self addSubview:imageView2];

      imageView3 = [(DragAndDropAnchorView *)self imageView];
      leadingAnchor = [imageView3 leadingAnchor];
      leadingAnchor2 = [(DragAndDropAnchorView *)self leadingAnchor];
      v96 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:14.0];
      v108[0] = v96;
      imageView4 = [(DragAndDropAnchorView *)self imageView];
      centerYAnchor = [imageView4 centerYAnchor];
      centerYAnchor2 = [(DragAndDropAnchorView *)self centerYAnchor];
      v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v108[1] = v11;
      imageView5 = [(DragAndDropAnchorView *)self imageView];
      heightAnchor = [imageView5 heightAnchor];
      v14 = [heightAnchor constraintEqualToConstant:20.0];
      v108[2] = v14;
      imageView6 = [(DragAndDropAnchorView *)self imageView];
      widthAnchor = [imageView6 widthAnchor];
      v17 = [widthAnchor constraintEqualToConstant:20.0];
      v108[3] = v17;
      v18 = [NSArray arrayWithObjects:v108 count:4];
      [v105 addObjectsFromArray:v18];
    }
  }

  _effectiveTraitCollection = [(DragAndDropAnchorView *)self _effectiveTraitCollection];
  v20 = objc_alloc_init(UILabel);
  [(DragAndDropAnchorView *)self setTitleLabel:v20];

  titleLabel = [(DragAndDropAnchorView *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = +[UIColor labelColor];
  titleLabel2 = [(DragAndDropAnchorView *)self titleLabel];
  [titleLabel2 setTextColor:v22];

  v24 = [UIFont system13SemiboldCompatibleWithTraitCollection:_effectiveTraitCollection];
  titleLabel3 = [(DragAndDropAnchorView *)self titleLabel];
  [titleLabel3 setFont:v24];

  titleLabel4 = [(DragAndDropAnchorView *)self titleLabel];
  [(DragAndDropAnchorView *)self addSubview:titleLabel4];

  if (sub_10000FA08(self) != 5)
  {
    v27 = objc_alloc_init(UILabel);
    [(DragAndDropAnchorView *)self setSubtitleLabel:v27];

    subtitleLabel = [(DragAndDropAnchorView *)self subtitleLabel];
    [subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v29 = +[UIColor secondaryLabelColor];
    subtitleLabel2 = [(DragAndDropAnchorView *)self subtitleLabel];
    [subtitleLabel2 setTextColor:v29];

    v31 = [UIFont system13CompatibleWithTraitCollection:_effectiveTraitCollection];
    subtitleLabel3 = [(DragAndDropAnchorView *)self subtitleLabel];
    [subtitleLabel3 setFont:v31];

    subtitleLabel4 = [(DragAndDropAnchorView *)self subtitleLabel];
    [(DragAndDropAnchorView *)self addSubview:subtitleLabel4];
  }

  v104 = _effectiveTraitCollection;
  if (sub_10000FA08(self) == 5)
  {
    titleLabel5 = [(DragAndDropAnchorView *)self titleLabel];
    leadingAnchor3 = [titleLabel5 leadingAnchor];
    imageView7 = [(DragAndDropAnchorView *)self imageView];
    if (imageView7)
    {
      imageView8 = [(DragAndDropAnchorView *)self imageView];
      trailingAnchor = [imageView8 trailingAnchor];
    }

    else
    {
      trailingAnchor = [(DragAndDropAnchorView *)self leadingAnchor];
      imageView8 = trailingAnchor;
    }

    imageView9 = [(DragAndDropAnchorView *)self imageView];
    v95 = trailingAnchor;
    v49 = 8.0;
    if (!imageView9)
    {
      v49 = 14.0;
    }

    v102 = leadingAnchor3;
    v89 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:v49];
    v107[0] = v89;
    titleLabel6 = [(DragAndDropAnchorView *)self titleLabel];
    trailingAnchor2 = [titleLabel6 trailingAnchor];
    trailingAnchor3 = [(DragAndDropAnchorView *)self trailingAnchor];
    v53 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-14.0];
    v107[1] = v53;
    titleLabel7 = [(DragAndDropAnchorView *)self titleLabel];
    centerYAnchor3 = [titleLabel7 centerYAnchor];
    centerYAnchor4 = [(DragAndDropAnchorView *)self centerYAnchor];
    v57 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v107[2] = v57;
    v58 = [NSArray arrayWithObjects:v107 count:3];
    [v105 addObjectsFromArray:v58];

    v47 = imageView7;
    if (imageView7)
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
    titleLabel5 = objc_alloc_init(UILayoutGuide);
    [(DragAndDropAnchorView *)self addLayoutGuide:titleLabel5];
    leadingAnchor4 = [titleLabel5 leadingAnchor];
    leadingAnchor5 = [(DragAndDropAnchorView *)self leadingAnchor];
    v102 = leadingAnchor4;
    imageView8 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:14.0];
    v106[0] = imageView8;
    trailingAnchor4 = [titleLabel5 trailingAnchor];
    trailingAnchor5 = [(DragAndDropAnchorView *)self trailingAnchor];
    v88 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-14.0];
    v106[1] = v88;
    topAnchor = [titleLabel5 topAnchor];
    topAnchor2 = [(DragAndDropAnchorView *)self topAnchor];
    v84 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v106[2] = v84;
    bottomAnchor = [titleLabel5 bottomAnchor];
    bottomAnchor2 = [(DragAndDropAnchorView *)self bottomAnchor];
    v81 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v106[3] = v81;
    titleLabel8 = [(DragAndDropAnchorView *)self titleLabel];
    firstBaselineAnchor = [titleLabel8 firstBaselineAnchor];
    topAnchor3 = [titleLabel5 topAnchor];
    [(DragAndDropAnchorView *)self titleLabelBaselineToTopConstant];
    v77 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:?];
    v106[4] = v77;
    titleLabel9 = [(DragAndDropAnchorView *)self titleLabel];
    leadingAnchor6 = [titleLabel9 leadingAnchor];
    leadingAnchor7 = [titleLabel5 leadingAnchor];
    v73 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v106[5] = v73;
    titleLabel10 = [(DragAndDropAnchorView *)self titleLabel];
    trailingAnchor6 = [titleLabel10 trailingAnchor];
    trailingAnchor7 = [titleLabel5 trailingAnchor];
    v69 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v106[6] = v69;
    subtitleLabel5 = [(DragAndDropAnchorView *)self subtitleLabel];
    firstBaselineAnchor2 = [subtitleLabel5 firstBaselineAnchor];
    titleLabel11 = [(DragAndDropAnchorView *)self titleLabel];
    lastBaselineAnchor = [titleLabel11 lastBaselineAnchor];
    [(DragAndDropAnchorView *)self subtitleLabelBaselineToTitleLabelBaselineConstant];
    v64 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];
    v106[7] = v64;
    subtitleLabel6 = [(DragAndDropAnchorView *)self subtitleLabel];
    leadingAnchor8 = [subtitleLabel6 leadingAnchor];
    leadingAnchor9 = [titleLabel5 leadingAnchor];
    v60 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v106[8] = v60;
    subtitleLabel7 = [(DragAndDropAnchorView *)self subtitleLabel];
    trailingAnchor8 = [subtitleLabel7 trailingAnchor];
    trailingAnchor9 = [titleLabel5 trailingAnchor];
    v41 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    v106[9] = v41;
    bottomAnchor3 = [titleLabel5 bottomAnchor];
    subtitleLabel8 = [(DragAndDropAnchorView *)self subtitleLabel];
    lastBaselineAnchor2 = [subtitleLabel8 lastBaselineAnchor];
    [(DragAndDropAnchorView *)self bottomToSubtitleLabelConstant];
    v45 = [bottomAnchor3 constraintEqualToAnchor:lastBaselineAnchor2 constant:?];
    v106[10] = v45;
    v46 = [NSArray arrayWithObjects:v106 count:11];
    [v105 addObjectsFromArray:v46];

    v47 = leadingAnchor5;
    v48 = v104;
  }

  [NSLayoutConstraint activateConstraints:v105];
}

- (DragAndDropAnchorView)initWithDragAndDropMapItem:(id)item previewTraitCollection:(id)collection
{
  itemCopy = item;
  collectionCopy = collection;
  v16.receiver = self;
  v16.super_class = DragAndDropAnchorView;
  v8 = [(DragAndDropAnchorView *)&v16 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v8)
  {
    presentationObject = [itemCopy presentationObject];
    v10 = sub_10000FA08(v8);
    resolvedMapItem = [itemCopy resolvedMapItem];
    v12 = resolvedMapItem;
    if (v10 == 5)
    {
      originalMapItem = resolvedMapItem;
      if (!resolvedMapItem)
      {
        originalMapItem = [itemCopy originalMapItem];
      }

      objc_storeStrong(&v8->_mapItem, originalMapItem);
      if (!v12)
      {
      }
    }

    else
    {
      mapItem = v8->_mapItem;
      v8->_mapItem = resolvedMapItem;
      v12 = mapItem;
    }

    objc_storeStrong(&v8->_previewTraitCollection, collection);
    [(DragAndDropAnchorView *)v8 addSubviews];
    [(DragAndDropAnchorView *)v8 updateWithInitialObject:presentationObject];
  }

  return v8;
}

@end