@interface FairPlayStreamReader
- (BOOL)hasBytesAvailable;
- (int64_t)readBytes:(char *)a3 length:(unint64_t)a4 error:(id *)a5;
- (void)close;
- (void)dealloc;
- (void)open;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation FairPlayStreamReader

- (void)dealloc
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v6 = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "(FairPlayStreamReader) Reader deallocated: %@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = FairPlayStreamReader;
  [(FairPlayStreamReader *)&v4 dealloc];
}

- (BOOL)hasBytesAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10030841C;
  v5[3] = &unk_10051EEF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)open
{
  v3.receiver = self;
  v3.super_class = FairPlayStreamReader;
  [(Stream *)&v3 open];
  [(StreamReader *)self->_streamReader open];
}

- (void)close
{
  [(StreamReader *)self->_streamReader close];
  streamReader = self->_streamReader;
  self->_streamReader = 0;

  v4.receiver = self;
  v4.super_class = FairPlayStreamReader;
  [(Stream *)&v4 close];
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  dispatchQueue = self->_dispatchQueue;
  v14 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003086B8;
  block[3] = &unk_100522A30;
  block[5] = &v11;
  block[6] = a4;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
  if (v12[3])
  {
    v8 = [(Stream *)self delegate];
    [v8 stream:self handleEvent:v12[3]];
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "(FairPlayStreamReader) All event codes were filtered", v9, 2u);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (int64_t)readBytes:(char *)a3 length:(unint64_t)a4 error:(id *)a5
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10030898C;
  v18 = sub_10030899C;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003089A4;
  block[3] = &unk_10051F0E0;
  block[4] = self;
  block[5] = &v14;
  block[7] = a3;
  block[8] = a4;
  block[6] = &v10;
  dispatch_sync(dispatchQueue, block);
  v7 = v11[3];
  if (a5 && v7 < 0)
  {
    *a5 = v15[5];
    v7 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v7;
}

@end