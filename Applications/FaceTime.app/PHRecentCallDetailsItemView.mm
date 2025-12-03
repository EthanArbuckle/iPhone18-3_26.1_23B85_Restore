@interface PHRecentCallDetailsItemView
+ (id)_sharedDetailDisclosureImage;
+ (id)_sharedTTYDirectImage;
+ (id)_sharedTTYRelayImage;
+ (id)_verifiedCheckmarkImage;
- (CGSize)intrinsicContentSize;
- (PHRecentCallDetailsItemView)initWithCoder:(id)coder;
- (PHRecentCallDetailsItemView)initWithFrame:(CGRect)frame callUUID:(id)d ttyType:(int64_t)type timeLabel:(id)label statusLabel:(id)statusLabel durationAndDataText:(id)text emergencyItemsText:(id)itemsText verified:(BOOL)self0 screenSharingTypeText:(id)self1;
- (PHRecentCallDetailsItemViewDelegate)delegate;
- (void)addDurationAndDataSubview;
- (void)addEmergencyItemsSubview;
- (void)addRTTInfo;
- (void)addScreenSharingTypeSubview;
- (void)addVerifiedBadge;
- (void)handleTTYTranscriptAction:(id)action;
- (void)loadSubviews;
- (void)loadSubviewsLayoutConstraints;
@end

@implementation PHRecentCallDetailsItemView

+ (id)_sharedTTYDirectImage
{
  if (qword_100126910 != -1)
  {
    sub_1000C42BC();
  }

  v3 = qword_1001268F0;

  return v3;
}

+ (id)_sharedTTYRelayImage
{
  if (qword_100126918 != -1)
  {
    sub_1000C42D0();
  }

  v3 = qword_1001268F8;

  return v3;
}

+ (id)_sharedDetailDisclosureImage
{
  if (qword_100126920 != -1)
  {
    sub_1000C42E4();
  }

  v3 = qword_100126900;

  return v3;
}

+ (id)_verifiedCheckmarkImage
{
  if (qword_100126928 != -1)
  {
    sub_1000C42F8();
  }

  v3 = qword_100126908;

  return v3;
}

- (PHRecentCallDetailsItemView)initWithFrame:(CGRect)frame callUUID:(id)d ttyType:(int64_t)type timeLabel:(id)label statusLabel:(id)statusLabel durationAndDataText:(id)text emergencyItemsText:(id)itemsText verified:(BOOL)self0 screenSharingTypeText:(id)self1
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  dCopy = d;
  labelCopy = label;
  statusLabelCopy = statusLabel;
  textCopy = text;
  itemsTextCopy = itemsText;
  typeTextCopy = typeText;
  v31.receiver = self;
  v31.super_class = PHRecentCallDetailsItemView;
  height = [(PHRecentCallDetailsItemView *)&v31 initWithFrame:x, y, width, height];
  v25 = height;
  if (height)
  {
    objc_storeStrong(&height->_callUUID, d);
    v25->_ttyType = type;
    objc_storeStrong(&v25->_timeText, label);
    objc_storeStrong(&v25->_statusText, statusLabel);
    objc_storeStrong(&v25->_durationAndDataText, text);
    objc_storeStrong(&v25->_emergencyItemsText, itemsText);
    v25->_verified = verified;
    objc_storeStrong(&v25->_screenSharingTypeText, typeText);
    [(PHRecentCallDetailsItemView *)v25 loadSubviews];
  }

  return v25;
}

