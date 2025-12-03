@interface ComponentButtonVolumeBase
- (BOOL)isVolumeButtonRepaired;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentButtonVolumeBase

- (void)populateAttributes:(id)attributes
{
  v6.receiver = self;
  v6.super_class = ComponentButtonVolumeBase;
  attributesCopy = attributes;
  [(ComponentBase *)&v6 populateAttributes:attributesCopy];
  v5 = [NSNumber numberWithBool:[(ComponentButtonVolumeBase *)self isVolumeButtonRepaired:v6.receiver]];
  [attributesCopy setObject:v5 forKeyedSubscript:@"isVolumeButtonRepaired"];
}

- (BOOL)isVolumeButtonRepaired
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ComponentButtonVolumeBase isVolumeButtonRepaired]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  if (objc_opt_class())
  {
    return +[CRRepairStatus isVolumeButtonRepaired];
  }

  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Repair data not available for this device, skipping.", &v5, 2u);
  }

  return 0;
}

@end