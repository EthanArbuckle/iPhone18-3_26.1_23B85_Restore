@interface LSPropertyList(_EXDictionaryLike)
- (id)_EX_dictionaryForKey:()_EXDictionaryLike;
@end

@implementation LSPropertyList(_EXDictionaryLike)

- (id)_EX_dictionaryForKey:()_EXDictionaryLike
{
  v4 = a3;
  v5 = [a1 objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

@end