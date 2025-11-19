@interface PassbookUIServiceApplication
- (double)statusBarHeight;
@end

@implementation PassbookUIServiceApplication

- (double)statusBarHeight
{
  if (self->_statusBarHeightOverride)
  {
    [(NSNumber *)self->_statusBarHeightOverride floatValue];
    return v2;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = PassbookUIServiceApplication;
    [(PassbookUIServiceApplication *)&v4 statusBarHeight];
  }

  return result;
}

@end