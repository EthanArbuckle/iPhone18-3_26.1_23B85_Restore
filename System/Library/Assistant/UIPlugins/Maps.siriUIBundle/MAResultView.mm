@interface MAResultView
+ (double)preferredHeightForMapItem:(id)item;
+ (void)_configureLabel:(id)label withFont:(id)font textColor:(id)color;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (CGSize)intrinsicContentSize;
- (MAResultView)initWithFrame:(CGRect)frame;
- (double)preferredHeight;
- (id)_distanceString;
- (void)_buttonTapped;
- (void)_updateDetailLine1;
- (void)_updateHorizontalCompressionResistanceForLabels;
- (void)_updateImage;
- (void)_updateImageViewVisibility;
- (void)_updateSubviews;
- (void)cancelTrackingWithEvent:(id)event;
- (void)dealloc;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)setDisplayFormat:(int)format;
- (void)setHideBottomKeyline:(BOOL)keyline;
- (void)setLocationDetailPreferred:(BOOL)preferred;
- (void)setMapItem:(id)item;
- (void)setReferenceLocation:(id)location;
@end

@implementation MAResultView

- (MAResultView)initWithFrame:(CGRect)frame
{
  v150.receiver = self;
  v150.super_class = MAResultView;
  v3 = [(MAResultView *)&v150 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[MAResultView primaryColor];
    v5 = +[MAResultView secondaryColor];
    v6 = +[MAResultView _majorFont];
    v7 = +[MAResultView _minorFont];
    v8 = objc_alloc_init(_MKUILabel);
    nameLabel = v3->_nameLabel;
    v3->_nameLabel = v8;

    v10 = objc_alloc_init(_MKUILabel);
    detailLine1aLabel = v3->_detailLine1aLabel;
    v3->_detailLine1aLabel = v10;

    v12 = objc_alloc_init(_MKUILabel);
    detailLine1bLabel = v3->_detailLine1bLabel;
    v3->_detailLine1bLabel = v12;

    v14 = objc_alloc_init(MKTransitInfoLabelView);
    detailLine2Label = v3->_detailLine2Label;
    v3->_detailLine2Label = v14;

    v149 = v6;
    [MAResultView _configureLabel:v3->_nameLabel withFont:v6 textColor:v4];
    [MAResultView _configureLabel:v3->_detailLine1aLabel withFont:v7 textColor:v4];
    [MAResultView _configureLabel:v3->_detailLine1bLabel withFont:v7 textColor:v4];
    v148 = v7;
    v147 = v5;
    [MAResultView _configureLabel:v3->_detailLine2Label withFont:v7 textColor:v5];
    [(MAResultView *)v3 _updateHorizontalCompressionResistanceForLabels];
    LODWORD(v16) = 1144750080;
    [(_MKUILabel *)v3->_detailLine1aLabel _mapkit_setContentHuggingPriority:0 forAxis:v16];
    LODWORD(v17) = 1144733696;
    [(_MKUILabel *)v3->_detailLine1bLabel _mapkit_setContentHuggingPriority:0 forAxis:v17];
    v18 = [[MKVibrantLabel alloc] initWithStyle:1];
    vibrantLabel = v3->_vibrantLabel;
    v3->_vibrantLabel = v18;

    [MAResultView _configureLabel:v3->_vibrantLabel withFont:v7 textColor:v5];
    [(MAResultView *)v3 addSubview:v3->_vibrantLabel];
    v20 = objc_alloc_init(UIImageView);
    imageView = v3->_imageView;
    v3->_imageView = v20;

    layer = [(UIImageView *)v3->_imageView layer];
    [layer setCornerRadius:8.0];

    [(UIImageView *)v3->_imageView setClipsToBounds:1];
    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v23) = 1148829696;
    [(UIImageView *)v3->_imageView _mapkit_setContentHuggingPriority:0 forAxis:v23];
    v24 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    button = v3->_button;
    v3->_button = v24;

    [(UIButton *)v3->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v3->_button setHidden:1];
    layer2 = [(UIButton *)v3->_button layer];
    [layer2 setCornerRadius:7.5];

    layer3 = [(UIButton *)v3->_button layer];
    [layer3 setBorderWidth:1.0];

    v28 = v4;
    v146 = v4;
    cGColor = [v4 CGColor];
    layer4 = [(UIButton *)v3->_button layer];
    [layer4 setBorderColor:cGColor];

    v31 = v3->_button;
    v32 = +[UIColor clearColor];
    [(UIButton *)v31 _mapkit_setBackgroundColor:v32];

    v154[0] = NSFontAttributeName;
    v154[1] = NSForegroundColorAttributeName;
    v155[0] = v6;
    v155[1] = v28;
    v145 = [NSDictionary dictionaryWithObjects:v155 forKeys:v154 count:2];
    v33 = [NSAttributedString alloc];
    v34 = +[NSBundle _ma_bundle];
    v35 = [v34 siriUILocalizedStringForKey:@"GO"];

    v144 = [v33 initWithString:v35 attributes:v145];
    [(UIButton *)v3->_button _mapkit_setAttributedTitle:v144];
    [(UIButton *)v3->_button _mapkit_setTarget:v3 action:"_buttonTapped"];
    v36 = +[SiriUIKeyline keyline];
    bottomKeyline = v3->_bottomKeyline;
    v3->_bottomKeyline = v36;

    [(SiriUIKeyline *)v3->_bottomKeyline setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = +[UIColor clearColor];
    [(MAResultView *)v3 _mapkit_setBackgroundColor:v38];

    [(MAResultView *)v3 setOpaque:0];
    [(MAResultView *)v3 addSubview:v3->_nameLabel];
    [(MAResultView *)v3 addSubview:v3->_detailLine1aLabel];
    [(MAResultView *)v3 addSubview:v3->_detailLine1bLabel];
    [(MAResultView *)v3 addSubview:v3->_detailLine2Label];
    [(MAResultView *)v3 addSubview:v3->_imageView];
    [(MAResultView *)v3 addSubview:v3->_button];
    [(MAResultView *)v3 addSubview:v3->_bottomKeyline];
    v39 = objc_opt_new();
    leadingAnchor = [(_MKUILabel *)v3->_nameLabel leadingAnchor];
    leadingAnchor2 = [(MAResultView *)v3 leadingAnchor];
    v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
    [v39 addObject:v42];

    leadingAnchor3 = [(UIImageView *)v3->_imageView leadingAnchor];
    trailingAnchor = [(_MKUILabel *)v3->_nameLabel trailingAnchor];
    v45 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor constant:15.0];
    [v39 addObject:v45];

    trailingAnchor2 = [(MAResultView *)v3 trailingAnchor];
    trailingAnchor3 = [(UIImageView *)v3->_imageView trailingAnchor];
    v48 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:15.0];
    [v39 addObject:v48];

    leadingAnchor4 = [(_MKUILabel *)v3->_detailLine1aLabel leadingAnchor];
    leadingAnchor5 = [(MAResultView *)v3 leadingAnchor];
    v51 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:15.0];
    [v39 addObject:v51];

    leadingAnchor6 = [(_MKUILabel *)v3->_detailLine1bLabel leadingAnchor];
    trailingAnchor4 = [(_MKUILabel *)v3->_detailLine1aLabel trailingAnchor];
    v54 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4 constant:0.0];
    [v39 addObject:v54];

    leadingAnchor7 = [(UIImageView *)v3->_imageView leadingAnchor];
    trailingAnchor5 = [(_MKUILabel *)v3->_detailLine1bLabel trailingAnchor];
    v57 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:trailingAnchor5 constant:15.0];
    v58 = v39;
    [v39 addObject:v57];

    leadingAnchor8 = [(MKTransitInfoLabelView *)v3->_detailLine2Label leadingAnchor];
    leadingAnchor9 = [(MAResultView *)v3 leadingAnchor];
    v61 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9 constant:15.0];
    [v39 addObject:v61];

    leadingAnchor10 = [(UIImageView *)v3->_imageView leadingAnchor];
    trailingAnchor6 = [(MKTransitInfoLabelView *)v3->_detailLine2Label trailingAnchor];
    v64 = [leadingAnchor10 constraintGreaterThanOrEqualToAnchor:trailingAnchor6 constant:15.0];
    [v39 addObject:v64];

    leadingAnchor11 = [(SiriUIKeyline *)v3->_bottomKeyline leadingAnchor];
    leadingAnchor12 = [(MAResultView *)v3 leadingAnchor];
    v67 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:15.0];
    [v39 addObject:v67];

    trailingAnchor7 = [(MAResultView *)v3 trailingAnchor];
    trailingAnchor8 = [(SiriUIKeyline *)v3->_bottomKeyline trailingAnchor];
    v70 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:15.0];
    [v39 addObject:v70];

    [v149 _mapkit_scaledValueForValue:21.0];
    v72 = v71;
    [v148 _mapkit_scaledValueForValue:21.0];
    v74 = v73;
    [v148 _mapkit_scaledValueForValue:21.0];
    v76 = v75;
    [v148 _mapkit_scaledValueForValue:21.0];
    v78 = v77;
    firstBaselineAnchor = [(_MKUILabel *)v3->_nameLabel firstBaselineAnchor];
    topAnchor = [(MAResultView *)v3 topAnchor];
    v81 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:v72];
    [v39 addObject:v81];

    firstBaselineAnchor2 = [(_MKUILabel *)v3->_detailLine1aLabel firstBaselineAnchor];
    lastBaselineAnchor = [(_MKUILabel *)v3->_nameLabel lastBaselineAnchor];
    v84 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:v74];
    v153[0] = v84;
    firstBaselineAnchor3 = [(_MKUILabel *)v3->_detailLine1bLabel firstBaselineAnchor];
    lastBaselineAnchor2 = [(_MKUILabel *)v3->_nameLabel lastBaselineAnchor];
    v87 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor2 constant:v74];
    v153[1] = v87;
    v88 = [NSArray arrayWithObjects:v153 count:2];
    baselineConstraintsDetailLine1ToName = v3->_baselineConstraintsDetailLine1ToName;
    v3->_baselineConstraintsDetailLine1ToName = v88;

    firstBaselineAnchor4 = [(MKTransitInfoLabelView *)v3->_detailLine2Label firstBaselineAnchor];
    lastBaselineAnchor3 = [(_MKUILabel *)v3->_detailLine1aLabel lastBaselineAnchor];
    v92 = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor3 constant:v76];
    v152[0] = v92;
    firstBaselineAnchor5 = [(MKTransitInfoLabelView *)v3->_detailLine2Label firstBaselineAnchor];
    lastBaselineAnchor4 = [(_MKUILabel *)v3->_detailLine1bLabel lastBaselineAnchor];
    v95 = [firstBaselineAnchor5 constraintEqualToAnchor:lastBaselineAnchor4 constant:v76];
    v152[1] = v95;
    v96 = [NSArray arrayWithObjects:v152 count:2];
    baselineConstraintsDetailLine2ToLine1 = v3->_baselineConstraintsDetailLine2ToLine1;
    v3->_baselineConstraintsDetailLine2ToLine1 = v96;

    bottomAnchor = [(MAResultView *)v3 bottomAnchor];
    lastBaselineAnchor5 = [(MKTransitInfoLabelView *)v3->_detailLine2Label lastBaselineAnchor];
    v100 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor5 constant:v78];

    LODWORD(v101) = 1148829696;
    [v100 setPriority:v101];
    [v39 addObject:v100];
    bottomAnchor2 = [(SiriUIKeyline *)v3->_bottomKeyline bottomAnchor];
    bottomAnchor3 = [(MAResultView *)v3 bottomAnchor];
    v104 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:0.0];
    [v39 addObject:v104];

    centerYAnchor = [(UIImageView *)v3->_imageView centerYAnchor];
    centerYAnchor2 = [(MAResultView *)v3 centerYAnchor];
    v107 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v39 addObject:v107];

    widthAnchor = [(UIImageView *)v3->_imageView widthAnchor];
    v109 = [widthAnchor constraintEqualToConstant:64.0];
    [v39 addObject:v109];

    heightAnchor = [(UIImageView *)v3->_imageView heightAnchor];
    widthAnchor2 = [(UIImageView *)v3->_imageView widthAnchor];
    v112 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    [v39 addObject:v112];

    widthAnchor3 = [(UIButton *)v3->_button widthAnchor];
    widthAnchor4 = [(UIImageView *)v3->_imageView widthAnchor];
    v115 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    [v39 addObject:v115];

    heightAnchor2 = [(UIButton *)v3->_button heightAnchor];
    widthAnchor5 = [(UIButton *)v3->_button widthAnchor];
    v118 = [heightAnchor2 constraintEqualToAnchor:widthAnchor5];
    [v39 addObject:v118];

    centerXAnchor = [(UIButton *)v3->_button centerXAnchor];
    centerXAnchor2 = [(UIImageView *)v3->_imageView centerXAnchor];
    v121 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v39 addObject:v121];

    centerYAnchor3 = [(UIButton *)v3->_button centerYAnchor];
    centerYAnchor4 = [(UIImageView *)v3->_imageView centerYAnchor];
    v124 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v39 addObject:v124];

    leadingAnchor13 = [(MKVibrantLabel *)v3->_vibrantLabel leadingAnchor];
    leadingAnchor14 = [(MAResultView *)v3 leadingAnchor];
    v127 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14 constant:15.0];
    [v39 addObject:v127];

    leadingAnchor15 = [(UIImageView *)v3->_imageView leadingAnchor];
    trailingAnchor9 = [(MKVibrantLabel *)v3->_vibrantLabel trailingAnchor];
    v130 = [leadingAnchor15 constraintGreaterThanOrEqualToAnchor:trailingAnchor9 constant:15.0];
    [v39 addObject:v130];

    bottomAnchor4 = [(MAResultView *)v3 bottomAnchor];
    lastBaselineAnchor6 = [(MKVibrantLabel *)v3->_vibrantLabel lastBaselineAnchor];
    v133 = [bottomAnchor4 constraintEqualToAnchor:lastBaselineAnchor6 constant:v78];

    LODWORD(v134) = 1148829696;
    [v133 setPriority:v134];
    [v39 addObject:v133];
    firstBaselineAnchor6 = [(MKVibrantLabel *)v3->_vibrantLabel firstBaselineAnchor];
    lastBaselineAnchor7 = [(_MKUILabel *)v3->_detailLine1aLabel lastBaselineAnchor];
    v137 = [firstBaselineAnchor6 constraintEqualToAnchor:lastBaselineAnchor7 constant:v76];
    v151[0] = v137;
    firstBaselineAnchor7 = [(MKVibrantLabel *)v3->_vibrantLabel firstBaselineAnchor];
    lastBaselineAnchor8 = [(_MKUILabel *)v3->_detailLine1bLabel lastBaselineAnchor];
    v140 = [firstBaselineAnchor7 constraintEqualToAnchor:lastBaselineAnchor8 constant:v76];
    v151[1] = v140;
    v141 = [NSArray arrayWithObjects:v151 count:2];
    baselineConstraintsVibrantToLine1 = v3->_baselineConstraintsVibrantToLine1;
    v3->_baselineConstraintsVibrantToLine1 = v141;

    [NSLayoutConstraint activateConstraints:v58];
  }

  return v3;
}

