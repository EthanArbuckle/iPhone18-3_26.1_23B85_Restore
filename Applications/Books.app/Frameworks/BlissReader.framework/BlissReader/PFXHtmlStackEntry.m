@interface PFXHtmlStackEntry
- (void)setStyleSelector:(id)a3;
@end

@implementation PFXHtmlStackEntry

- (void)setStyleSelector:(id)a3
{
  mSelector = self->mSelector;
  if (mSelector != a3)
  {

    self->mSelector = a3;
  }
}

@end