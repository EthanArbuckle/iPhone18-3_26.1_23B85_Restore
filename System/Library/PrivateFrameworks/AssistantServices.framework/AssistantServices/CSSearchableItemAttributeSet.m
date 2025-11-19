@interface CSSearchableItemAttributeSet
- (BOOL)hasLocationData;
@end

@implementation CSSearchableItemAttributeSet

- (BOOL)hasLocationData
{
  v3 = [(CSSearchableItemAttributeSet *)self latitude];
  if (v3)
  {
    v4 = [(CSSearchableItemAttributeSet *)self longitude];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end