- (void)dealloc
{
  imageDownloadTask = self->_imageDownloadTask;
  if (imageDownloadTask)
  {
    [(NSURLSessionDataTask *)imageDownloadTask cancel];
    v4 = self->_imageDownloadTask;
    self->_imageDownloadTask = 0;
  }

  if (self->_notificationHandler)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self->_notificationHandler];

    notificationHandler = self->_notificationHandler;
    self->_notificationHandler = 0;
  }

  v7.receiver = self;
  v7.super_class = MAResultView;
  [(MAResultView *)&v7 dealloc];
}

- (void)_updateHorizontalCompressionResistanceForLabels
{
  detailLine1aLabel = self->_detailLine1aLabel;
  v3 = self->_detailLine1bLabel;
  v6 = detailLine1aLabel;
  LODWORD(v4) = 1148829696;
  [(_MKUILabel *)v6 _mapkit_setContentCompressionResistancePriority:0 forAxis:v4];
  LODWORD(v5) = 1148813312;
  [(_MKUILabel *)v3 _mapkit_setContentCompressionResistancePriority:0 forAxis:v5];
}

+ (void)_configureLabel:(id)label withFont:(id)font textColor:(id)color
{
  colorCopy = color;
  labelCopy = label;
  [labelCopy setFont:font];
  [labelCopy setTextColor:colorCopy];

  v8 = +[UIColor clearColor];
  [labelCopy setBackgroundColor:v8];

  [labelCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [labelCopy setTextAlignment:4];
  LODWORD(v9) = 1148829696;
  [labelCopy _mapkit_setContentHuggingPriority:1 forAxis:v9];
}

- (void)_buttonTapped
{
  if ([(MAResultView *)self isDisplayForSAR])
  {
    blockOnButtonTappedForSARResult = [(MAResultView *)self blockOnButtonTappedForSARResult];

    if (blockOnButtonTappedForSARResult)
    {
      blockOnButtonTappedForSARResult2 = [(MAResultView *)self blockOnButtonTappedForSARResult];
      mapItem = [(MAResultView *)self mapItem];
      blockOnButtonTappedForSARResult2[2](blockOnButtonTappedForSARResult2, mapItem);
    }
  }
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  v5 = [UIColor siriui_highlightColor:touch];
  [(MAResultView *)self setBackgroundColor:v5];

  return 1;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = MAResultView;
  [(MAResultView *)&v6 endTrackingWithTouch:touch withEvent:event];
  v5 = +[UIColor clearColor];
  [(MAResultView *)self setBackgroundColor:v5];
}

- (void)cancelTrackingWithEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MAResultView;
  [(MAResultView *)&v5 cancelTrackingWithEvent:event];
  v4 = +[UIColor clearColor];
  [(MAResultView *)self setBackgroundColor:v4];
}

