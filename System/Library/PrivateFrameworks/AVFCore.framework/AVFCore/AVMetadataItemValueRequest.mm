@interface AVMetadataItemValueRequest
+ (AVMetadataItemValueRequest)metadataItemValueRequestWithMetadataItem:(id)item;
- (AVMetadataItemValueRequest)initWithMetadataItem:(id)item;
- (void)dealloc;
- (void)respondWithError:(NSError *)error;
- (void)respondWithValue:(id)value dataType:(id)type;
@end

@implementation AVMetadataItemValueRequest

+ (AVMetadataItemValueRequest)metadataItemValueRequestWithMetadataItem:(id)item
{
  v3 = [[self alloc] initWithMetadataItem:item];

  return v3;
}

- (AVMetadataItemValueRequest)initWithMetadataItem:(id)item
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
      v4->_valueRequest->weakReferenceToMetadataItem = [[AVWeakReference alloc] initWithReferencedObject:item];
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

- (void)respondWithValue:(id)value dataType:(id)type
{
  self->_valueRequest->value = [value copyWithZone:{-[AVMetadataItemValueRequest zone](self, "zone")}];
  self->_valueRequest->dataType = [type copy];
  metadataItem = [(AVMetadataItemValueRequest *)self metadataItem];

  [(AVMetadataItem *)metadataItem _valueRequestDidFinish];
}

- (void)respondWithError:(NSError *)error
{
  self->_valueRequest->error = error;
  metadataItem = [(AVMetadataItemValueRequest *)self metadataItem];

  [(AVMetadataItem *)metadataItem _valueRequestDidFinish];
}

@end