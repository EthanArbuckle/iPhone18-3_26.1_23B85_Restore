@interface MFSubjectInfoCell
- (MFSubjectInfoCell)initWithFrame:(CGRect)frame;
@end

@implementation MFSubjectInfoCell

- (MFSubjectInfoCell)initWithFrame:(CGRect)frame
{
  v28.receiver = self;
  v28.super_class = MFSubjectInfoCell;
  v3 = [(MFSubjectInfoCell *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    subjectLabel = v3->_subjectLabel;
    v3->_subjectLabel = v4;

    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v3->_subjectLabel setFont:v6];

    [(UILabel *)v3->_subjectLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(MFSubjectInfoCell *)v3 contentView];
    [contentView addSubview:v3->_subjectLabel];

    v8 = +[UIColor tableCellGroupedBackgroundColor];
    contentView2 = [(MFSubjectInfoCell *)v3 contentView];
    [contentView2 setBackgroundColor:v8];

    leadingAnchor = [(UILabel *)v3->_subjectLabel leadingAnchor];
    contentView3 = [(MFSubjectInfoCell *)v3 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:20.0 constant:?];
    v29[0] = v22;
    trailingAnchor = [(UILabel *)v3->_subjectLabel trailingAnchor];
    contentView4 = [(MFSubjectInfoCell *)v3 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:-35.0 constant:?];
    v29[1] = v19;
    topAnchor = [(UILabel *)v3->_subjectLabel topAnchor];
    contentView5 = [(MFSubjectInfoCell *)v3 contentView];
    topAnchor2 = [contentView5 topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
    v29[2] = v11;
    bottomAnchor = [(UILabel *)v3->_subjectLabel bottomAnchor];
    contentView6 = [(MFSubjectInfoCell *)v3 contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-20.0];
    v29[3] = v15;
    v16 = [NSArray arrayWithObjects:v29 count:4];
    [NSLayoutConstraint activateConstraints:v16];

    [(UILabel *)v3->_subjectLabel setNumberOfLines:0];
    [(UILabel *)v3->_subjectLabel setLineBreakMode:0];
    [(UILabel *)v3->_subjectLabel sizeToFit];
  }

  return v3;
}

@end