+ (double)preferredHeightForMapItem:(id)item
{
  v3 = +[MAResultView _majorFont];
  v4 = +[MAResultView _minorFont];
  [v3 _mapkit_scaledValueForValue:21.0];
  v6 = v5;
  [v4 _mapkit_scaledValueForValue:21.0];
  v8 = v7;
  [v4 _mapkit_scaledValueForValue:21.0];
  v10 = v9;
  [v4 _mapkit_scaledValueForValue:21.0];
  v12 = v6 + v8 + v10 + v11;

  return v12;
}

- (double)preferredHeight
{
  v3 = objc_opt_class();
  mapItem = self->_mapItem;

  [v3 preferredHeightForMapItem:mapItem];
  return result;
}

- (CGSize)intrinsicContentSize
{
  superview = [(MAResultView *)self superview];

  v4 = UIViewNoIntrinsicMetric;
  if (superview)
  {
    [(MAResultView *)self preferredHeight];
    v4 = v5;
  }

  v6 = UIViewNoIntrinsicMetric;
  result.height = v4;
  result.width = v6;
  return result;
}

- (void)_updateSubviews
{
  label = [(SALocalSearchMapItem *)self->_mapItem label];
  [(_MKUILabel *)self->_nameLabel setText:label];

  needsAttribution = [(SALocalSearchMapItem *)self->_mapItem needsAttribution];
  if (needsAttribution)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(MKMapItem *)self->_placeDataMapItem _hasUserRatingScore]^ 1;
  }

  [(MAResultView *)self _updateDetailLine2HidingReviews:needsAttribution ^ 1 hidingRating:v5];
  [(MAResultView *)self _updateDetailLine1];
  [(MAResultView *)self _updateHorizontalCompressionResistanceForLabels];
  [(MAResultView *)self _updateImage];
  [(UIButton *)self->_button setHidden:[(MAResultView *)self isDisplayForSAR]^ 1];
  [(SiriUIKeyline *)self->_bottomKeyline setHidden:self->_hideBottomKeyline];
  if (SiriLanguageIsRTL())
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  detailLine1aLabel = self->_detailLine1aLabel;
  v18[0] = self->_nameLabel;
  v18[1] = detailLine1aLabel;
  detailLine2Label = self->_detailLine2Label;
  v18[2] = self->_detailLine1bLabel;
  v18[3] = detailLine2Label;
  v9 = [NSArray arrayWithObjects:v18 count:4, 0];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) setTextAlignment:v6];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v11);
  }

  [(MAResultView *)self _mapkit_setNeedsLayout];
}

