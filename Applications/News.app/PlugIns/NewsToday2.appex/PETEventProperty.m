@interface PETEventProperty
+ (id)ft_BOOLeanPropertyWithName:(id)a3;
+ (id)ft_appearanceTypeProperty;
+ (id)ft_widgetDisplayModeProperty;
@end

@implementation PETEventProperty

+ (id)ft_appearanceTypeProperty
{
  v5[0] = &off_100111998;
  v5[1] = &off_1001119B0;
  v6[0] = @"stories";
  v6[1] = @"nostories";
  v5[2] = &off_1001119C8;
  v5[3] = &off_1001119E0;
  v6[2] = @"error";
  v6[3] = @"offline";
  v5[4] = &off_1001119F8;
  v6[4] = @"placeholder";
  v2 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:5];
  v3 = [PETEventProperty propertyWithName:@"type" enumMapping:v2];

  return v3;
}

+ (id)ft_widgetDisplayModeProperty
{
  v5[0] = &off_1001119B0;
  v5[1] = &off_1001119C8;
  v6[0] = @"compact";
  v6[1] = @"expanded";
  v2 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = [PETEventProperty propertyWithName:@"displayMode" enumMapping:v2 autoSanitizeValues:0];

  return v3;
}

+ (id)ft_BOOLeanPropertyWithName:(id)a3
{
  v3 = a3;
  if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C7030();
  }

  v7[0] = @"yes";
  v7[1] = @"no";
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [PETEventProperty propertyWithName:v3 possibleValues:v4];

  return v5;
}

@end