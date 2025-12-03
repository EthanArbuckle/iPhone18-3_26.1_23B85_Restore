@interface ComponentCompass
- (id)backglassCompassSerialNumber;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentCompass

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  v6.receiver = self;
  v6.super_class = ComponentCompass;
  [(ComponentBase *)&v6 populateAttributes:attributesCopy];
  backglassCompassSerialNumber = [(ComponentCompass *)self backglassCompassSerialNumber];
  if (backglassCompassSerialNumber)
  {
    [attributesCopy setObject:backglassCompassSerialNumber forKeyedSubscript:@"backglassCompassSerialNumber"];
  }
}

- (id)backglassCompassSerialNumber
{
  v2 = ZhuGeCopyValue();
  if (!v2)
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error getting BackglassCompassSerialNumber: %@", buf, 0xCu);
    }
  }

  return v2;
}

@end