@interface NSOperationQueue
- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion;
@end

@implementation NSOperationQueue

- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion
{
  draftCopy = draft;
  completionCopy = completion;
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
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Generating operation queue attachments", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10094D148;
    block[3] = &unk_1016605F8;
    block[4] = self;
    v10 = draftCopy;
    v11 = completionCopy;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

@end