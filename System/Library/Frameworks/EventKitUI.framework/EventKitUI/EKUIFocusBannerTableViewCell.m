@interface EKUIFocusBannerTableViewCell
- (EKUIFocusBannerTableViewCell)initWithReuseIdentifier:(id)a3;
- (EKUIFocusBannerTableViewCellDelegate)delegate;
- (NSDirectionalEdgeInsets)customEdgeInsets;
- (id)_configuration;
- (id)_focusFilterButtonConfiguration;
- (void)_tapped;
- (void)_updateView;
- (void)setOn:(BOOL)a3;
@end

@implementation EKUIFocusBannerTableViewCell

- (EKUIFocusBannerTableViewCell)initWithReuseIdentifier:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = EKUIFocusBannerTableViewCell;
  v5 = [(EKUIFocusBannerTableViewCell *)&v26 initWithStyle:0 reuseIdentifier:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69DCC30]);
    v7 = [v5 _configuration];
    v8 = [v6 initWithConfiguration:v7];
    v9 = *(v5 + 129);
    *(v5 + 129) = v8;

    [*(v5 + 129) setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v5 contentView];
    [v10 addSubview:*(v5 + 129)];

    v11 = [MEMORY[0x1E69DC738] buttonWithType:1];
    v12 = *(v5 + 128);
    *(v5 + 128) = v11;

    v13 = [v5 _focusFilterButtonConfiguration];
    [*(v5 + 128) setConfiguration:v13];

    [*(v5 + 128) setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1148846080;
    [*(v5 + 128) setContentCompressionResistancePriority:0 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [*(v5 + 128) setContentCompressionResistancePriority:1 forAxis:v15];
    v16 = [v5 contentView];
    [v16 addSubview:*(v5 + 128)];

    objc_initWeak(&location, v5);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __56__EKUIFocusBannerTableViewCell_initWithReuseIdentifier___block_invoke;
    v23[3] = &unk_1E8440360;
    objc_copyWeak(&v24, &location);
    [*(v5 + 128) setConfigurationUpdateHandler:v23];
    v17 = *(MEMORY[0x1E69DC5C0] + 16);
    *(v5 + 1064) = *MEMORY[0x1E69DC5C0];
    *(v5 + 1080) = v17;
    [*(v5 + 128) addTarget:v5 action:sel__tapped forControlEvents:0x2000];
    [v5 _updateView];
    v27[0] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __56__EKUIFocusBannerTableViewCell_initWithReuseIdentifier___block_invoke_2;
    v21[3] = &unk_1E843EBE8;
    objc_copyWeak(&v22, &location);
    v19 = [v5 registerForTraitChanges:v18 withHandler:v21];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __56__EKUIFocusBannerTableViewCell_initWithReuseIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _focusFilterButtonConfiguration];
    [v6 setConfiguration:v5];
  }
}

void __56__EKUIFocusBannerTableViewCell_initWithReuseIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateView];
}

- (void)_tapped
{
  [(EKUIFocusBannerTableViewCell *)self setOn:[(EKUIFocusBannerTableViewCell *)self on]^ 1];
  v3 = [(EKUIFocusBannerTableViewCell *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(EKUIFocusBannerTableViewCell *)self delegate];
    [v5 focusBannerTableViewCellToggled:self];
  }
}

- (void)setOn:(BOOL)a3
{
  if (self->_on != a3)
  {
    self->_on = a3;
    [(EKUIFocusBannerTableViewCell *)self _updateView];
  }
}

