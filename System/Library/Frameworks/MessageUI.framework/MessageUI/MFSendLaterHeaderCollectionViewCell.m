@interface MFSendLaterHeaderCollectionViewCell
- (MFSendLaterHeaderCollectionViewCell)initWithFrame:(CGRect)a3;
- (MFSendLaterHeaderCollectionViewCellDelegate)delegate;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)_datePicker:(id)a3 didSelectComponent:(int64_t)a4;
- (void)_updateLabelAndDatePickerOrientation;
- (void)layoutMarginsDidChange;
- (void)updateActiveComponent:(int64_t)a3;
- (void)updateWithDate:(id)a3 timeZone:(id)a4 isInvalid:(BOOL)a5;
@end

@implementation MFSendLaterHeaderCollectionViewCell

- (MFSendLaterHeaderCollectionViewCell)initWithFrame:(CGRect)a3
{
  width = a3.size.width;
  v49[2] = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = MFSendLaterHeaderCollectionViewCell;
  v4 = [(MFSendLaterHeaderCollectionViewCell *)&v47 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = [MFSendLaterHeaderCollectionViewHelper alloc];
    [(MFSendLaterHeaderCollectionViewCell *)v4 layoutMargins];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(MFSendLaterHeaderCollectionViewCell *)v4 window];
    v15 = [v14 screen];
    [v15 scale];
    v17 = [(MFSendLaterHeaderCollectionViewHelper *)v5 initWithWidth:width layoutMargins:v7 viewScale:v9, v11, v13, v16];
    [(MFSendLaterHeaderCollectionViewCell *)v4 setViewHelper:v17];

    v18 = objc_alloc(MEMORY[0x1E69DCC10]);
    v46 = [v18 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v19 = _EFLocalizedString();
    [v46 setText:v19];

    v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v46 setFont:v20];

    [v46 setAdjustsFontForContentSizeCategory:1];
    v45 = objc_alloc_init(MEMORY[0x1E69DC920]);
    [v45 _setCompactStyleDelegate:v4];
    [v45 setPreferredDatePickerStyle:2];
    [v45 setDatePickerMode:2];
    [(MFSendLaterHeaderCollectionViewCell *)v4 setCurrentVisibleComponent:1];
    [v45 _compactStyleSetActiveComponent:{-[MFSendLaterHeaderCollectionViewCell currentVisibleComponent](v4, "currentVisibleComponent")}];
    v21 = objc_alloc(MEMORY[0x1E69DCF90]);
    v49[0] = v46;
    v49[1] = v45;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v23 = [v21 initWithArrangedSubviews:v22];

    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v23 setCustomSpacing:v46 afterView:8.0];
    [(MFSendLaterHeaderCollectionViewCell *)v4 addSubview:v23];
    v24 = MEMORY[0x1E696ACD8];
    v44 = [v23 leadingAnchor];
    v41 = [(MFSendLaterHeaderCollectionViewCell *)v4 layoutMarginsGuide];
    v40 = [v41 leadingAnchor];
    v39 = [v44 constraintEqualToAnchor:?];
    v48[0] = v39;
    v43 = [v23 topAnchor];
    v38 = [(MFSendLaterHeaderCollectionViewCell *)v4 layoutMarginsGuide];
    v37 = [v38 topAnchor];
    v36 = [v43 constraintEqualToAnchor:7.0 constant:?];
    v48[1] = v36;
    v42 = [v23 bottomAnchor];
    v35 = [(MFSendLaterHeaderCollectionViewCell *)v4 layoutMarginsGuide];
    v25 = [v35 bottomAnchor];
    v26 = [v42 constraintEqualToAnchor:v25 constant:-7.0];
    v48[2] = v26;
    v27 = [v23 trailingAnchor];
    v28 = [(MFSendLaterHeaderCollectionViewCell *)v4 layoutMarginsGuide];
    v29 = [v28 trailingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    v48[3] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
    [v24 activateConstraints:v31];

    [(MFSendLaterHeaderCollectionViewCell *)v4 setDatePicker:v45];
    [(MFSendLaterHeaderCollectionViewCell *)v4 setStackView:v23];
    v32 = [(MFSendLaterHeaderCollectionViewCell *)v4 viewHelper];
    v33 = [v46 text];
    [v32 precalculateWidthsWithDescription:v33];

    [(MFSendLaterHeaderCollectionViewCell *)v4 _updateLabelAndDatePickerOrientation];
  }

  return v4;
}

