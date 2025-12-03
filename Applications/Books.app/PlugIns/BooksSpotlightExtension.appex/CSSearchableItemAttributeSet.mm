@interface CSSearchableItemAttributeSet
- (id)si_stringAttributeForKey:(id)key;
@end

@implementation CSSearchableItemAttributeSet

- (id)si_stringAttributeForKey:(id)key
{
  v3 = [(CSSearchableItemAttributeSet *)self attributeForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end