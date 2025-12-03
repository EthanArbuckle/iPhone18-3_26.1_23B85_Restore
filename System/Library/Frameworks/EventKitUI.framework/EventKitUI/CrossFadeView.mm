@interface CrossFadeView
- (CGRect)endFrame;
- (CGRect)startFrame;
- (CrossFadeView)initWithFrame:(CGRect)frame;
- (CrossFadeView)initWithStartView:(id)view endView:(id)endView startFrame:(CGRect)frame endFrame:(CGRect)endFrame;
- (id)description;
- (void)animateToEndStateWithDuration:(double)duration completion:(id)completion;
- (void)animateToStartStateWithDuration:(double)duration completion:(id)completion;
- (void)haltAnimation;
- (void)setEndView:(id)view;
- (void)setScaleSize:(BOOL)size;
- (void)setStartView:(id)view;
- (void)setToEndState;
- (void)setToStartState;
- (void)springAnimateToEndStateWithTimingFunction:(int)function completion:(id)completion;
- (void)springAnimateToStartStateWithTimingFunction:(int)function completion:(id)completion;
@end

@implementation CrossFadeView

- (CrossFadeView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CrossFadeView;
  result = [(CrossFadeView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_scaleSize = 1;
  }

  return result;
}

- (CrossFadeView)initWithStartView:(id)view endView:(id)endView startFrame:(CGRect)frame endFrame:(CGRect)endFrame
{
  height = endFrame.size.height;
  width = endFrame.size.width;
  y = endFrame.origin.y;
  x = endFrame.origin.x;
  v10 = frame.size.height;
  v11 = frame.size.width;
  v12 = frame.origin.y;
  v13 = frame.origin.x;
  viewCopy = view;
  endViewCopy = endView;
  v18 = [(CrossFadeView *)self initWithFrame:v13, v12, v11, v10];
  v19 = v18;
  if (v18)
  {
    v18->_startFrame.origin.x = v13;
    v18->_startFrame.origin.y = v12;
    v18->_startFrame.size.width = v11;
    v18->_startFrame.size.height = v10;
    v18->_endFrame.origin.x = x;
    v18->_endFrame.origin.y = y;
    v18->_endFrame.size.width = width;
    v18->_endFrame.size.height = height;
    [(CrossFadeView *)v18 setStartView:viewCopy];
    [(CrossFadeView *)v19 setEndView:endViewCopy];
  }

  return v19;
}

- (void)setStartView:(id)view
{
  viewCopy = view;
  startView = self->_startView;
  v9 = viewCopy;
  if (startView != viewCopy)
  {
    if (startView)
    {
      superview = [(UIView *)startView superview];

      if (superview == self)
      {
        [(UIView *)self->_startView removeFromSuperview];
      }
    }

    objc_storeStrong(&self->_startView, view);
    v8 = self->_startView;
    if (v8)
    {
      [(UIView *)v8 removeFromSuperview];
      [(CrossFadeView *)self addSubview:self->_startView];
      [(CrossFadeView *)self bounds];
      [(UIView *)self->_startView setFrame:?];
      [(UIView *)self->_startView setAutoresizingMask:18];
    }
  }
}

- (void)setEndView:(id)view
{
  viewCopy = view;
  endView = self->_endView;
  v9 = viewCopy;
  if (endView != viewCopy)
  {
    if (endView)
    {
      superview = [(UIView *)endView superview];

      if (superview == self)
      {
        [(UIView *)self->_endView removeFromSuperview];
      }
    }

    objc_storeStrong(&self->_endView, view);
    v8 = self->_endView;
    if (v8)
    {
      [(UIView *)v8 removeFromSuperview];
      [(CrossFadeView *)self addSubview:self->_endView];
      [(CrossFadeView *)self bounds];
      [(UIView *)self->_endView setFrame:?];
      [(UIView *)self->_endView setAutoresizingMask:18];
    }
  }
}

- (void)animateToStartStateWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  [(CrossFadeView *)self setToEndState];
  v7 = MEMORY[0x1E69DD250];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__CrossFadeView_animateToStartStateWithDuration_completion___block_invoke;
  v11[3] = &unk_1E843EC60;
  v11[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__CrossFadeView_animateToStartStateWithDuration_completion___block_invoke_2;
  v9[3] = &unk_1E843F2D0;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 animateWithDuration:327680 delay:v11 options:v9 animations:duration completion:0.0];
}

uint64_t __60__CrossFadeView_animateToStartStateWithDuration_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)animateToEndStateWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  [(CrossFadeView *)self setToStartState];
  v7 = MEMORY[0x1E69DD250];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__CrossFadeView_animateToEndStateWithDuration_completion___block_invoke;
  v11[3] = &unk_1E843EC60;
  v11[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CrossFadeView_animateToEndStateWithDuration_completion___block_invoke_2;
  v9[3] = &unk_1E843F2D0;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 animateWithDuration:327680 delay:v11 options:v9 animations:duration completion:0.0];
}

