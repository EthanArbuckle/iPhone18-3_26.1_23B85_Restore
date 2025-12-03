@interface PHAsset
- (id)ntk_modificationDate;
@end

@implementation PHAsset

- (id)ntk_modificationDate
{
  modificationDate = [(PHAsset *)self modificationDate];
  if (!modificationDate)
  {
    modificationDate = [(PHAsset *)self creationDate];
    if (!modificationDate)
    {
      modificationDate = +[NSDate distantPast];
    }
  }

  return modificationDate;
}

@end