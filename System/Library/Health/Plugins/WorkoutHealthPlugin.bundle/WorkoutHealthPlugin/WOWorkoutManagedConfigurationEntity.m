@interface WOWorkoutManagedConfigurationEntity
+ (BOOL)isPropertyFatal:(id)a3 version:(int64_t)a4;
+ (id)dateProperties;
+ (id)stringProperties;
@end

@implementation WOWorkoutManagedConfigurationEntity

+ (id)stringProperties
{
  v8 = a1;
  v7 = a2;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___WOWorkoutManagedConfigurationEntity;
  v5 = objc_msgSendSuper2(&v6, "stringProperties");
  v9 = @"managed_source_identifier";
  v3 = [NSArray arrayWithObjects:&v9 count:1];
  v4 = [v5 arrayByAddingObjectsFromArray:?];

  return v4;
}

+ (id)dateProperties
{
  v8 = a1;
  v7 = a2;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___WOWorkoutManagedConfigurationEntity;
  v5 = objc_msgSendSuper2(&v6, "dateProperties");
  v9[0] = @"managed_source_scheduled_date";
  v9[1] = @"managed_source_completed_date";
  v3 = [NSArray arrayWithObjects:v9 count:2];
  v4 = [v5 arrayByAddingObjectsFromArray:?];

  return v4;
}

+ (BOOL)isPropertyFatal:(id)a3 version:(int64_t)a4
{
  v10 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  if ([location[0] isEqualToString:@"managed_source_scheduled_date"] & 1) != 0 || (objc_msgSend(location[0], "isEqualToString:", @"managed_source_completed_date"))
  {
    v11 = 0;
    v7 = 1;
  }

  else
  {
    v6.receiver = v10;
    v6.super_class = &OBJC_METACLASS___WOWorkoutManagedConfigurationEntity;
    v11 = objc_msgSendSuper2(&v6, "isPropertyFatal:version:", location[0], v8) & 1;
    v7 = 1;
  }

  objc_storeStrong(location, 0);
  return v11 & 1;
}

@end