@interface PFXHtmlEntryMediaState
- (void)setPropertySet:(id)set;
@end

@implementation PFXHtmlEntryMediaState

- (void)setPropertySet:(id)set
{
  mPropertySet = self->mPropertySet;
  if (mPropertySet != set)
  {

    self->mPropertySet = set;
  }
}

@end