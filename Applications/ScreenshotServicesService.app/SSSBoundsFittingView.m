@interface SSSBoundsFittingView
- (UIView)managedView;
- (void)layoutSubviews;
- (void)setManagedView:(id)a3;
@end

@implementation SSSBoundsFittingView

- (void)setManagedView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_managedView);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_managedView);
    [v5 removeFromSuperview];

    v6 = objc_storeWeak(&self->_managedView, obj);
    [(SSSBoundsFittingView *)self addSubview:obj];

    [(SSSBoundsFittingView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SSSBoundsFittingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_managedView);
  [WeakRetained setFrame:{v4, v6, v8, v10}];
}

- (UIView)managedView
{
  WeakRetained = objc_loadWeakRetained(&self->_managedView);

  return WeakRetained;
}

@end