- (void)_updateDetailLine1
{
  isDisplayForSAR = [(MAResultView *)self isDisplayForSAR];
  [(_MKUILabel *)self->_detailLine1aLabel setText:0];
  [(_MKUILabel *)self->_detailLine1bLabel setText:0];
  _ma_detourText = 0;
  if (isDisplayForSAR)
  {
    _ma_detourText = [(MKMapItem *)self->_placeDataMapItem _ma_detourText];
  }

  if (-[MAResultView isLocationDetailPreferred](self, "isLocationDetailPreferred") || (-[MAResultView mapItem](self, "mapItem"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isBusinessLocation], v5, (v6 & 1) == 0))
  {
    _addressFormattedAsShortenedAddress = [(MKMapItem *)self->_placeDataMapItem _addressFormattedAsShortenedAddress];
    if (![_addressFormattedAsShortenedAddress length])
    {
      locationDetailLabel = [(SALocalSearchMapItem *)self->_mapItem locationDetailLabel];

      _addressFormattedAsShortenedAddress = locationDetailLabel;
    }
  }

  else if ([(MKMapItem *)self->_placeDataMapItem _hasLocalizedCategoryNamesForType:0])
  {
    _addressFormattedAsShortenedAddress = [(MKMapItem *)self->_placeDataMapItem _firstLocalizedCategoryName];
  }

  else
  {
    _addressFormattedAsShortenedAddress = 0;
  }

  _distanceString = [(MAResultView *)self _distanceString];
  if (!self->_localizedHoursBuilder)
  {
    v10 = [[_MKLocalizedHoursBuilder alloc] initWithMapItem:self->_placeDataMapItem localizedHoursStringOptions:1];
    localizedHoursBuilder = self->_localizedHoursBuilder;
    self->_localizedHoursBuilder = v10;
  }

  v41 = _addressFormattedAsShortenedAddress;
  if (isDisplayForSAR)
  {
    v12 = objc_opt_new();
    if ([_ma_detourText length])
    {
      [v12 addObject:_ma_detourText];
    }

    if ([_distanceString length])
    {
      [v12 addObject:_distanceString];
    }

    if ([v12 count])
    {
      v13 = [v12 componentsJoinedByString:@" · "];
      if ([_addressFormattedAsShortenedAddress length])
      {
        v14 = [NSString stringWithFormat:@"%@%@", v13, @" · "];
        [(_MKUILabel *)self->_detailLine1aLabel setText:v14];
      }

      else
      {
        [(_MKUILabel *)self->_detailLine1aLabel setText:v13];
      }
    }

    v40 = v12;
    [(_MKUILabel *)self->_detailLine1bLabel setText:_addressFormattedAsShortenedAddress];
    v39 = 0;
  }

  else
  {
    if ([(MAResultView *)self _showOpenStateLabel])
    {
      localizedOperatingHours = [(_MKLocalizedHoursBuilder *)self->_localizedHoursBuilder localizedOperatingHours];
    }

    else
    {
      localizedOperatingHours = 0;
    }

    v16 = objc_opt_new();
    [(_MKUILabel *)self->_detailLine1aLabel setText:_addressFormattedAsShortenedAddress];
    if ([_distanceString length])
    {
      [v16 addObject:_distanceString];
    }

    if ([localizedOperatingHours length])
    {
      [v16 addObject:localizedOperatingHours];
    }

    if ([v16 count])
    {
      v17 = [v16 componentsJoinedByString:@" · "];
      if ([_addressFormattedAsShortenedAddress length])
      {
        v18 = [NSString stringWithFormat:@"%@%@", @" · ", v17];
        [(_MKUILabel *)self->_detailLine1bLabel setText:v18];
      }

      else
      {
        [(_MKUILabel *)self->_detailLine1bLabel setText:v17];
      }
    }

    v39 = localizedOperatingHours;
    v40 = v16;
    if ([localizedOperatingHours length])
    {
      text = [(_MKUILabel *)self->_detailLine1bLabel text];
      v20 = [text rangeOfString:localizedOperatingHours];
      v22 = v21;

      if (v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
        attributedText = [(_MKUILabel *)self->_detailLine1bLabel attributedText];
        v24 = [attributedText mutableCopy];

        hoursStateLabelColor = [(_MKLocalizedHoursBuilder *)self->_localizedHoursBuilder hoursStateLabelColor];
        v49 = NSForegroundColorAttributeName;
        v50 = hoursStateLabelColor;
        v26 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        [v24 addAttributes:v26 range:{v20, v22}];

        [(_MKUILabel *)self->_detailLine1bLabel setAttributedText:v24];
      }
    }
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  detailLine1bLabel = self->_detailLine1bLabel;
  v47[0] = self->_detailLine1aLabel;
  v47[1] = detailLine1bLabel;
  obj = [NSArray arrayWithObjects:v47 count:2];
  v28 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v44;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v43 + 1) + 8 * i);
        text2 = [(_MKUILabel *)v32 text];
        v34 = [text2 length] != 0;

        v35 = v32 != self->_detailLine1aLabel;
        v36 = [(NSArray *)self->_baselineConstraintsDetailLine1ToName objectAtIndexedSubscript:v35];
        [v36 setActive:v34];

        v37 = [(NSArray *)self->_baselineConstraintsDetailLine2ToLine1 objectAtIndexedSubscript:v35];
        [v37 setActive:v34];

        v38 = [(NSArray *)self->_baselineConstraintsVibrantToLine1 objectAtIndexedSubscript:v35];
        [v38 setActive:v34];
      }

      v29 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v29);
  }
}

