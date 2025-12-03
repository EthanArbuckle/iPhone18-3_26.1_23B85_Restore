@interface _EXHostView
- (void)embedView:(id)view;
- (void)setContentCompressionResistancePriority:(float)priority forAxis:(int64_t)axis;
@end

@implementation _EXHostView

- (void)setContentCompressionResistancePriority:(float)priority forAxis:(int64_t)axis
{
  v11.receiver = self;
  v11.super_class = _EXHostView;
  [_EXHostView setContentCompressionResistancePriority:sel_setContentCompressionResistancePriority_forAxis_ forAxis:?];
  if (axis == 1)
  {
    v7 = &OBJC_IVAR____EXHostView__verticalContentCompressionResistancePriority;
  }

  else
  {
    if (axis)
    {
      goto LABEL_6;
    }

    v7 = &OBJC_IVAR____EXHostView__horizontalContentCompressionResistancePriority;
  }

  *(&self->super.super.super.isa + *v7) = priority;
LABEL_6:
  embededView = [(_EXHostView *)self embededView];

  if (embededView)
  {
    embededView2 = [(_EXHostView *)self embededView];
    *&v10 = priority;
    [embededView2 setContentCompressionResistancePriority:axis forAxis:v10];
  }
}

- (void)embedView:(id)view
{
  v24[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  embededView = [(_EXHostView *)self embededView];
  v6 = embededView;
  if (embededView != viewCopy)
  {
    if (embededView)
    {
      [(_EXHostView *)self setEmbededView:0];
      [v6 removeFromSuperview];
    }

    if (viewCopy)
    {
      [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
      *&v7 = self->_horizontalContentCompressionResistancePriority;
      [viewCopy setContentCompressionResistancePriority:0 forAxis:v7];
      *&v8 = self->_verticalContentCompressionResistancePriority;
      [viewCopy setContentCompressionResistancePriority:1 forAxis:v8];
      [(_EXHostView *)self addSubview:viewCopy];
      v18 = MEMORY[0x1E696ACD8];
      leftAnchor = [viewCopy leftAnchor];
      leftAnchor2 = [(_EXHostView *)self leftAnchor];
      v21 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v24[0] = v21;
      topAnchor = [viewCopy topAnchor];
      topAnchor2 = [(_EXHostView *)self topAnchor];
      v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v24[1] = v17;
      rightAnchor = [viewCopy rightAnchor];
      rightAnchor2 = [(_EXHostView *)self rightAnchor];
      v11 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v24[2] = v11;
      bottomAnchor = [viewCopy bottomAnchor];
      bottomAnchor2 = [(_EXHostView *)self bottomAnchor];
      v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v24[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
      [v18 activateConstraints:v15];

      [(_EXHostView *)self setEmbededView:viewCopy];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end