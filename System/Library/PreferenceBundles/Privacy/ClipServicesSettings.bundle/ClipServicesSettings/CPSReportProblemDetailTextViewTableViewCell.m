@interface CPSReportProblemDetailTextViewTableViewCell
- (CPSReportProblemDetailTextViewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation CPSReportProblemDetailTextViewTableViewCell

- (CPSReportProblemDetailTextViewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v34.receiver = self;
  v34.super_class = CPSReportProblemDetailTextViewTableViewCell;
  v4 = [(CPSReportProblemDetailTextViewTableViewCell *)&v34 initWithStyle:a3 reuseIdentifier:a4];
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
    v9 = [(CPSReportProblemDetailTextViewTableViewCell *)v4 contentView];
    [v9 addSubview:v4->_textView];

    v31 = [(UITextView *)v4->_textView topAnchor];
    v32 = [(CPSReportProblemDetailTextViewTableViewCell *)v4 contentView];
    v30 = [v32 topAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v35[0] = v29;
    v27 = [(UITextView *)v4->_textView leadingAnchor];
    v28 = [(CPSReportProblemDetailTextViewTableViewCell *)v4 contentView];
    v26 = [v28 leadingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v35[1] = v25;
    v24 = [(CPSReportProblemDetailTextViewTableViewCell *)v4 contentView];
    v23 = [v24 trailingAnchor];
    v22 = [(UITextView *)v4->_textView trailingAnchor];
    v10 = [v23 constraintEqualToAnchor:v22];
    v35[2] = v10;
    v11 = [(CPSReportProblemDetailTextViewTableViewCell *)v4 contentView];
    v12 = [v11 bottomAnchor];
    v13 = [(UITextView *)v4->_textView bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v35[3] = v14;
    v15 = [(UITextView *)v4->_textView heightAnchor];
    v16 = [v15 constraintEqualToConstant:200.0];
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