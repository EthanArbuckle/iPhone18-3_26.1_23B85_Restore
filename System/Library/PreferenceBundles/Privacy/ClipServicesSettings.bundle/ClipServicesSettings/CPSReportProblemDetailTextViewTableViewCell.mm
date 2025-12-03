@interface CPSReportProblemDetailTextViewTableViewCell
- (CPSReportProblemDetailTextViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation CPSReportProblemDetailTextViewTableViewCell

- (CPSReportProblemDetailTextViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v34.receiver = self;
  v34.super_class = CPSReportProblemDetailTextViewTableViewCell;
  v4 = [(CPSReportProblemDetailTextViewTableViewCell *)&v34 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(UITextView);
    textView = v4->_textView;
    v4->_textView = v5;

    [(UITextView *)v4->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)v4->_textView setTextContainerInset:10.0, 10.0, 10.0, 10.0];
    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UITextView *)v4->_textView setFont:v7];

    v33 = _CPSLocalizedString();
    v8 = [[NSAttributedString alloc] initWithString:v33];
    [(UITextView *)v4->_textView setAttributedPlaceholder:v8];

    [(UITextView *)v4->_textView setAccessibilityLabel:v33];
    contentView = [(CPSReportProblemDetailTextViewTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_textView];

    topAnchor = [(UITextView *)v4->_textView topAnchor];
    contentView2 = [(CPSReportProblemDetailTextViewTableViewCell *)v4 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v35[0] = v29;
    leadingAnchor = [(UITextView *)v4->_textView leadingAnchor];
    contentView3 = [(CPSReportProblemDetailTextViewTableViewCell *)v4 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[1] = v25;
    contentView4 = [(CPSReportProblemDetailTextViewTableViewCell *)v4 contentView];
    trailingAnchor = [contentView4 trailingAnchor];
    trailingAnchor2 = [(UITextView *)v4->_textView trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[2] = v10;
    contentView5 = [(CPSReportProblemDetailTextViewTableViewCell *)v4 contentView];
    bottomAnchor = [contentView5 bottomAnchor];
    bottomAnchor2 = [(UITextView *)v4->_textView bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v35[3] = v14;
    heightAnchor = [(UITextView *)v4->_textView heightAnchor];
    v16 = [heightAnchor constraintEqualToConstant:200.0];
    LODWORD(v17) = 1144750080;
    v18 = [v16 cps_setPriority:v17];
    v35[4] = v18;
    v19 = [NSArray arrayWithObjects:v35 count:5];
    [NSLayoutConstraint activateConstraints:v19];

    v20 = v4;
  }

  return v4;
}

@end