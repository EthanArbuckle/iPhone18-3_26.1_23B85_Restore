@interface LZMAStreamReader
- (BOOL)hasBytesAvailable;
- (int64_t)readBytes:(char *)bytes length:(unint64_t)length error:(id *)error;
- (void)close;
- (void)dealloc;
- (void)open;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation LZMAStreamReader

- (void)dealloc
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "(LZMAStreamReader) Reader deallocated: %@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = LZMAStreamReader;
  [(LZMAStreamReader *)&v4 dealloc];
}

- (BOOL)hasBytesAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100261154;
  v5[3] = &unk_10051EEF0;
  v5[4] = self;
  v5[5] = &v6;
  sub_100379C5C(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)close
{
  v4.receiver = self;
  v4.super_class = LZMAStreamReader;
  [(Stream *)&v4 close];
  [(StreamReader *)self->_streamReader close];
  streamReader = self->_streamReader;
  self->_streamReader = 0;
}

- (void)open
{
  [(StreamReader *)self->_streamReader open];
  v3.receiver = self;
  v3.super_class = LZMAStreamReader;
  [(Stream *)&v3 open];
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = event;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "(LZMAStreamReader) Upstream event code %lu", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x2020000000;
  eventCopy = event;
  lock = self->_lock;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10026157C;
  v11[3] = &unk_10051EEF0;
  v11[4] = self;
  v11[5] = &buf;
  sub_100379C5C(lock, v11);
  if (*(*(&buf + 1) + 24))
  {
    if ([(Stream *)self streamStatus]< 2 || [(Stream *)self streamStatus]> 5)
    {
      delegate = ASDLogHandleForCategory();
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(*(&buf + 1) + 24);
        *v12 = 134217984;
        v13 = v10;
        _os_log_debug_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_DEBUG, "(LZMAStreamReader) Not forwarding event code %lu", v12, 0xCu);
      }
    }

    else
    {
      delegate = [(Stream *)self delegate];
      [delegate stream:self handleEvent:*(*(&buf + 1) + 24)];
    }
  }

  _Block_object_dispose(&buf, 8);
}

- (int64_t)readBytes:(char *)bytes length:(unint64_t)length error:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10026178C;
  v14 = sub_10026179C;
  v15 = 0;
  lock = self->_lock;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002617A4;
  v9[3] = &unk_10051F0E0;
  v9[4] = self;
  v9[5] = &v10;
  v9[7] = length;
  v9[8] = bytes;
  v9[6] = &v16;
  sub_100379C5C(lock, v9);
  v7 = v17[3];
  if (error && v7 < 0)
  {
    *error = v11[5];
    v7 = v17[3];
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v7;
}

@end