@interface HangTailspinIconView
- (HangTailspinIconView)initWithFrame:(CGRect)frame;
- (void)setFileType:(id)type;
@end

@implementation HangTailspinIconView

- (HangTailspinIconView)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = HangTailspinIconView;
  v3 = [(HangTailspinIconView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    fileTypeLabel = v3->_fileTypeLabel;
    v3->_fileTypeLabel = v4;

    [(UILabel *)v3->_fileTypeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
    [(UILabel *)v3->_fileTypeLabel setFont:v6];

    v7 = +[UIColor systemBlueColor];
    [(UILabel *)v3->_fileTypeLabel setTextColor:v7];

    [(HangTailspinIconView *)v3 addSubview:v3->_fileTypeLabel];
    centerXAnchor = [(UILabel *)v3->_fileTypeLabel centerXAnchor];
    centerXAnchor2 = [(HangTailspinIconView *)v3 centerXAnchor];
    v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v18[0] = v10;
    centerYAnchor = [(UILabel *)v3->_fileTypeLabel centerYAnchor];
    centerYAnchor2 = [(HangTailspinIconView *)v3 centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v18[1] = v13;
    v14 = [NSArray arrayWithObjects:v18 count:2];
    [NSLayoutConstraint activateConstraints:v14];

    v15 = +[UIColor whiteColor];
    [(HangTailspinIconView *)v3 setBackgroundColor:v15];
  }

  return v3;
}

- (void)setFileType:(id)type
{
  typeCopy = type;
  fileTypeLabel = [(HangTailspinIconView *)self fileTypeLabel];
  [fileTypeLabel setText:typeCopy];
}

@end