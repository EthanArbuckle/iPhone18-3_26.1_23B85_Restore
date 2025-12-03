@interface PETEventProperty
+ (id)ft_BOOLeanPropertyWithName:(id)name;
+ (id)ft_appearanceTypeProperty;
+ (id)ft_widgetDisplayModeProperty;
@end

@implementation PETEventProperty

+ (id)ft_appearanceTypeProperty
{
  v5[0] = &off_1000DBC70;
  v5[1] = &off_1000DBC88;
  v6[0] = @"stories";
  v6[1] = @"nostories";
  v5[2] = &off_1000DBCA0;
  v5[3] = &off_1000DBCB8;
  v6[2] = @"error";
  v6[3] = @"offline";
  v5[4] = &off_1000DBCD0;
  v6[4] = @"placeholder";
  v2 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:5];
  v3 = [PETEventProperty propertyWithName:@"type" enumMapping:v2];

  return v3;
}

+ (id)ft_widgetDisplayModeProperty
{
  v5[0] = &off_1000DBC88;
  v5[1] = &off_1000DBCA0;
  v6[0] = @"compact";
  v6[1] = @"expanded";
  v2 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = [PETEventProperty propertyWithName:@"displayMode" enumMapping:v2 autoSanitizeValues:0];

  return v3;
}

+ (id)ft_BOOLeanPropertyWithName:(id)name
{
  nameCopy = name;
  if (!nameCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009F794();
  }

  v7[0] = @"yes";
  v7[1] = @"no";
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [PETEventProperty propertyWithName:nameCopy possibleValues:v4];

  return v5;
}

@end