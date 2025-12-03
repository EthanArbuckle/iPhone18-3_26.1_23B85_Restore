@interface MKTransitItemIncidentView
- (MKTransitItemIncidentView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInsets;
- (id)_nonBlockingImage;
- (void)_configureWithMessage:(id)message referenceDate:(id)date lastUpdated:(id)updated incidentIsBlocking:(BOOL)blocking shouldShowImage:(BOOL)image inSiri:(BOOL)siri;
- (void)_contentSizeCategoryDidChange;
- (void)_updateBottomConstraintWithOffset:(double)offset;
- (void)_updateConstraintValues;
- (void)configureViews;
- (void)configureWithIncident:(id)incident referenceDate:(id)date shouldShowImage:(BOOL)image inSiri:(BOOL)siri;
- (void)configureWithIncidentMessage:(id)message referenceDate:(id)date shouldShowImage:(BOOL)image inSiri:(BOOL)siri;
- (void)configureWithMessage:(id)message incident:(id)incident referenceDate:(id)date shouldShowImage:(BOOL)image inSiri:(BOOL)siri;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)infoCardThemeChanged;
- (void)rebuildConstraints;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)setPadBottom:(BOOL)bottom;
- (void)updateConstraints;
@end

@implementation MKTransitItemIncidentView

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)rebuildConstraints
{
  self->_needsConstraintsRebuild = 0;
  if (self->_constraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(MKTransitItemIncidentView *)self contentInsets];
  v5 = v4;
  [(MKTransitItemIncidentView *)self contentInsets];
  v7 = v6;
  layoutMarginsGuide = [(MKTransitItemIncidentView *)self layoutMarginsGuide];
  trailingAnchor = [layoutMarginsGuide trailingAnchor];

  leadingAnchor = [(UIImageView *)self->_incidentIconImageView leadingAnchor];
  leadingAnchor2 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v5];
  [(NSArray *)v3 addObject:v11];

  widthAnchor = [(UIImageView *)self->_incidentIconImageView widthAnchor];
  v13 = [widthAnchor constraintEqualToConstant:32.0];
  [(NSArray *)v3 addObject:v13];

  topAnchor = [(UIImageView *)self->_incidentIconImageView topAnchor];
  topAnchor2 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView topAnchor];
  v16 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  [(NSArray *)v3 addObject:v16];

  bottomAnchor = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView bottomAnchor];
  bottomAnchor2 = [(UIImageView *)self->_incidentIconImageView bottomAnchor];
  v19 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  [(NSArray *)v3 addObject:v19];

  centerYAnchor = [(UIImageView *)self->_incidentIconImageView centerYAnchor];
  centerYAnchor2 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView centerYAnchor];
  v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [(NSArray *)v3 addObject:v22];

  firstBaselineAnchor = [(_MKUILabel *)self->_titleLabel firstBaselineAnchor];
  topAnchor3 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView topAnchor];
  v25 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3];
  titleLabelToTopConstraint = self->_titleLabelToTopConstraint;
  self->_titleLabelToTopConstraint = v25;

  [(NSArray *)v3 addObject:self->_titleLabelToTopConstraint];
  leadingAnchor3 = [(_MKUILabel *)self->_titleLabel leadingAnchor];
  trailingAnchor2 = [(UIImageView *)self->_incidentIconImageView trailingAnchor];
  v29 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor2 constant:10.0];
  [(NSArray *)v3 addObject:v29];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  self->_useCondensedWidthLayout = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  LODWORD(preferredContentSizeCategory) = self->_useCondensedWidthLayout;
  leadingAnchor4 = [(_MKUILabel *)self->_lastUpdatedLabel leadingAnchor];
  titleLabel = self->_titleLabel;
  if (preferredContentSizeCategory == 1)
  {
    leadingAnchor5 = [(_MKUILabel *)titleLabel leadingAnchor];
    v35 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    [(NSArray *)v3 addObject:v35];

    trailingAnchor3 = [(_MKUILabel *)self->_lastUpdatedLabel trailingAnchor];
    trailingAnchor4 = [(_MKUILabel *)self->_titleLabel trailingAnchor];
    v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [(NSArray *)v3 addObject:v38];

    trailingAnchor5 = [(_MKUILabel *)self->_titleLabel trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor5 constant:v7];
    [(NSArray *)v3 addObject:v40];

    firstBaselineAnchor2 = [(_MKUILabel *)self->_lastUpdatedLabel firstBaselineAnchor];
    lastBaselineAnchor = [(_MKUILabel *)self->_titleLabel lastBaselineAnchor];
    v43 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor];
    titleToLastUpdatedLabelConstraint = self->_titleToLastUpdatedLabelConstraint;
    self->_titleToLastUpdatedLabelConstraint = v43;

    [(NSArray *)v3 addObject:self->_titleToLastUpdatedLabelConstraint];
    bottomAnchor3 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView bottomAnchor];
    lastBaselineAnchor2 = [(_MKUILabel *)self->_lastUpdatedLabel lastBaselineAnchor];
    v47 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor2];
    bottomToLabelConstraint = self->_bottomToLabelConstraint;
    self->_bottomToLabelConstraint = v47;

    [(NSArray *)v3 addObject:self->_bottomToLabelConstraint];
  }

  else
  {
    trailingAnchor6 = [(_MKUILabel *)titleLabel trailingAnchor];
    v50 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor6 constant:10.0];
    [(NSArray *)v3 addObject:v50];

    firstBaselineAnchor3 = [(_MKUILabel *)self->_lastUpdatedLabel firstBaselineAnchor];
    firstBaselineAnchor4 = [(_MKUILabel *)self->_titleLabel firstBaselineAnchor];
    v53 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4];
    [(NSArray *)v3 addObject:v53];

    trailingAnchor7 = [(_MKUILabel *)self->_lastUpdatedLabel trailingAnchor];
    v55 = [trailingAnchor constraintEqualToAnchor:trailingAnchor7 constant:v7];
    [(NSArray *)v3 addObject:v55];

    bottomAnchor4 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView bottomAnchor];
    lastBaselineAnchor3 = [(_MKUILabel *)self->_titleLabel lastBaselineAnchor];
    v58 = [bottomAnchor4 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor3];
    v59 = self->_bottomToLabelConstraint;
    self->_bottomToLabelConstraint = v58;

    [(NSArray *)v3 addObject:self->_bottomToLabelConstraint];
    v60 = self->_titleToLastUpdatedLabelConstraint;
    self->_titleToLastUpdatedLabelConstraint = 0;
  }

  [(MKTransitItemIncidentView *)self _updateConstraintValues];
  constraints = self->_constraints;
  self->_constraints = v3;
  v62 = v3;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
}

