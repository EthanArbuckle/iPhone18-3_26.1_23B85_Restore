@interface NSOperationQueue
- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4;
@end

@implementation NSOperationQueue

- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (GEOConfigGetBOOL())
  {
    if (qword_10195DDD8 != -1)
    {
      dispatch_once(&qword_10195DDD8, &stru_10162F628);
    }

    v8 = qword_10195DDD0;
    if (os_log_type_enabled(qword_10195DDD0, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Generating operation queue attachments", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10094D148;
    block[3] = &unk_1016605F8;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v7[2](v7);
  }
}

@end