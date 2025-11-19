@interface BEScrollView
- (id)_actingParentScrollView;
- (id)delegateFromSuperclass;
- (void)_asynchronouslyHandleScrollEvent:(id)a3 completion:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation BEScrollView

- (void)setDelegate:(id)a3
{
  v7.receiver = self;
  v7.super_class = BEScrollView;
  v4 = a3;
  [(BEScrollView *)&v7 setDelegate:v4];
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
  v2 = [(BEScrollView *)&v4 delegate];

  return v2;
}

- (void)_asynchronouslyHandleScrollEvent:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 phase] - 2;
  if (v7 < 4)
  {
    v8 = [[BEScrollViewScrollUpdate alloc] initWithScrollEvent:v10 phase:v7];
    v9 = [(BEScrollView *)self delegateFromSuperclass];
    [v9 scrollView:self handleScrollUpdate:v8 completion:v6];
  }

  else
  {
    v6[2](v6, [(BEScrollView *)self isScrollEnabled]^ 1);
  }
}

- (id)_actingParentScrollView
{
  v3 = [(BEScrollView *)self delegateFromSuperclass];
  v4 = v3;
  if ((*&self->_beScrollViewFlags & 2) == 0 || ([v3 parentScrollViewForScrollView:self], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7.receiver = self;
    v7.super_class = BEScrollView;
    v5 = [(BEScrollView *)&v7 _actingParentScrollView];
  }

  return v5;
}

@end