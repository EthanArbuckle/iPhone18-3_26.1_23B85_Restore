@interface MKTransitItemIncidentView
- (MKTransitItemIncidentView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInsets;
- (id)_nonBlockingImage;
- (void)_configureWithMessage:(id)a3 referenceDate:(id)a4 lastUpdated:(id)a5 incidentIsBlocking:(BOOL)a6 shouldShowImage:(BOOL)a7 inSiri:(BOOL)a8;
- (void)_contentSizeCategoryDidChange;
- (void)_updateBottomConstraintWithOffset:(double)a3;
- (void)_updateConstraintValues;
- (void)configureViews;
- (void)configureWithIncident:(id)a3 referenceDate:(id)a4 shouldShowImage:(BOOL)a5 inSiri:(BOOL)a6;
- (void)configureWithIncidentMessage:(id)a3 referenceDate:(id)a4 shouldShowImage:(BOOL)a5 inSiri:(BOOL)a6;
- (void)configureWithMessage:(id)a3 incident:(id)a4 referenceDate:(id)a5 shouldShowImage:(BOOL)a6 inSiri:(BOOL)a7;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)infoCardThemeChanged;
- (void)rebuildConstraints;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setPadBottom:(BOOL)a3;
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
  v8 = [(MKTransitItemIncidentView *)self layoutMarginsGuide];
  v63 = [v8 trailingAnchor];

  v9 = [(UIImageView *)self->_incidentIconImageView leadingAnchor];
  v10 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:v5];
  [(NSArray *)v3 addObject:v11];

  v12 = [(UIImageView *)self->_incidentIconImageView widthAnchor];
  v13 = [v12 constraintEqualToConstant:32.0];
  [(NSArray *)v3 addObject:v13];

  v14 = [(UIImageView *)self->_incidentIconImageView topAnchor];
  v15 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView topAnchor];
  v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15];
  [(NSArray *)v3 addObject:v16];

  v17 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView bottomAnchor];
  v18 = [(UIImageView *)self->_incidentIconImageView bottomAnchor];
  v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18];
  [(NSArray *)v3 addObject:v19];

  v20 = [(UIImageView *)self->_incidentIconImageView centerYAnchor];
  v21 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  [(NSArray *)v3 addObject:v22];

  v23 = [(_MKUILabel *)self->_titleLabel firstBaselineAnchor];
  v24 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  titleLabelToTopConstraint = self->_titleLabelToTopConstraint;
  self->_titleLabelToTopConstraint = v25;

  [(NSArray *)v3 addObject:self->_titleLabelToTopConstraint];
  v27 = [(_MKUILabel *)self->_titleLabel leadingAnchor];
  v28 = [(UIImageView *)self->_incidentIconImageView trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:10.0];
  [(NSArray *)v3 addObject:v29];

  v30 = [MEMORY[0x1E69DC668] sharedApplication];
  v31 = [v30 preferredContentSizeCategory];
  self->_useCondensedWidthLayout = UIContentSizeCategoryIsAccessibilityCategory(v31);

  LODWORD(v31) = self->_useCondensedWidthLayout;
  v32 = [(_MKUILabel *)self->_lastUpdatedLabel leadingAnchor];
  titleLabel = self->_titleLabel;
  if (v31 == 1)
  {
    v34 = [(_MKUILabel *)titleLabel leadingAnchor];
    v35 = [v32 constraintEqualToAnchor:v34];
    [(NSArray *)v3 addObject:v35];

    v36 = [(_MKUILabel *)self->_lastUpdatedLabel trailingAnchor];
    v37 = [(_MKUILabel *)self->_titleLabel trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    [(NSArray *)v3 addObject:v38];

    v39 = [(_MKUILabel *)self->_titleLabel trailingAnchor];
    v40 = [v63 constraintEqualToAnchor:v39 constant:v7];
    [(NSArray *)v3 addObject:v40];

    v41 = [(_MKUILabel *)self->_lastUpdatedLabel firstBaselineAnchor];
    v42 = [(_MKUILabel *)self->_titleLabel lastBaselineAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    titleToLastUpdatedLabelConstraint = self->_titleToLastUpdatedLabelConstraint;
    self->_titleToLastUpdatedLabelConstraint = v43;

    [(NSArray *)v3 addObject:self->_titleToLastUpdatedLabelConstraint];
    v45 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView bottomAnchor];
    v46 = [(_MKUILabel *)self->_lastUpdatedLabel lastBaselineAnchor];
    v47 = [v45 constraintGreaterThanOrEqualToAnchor:v46];
    bottomToLabelConstraint = self->_bottomToLabelConstraint;
    self->_bottomToLabelConstraint = v47;

    [(NSArray *)v3 addObject:self->_bottomToLabelConstraint];
  }

  else
  {
    v49 = [(_MKUILabel *)titleLabel trailingAnchor];
    v50 = [v32 constraintGreaterThanOrEqualToAnchor:v49 constant:10.0];
    [(NSArray *)v3 addObject:v50];

    v51 = [(_MKUILabel *)self->_lastUpdatedLabel firstBaselineAnchor];
    v52 = [(_MKUILabel *)self->_titleLabel firstBaselineAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];
    [(NSArray *)v3 addObject:v53];

    v54 = [(_MKUILabel *)self->_lastUpdatedLabel trailingAnchor];
    v55 = [v63 constraintEqualToAnchor:v54 constant:v7];
    [(NSArray *)v3 addObject:v55];

    v56 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView bottomAnchor];
    v57 = [(_MKUILabel *)self->_titleLabel lastBaselineAnchor];
    v58 = [v56 constraintGreaterThanOrEqualToAnchor:v57];
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
  v3 = [(_MKUILabel *)self->_titleLabel font];
  [v3 _mapkit_scaledValueForValue:30.0];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_titleLabelToTopConstraint setConstant:?];

  v7 = [(NSLayoutConstraint *)self->_bottomToLabelConstraint secondItem];
  v4 = [v7 font];
  [v4 _mapkit_scaledValueForValue:20.0];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_bottomToLabelConstraint setConstant:?];

  if (self->_titleToLastUpdatedLabelConstraint)
  {
    v5 = [(_MKUILabel *)self->_lastUpdatedLabel attributedText];
    if ([v5 length])
    {
      v6 = [(_MKUILabel *)self->_lastUpdatedLabel font];
      [v6 _mapkit_lineHeight];
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
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 preferredContentSizeCategory];
  self->_needsConstraintsRebuild = useCondensedWidthLayout != UIContentSizeCategoryIsAccessibilityCategory(v5);

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MKTransitItemIncidentView;
  [(MKTransitItemIncidentView *)&v4 dealloc];
}

