@interface AVMetadataItemValueRequest
+ (AVMetadataItemValueRequest)metadataItemValueRequestWithMetadataItem:(id)a3;
- (AVMetadataItemValueRequest)initWithMetadataItem:(id)a3;
- (void)dealloc;
- (void)respondWithError:(NSError *)error;
- (void)respondWithValue:(id)a3 dataType:(id)a4;
@end

@implementation AVMetadataItemValueRequest

+ (AVMetadataItemValueRequest)metadataItemValueRequestWithMetadataItem:(id)a3
{
  v3 = [[a1 alloc] initWithMetadataItem:a3];

  return v3;
}

- (AVMetadataItemValueRequest)initWithMetadataItem:(id)a3
{
  v7.receiver = self;
  v7.super_class = AVMetadataItemValueRequest;
  v4 = [(AVMetadataItemValueRequest *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVMetadataItemValueRequestInternal);
    v4->_valueRequest = v5;
    if (v5)
    {
      CFRetain(v5);
      v4->_valueRequest->weakReferenceToMetadataItem = [[AVWeakReference alloc] initWithReferencedObject:a3];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  valueRequest = self->_valueRequest;
  if (valueRequest)
  {

    CFRelease(self->_valueRequest);
  }

  v4.receiver = self;
  v4.super_class = AVMetadataItemValueRequest;
  [(AVMetadataItemValueRequest *)&v4 dealloc];
}

- (void)respondWithValue:(id)a3 dataType:(id)a4
{
  self->_valueRequest->value = [a3 copyWithZone:{-[AVMetadataItemValueRequest zone](self, "zone")}];
  self->_valueRequest->dataType = [a4 copy];
  v6 = [(AVMetadataItemValueRequest *)self metadataItem];

  [(AVMetadataItem *)v6 _valueRequestDidFinish];
}

- (void)respondWithError:(NSError *)error
{
  self->_valueRequest->error = error;
  v4 = [(AVMetadataItemValueRequest *)self metadataItem];

  [(AVMetadataItem *)v4 _valueRequestDidFinish];
}

@end