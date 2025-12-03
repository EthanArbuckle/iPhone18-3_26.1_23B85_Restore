@interface _SFBookmarkTextEntryTableViewCell
- (_SFBookmarkTextEntryTableViewCell)initWithText:(id)text autocapitalizationType:(int64_t)type autocorrectionType:(int64_t)autocorrectionType;
- (void)layoutMarginsDidChange;
- (void)safeAreaInsetsDidChange;
- (void)setSeparatorInset:(UIEdgeInsets)inset;
- (void)updateConstraints;
@end

@implementation _SFBookmarkTextEntryTableViewCell

- (_SFBookmarkTextEntryTableViewCell)initWithText:(id)text autocapitalizationType:(int64_t)type autocorrectionType:(int64_t)autocorrectionType
{
  v37[5] = *MEMORY[0x1E69E9840];
  textCopy = text;
  v36.receiver = self;
  v36.super_class = _SFBookmarkTextEntryTableViewCell;
  v9 = [(_SFBookmarkTextEntryTableViewCell *)&v36 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    textField = v9->_textField;
    v9->_textField = v10;

    [(UITextField *)v9->_textField setAdjustsFontForContentSizeCategory:1];
    [(UITextField *)v9->_textField setAdjustsFontSizeToFitWidth:1];
    [(UITextField *)v9->_textField setAutocapitalizationType:type];
    [(UITextField *)v9->_textField setAutocorrectionType:autocorrectionType];
    [(UITextField *)v9->_textField setClearButtonMode:1];
    [(UITextField *)v9->_textField setEnablesReturnKeyAutomatically:1];
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UITextField *)v9->_textField setFont:v12];

    [(UITextField *)v9->_textField setReturnKeyType:9];
    [(UITextField *)v9->_textField setText:textCopy];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UITextField *)v9->_textField setTextColor:labelColor];

    [(UITextField *)v9->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(_SFBookmarkTextEntryTableViewCell *)v9 contentView];
    [contentView addSubview:v9->_textField];

    contentView2 = [(_SFBookmarkTextEntryTableViewCell *)v9 contentView];
    leadingAnchor = [(UITextField *)v9->_textField leadingAnchor];
    [contentView2 leadingAnchor];
    v17 = v35 = textCopy;
    v18 = [leadingAnchor constraintEqualToAnchor:v17];
    leadingConstraint = v9->_leadingConstraint;
    v9->_leadingConstraint = v18;

    v30 = MEMORY[0x1E696ACD8];
    v37[0] = v9->_leadingConstraint;
    trailingAnchor = [contentView2 trailingAnchor];
    trailingAnchor2 = [(UITextField *)v9->_textField trailingAnchor];
    v32 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
    v37[1] = v32;
    topAnchor = [(UITextField *)v9->_textField topAnchor];
    topAnchor2 = [contentView2 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v37[2] = v21;
    bottomAnchor = [(UITextField *)v9->_textField bottomAnchor];
    bottomAnchor2 = [contentView2 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v37[3] = v24;
    heightAnchor = [(UITextField *)v9->_textField heightAnchor];
    v26 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];
    v37[4] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];
    [v30 activateConstraints:v27];

    textCopy = v35;
    v28 = v9;
  }

  return v9;
}

- (void)updateConstraints
{
  v6.receiver = self;
  v6.super_class = _SFBookmarkTextEntryTableViewCell;
  [(_SFBookmarkTextEntryTableViewCell *)&v6 updateConstraints];
  [(_SFBookmarkTextEntryTableViewCell *)self separatorInset];
  v4 = v3;
  [(_SFBookmarkTextEntryTableViewCell *)self safeAreaInsets];
  [(NSLayoutConstraint *)self->_leadingConstraint setConstant:v4 - v5];
}

- (void)setSeparatorInset:(UIEdgeInsets)inset
{
  v4.receiver = self;
  v4.super_class = _SFBookmarkTextEntryTableViewCell;
  [(_SFBookmarkTextEntryTableViewCell *)&v4 setSeparatorInset:inset.top, inset.left, inset.bottom, inset.right];
  [(_SFBookmarkTextEntryTableViewCell *)self setNeedsUpdateConstraints];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = _SFBookmarkTextEntryTableViewCell;
  [(_SFBookmarkTextEntryTableViewCell *)&v3 layoutMarginsDidChange];
  [(_SFBookmarkTextEntryTableViewCell *)self setNeedsUpdateConstraints];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = _SFBookmarkTextEntryTableViewCell;
  [(_SFBookmarkTextEntryTableViewCell *)&v3 safeAreaInsetsDidChange];
  [(_SFBookmarkTextEntryTableViewCell *)self setNeedsUpdateConstraints];
}

@end