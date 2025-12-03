@interface _MFStackWrapperView
- (_MFStackWrapperView)initWithFrame:(CGRect)frame;
- (void)addWrappedView:(id)view;
- (void)setStackWrapperViewState:(unint64_t)state;
@end

@implementation _MFStackWrapperView

- (_MFStackWrapperView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = _MFStackWrapperView;
  v3 = [(_MFStackWrapperView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_MFStackWrapperView *)v3 setStackWrapperViewState:0];
    [(_MFStackWrapperView *)v4 setClipsToBounds:1];
    [(_MFStackWrapperView *)v4 setAutoresizingMask:18];
    v5 = [_MFStackLoadingView alloc];
    [(_MFStackWrapperView *)v4 bounds];
    v6 = [(_MFStackLoadingView *)v5 initWithFrame:?];
    [(_MFStackWrapperView *)v4 setLoadingView:v6];

    loadingView = [(_MFStackWrapperView *)v4 loadingView];
    [loadingView setAutoresizingMask:18];

    loadingView2 = [(_MFStackWrapperView *)v4 loadingView];
    activityIndicatorView = [loadingView2 activityIndicatorView];
    [activityIndicatorView startAnimating];

    loadingView3 = [(_MFStackWrapperView *)v4 loadingView];
    [(_MFStackWrapperView *)v4 addSubview:loadingView3];
  }

  return v4;
}

- (void)addWrappedView:(id)view
{
  viewCopy = view;
  [(_MFStackWrapperView *)self bounds];
  [viewCopy setFrame:?];
  [viewCopy setAutoresizingMask:18];
  if ([(_MFStackWrapperView *)self stackWrapperViewState])
  {
    [(_MFStackWrapperView *)self addSubview:viewCopy];
  }

  else
  {
    loadingView = [(_MFStackWrapperView *)self loadingView];
    [(_MFStackWrapperView *)self insertSubview:viewCopy below:loadingView];
  }

  [(_MFStackWrapperView *)self setMessageContentView:viewCopy];
}

- (void)setStackWrapperViewState:(unint64_t)state
{
  if (self->_stackWrapperViewState != state)
  {
    self->_stackWrapperViewState = state;
    v3 = state == 1;
    loadingView = [(_MFStackWrapperView *)self loadingView];
    [loadingView setHidden:v3];
  }
}

@end