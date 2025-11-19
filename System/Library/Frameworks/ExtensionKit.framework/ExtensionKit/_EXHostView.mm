@interface _EXHostView
- (void)embedView:(id)a3;
- (void)setContentCompressionResistancePriority:(float)a3 forAxis:(int64_t)a4;
@end

@implementation _EXHostView

- (void)setContentCompressionResistancePriority:(float)a3 forAxis:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = _EXHostView;
  [_EXHostView setContentCompressionResistancePriority:sel_setContentCompressionResistancePriority_forAxis_ forAxis:?];
  if (a4 == 1)
  {
    v7 = &OBJC_IVAR____EXHostView__verticalContentCompressionResistancePriority;
  }

  else
  {
    if (a4)
    {
      goto LABEL_6;
    }

    v7 = &OBJC_IVAR____EXHostView__horizontalContentCompressionResistancePriority;
  }

  *(&self->super.super.super.isa + *v7) = a3;
LABEL_6:
  v8 = [(_EXHostView *)self embededView];

  if (v8)
  {
    v9 = [(_EXHostView *)self embededView];
    *&v10 = a3;
    [v9 setContentCompressionResistancePriority:a4 forAxis:v10];
  }
}

- (void)embedView:(id)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_EXHostView *)self embededView];
  v6 = v5;
  if (v5 != v4)
  {
    if (v5)
    {
      [(_EXHostView *)self setEmbededView:0];
      [v6 removeFromSuperview];
    }

    if (v4)
    {
      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      *&v7 = self->_horizontalContentCompressionResistancePriority;
      [v4 setContentCompressionResistancePriority:0 forAxis:v7];
      *&v8 = self->_verticalContentCompressionResistancePriority;
      [v4 setContentCompressionResistancePriority:1 forAxis:v8];
      [(_EXHostView *)self addSubview:v4];
      v18 = MEMORY[0x1E696ACD8];
      v23 = [v4 leftAnchor];
      v22 = [(_EXHostView *)self leftAnchor];
      v21 = [v23 constraintEqualToAnchor:v22];
      v24[0] = v21;
      v20 = [v4 topAnchor];
      v19 = [(_EXHostView *)self topAnchor];
      v17 = [v20 constraintEqualToAnchor:v19];
      v24[1] = v17;
      v9 = [v4 rightAnchor];
      v10 = [(_EXHostView *)self rightAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      v24[2] = v11;
      v12 = [v4 bottomAnchor];
      v13 = [(_EXHostView *)self bottomAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      v24[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
      [v18 activateConstraints:v15];

      [(_EXHostView *)self setEmbededView:v4];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end