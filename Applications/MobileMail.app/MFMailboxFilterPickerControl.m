@interface MFMailboxFilterPickerControl
- (CGSize)intrinsicContentSize;
- (MFMailboxFilterPickerControl)initWithFrame:(CGRect)a3;
- (NSString)filterDescription;
- (UIPointerRegion)pointerRegion;
- (id)_fontForFilterLabels;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_fontMetricCacheDidInvalidate:(id)a3;
- (void)_setupGestureRecognizer;
- (void)_setupSubviews;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setFilterDescription:(id)a3;
@end

@implementation MFMailboxFilterPickerControl

- (MFMailboxFilterPickerControl)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MFMailboxFilterPickerControl;
  v3 = [(MFMailboxFilterPickerControl *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFMailboxFilterPickerControl *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFMailboxFilterPickerControl *)v4 _setupSubviews];
    [(MFMailboxFilterPickerControl *)v4 _setupGestureRecognizer];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_fontMetricCacheDidInvalidate:" name:MFFontMetricCacheInvalidationNotification object:0];
  }

  return v4;
}

- (void)_setupSubviews
{
  v10 = [(MFMailboxFilterPickerControl *)self _fontForFilterLabels];
  v3 = objc_alloc_init(UILabel);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"FILTERS_CHOOSE" value:&stru_100662A88 table:@"Main"];
  [v3 setText:v5];

  v6 = +[UIColor labelColor];
  [v3 setTextColor:v6];

  [v3 setTextAlignment:1];
  [v3 setFont:v10];
  [(MFMailboxFilterPickerControl *)self setTitleLabel:v3];
  [(MFMailboxFilterPickerControl *)self addSubview:v3];
  v7 = objc_alloc_init(UILabel);
  v8 = +[UIColor mailInteractiveColor];
  [v7 setTextColor:v8];

  [v7 setTextAlignment:1];
  [v7 _setTextColorFollowsTintColor:1];
  [v7 setFont:v10];
  [(MFMailboxFilterPickerControl *)self setFiltersLabel:v7];
  [(MFMailboxFilterPickerControl *)self addSubview:v7];
  v9 = [[UIPointerInteraction alloc] initWithDelegate:self];
  [(MFMailboxFilterPickerControl *)self addInteraction:v9];
}

- (id)_fontForFilterLabels
{
  v2 = +[MFFontMetricCache sharedFontMetricCache];
  v3 = [v2 cachedPreferredFontForStyle:UIFontTextStyleCaption2 maximumContentSizeCategory:UIContentSizeCategoryExtraLarge];

  return v3;
}

- (void)_fontMetricCacheDidInvalidate:(id)a3
{
  v6 = [(MFMailboxFilterPickerControl *)self _fontForFilterLabels];
  v4 = [(MFMailboxFilterPickerControl *)self titleLabel];
  v5 = [(MFMailboxFilterPickerControl *)self filtersLabel];
  [v4 setFont:v6];
  [v5 setFont:v6];
  [v4 sizeToFit];
  [v5 sizeToFit];
  [(MFMailboxFilterPickerControl *)self invalidateIntrinsicContentSize];
  [(MFMailboxFilterPickerControl *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = MFMailboxFilterPickerControl;
  [(MFMailboxFilterPickerControl *)&v19 layoutSubviews];
  [(MFMailboxFilterPickerControl *)self bounds];
  Width = CGRectGetWidth(v20);
  v4 = [(MFMailboxFilterPickerControl *)self titleLabel];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [(MFMailboxFilterPickerControl *)self titleLabel];
  [v11 setFrame:{v6, v8, Width, v10}];

  v12 = [(MFMailboxFilterPickerControl *)self filtersLabel];
  [v12 frame];
  v14 = v13;
  v16 = v15;

  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = Width;
  v21.size.height = v10;
  Height = CGRectGetHeight(v21);
  v18 = [(MFMailboxFilterPickerControl *)self filtersLabel];
  [v18 setFrame:{v14, Height, Width, v16}];
}

- (void)_setupGestureRecognizer
{
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleTapGestureRecognizer"];
  [(MFMailboxFilterPickerControl *)self addGestureRecognizer:?];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(MFMailboxFilterPickerControl *)self titleLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(MFMailboxFilterPickerControl *)self filtersLabel];
  [v12 frame];
  v28 = v14;
  v29 = v13;
  v26 = v16;
  v27 = v15;

  v31.origin.x = v5;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v11;
  rect = v11;
  v17 = v9;
  v18 = v7;
  v19 = v5;
  Width = CGRectGetWidth(v31);
  v32.origin.x = v29;
  v32.origin.y = v28;
  v32.size.width = v27;
  v32.size.height = v26;
  v21 = fmax(Width, CGRectGetWidth(v32));
  v33.origin.x = v19;
  v33.origin.y = v18;
  v33.size.width = v17;
  v33.size.height = rect;
  Height = CGRectGetHeight(v33);
  v34.origin.x = v29;
  v34.origin.y = v28;
  v34.size.width = v27;
  v34.size.height = v26;
  v23 = Height + CGRectGetHeight(v34);
  v24 = v21;
  result.height = v23;
  result.width = v24;
  return result;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:MFFontMetricCacheInvalidationNotification object:0];

  v4.receiver = self;
  v4.super_class = MFMailboxFilterPickerControl;
  [(MFMailboxFilterPickerControl *)&v4 dealloc];
}

- (void)setFilterDescription:(id)a3
{
  v8 = a3;
  v4 = [(MFMailboxFilterPickerControl *)self filtersLabel];
  if (v8)
  {
    v5 = v8;
  }

  else
  {
    v5 = &stru_100662A88;
  }

  [v4 setText:v5];

  [(MFMailboxFilterPickerControl *)self invalidateIntrinsicContentSize];
  v6 = [(MFMailboxFilterPickerControl *)self titleLabel];
  [v6 sizeToFit];

  v7 = [(MFMailboxFilterPickerControl *)self filtersLabel];
  [v7 sizeToFit];

  [(MFMailboxFilterPickerControl *)self setPointerRegion:0];
}

- (NSString)filterDescription
{
  v2 = [(MFMailboxFilterPickerControl *)self filtersLabel];
  v3 = [v2 text];

  return v3;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  v7 = [(MFMailboxFilterPickerControl *)self filtersLabel];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v6 location];
  v22.x = v16;
  v22.y = v17;
  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = v13;
  v23.size.height = v15;
  v18 = CGRectContainsPoint(v23, v22);

  if (v18)
  {
    v19 = [(MFMailboxFilterPickerControl *)self pointerRegion];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [UITargetedPreview alloc];
  v6 = [(MFMailboxFilterPickerControl *)self filtersLabel];
  v7 = [v5 initWithView:v6];

  v8 = [UIPointerEffect effectWithPreview:v7];
  v9 = [UIPointerStyle styleWithEffect:v8 shape:0];

  return v9;
}

- (UIPointerRegion)pointerRegion
{
  pointerRegion = self->_pointerRegion;
  if (!pointerRegion)
  {
    v4 = [(MFMailboxFilterPickerControl *)self filtersLabel];
    [v4 frame];
    v5 = [UIPointerRegion regionWithRect:@"MailboxFilterPickerControl" identifier:?];
    v6 = self->_pointerRegion;
    self->_pointerRegion = v5;

    pointerRegion = self->_pointerRegion;
  }

  return pointerRegion;
}

@end