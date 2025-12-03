@interface WOWorkoutExternalConfigurationProviderEntity
+ (id)dataProperties;
+ (id)dateProperties;
+ (id)integerProperties;
+ (id)stringProperties;
+ (void)preparePersistenceForDelete:(id)delete;
@end

@implementation WOWorkoutExternalConfigurationProviderEntity

+ (id)stringProperties
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___WOWorkoutExternalConfigurationProviderEntity;
  v5 = objc_msgSendSuper2(&v6, "stringProperties");
  v9[0] = @"name";
  v9[1] = @"bundleId";
  v3 = [NSArray arrayWithObjects:v9 count:2];
  v4 = [v5 arrayByAddingObjectsFromArray:?];

  return v4;
}

+ (id)integerProperties
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___WOWorkoutExternalConfigurationProviderEntity;
  v5 = objc_msgSendSuper2(&v6, "integerProperties");
  v9 = @"syncPermission";
  v3 = [NSArray arrayWithObjects:&v9 count:1];
  v4 = [v5 arrayByAddingObjectsFromArray:?];

  return v4;
}

+ (id)dateProperties
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___WOWorkoutExternalConfigurationProviderEntity;
  v5 = objc_msgSendSuper2(&v6, "dateProperties");
  v9 = @"syncStartDate";
  v3 = [NSArray arrayWithObjects:&v9 count:1];
  v4 = [v5 arrayByAddingObjectsFromArray:?];

  return v4;
}

+ (id)dataProperties
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___WOWorkoutExternalConfigurationProviderEntity;
  v5 = objc_msgSendSuper2(&v6, "dataProperties");
  v9 = @"imageData";
  v3 = [NSArray arrayWithObjects:&v9 count:1];
  v4 = [v5 arrayByAddingObjectsFromArray:?];

  return v4;
}

+ (void)preparePersistenceForDelete:(id)delete
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delete);
  v8.receiver = selfCopy;
  v8.super_class = &OBJC_METACLASS___WOWorkoutExternalConfigurationProviderEntity;
  objc_msgSendSuper2(&v8, "preparePersistenceForDelete:", location[0]);
  keyedDatas = [location[0] keyedDatas];
  v7 = [NSMutableDictionary dictionaryWithDictionary:?];

  v4 = [@" " dataUsingEncoding:4];
  [NSMutableDictionary setObject:v7 forKeyedSubscript:"setObject:forKeyedSubscript:"];

  [location[0] setKeyedDatas:v7];
  keyedNumbers = [location[0] keyedNumbers];
  v6 = [NSMutableDictionary dictionaryWithDictionary:?];

  [(NSMutableDictionary *)v6 setObject:&off_21930 forKeyedSubscript:@"syncPermission"];
  [location[0] setKeyedNumbers:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

@end