@interface APGreenTeaLogger
- (APGreenTeaLogger)init;
- (void)dealloc;
- (void)willAccessLocation;
- (void)willTransmitLocationFor:(unint64_t)for;
@end

@implementation APGreenTeaLogger

- (APGreenTeaLogger)init
{
  v4.receiver = self;
  v4.super_class = APGreenTeaLogger;
  v2 = [(APGreenTeaLogger *)&v4 init];
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
  v4.super_class = APGreenTeaLogger;
  [(APGreenTeaLogger *)&v4 dealloc];
}

- (void)willAccessLocation
{
  [(APGreenTeaLogger *)self logger];
  v2 = getCTGreenTeaOsLogHandle();
  v3 = v2;
  if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23E74A000, v3, OS_LOG_TYPE_INFO, "Accessing location for ad targeting", buf, 2u);
  }

  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_23E74A000, v4, OS_LOG_TYPE_INFO, "Accessing location for ad targeting", v5, 2u);
  }
}

- (void)willTransmitLocationFor:(unint64_t)for
{
  if (for <= 1)
  {
    if (for)
    {
      if (for != 1)
      {
        return;
      }

      [(APGreenTeaLogger *)self logger];
      v3 = getCTGreenTeaOsLogHandle();
      v4 = v3;
      if (v3)
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          _os_log_impl(&dword_23E74A000, v4, OS_LOG_TYPE_INFO, "Transmitting location to store platform for ad targeting", v13, 2u);
        }
      }

      v5 = APLogForCategory();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

      *v13 = 0;
      v6 = "Transmitting location to store platform for ad targeting (TT)";
    }

    else
    {
      [(APGreenTeaLogger *)self logger];
      v9 = getCTGreenTeaOsLogHandle();
      v10 = v9;
      if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_23E74A000, v10, OS_LOG_TYPE_INFO, "Transmitting location to store platform for ad targeting", v13, 2u);
      }

      v5 = APLogForCategory();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

      *v13 = 0;
      v6 = "Transmitting location to store platform ad targeting (SLP)";
    }

    goto LABEL_26;
  }

  if (for == 2)
  {
    [(APGreenTeaLogger *)self logger];
    v11 = getCTGreenTeaOsLogHandle();
    v12 = v11;
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_23E74A000, v12, OS_LOG_TYPE_INFO, "Transmitting location to store platform for ad targeting", v13, 2u);
    }

    v5 = APLogForCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    *v13 = 0;
    v6 = "Transmitting location to store platform for ad targeting (PP)";
    goto LABEL_26;
  }

  if (for != 3)
  {
    return;
  }

  [(APGreenTeaLogger *)self logger];
  v7 = getCTGreenTeaOsLogHandle();
  v8 = v7;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_23E74A000, v8, OS_LOG_TYPE_INFO, "Transmitting location to store platform for ad targeting", v13, 2u);
  }

  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    v6 = "Transmitting location to store platform for ad targeting (DP)";
LABEL_26:
    _os_log_impl(&dword_23E74A000, v5, OS_LOG_TYPE_INFO, v6, v13, 2u);
  }

LABEL_27:
}

@end