- (void)updateConstraints
{
  if (self->_needsConstraintsRebuild)
  {
    [(MKTransitItemIncidentView *)self rebuildConstraints];
  }

  v3.receiver = self;
  v3.super_class = MKTransitItemIncidentView;
  [(MKTransitItemIncidentView *)&v3 updateConstraints];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MKTransitItemIncidentView;
  [(MKTransitItemIncidentView *)&v3 didMoveToWindow];
  [(MKTransitItemIncidentView *)self _updateConstraintValues];
}

- (void)_updateConstraintValues
{
  font = [(_MKUILabel *)self->_titleLabel font];
  [font _mapkit_scaledValueForValue:30.0];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_titleLabelToTopConstraint setConstant:?];

  secondItem = [(NSLayoutConstraint *)self->_bottomToLabelConstraint secondItem];
  font2 = [secondItem font];
  [font2 _mapkit_scaledValueForValue:20.0];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_bottomToLabelConstraint setConstant:?];

  if (self->_titleToLastUpdatedLabelConstraint)
  {
    attributedText = [(_MKUILabel *)self->_lastUpdatedLabel attributedText];
    if ([attributedText length])
    {
      font3 = [(_MKUILabel *)self->_lastUpdatedLabel font];
      [font3 _mapkit_lineHeight];
      UIRoundToViewScale();
      [(NSLayoutConstraint *)self->_titleToLastUpdatedLabelConstraint setConstant:?];
    }

    else
    {
      [(NSLayoutConstraint *)self->_titleToLastUpdatedLabelConstraint setConstant:0.0];
    }
  }

  [(MKTransitItemIncidentView *)self _updateBottomConstraintWithOffset:self->_bottomToBackgroundOffset];
}