- (PHRecentCallDetailsItemView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PHRecentCallDetailsItemView;
  v3 = [(PHRecentCallDetailsItemView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PHRecentCallDetailsItemView *)v3 loadSubviews];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  statusLabel = [(PHRecentCallDetailsItemView *)self statusLabel];
  [statusLabel intrinsicContentSize];
  v5 = v4;

  if (self->_durationAndDataLabel)
  {
    statusLabel2 = [(PHRecentCallDetailsItemView *)self statusLabel];
    [statusLabel2 intrinsicContentSize];
    v8 = v7;
    durationAndDataLabel = [(PHRecentCallDetailsItemView *)self durationAndDataLabel];
    [durationAndDataLabel intrinsicContentSize];
    v5 = v8 + v10;
  }

  if (self->_screenSharingLabel)
  {
    screenSharingLabel = [(PHRecentCallDetailsItemView *)self screenSharingLabel];
    [screenSharingLabel intrinsicContentSize];
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
  timeText = [(PHRecentCallDetailsItemView *)self timeText];
  [(UILabel *)self->_timeLabel setText:timeText];

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
  statusText = [(PHRecentCallDetailsItemView *)self statusText];
  [(UILabel *)self->_statusLabel setText:statusText];

  [(UILabel *)self->_statusLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_statusLabel setNumberOfLines:0];
  [(PHRecentCallDetailsItemView *)self addSubview:self->_statusLabel];
  emergencyItemsText = [(PHRecentCallDetailsItemView *)self emergencyItemsText];

  if (emergencyItemsText)
  {
    [(PHRecentCallDetailsItemView *)self addEmergencyItemsSubview];
  }

  screenSharingTypeText = [(PHRecentCallDetailsItemView *)self screenSharingTypeText];

  if (screenSharingTypeText)
  {
    [(PHRecentCallDetailsItemView *)self addScreenSharingTypeSubview];
  }

  durationAndDataText = [(PHRecentCallDetailsItemView *)self durationAndDataText];

  if (durationAndDataText)
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
  timeLabel = [(PHRecentCallDetailsItemView *)self timeLabel];
  leadingAnchor = [timeLabel leadingAnchor];
  leadingAnchor2 = [(PHRecentCallDetailsItemView *)self leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v6 setActive:1];

  statusLabel = [(PHRecentCallDetailsItemView *)self statusLabel];
  leadingAnchor3 = [statusLabel leadingAnchor];
  timeLabel2 = [(PHRecentCallDetailsItemView *)self timeLabel];
  trailingAnchor = [timeLabel2 trailingAnchor];
  v11 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
  [v11 setActive:1];

  if (![(PHRecentCallDetailsItemView *)self verified]&& ![(PHRecentCallDetailsItemView *)self ttyType])
  {
    statusLabel2 = [(PHRecentCallDetailsItemView *)self statusLabel];
    trailingAnchor2 = [statusLabel2 trailingAnchor];
    trailingAnchor3 = [(PHRecentCallDetailsItemView *)self trailingAnchor];
    v15 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];
    [v15 setActive:1];
  }

  timeLabel3 = [(PHRecentCallDetailsItemView *)self timeLabel];
  topAnchor = [timeLabel3 topAnchor];
  topAnchor2 = [(PHRecentCallDetailsItemView *)self topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v19 setActive:1];

  statusLabel3 = [(PHRecentCallDetailsItemView *)self statusLabel];
  topAnchor3 = [statusLabel3 topAnchor];
  topAnchor4 = [(PHRecentCallDetailsItemView *)self topAnchor];
  v23 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v23 setActive:1];

  durationAndDataLabel = self->_durationAndDataLabel;
  bottomAnchor = [(PHRecentCallDetailsItemView *)self bottomAnchor];
  if (durationAndDataLabel)
  {
    bottomAnchor2 = [(UILabel *)self->_durationAndDataLabel bottomAnchor];
    v25BottomAnchor = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v25BottomAnchor setActive:1];
  }

  else
  {
    bottomAnchor2 = [(PHRecentCallDetailsItemView *)self statusLabel];
    v25BottomAnchor = [bottomAnchor2 bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:v25BottomAnchor];
    [v27 setActive:1];
  }
}

