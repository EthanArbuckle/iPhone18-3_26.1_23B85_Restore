@interface PFXHtmlEntryMediaState
- (void)setPropertySet:(id)a3;
@end

@implementation PFXHtmlEntryMediaState

- (void)setPropertySet:(id)a3
{
  mPropertySet = self->mPropertySet;
  if (mPropertySet != a3)
  {

    self->mPropertySet = a3;
  }
}

@end