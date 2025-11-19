@interface NSObject
- (NSDictionary)tcr_dictionary;
@end

@implementation NSObject

- (NSDictionary)tcr_dictionary
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end