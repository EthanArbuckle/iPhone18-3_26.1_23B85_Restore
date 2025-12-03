@interface MKMapItemMetadataImageRequest
+ (id)requestWithMapItem:(id)item info:(id)info;
- (id)url;
- (void)handleData:(id)data;
- (void)handleError:(id)error;
@end

@implementation MKMapItemMetadataImageRequest

- (void)handleError:(id)error
{
  imageHandler = self->_imageHandler;
  if (imageHandler)
  {
    imageHandler[2](imageHandler, self, 0, error);
  }

  [(MKMapItemMetadataImageRequest *)self setImageHandler:0];
}

- (void)handleData:(id)data
{
  dataCopy = data;
  v9 = dataCopy;
  if (dataCopy)
  {
    v5 = [MEMORY[0x1E69DCAB8] imageWithData:dataCopy];
    v6 = v5;
    imageHandler = self->_imageHandler;
    if (!imageHandler)
    {
      goto LABEL_8;
    }

    if (v5)
    {
      imageHandler[2](self->_imageHandler, self, v5, 0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  imageHandler = self->_imageHandler;
  if (imageHandler)
  {
LABEL_6:
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MKMapItemMetadataImageRequestErrorDomain" code:0 userInfo:0];
    (imageHandler)[2](imageHandler, self, 0, v8);
  }

  v6 = 0;
LABEL_8:
  [(MKMapItemMetadataImageRequest *)self setImageHandler:0];
}

- (id)url
{
  v2 = MEMORY[0x1E695DFF8];
  info = [(MKMapItemMetadataImageRequest *)self info];
  v4 = [info url];
  v5 = [v2 URLWithString:v4];

  return v5;
}

+ (id)requestWithMapItem:(id)item info:(id)info
{
  infoCopy = info;
  itemCopy = item;
  v7 = objc_alloc_init(MKMapItemMetadataImageRequest);
  [(MKMapItemMetadataImageRequest *)v7 setInfo:infoCopy];

  [(MKMapItemMetadataRequest *)v7 setMapItem:itemCopy];

  return v7;
}

@end