- (void)_updateImage
{
  [(NSURLSessionDataTask *)self->_imageDownloadTask cancel];
  imageDownloadTask = self->_imageDownloadTask;
  self->_imageDownloadTask = 0;

  [(UIImageView *)self->_imageView setImage:0];
  if ([(MAResultView *)self isDisplayForSAR])
  {

    [(MAResultView *)self _updateImageViewVisibility];
  }

  else
  {
    v4 = +[MKSystemController sharedInstance];
    [v4 screenScale];
    v6 = v5;

    _geoMapItem = [(MKMapItem *)self->_placeDataMapItem _geoMapItem];
    _photos = [_geoMapItem _photos];
    v9 = [_photos _geo_firstPhotoOfAtLeastSize:{v6 * 64.0, v6 * 64.0}];

    if (v9)
    {
      v10 = [NSURLRequest alloc];
      v11 = [v9 url];
      v12 = [v10 initWithURL:v11 cachePolicy:2 timeoutInterval:5.0];

      v13 = +[NSURLSession sharedSession];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_E6D0;
      v16[3] = &unk_424C0;
      v16[4] = self;
      v14 = [v13 dataTaskWithRequest:v12 completionHandler:v16];
      v15 = self->_imageDownloadTask;
      self->_imageDownloadTask = v14;

      [(NSURLSessionDataTask *)self->_imageDownloadTask resume];
    }

    else
    {
      [(MAResultView *)self _updateImageViewVisibility];
    }
  }
}

