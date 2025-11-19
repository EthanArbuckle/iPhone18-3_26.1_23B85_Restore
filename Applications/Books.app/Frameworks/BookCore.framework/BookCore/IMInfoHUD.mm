@interface IMInfoHUD
- (CGRect)anchorRect;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UILabel)textLabel;
- (id)_backgroundView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation IMInfoHUD

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (self->_textLabel == a6)
  {

    [(IMInfoHUD *)self setNeedsLayout:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = IMInfoHUD;
    [(IMInfoHUD *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)dealloc
{
  [(UILabel *)self->_textLabel removeObserver:self forKeyPath:@"text"];
  v3.receiver = self;
  v3.super_class = IMInfoHUD;
  [(IMInfoHUD *)&v3 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [(IMInfoHUD *)self superview:a3.width];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v10;
  v31.size.height = v12;
  v32 = CGRectInset(v31, 20.0, 20.0);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  v33 = CGRectInset(v32, 10.0, 5.0);
  v17 = v33.size.width;
  v18 = v33.size.height;
  v19 = [(IMInfoHUD *)self textLabel:v33.origin.x];
  [v19 sizeThatFits:{v17, v18}];
  v21 = v20;
  v23 = v22;

  v24 = v21 + 20.0;
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v25 = CGRectGetWidth(v34);
  if (v24 >= v25)
  {
    v24 = v25;
  }

  v26 = v23 + 10.0;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v27 = CGRectGetHeight(v35);
  if (v26 >= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  v29 = v24;
  result.height = v28;
  result.width = v29;
  return result;
}

- (void)layoutSubviews
{
  [(IMInfoHUD *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(IMInfoHUD *)self sizeThatFits:v7, v9];
  v12 = v11;
  v14 = v13;
  v21 = [(IMInfoHUD *)self _backgroundView];
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  v15 = round((CGRectGetWidth(v23) - v12) * 0.5);
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v16 = round((CGRectGetHeight(v24) - v14) * 0.5);
  [v21 setFrame:{v15, v16, v12, v14}];
  v17 = [(IMInfoHUD *)self textLabel];
  v18 = [(IMInfoHUD *)self textLabel];
  [v18 setFrame:{v15 + 10.0, v16 + 5.0, v12 + -20.0, v14 + -10.0}];

  v19 = [v17 text];
  v20 = [v19 length] == 0;

  [v21 setHidden:v20];
  [v17 setHidden:v20];
}

- (UILabel)textLabel
{
  textLabel = self->_textLabel;
  if (!textLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_textLabel;
    self->_textLabel = v4;

    v6 = [UIFont systemFontOfSize:17.0];
    [(UILabel *)self->_textLabel setFont:v6];

    [(UILabel *)self->_textLabel setTextAlignment:1];
    v7 = +[UIColor blackColor];
    [(UILabel *)self->_textLabel setTextColor:v7];

    v8 = +[UIColor clearColor];
    [(UILabel *)self->_textLabel setBackgroundColor:v8];

    [(UILabel *)self->_textLabel setNumberOfLines:0];
    [(UILabel *)self->_textLabel setLineBreakMode:0];
    [(UILabel *)self->_textLabel addObserver:self forKeyPath:@"text" options:0 context:self->_textLabel];
    [(IMInfoHUD *)self addSubview:self->_textLabel];
    textLabel = self->_textLabel;
  }

  return textLabel;
}

- (id)_backgroundView
{
  backgroundView = self->_backgroundView;
  if (!backgroundView)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_backgroundView;
    self->_backgroundView = v4;

    [(UIView *)self->_backgroundView setContentMode:0];
    [(UIView *)self->_backgroundView setAutoresizingMask:18];
    v6 = [UIColor colorWithWhite:1.0 alpha:0.9];
    v7 = [v6 CGColor];
    v8 = [(UIView *)self->_backgroundView layer];
    [v8 setBackgroundColor:v7];

    v9 = [(UIView *)self->_backgroundView layer];
    [v9 setCornerRadius:5.0];

    v10 = [(UIView *)self->_backgroundView layer];
    [v10 setMasksToBounds:1];

    [(IMInfoHUD *)self insertSubview:self->_backgroundView atIndex:0];
    backgroundView = self->_backgroundView;
  }

  return backgroundView;
}

- (CGRect)anchorRect
{
  x = self->_anchorRect.origin.x;
  y = self->_anchorRect.origin.y;
  width = self->_anchorRect.size.width;
  height = self->_anchorRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end