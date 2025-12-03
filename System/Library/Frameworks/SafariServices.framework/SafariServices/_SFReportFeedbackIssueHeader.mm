@interface _SFReportFeedbackIssueHeader
- (_SFReportFeedbackIssueHeader)initWithFrame:(CGRect)frame;
@end

@implementation _SFReportFeedbackIssueHeader

- (_SFReportFeedbackIssueHeader)initWithFrame:(CGRect)frame
{
  v25[4] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = _SFReportFeedbackIssueHeader;
  v3 = [(_SFReportFeedbackIssueHeader *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    sectionHeaderLabel = v3->_sectionHeaderLabel;
    v3->_sectionHeaderLabel = v4;

    v6 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] weight:*MEMORY[0x1E69DB980]];
    [(UILabel *)v3->_sectionHeaderLabel setFont:v6];

    [(UILabel *)v3->_sectionHeaderLabel setAdjustsFontForContentSizeCategory:1];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_sectionHeaderLabel setTextColor:labelColor];

    [(UILabel *)v3->_sectionHeaderLabel setNumberOfLines:0];
    [(UILabel *)v3->_sectionHeaderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_SFReportFeedbackIssueHeader *)v3 addSubview:v3->_sectionHeaderLabel];
    v19 = MEMORY[0x1E696ACD8];
    topAnchor = [(UILabel *)v3->_sectionHeaderLabel topAnchor];
    topAnchor2 = [(_SFReportFeedbackIssueHeader *)v3 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v25[0] = v21;
    leadingAnchor = [(UILabel *)v3->_sectionHeaderLabel leadingAnchor];
    leadingAnchor2 = [(_SFReportFeedbackIssueHeader *)v3 leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v25[1] = v9;
    trailingAnchor = [(UILabel *)v3->_sectionHeaderLabel trailingAnchor];
    trailingAnchor2 = [(_SFReportFeedbackIssueHeader *)v3 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v25[2] = v12;
    bottomAnchor = [(UILabel *)v3->_sectionHeaderLabel bottomAnchor];
    bottomAnchor2 = [(_SFReportFeedbackIssueHeader *)v3 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v25[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [v19 activateConstraints:v16];

    v17 = v3;
  }

  return v3;
}

@end