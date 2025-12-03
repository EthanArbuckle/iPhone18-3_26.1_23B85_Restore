@interface _CNContactMatchingFetchRequestInfos
+ (id)fetchRequestInfoForPredicate:(id)predicate properties:(id)properties;
@end

@implementation _CNContactMatchingFetchRequestInfos

+ (id)fetchRequestInfoForPredicate:(id)predicate properties:(id)properties
{
  propertiesCopy = properties;
  predicateCopy = predicate;
  v8 = objc_alloc_init(self);
  [v8 setPredicate:predicateCopy];

  [v8 setProperties:propertiesCopy];

  return v8;
}

@end