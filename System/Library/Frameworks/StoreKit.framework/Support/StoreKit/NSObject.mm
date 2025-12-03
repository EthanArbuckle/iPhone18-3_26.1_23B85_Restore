@interface NSObject
- (NSDictionary)tcr_dictionary;
@end

@implementation NSObject

- (NSDictionary)tcr_dictionary
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end