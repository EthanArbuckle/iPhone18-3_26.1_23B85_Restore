@interface IMInfoHUD
- (CGRect)anchorRect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UILabel)textLabel;
- (id)_backgroundView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation IMInfoHUD

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (self->_textLabel == context)
  {

    [(IMInfoHUD *)self setNeedsLayout:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = IMInfoHUD;
    [(IMInfoHUD *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)dealloc
{
  [(UILabel *)self->_textLabel removeObserver:self forKeyPath:@"text"];
  v3.receiver = self;
  v3.super_class = IMInfoHUD;
  [(IMInfoHUD *)&v3 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(IMInfoHUD *)self superview:fits.width];
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
  _backgroundView = [(IMInfoHUD *)self _backgroundView];
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
  [_backgroundView setFrame:{v15, v16, v12, v14}];
  textLabel = [(IMInfoHUD *)self textLabel];
  textLabel2 = [(IMInfoHUD *)self textLabel];
  [textLabel2 setFrame:{v15 + 10.0, v16 + 5.0, v12 + -20.0, v14 + -10.0}];

  text = [textLabel text];
  v20 = [text length] == 0;

  [_backgroundView setHidden:v20];
  [textLabel setHidden:v20];
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
    cGColor = [v6 CGColor];
    layer = [(UIView *)self->_backgroundView layer];
    [layer setBackgroundColor:cGColor];

    layer2 = [(UIView *)self->_backgroundView layer];
    [layer2 setCornerRadius:5.0];

    layer3 = [(UIView *)self->_backgroundView layer];
    [layer3 setMasksToBounds:1];

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