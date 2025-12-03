@interface ADDisplayScaleContextCollector
- (ADDisplayScaleContextCollector)initWithDelegate:(id)delegate;
- (ADDisplayScaleContextCollectorDelegate)delegate;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation ADDisplayScaleContextCollector

- (ADDisplayScaleContextCollectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ADDisplayScaleContextCollector;
  [(ADDisplayScaleContextCollector *)&v2 dealloc];
}

- (ADDisplayScaleContextCollector)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = ADDisplayScaleContextCollector;
  v5 = [(ADDisplayScaleContextCollector *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ADDisplayScaleContextCollector *)v5 setDelegate:delegateCopy];
  }

  return v6;
}

@end