@interface MFMailboxFilterPickerControl
- (CGSize)intrinsicContentSize;
- (MFMailboxFilterPickerControl)initWithFrame:(CGRect)frame;
- (NSString)filterDescription;
- (UIPointerRegion)pointerRegion;
- (id)_fontForFilterLabels;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_fontMetricCacheDidInvalidate:(id)invalidate;
- (void)_setupGestureRecognizer;
- (void)_setupSubviews;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setFilterDescription:(id)description;
@end

@implementation MFMailboxFilterPickerControl

- (MFMailboxFilterPickerControl)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MFMailboxFilterPickerControl;
  v3 = [(MFMailboxFilterPickerControl *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  _fontForFilterLabels = [(MFMailboxFilterPickerControl *)self _fontForFilterLabels];
  v3 = objc_alloc_init(UILabel);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"FILTERS_CHOOSE" value:&stru_100662A88 table:@"Main"];
  [v3 setText:v5];

  v6 = +[UIColor labelColor];
  [v3 setTextColor:v6];

  [v3 setTextAlignment:1];
  [v3 setFont:_fontForFilterLabels];
  [(MFMailboxFilterPickerControl *)self setTitleLabel:v3];
  [(MFMailboxFilterPickerControl *)self addSubview:v3];
  v7 = objc_alloc_init(UILabel);
  v8 = +[UIColor mailInteractiveColor];
  [v7 setTextColor:v8];

  [v7 setTextAlignment:1];
  [v7 _setTextColorFollowsTintColor:1];
  [v7 setFont:_fontForFilterLabels];
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

- (void)_fontMetricCacheDidInvalidate:(id)invalidate
{
  _fontForFilterLabels = [(MFMailboxFilterPickerControl *)self _fontForFilterLabels];
  titleLabel = [(MFMailboxFilterPickerControl *)self titleLabel];
  filtersLabel = [(MFMailboxFilterPickerControl *)self filtersLabel];
  [titleLabel setFont:_fontForFilterLabels];
  [filtersLabel setFont:_fontForFilterLabels];
  [titleLabel sizeToFit];
  [filtersLabel sizeToFit];
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
  titleLabel = [(MFMailboxFilterPickerControl *)self titleLabel];
  [titleLabel frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  titleLabel2 = [(MFMailboxFilterPickerControl *)self titleLabel];
  [titleLabel2 setFrame:{v6, v8, Width, v10}];

  filtersLabel = [(MFMailboxFilterPickerControl *)self filtersLabel];
  [filtersLabel frame];
  v14 = v13;
  v16 = v15;

  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = Width;
  v21.size.height = v10;
  Height = CGRectGetHeight(v21);
  filtersLabel2 = [(MFMailboxFilterPickerControl *)self filtersLabel];
  [filtersLabel2 setFrame:{v14, Height, Width, v16}];
}

- (void)_setupGestureRecognizer
{
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleTapGestureRecognizer"];
  [(MFMailboxFilterPickerControl *)self addGestureRecognizer:?];
}

- (CGSize)intrinsicContentSize
{
  titleLabel = [(MFMailboxFilterPickerControl *)self titleLabel];
  [titleLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  filtersLabel = [(MFMailboxFilterPickerControl *)self filtersLabel];
  [filtersLabel frame];
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

- (void)setFilterDescription:(id)description
{
  descriptionCopy = description;
  filtersLabel = [(MFMailboxFilterPickerControl *)self filtersLabel];
  if (descriptionCopy)
  {
    v5 = descriptionCopy;
  }

  else
  {
    v5 = &stru_100662A88;
  }

  [filtersLabel setText:v5];

  [(MFMailboxFilterPickerControl *)self invalidateIntrinsicContentSize];
  titleLabel = [(MFMailboxFilterPickerControl *)self titleLabel];
  [titleLabel sizeToFit];

  filtersLabel2 = [(MFMailboxFilterPickerControl *)self filtersLabel];
  [filtersLabel2 sizeToFit];

  [(MFMailboxFilterPickerControl *)self setPointerRegion:0];
}

- (NSString)filterDescription
{
  filtersLabel = [(MFMailboxFilterPickerControl *)self filtersLabel];
  text = [filtersLabel text];

  return text;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
  filtersLabel = [(MFMailboxFilterPickerControl *)self filtersLabel];
  [filtersLabel frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [requestCopy location];
  v22.x = v16;
  v22.y = v17;
  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = v13;
  v23.size.height = v15;
  v18 = CGRectContainsPoint(v23, v22);

  if (v18)
  {
    pointerRegion = [(MFMailboxFilterPickerControl *)self pointerRegion];
  }

  else
  {
    pointerRegion = 0;
  }

  return pointerRegion;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [UITargetedPreview alloc];
  filtersLabel = [(MFMailboxFilterPickerControl *)self filtersLabel];
  v7 = [v5 initWithView:filtersLabel];

  v8 = [UIPointerEffect effectWithPreview:v7];
  v9 = [UIPointerStyle styleWithEffect:v8 shape:0];

  return v9;
}

- (UIPointerRegion)pointerRegion
{
  pointerRegion = self->_pointerRegion;
  if (!pointerRegion)
  {
    filtersLabel = [(MFMailboxFilterPickerControl *)self filtersLabel];
    [filtersLabel frame];
    v5 = [UIPointerRegion regionWithRect:@"MailboxFilterPickerControl" identifier:?];
    v6 = self->_pointerRegion;
    self->_pointerRegion = v5;

    pointerRegion = self->_pointerRegion;
  }

  return pointerRegion;
}

@end