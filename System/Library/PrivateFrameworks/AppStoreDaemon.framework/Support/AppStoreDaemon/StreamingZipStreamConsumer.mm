@interface StreamingZipStreamConsumer
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation StreamingZipStreamConsumer

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v9) = 134217984;
    *(&v9 + 4) = event;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "(SZStreamConsumer) Upstream event code %lu", &v9, 0xCu);
  }

  if ((event & 3) != 0 && self)
  {
    dispatchQueue = self->_dispatchQueue;
    *&v9 = _NSConcreteStackBlock;
    *(&v9 + 1) = 3221225472;
    v10 = sub_1002DD830;
    v11 = &unk_10051AF98;
    selfCopy2 = self;
    dispatch_sync(dispatchQueue, &v9);
  }

  if ((event & 0x10) != 0)
  {
    if (self)
    {
      v8 = self->_dispatchQueue;
      *&v9 = _NSConcreteStackBlock;
      *(&v9 + 1) = 3221225472;
      v10 = sub_1002DD688;
      v11 = &unk_10051AF98;
      selfCopy2 = self;
      dispatch_sync(v8, &v9);
    }
  }
}

@end