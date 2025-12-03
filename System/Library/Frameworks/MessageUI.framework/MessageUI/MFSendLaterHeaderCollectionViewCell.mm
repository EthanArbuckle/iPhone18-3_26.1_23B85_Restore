@interface MFSendLaterHeaderCollectionViewCell
- (MFSendLaterHeaderCollectionViewCell)initWithFrame:(CGRect)frame;
- (MFSendLaterHeaderCollectionViewCellDelegate)delegate;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_datePicker:(id)picker didSelectComponent:(int64_t)component;
- (void)_updateLabelAndDatePickerOrientation;
- (void)layoutMarginsDidChange;
- (void)updateActiveComponent:(int64_t)component;
- (void)updateWithDate:(id)date timeZone:(id)zone isInvalid:(BOOL)invalid;
@end

@implementation MFSendLaterHeaderCollectionViewCell

- (MFSendLaterHeaderCollectionViewCell)initWithFrame:(CGRect)frame
{
  width = frame.size.width;
  v49[2] = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = MFSendLaterHeaderCollectionViewCell;
  v4 = [(MFSendLaterHeaderCollectionViewCell *)&v47 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    v5 = [MFSendLaterHeaderCollectionViewHelper alloc];
    [(MFSendLaterHeaderCollectionViewCell *)v4 layoutMargins];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    window = [(MFSendLaterHeaderCollectionViewCell *)v4 window];
    screen = [window screen];
    [screen scale];
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
    leadingAnchor = [v23 leadingAnchor];
    layoutMarginsGuide = [(MFSendLaterHeaderCollectionViewCell *)v4 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:?];
    v48[0] = v39;
    topAnchor = [v23 topAnchor];
    layoutMarginsGuide2 = [(MFSendLaterHeaderCollectionViewCell *)v4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide2 topAnchor];
    v36 = [topAnchor constraintEqualToAnchor:7.0 constant:?];
    v48[1] = v36;
    bottomAnchor = [v23 bottomAnchor];
    layoutMarginsGuide3 = [(MFSendLaterHeaderCollectionViewCell *)v4 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide3 bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-7.0];
    v48[2] = v26;
    trailingAnchor = [v23 trailingAnchor];
    layoutMarginsGuide4 = [(MFSendLaterHeaderCollectionViewCell *)v4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v48[3] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
    [v24 activateConstraints:v31];

    [(MFSendLaterHeaderCollectionViewCell *)v4 setDatePicker:v45];
    [(MFSendLaterHeaderCollectionViewCell *)v4 setStackView:v23];
    viewHelper = [(MFSendLaterHeaderCollectionViewCell *)v4 viewHelper];
    text = [v46 text];
    [viewHelper precalculateWidthsWithDescription:text];

    [(MFSendLaterHeaderCollectionViewCell *)v4 _updateLabelAndDatePickerOrientation];
  }

  return v4;
}

- (void)_updateLabelAndDatePickerOrientation
{
  if (self)
  {
    stackView = [self stackView];
    viewHelper = [self viewHelper];
    willContentTruncate = [viewHelper willContentTruncate];

    if (willContentTruncate)
    {
      v4 = 1;
      [stackView setAxis:1];
    }

    else
    {
      [stackView setAxis:0];
      v4 = 3;
    }

    [stackView setAlignment:v4];
    [stackView layoutIfNeeded];
  }
}

- (void)updateActiveComponent:(int64_t)component
{
  if (component)
  {
    if (component != 1)
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
  datePicker = [(MFSendLaterHeaderCollectionViewCell *)self datePicker];
  [datePicker _setCompactStyleDelegate:self];
  [datePicker _compactStyleSetActiveComponent:{-[MFSendLaterHeaderCollectionViewCell currentVisibleComponent](self, "currentVisibleComponent")}];
}

- (void)updateWithDate:(id)date timeZone:(id)zone isInvalid:(BOOL)invalid
{
  invalidCopy = invalid;
  v15[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  zoneCopy = zone;
  datePicker = [(MFSendLaterHeaderCollectionViewCell *)self datePicker];
  [datePicker setTimeZone:zoneCopy];
  [datePicker _setCompactStyleDelegate:self];
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  [datePicker _setDisplaysTimeZone:{objc_msgSend(zoneCopy, "isEqual:", localTimeZone) ^ 1}];

  [datePicker setDate:dateCopy];
  if (invalidCopy)
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
  [datePicker _setOverrideCompactTextAttributes:v13];
}

- (void)_datePicker:(id)picker didSelectComponent:(int64_t)component
{
  delegate = [(MFSendLaterHeaderCollectionViewCell *)self delegate];
  if (component)
  {
    if (component == 2)
    {
      [(MFSendLaterHeaderCollectionViewCell *)self setCurrentVisibleComponent:2];
      [delegate sendLaterHeaderCollectionViewCellTimeTapped:self];
    }

    else if (component == 1)
    {
      [(MFSendLaterHeaderCollectionViewCell *)self setCurrentVisibleComponent:1];
      [delegate sendLaterHeaderCollectionViewCellDateTapped:self];
    }
  }

  else
  {
    datePicker = [(MFSendLaterHeaderCollectionViewCell *)self datePicker];
    [datePicker _setCompactStyleDelegate:self];
    [datePicker _compactStyleSetActiveComponent:{-[MFSendLaterHeaderCollectionViewCell currentVisibleComponent](self, "currentVisibleComponent")}];
  }
}

- (void)layoutMarginsDidChange
{
  v5.receiver = self;
  v5.super_class = MFSendLaterHeaderCollectionViewCell;
  [(MFSendLaterHeaderCollectionViewCell *)&v5 layoutMarginsDidChange];
  viewHelper = [(MFSendLaterHeaderCollectionViewCell *)self viewHelper];
  [(MFSendLaterHeaderCollectionViewCell *)self layoutMargins];
  v4 = [viewHelper updateLayoutMarginsIfNeeded:?];

  if (v4)
  {
    [(MFSendLaterHeaderCollectionViewCell *)self _updateLabelAndDatePickerOrientation];
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v8.receiver = self;
  v8.super_class = MFSendLaterHeaderCollectionViewCell;
  v4 = [(MFSendLaterHeaderCollectionViewCell *)&v8 preferredLayoutAttributesFittingAttributes:attributes];
  viewHelper = [(MFSendLaterHeaderCollectionViewCell *)self viewHelper];
  [v4 frame];
  v6 = [viewHelper updateWidthIfNeeded:CGRectGetWidth(v10)];

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