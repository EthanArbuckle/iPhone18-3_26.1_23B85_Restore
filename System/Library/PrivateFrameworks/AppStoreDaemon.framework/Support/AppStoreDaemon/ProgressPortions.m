@interface ProgressPortions
- (id)description;
@end

@implementation ProgressPortions

- (id)description
{
  postProcessPortion = self->_postProcessPortion;
  installPortion = self->_installPortion;
  if (postProcessPortion <= 0.0)
  {
    [NSString stringWithFormat:@"{ %.2f : %.2f }", *&self->_downloadPortion, *&installPortion, v6, v7];
  }

  else
  {
    [NSString stringWithFormat:@"{ %.2f : %.2f : %.2f }(%lld)", *&self->_downloadPortion, *&installPortion, *&postProcessPortion, self->_essentialBackgroundAssetAllowance];
  }
  v4 = ;

  return v4;
}

@end