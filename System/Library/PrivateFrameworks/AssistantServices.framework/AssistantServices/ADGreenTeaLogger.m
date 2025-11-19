@interface ADGreenTeaLogger
- (ADGreenTeaLogger)init;
- (void)dealloc;
- (void)logLocationSend;
@end

@implementation ADGreenTeaLogger

- (void)dealloc
{
  if (self->_green_tea_logger)
  {
    ct_green_tea_logger_destroy();
  }

  v3.receiver = self;
  v3.super_class = ADGreenTeaLogger;
  [(ADGreenTeaLogger *)&v3 dealloc];
}

- (void)logLocationSend
{
  if (self->_green_tea_logger)
  {
    v2 = getCTGreenTeaOsLogHandle();
    v3 = v2;
    if (v2)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Sending location", v4, 2u);
      }
    }
  }
}

- (ADGreenTeaLogger)init
{
  v4.receiver = self;
  v4.super_class = ADGreenTeaLogger;
  v2 = [(ADGreenTeaLogger *)&v4 init];
  if (v2)
  {
    v2->_green_tea_logger = ct_green_tea_logger_create();
  }

  return v2;
}

@end