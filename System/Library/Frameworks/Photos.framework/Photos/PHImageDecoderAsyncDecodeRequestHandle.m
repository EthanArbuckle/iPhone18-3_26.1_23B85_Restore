@interface PHImageDecoderAsyncDecodeRequestHandle
- (PHImageDecoderAsyncDecodeRequestHandle)initWithFigRequestID:(unint64_t)a3 container:(CMPhotoDecompressionContainer *)a4 figDecoder:(id)a5;
- (PHImageDecoderAsyncDecodeRequestHandle)initWithImageIODecoder:(id)a3;
- (void)cancel;
- (void)dealloc;
@end

@implementation PHImageDecoderAsyncDecodeRequestHandle

- (void)dealloc
{
  [(PHImageDecoderAsyncDecodeRequestHandle *)self setFigDecompressionContainer:0];
  v3.receiver = self;
  v3.super_class = PHImageDecoderAsyncDecodeRequestHandle;
  [(PHImageDecoderAsyncDecodeRequestHandle *)&v3 dealloc];
}

- (void)cancel
{
  if ((atomic_exchange(&self->_cancelFlag._Value, 1u) & 1) == 0)
  {
    self->_cancelRequested = 1;
    v4 = [(PHImageDecoderAsyncDecodeRequestHandle *)self initialDecoder];
    [v4 cancelInFlightAsyncDecodeForRequestHandle:self];
  }
}

- (PHImageDecoderAsyncDecodeRequestHandle)initWithImageIODecoder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PHImageDecoderAsyncDecodeRequestHandle;
  v6 = [(PHImageDecoderAsyncDecodeRequestHandle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initialDecoder, a3);
    v7->_figRequestID = 0;
  }

  return v7;
}

- (PHImageDecoderAsyncDecodeRequestHandle)initWithFigRequestID:(unint64_t)a3 container:(CMPhotoDecompressionContainer *)a4 figDecoder:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PHImageDecoderAsyncDecodeRequestHandle;
  v10 = [(PHImageDecoderAsyncDecodeRequestHandle *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_initialDecoder, a5);
    v11->_figRequestID = a3;
    v11->_figGainMapRequestID = 0;
    if (a4)
    {
      [(PHImageDecoderAsyncDecodeRequestHandle *)v11 setFigDecompressionContainer:a4];
    }
  }

  return v11;
}

@end