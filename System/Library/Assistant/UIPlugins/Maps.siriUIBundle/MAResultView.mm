@interface MAResultView
+ (double)preferredHeightForMapItem:(id)a3;
+ (void)_configureLabel:(id)a3 withFont:(id)a4 textColor:(id)a5;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (MAResultView)initWithFrame:(CGRect)a3;
- (double)preferredHeight;
- (id)_distanceString;
- (void)_buttonTapped;
- (void)_updateDetailLine1;
- (void)_updateHorizontalCompressionResistanceForLabels;
- (void)_updateImage;
- (void)_updateImageViewVisibility;
- (void)_updateSubviews;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)dealloc;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)setDisplayFormat:(int)a3;
- (void)setHideBottomKeyline:(BOOL)a3;
- (void)setLocationDetailPreferred:(BOOL)a3;
- (void)setMapItem:(id)a3;
- (void)setReferenceLocation:(id)a3;
@end

@implementation MAResultView

- (MAResultView)initWithFrame:(CGRect)a3
{
  v150.receiver = self;
  v150.super_class = MAResultView;
  v3 = [(MAResultView *)&v150 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v22 = [(UIImageView *)v3->_imageView layer];
    [v22 setCornerRadius:8.0];

    [(UIImageView *)v3->_imageView setClipsToBounds:1];
    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v23) = 1148829696;
    [(UIImageView *)v3->_imageView _mapkit_setContentHuggingPriority:0 forAxis:v23];
    v24 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    button = v3->_button;
    v3->_button = v24;

    [(UIButton *)v3->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v3->_button setHidden:1];
    v26 = [(UIButton *)v3->_button layer];
    [v26 setCornerRadius:7.5];

    v27 = [(UIButton *)v3->_button layer];
    [v27 setBorderWidth:1.0];

    v28 = v4;
    v146 = v4;
    v29 = [v4 CGColor];
    v30 = [(UIButton *)v3->_button layer];
    [v30 setBorderColor:v29];

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
    v40 = [(_MKUILabel *)v3->_nameLabel leadingAnchor];
    v41 = [(MAResultView *)v3 leadingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:15.0];
    [v39 addObject:v42];

    v43 = [(UIImageView *)v3->_imageView leadingAnchor];
    v44 = [(_MKUILabel *)v3->_nameLabel trailingAnchor];
    v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44 constant:15.0];
    [v39 addObject:v45];

    v46 = [(MAResultView *)v3 trailingAnchor];
    v47 = [(UIImageView *)v3->_imageView trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:15.0];
    [v39 addObject:v48];

    v49 = [(_MKUILabel *)v3->_detailLine1aLabel leadingAnchor];
    v50 = [(MAResultView *)v3 leadingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:15.0];
    [v39 addObject:v51];

    v52 = [(_MKUILabel *)v3->_detailLine1bLabel leadingAnchor];
    v53 = [(_MKUILabel *)v3->_detailLine1aLabel trailingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:0.0];
    [v39 addObject:v54];

    v55 = [(UIImageView *)v3->_imageView leadingAnchor];
    v56 = [(_MKUILabel *)v3->_detailLine1bLabel trailingAnchor];
    v57 = [v55 constraintGreaterThanOrEqualToAnchor:v56 constant:15.0];
    v58 = v39;
    [v39 addObject:v57];

    v59 = [(MKTransitInfoLabelView *)v3->_detailLine2Label leadingAnchor];
    v60 = [(MAResultView *)v3 leadingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60 constant:15.0];
    [v39 addObject:v61];

    v62 = [(UIImageView *)v3->_imageView leadingAnchor];
    v63 = [(MKTransitInfoLabelView *)v3->_detailLine2Label trailingAnchor];
    v64 = [v62 constraintGreaterThanOrEqualToAnchor:v63 constant:15.0];
    [v39 addObject:v64];

    v65 = [(SiriUIKeyline *)v3->_bottomKeyline leadingAnchor];
    v66 = [(MAResultView *)v3 leadingAnchor];
    v67 = [v65 constraintEqualToAnchor:v66 constant:15.0];
    [v39 addObject:v67];

    v68 = [(MAResultView *)v3 trailingAnchor];
    v69 = [(SiriUIKeyline *)v3->_bottomKeyline trailingAnchor];
    v70 = [v68 constraintEqualToAnchor:v69 constant:15.0];
    [v39 addObject:v70];

    [v149 _mapkit_scaledValueForValue:21.0];
    v72 = v71;
    [v148 _mapkit_scaledValueForValue:21.0];
    v74 = v73;
    [v148 _mapkit_scaledValueForValue:21.0];
    v76 = v75;
    [v148 _mapkit_scaledValueForValue:21.0];
    v78 = v77;
    v79 = [(_MKUILabel *)v3->_nameLabel firstBaselineAnchor];
    v80 = [(MAResultView *)v3 topAnchor];
    v81 = [v79 constraintEqualToAnchor:v80 constant:v72];
    [v39 addObject:v81];

    v82 = [(_MKUILabel *)v3->_detailLine1aLabel firstBaselineAnchor];
    v83 = [(_MKUILabel *)v3->_nameLabel lastBaselineAnchor];
    v84 = [v82 constraintEqualToAnchor:v83 constant:v74];
    v153[0] = v84;
    v85 = [(_MKUILabel *)v3->_detailLine1bLabel firstBaselineAnchor];
    v86 = [(_MKUILabel *)v3->_nameLabel lastBaselineAnchor];
    v87 = [v85 constraintEqualToAnchor:v86 constant:v74];
    v153[1] = v87;
    v88 = [NSArray arrayWithObjects:v153 count:2];
    baselineConstraintsDetailLine1ToName = v3->_baselineConstraintsDetailLine1ToName;
    v3->_baselineConstraintsDetailLine1ToName = v88;

    v90 = [(MKTransitInfoLabelView *)v3->_detailLine2Label firstBaselineAnchor];
    v91 = [(_MKUILabel *)v3->_detailLine1aLabel lastBaselineAnchor];
    v92 = [v90 constraintEqualToAnchor:v91 constant:v76];
    v152[0] = v92;
    v93 = [(MKTransitInfoLabelView *)v3->_detailLine2Label firstBaselineAnchor];
    v94 = [(_MKUILabel *)v3->_detailLine1bLabel lastBaselineAnchor];
    v95 = [v93 constraintEqualToAnchor:v94 constant:v76];
    v152[1] = v95;
    v96 = [NSArray arrayWithObjects:v152 count:2];
    baselineConstraintsDetailLine2ToLine1 = v3->_baselineConstraintsDetailLine2ToLine1;
    v3->_baselineConstraintsDetailLine2ToLine1 = v96;

    v98 = [(MAResultView *)v3 bottomAnchor];
    v99 = [(MKTransitInfoLabelView *)v3->_detailLine2Label lastBaselineAnchor];
    v100 = [v98 constraintEqualToAnchor:v99 constant:v78];

    LODWORD(v101) = 1148829696;
    [v100 setPriority:v101];
    [v39 addObject:v100];
    v102 = [(SiriUIKeyline *)v3->_bottomKeyline bottomAnchor];
    v103 = [(MAResultView *)v3 bottomAnchor];
    v104 = [v102 constraintEqualToAnchor:v103 constant:0.0];
    [v39 addObject:v104];

    v105 = [(UIImageView *)v3->_imageView centerYAnchor];
    v106 = [(MAResultView *)v3 centerYAnchor];
    v107 = [v105 constraintEqualToAnchor:v106];
    [v39 addObject:v107];

    v108 = [(UIImageView *)v3->_imageView widthAnchor];
    v109 = [v108 constraintEqualToConstant:64.0];
    [v39 addObject:v109];

    v110 = [(UIImageView *)v3->_imageView heightAnchor];
    v111 = [(UIImageView *)v3->_imageView widthAnchor];
    v112 = [v110 constraintEqualToAnchor:v111];
    [v39 addObject:v112];

    v113 = [(UIButton *)v3->_button widthAnchor];
    v114 = [(UIImageView *)v3->_imageView widthAnchor];
    v115 = [v113 constraintEqualToAnchor:v114];
    [v39 addObject:v115];

    v116 = [(UIButton *)v3->_button heightAnchor];
    v117 = [(UIButton *)v3->_button widthAnchor];
    v118 = [v116 constraintEqualToAnchor:v117];
    [v39 addObject:v118];

    v119 = [(UIButton *)v3->_button centerXAnchor];
    v120 = [(UIImageView *)v3->_imageView centerXAnchor];
    v121 = [v119 constraintEqualToAnchor:v120];
    [v39 addObject:v121];

    v122 = [(UIButton *)v3->_button centerYAnchor];
    v123 = [(UIImageView *)v3->_imageView centerYAnchor];
    v124 = [v122 constraintEqualToAnchor:v123];
    [v39 addObject:v124];

    v125 = [(MKVibrantLabel *)v3->_vibrantLabel leadingAnchor];
    v126 = [(MAResultView *)v3 leadingAnchor];
    v127 = [v125 constraintEqualToAnchor:v126 constant:15.0];
    [v39 addObject:v127];

    v128 = [(UIImageView *)v3->_imageView leadingAnchor];
    v129 = [(MKVibrantLabel *)v3->_vibrantLabel trailingAnchor];
    v130 = [v128 constraintGreaterThanOrEqualToAnchor:v129 constant:15.0];
    [v39 addObject:v130];

    v131 = [(MAResultView *)v3 bottomAnchor];
    v132 = [(MKVibrantLabel *)v3->_vibrantLabel lastBaselineAnchor];
    v133 = [v131 constraintEqualToAnchor:v132 constant:v78];

    LODWORD(v134) = 1148829696;
    [v133 setPriority:v134];
    [v39 addObject:v133];
    v135 = [(MKVibrantLabel *)v3->_vibrantLabel firstBaselineAnchor];
    v136 = [(_MKUILabel *)v3->_detailLine1aLabel lastBaselineAnchor];
    v137 = [v135 constraintEqualToAnchor:v136 constant:v76];
    v151[0] = v137;
    v138 = [(MKVibrantLabel *)v3->_vibrantLabel firstBaselineAnchor];
    v139 = [(_MKUILabel *)v3->_detailLine1bLabel lastBaselineAnchor];
    v140 = [v138 constraintEqualToAnchor:v139 constant:v76];
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

