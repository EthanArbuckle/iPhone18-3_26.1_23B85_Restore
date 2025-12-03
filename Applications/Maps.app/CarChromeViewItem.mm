@interface CarChromeViewItem
+ (id)itemWithContext:(id)context;
- (CarChromeContext)context;
- (CarChromeViewItem)initWithContext:(id)context;
@end

@implementation CarChromeViewItem

- (CarChromeContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (CarChromeViewItem)initWithContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = CarChromeViewItem;
  v5 = [(CarChromeViewItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, contextCopy);
  }

  return v6;
}

+ (id)itemWithContext:(id)context
{
  contextCopy = context;
  v5 = [[self alloc] initWithContext:contextCopy];

  return v5;
}

@end