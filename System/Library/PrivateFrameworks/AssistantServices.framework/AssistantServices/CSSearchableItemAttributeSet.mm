@interface CSSearchableItemAttributeSet
- (BOOL)hasLocationData;
@end

@implementation CSSearchableItemAttributeSet

- (BOOL)hasLocationData
{
  latitude = [(CSSearchableItemAttributeSet *)self latitude];
  if (latitude)
  {
    longitude = [(CSSearchableItemAttributeSet *)self longitude];
    v5 = longitude != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end