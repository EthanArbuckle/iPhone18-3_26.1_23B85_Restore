@interface CTCLGPSSatsVisibilityAssertion
- (CTCLGPSSatsVisibilityAssertion)initWithQueue:(id)queue bundleType:(int)type callback:(void *)callback;
- (id).cxx_construct;
- (void)handleGPSSatsVisibility:(id)visibility error:(id)error;
@end

@implementation CTCLGPSSatsVisibilityAssertion

- (CTCLGPSSatsVisibilityAssertion)initWithQueue:(id)queue bundleType:(int)type callback:(void *)callback
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = CTCLGPSSatsVisibilityAssertion;
  if ([(CTCLGPSSatsVisibilityAssertion *)&v11 init])
  {
    if (type)
    {
      v8 = "cns.gps.vis";
    }

    else
    {
      v8 = "stw.gps.vis";
    }

    ctu::OsLogContext::OsLogContext(location, kCtLoggingSystemName, v8);
    operator new();
  }

  return 0;
}

- (void)handleGPSSatsVisibility:(id)visibility error:(id)error
{
  visibilityCopy = visibility;
  errorCopy = error;
  dispatch_assert_queue_V2(self->fQueue);
  if (errorCopy)
  {
    v8 = sub_100032AC8(self->fLogger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Encountered error: %@", buf, 0xCu);
    }

LABEL_4:

    goto LABEL_5;
  }

  if (!visibilityCopy)
  {
    v8 = sub_100032AC8(self->fLogger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Empty locationState: %@", buf, 0xCu);
    }

    goto LABEL_4;
  }

  mach_continuous_time();
  TMConvertTicksToSeconds();
  v10 = v9;
  v22 = 0.0;
  if (sub_100032A6C(visibilityCopy, @"kCLGNSSStateQueryAssertion_ResponseKey_LastGNSSStartKey", &v22))
  {
    v21 = 0.0;
    if (sub_100032A6C(visibilityCopy, @"kCLGNSSStateQueryAssertion_ResponseKey_LastGNSSStopKey", &v21))
    {
      v20 = 0.0;
      if (!sub_100032A6C(visibilityCopy, @"kCLGNSSStateQueryAssertion_ResponseKey_LastGNSSYieldKey", &v20))
      {
        v11 = sub_100032AC8(self->fLogger.__ptr_);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v24 = "kCLGNSSStateQueryAssertion_ResponseKey_LastGNSSYieldKey";
          v25 = 2112;
          v26 = *&visibilityCopy;
          v27 = 2048;
          v28 = v10;
          v12 = "%s Status missing in received locationState: %@, now: %f";
          v13 = v11;
          v14 = 32;
          goto LABEL_38;
        }

LABEL_25:

        goto LABEL_5;
      }

      if (v10 < v22 || v10 < v21 || v10 < v20)
      {
        v11 = sub_100032AC8(self->fLogger.__ptr_);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218752;
          v24 = *&v22;
          v25 = 2048;
          v26 = v21;
          v27 = 2048;
          v28 = v20;
          v29 = 2048;
          v30 = v10;
          v12 = "Invalid set of values [Start: %f, Stop: %f, Yield: %f, Now: %f]";
          v13 = v11;
          v14 = 42;
LABEL_38:
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
          goto LABEL_25;
        }

        goto LABEL_25;
      }

      if (v10 < v22)
      {
        v18 = "now >= lastGNSSStart";
        v19 = 125;
      }

      else if (v10 < v21)
      {
        v18 = "now >= lastGNSSStop";
        v19 = 126;
      }

      else
      {
        if (v10 >= v20)
        {
          if (v22 < v21)
          {
            if (v20 > v21 || v21 - v20 <= 30.0)
            {
              sub_10000FFD0(&self->fCallback, 1);
            }

            else if (v21 - v22 > 10.0)
            {
              sub_10000FFD0(&self->fCallback, 0);
            }

            goto LABEL_5;
          }

          if (v20 >= v22)
          {
            if (v10 - v20 < 60.0)
            {
              v17 = 1;
LABEL_43:
              sub_10000FFD0(&self->fCallback, v17);
              goto LABEL_5;
            }
          }

          else if (v10 - v22 < 60.0)
          {
            goto LABEL_5;
          }

          v17 = 0;
          goto LABEL_43;
        }

        v18 = "now >= lastGNSSYield";
        v19 = 127;
      }

      __assert_rtn("[CTCLGPSSatsVisibilityAssertion handleGPSSatsVisibility:error:]", "CTGPSSatsVisibilityProvider.mm", v19, v18);
    }

    v16 = sub_100032AC8(self->fLogger.__ptr_);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "kCLGNSSStateQueryAssertion_ResponseKey_LastGNSSStopKey";
      v25 = 2112;
      v26 = *&visibilityCopy;
      v27 = 2048;
      v28 = v10;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s missing in received locationState: %@, now: %f", buf, 0x20u);
    }
  }

  else
  {
    v15 = sub_100032AC8(self->fLogger.__ptr_);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "kCLGNSSStateQueryAssertion_ResponseKey_LastGNSSStartKey";
      v25 = 2112;
      v26 = *&visibilityCopy;
      v27 = 2048;
      v28 = v10;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s missing in received locationState: %@, now: %f", buf, 0x20u);
    }
  }

LABEL_5:
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 6) = 0;
  return self;
}

@end