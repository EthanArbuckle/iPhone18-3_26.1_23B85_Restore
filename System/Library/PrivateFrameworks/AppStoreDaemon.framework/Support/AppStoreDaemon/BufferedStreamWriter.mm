@interface BufferedStreamWriter
- (BOOL)hasSpaceAvailable;
- (int64_t)writeBytes:(const char *)bytes length:(unint64_t)length error:(id *)error;
- (void)close;
- (void)dealloc;
- (void)expectedContentLength:(unint64_t)length;
@end

@implementation BufferedStreamWriter

- (void)dealloc
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "(BufferedStream) Writer deallocated: %@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = BufferedStreamWriter;
  [(BufferedStreamWriter *)&v4 dealloc];
}

- (BOOL)hasSpaceAvailable
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
    v6[2] = sub_1001CFD14;
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

- (void)close
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(block[0]) = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "(BufferedStream) Writer closed", block, 2u);
  }

  v6.receiver = self;
  v6.super_class = BufferedStreamWriter;
  [(Stream *)&v6 close];
  bufferedStream = self->_bufferedStream;
  if (bufferedStream)
  {
    queue = bufferedStream->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D0524;
    block[3] = &unk_10051AF98;
    block[4] = bufferedStream;
    dispatch_sync(queue, block);
  }
}

- (int64_t)writeBytes:(const char *)bytes length:(unint64_t)length error:(id *)error
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
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D0658;
    block[3] = &unk_10051B808;
    block[6] = length;
    block[7] = bytes;
    block[4] = bufferedStream;
    block[5] = &v10;
    block[8] = error;
    dispatch_sync(queue, block);
    v7 = v11[3];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (void)expectedContentLength:(unint64_t)length
{
  bufferedStream = self->_bufferedStream;
  if (bufferedStream)
  {
    queue = bufferedStream->_queue;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001D0140;
    v5[3] = &unk_10051B830;
    v5[4] = bufferedStream;
    v5[5] = length;
    dispatch_sync(queue, v5);
  }
}

@end