- (id)_nonBlockingImage
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = [MEMORY[0x1E69DF430] sharedManager];
  v6 = [v5 trafficIncidentTypeKey];

  v7 = [MEMORY[0x1E69DF430] sharedManager];
  *&v8 = v4;
  v9 = [v7 imageForKey:v6 value:4 contentScale:7 sizeGroup:0 modifiers:v8];

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

- (void)_updateBottomConstraintWithOffset:(double)a3
{
  self->_bottomToBackgroundOffset = a3;
  v4 = [(MKTransitItemIncidentView *)self padBottom];
  bottomToBackgroundOffset = 10.0;
  if (!v4)
  {
    bottomToBackgroundOffset = self->_bottomToBackgroundOffset;
  }

  bottomToBackgroundConstraint = self->_bottomToBackgroundConstraint;

  [(NSLayoutConstraint *)bottomToBackgroundConstraint setConstant:bottomToBackgroundOffset];
}

- (void)setPadBottom:(BOOL)a3
{
  if (self->_padBottom != a3)
  {
    self->_padBottom = a3;
    [(MKTransitItemIncidentView *)self _updateBottomConstraintWithOffset:self->_bottomToBackgroundOffset];
  }
}

- (void)infoCardThemeChanged
{
  v19.receiver = self;
  v19.super_class = MKTransitItemIncidentView;
  [(UIView *)&v19 infoCardThemeChanged];
  v3 = [(MKTransitItemIncidentView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    v5 = [(UIView *)self mk_theme];
    v6 = [v5 transitIncidentBackgroundColor];
    [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView setFillColor:v6];

    [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView setStrokeColor:0];
    v7 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDCF8]];
    [(_MKUILabel *)self->_titleLabel setFont:v7];

    v8 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0];
    [(_MKUILabel *)self->_lastUpdatedLabel setFont:v8];
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

    v13 = [(UIView *)self mk_theme];
    v14 = [v13 themeType];

    if (v14 >= 2)
    {
      if (v14 != 2)
      {
        return;
      }

      v8 = [(UIView *)self mk_theme];
      v18 = [v8 transitIncidentBackgroundColor];
      [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView setFillColor:v18];
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

      v8 = [MEMORY[0x1E69DC888] colorWithRed:v15 green:v16 blue:v17 alpha:0.100000001];
      [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView setFillColor:v8];
    }
  }
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInsets.top), vceqq_f64(v4, *&self->_contentInsets.bottom)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    self->_needsConstraintsRebuild = 1;
    [(UIView *)self _mapkit_setNeedsUpdateConstraints];
  }
}

