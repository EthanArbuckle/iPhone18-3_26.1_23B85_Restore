@interface _TUIViewVisibilityObserver
- (BOOL)updateVisible:(BOOL)visible time:(double)time;
- (_TUIViewVisibilityObserver)initWithView:(id)view options:(id)options kind:(unint64_t)kind block:(id)block;
- (void)updateTime:(double)time;
@end

@implementation _TUIViewVisibilityObserver

- (_TUIViewVisibilityObserver)initWithView:(id)view options:(id)options kind:(unint64_t)kind block:(id)block
{
  viewCopy = view;
  optionsCopy = options;
  blockCopy = block;
  v18.receiver = self;
  v18.super_class = _TUIViewVisibilityObserver;
  v13 = [(_TUIViewVisibilityObserver *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_view = viewCopy;
    objc_storeStrong(&v13->_options, options);
    v15 = [blockCopy copy];
    block = v14->_block;
    v14->_block = v15;

    v14->_kind = kind;
  }

  return v14;
}

- (BOOL)updateVisible:(BOOL)visible time:(double)time
{
  visibleCopy = visible;
  visible = self->_visible;
  if (visible == visible)
  {
    [(_TUIViewVisibilityObserver *)self updateTime:time];
  }

  else
  {
    self->_visible = visible;
    if (visible)
    {
      self->_time = time;
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

  return visible != visibleCopy;
}

- (void)updateTime:(double)time
{
  if (self->_visible && !self->_computedVisible)
  {
    time = self->_time;
    [(TUIVisibilityOptions *)self->_options duration];
    if (time + v6 <= time)
    {
      self->_computedVisible = 1;

      [(_TUIViewVisibilityObserver *)self _notify];
    }
  }
}

@end