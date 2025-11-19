@interface _SFBookmarkTextEntryTableViewCell
- (_SFBookmarkTextEntryTableViewCell)initWithText:(id)a3 autocapitalizationType:(int64_t)a4 autocorrectionType:(int64_t)a5;
- (void)layoutMarginsDidChange;
- (void)safeAreaInsetsDidChange;
- (void)setSeparatorInset:(UIEdgeInsets)a3;
- (void)updateConstraints;
@end

@implementation _SFBookmarkTextEntryTableViewCell

- (_SFBookmarkTextEntryTableViewCell)initWithText:(id)a3 autocapitalizationType:(int64_t)a4 autocorrectionType:(int64_t)a5
{
  v37[5] = *MEMORY[0x1E69E9840];
  v8 = a3;
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
    [(UITextField *)v9->_textField setAutocapitalizationType:a4];
    [(UITextField *)v9->_textField setAutocorrectionType:a5];
    [(UITextField *)v9->_textField setClearButtonMode:1];
    [(UITextField *)v9->_textField setEnablesReturnKeyAutomatically:1];
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UITextField *)v9->_textField setFont:v12];

    [(UITextField *)v9->_textField setReturnKeyType:9];
    [(UITextField *)v9->_textField setText:v8];
    v13 = [MEMORY[0x1E69DC888] labelColor];
    [(UITextField *)v9->_textField setTextColor:v13];

    [(UITextField *)v9->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [(_SFBookmarkTextEntryTableViewCell *)v9 contentView];
    [v14 addSubview:v9->_textField];

    v15 = [(_SFBookmarkTextEntryTableViewCell *)v9 contentView];
    v16 = [(UITextField *)v9->_textField leadingAnchor];
    [v15 leadingAnchor];
    v17 = v35 = v8;
    v18 = [v16 constraintEqualToAnchor:v17];
    leadingConstraint = v9->_leadingConstraint;
    v9->_leadingConstraint = v18;

    v30 = MEMORY[0x1E696ACD8];
    v37[0] = v9->_leadingConstraint;
    v34 = [v15 trailingAnchor];
    v33 = [(UITextField *)v9->_textField trailingAnchor];
    v32 = [v34 constraintEqualToSystemSpacingAfterAnchor:v33 multiplier:1.0];
    v37[1] = v32;
    v31 = [(UITextField *)v9->_textField topAnchor];
    v20 = [v15 topAnchor];
    v21 = [v31 constraintEqualToAnchor:v20];
    v37[2] = v21;
    v22 = [(UITextField *)v9->_textField bottomAnchor];
    v23 = [v15 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v37[3] = v24;
    v25 = [(UITextField *)v9->_textField heightAnchor];
    v26 = [v25 constraintGreaterThanOrEqualToConstant:44.0];
    v37[4] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];
    [v30 activateConstraints:v27];

    v8 = v35;
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

- (void)setSeparatorInset:(UIEdgeInsets)a3
{
  v4.receiver = self;
  v4.super_class = _SFBookmarkTextEntryTableViewCell;
  [(_SFBookmarkTextEntryTableViewCell *)&v4 setSeparatorInset:a3.top, a3.left, a3.bottom, a3.right];
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