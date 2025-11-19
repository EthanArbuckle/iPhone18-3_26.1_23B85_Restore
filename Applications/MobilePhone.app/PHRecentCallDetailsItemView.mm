@interface PHRecentCallDetailsItemView
+ (id)_sharedDetailDisclosureImage;
+ (id)_sharedTTYDirectImage;
+ (id)_sharedTTYRelayImage;
+ (id)_verifiedCheckmarkImage;
- (CGSize)intrinsicContentSize;
- (PHRecentCallDetailsItemView)initWithCoder:(id)a3;
- (PHRecentCallDetailsItemView)initWithFrame:(CGRect)a3 callUUID:(id)a4 ttyType:(int64_t)a5 timeLabel:(id)a6 statusLabel:(id)a7 durationAndDataText:(id)a8 emergencyItemsText:(id)a9 verified:(BOOL)a10 screenSharingTypeText:(id)a11;
- (PHRecentCallDetailsItemViewDelegate)delegate;
- (void)addDurationAndDataSubview;
- (void)addEmergencyItemsSubview;
- (void)addRTTInfo;
- (void)addScreenSharingTypeSubview;
- (void)addVerifiedBadge;
- (void)handleTTYTranscriptAction:(id)a3;
- (void)loadSubviews;
- (void)loadSubviewsLayoutConstraints;
@end

@implementation PHRecentCallDetailsItemView

+ (id)_sharedTTYDirectImage
{
  if (_sharedTTYDirectImage_onceToken != -1)
  {
    +[PHRecentCallDetailsItemView _sharedTTYDirectImage];
  }

  v3 = __PHRecentsDetails_TTYDirectCall;

  return v3;
}

void __52__PHRecentCallDetailsItemView__sharedTTYDirectImage__block_invoke(id a1)
{
  v4 = [UIImage tpImageForSymbolType:29 textStyle:UIFontTextStyleCaption1 scale:1 isStaticSize:0];
  v1 = [UIColor colorWithWhite:0.800000012 alpha:1.0];
  v2 = [v4 _flatImageWithColor:v1];
  v3 = __PHRecentsDetails_TTYDirectCall;
  __PHRecentsDetails_TTYDirectCall = v2;
}

+ (id)_sharedTTYRelayImage
{
  if (_sharedTTYRelayImage_onceToken != -1)
  {
    +[PHRecentCallDetailsItemView _sharedTTYRelayImage];
  }

  v3 = __PHRecentsDetails_TTYRelayCall;

  return v3;
}

void __51__PHRecentCallDetailsItemView__sharedTTYRelayImage__block_invoke(id a1)
{
  v4 = [UIImage tpImageForSymbolType:29 textStyle:UIFontTextStyleCaption1 scale:1 isStaticSize:0];
  v1 = [UIColor colorWithWhite:0.800000012 alpha:1.0];
  v2 = [v4 _flatImageWithColor:v1];
  v3 = __PHRecentsDetails_TTYRelayCall;
  __PHRecentsDetails_TTYRelayCall = v2;
}

+ (id)_sharedDetailDisclosureImage
{
  if (_sharedDetailDisclosureImage_onceToken != -1)
  {
    +[PHRecentCallDetailsItemView _sharedDetailDisclosureImage];
  }

  v3 = __PHRecentsDetails_DetailDisclosureImage;

  return v3;
}

void __59__PHRecentCallDetailsItemView__sharedDetailDisclosureImage__block_invoke(id a1)
{
  v4 = [UIImage tpImageForSymbolType:37 textStyle:UIFontTextStyleCaption1 scale:1 isStaticSize:0];
  v1 = [UIColor colorWithWhite:0.800000012 alpha:1.0];
  v2 = [v4 _flatImageWithColor:v1];
  v3 = __PHRecentsDetails_DetailDisclosureImage;
  __PHRecentsDetails_DetailDisclosureImage = v2;
}

+ (id)_verifiedCheckmarkImage
{
  if (_verifiedCheckmarkImage_onceToken != -1)
  {
    +[PHRecentCallDetailsItemView _verifiedCheckmarkImage];
  }

  v3 = __PHRecentsDetails_VerifiedCheckmarkImage;

  return v3;
}

