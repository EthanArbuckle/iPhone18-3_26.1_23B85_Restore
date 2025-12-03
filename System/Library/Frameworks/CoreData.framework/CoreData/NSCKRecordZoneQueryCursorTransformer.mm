@interface NSCKRecordZoneQueryCursorTransformer
+ (Class)transformedValueClass;
+ (id)allowedTopLevelClasses;
@end

@implementation NSCKRecordZoneQueryCursorTransformer

+ (id)allowedTopLevelClasses
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___NSCKRecordZoneQueryCursorTransformer;
  v2 = objc_msgSendSuper2(&v4, sel_allowedTopLevelClasses);
  getCloudKitCKQueryCursorClass[0]();
  return [v2 arrayByAddingObject:objc_opt_class()];
}

+ (Class)transformedValueClass
{
  getCloudKitCKQueryCursorClass[0]();

  return objc_opt_class();
}

@end