- (void)_contentSizeCategoryDidChange
{
  useCondensedWidthLayout = self->_useCondensedWidthLayout;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  self->_needsConstraintsRebuild = useCondensedWidthLayout != UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v6 = MEMORY[0x1E69DB878];
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [v7 pointSize];
  v8 = [v6 systemFontOfSize:? weight:?];
  [(_MKUILabel *)self->_titleLabel setFont:v8];

  v9 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0];
  [(_MKUILabel *)self->_lastUpdatedLabel setFont:v9];

  if (self->_needsConstraintsRebuild)
  {

    [(UIView *)self _mapkit_setNeedsUpdateConstraints];
  }

  else
  {

    [(MKTransitItemIncidentView *)self _updateConstraintValues];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MKTransitItemIncidentView;
  [(MKTransitItemIncidentView *)&v4 dealloc];
}

- (id)_nonBlockingImage
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  mEMORY[0x1E69DF430] = [MEMORY[0x1E69DF430] sharedManager];
  trafficIncidentTypeKey = [mEMORY[0x1E69DF430] trafficIncidentTypeKey];

  mEMORY[0x1E69DF430]2 = [MEMORY[0x1E69DF430] sharedManager];
  *&v8 = v4;
  v9 = [mEMORY[0x1E69DF430]2 imageForKey:trafficIncidentTypeKey value:4 contentScale:7 sizeGroup:0 modifiers:v8];

  if (v9 && (v10 = CGImageRetain([v9 image])) != 0)
  {
    v11 = v10;
    v12 = MEMORY[0x1E69DCAB8];
    [v9 contentScale];
    v14 = [v12 imageWithCGImage:v11 scale:0 orientation:v13];
    CGImageRelease(v11);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_updateBottomConstraintWithOffset:(double)offset
{
  self->_bottomToBackgroundOffset = offset;
  padBottom = [(MKTransitItemIncidentView *)self padBottom];
  bottomToBackgroundOffset = 10.0;
  if (!padBottom)
  {
    bottomToBackgroundOffset = self->_bottomToBackgroundOffset;
  }

  bottomToBackgroundConstraint = self->_bottomToBackgroundConstraint;

  [(NSLayoutConstraint *)bottomToBackgroundConstraint setConstant:bottomToBackgroundOffset];
}

- (void)setPadBottom:(BOOL)bottom
{
  if (self->_padBottom != bottom)
  {
    self->_padBottom = bottom;
    [(MKTransitItemIncidentView *)self _updateBottomConstraintWithOffset:self->_bottomToBackgroundOffset];
  }
}

- (void)infoCardThemeChanged
{
  v19.receiver = self;
  v19.super_class = MKTransitItemIncidentView;
  [(UIView *)&v19 infoCardThemeChanged];
  traitCollection = [(MKTransitItemIncidentView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    mk_theme = [(UIView *)self mk_theme];
    transitIncidentBackgroundColor = [mk_theme transitIncidentBackgroundColor];
    [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView setFillColor:transitIncidentBackgroundColor];

    [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView setStrokeColor:0];
    v7 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDCF8]];
    [(_MKUILabel *)self->_titleLabel setFont:v7];

    mk_theme3 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0];
    [(_MKUILabel *)self->_lastUpdatedLabel setFont:mk_theme3];
  }

  else
  {
    v9 = MEMORY[0x1E69DB878];
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [v10 pointSize];
    v11 = [v9 systemFontOfSize:? weight:?];
    [(_MKUILabel *)self->_titleLabel setFont:v11];

    v12 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0];
    [(_MKUILabel *)self->_lastUpdatedLabel setFont:v12];

    mk_theme2 = [(UIView *)self mk_theme];
    themeType = [mk_theme2 themeType];

    if (themeType >= 2)
    {
      if (themeType != 2)
      {
        return;
      }

      mk_theme3 = [(UIView *)self mk_theme];
      transitIncidentBackgroundColor2 = [mk_theme3 transitIncidentBackgroundColor];
      [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView setFillColor:transitIncidentBackgroundColor2];
    }

    else
    {
      if (self->_incidentIsBlocking)
      {
        v15 = 0.949019611;
        v16 = 0.286274523;
        v17 = 0.200000003;
      }

      else
      {
        v16 = 0.686274529;
        v15 = 1.0;
        v17 = 0.0;
      }

      mk_theme3 = [MEMORY[0x1E69DC888] colorWithRed:v15 green:v16 blue:v17 alpha:0.100000001];
      [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView setFillColor:mk_theme3];
    }
  }
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInsets.top), vceqq_f64(v4, *&self->_contentInsets.bottom)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    self->_needsConstraintsRebuild = 1;
    [(UIView *)self _mapkit_setNeedsUpdateConstraints];
  }
}

