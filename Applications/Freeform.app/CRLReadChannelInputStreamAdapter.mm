@interface CRLReadChannelInputStreamAdapter
- (CRLReadChannelInputStreamAdapter)initWithReadChannel:(id)a3 length:(unint64_t)a4 closeChannelOnClose:(BOOL)a5;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (void)close;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3;
@end

@implementation CRLReadChannelInputStreamAdapter

- (CRLReadChannelInputStreamAdapter)initWithReadChannel:(id)a3 length:(unint64_t)a4 closeChannelOnClose:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = CRLReadChannelInputStreamAdapter;
  v10 = [(CRLReadChannelInputStreamAdapter *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_readChannel, a3);
    objc_storeStrong(&v11->_leftoverData, &_dispatch_data_empty);
    v11->_length = a4;
    v11->_closeChannelOnClose = a5;
  }

  return v11;
}

- (void)dealloc
{
  [(CRLReadChannelInputStreamAdapter *)self close];
  v3.receiver = self;
  v3.super_class = CRLReadChannelInputStreamAdapter;
  [(CRLReadChannelInputStreamAdapter *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4
{
  offset = self->_offset;
  length = self->_length;
  v6 = __OFSUB__(length, offset);
  v7 = length - offset;
  if (!((v7 < 0) ^ v6 | (v7 == 0)))
  {
    if (v7 >= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = v7;
    }

    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = v9;
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v43[3] = a3;
    leftoverData = self->_leftoverData;
    if (dispatch_data_get_size(leftoverData))
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_1001DBB5C;
      applier[3] = &unk_101846E00;
      applier[5] = &v44;
      applier[6] = v43;
      applier[4] = self;
      dispatch_data_apply(leftoverData, applier);
      if (v45[3])
      {
        subrange = &_dispatch_data_empty;
        v12 = &_dispatch_data_empty;
      }

      else
      {
        v15 = self->_leftoverData;
        size = dispatch_data_get_size(v15);
        subrange = dispatch_data_create_subrange(v15, v9, size - v9);
      }

      v17 = self->_leftoverData;
      self->_leftoverData = subrange;

      v14 = v45[3];
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = v9;
      if (!v9)
      {
        goto LABEL_28;
      }
    }

    if (self->_readChannel)
    {
      v36 = 0;
      v37 = &v36;
      v38 = 0x3032000000;
      v39 = sub_1001DBBF0;
      v40 = sub_1001DBC00;
      v41 = 0;
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2020000000;
      v35 = 0;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1001DBC08;
      v28[3] = &unk_101846E50;
      v30 = &v44;
      v31 = v43;
      v28[4] = self;
      v32 = &v36;
      v33 = v34;
      v18 = dispatch_semaphore_create(0);
      v29 = v18;
      v19 = objc_retainBlock(v28);
      readChannel = self->_readChannel;
      if (readChannel)
      {
        [(CRLReadChannel *)readChannel readFromOffset:self->_offset length:v45[3] handler:v19];
      }

      else
      {
        v21 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10132F424();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10132F44C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10132F4E0();
        }

        v22 = off_1019EDA68;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = +[CRLAssertionHandler packedBacktraceString];
          sub_101318C3C(v23, buf, v21, v22);
        }

        v24 = [NSString stringWithUTF8String:"[CRLReadChannelInputStreamAdapter readToBuffer:size:]"];
        v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLReadChannelInputStreamAdapter.m"];
        [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:117 isFatal:0 description:"nil read channels"];

        dispatch_semaphore_signal(v18);
      }

      dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
      v26 = v37[5] == 0;

      _Block_object_dispose(v34, 8);
      _Block_object_dispose(&v36, 8);

      if (!v26)
      {
        v13 = 0;
LABEL_29:
        _Block_object_dispose(v43, 8);
        _Block_object_dispose(&v44, 8);
        return v13;
      }

      v14 = v45[3];
    }

LABEL_28:
    v13 = v9 - v14;
    goto LABEL_29;
  }

  return 0;
}

- (void)close
{
  if (self->_closeChannelOnClose)
  {
    [(CRLReadChannel *)self->_readChannel close];
  }

  readChannel = self->_readChannel;
  self->_readChannel = 0;
}

- (void)seekToOffset:(int64_t)a3
{
  if (self->_readChannel)
  {
    length = self->_length;
    if (length >= a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = self->_length;
    }

    if (length >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = a3;
    }

    self->_offset = v6;
    p_leftoverData = &self->_leftoverData;

    objc_storeStrong(p_leftoverData, &_dispatch_data_empty);
  }

  else
  {
    v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132F508();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132F51C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132F5B0();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v9, v8);
    }

    v10 = [NSString stringWithUTF8String:"[CRLReadChannelInputStreamAdapter seekToOffset:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLReadChannelInputStreamAdapter.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:156 isFatal:0 description:"Not a seekable stream"];
  }
}

@end