- (void)handleTTYTranscriptAction:(id)action
{
  delegate = [(PHRecentCallDetailsItemView *)self delegate];
  callUUID = [(PHRecentCallDetailsItemView *)self callUUID];
  [delegate presentConversationForUUID:callUUID];
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
  leadingAnchor = [(UIImageView *)self->_verifiedBadgeView leadingAnchor];
  statusLabel = [(PHRecentCallDetailsItemView *)self statusLabel];
  trailingAnchor = [statusLabel trailingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:4.0];
  [v12 setActive:1];

  trailingAnchor2 = [(UIImageView *)self->_verifiedBadgeView trailingAnchor];
  trailingAnchor3 = [(PHRecentCallDetailsItemView *)self trailingAnchor];
  v15 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];
  [v15 setActive:1];

  centerYAnchor = [(UIImageView *)self->_verifiedBadgeView centerYAnchor];
  timeLabel = [(PHRecentCallDetailsItemView *)self timeLabel];
  centerYAnchor2 = [timeLabel centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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
  centerYAnchor = [(UIImageView *)self->_ttyDetailDisclosureImageView centerYAnchor];
  timeLabel = [(PHRecentCallDetailsItemView *)self timeLabel];
  centerYAnchor2 = [timeLabel centerYAnchor];
  v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v15 setActive:1];

  centerYAnchor3 = [v3 centerYAnchor];
  timeLabel2 = [(PHRecentCallDetailsItemView *)self timeLabel];
  centerYAnchor4 = [timeLabel2 centerYAnchor];
  v19 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v19 setActive:1];

  trailingAnchor = [v3 trailingAnchor];
  leadingAnchor = [(UIImageView *)self->_ttyDetailDisclosureImageView leadingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-4.0];
  [v22 setActive:1];

  trailingAnchor2 = [(UIImageView *)self->_verifiedBadgeView trailingAnchor];
  leadingAnchor2 = [v3 leadingAnchor];
  v25 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:leadingAnchor2];
  [v25 setActive:1];

  trailingAnchor3 = [(UILabel *)self->_statusLabel trailingAnchor];
  leadingAnchor3 = [v3 leadingAnchor];
  v28 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor3];
  [v28 setActive:1];

  trailingAnchor4 = [(UIImageView *)self->_ttyDetailDisclosureImageView trailingAnchor];
  trailingAnchor5 = [(PHRecentCallDetailsItemView *)self trailingAnchor];
  v31 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-15.0];
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

  emergencyItemsText = [(PHRecentCallDetailsItemView *)self emergencyItemsText];
  [(UILabel *)self->_emergencyItemsLabel setText:emergencyItemsText];

  [(UILabel *)self->_emergencyItemsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_emergencyItemsLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_emergencyItemsLabel setNumberOfLines:0];
  [(PHRecentCallDetailsItemView *)self addSubview:self->_emergencyItemsLabel];
  leadingAnchor = [(UILabel *)self->_emergencyItemsLabel leadingAnchor];
  leadingAnchor2 = [(UILabel *)self->_statusLabel leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v10 setActive:1];

  trailingAnchor = [(UILabel *)self->_emergencyItemsLabel trailingAnchor];
  trailingAnchor2 = [(PHRecentCallDetailsItemView *)self trailingAnchor];
  v13 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  [v13 setActive:1];

  topAnchor = [(UILabel *)self->_emergencyItemsLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_statusLabel bottomAnchor];
  v15 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:4.0];
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

  durationAndDataText = [(PHRecentCallDetailsItemView *)self durationAndDataText];
  [(UILabel *)self->_durationAndDataLabel setText:durationAndDataText];

  [(UILabel *)self->_durationAndDataLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_durationAndDataLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_durationAndDataLabel setNumberOfLines:0];
  [(PHRecentCallDetailsItemView *)self addSubview:self->_durationAndDataLabel];
  p_emergencyItemsLabel = &self->_emergencyItemsLabel;
  if (self->_emergencyItemsLabel)
  {
    leadingAnchor = [(UILabel *)self->_durationAndDataLabel leadingAnchor];
  }

  else
  {
    p_emergencyItemsLabel = &self->_screenSharingLabel;
    screenSharingLabel = self->_screenSharingLabel;
    leadingAnchor = [(UILabel *)self->_durationAndDataLabel leadingAnchor];
    if (!screenSharingLabel)
    {
      p_emergencyItemsLabel = &self->_statusLabel;
    }
  }

  leadingAnchor2 = [(UILabel *)*p_emergencyItemsLabel leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v12 setActive:1];

  topAnchor = [(UILabel *)self->_durationAndDataLabel topAnchor];
  bottomAnchor = [(UILabel *)*p_emergencyItemsLabel bottomAnchor];
  v15 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:4.0];
  [v15 setActive:1];

  trailingAnchor = [(UILabel *)self->_durationAndDataLabel trailingAnchor];
  trailingAnchor2 = [(PHRecentCallDetailsItemView *)self trailingAnchor];
  v17 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
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

  screenSharingTypeText = [(PHRecentCallDetailsItemView *)self screenSharingTypeText];
  [(UILabel *)self->_screenSharingLabel setText:screenSharingTypeText];

  [(UILabel *)self->_screenSharingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_screenSharingLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_screenSharingLabel setNumberOfLines:2];
  [(PHRecentCallDetailsItemView *)self addSubview:self->_screenSharingLabel];
  p_durationAndDataLabel = &self->_durationAndDataLabel;
  durationAndDataLabel = self->_durationAndDataLabel;
  leadingAnchor = [(UILabel *)self->_screenSharingLabel leadingAnchor];
  if (!durationAndDataLabel)
  {
    p_durationAndDataLabel = &self->_statusLabel;
  }

  leadingAnchor2 = [(UILabel *)*p_durationAndDataLabel leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v12 setActive:1];

  topAnchor = [(UILabel *)self->_screenSharingLabel topAnchor];
  bottomAnchor = [(UILabel *)*p_durationAndDataLabel bottomAnchor];
  v15 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:4.0];
  [v15 setActive:1];

  trailingAnchor = [(UILabel *)self->_screenSharingLabel trailingAnchor];
  trailingAnchor2 = [(PHRecentCallDetailsItemView *)self trailingAnchor];
  v17 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  [v17 setActive:1];
}

- (PHRecentCallDetailsItemViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end