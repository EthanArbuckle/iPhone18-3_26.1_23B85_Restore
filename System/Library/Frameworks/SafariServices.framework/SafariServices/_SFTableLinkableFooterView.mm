@interface _SFTableLinkableFooterView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (_SFTableLinkableFooterView)initWithReuseIdentifier:(id)a3;
- (_SFTableLinkableFooterViewDelegate)delegate;
- (void)_configureSubviewsAndConstraints;
- (void)_updateAttributedString;
- (void)setText:(id)a3 linkPlaceholderString:(id)a4 linkReplacementString:(id)a5;
@end

@implementation _SFTableLinkableFooterView

- (_SFTableLinkableFooterView)initWithReuseIdentifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = _SFTableLinkableFooterView;
  v3 = [(_SFTableLinkableFooterView *)&v7 initWithReuseIdentifier:a3];
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
  v3 = [(_SFTableLinkableFooterView *)self contentView];
  v4 = objc_alloc_init(MEMORY[0x1E69DD168]);
  textView = self->_textView;
  self->_textView = v4;

  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_textView setBackgroundColor:v6];

  [(UITextView *)self->_textView setShowsVerticalScrollIndicator:0];
  [(UITextView *)self->_textView setEditable:0];
  [(UITextView *)self->_textView setSelectable:1];
  [(UITextView *)self->_textView setScrollEnabled:0];
  v7 = [(UITextView *)self->_textView textContainer];
  [v7 setLineFragmentPadding:0.0];

  [(UITextView *)self->_textView _setInteractiveTextSelectionDisabled:1];
  [(UITextView *)self->_textView setDelegate:self];
  [(UITextView *)self->_textView setAdjustsFontForContentSizeCategory:1];
  [v3 addSubview:self->_textView];
  PreferencesTableViewCellLeftPad();
  v9 = v8;
  v10 = [(UITextView *)self->_textView leadingAnchor];
  v11 = [v3 safeAreaLayoutGuide];
  v12 = [v11 leadingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:v9];
  textViewLeadingConstraint = self->_textViewLeadingConstraint;
  self->_textViewLeadingConstraint = v13;

  v15 = [v3 safeAreaLayoutGuide];
  v16 = [v15 trailingAnchor];
  v17 = [(UITextView *)self->_textView trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:v9];
  textViewTrailingConstraint = self->_textViewTrailingConstraint;
  self->_textViewTrailingConstraint = v18;

  v20 = MEMORY[0x1E696ACD8];
  v21 = self->_textViewTrailingConstraint;
  v29[0] = self->_textViewLeadingConstraint;
  v29[1] = v21;
  v22 = [(UITextView *)self->_textView topAnchor];
  v23 = [v3 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v29[2] = v24;
  v25 = [(UITextView *)self->_textView bottomAnchor];
  v26 = [v3 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v29[3] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [v20 activateConstraints:v28];
}

- (void)setText:(id)a3 linkPlaceholderString:(id)a4 linkReplacementString:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 copy];
  text = self->_text;
  self->_text = v10;

  v12 = [v9 copy];
  linkPlaceholderString = self->_linkPlaceholderString;
  self->_linkPlaceholderString = v12;

  v14 = [v8 copy];
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
  v8 = [(_SFTableLinkableFooterView *)self _attributedStringTextColor];
  v28[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v10 = [v3 initWithString:text attributes:v9];

  v11 = [(_SFTableLinkableFooterView *)self traitCollection];
  v12 = [v11 preferredContentSizeCategory];
  LODWORD(v8) = UIContentSizeCategoryIsAccessibilityCategory(v12);

  if (v8)
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

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
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