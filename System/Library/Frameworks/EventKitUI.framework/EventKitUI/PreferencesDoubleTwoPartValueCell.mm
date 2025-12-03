@interface PreferencesDoubleTwoPartValueCell
- (TwoPartTextLabel)twoPartTextLabel2;
- (UILabel)textLabel2;
- (void)_layoutSubviewsCore;
- (void)checkValueWidths;
- (void)layoutText:(id)text andValue:(id)value;
@end

@implementation PreferencesDoubleTwoPartValueCell

- (UILabel)textLabel2
{
  textLabel2 = self->_textLabel2;
  if (!textLabel2)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = self->_textLabel2;
    self->_textLabel2 = v4;

    v6 = _calendarPreferencesTableAdditionsBoldFont();
    [(UILabel *)self->_textLabel2 setFont:v6];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_textLabel2 setBackgroundColor:clearColor];

    contentView = [(PreferencesDoubleTwoPartValueCell *)self contentView];
    [contentView addSubview:self->_textLabel2];

    textLabel2 = self->_textLabel2;
  }

  return textLabel2;
}

- (TwoPartTextLabel)twoPartTextLabel2
{
  twoPartLabel2 = self->_twoPartLabel2;
  if (!twoPartLabel2)
  {
    v4 = objc_alloc_init(TwoPartTextLabel);
    v5 = self->_twoPartLabel2;
    self->_twoPartLabel2 = v4;

    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(TwoPartTextLabel *)self->_twoPartLabel2 setFont:v6];

    valueColor = [(PreferencesTwoPartValueCell *)self valueColor];
    [(TwoPartTextLabel *)self->_twoPartLabel2 setTextColor:valueColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(TwoPartTextLabel *)self->_twoPartLabel2 setBackgroundColor:clearColor];

    contentView = [(PreferencesDoubleTwoPartValueCell *)self contentView];
    [contentView addSubview:self->_twoPartLabel2];

    twoPartLabel2 = self->_twoPartLabel2;
  }

  return twoPartLabel2;
}

- (void)_layoutSubviewsCore
{
  v4.receiver = self;
  v4.super_class = PreferencesDoubleTwoPartValueCell;
  [(PreferencesTwoPartValueCell *)&v4 _layoutSubviewsCore];
  textLabel = [(PreferencesDoubleTwoPartValueCell *)self textLabel];
  [(PreferencesDoubleTwoPartValueCell *)self layoutText:textLabel andValue:self->_twoPartLabel2];
}

- (void)checkValueWidths
{
  shortener = [(PreferencesTwoPartValueCell *)self shortener];

  if (!shortener)
  {
    return;
  }

  if (![(TwoPartTextLabel *)self->super._twoPartLabel hasTwoParts]|| ([(TwoPartTextLabel *)self->super._twoPartLabel frame], v5 = v4, [(TwoPartTextLabel *)self->super._twoPartLabel idealSize], v5 >= v6))
  {
    p_twoPartLabel2 = &self->_twoPartLabel2;
    if (![(TwoPartTextLabel *)self->_twoPartLabel2 hasTwoParts])
    {
      return;
    }

    v8 = 0;
LABEL_8:
    [(TwoPartTextLabel *)*p_twoPartLabel2 frame];
    v10 = v9;
    [(TwoPartTextLabel *)*p_twoPartLabel2 idealSize];
    if ((v8 & 1) == 0 && v10 >= v11)
    {
      return;
    }

    goto LABEL_11;
  }

  p_twoPartLabel2 = &self->_twoPartLabel2;
  if ([(TwoPartTextLabel *)self->_twoPartLabel2 hasTwoParts])
  {
    v8 = 1;
    goto LABEL_8;
  }

LABEL_11:

  [(PreferencesTwoPartValueCell *)self shorten];
}

- (void)layoutText:(id)text andValue:(id)value
{
  v47.receiver = self;
  v47.super_class = PreferencesDoubleTwoPartValueCell;
  [(PreferencesTwoPartValueCell *)&v47 layoutText:text andValue:value];
  textLabel2 = self->_textLabel2;
  twoPartLabel2 = self->_twoPartLabel2;
  v46.receiver = self;
  v46.super_class = PreferencesDoubleTwoPartValueCell;
  [(PreferencesTwoPartValueCell *)&v46 layoutText:textLabel2 andValue:twoPartLabel2];
  contentView = [(PreferencesDoubleTwoPartValueCell *)self contentView];
  [contentView bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  textLabel = [(PreferencesDoubleTwoPartValueCell *)self textLabel];
  [textLabel frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v48.origin.x = v9;
  v48.origin.y = v11;
  v48.size.width = v13;
  v48.size.height = v15;
  v23 = CGRectGetMinY(v48) + 9.0;
  textLabel2 = [(PreferencesDoubleTwoPartValueCell *)self textLabel];
  [textLabel2 setFrame:{v18, v23, v20, v22}];

  twoPartTextLabel = [(PreferencesTwoPartValueCell *)self twoPartTextLabel];
  [twoPartTextLabel frame];
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v49.origin.x = v9;
  v49.origin.y = v11;
  v49.size.width = v13;
  v49.size.height = v15;
  v32 = CGRectGetMinY(v49) + 9.0;
  twoPartTextLabel2 = [(PreferencesTwoPartValueCell *)self twoPartTextLabel];
  [twoPartTextLabel2 setFrame:{v27, v32, v29, v31}];

  [(UILabel *)self->_textLabel2 frame];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v50.origin.x = v9;
  v50.origin.y = v11;
  v50.size.width = v13;
  v50.size.height = v15;
  [(UILabel *)self->_textLabel2 setFrame:v35, CGRectGetMaxY(v50) + -9.0 - v39, v37, v39];
  [(TwoPartTextLabel *)self->_twoPartLabel2 frame];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v51.origin.x = v9;
  v51.origin.y = v11;
  v51.size.width = v13;
  v51.size.height = v15;
  [(TwoPartTextLabel *)self->_twoPartLabel2 setFrame:v41, CGRectGetMaxY(v51) + -9.0 - v45, v43, v45];
}

@end