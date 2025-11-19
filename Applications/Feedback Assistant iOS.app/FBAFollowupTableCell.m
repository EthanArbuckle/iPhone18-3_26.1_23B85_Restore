@interface FBAFollowupTableCell
- (UILabel)promptLabel;
- (UILabel)responseLabel;
- (void)_createTextView;
- (void)configureCellForLinkText:(id)a3;
@end

@implementation FBAFollowupTableCell

- (void)configureCellForLinkText:(id)a3
{
  v4 = a3;
  textView = self->_textView;
  v8 = v4;
  if (!textView)
  {
    [(FBAFollowupTableCell *)self _createTextView];
    v4 = v8;
    textView = self->_textView;
  }

  [(UITextView *)textView setText:v4];
  v6 = [(FBAFollowupTableCell *)self promptLabel];
  [v6 setText:0];

  v7 = [(FBAFollowupTableCell *)self promptLabel];
  [v7 setAttributedText:0];
}

- (void)_createTextView
{
  v3 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  textView = self->_textView;
  self->_textView = v3;

  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_textView setEditable:0];
  [(UITextView *)self->_textView setScrollEnabled:0];
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UITextView *)self->_textView setFont:v5];

  [(UITextView *)self->_textView setAdjustsFontForContentSizeCategory:1];
  [(UITextView *)self->_textView setDataDetectorTypes:2];
  v6 = [(FBAFollowupTableCell *)self contentView];
  [v6 addSubview:self->_textView];

  v22 = [(UITextView *)self->_textView topAnchor];
  v23 = [(FBAFollowupTableCell *)self contentView];
  v21 = [v23 topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v24[0] = v20;
  v18 = [(UITextView *)self->_textView bottomAnchor];
  v19 = [(FBAFollowupTableCell *)self contentView];
  v17 = [v19 bottomAnchor];
  v7 = [v18 constraintEqualToAnchor:v17];
  v24[1] = v7;
  v8 = [(UITextView *)self->_textView leadingAnchor];
  v9 = [(FBAFollowupTableCell *)self contentView];
  v10 = [v9 leadingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:16.0];
  v24[2] = v11;
  v12 = [(UITextView *)self->_textView trailingAnchor];
  v13 = [(FBAFollowupTableCell *)self contentView];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:-16.0];
  v24[3] = v15;
  v16 = [NSArray arrayWithObjects:v24 count:4];

  [NSLayoutConstraint activateConstraints:v16];
}

- (UILabel)promptLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_promptLabel);

  return WeakRetained;
}

- (UILabel)responseLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_responseLabel);

  return WeakRetained;
}

@end