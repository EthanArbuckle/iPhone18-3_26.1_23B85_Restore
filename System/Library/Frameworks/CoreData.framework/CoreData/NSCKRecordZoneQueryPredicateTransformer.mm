@interface NSCKRecordZoneQueryPredicateTransformer
+ (id)allowedTopLevelClasses;
@end

@implementation NSCKRecordZoneQueryPredicateTransformer

+ (id)allowedTopLevelClasses
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___NSCKRecordZoneQueryPredicateTransformer;
  v2 = objc_msgSendSuper2(&v4, sel_allowedTopLevelClasses);
  return [v2 arrayByAddingObject:objc_opt_class()];
}

@end