@interface CrossFadeView
- (CGRect)endFrame;
- (CGRect)startFrame;
- (CrossFadeView)initWithFrame:(CGRect)a3;
- (CrossFadeView)initWithStartView:(id)a3 endView:(id)a4 startFrame:(CGRect)a5 endFrame:(CGRect)a6;
- (id)description;
- (void)animateToEndStateWithDuration:(double)a3 completion:(id)a4;
- (void)animateToStartStateWithDuration:(double)a3 completion:(id)a4;
- (void)haltAnimation;
- (void)setEndView:(id)a3;
- (void)setScaleSize:(BOOL)a3;
- (void)setStartView:(id)a3;
- (void)setToEndState;
- (void)setToStartState;
- (void)springAnimateToEndStateWithTimingFunction:(int)a3 completion:(id)a4;
- (void)springAnimateToStartStateWithTimingFunction:(int)a3 completion:(id)a4;
@end

@implementation CrossFadeView

- (CrossFadeView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CrossFadeView;
  result = [(CrossFadeView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_scaleSize = 1;
  }

  return result;
}

- (CrossFadeView)initWithStartView:(id)a3 endView:(id)a4 startFrame:(CGRect)a5 endFrame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5.size.height;
  v11 = a5.size.width;
  v12 = a5.origin.y;
  v13 = a5.origin.x;
  v16 = a3;
  v17 = a4;
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
    [(CrossFadeView *)v18 setStartView:v16];
    [(CrossFadeView *)v19 setEndView:v17];
  }

  return v19;
}

- (void)setStartView:(id)a3
{
  v5 = a3;
  startView = self->_startView;
  v9 = v5;
  if (startView != v5)
  {
    if (startView)
    {
      v7 = [(UIView *)startView superview];

      if (v7 == self)
      {
        [(UIView *)self->_startView removeFromSuperview];
      }
    }

    objc_storeStrong(&self->_startView, a3);
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

- (void)setEndView:(id)a3
{
  v5 = a3;
  endView = self->_endView;
  v9 = v5;
  if (endView != v5)
  {
    if (endView)
    {
      v7 = [(UIView *)endView superview];

      if (v7 == self)
      {
        [(UIView *)self->_endView removeFromSuperview];
      }
    }

    objc_storeStrong(&self->_endView, a3);
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

- (void)animateToStartStateWithDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
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
  v10 = v6;
  v8 = v6;
  [v7 animateWithDuration:327680 delay:v11 options:v9 animations:a3 completion:0.0];
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

- (void)animateToEndStateWithDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
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
  v10 = v6;
  v8 = v6;
  [v7 animateWithDuration:327680 delay:v11 options:v9 animations:a3 completion:0.0];
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

- (void)springAnimateToStartStateWithTimingFunction:(int)a3 completion:(id)a4
{
  v5 = a4;
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
  v10 = v5;
  v8 = v5;
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

- (void)springAnimateToEndStateWithTimingFunction:(int)a3 completion:(id)a4
{
  v5 = a4;
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
  v10 = v5;
  v8 = v5;
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

  v7 = [(CrossFadeView *)self startView];
  [v7 setAlpha:1.0];

  v8 = [(CrossFadeView *)self endView];
  [v8 setAlpha:0.0];
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

  v7 = [(CrossFadeView *)self startView];
  [v7 setAlpha:0.0];

  v8 = [(CrossFadeView *)self endView];
  [v8 setAlpha:1.0];
}

- (void)haltAnimation
{
  v3 = [(CrossFadeView *)self layer];
  [v3 removeAllAnimations];

  v4 = [(CrossFadeView *)self startView];
  v5 = [v4 layer];
  [v5 removeAllAnimations];

  v7 = [(CrossFadeView *)self endView];
  v6 = [v7 layer];
  [v6 removeAllAnimations];
}

- (void)setScaleSize:(BOOL)a3
{
  self->_scaleSize = a3;
  if (a3)
  {
    [(CrossFadeView *)self setAutoresizesSubviews:1];
    v4 = [(CrossFadeView *)self startView];
    [v4 frame];
    v6 = v5;
    v8 = v7;

    [(CrossFadeView *)self bounds];
    v10 = v9;
    v12 = v11;
    v13 = [(CrossFadeView *)self startView];
    [v13 setFrame:{v6, v8, v10, v12}];

    v14 = [(CrossFadeView *)self endView];
    [v14 frame];
    v16 = v15;
    v18 = v17;

    [(CrossFadeView *)self bounds];
  }

  else
  {
    [(CrossFadeView *)self setAutoresizesSubviews:?];
    v21 = [(CrossFadeView *)self startView];
    [v21 frame];
    v23 = v22;
    v25 = v24;

    [(CrossFadeView *)self startFrame];
    v27 = v26;
    v29 = v28;
    v30 = [(CrossFadeView *)self startView];
    [v30 setFrame:{v23, v25, v27, v29}];

    v31 = [(CrossFadeView *)self endView];
    [v31 frame];
    v16 = v32;
    v18 = v33;

    [(CrossFadeView *)self endFrame];
  }

  v34 = v19;
  v35 = v20;
  v36 = [(CrossFadeView *)self endView];
  [v36 setFrame:{v16, v18, v34, v35}];
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = CrossFadeView;
  v3 = [(CrossFadeView *)&v12 description];
  v4 = [(CrossFadeView *)self startView];
  v5 = [v4 description];

  v6 = [(CrossFadeView *)self endView];
  v7 = [v6 description];

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