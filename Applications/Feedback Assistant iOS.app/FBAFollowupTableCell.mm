@interface FBAFollowupTableCell
- (UILabel)promptLabel;
- (UILabel)responseLabel;
- (void)_createTextView;
- (void)configureCellForLinkText:(id)text;
@end

@implementation FBAFollowupTableCell

- (void)configureCellForLinkText:(id)text
{
  textCopy = text;
  textView = self->_textView;
  v8 = textCopy;
  if (!textView)
  {
    [(FBAFollowupTableCell *)self _createTextView];
    textCopy = v8;
    textView = self->_textView;
  }

  [(UITextView *)textView setText:textCopy];
  promptLabel = [(FBAFollowupTableCell *)self promptLabel];
  [promptLabel setText:0];

  promptLabel2 = [(FBAFollowupTableCell *)self promptLabel];
  [promptLabel2 setAttributedText:0];
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
  contentView = [(FBAFollowupTableCell *)self contentView];
  [contentView addSubview:self->_textView];

  topAnchor = [(UITextView *)self->_textView topAnchor];
  contentView2 = [(FBAFollowupTableCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[0] = v20;
  bottomAnchor = [(UITextView *)self->_textView bottomAnchor];
  contentView3 = [(FBAFollowupTableCell *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[1] = v7;
  leadingAnchor = [(UITextView *)self->_textView leadingAnchor];
  contentView4 = [(FBAFollowupTableCell *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v24[2] = v11;
  trailingAnchor = [(UITextView *)self->_textView trailingAnchor];
  contentView5 = [(FBAFollowupTableCell *)self contentView];
  trailingAnchor2 = [contentView5 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
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