@interface PFXHtmlStackEntry
- (void)setStyleSelector:(id)selector;
@end

@implementation PFXHtmlStackEntry

- (void)setStyleSelector:(id)selector
{
  mSelector = self->mSelector;
  if (mSelector != selector)
  {

    self->mSelector = selector;
  }
}

@end