- (void)_updateImageViewVisibility
{
  image = [(UIImageView *)self->_imageView image];
  if (image)
  {
    v4 = image;
    isDisplayForSAR = [(MAResultView *)self isDisplayForSAR];
  }

  else
  {
    isDisplayForSAR = 1;
  }

  [(UIImageView *)self->_imageView setHidden:isDisplayForSAR];

  [(MAResultView *)self _mapkit_setNeedsLayout];
}

- (id)_distanceString
{
  mapItem = [(MAResultView *)self mapItem];
  isCurrentLocation = [mapItem isCurrentLocation];

  if (isCurrentLocation)
  {
    v5 = 0;
    goto LABEL_12;
  }

  mapItem2 = [(MAResultView *)self mapItem];
  distance = [mapItem2 distance];

  if (distance)
  {
    localizedDistanceString = [distance localizedDistanceString];
  }

  else
  {
    referenceLocation = [(MAResultView *)self referenceLocation];

    if (referenceLocation)
    {
      mapItem3 = [(MAResultView *)self mapItem];
      location = [mapItem3 location];
      clRepresentation = [location clRepresentation];

      referenceLocation2 = [(MAResultView *)self referenceLocation];
      [clRepresentation distanceFromLocation:referenceLocation2];
      v15 = v14;

      v5 = [SADistance localizedStringForDistanceInMeters:0 forCity:v15];

      goto LABEL_11;
    }

    [(MAResultView *)self fallbackDistance];
    if (v16 <= 0.0)
    {
      v5 = 0;
      goto LABEL_11;
    }

    [(MAResultView *)self fallbackDistance];
    localizedDistanceString = [SADistance localizedStringForDistanceInMeters:0 forCity:?];
  }

  v5 = localizedDistanceString;
LABEL_11:

LABEL_12:

  return v5;
}

