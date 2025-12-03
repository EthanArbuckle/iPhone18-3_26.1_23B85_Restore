@interface THSearchTableViewController
- (CGSize)overridePreferredContentSize;
- (CGSize)preferredContentSize;
- (THSearchTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (THSearchTableViewController)initWithStyle:(int64_t)style;
- (void)setOverridePreferredContentSize:(CGSize)size;
@end

@implementation THSearchTableViewController

- (THSearchTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = THSearchTableViewController;
  result = [(THSearchTableViewController *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->_overridePreferredContentSize = CGSizeZero;
  }

  return result;
}

- (THSearchTableViewController)initWithStyle:(int64_t)style
{
  v4.receiver = self;
  v4.super_class = THSearchTableViewController;
  result = [(THSearchTableViewController *)&v4 initWithStyle:style];
  if (result)
  {
    result->_overridePreferredContentSize = CGSizeZero;
  }

  return result;
}

- (CGSize)preferredContentSize
{
  width = self->_overridePreferredContentSize.width;
  height = self->_overridePreferredContentSize.height;
  if (width == CGSizeZero.width && height == CGSizeZero.height)
  {
    v8 = v2;
    v9 = v3;
    v7.receiver = self;
    v7.super_class = THSearchTableViewController;
    [(THSearchTableViewController *)&v7 preferredContentSize];
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)setOverridePreferredContentSize:(CGSize)size
{
  height = self->_overridePreferredContentSize.height;
  if ((height != size.height || self->_overridePreferredContentSize.width != size.width) && size.height > height)
  {
    self->_overridePreferredContentSize = size;
    if ([(THSearchTableViewController *)self parentViewController])
    {
      parentViewController = [(THSearchTableViewController *)self parentViewController];

      [parentViewController preferredContentSizeDidChangeForChildContentContainer:self];
    }
  }
}

- (CGSize)overridePreferredContentSize
{
  width = self->_overridePreferredContentSize.width;
  height = self->_overridePreferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end