- (void)_updateView
{
  v62[6] = *MEMORY[0x1E69E9840];
  v3 = [(EKUIFocusBannerTableViewCell *)self _configuration];
  [(UIListContentView *)self->_listContentView setConfiguration:v3];

  v4 = [(EKUIFocusBannerTableViewCell *)self _focusFilterButtonConfiguration];
  [(UIButton *)self->_focusFilterToggleButton setConfiguration:v4];

  if (self->_constraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
  }

  v5 = [(EKUIFocusBannerTableViewCell *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  if (IsAccessibilityCategory)
  {
    v42 = [(UIListContentView *)self->_listContentView leadingAnchor];
    v59 = [(EKUIFocusBannerTableViewCell *)self contentView];
    v58 = [v59 leadingAnchor];
    v57 = [v42 constraintEqualToAnchor:?];
    v62[0] = v57;
    v8 = [(UIListContentView *)self->_listContentView trailingAnchor];
    v55 = [(EKUIFocusBannerTableViewCell *)self contentView];
    [v55 trailingAnchor];
    v54 = v56 = v8;
    v53 = [v8 constraintEqualToAnchor:?];
    v62[1] = v53;
    v9 = [(UIListContentView *)self->_listContentView topAnchor];
    v51 = [(EKUIFocusBannerTableViewCell *)self contentView];
    [v51 topAnchor];
    v50 = v52 = v9;
    v49 = [v9 constraintEqualToAnchor:?];
    v62[2] = v49;
    v10 = [(UIButton *)self->_focusFilterToggleButton topAnchor];
    v47 = [(UIListContentView *)self->_listContentView bottomAnchor];
    v48 = v10;
    v46 = [v10 constraintEqualToAnchor:8.0 constant:?];
    v62[3] = v46;
    v11 = [(UIButton *)self->_focusFilterToggleButton bottomAnchor];
    v44 = [(EKUIFocusBannerTableViewCell *)self contentView];
    v43 = [v44 layoutMarginsGuide];
    v12 = [v43 bottomAnchor];
    v45 = v11;
    v13 = [v11 constraintEqualToAnchor:v12];
    v62[4] = v13;
    v14 = [(UIButton *)self->_focusFilterToggleButton leadingAnchor];
    v15 = [(EKUIFocusBannerTableViewCell *)self contentView];
    v16 = [v15 layoutMarginsGuide];
    v17 = [v16 leadingAnchor];
    v18 = [v14 constraintEqualToAnchor:v17];
    v62[5] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:6];
    constraints = self->_constraints;
    self->_constraints = v19;

    v21 = v42;
  }

  else
  {
    [(EKUIFocusBannerTableViewCell *)self customEdgeInsets];
    v23.f64[1] = v22;
    v25.f64[1] = v24;
    v26 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v23, *MEMORY[0x1E69DC5C0]), vceqq_f64(v25, *(MEMORY[0x1E69DC5C0] + 16)))));
    v21 = [(UIListContentView *)self->_listContentView leadingAnchor];
    v59 = [(EKUIFocusBannerTableViewCell *)self contentView];
    v27 = [v59 leadingAnchor];
    v58 = v27;
    if (v26)
    {
      v57 = [v21 constraintEqualToAnchor:v27];
      v60[0] = v57;
      v36 = [(UIListContentView *)self->_listContentView topAnchor];
      v55 = [(EKUIFocusBannerTableViewCell *)self contentView];
      [v55 topAnchor];
      v54 = v56 = v36;
      v53 = [v36 constraintEqualToAnchor:?];
      v60[1] = v53;
      v37 = [(UIListContentView *)self->_listContentView bottomAnchor];
      v51 = [(EKUIFocusBannerTableViewCell *)self contentView];
      [v51 bottomAnchor];
      v50 = v52 = v37;
      v49 = [v37 constraintEqualToAnchor:?];
      v60[2] = v49;
      v38 = [(UIButton *)self->_focusFilterToggleButton leadingAnchor];
      v47 = [(UIListContentView *)self->_listContentView trailingAnchor];
      v48 = v38;
      v46 = [v38 constraintGreaterThanOrEqualToAnchor:?];
      v60[3] = v46;
      v39 = [(UIButton *)self->_focusFilterToggleButton trailingAnchor];
      v44 = [(EKUIFocusBannerTableViewCell *)self contentView];
      v43 = [v44 layoutMarginsGuide];
      v12 = [v43 trailingAnchor];
      v45 = v39;
      v13 = [v39 constraintEqualToAnchor:v12];
      v60[4] = v13;
      v14 = [(UIButton *)self->_focusFilterToggleButton centerYAnchor];
      v15 = [(EKUIFocusBannerTableViewCell *)self contentView];
      v16 = [v15 centerYAnchor];
      v17 = [v14 constraintEqualToAnchor:v16];
      v60[5] = v17;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:6];
      v41 = self->_constraints;
      self->_constraints = v40;
    }

    else
    {
      [(EKUIFocusBannerTableViewCell *)self customEdgeInsets];
      v57 = [v21 constraintEqualToAnchor:v27 constant:v28];
      v61[0] = v57;
      v29 = [(UIListContentView *)self->_listContentView topAnchor];
      v55 = [(EKUIFocusBannerTableViewCell *)self contentView];
      [v55 topAnchor];
      v54 = v56 = v29;
      v53 = [v29 constraintEqualToAnchor:?];
      v61[1] = v53;
      v30 = [(UIListContentView *)self->_listContentView bottomAnchor];
      v51 = [(EKUIFocusBannerTableViewCell *)self contentView];
      [v51 bottomAnchor];
      v50 = v52 = v30;
      v49 = [v30 constraintEqualToAnchor:?];
      v61[2] = v49;
      v31 = [(UIButton *)self->_focusFilterToggleButton leadingAnchor];
      v47 = [(UIListContentView *)self->_listContentView trailingAnchor];
      v48 = v31;
      v46 = [v31 constraintGreaterThanOrEqualToAnchor:?];
      v61[3] = v46;
      v32 = [(UIButton *)self->_focusFilterToggleButton trailingAnchor];
      v44 = [(EKUIFocusBannerTableViewCell *)self contentView];
      v33 = [v44 trailingAnchor];
      [(EKUIFocusBannerTableViewCell *)self customEdgeInsets];
      v45 = v32;
      v43 = v33;
      v12 = [v32 constraintEqualToAnchor:v33 constant:v34];
      v61[4] = v12;
      v13 = [(UIButton *)self->_focusFilterToggleButton centerYAnchor];
      v14 = [(EKUIFocusBannerTableViewCell *)self contentView];
      v15 = [v14 centerYAnchor];
      v16 = [v13 constraintEqualToAnchor:v15];
      v61[5] = v16;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:6];
      v17 = self->_constraints;
      self->_constraints = v35;
    }
  }

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
}