- (void)setHideBottomKeyline:(BOOL)keyline
{
  if (self->_hideBottomKeyline != keyline)
  {
    self->_hideBottomKeyline = keyline;
    [(SiriUIKeyline *)self->_bottomKeyline setHidden:?];
  }
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
  mapItem = self->_mapItem;
  if (mapItem != itemCopy && ([(SALocalSearchMapItem *)mapItem isEqual:itemCopy]& 1) == 0)
  {
    if (self->_notificationHandler)
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 removeObserver:self->_notificationHandler];

      notificationHandler = self->_notificationHandler;
      self->_notificationHandler = 0;
    }

    objc_storeStrong(&self->_mapItem, item);
    v9 = [MKMapItem mapItemWithLocalSearchMapItem:self->_mapItem];
    placeDataMapItem = self->_placeDataMapItem;
    self->_placeDataMapItem = v9;

    if ([(SALocalSearchMapItem *)self->_mapItem needsAttribution])
    {
      objc_initWeak(&location, self);
      v11 = +[NSNotificationCenter defaultCenter];
      v12 = self->_placeDataMapItem;
      v13 = +[NSOperationQueue mainQueue];
      v14 = _MKMapItemDidResolveAttributionNotification;
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_EC08;
      v20 = &unk_424E8;
      objc_copyWeak(&v21, &location);
      v15 = [v11 addObserverForName:v14 object:v12 queue:v13 usingBlock:&v17];
      v16 = self->_notificationHandler;
      self->_notificationHandler = v15;

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }

    [(MAResultView *)self _updateSubviews:v17];
  }
}

- (void)setReferenceLocation:(id)location
{
  locationCopy = location;
  referenceLocation = self->_referenceLocation;
  if (referenceLocation != locationCopy && ([(CLLocation *)referenceLocation isEqual:locationCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_referenceLocation, location);
    [(MAResultView *)self _updateSubviews];
  }

  _objc_release_x1();
}

- (void)setLocationDetailPreferred:(BOOL)preferred
{
  if (self->_locationDetailPreferred != preferred)
  {
    self->_locationDetailPreferred = preferred;
    [(MAResultView *)self _updateSubviews];
  }
}

- (void)setDisplayFormat:(int)format
{
  if (self->_displayFormat != format)
  {
    self->_displayFormat = format;
    [(MAResultView *)self _updateSubviews];
  }
}

@end