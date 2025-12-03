@interface _URLKeyLabel
- (_URLKeyLabel)initWithString:(id)string color:(id)color;
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

- (_URLKeyLabel)initWithString:(id)string color:(id)color
{
  stringCopy = string;
  colorCopy = color;
  v19.receiver = self;
  v19.super_class = _URLKeyLabel;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(_URLKeyLabel *)&v19 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    label = height->_label;
    height->_label = v12;

    +[UIFont systemFontSize];
    v14 = [UIFont systemFontOfSize:?];
    [(UILabel *)height->_label setFont:v14];

    [(UILabel *)height->_label setText:stringCopy];
    [(UILabel *)height->_label setTextColor:colorCopy];
    [(UILabel *)height->_label setBackgroundColor:0];
    [(UILabel *)height->_label setOpaque:0];
    [(UILabel *)height->_label sizeToFit];
    v15 = [[UIView alloc] initWithFrame:{0.0, 0.0, 16.0, 16.0}];
    colorView = height->_colorView;
    height->_colorView = v15;

    [(UIView *)height->_colorView setBackgroundColor:colorCopy];
    [(_URLKeyLabel *)height addSubview:height->_label];
    [(_URLKeyLabel *)height addSubview:height->_colorView];
    [(_URLKeyLabel *)height sizeToFit];
    v17 = height;
  }

  return height;
}

@end