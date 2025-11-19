@interface CarChromeViewItem
+ (id)itemWithContext:(id)a3;
- (CarChromeContext)context;
- (CarChromeViewItem)initWithContext:(id)a3;
@end

@implementation CarChromeViewItem

- (CarChromeContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (CarChromeViewItem)initWithContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CarChromeViewItem;
  v5 = [(CarChromeViewItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, v4);
  }

  return v6;
}

+ (id)itemWithContext:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithContext:v4];

  return v5;
}

@end