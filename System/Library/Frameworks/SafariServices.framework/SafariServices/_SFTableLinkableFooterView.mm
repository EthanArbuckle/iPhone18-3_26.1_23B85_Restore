@interface _SFTableLinkableFooterView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (_SFTableLinkableFooterView)initWithReuseIdentifier:(id)identifier;
- (_SFTableLinkableFooterViewDelegate)delegate;
- (void)_configureSubviewsAndConstraints;
- (void)_updateAttributedString;
- (void)setText:(id)text linkPlaceholderString:(id)string linkReplacementString:(id)replacementString;
@end

@implementation _SFTableLinkableFooterView

- (_SFTableLinkableFooterView)initWithReuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = _SFTableLinkableFooterView;
  v3 = [(_SFTableLinkableFooterView *)&v7 initWithReuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(_SFTableLinkableFooterView *)v3 _configureSubviewsAndConstraints];
    v5 = v4;
  }

  return v4;
}

- (void)_configureSubviewsAndConstraints
{
  v29[4] = *MEMORY[0x1E69E9840];
  contentView = [(_SFTableLinkableFooterView *)self contentView];
  v4 = objc_alloc_init(MEMORY[0x1E69DD168]);
  textView = self->_textView;
  self->_textView = v4;

  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_textView setBackgroundColor:clearColor];

  [(UITextView *)self->_textView setShowsVerticalScrollIndicator:0];
  [(UITextView *)self->_textView setEditable:0];
  [(UITextView *)self->_textView setSelectable:1];
  [(UITextView *)self->_textView setScrollEnabled:0];
  textContainer = [(UITextView *)self->_textView textContainer];
  [textContainer setLineFragmentPadding:0.0];

  [(UITextView *)self->_textView _setInteractiveTextSelectionDisabled:1];
  [(UITextView *)self->_textView setDelegate:self];
  [(UITextView *)self->_textView setAdjustsFontForContentSizeCategory:1];
  [contentView addSubview:self->_textView];
  PreferencesTableViewCellLeftPad();
  v9 = v8;
  leadingAnchor = [(UITextView *)self->_textView leadingAnchor];
  safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v9];
  textViewLeadingConstraint = self->_textViewLeadingConstraint;
  self->_textViewLeadingConstraint = v13;

  safeAreaLayoutGuide2 = [contentView safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
  trailingAnchor2 = [(UITextView *)self->_textView trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v9];
  textViewTrailingConstraint = self->_textViewTrailingConstraint;
  self->_textViewTrailingConstraint = v18;

  v20 = MEMORY[0x1E696ACD8];
  v21 = self->_textViewTrailingConstraint;
  v29[0] = self->_textViewLeadingConstraint;
  v29[1] = v21;
  topAnchor = [(UITextView *)self->_textView topAnchor];
  topAnchor2 = [contentView topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[2] = v24;
  bottomAnchor = [(UITextView *)self->_textView bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[3] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [v20 activateConstraints:v28];
}

- (void)setText:(id)text linkPlaceholderString:(id)string linkReplacementString:(id)replacementString
{
  replacementStringCopy = replacementString;
  stringCopy = string;
  v10 = [text copy];
  text = self->_text;
  self->_text = v10;

  v12 = [stringCopy copy];
  linkPlaceholderString = self->_linkPlaceholderString;
  self->_linkPlaceholderString = v12;

  v14 = [replacementStringCopy copy];
  linkReplacementString = self->_linkReplacementString;
  self->_linkReplacementString = v14;

  [(_SFTableLinkableFooterView *)self _updateAttributedString];
}

- (void)_updateAttributedString
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AD40]);
  text = self->_text;
  v5 = *MEMORY[0x1E69DB648];
  v27[0] = *MEMORY[0x1E69DB648];
  v6 = *MEMORY[0x1E69DDD28];
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v28[0] = v7;
  v27[1] = *MEMORY[0x1E69DB650];
  _attributedStringTextColor = [(_SFTableLinkableFooterView *)self _attributedStringTextColor];
  v28[1] = _attributedStringTextColor;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v10 = [v3 initWithString:text attributes:v9];

  traitCollection = [(_SFTableLinkableFooterView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  LODWORD(_attributedStringTextColor) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (_attributedStringTextColor)
  {
    v13 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    LODWORD(v14) = 1055286886;
    [v13 setHyphenationFactor:v14];
    [v10 addAttribute:*MEMORY[0x1E69DB688] value:v13 range:{0, objc_msgSend(v10, "length")}];
  }

  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  linkReplacementString = self->_linkReplacementString;
  v25[0] = v5;
  v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v6];
  v18 = *MEMORY[0x1E69DB758];
  v26[0] = v17;
  v26[1] = MEMORY[0x1E695E110];
  v19 = *MEMORY[0x1E69DB670];
  v25[1] = v18;
  v25[2] = v19;
  v20 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F4FE9E38];
  v26[2] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v22 = [v15 initWithString:linkReplacementString attributes:v21];

  v23 = [(NSString *)self->_text rangeOfString:self->_linkPlaceholderString];
  if (v23 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 replaceCharactersInRange:v23 withAttributedString:{v24, v22}];
  }

  [(UITextView *)self->_textView setAttributedText:v10];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained linkableFooterViewDidInteractWithLink:self];

  return 0;
}

- (_SFTableLinkableFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end