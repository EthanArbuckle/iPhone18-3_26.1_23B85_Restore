@interface BufferedStreamReader
- (BOOL)hasBytesAvailable;
- (int64_t)readBytes:(char *)bytes length:(unint64_t)length error:(id *)error;
- (void)close;
- (void)dealloc;
@end

@implementation BufferedStreamReader

- (void)dealloc
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "(BufferedStream) Reader deallocated: %@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = BufferedStreamReader;
  [(BufferedStreamReader *)&v4 dealloc];
}

- (BOOL)hasBytesAvailable
{
  bufferedStream = self->_bufferedStream;
  if (bufferedStream)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    queue = bufferedStream->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001CFCF8;
    v6[3] = &unk_10051B638;
    v6[4] = bufferedStream;
    v6[5] = &v7;
    dispatch_sync(queue, v6);
    v4 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (int64_t)readBytes:(char *)bytes length:(unint64_t)length error:(id *)error
{
  bufferedStream = self->_bufferedStream;
  if (!bufferedStream)
  {
    return 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (length)
  {
    queue = bufferedStream->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001CFF04;
    v9[3] = &unk_10051B7E0;
    v9[4] = bufferedStream;
    v9[5] = &v10;
    v9[6] = length;
    v9[7] = bytes;
    dispatch_sync(queue, v9);
    v7 = v11[3];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (void)close
{
  bufferedStream = self->_bufferedStream;
  self->_bufferedStream = 0;

  v4.receiver = self;
  v4.super_class = BufferedStreamReader;
  [(Stream *)&v4 close];
}

@end