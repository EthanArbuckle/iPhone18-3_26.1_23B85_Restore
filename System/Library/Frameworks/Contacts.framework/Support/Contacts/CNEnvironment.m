@interface CNEnvironment
+ (id)makeDefaultContactStore;
@end

@implementation CNEnvironment

+ (id)makeDefaultContactStore
{
  v2 = objc_alloc_init(CNContactStore);

  return v2;
}

@end