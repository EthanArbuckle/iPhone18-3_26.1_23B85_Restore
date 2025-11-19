@interface _TUIViewVisibilityObserver
- (BOOL)updateVisible:(BOOL)a3 time:(double)a4;
- (_TUIViewVisibilityObserver)initWithView:(id)a3 options:(id)a4 kind:(unint64_t)a5 block:(id)a6;
- (void)updateTime:(double)a3;
@end

@implementation _TUIViewVisibilityObserver

- (_TUIViewVisibilityObserver)initWithView:(id)a3 options:(id)a4 kind:(unint64_t)a5 block:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = _TUIViewVisibilityObserver;
  v13 = [(_TUIViewVisibilityObserver *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_view = v10;
    objc_storeStrong(&v13->_options, a4);
    v15 = [v12 copy];
    block = v14->_block;
    v14->_block = v15;

    v14->_kind = a5;
  }

  return v14;
}

- (BOOL)updateVisible:(BOOL)a3 time:(double)a4
{
  v4 = a3;
  visible = self->_visible;
  if (visible == a3)
  {
    [(_TUIViewVisibilityObserver *)self updateTime:a4];
  }

  else
  {
    self->_visible = a3;
    if (a3)
    {
      self->_time = a4;
      [(TUIVisibilityOptions *)self->_options duration];
      if (v7 == 0.0 && !self->_computedVisible)
      {
        self->_computedVisible = 1;
LABEL_9:
        [(_TUIViewVisibilityObserver *)self _notify];
      }
    }

    else if (self->_computedVisible)
    {
      self->_computedVisible = 0;
      goto LABEL_9;
    }
  }

  return visible != v4;
}

- (void)updateTime:(double)a3
{
  if (self->_visible && !self->_computedVisible)
  {
    time = self->_time;
    [(TUIVisibilityOptions *)self->_options duration];
    if (time + v6 <= a3)
    {
      self->_computedVisible = 1;

      [(_TUIViewVisibilityObserver *)self _notify];
    }
  }
}

@end