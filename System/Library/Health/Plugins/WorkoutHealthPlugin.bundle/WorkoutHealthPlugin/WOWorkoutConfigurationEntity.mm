@interface WOWorkoutConfigurationEntity
+ (BOOL)isPropertyFatal:(id)fatal version:(int64_t)version;
+ (id)dateProperties;
+ (id)integerProperties;
@end

@implementation WOWorkoutConfigurationEntity

+ (id)integerProperties
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___WOWorkoutConfigurationEntity;
  v5 = objc_msgSendSuper2(&v6, "integerProperties");
  v9[0] = @"configuration_type";
  v9[1] = @"goal_type";
  v9[2] = @"occurrence_count";
  v3 = [NSArray arrayWithObjects:v9 count:3];
  v4 = [v5 arrayByAddingObjectsFromArray:?];

  return v4;
}

+ (id)dateProperties
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___WOWorkoutConfigurationEntity;
  v5 = objc_msgSendSuper2(&v6, "dateProperties");
  v9[0] = @"occurrence_count_modification_date";
  v9[1] = @"occurrence_creation_date";
  v9[2] = @"occurrence_modification_date";
  v3 = [NSArray arrayWithObjects:v9 count:3];
  v4 = [v5 arrayByAddingObjectsFromArray:?];

  return v4;
}

+ (BOOL)isPropertyFatal:(id)fatal version:(int64_t)version
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fatal);
  v6 = ([location[0] isEqualToString:@"goal_type"] & 1) == 0 && (objc_msgSend(location[0], "isEqualToString:", @"occurrence_count") & 1) == 0 && (objc_msgSend(location[0], "isEqualToString:", @"occurrence_count_modification_date") & 1) == 0 && (objc_msgSend(location[0], "isEqualToString:", @"occurrence_creation_date") & 1) == 0 && (objc_msgSend(location[0], "isEqualToString:", @"occurrence_modification_date") & 1) == 0;
  objc_storeStrong(location, 0);
  return v6;
}

@end