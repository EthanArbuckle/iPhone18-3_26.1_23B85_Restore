@interface FMGEOServicesHandler
+ (void)getCellularCoverageTileConfigurationAtLatitude:(double)a3 longitude:(double)a4 queue:(dispatch_queue_s *)a5 reason:(id)a6 responseBlock:(id)a7;
@end

@implementation FMGEOServicesHandler

+ (void)getCellularCoverageTileConfigurationAtLatitude:(double)a3 longitude:(double)a4 queue:(dispatch_queue_s *)a5 reason:(id)a6 responseBlock:(id)a7
{
  v11 = a6;
  v12 = a7;
  if ((atomic_load_explicit(&qword_1002D82D8, memory_order_acquire) & 1) == 0)
  {
    sub_1001FBEE4();
  }

  if (!a5)
  {
    a5 = qword_1002D82D0;
  }

  dispatch_retain(a5);
  pthread_mutex_lock(&stru_1002D48E8);
  v13 = xmmword_1002D4928;
  if (!xmmword_1002D4928)
  {
    sub_1000308F8();
  }

  v14 = *(&xmmword_1002D4928 + 1);
  if (*(&xmmword_1002D4928 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4928 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D48E8);
  v15 = *(qword_1002DBE98 + 136);
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FederatedMobility[FMGEOServicesHandler]:#I Crowdsourced OOS learnings: Obtained reference to GeoServicesHandler", buf, 2u);
      v15 = *(qword_1002DBE98 + 136);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      buf[0] = 134545921;
      *&buf[1] = a3;
      LOWORD(buf[3]) = 2053;
      *(&buf[3] + 2) = a4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FederatedMobility[FMGEOServicesHandler]:#I Crowdsourced OOS learnings: Current coordinates are - latitude:%{sensitive}lf, longitude: %{sensitive}lf", buf, 0x16u);
    }

    if ([v11 isEqualToString:@"OutOfService"])
    {
      v16 = 3;
    }

    else if ([v11 isEqualToString:@"LocationChangeDuringOOS"])
    {
      v16 = 4;
    }

    else if ([v11 isEqualToString:@"MapsSuggestionFetch"])
    {
      v16 = 6;
    }

    else
    {
      v16 = 0;
    }

    v17[0] = off_1002AB378;
    v17[1] = a5;
    v17[2] = objc_retainBlock(v12);
    v17[3] = v17;
    sub_10003199C(v13, v16, v17, a3, a4);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1001FBF40(v15);
  }

  dispatch_release(a5);
  if (v14)
  {
    sub_100008350(v14);
  }
}

@end