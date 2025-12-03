@interface THWAnchoredWidgetWPStyleProvider
- (THWAnchoredWidgetWPStyleProvider)initWithStorage:(id)storage;
- (void)dealloc;
@end

@implementation THWAnchoredWidgetWPStyleProvider

- (THWAnchoredWidgetWPStyleProvider)initWithStorage:(id)storage
{
  v6.receiver = self;
  v6.super_class = THWAnchoredWidgetWPStyleProvider;
  v4 = [(THWAnchoredWidgetWPStyleProvider *)&v6 init];
  if (v4)
  {
    v4->_storage = storage;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWAnchoredWidgetWPStyleProvider;
  [(THWAnchoredWidgetWPStyleProvider *)&v3 dealloc];
}

@end