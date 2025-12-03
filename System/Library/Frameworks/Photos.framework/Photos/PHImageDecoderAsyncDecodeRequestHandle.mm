@interface PHImageDecoderAsyncDecodeRequestHandle
- (PHImageDecoderAsyncDecodeRequestHandle)initWithFigRequestID:(unint64_t)d container:(CMPhotoDecompressionContainer *)container figDecoder:(id)decoder;
- (PHImageDecoderAsyncDecodeRequestHandle)initWithImageIODecoder:(id)decoder;
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
    initialDecoder = [(PHImageDecoderAsyncDecodeRequestHandle *)self initialDecoder];
    [initialDecoder cancelInFlightAsyncDecodeForRequestHandle:self];
  }
}

- (PHImageDecoderAsyncDecodeRequestHandle)initWithImageIODecoder:(id)decoder
{
  decoderCopy = decoder;
  v9.receiver = self;
  v9.super_class = PHImageDecoderAsyncDecodeRequestHandle;
  v6 = [(PHImageDecoderAsyncDecodeRequestHandle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initialDecoder, decoder);
    v7->_figRequestID = 0;
  }

  return v7;
}

- (PHImageDecoderAsyncDecodeRequestHandle)initWithFigRequestID:(unint64_t)d container:(CMPhotoDecompressionContainer *)container figDecoder:(id)decoder
{
  decoderCopy = decoder;
  v13.receiver = self;
  v13.super_class = PHImageDecoderAsyncDecodeRequestHandle;
  v10 = [(PHImageDecoderAsyncDecodeRequestHandle *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_initialDecoder, decoder);
    v11->_figRequestID = d;
    v11->_figGainMapRequestID = 0;
    if (container)
    {
      [(PHImageDecoderAsyncDecodeRequestHandle *)v11 setFigDecompressionContainer:container];
    }
  }

  return v11;
}

@end