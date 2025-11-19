@interface ADDisplayScaleContextCollector
- (ADDisplayScaleContextCollector)initWithDelegate:(id)a3;
- (ADDisplayScaleContextCollectorDelegate)delegate;
- (void)dealloc;
- (void)setDelegate:(id)a3;
@end

@implementation ADDisplayScaleContextCollector

- (ADDisplayScaleContextCollectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (ADDisplayScaleContextCollector)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ADDisplayScaleContextCollector;
  v5 = [(ADDisplayScaleContextCollector *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ADDisplayScaleContextCollector *)v5 setDelegate:v4];
  }

  return v6;
}

@end