uint64_t __58__CrossFadeView_animateToEndStateWithDuration_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)springAnimateToStartStateWithTimingFunction:(int)function completion:(id)completion
{
  completionCopy = completion;
  [(CrossFadeView *)self setToEndState];
  v6 = MEMORY[0x1E69DD250];
  v7 = +[SpringFactory sharedFactory];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__CrossFadeView_springAnimateToStartStateWithTimingFunction_completion___block_invoke;
  v11[3] = &unk_1E843EC60;
  v11[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__CrossFadeView_springAnimateToStartStateWithTimingFunction_completion___block_invoke_2;
  v9[3] = &unk_1E843F2D0;
  v10 = completionCopy;
  v8 = completionCopy;
  [v6 _animateWithDuration:393216 delay:v7 options:v11 factory:v9 animations:0.91 completion:0.0];
}

uint64_t __72__CrossFadeView_springAnimateToStartStateWithTimingFunction_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)springAnimateToEndStateWithTimingFunction:(int)function completion:(id)completion
{
  completionCopy = completion;
  [(CrossFadeView *)self setToStartState];
  v6 = MEMORY[0x1E69DD250];
  v7 = +[SpringFactory sharedFactory];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__CrossFadeView_springAnimateToEndStateWithTimingFunction_completion___block_invoke;
  v11[3] = &unk_1E843EC60;
  v11[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__CrossFadeView_springAnimateToEndStateWithTimingFunction_completion___block_invoke_2;
  v9[3] = &unk_1E843F2D0;
  v10 = completionCopy;
  v8 = completionCopy;
  [v6 _animateWithDuration:393216 delay:v7 options:v11 factory:v9 animations:0.91 completion:0.0];
}

uint64_t __70__CrossFadeView_springAnimateToEndStateWithTimingFunction_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setToStartState
{
  if ([(CrossFadeView *)self scaleSize])
  {
    [(CrossFadeView *)self startFrame];
    scaleViewToFrame(self, v3, v4, v5, v6);
  }

  else
  {
    [(CrossFadeView *)self frame];
    [(CrossFadeView *)self startFrame];
    [(CrossFadeView *)self setFrame:?];
  }

  startView = [(CrossFadeView *)self startView];
  [startView setAlpha:1.0];

  endView = [(CrossFadeView *)self endView];
  [endView setAlpha:0.0];
}

- (void)setToEndState
{
  if ([(CrossFadeView *)self scaleSize])
  {
    [(CrossFadeView *)self endFrame];
    scaleViewToFrame(self, v3, v4, v5, v6);
  }

  else
  {
    [(CrossFadeView *)self frame];
    [(CrossFadeView *)self endFrame];
    [(CrossFadeView *)self setFrame:?];
  }

  startView = [(CrossFadeView *)self startView];
  [startView setAlpha:0.0];

  endView = [(CrossFadeView *)self endView];
  [endView setAlpha:1.0];
}

- (void)haltAnimation
{
  layer = [(CrossFadeView *)self layer];
  [layer removeAllAnimations];

  startView = [(CrossFadeView *)self startView];
  layer2 = [startView layer];
  [layer2 removeAllAnimations];

  endView = [(CrossFadeView *)self endView];
  layer3 = [endView layer];
  [layer3 removeAllAnimations];
}

- (void)setScaleSize:(BOOL)size
{
  self->_scaleSize = size;
  if (size)
  {
    [(CrossFadeView *)self setAutoresizesSubviews:1];
    startView = [(CrossFadeView *)self startView];
    [startView frame];
    v6 = v5;
    v8 = v7;

    [(CrossFadeView *)self bounds];
    v10 = v9;
    v12 = v11;
    startView2 = [(CrossFadeView *)self startView];
    [startView2 setFrame:{v6, v8, v10, v12}];

    endView = [(CrossFadeView *)self endView];
    [endView frame];
    v16 = v15;
    v18 = v17;

    [(CrossFadeView *)self bounds];
  }

  else
  {
    [(CrossFadeView *)self setAutoresizesSubviews:?];
    startView3 = [(CrossFadeView *)self startView];
    [startView3 frame];
    v23 = v22;
    v25 = v24;

    [(CrossFadeView *)self startFrame];
    v27 = v26;
    v29 = v28;
    startView4 = [(CrossFadeView *)self startView];
    [startView4 setFrame:{v23, v25, v27, v29}];

    endView2 = [(CrossFadeView *)self endView];
    [endView2 frame];
    v16 = v32;
    v18 = v33;

    [(CrossFadeView *)self endFrame];
  }

  v34 = v19;
  v35 = v20;
  endView3 = [(CrossFadeView *)self endView];
  [endView3 setFrame:{v16, v18, v34, v35}];
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = CrossFadeView;
  v3 = [(CrossFadeView *)&v12 description];
  startView = [(CrossFadeView *)self startView];
  v5 = [startView description];

  endView = [(CrossFadeView *)self endView];
  v7 = [endView description];

  [(CrossFadeView *)self startFrame];
  v8 = NSStringFromCGRect(v14);
  [(CrossFadeView *)self endFrame];
  v9 = NSStringFromCGRect(v15);
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  / startView = %@ / endView = %@ / startFrame = %@ / endFrame = %@", v3, v5, v7, v8, v9];

  return v10;
}

- (CGRect)startFrame
{
  x = self->_startFrame.origin.x;
  y = self->_startFrame.origin.y;
  width = self->_startFrame.size.width;
  height = self->_startFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)endFrame
{
  x = self->_endFrame.origin.x;
  y = self->_endFrame.origin.y;
  width = self->_endFrame.size.width;
  height = self->_endFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end