- (void)_configureWithMessage:(id)message referenceDate:(id)date lastUpdated:(id)updated incidentIsBlocking:(BOOL)blocking shouldShowImage:(BOOL)image inSiri:(BOOL)siri
{
  imageCopy = image;
  v26[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dateCopy = date;
  updatedCopy = updated;
  v15 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  LODWORD(v16) = 1058642330;
  [v15 setHyphenationFactor:v16];
  v25 = *MEMORY[0x1E69DB688];
  v26[0] = v15;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v18 = &stru_1F15B23C0;
  if (messageCopy)
  {
    v18 = messageCopy;
  }

  v19 = v18;
  v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v19 attributes:v17];
  [(_MKUILabel *)self->_titleLabel setAttributedText:v20];

  if (dateCopy && updatedCopy)
  {
    v21 = [MEMORY[0x1E696AB70] _mapkit_descriptionForTimeSinceDate:updatedCopy referenceDate:dateCopy];

    v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v21 attributes:v17];
    [(_MKUILabel *)self->_lastUpdatedLabel setAttributedText:v22];

    v19 = v21;
  }

  else
  {
    [(_MKUILabel *)self->_lastUpdatedLabel setAttributedText:0];
  }

  self->_incidentIsBlocking = blocking;
  [(MKTransitItemIncidentView *)self infoCardThemeChanged];
  if (imageCopy)
  {
    if (self->_incidentIsBlocking)
    {
      [(MKTransitItemIncidentView *)self _blockingImage];
    }

    else
    {
      [(MKTransitItemIncidentView *)self _nonBlockingImage];
    }
    v23 = ;
    [(UIImageView *)self->_incidentIconImageView setImage:v23];
  }

  else
  {
    [(UIImageView *)self->_incidentIconImageView setImage:0];
  }
}

- (void)configureWithIncidentMessage:(id)message referenceDate:(id)date shouldShowImage:(BOOL)image inSiri:(BOOL)siri
{
  siriCopy = siri;
  imageCopy = image;
  messageCopy = message;
  dateCopy = date;
  transitIncidents = [messageCopy transitIncidents];
  v13 = [transitIncidents count];

  if (v13 == 1)
  {
    transitIncidents2 = [messageCopy transitIncidents];
    firstObject = [transitIncidents2 firstObject];
    [(MKTransitItemIncidentView *)self configureWithIncident:firstObject referenceDate:dateCopy shouldShowImage:imageCopy inSiri:siriCopy];
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    transitIncidents3 = [messageCopy transitIncidents];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __95__MKTransitItemIncidentView_configureWithIncidentMessage_referenceDate_shouldShowImage_inSiri___block_invoke;
    v18[3] = &unk_1E76C93B8;
    v18[4] = &v19;
    [transitIncidents3 enumerateObjectsUsingBlock:v18];

    routingMessage = [messageCopy routingMessage];
    [(MKTransitItemIncidentView *)self _configureWithMessage:routingMessage referenceDate:0 lastUpdated:0 incidentIsBlocking:*(v20 + 24) shouldShowImage:imageCopy inSiri:siriCopy];

    _Block_object_dispose(&v19, 8);
  }
}

uint64_t __95__MKTransitItemIncidentView_configureWithIncidentMessage_referenceDate_shouldShowImage_inSiri___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isBlockingIncident];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)configureWithMessage:(id)message incident:(id)incident referenceDate:(id)date shouldShowImage:(BOOL)image inSiri:(BOOL)siri
{
  siriCopy = siri;
  imageCopy = image;
  dateCopy = date;
  incidentCopy = incident;
  messageCopy = message;
  lastUpdated = [incidentCopy lastUpdated];
  isBlockingIncident = [incidentCopy isBlockingIncident];

  [(MKTransitItemIncidentView *)self _configureWithMessage:messageCopy referenceDate:dateCopy lastUpdated:lastUpdated incidentIsBlocking:isBlockingIncident shouldShowImage:imageCopy inSiri:siriCopy];
}

