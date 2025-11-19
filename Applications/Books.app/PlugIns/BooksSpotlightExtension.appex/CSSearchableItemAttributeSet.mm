@interface CSSearchableItemAttributeSet
- (id)si_stringAttributeForKey:(id)a3;
@end

@implementation CSSearchableItemAttributeSet

- (id)si_stringAttributeForKey:(id)a3
{
  v3 = [(CSSearchableItemAttributeSet *)self attributeForKey:a3];
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