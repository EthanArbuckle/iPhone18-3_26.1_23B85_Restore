@interface SiriHintView
+ (CGSize)sizeThatFitsString:(id)a3 forWidth:(double)a4;
- (SiriHintView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAttributedText:(id)a3;
@end

@implementation SiriHintView

- (SiriHintView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SiriHintView;
  v3 = [(SiriHintView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor siriui_snippetBackgroundColor];
    [(SiriHintView *)v3 setBackgroundColor:v4];

    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    label = v3->_label;
    v3->_label = v5;

    v7 = v3->_label;
    v8 = +[UIColor siriui_lightTextColor];
    [(UILabel *)v7 setTextColor:v8];

    [(UILabel *)v3->_label setNumberOfLines:0];
    [(SiriHintView *)v3 addSubview:v3->_label];
  }

  return v3;
}

+ (CGSize)sizeThatFitsString:(id)a3 forWidth:(double)a4
{
  [a3 boundingRectWithSize:1 options:0 context:{a4 + -15.0 + -15.0, 1.79769313e308}];
  v5 = v4;
  v7 = v6 + 11.0;
  v8 = +[UIScreen mainScreen];
  [v8 scale];
  v9 = ceil(v7);
  if (v10 < 2.0)
  {
    v7 = v9;
  }

  v11 = +[UIScreen mainScreen];
  [v11 scale];
  v12 = ceil(v5);
  if (v13 < 2.0)
  {
    v5 = v12;
  }

  v14 = v5;
  v15 = v7;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setAttributedText:(id)a3
{
  v4 = [a3 copy];
  attributedText = self->_attributedText;
  self->_attributedText = v4;

  label = self->_label;
  v7 = self->_attributedText;

  [(UILabel *)label setAttributedText:v7];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = SiriHintView;
  [(SiriHintView *)&v18 layoutSubviews];
  [(SiriHintView *)self bounds];
  UIRectInset();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[UIScreen mainScreen];
  [v11 scale];
  v13 = v12 < 2.0;
  v14 = ceil(v4);
  v15 = ceil(v6);
  v16 = ceil(v8);
  v17 = ceil(v10);
  if (v13)
  {
    v4 = v14;
  }

  if (v13)
  {
    v6 = v15;
  }

  if (v13)
  {
    v8 = v16;
  }

  if (v13)
  {
    v10 = v17;
  }

  [(UILabel *)self->_label setFrame:v4, v6, v8, v10];
}

@end