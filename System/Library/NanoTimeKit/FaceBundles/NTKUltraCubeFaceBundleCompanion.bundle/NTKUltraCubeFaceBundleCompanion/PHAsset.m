@interface PHAsset
- (id)ntk_modificationDate;
@end

@implementation PHAsset

- (id)ntk_modificationDate
{
  v3 = [(PHAsset *)self modificationDate];
  if (!v3)
  {
    v3 = [(PHAsset *)self creationDate];
    if (!v3)
    {
      v3 = +[NSDate distantPast];
    }
  }

  return v3;
}

@end