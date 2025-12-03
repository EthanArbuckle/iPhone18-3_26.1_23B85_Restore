@interface SRCompressedOutputStream
+ (void)initialize;
- (int64_t)write:(const char *)write maxLength:(unint64_t)length;
- (void)close;
- (void)dealloc;
- (void)open;
@end

@implementation SRCompressedOutputStream

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100016930 = os_log_create("com.apple.SensorKit", "CompressedOutputStream");
  }
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 72);
    objc_setProperty_nonatomic(self, v3, 0, 80);
  }

  v4.receiver = self;
  v4.super_class = SRCompressedOutputStream;
  [(SRCompressedOutputStream *)&v4 dealloc];
}

- (void)open
{
  p_compression_stream = &self->_compression_stream;
  if (compression_stream_init(&self->_compression_stream, COMPRESSION_STREAM_ENCODE, self->_algorithm) == COMPRESSION_STATUS_ERROR)
  {
    v4 = qword_100016930;
    if (os_log_type_enabled(qword_100016930, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error initializing stream", v5, 2u);
    }
  }

  else
  {
    self->_streamStatus = 2;
    p_compression_stream->dst_ptr = [sub_100004E68(self) mutableBytes];
    p_compression_stream->dst_size = self->_bufferSize;
  }
}

- (void)close
{
  bufferSize = self->_bufferSize;
  p_compression_stream = &self->_compression_stream;
  dst_size = self->_compression_stream.dst_size;
  if (bufferSize != dst_size)
  {
    sub_100005104(self, bufferSize - dst_size);
    mutableBytes = [sub_100004E68(self) mutableBytes];
    v7 = self->_bufferSize;
    p_compression_stream->dst_ptr = mutableBytes;
    p_compression_stream->dst_size = v7;
  }

  v8 = compression_stream_process(p_compression_stream, 1);
  if (v8 == COMPRESSION_STATUS_END)
  {
    v12 = self->_bufferSize;
    v13 = p_compression_stream->dst_size;
    if (v12 > v13)
    {
      sub_100005104(self, v12 - v13);
    }
  }

  else if (v8)
  {
    if (v8 == COMPRESSION_STATUS_ERROR)
    {
      v9 = qword_100016930;
      if (os_log_type_enabled(qword_100016930, OS_LOG_TYPE_ERROR))
      {
        v17 = 0;
        v10 = "Error finalizing stream";
        v11 = &v17;
LABEL_10:
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
      }
    }
  }

  else
  {
    v9 = qword_100016930;
    if (os_log_type_enabled(qword_100016930, OS_LOG_TYPE_ERROR))
    {
      v16 = 0;
      v10 = "Error finalizing stream, expecting COMPRESSION_STATUS_END but got COMPRESSION_STATUS_OK";
      v11 = &v16;
      goto LABEL_10;
    }
  }

  compression_stream_destroy(p_compression_stream);
  [(NSFileHandle *)self->_outputFileHandle closeFile];
  objc_setProperty_nonatomic(self, v14, 0, 72);
  self->_streamStatus = 6;
  objc_setProperty_nonatomic(self, v15, 0, 80);
}

- (int64_t)write:(const char *)write maxLength:(unint64_t)length
{
  lengthCopy = length;
  p_compression_stream = &self->_compression_stream;
  self->_compression_stream.src_ptr = write;
  self->_compression_stream.src_size = length;
  if (!length)
  {
    return lengthCopy;
  }

  while (1)
  {
    while (1)
    {
      v7 = compression_stream_process(p_compression_stream, 0);
      if (v7)
      {
        break;
      }

      if (!p_compression_stream->src_size)
      {
        return lengthCopy;
      }

      if (!p_compression_stream->dst_size)
      {
        if (!sub_100005104(self, self->_bufferSize))
        {
          return -1;
        }

        mutableBytes = [sub_100004E68(self) mutableBytes];
        bufferSize = self->_bufferSize;
        p_compression_stream->dst_ptr = mutableBytes;
        p_compression_stream->dst_size = bufferSize;
        goto LABEL_12;
      }
    }

    if (v7 == COMPRESSION_STATUS_END)
    {
      v8 = qword_100016930;
      if (os_log_type_enabled(qword_100016930, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error compressing data. Got COMPRESSION_STATUS_END before finalizing the stream", buf, 2u);
      }

      goto LABEL_12;
    }

    if (v7 == COMPRESSION_STATUS_ERROR)
    {
      break;
    }

LABEL_12:
    if (!p_compression_stream->src_size)
    {
      return lengthCopy;
    }
  }

  v11 = qword_100016930;
  if (os_log_type_enabled(qword_100016930, OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error compressing data", v14, 2u);
  }

  compression_stream_destroy(p_compression_stream);
  return -1;
}

@end