- (void)_updateLabelAndDatePickerOrientation
{
  if (a1)
  {
    v5 = [a1 stackView];
    v2 = [a1 viewHelper];
    v3 = [v2 willContentTruncate];

    if (v3)
    {
      v4 = 1;
      [v5 setAxis:1];
    }

    else
    {
      [v5 setAxis:0];
      v4 = 3;
    }

    [v5 setAlignment:v4];
    [v5 layoutIfNeeded];
  }
}

- (void)updateActiveComponent:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [(MFSendLaterHeaderCollectionViewCell *)self setCurrentVisibleComponent:v4];
LABEL_6:
  v5 = [(MFSendLaterHeaderCollectionViewCell *)self datePicker];
  [v5 _setCompactStyleDelegate:self];
  [v5 _compactStyleSetActiveComponent:{-[MFSendLaterHeaderCollectionViewCell currentVisibleComponent](self, "currentVisibleComponent")}];
}

- (void)updateWithDate:(id)a3 timeZone:(id)a4 isInvalid:(BOOL)a5
{
  v5 = a5;
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(MFSendLaterHeaderCollectionViewCell *)self datePicker];
  [v10 setTimeZone:v9];
  [v10 _setCompactStyleDelegate:self];
  v11 = [MEMORY[0x1E695DFE8] localTimeZone];
  [v10 _setDisplaysTimeZone:{objc_msgSend(v9, "isEqual:", v11) ^ 1}];

  [v10 setDate:v8];
  if (v5)
  {
    v12 = &unk_1F3D16188;
  }

  else
  {
    v12 = &unk_1F3D161A0;
  }

  v14 = *MEMORY[0x1E69DB6B8];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [v10 _setOverrideCompactTextAttributes:v13];
}

- (void)_datePicker:(id)a3 didSelectComponent:(int64_t)a4
{
  v7 = [(MFSendLaterHeaderCollectionViewCell *)self delegate];
  if (a4)
  {
    if (a4 == 2)
    {
      [(MFSendLaterHeaderCollectionViewCell *)self setCurrentVisibleComponent:2];
      [v7 sendLaterHeaderCollectionViewCellTimeTapped:self];
    }

    else if (a4 == 1)
    {
      [(MFSendLaterHeaderCollectionViewCell *)self setCurrentVisibleComponent:1];
      [v7 sendLaterHeaderCollectionViewCellDateTapped:self];
    }
  }

  else
  {
    v6 = [(MFSendLaterHeaderCollectionViewCell *)self datePicker];
    [v6 _setCompactStyleDelegate:self];
    [v6 _compactStyleSetActiveComponent:{-[MFSendLaterHeaderCollectionViewCell currentVisibleComponent](self, "currentVisibleComponent")}];
  }
}

- (void)layoutMarginsDidChange
{
  v5.receiver = self;
  v5.super_class = MFSendLaterHeaderCollectionViewCell;
  [(MFSendLaterHeaderCollectionViewCell *)&v5 layoutMarginsDidChange];
  v3 = [(MFSendLaterHeaderCollectionViewCell *)self viewHelper];
  [(MFSendLaterHeaderCollectionViewCell *)self layoutMargins];
  v4 = [v3 updateLayoutMarginsIfNeeded:?];

  if (v4)
  {
    [(MFSendLaterHeaderCollectionViewCell *)self _updateLabelAndDatePickerOrientation];
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v8.receiver = self;
  v8.super_class = MFSendLaterHeaderCollectionViewCell;
  v4 = [(MFSendLaterHeaderCollectionViewCell *)&v8 preferredLayoutAttributesFittingAttributes:a3];
  v5 = [(MFSendLaterHeaderCollectionViewCell *)self viewHelper];
  [v4 frame];
  v6 = [v5 updateWidthIfNeeded:CGRectGetWidth(v10)];

  if (v6)
  {
    [(MFSendLaterHeaderCollectionViewCell *)self _updateLabelAndDatePickerOrientation];
  }

  return v4;
}

- (MFSendLaterHeaderCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end