- (void)configureWithIncident:(id)incident referenceDate:(id)date shouldShowImage:(BOOL)image inSiri:(BOOL)siri
{
  siriCopy = siri;
  imageCopy = image;
  dateCopy = date;
  incidentCopy = incident;
  v14 = [MKTransitIncidentStringProvider cellTitleForIncident:incidentCopy];
  lastUpdated = [incidentCopy lastUpdated];
  isBlockingIncident = [incidentCopy isBlockingIncident];

  [(MKTransitItemIncidentView *)self _configureWithMessage:v14 referenceDate:dateCopy lastUpdated:lastUpdated incidentIsBlocking:isBlockingIncident shouldShowImage:imageCopy inSiri:siriCopy];
}

- (void)configureViews
{
  v34[4] = *MEMORY[0x1E69E9840];
  self->_contentInsets = *ymmword_1A30F7180;
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  incidentIconImageView = self->_incidentIconImageView;
  self->_incidentIconImageView = v4;

  [(UIImageView *)self->_incidentIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKTransitItemIncidentView *)self addSubview:self->_incidentIconImageView];
  self->_needsConstraintsRebuild = 1;
  [(UIImageView *)self->_incidentIconImageView setContentMode:1];
  v6 = objc_alloc_init(MKTransitIncidentItemCellBackgroundView);
  backgroundView = self->_backgroundView;
  self->_backgroundView = v6;

  [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKTransitItemIncidentView *)self addSubview:self->_backgroundView];
  [(MKTransitItemIncidentView *)self sendSubviewToBack:self->_backgroundView];
  bottomAnchor = [(MKTransitItemIncidentView *)self bottomAnchor];
  bottomAnchor2 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  bottomToBackgroundConstraint = self->_bottomToBackgroundConstraint;
  self->_bottomToBackgroundConstraint = v10;

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  leadingAnchor = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView leadingAnchor];
  layoutMarginsGuide = [(MKTransitItemIncidentView *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v34[0] = v30;
  trailingAnchor = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView trailingAnchor];
  layoutMarginsGuide2 = [(MKTransitItemIncidentView *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v34[1] = v15;
  topAnchor = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView topAnchor];
  topAnchor2 = [(MKTransitItemIncidentView *)self topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v19 = self->_bottomToBackgroundConstraint;
  v34[2] = v18;
  v34[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
  [v12 addObjectsFromArray:v20];

  v21 = objc_alloc_init(_MKUILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v21;

  [(_MKUILabel *)self->_titleLabel set_mapkit_themeColorProvider:&__block_literal_global_21232];
  [(_MKUILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_MKUILabel *)self->_titleLabel setTextAlignment:4];
  [(_MKUILabel *)self->_titleLabel setNumberOfLines:0];
  [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView addSubview:self->_titleLabel];
  v23 = objc_alloc_init(_MKUILabel);
  lastUpdatedLabel = self->_lastUpdatedLabel;
  self->_lastUpdatedLabel = v23;

  LODWORD(v25) = 1148846080;
  [(UIView *)self->_lastUpdatedLabel _mapkit_setContentHuggingPriority:0 forAxis:v25];
  LODWORD(v26) = 1148829696;
  [(UIView *)self->_lastUpdatedLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v26];
  [(_MKUILabel *)self->_lastUpdatedLabel set_mapkit_themeColorProvider:&__block_literal_global_6];
  [(_MKUILabel *)self->_lastUpdatedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  if (MKApplicationLayoutDirectionIsRightToLeft())
  {
    v27 = 0;
  }

  else
  {
    v27 = 2;
  }

  [(_MKUILabel *)self->_lastUpdatedLabel setTextAlignment:v27];
  [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView addSubview:self->_lastUpdatedLabel];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

  [(MKTransitItemIncidentView *)self _updateConstraintValues];
  [MEMORY[0x1E696ACD8] activateConstraints:v12];
}

- (MKTransitItemIncidentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MKTransitItemIncidentView;
  v3 = [(MKTransitItemIncidentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKTransitItemIncidentView *)v3 configureViews];
  }

  return v4;
}

@end