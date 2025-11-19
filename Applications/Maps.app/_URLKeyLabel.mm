@interface _URLKeyLabel
- (_URLKeyLabel)initWithString:(id)a3 color:(id)a4;
- (void)layoutSubviews;
- (void)sizeToFit;
@end

@implementation _URLKeyLabel

- (void)layoutSubviews
{
  [(_URLKeyLabel *)self bounds];
  v4 = v3;
  [(UIView *)self->_colorView bounds];
  v6 = (v4 - v5) * 0.5;
  [(UIView *)self->_colorView bounds];
  v8 = v7;
  [(UIView *)self->_colorView bounds];
  [(UIView *)self->_colorView setFrame:0.0, v6, v8];
  [(UIView *)self->_colorView frame];
  v9 = CGRectGetMaxX(v18) + 4.0;
  [(_URLKeyLabel *)self bounds];
  v11 = v10;
  [(UILabel *)self->_label bounds];
  v13 = (v11 - v12) * 0.5;
  [(UILabel *)self->_label bounds];
  v15 = v14;
  [(UILabel *)self->_label bounds];
  label = self->_label;

  [(UILabel *)label setFrame:v9, v13, v15];
}

- (void)sizeToFit
{
  [(_URLKeyLabel *)self frame];
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_label bounds];
  v8 = v7;
  [(UIView *)self->_colorView bounds];
  if (v8 <= v9)
  {
    v10 = 16;
  }

  else
  {
    v10 = 8;
  }

  [*(&self->super.super.super.isa + v10) bounds];
  v12 = v11;
  [(UIView *)self->_colorView bounds];
  v14 = v13 + 4.0;
  [(UILabel *)self->_label bounds];
  v16 = v14 + v15;

  [(_URLKeyLabel *)self setFrame:v4, v6, v16, v12];
}

- (_URLKeyLabel)initWithString:(id)a3 color:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = _URLKeyLabel;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v11 = [(_URLKeyLabel *)&v19 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v11)
  {
    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    label = v11->_label;
    v11->_label = v12;

    +[UIFont systemFontSize];
    v14 = [UIFont systemFontOfSize:?];
    [(UILabel *)v11->_label setFont:v14];

    [(UILabel *)v11->_label setText:v6];
    [(UILabel *)v11->_label setTextColor:v7];
    [(UILabel *)v11->_label setBackgroundColor:0];
    [(UILabel *)v11->_label setOpaque:0];
    [(UILabel *)v11->_label sizeToFit];
    v15 = [[UIView alloc] initWithFrame:{0.0, 0.0, 16.0, 16.0}];
    colorView = v11->_colorView;
    v11->_colorView = v15;

    [(UIView *)v11->_colorView setBackgroundColor:v7];
    [(_URLKeyLabel *)v11 addSubview:v11->_label];
    [(_URLKeyLabel *)v11 addSubview:v11->_colorView];
    [(_URLKeyLabel *)v11 sizeToFit];
    v17 = v11;
  }

  return v11;
}

@end