@interface HangTailspinIconView
- (HangTailspinIconView)initWithFrame:(CGRect)a3;
- (void)setFileType:(id)a3;
@end

@implementation HangTailspinIconView

- (HangTailspinIconView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = HangTailspinIconView;
  v3 = [(HangTailspinIconView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [(UILabel *)v3->_fileTypeLabel centerXAnchor];
    v9 = [(HangTailspinIconView *)v3 centerXAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v18[0] = v10;
    v11 = [(UILabel *)v3->_fileTypeLabel centerYAnchor];
    v12 = [(HangTailspinIconView *)v3 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v18[1] = v13;
    v14 = [NSArray arrayWithObjects:v18 count:2];
    [NSLayoutConstraint activateConstraints:v14];

    v15 = +[UIColor whiteColor];
    [(HangTailspinIconView *)v3 setBackgroundColor:v15];
  }

  return v3;
}

- (void)setFileType:(id)a3
{
  v4 = a3;
  v5 = [(HangTailspinIconView *)self fileTypeLabel];
  [v5 setText:v4];
}

@end