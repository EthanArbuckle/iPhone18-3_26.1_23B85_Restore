@interface _CNContactMatchingFetchRequestInfos
+ (id)fetchRequestInfoForPredicate:(id)a3 properties:(id)a4;
@end

@implementation _CNContactMatchingFetchRequestInfos

+ (id)fetchRequestInfoForPredicate:(id)a3 properties:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setPredicate:v7];

  [v8 setProperties:v6];

  return v8;
}

@end