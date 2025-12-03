@interface SFPrivacyReportDetailToggleTableViewCell
- (SFPrivacyReportDetailToggleTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (SFPrivacyReportDetailToggleTableViewCellDelegate)delegate;
- (void)_addSegmentForDetailType:(int64_t)type;
- (void)_selectDetailType:(int64_t)type;
- (void)_updateTitle;
- (void)setDetailType:(int64_t)type;
- (void)setUseCurrentWebsiteHeader:(BOOL)header;
@end

@implementation SFPrivacyReportDetailToggleTableViewCell

- (SFPrivacyReportDetailToggleTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v43[7] = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = SFPrivacyReportDetailToggleTableViewCell;
  v4 = [(SFPrivacyReportDetailToggleTableViewCell *)&v42 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCF38]);
    segmentedControl = v4->_segmentedControl;
    v4->_segmentedControl = v5;

    [(UISegmentedControl *)v4->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFPrivacyReportDetailToggleTableViewCell *)v4 _addSegmentForDetailType:0];
    [(SFPrivacyReportDetailToggleTableViewCell *)v4 _addSegmentForDetailType:1];
    if (v4->_detailType == 1)
    {
      v7 = @"trackers";
    }

    else
    {
      v7 = @"websites";
    }

    [(UISegmentedControl *)v4->_segmentedControl setSelectedSegmentIndex:[(UISegmentedControl *)v4->_segmentedControl segmentIndexForActionIdentifier:v7]];
    contentView = [(SFPrivacyReportDetailToggleTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_segmentedControl];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v9;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v4->_titleLabel setFont:v11];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_titleLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(SFPrivacyReportDetailToggleTableViewCell *)v4 _updateTitle];
    [contentView addSubview:v4->_titleLabel];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    v31 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UISegmentedControl *)v4->_segmentedControl leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v43[0] = v39;
    trailingAnchor = [(UISegmentedControl *)v4->_segmentedControl trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v43[1] = v35;
    leadingAnchor3 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v36 = layoutMarginsGuide;
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v43[2] = v32;
    trailingAnchor3 = [(UILabel *)v4->_titleLabel trailingAnchor];
    trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
    v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v43[3] = v27;
    topAnchor = [(UISegmentedControl *)v4->_segmentedControl topAnchor];
    v14 = contentView;
    v29 = contentView;
    topAnchor2 = [contentView topAnchor];
    v16 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:2.0];
    v43[4] = v16;
    topAnchor3 = [(UILabel *)v4->_titleLabel topAnchor];
    bottomAnchor = [(UISegmentedControl *)v4->_segmentedControl bottomAnchor];
    v19 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:2.0];
    v43[5] = v19;
    bottomAnchor2 = [v14 bottomAnchor];
    bottomAnchor3 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v22 = [bottomAnchor2 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:0.5];
    v43[6] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:7];
    [v31 activateConstraints:v23];

    v24 = v4;
  }

  return v4;
}

- (void)_addSegmentForDetailType:(int64_t)type
{
  objc_initWeak(&location, self);
  segmentedControl = self->_segmentedControl;
  v7 = MEMORY[0x1E69DC628];
  if (type <= 1)
  {
    v3 = _WBSLocalizedString();
  }

  v8 = @"websites";
  if (type == 1)
  {
    v8 = @"trackers";
  }

  v9 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__SFPrivacyReportDetailToggleTableViewCell__addSegmentForDetailType___block_invoke;
  v11[3] = &unk_1E8490888;
  objc_copyWeak(v12, &location);
  v12[1] = type;
  v10 = [v7 actionWithTitle:v3 image:0 identifier:v9 handler:v11];
  [(UISegmentedControl *)segmentedControl insertSegmentWithAction:v10 atIndex:[(UISegmentedControl *)self->_segmentedControl numberOfSegments] animated:0];

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __69__SFPrivacyReportDetailToggleTableViewCell__addSegmentForDetailType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _selectDetailType:*(a1 + 40)];
}

- (void)_selectDetailType:(int64_t)type
{
  self->_detailType = type;
  [(SFPrivacyReportDetailToggleTableViewCell *)self _updateTitle];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained cellDidToggleDetailType:self];
  }
}

- (void)_updateTitle
{
  if (self->_detailType > 1uLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = _WBSLocalizedString();
  }

  v5 = v3;
  localizedUppercaseString = [v3 localizedUppercaseString];
  [(UILabel *)self->_titleLabel setText:localizedUppercaseString];
}

- (void)setDetailType:(int64_t)type
{
  if (self->_detailType != type)
  {
    v10 = v3;
    self->_detailType = type;
    segmentedControl = self->_segmentedControl;
    if (type == 1)
    {
      v9 = @"trackers";
    }

    else
    {
      v9 = @"websites";
    }

    [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:[(UISegmentedControl *)segmentedControl segmentIndexForActionIdentifier:v9, v4, v10, v5]];

    [(SFPrivacyReportDetailToggleTableViewCell *)self _updateTitle];
  }
}

- (void)setUseCurrentWebsiteHeader:(BOOL)header
{
  if (self->_useCurrentWebsiteHeader != header)
  {
    self->_useCurrentWebsiteHeader = header;
    [(SFPrivacyReportDetailToggleTableViewCell *)self _updateTitle];
  }
}

- (SFPrivacyReportDetailToggleTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end