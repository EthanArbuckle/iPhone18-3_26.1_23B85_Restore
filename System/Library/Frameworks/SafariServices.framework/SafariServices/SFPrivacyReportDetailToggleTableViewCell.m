@interface SFPrivacyReportDetailToggleTableViewCell
- (SFPrivacyReportDetailToggleTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (SFPrivacyReportDetailToggleTableViewCellDelegate)delegate;
- (void)_addSegmentForDetailType:(int64_t)a3;
- (void)_selectDetailType:(int64_t)a3;
- (void)_updateTitle;
- (void)setDetailType:(int64_t)a3;
- (void)setUseCurrentWebsiteHeader:(BOOL)a3;
@end

@implementation SFPrivacyReportDetailToggleTableViewCell

- (SFPrivacyReportDetailToggleTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v43[7] = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = SFPrivacyReportDetailToggleTableViewCell;
  v4 = [(SFPrivacyReportDetailToggleTableViewCell *)&v42 initWithStyle:a3 reuseIdentifier:a4];
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
    v8 = [(SFPrivacyReportDetailToggleTableViewCell *)v4 contentView];
    [v8 addSubview:v4->_segmentedControl];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v9;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v4->_titleLabel setFont:v11];

    v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v12];

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(SFPrivacyReportDetailToggleTableViewCell *)v4 _updateTitle];
    [v8 addSubview:v4->_titleLabel];
    v13 = [v8 layoutMarginsGuide];
    v31 = MEMORY[0x1E696ACD8];
    v41 = [(UISegmentedControl *)v4->_segmentedControl leadingAnchor];
    v40 = [v13 leadingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v43[0] = v39;
    v38 = [(UISegmentedControl *)v4->_segmentedControl trailingAnchor];
    v37 = [v13 trailingAnchor];
    v35 = [v38 constraintEqualToAnchor:v37];
    v43[1] = v35;
    v34 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v36 = v13;
    v33 = [v13 leadingAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v43[2] = v32;
    v30 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v28 = [v13 trailingAnchor];
    v27 = [v30 constraintEqualToAnchor:v28];
    v43[3] = v27;
    v26 = [(UISegmentedControl *)v4->_segmentedControl topAnchor];
    v14 = v8;
    v29 = v8;
    v15 = [v8 topAnchor];
    v16 = [v26 constraintEqualToSystemSpacingBelowAnchor:v15 multiplier:2.0];
    v43[4] = v16;
    v17 = [(UILabel *)v4->_titleLabel topAnchor];
    v18 = [(UISegmentedControl *)v4->_segmentedControl bottomAnchor];
    v19 = [v17 constraintEqualToSystemSpacingBelowAnchor:v18 multiplier:2.0];
    v43[5] = v19;
    v20 = [v14 bottomAnchor];
    v21 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v22 = [v20 constraintEqualToSystemSpacingBelowAnchor:v21 multiplier:0.5];
    v43[6] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:7];
    [v31 activateConstraints:v23];

    v24 = v4;
  }

  return v4;
}

- (void)_addSegmentForDetailType:(int64_t)a3
{
  objc_initWeak(&location, self);
  segmentedControl = self->_segmentedControl;
  v7 = MEMORY[0x1E69DC628];
  if (a3 <= 1)
  {
    v3 = _WBSLocalizedString();
  }

  v8 = @"websites";
  if (a3 == 1)
  {
    v8 = @"trackers";
  }

  v9 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__SFPrivacyReportDetailToggleTableViewCell__addSegmentForDetailType___block_invoke;
  v11[3] = &unk_1E8490888;
  objc_copyWeak(v12, &location);
  v12[1] = a3;
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

- (void)_selectDetailType:(int64_t)a3
{
  self->_detailType = a3;
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
  v4 = [v3 localizedUppercaseString];
  [(UILabel *)self->_titleLabel setText:v4];
}

- (void)setDetailType:(int64_t)a3
{
  if (self->_detailType != a3)
  {
    v10 = v3;
    self->_detailType = a3;
    segmentedControl = self->_segmentedControl;
    if (a3 == 1)
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

- (void)setUseCurrentWebsiteHeader:(BOOL)a3
{
  if (self->_useCurrentWebsiteHeader != a3)
  {
    self->_useCurrentWebsiteHeader = a3;
    [(SFPrivacyReportDetailToggleTableViewCell *)self _updateTitle];
  }
}

- (SFPrivacyReportDetailToggleTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end