- (id)_configuration
{
  v3 = [MEMORY[0x1E69DCC28] cellConfiguration];
  LODWORD(self) = [(EKUIFocusBannerTableViewCell *)self on];
  v4 = EventKitUIBundle();
  v5 = v4;
  if (self)
  {
    v6 = [v4 localizedStringForKey:@"Filtered by Focus" value:&stru_1F4EF6790 table:0];

    v7 = [MEMORY[0x1E69DC888] labelColor];
    [MEMORY[0x1E69DC888] systemIndigoColor];
  }

  else
  {
    v6 = [v4 localizedStringForKey:@"Focus Filter Off" value:&stru_1F4EF6790 table:0];

    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v8 = ;
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"moon.circle.fill"];
  [v3 setImage:v9];

  v10 = [v3 imageProperties];
  [v10 setTintColor:v8];

  [v3 setText:v6];
  v11 = [v3 textProperties];
  [v11 setColor:v7];

  v12 = [v3 textProperties];
  [v12 setNumberOfLines:0];

  return v3;
}

- (id)_focusFilterButtonConfiguration
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = [(EKUIFocusBannerTableViewCell *)self on];
  v4 = EventKitUIBundle();
  v5 = v4;
  if (v3)
  {
    v6 = @"Turn Off";
  }

  else
  {
    v6 = @"Turn On";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F4EF6790 table:0];

  v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:32770 options:0];
  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];
  v10 = [MEMORY[0x1E69DC888] systemIndigoColor];
  v11 = *MEMORY[0x1E69DB650];
  v19[0] = *MEMORY[0x1E69DB648];
  v19[1] = v11;
  v20[0] = v9;
  v20[1] = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v12];
  v14 = [(EKUIFocusBannerTableViewCell *)self traitCollection];
  v15 = [v14 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v15))
  {

LABEL_7:
    v17 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
    [v17 setCornerStyle:4];
    [v17 setButtonSize:0];
    goto LABEL_9;
  }

  v16 = MEMORY[0x1D38B98D0]();

  if (v16)
  {
    goto LABEL_7;
  }

  v17 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [v17 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
LABEL_9:
  [v17 setAttributedTitle:v13];
  [v17 setTitleLineBreakMode:2];

  return v17;
}

- (NSDirectionalEdgeInsets)customEdgeInsets
{
  top = self->_customEdgeInsets.top;
  leading = self->_customEdgeInsets.leading;
  bottom = self->_customEdgeInsets.bottom;
  trailing = self->_customEdgeInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (EKUIFocusBannerTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end