+ (void)_configureLabel:(id)a3 withFont:(id)a4 textColor:(id)a5
{
  v7 = a5;
  v10 = a3;
  [v10 setFont:a4];
  [v10 setTextColor:v7];

  v8 = +[UIColor clearColor];
  [v10 setBackgroundColor:v8];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setTextAlignment:4];
  LODWORD(v9) = 1148829696;
  [v10 _mapkit_setContentHuggingPriority:1 forAxis:v9];
}

- (void)_buttonTapped
{
  if ([(MAResultView *)self isDisplayForSAR])
  {
    v3 = [(MAResultView *)self blockOnButtonTappedForSARResult];

    if (v3)
    {
      v5 = [(MAResultView *)self blockOnButtonTappedForSARResult];
      v4 = [(MAResultView *)self mapItem];
      v5[2](v5, v4);
    }
  }
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = [UIColor siriui_highlightColor:a3];
  [(MAResultView *)self setBackgroundColor:v5];

  return 1;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = MAResultView;
  [(MAResultView *)&v6 endTrackingWithTouch:a3 withEvent:a4];
  v5 = +[UIColor clearColor];
  [(MAResultView *)self setBackgroundColor:v5];
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v5.receiver = self;
  v5.super_class = MAResultView;
  [(MAResultView *)&v5 cancelTrackingWithEvent:a3];
  v4 = +[UIColor clearColor];
  [(MAResultView *)self setBackgroundColor:v4];
}