void __54__PHRecentCallDetailsItemView__verifiedCheckmarkImage__block_invoke(id a1)
{
  v4 = [UIImage tpImageForSymbolType:36 textStyle:UIFontTextStyleCaption1 scale:1 isStaticSize:0];
  v1 = [UIColor colorWithWhite:0.800000012 alpha:1.0];
  v2 = [v4 _flatImageWithColor:v1];
  v3 = __PHRecentsDetails_VerifiedCheckmarkImage;
  __PHRecentsDetails_VerifiedCheckmarkImage = v2;
}

- (PHRecentCallDetailsItemView)initWithFrame:(CGRect)a3 callUUID:(id)a4 ttyType:(int64_t)a5 timeLabel:(id)a6 statusLabel:(id)a7 durationAndDataText:(id)a8 emergencyItemsText:(id)a9 verified:(BOOL)a10 screenSharingTypeText:(id)a11
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21 = a4;
  v22 = a6;
  v30 = a7;
  v29 = a8;
  v28 = a9;
  v23 = a11;
  v31.receiver = self;
  v31.super_class = PHRecentCallDetailsItemView;
  v24 = [(PHRecentCallDetailsItemView *)&v31 initWithFrame:x, y, width, height];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_callUUID, a4);
    v25->_ttyType = a5;
    objc_storeStrong(&v25->_timeText, a6);
    objc_storeStrong(&v25->_statusText, a7);
    objc_storeStrong(&v25->_durationAndDataText, a8);
    objc_storeStrong(&v25->_emergencyItemsText, a9);
    v25->_verified = a10;
    objc_storeStrong(&v25->_screenSharingTypeText, a11);
    [(PHRecentCallDetailsItemView *)v25 loadSubviews];
  }

  return v25;
}

- (PHRecentCallDetailsItemView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PHRecentCallDetailsItemView;
  v3 = [(PHRecentCallDetailsItemView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PHRecentCallDetailsItemView *)v3 loadSubviews];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(PHRecentCallDetailsItemView *)self statusLabel];
  [v3 intrinsicContentSize];
  v5 = v4;

  if (self->_durationAndDataLabel)
  {
    v6 = [(PHRecentCallDetailsItemView *)self statusLabel];
    [v6 intrinsicContentSize];
    v8 = v7;
    v9 = [(PHRecentCallDetailsItemView *)self durationAndDataLabel];
    [v9 intrinsicContentSize];
    v5 = v8 + v10;
  }

  if (self->_screenSharingLabel)
  {
    v11 = [(PHRecentCallDetailsItemView *)self screenSharingLabel];
    [v11 intrinsicContentSize];
    v5 = v5 + v12;
  }

  v13 = UIViewNoIntrinsicMetric;
  v14 = v5;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)loadSubviews
{
  v3 = objc_alloc_init(UILabel);
  timeLabel = self->_timeLabel;
  self->_timeLabel = v3;

  v5 = +[UIFont preferredCaption1Font];
  [(UILabel *)self->_timeLabel setFont:v5];

  [(UILabel *)self->_timeLabel setTextAlignment:4];
  [(UILabel *)self->_timeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_timeLabel setContentMode:4];
  v6 = [(PHRecentCallDetailsItemView *)self timeText];
  [(UILabel *)self->_timeLabel setText:v6];

  [(UILabel *)self->_timeLabel setAdjustsFontForContentSizeCategory:1];
  LODWORD(v7) = 1148846080;
  [(UILabel *)self->_timeLabel setContentCompressionResistancePriority:0 forAxis:v7];
  [(PHRecentCallDetailsItemView *)self addSubview:self->_timeLabel];
  v8 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  statusLabel = self->_statusLabel;
  self->_statusLabel = v8;

  v10 = +[UIFont preferredCaption1BoldFont];
  [(UILabel *)self->_statusLabel setFont:v10];

  [(UILabel *)self->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_statusLabel setContentMode:4];
  v11 = [(PHRecentCallDetailsItemView *)self statusText];
  [(UILabel *)self->_statusLabel setText:v11];

  [(UILabel *)self->_statusLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_statusLabel setNumberOfLines:0];
  [(PHRecentCallDetailsItemView *)self addSubview:self->_statusLabel];
  v12 = [(PHRecentCallDetailsItemView *)self emergencyItemsText];

  if (v12)
  {
    [(PHRecentCallDetailsItemView *)self addEmergencyItemsSubview];
  }

  v13 = [(PHRecentCallDetailsItemView *)self screenSharingTypeText];

  if (v13)
  {
    [(PHRecentCallDetailsItemView *)self addScreenSharingTypeSubview];
  }

  v14 = [(PHRecentCallDetailsItemView *)self durationAndDataText];

  if (v14)
  {
    [(PHRecentCallDetailsItemView *)self addDurationAndDataSubview];
  }

  if ([(PHRecentCallDetailsItemView *)self verified])
  {
    [(PHRecentCallDetailsItemView *)self addVerifiedBadge];
  }

  if ([(PHRecentCallDetailsItemView *)self ttyType])
  {
    [(PHRecentCallDetailsItemView *)self addRTTInfo];
  }

  [(PHRecentCallDetailsItemView *)self loadSubviewsLayoutConstraints];
}

