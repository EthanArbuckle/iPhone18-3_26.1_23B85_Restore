@interface THSearchTableViewController
- (CGSize)overridePreferredContentSize;
- (CGSize)preferredContentSize;
- (THSearchTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (THSearchTableViewController)initWithStyle:(int64_t)a3;
- (void)setOverridePreferredContentSize:(CGSize)a3;
@end

@implementation THSearchTableViewController

- (THSearchTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = THSearchTableViewController;
  result = [(THSearchTableViewController *)&v5 initWithNibName:a3 bundle:a4];
  if (result)
  {
    result->_overridePreferredContentSize = CGSizeZero;
  }

  return result;
}

- (THSearchTableViewController)initWithStyle:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = THSearchTableViewController;
  result = [(THSearchTableViewController *)&v4 initWithStyle:a3];
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

- (void)setOverridePreferredContentSize:(CGSize)a3
{
  height = self->_overridePreferredContentSize.height;
  if ((height != a3.height || self->_overridePreferredContentSize.width != a3.width) && a3.height > height)
  {
    self->_overridePreferredContentSize = a3;
    if ([(THSearchTableViewController *)self parentViewController])
    {
      v7 = [(THSearchTableViewController *)self parentViewController];

      [v7 preferredContentSizeDidChangeForChildContentContainer:self];
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