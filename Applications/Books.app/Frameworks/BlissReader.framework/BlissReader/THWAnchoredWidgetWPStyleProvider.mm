@interface THWAnchoredWidgetWPStyleProvider
- (THWAnchoredWidgetWPStyleProvider)initWithStorage:(id)a3;
- (void)dealloc;
@end

@implementation THWAnchoredWidgetWPStyleProvider

- (THWAnchoredWidgetWPStyleProvider)initWithStorage:(id)a3
{
  v6.receiver = self;
  v6.super_class = THWAnchoredWidgetWPStyleProvider;
  v4 = [(THWAnchoredWidgetWPStyleProvider *)&v6 init];
  if (v4)
  {
    v4->_storage = a3;
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