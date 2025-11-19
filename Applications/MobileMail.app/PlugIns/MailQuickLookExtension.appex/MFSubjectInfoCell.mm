@interface MFSubjectInfoCell
- (MFSubjectInfoCell)initWithFrame:(CGRect)a3;
@end

@implementation MFSubjectInfoCell

- (MFSubjectInfoCell)initWithFrame:(CGRect)a3
{
  v28.receiver = self;
  v28.super_class = MFSubjectInfoCell;
  v3 = [(MFSubjectInfoCell *)&v28 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    subjectLabel = v3->_subjectLabel;
    v3->_subjectLabel = v4;

    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v3->_subjectLabel setFont:v6];

    [(UILabel *)v3->_subjectLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(MFSubjectInfoCell *)v3 contentView];
    [v7 addSubview:v3->_subjectLabel];

    v8 = +[UIColor tableCellGroupedBackgroundColor];
    v9 = [(MFSubjectInfoCell *)v3 contentView];
    [v9 setBackgroundColor:v8];

    v27 = [(UILabel *)v3->_subjectLabel leadingAnchor];
    v24 = [(MFSubjectInfoCell *)v3 contentView];
    v23 = [v24 leadingAnchor];
    v22 = [v27 constraintEqualToAnchor:20.0 constant:?];
    v29[0] = v22;
    v26 = [(UILabel *)v3->_subjectLabel trailingAnchor];
    v21 = [(MFSubjectInfoCell *)v3 contentView];
    v20 = [v21 trailingAnchor];
    v19 = [v26 constraintEqualToAnchor:-35.0 constant:?];
    v29[1] = v19;
    v25 = [(UILabel *)v3->_subjectLabel topAnchor];
    v18 = [(MFSubjectInfoCell *)v3 contentView];
    v10 = [v18 topAnchor];
    v11 = [v25 constraintEqualToAnchor:v10 constant:20.0];
    v29[2] = v11;
    v12 = [(UILabel *)v3->_subjectLabel bottomAnchor];
    v13 = [(MFSubjectInfoCell *)v3 contentView];
    v14 = [v13 bottomAnchor];
    v15 = [v12 constraintEqualToAnchor:v14 constant:-20.0];
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