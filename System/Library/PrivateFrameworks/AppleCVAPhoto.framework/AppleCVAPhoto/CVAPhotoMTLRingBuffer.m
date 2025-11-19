@interface CVAPhotoMTLRingBuffer
- (CVAPhotoMTLRingBuffer)initWithBytes:(const void *)a3 length:(unint64_t)a4 options:(unint64_t)a5 device:(id)a6;
- (CVAPhotoMTLRingBuffer)initWithLength:(unint64_t)a3 options:(unint64_t)a4 device:(id)a5;
- (id).cxx_construct;
@end

@implementation CVAPhotoMTLRingBuffer

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (CVAPhotoMTLRingBuffer)initWithBytes:(const void *)a3 length:(unint64_t)a4 options:(unint64_t)a5 device:(id)a6
{
  v10 = a6;
  v24.receiver = self;
  v24.super_class = CVAPhotoMTLRingBuffer;
  v11 = [(CVAPhotoMTLRingBuffer *)&v24 init];
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = [v10 newBufferWithBytes:a3 length:a4 options:a5];
  v13 = v11->_buffers.__elems_[0];
  v11->_buffers.__elems_[0] = v12;

  if (!v11->_buffers.__elems_[0])
  {
    goto LABEL_8;
  }

  v14 = [v10 newBufferWithBytes:a3 length:a4 options:a5];
  v15 = v11->_buffers.__elems_[1];
  v11->_buffers.__elems_[1] = v14;

  if (!v11->_buffers.__elems_[1])
  {
    goto LABEL_8;
  }

  v16 = [v10 newBufferWithBytes:a3 length:a4 options:a5];
  v17 = v11->_buffers.__elems_[2];
  v11->_buffers.__elems_[2] = v16;

  if (!v11->_buffers.__elems_[2])
  {
    goto LABEL_8;
  }

  v18 = [v10 newBufferWithBytes:a3 length:a4 options:a5];
  v19 = v11->_buffers.__elems_[3];
  v11->_buffers.__elems_[3] = v18;

  if (!v11->_buffers.__elems_[3])
  {
    goto LABEL_8;
  }

  v20 = [v10 newBufferWithBytes:a3 length:a4 options:a5];
  v21 = v11->_buffers.__elems_[4];
  v11->_buffers.__elems_[4] = v20;

  if (v11->_buffers.__elems_[4])
  {
    v22 = v11;
  }

  else
  {
LABEL_8:
    v22 = 0;
  }

  return v22;
}

- (CVAPhotoMTLRingBuffer)initWithLength:(unint64_t)a3 options:(unint64_t)a4 device:(id)a5
{
  v8 = a5;
  v22.receiver = self;
  v22.super_class = CVAPhotoMTLRingBuffer;
  v9 = [(CVAPhotoMTLRingBuffer *)&v22 init];
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = [v8 newBufferWithLength:a3 options:a4];
  v11 = v9->_buffers.__elems_[0];
  v9->_buffers.__elems_[0] = v10;

  if (!v9->_buffers.__elems_[0])
  {
    goto LABEL_8;
  }

  v12 = [v8 newBufferWithLength:a3 options:a4];
  v13 = v9->_buffers.__elems_[1];
  v9->_buffers.__elems_[1] = v12;

  if (!v9->_buffers.__elems_[1])
  {
    goto LABEL_8;
  }

  v14 = [v8 newBufferWithLength:a3 options:a4];
  v15 = v9->_buffers.__elems_[2];
  v9->_buffers.__elems_[2] = v14;

  if (!v9->_buffers.__elems_[2])
  {
    goto LABEL_8;
  }

  v16 = [v8 newBufferWithLength:a3 options:a4];
  v17 = v9->_buffers.__elems_[3];
  v9->_buffers.__elems_[3] = v16;

  if (!v9->_buffers.__elems_[3])
  {
    goto LABEL_8;
  }

  v18 = [v8 newBufferWithLength:a3 options:a4];
  v19 = v9->_buffers.__elems_[4];
  v9->_buffers.__elems_[4] = v18;

  if (v9->_buffers.__elems_[4])
  {
    v20 = v9;
  }

  else
  {
LABEL_8:
    v20 = 0;
  }

  return v20;
}

@end