+ (double)preferredHeightForMapItem:(id)a3
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
  v3 = [(MAResultView *)self superview];

  v4 = UIViewNoIntrinsicMetric;
  if (v3)
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
  v3 = [(SALocalSearchMapItem *)self->_mapItem label];
  [(_MKUILabel *)self->_nameLabel setText:v3];

  v4 = [(SALocalSearchMapItem *)self->_mapItem needsAttribution];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(MKMapItem *)self->_placeDataMapItem _hasUserRatingScore]^ 1;
  }

  [(MAResultView *)self _updateDetailLine2HidingReviews:v4 ^ 1 hidingRating:v5];
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
  v3 = [(MAResultView *)self isDisplayForSAR];
  [(_MKUILabel *)self->_detailLine1aLabel setText:0];
  [(_MKUILabel *)self->_detailLine1bLabel setText:0];
  v4 = 0;
  if (v3)
  {
    v4 = [(MKMapItem *)self->_placeDataMapItem _ma_detourText];
  }

  if (-[MAResultView isLocationDetailPreferred](self, "isLocationDetailPreferred") || (-[MAResultView mapItem](self, "mapItem"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isBusinessLocation], v5, (v6 & 1) == 0))
  {
    v7 = [(MKMapItem *)self->_placeDataMapItem _addressFormattedAsShortenedAddress];
    if (![v7 length])
    {
      v8 = [(SALocalSearchMapItem *)self->_mapItem locationDetailLabel];

      v7 = v8;
    }
  }

  else if ([(MKMapItem *)self->_placeDataMapItem _hasLocalizedCategoryNamesForType:0])
  {
    v7 = [(MKMapItem *)self->_placeDataMapItem _firstLocalizedCategoryName];
  }

  else
  {
    v7 = 0;
  }

  v9 = [(MAResultView *)self _distanceString];
  if (!self->_localizedHoursBuilder)
  {
    v10 = [[_MKLocalizedHoursBuilder alloc] initWithMapItem:self->_placeDataMapItem localizedHoursStringOptions:1];
    localizedHoursBuilder = self->_localizedHoursBuilder;
    self->_localizedHoursBuilder = v10;
  }

  v41 = v7;
  if (v3)
  {
    v12 = objc_opt_new();
    if ([v4 length])
    {
      [v12 addObject:v4];
    }

    if ([v9 length])
    {
      [v12 addObject:v9];
    }

    if ([v12 count])
    {
      v13 = [v12 componentsJoinedByString:@" · "];
      if ([v7 length])
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
    [(_MKUILabel *)self->_detailLine1bLabel setText:v7];
    v39 = 0;
  }

  else
  {
    if ([(MAResultView *)self _showOpenStateLabel])
    {
      v15 = [(_MKLocalizedHoursBuilder *)self->_localizedHoursBuilder localizedOperatingHours];
    }

    else
    {
      v15 = 0;
    }

    v16 = objc_opt_new();
    [(_MKUILabel *)self->_detailLine1aLabel setText:v7];
    if ([v9 length])
    {
      [v16 addObject:v9];
    }

    if ([v15 length])
    {
      [v16 addObject:v15];
    }

    if ([v16 count])
    {
      v17 = [v16 componentsJoinedByString:@" · "];
      if ([v7 length])
      {
        v18 = [NSString stringWithFormat:@"%@%@", @" · ", v17];
        [(_MKUILabel *)self->_detailLine1bLabel setText:v18];
      }

      else
      {
        [(_MKUILabel *)self->_detailLine1bLabel setText:v17];
      }
    }

    v39 = v15;
    v40 = v16;
    if ([v15 length])
    {
      v19 = [(_MKUILabel *)self->_detailLine1bLabel text];
      v20 = [v19 rangeOfString:v15];
      v22 = v21;

      if (v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = [(_MKUILabel *)self->_detailLine1bLabel attributedText];
        v24 = [v23 mutableCopy];

        v25 = [(_MKLocalizedHoursBuilder *)self->_localizedHoursBuilder hoursStateLabelColor];
        v49 = NSForegroundColorAttributeName;
        v50 = v25;
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
        v33 = [(_MKUILabel *)v32 text];
        v34 = [v33 length] != 0;

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

    v7 = [(MKMapItem *)self->_placeDataMapItem _geoMapItem];
    v8 = [v7 _photos];
    v9 = [v8 _geo_firstPhotoOfAtLeastSize:{v6 * 64.0, v6 * 64.0}];

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
  v3 = [(UIImageView *)self->_imageView image];
  if (v3)
  {
    v4 = v3;
    v5 = [(MAResultView *)self isDisplayForSAR];
  }

  else
  {
    v5 = 1;
  }

  [(UIImageView *)self->_imageView setHidden:v5];

  [(MAResultView *)self _mapkit_setNeedsLayout];
}

- (id)_distanceString
{
  v3 = [(MAResultView *)self mapItem];
  v4 = [v3 isCurrentLocation];

  if (v4)
  {
    v5 = 0;
    goto LABEL_12;
  }

  v6 = [(MAResultView *)self mapItem];
  v7 = [v6 distance];

  if (v7)
  {
    v8 = [v7 localizedDistanceString];
  }

  else
  {
    v9 = [(MAResultView *)self referenceLocation];

    if (v9)
    {
      v10 = [(MAResultView *)self mapItem];
      v11 = [v10 location];
      v12 = [v11 clRepresentation];

      v13 = [(MAResultView *)self referenceLocation];
      [v12 distanceFromLocation:v13];
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
    v8 = [SADistance localizedStringForDistanceInMeters:0 forCity:?];
  }

  v5 = v8;
LABEL_11:

LABEL_12:

  return v5;
}

- (void)setHideBottomKeyline:(BOOL)a3
{
  if (self->_hideBottomKeyline != a3)
  {
    self->_hideBottomKeyline = a3;
    [(SiriUIKeyline *)self->_bottomKeyline setHidden:?];
  }
}

- (void)setMapItem:(id)a3
{
  v5 = a3;
  mapItem = self->_mapItem;
  if (mapItem != v5 && ([(SALocalSearchMapItem *)mapItem isEqual:v5]& 1) == 0)
  {
    if (self->_notificationHandler)
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 removeObserver:self->_notificationHandler];

      notificationHandler = self->_notificationHandler;
      self->_notificationHandler = 0;
    }

    objc_storeStrong(&self->_mapItem, a3);
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

- (void)setReferenceLocation:(id)a3
{
  v5 = a3;
  referenceLocation = self->_referenceLocation;
  if (referenceLocation != v5 && ([(CLLocation *)referenceLocation isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_referenceLocation, a3);
    [(MAResultView *)self _updateSubviews];
  }

  _objc_release_x1();
}

- (void)setLocationDetailPreferred:(BOOL)a3
{
  if (self->_locationDetailPreferred != a3)
  {
    self->_locationDetailPreferred = a3;
    [(MAResultView *)self _updateSubviews];
  }
}

- (void)setDisplayFormat:(int)a3
{
  if (self->_displayFormat != a3)
  {
    self->_displayFormat = a3;
    [(MAResultView *)self _updateSubviews];
  }
}

@end