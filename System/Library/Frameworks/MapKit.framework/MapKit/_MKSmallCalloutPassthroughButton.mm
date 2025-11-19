@interface _MKSmallCalloutPassthroughButton
- (_MKSmallCalloutPassthroughButton)initWithFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation _MKSmallCalloutPassthroughButton

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v16.receiver = self;
  v16.super_class = _MKSmallCalloutPassthroughButton;
  [(_MKSmallCalloutPassthroughButton *)&v16 setHighlighted:?];
  if (v3 && self->_targetControl)
  {
    highlightView = self->_highlightView;
    if (!highlightView)
    {
      v6 = objc_alloc(MEMORY[0x1E69DD250]);
      v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v8 = self->_highlightView;
      self->_highlightView = v7;

      v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.150000006];
      [(UIView *)self->_highlightView setBackgroundColor:v9];

      [(UIView *)self->_highlightView setTranslatesAutoresizingMaskIntoConstraints:0];
      highlightView = self->_highlightView;
    }

    [(_MKSmallCalloutPassthroughButton *)self insertSubview:highlightView atIndex:0];
    v10 = MEMORY[0x1E696ACD8];
    v11 = _NSDictionaryOfVariableBindings(&cfstr_Highlightview.isa, self->_highlightView, 0);
    v12 = [v10 constraintsWithVisualFormat:@"H:|[_highlightView]|" options:0 metrics:0 views:v11];
    [(_MKSmallCalloutPassthroughButton *)self addConstraints:v12];

    v13 = MEMORY[0x1E696ACD8];
    v14 = _NSDictionaryOfVariableBindings(&cfstr_Highlightview.isa, self->_highlightView, 0);
    v15 = [v13 constraintsWithVisualFormat:@"V:|[_highlightView]|" options:0 metrics:0 views:v14];
    [(_MKSmallCalloutPassthroughButton *)self addConstraints:v15];
  }

  else
  {
    [(UIView *)self->_highlightView removeFromSuperview];
  }
}

- (_MKSmallCalloutPassthroughButton)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _MKSmallCalloutPassthroughButton;
  v3 = [(_MKSmallCalloutPassthroughButton *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_MKSmallCalloutPassthroughButton *)v3 addTarget:v3 action:sel_handleTap_ forControlEvents:64];
    v5 = v4;
  }

  return v4;
}

@end