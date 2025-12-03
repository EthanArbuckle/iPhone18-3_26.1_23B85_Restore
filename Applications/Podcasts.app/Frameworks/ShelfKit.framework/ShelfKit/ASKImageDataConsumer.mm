@interface ASKImageDataConsumer
- (ASKImageDataConsumer)initWithSize:(CGSize)size scale:(double)scale;
- (CGSize)size;
- (id)objectForData:(id)data error:(id *)error;
@end

@implementation ASKImageDataConsumer

- (ASKImageDataConsumer)initWithSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = ASKImageDataConsumer;
  result = [(ASKImageDataConsumer *)&v8 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_scale = scale;
    result->_retainAspectRatio = 0;
  }

  return result;
}

- (id)objectForData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [[UIImage alloc] initWithData:dataCopy];

  if (error && !v7)
  {
    v26 = NSLocalizedDescriptionKey;
    v27 = @"Could not decode image";
    v8 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *error = [NSError errorWithDomain:@"ASKImageDataConsumerErrorDomain" code:-99 userInfo:v8];
  }

  [(ASKImageDataConsumer *)self size];
  v11 = v10 == CGSizeZero.width && v9 == CGSizeZero.height;
  selfCopy = v7;
  if (!v11)
  {
    if ([(ASKImageDataConsumer *)self retainAspectRatio])
    {
      selfCopy = v7;
    }

    else
    {
      selfCopy = self;
    }
  }

  [(ASKImageDataConsumer *)selfCopy size];
  v14 = v13;
  v16 = v15;
  v17 = objc_alloc_init(UIGraphicsImageRendererFormat);
  [(ASKImageDataConsumer *)self scale];
  [v17 setScale:?];
  v18 = [[UIGraphicsImageRenderer alloc] initWithSize:v17 format:{v14, v16}];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __44__ASKImageDataConsumer_objectForData_error___block_invoke;
  v22[3] = &unk_4AF288;
  v23 = v7;
  v24 = v14;
  v25 = v16;
  v19 = v7;
  v20 = [v18 imageWithActions:v22];

  return v20;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end