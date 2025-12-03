@interface BEScrollView
- (id)_actingParentScrollView;
- (id)delegateFromSuperclass;
- (void)_asynchronouslyHandleScrollEvent:(id)event completion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation BEScrollView

- (void)setDelegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = BEScrollView;
  delegateCopy = delegate;
  [(BEScrollView *)&v7 setDelegate:delegateCopy];
  *&self->_beScrollViewFlags = *&self->_beScrollViewFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *&self->_beScrollViewFlags = *&self->_beScrollViewFlags & 0xFD | v6;
}

- (id)delegateFromSuperclass
{
  v4.receiver = self;
  v4.super_class = BEScrollView;
  delegate = [(BEScrollView *)&v4 delegate];

  return delegate;
}

- (void)_asynchronouslyHandleScrollEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  v7 = [eventCopy phase] - 2;
  if (v7 < 4)
  {
    v8 = [[BEScrollViewScrollUpdate alloc] initWithScrollEvent:eventCopy phase:v7];
    delegateFromSuperclass = [(BEScrollView *)self delegateFromSuperclass];
    [delegateFromSuperclass scrollView:self handleScrollUpdate:v8 completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, [(BEScrollView *)self isScrollEnabled]^ 1);
  }
}

- (id)_actingParentScrollView
{
  delegateFromSuperclass = [(BEScrollView *)self delegateFromSuperclass];
  v4 = delegateFromSuperclass;
  if ((*&self->_beScrollViewFlags & 2) == 0 || ([delegateFromSuperclass parentScrollViewForScrollView:self], (_actingParentScrollView = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7.receiver = self;
    v7.super_class = BEScrollView;
    _actingParentScrollView = [(BEScrollView *)&v7 _actingParentScrollView];
  }

  return _actingParentScrollView;
}

@end