- (void)_configureWithMessage:(id)a3 referenceDate:(id)a4 lastUpdated:(id)a5 incidentIsBlocking:(BOOL)a6 shouldShowImage:(BOOL)a7 inSiri:(BOOL)a8
{
  v24 = a7;
  v26[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  LODWORD(v16) = 1058642330;
  [v15 setHyphenationFactor:v16];
  v25 = *MEMORY[0x1E69DB688];
  v26[0] = v15;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v18 = &stru_1F15B23C0;
  if (v12)
  {
    v18 = v12;
  }

  v19 = v18;
  v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v19 attributes:v17];
  [(_MKUILabel *)self->_titleLabel setAttributedText:v20];

  if (v13 && v14)
  {
    v21 = [MEMORY[0x1E696AB70] _mapkit_descriptionForTimeSinceDate:v14 referenceDate:v13];

    v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v21 attributes:v17];
    [(_MKUILabel *)self->_lastUpdatedLabel setAttributedText:v22];

    v19 = v21;
  }

  else
  {
    [(_MKUILabel *)self->_lastUpdatedLabel setAttributedText:0];
  }

  self->_incidentIsBlocking = a6;
  [(MKTransitItemIncidentView *)self infoCardThemeChanged];
  if (v24)
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

- (void)configureWithIncidentMessage:(id)a3 referenceDate:(id)a4 shouldShowImage:(BOOL)a5 inSiri:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [v10 transitIncidents];
  v13 = [v12 count];

  if (v13 == 1)
  {
    v14 = [v10 transitIncidents];
    v15 = [v14 firstObject];
    [(MKTransitItemIncidentView *)self configureWithIncident:v15 referenceDate:v11 shouldShowImage:v7 inSiri:v6];
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v16 = [v10 transitIncidents];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __95__MKTransitItemIncidentView_configureWithIncidentMessage_referenceDate_shouldShowImage_inSiri___block_invoke;
    v18[3] = &unk_1E76C93B8;
    v18[4] = &v19;
    [v16 enumerateObjectsUsingBlock:v18];

    v17 = [v10 routingMessage];
    [(MKTransitItemIncidentView *)self _configureWithMessage:v17 referenceDate:0 lastUpdated:0 incidentIsBlocking:*(v20 + 24) shouldShowImage:v7 inSiri:v6];

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

- (void)configureWithMessage:(id)a3 incident:(id)a4 referenceDate:(id)a5 shouldShowImage:(BOOL)a6 inSiri:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v16 = [v13 lastUpdated];
  v15 = [v13 isBlockingIncident];

  [(MKTransitItemIncidentView *)self _configureWithMessage:v14 referenceDate:v12 lastUpdated:v16 incidentIsBlocking:v15 shouldShowImage:v8 inSiri:v7];
}

- (void)configureWithIncident:(id)a3 referenceDate:(id)a4 shouldShowImage:(BOOL)a5 inSiri:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a4;
  v11 = a3;
  v14 = [MKTransitIncidentStringProvider cellTitleForIncident:v11];
  v12 = [v11 lastUpdated];
  v13 = [v11 isBlockingIncident];

  [(MKTransitItemIncidentView *)self _configureWithMessage:v14 referenceDate:v10 lastUpdated:v12 incidentIsBlocking:v13 shouldShowImage:v7 inSiri:v6];
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
  v8 = [(MKTransitItemIncidentView *)self bottomAnchor];
  v9 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  bottomToBackgroundConstraint = self->_bottomToBackgroundConstraint;
  self->_bottomToBackgroundConstraint = v10;

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView leadingAnchor];
  v33 = [(MKTransitItemIncidentView *)self layoutMarginsGuide];
  v31 = [v33 leadingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v34[0] = v30;
  v29 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView trailingAnchor];
  v13 = [(MKTransitItemIncidentView *)self layoutMarginsGuide];
  v14 = [v13 trailingAnchor];
  v15 = [v29 constraintEqualToAnchor:v14];
  v34[1] = v15;
  v16 = [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView topAnchor];
  v17 = [(MKTransitItemIncidentView *)self topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
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
  v28 = [MEMORY[0x1E696AD88] defaultCenter];
  [v28 addObserver:self selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

  [(MKTransitItemIncidentView *)self _updateConstraintValues];
  [MEMORY[0x1E696ACD8] activateConstraints:v12];
}

- (MKTransitItemIncidentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MKTransitItemIncidentView;
  v3 = [(MKTransitItemIncidentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKTransitItemIncidentView *)v3 configureViews];
  }

  return v4;
}

@end