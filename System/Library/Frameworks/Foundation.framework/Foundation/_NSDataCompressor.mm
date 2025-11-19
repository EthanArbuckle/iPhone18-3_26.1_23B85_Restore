@interface _NSDataCompressor
- (BOOL)processBytes:(char *)a3 size:(unint64_t)a4 flags:(int)a5;
- (_NSDataCompressor)initWithAlgorithm:(int)a3 operation:(int)a4 dataHandler:(id)a5;
- (void)dealloc;
@end

@implementation _NSDataCompressor

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  compression_stream_destroy(&self->_stream);

  v3.receiver = self;
  v3.super_class = _NSDataCompressor;
  [(_NSDataCompressor *)&v3 dealloc];
}

- (_NSDataCompressor)initWithAlgorithm:(int)a3 operation:(int)a4 dataHandler:(id)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _NSDataCompressor;
  v8 = [(_NSDataCompressor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    if (compression_stream_init((v8 + 8), a4, a3))
    {

      return 0;
    }

    else
    {
      v9->_stream.dst_ptr = &_NSDataCompressorEmptyBuffer;
      v9->_stream.dst_size = 0;
      v9->_stream.src_ptr = &_NSDataCompressorEmptyBuffer;
      v9->_stream.src_size = 0;
      v9->_operation = a4;
      v9->_status = 0;
      v9->_dataHandler = [a5 copy];
    }
  }

  return v9;
}

- (BOOL)processBytes:(char *)a3 size:(unint64_t)a4 flags:(int)a5
{
  status = self->_status;
  if (status)
  {
    return !a4 && status == 1;
  }

  else
  {
    p_stream = &self->_stream;
    dst_ptr = self->_stream.dst_ptr;
    self->_stream.src_ptr = a3;
    self->_stream.src_size = a4;
    if (dst_ptr == &_NSDataCompressorEmptyBuffer)
    {
      self->_stream.dst_ptr = self->_buffer;
      self->_stream.dst_size = 1024;
    }

    v12 = 0;
    buffer = self->_buffer;
    while (!v12)
    {
      if ((a5 & 1) == 0 && !self->_stream.src_size)
      {
        result = 1;
        goto LABEL_26;
      }

      v12 = compression_stream_process(p_stream, a5);
      self->_status = v12;
      if (!v12 && !self->_stream.dst_size)
      {
        (*(self->_dataHandler + 2))();
        self->_stream.dst_ptr = buffer;
        self->_stream.dst_size = 1024;
        v12 = self->_status;
      }
    }

    if (v12 == 1)
    {
      (*(self->_dataHandler + 2))();
      self->_stream.dst_ptr = &_NSDataCompressorEmptyBuffer;
      self->_stream.dst_size = 0;
      v12 = self->_status;
    }

    else if (v12 == -1 && buffer != &_NSDataCompressorEmptyBuffer)
    {
      result = 0;
      self->_stream.dst_ptr = &_NSDataCompressorEmptyBuffer;
      self->_stream.dst_size = 0;
      goto LABEL_26;
    }

    result = v12 != -1 && self->_stream.src_size == 0;
LABEL_26:
    self->_stream.src_ptr = &_NSDataCompressorEmptyBuffer;
    self->_stream.src_size = 0;
  }

  return result;
}

@end