- (void)loadSubviewsLayoutConstraints
{
  v3 = [(PHRecentCallDetailsItemView *)self timeLabel];
  v4 = [v3 leadingAnchor];
  v5 = [(PHRecentCallDetailsItemView *)self leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [v6 setActive:1];

  v7 = [(PHRecentCallDetailsItemView *)self statusLabel];
  v8 = [v7 leadingAnchor];
  v9 = [(PHRecentCallDetailsItemView *)self timeLabel];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:8.0];
  [v11 setActive:1];

  if (![(PHRecentCallDetailsItemView *)self verified]&& ![(PHRecentCallDetailsItemView *)self ttyType])
  {
    v12 = [(PHRecentCallDetailsItemView *)self statusLabel];
    v13 = [v12 trailingAnchor];
    v14 = [(PHRecentCallDetailsItemView *)self trailingAnchor];
    v15 = [v13 constraintLessThanOrEqualToAnchor:v14];
    [v15 setActive:1];
  }

  v16 = [(PHRecentCallDetailsItemView *)self timeLabel];
  v17 = [v16 topAnchor];
  v18 = [(PHRecentCallDetailsItemView *)self topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  v20 = [(PHRecentCallDetailsItemView *)self statusLabel];
  v21 = [v20 topAnchor];
  v22 = [(PHRecentCallDetailsItemView *)self topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  durationAndDataLabel = self->_durationAndDataLabel;
  v28 = [(PHRecentCallDetailsItemView *)self bottomAnchor];
  if (durationAndDataLabel)
  {
    v25 = [(UILabel *)self->_durationAndDataLabel bottomAnchor];
    v26 = [v28 constraintEqualToAnchor:v25];
    [v26 setActive:1];
  }

  else
  {
    v25 = [(PHRecentCallDetailsItemView *)self statusLabel];
    v26 = [v25 bottomAnchor];
    v27 = [v28 constraintEqualToAnchor:v26];
    [v27 setActive:1];
  }
}

- (void)handleTTYTranscriptAction:(id)a3
{
  v5 = [(PHRecentCallDetailsItemView *)self delegate];
  v4 = [(PHRecentCallDetailsItemView *)self callUUID];
  [v5 presentConversationForUUID:v4];
}

- (void)addVerifiedBadge
{
  v3 = [UIImageView alloc];
  v4 = +[PHRecentCallDetailsItemView _verifiedCheckmarkImage];
  v5 = [v3 initWithImage:v4];
  verifiedBadgeView = self->_verifiedBadgeView;
  self->_verifiedBadgeView = v5;

  v7 = +[UIColor dynamicTertiaryLabelColor];
  [(UIImageView *)self->_verifiedBadgeView setTintColor:v7];

  [(UIImageView *)self->_verifiedBadgeView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v8) = 1148846080;
  [(UIImageView *)self->_verifiedBadgeView setContentCompressionResistancePriority:0 forAxis:v8];
  [(PHRecentCallDetailsItemView *)self addSubview:self->_verifiedBadgeView];
  v9 = [(UIImageView *)self->_verifiedBadgeView leadingAnchor];
  v10 = [(PHRecentCallDetailsItemView *)self statusLabel];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:4.0];
  [v12 setActive:1];

  v13 = [(UIImageView *)self->_verifiedBadgeView trailingAnchor];
  v14 = [(PHRecentCallDetailsItemView *)self trailingAnchor];
  v15 = [v13 constraintLessThanOrEqualToAnchor:v14];
  [v15 setActive:1];

  v19 = [(UIImageView *)self->_verifiedBadgeView centerYAnchor];
  v16 = [(PHRecentCallDetailsItemView *)self timeLabel];
  v17 = [v16 centerYAnchor];
  v18 = [v19 constraintEqualToAnchor:v17];
  [v18 setActive:1];
}

- (void)addRTTInfo
{
  if ([(PHRecentCallDetailsItemView *)self ttyType]== 1)
  {
    +[PHRecentCallDetailsItemView _sharedTTYDirectImage];
  }

  else
  {
    +[PHRecentCallDetailsItemView _sharedTTYRelayImage];
  }
  v33 = ;
  v3 = [[UIImageView alloc] initWithImage:v33];
  v4 = +[UIColor dynamicTertiaryLabelColor];
  [v3 setTintColor:v4];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v5) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v5];
  [(PHRecentCallDetailsItemView *)self addSubview:v3];
  v6 = [UIImageView alloc];
  v7 = +[PHRecentCallDetailsItemView _sharedDetailDisclosureImage];
  v8 = [v6 initWithImage:v7];
  ttyDetailDisclosureImageView = self->_ttyDetailDisclosureImageView;
  self->_ttyDetailDisclosureImageView = v8;

  v10 = +[UIColor dynamicTertiaryLabelColor];
  [(UIImageView *)self->_ttyDetailDisclosureImageView setTintColor:v10];

  [(UIImageView *)self->_ttyDetailDisclosureImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v11) = 1148846080;
  [(UIImageView *)self->_ttyDetailDisclosureImageView setContentCompressionResistancePriority:0 forAxis:v11];
  [(PHRecentCallDetailsItemView *)self addSubview:self->_ttyDetailDisclosureImageView];
  v12 = [(UIImageView *)self->_ttyDetailDisclosureImageView centerYAnchor];
  v13 = [(PHRecentCallDetailsItemView *)self timeLabel];
  v14 = [v13 centerYAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [v3 centerYAnchor];
  v17 = [(PHRecentCallDetailsItemView *)self timeLabel];
  v18 = [v17 centerYAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  v20 = [v3 trailingAnchor];
  v21 = [(UIImageView *)self->_ttyDetailDisclosureImageView leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-4.0];
  [v22 setActive:1];

  v23 = [(UIImageView *)self->_verifiedBadgeView trailingAnchor];
  v24 = [v3 leadingAnchor];
  v25 = [v23 constraintLessThanOrEqualToAnchor:v24];
  [v25 setActive:1];

  v26 = [(UILabel *)self->_statusLabel trailingAnchor];
  v27 = [v3 leadingAnchor];
  v28 = [v26 constraintLessThanOrEqualToAnchor:v27];
  [v28 setActive:1];

  v29 = [(UIImageView *)self->_ttyDetailDisclosureImageView trailingAnchor];
  v30 = [(PHRecentCallDetailsItemView *)self trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-15.0];
  [v31 setActive:1];

  v32 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTTYTranscriptAction:"];
  [v32 setNumberOfTapsRequired:1];
  [(PHRecentCallDetailsItemView *)self addGestureRecognizer:v32];
}

- (void)addEmergencyItemsSubview
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  emergencyItemsLabel = self->_emergencyItemsLabel;
  self->_emergencyItemsLabel = v3;

  v5 = +[UIFont preferredCaption1Font];
  [(UILabel *)self->_emergencyItemsLabel setFont:v5];

  v6 = +[UIColor dynamicSecondaryLabelColor];
  [(UILabel *)self->_emergencyItemsLabel setTextColor:v6];

  v7 = [(PHRecentCallDetailsItemView *)self emergencyItemsText];
  [(UILabel *)self->_emergencyItemsLabel setText:v7];

  [(UILabel *)self->_emergencyItemsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_emergencyItemsLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_emergencyItemsLabel setNumberOfLines:0];
  [(PHRecentCallDetailsItemView *)self addSubview:self->_emergencyItemsLabel];
  v8 = [(UILabel *)self->_emergencyItemsLabel leadingAnchor];
  v9 = [(UILabel *)self->_statusLabel leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [(UILabel *)self->_emergencyItemsLabel trailingAnchor];
  v12 = [(PHRecentCallDetailsItemView *)self trailingAnchor];
  v13 = [v11 constraintLessThanOrEqualToAnchor:v12];
  [v13 setActive:1];

  v16 = [(UILabel *)self->_emergencyItemsLabel topAnchor];
  v14 = [(UILabel *)self->_statusLabel bottomAnchor];
  v15 = [v16 constraintEqualToAnchor:v14 constant:4.0];
  [v15 setActive:1];
}

- (void)addDurationAndDataSubview
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  durationAndDataLabel = self->_durationAndDataLabel;
  self->_durationAndDataLabel = v3;

  v5 = +[UIFont preferredCaption1Font];
  [(UILabel *)self->_durationAndDataLabel setFont:v5];

  v6 = +[UIColor dynamicSecondaryLabelColor];
  [(UILabel *)self->_durationAndDataLabel setTextColor:v6];

  v7 = [(PHRecentCallDetailsItemView *)self durationAndDataText];
  [(UILabel *)self->_durationAndDataLabel setText:v7];

  [(UILabel *)self->_durationAndDataLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_durationAndDataLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_durationAndDataLabel setNumberOfLines:0];
  [(PHRecentCallDetailsItemView *)self addSubview:self->_durationAndDataLabel];
  p_emergencyItemsLabel = &self->_emergencyItemsLabel;
  if (self->_emergencyItemsLabel)
  {
    v9 = [(UILabel *)self->_durationAndDataLabel leadingAnchor];
  }

  else
  {
    p_emergencyItemsLabel = &self->_screenSharingLabel;
    screenSharingLabel = self->_screenSharingLabel;
    v9 = [(UILabel *)self->_durationAndDataLabel leadingAnchor];
    if (!screenSharingLabel)
    {
      p_emergencyItemsLabel = &self->_statusLabel;
    }
  }

  v11 = [(UILabel *)*p_emergencyItemsLabel leadingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [(UILabel *)self->_durationAndDataLabel topAnchor];
  v14 = [(UILabel *)*p_emergencyItemsLabel bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:4.0];
  [v15 setActive:1];

  v18 = [(UILabel *)self->_durationAndDataLabel trailingAnchor];
  v16 = [(PHRecentCallDetailsItemView *)self trailingAnchor];
  v17 = [v18 constraintLessThanOrEqualToAnchor:v16];
  [v17 setActive:1];
}

- (void)addScreenSharingTypeSubview
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  screenSharingLabel = self->_screenSharingLabel;
  self->_screenSharingLabel = v3;

  v5 = +[UIFont preferredCaption1Font];
  [(UILabel *)self->_screenSharingLabel setFont:v5];

  v6 = +[UIColor dynamicSecondaryLabelColor];
  [(UILabel *)self->_screenSharingLabel setTextColor:v6];

  v7 = [(PHRecentCallDetailsItemView *)self screenSharingTypeText];
  [(UILabel *)self->_screenSharingLabel setText:v7];

  [(UILabel *)self->_screenSharingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_screenSharingLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_screenSharingLabel setNumberOfLines:2];
  [(PHRecentCallDetailsItemView *)self addSubview:self->_screenSharingLabel];
  p_durationAndDataLabel = &self->_durationAndDataLabel;
  durationAndDataLabel = self->_durationAndDataLabel;
  v10 = [(UILabel *)self->_screenSharingLabel leadingAnchor];
  if (!durationAndDataLabel)
  {
    p_durationAndDataLabel = &self->_statusLabel;
  }

  v11 = [(UILabel *)*p_durationAndDataLabel leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [(UILabel *)self->_screenSharingLabel topAnchor];
  v14 = [(UILabel *)*p_durationAndDataLabel bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:4.0];
  [v15 setActive:1];

  v18 = [(UILabel *)self->_screenSharingLabel trailingAnchor];
  v16 = [(PHRecentCallDetailsItemView *)self trailingAnchor];
  v17 = [v18 constraintLessThanOrEqualToAnchor:v16];
  [v17 setActive:1];
}

- (PHRecentCallDetailsItemViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end