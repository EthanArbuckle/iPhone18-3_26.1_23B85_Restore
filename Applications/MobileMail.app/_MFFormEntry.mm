@interface _MFFormEntry
- (_MFFormEntry)initWithTextAlignment:(int64_t)alignment;
@end

@implementation _MFFormEntry

- (_MFFormEntry)initWithTextAlignment:(int64_t)alignment
{
  v15.receiver = self;
  v15.super_class = _MFFormEntry;
  v4 = [(_MFFormEntry *)&v15 init];
  if (v4)
  {
    v5 = objc_alloc_init(UILabel);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v5;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v7) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentCompressionResistancePriority:0 forAxis:v7];
    v8 = +[UIColor mailSubtitleGrayColor];
    [(UILabel *)v4->_titleLabel setTextColor:v8];

    v9 = +[_MFFormEntry labelFont];
    [(UILabel *)v4->_titleLabel setFont:v9];

    [(UILabel *)v4->_titleLabel setTextAlignment:alignment];
    v10 = objc_alloc_init(UILabel);
    valueLabel = v4->_valueLabel;
    v4->_valueLabel = v10;

    [(UILabel *)v4->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_valueLabel setNumberOfLines:0];
    v12 = +[UIColor blackColor];
    [(UILabel *)v4->_valueLabel setTextColor:v12];

    v13 = +[_MFFormEntry labelFont];
    [(UILabel *)v4->_valueLabel setFont:v13];
  }

  return v4;
}

@end