@interface ASGreenTeaLogger
- (ASGreenTeaLogger)init;
- (void)dealloc;
- (void)willAccessLocationForSearch;
- (void)willRequestAppList;
- (void)willTransmitLocationForSearch;
@end

@implementation ASGreenTeaLogger

- (ASGreenTeaLogger)init
{
  v4.receiver = self;
  v4.super_class = ASGreenTeaLogger;
  v2 = [(ASGreenTeaLogger *)&v4 init];
  if (v2)
  {
    v2->_logger = ct_green_tea_logger_create();
  }

  return v2;
}

- (void)dealloc
{
  logger = self->_logger;
  ct_green_tea_logger_destroy();
  v4.receiver = self;
  v4.super_class = ASGreenTeaLogger;
  [(ASGreenTeaLogger *)&v4 dealloc];
}

- (void)willAccessLocationForSearch
{
  [(ASGreenTeaLogger *)self logger];
  v2 = getCTGreenTeaOsLogHandle();
  v3 = v2;
  if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2225D1000, v3, OS_LOG_TYPE_INFO, "Accessing location for search ad targeting", v4, 2u);
  }
}

- (void)willTransmitLocationForSearch
{
  [(ASGreenTeaLogger *)self logger];
  v2 = getCTGreenTeaOsLogHandle();
  v3 = v2;
  if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2225D1000, v3, OS_LOG_TYPE_INFO, "Transmitting location to store platform for search ad targeting", v4, 2u);
  }
}

- (void)willRequestAppList
{
  [(ASGreenTeaLogger *)self logger];
  v2 = getCTGreenTeaOsLogHandle();
  v3 = v2;
  if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2225D1000, v3, OS_LOG_TYPE_INFO, "Accessing application list to update installed status", v4, 2u);
  }
}

@end