@interface MKMapItemMetadataImageRequest
+ (id)requestWithMapItem:(id)a3 info:(id)a4;
- (id)url;
- (void)handleData:(id)a3;
- (void)handleError:(id)a3;
@end

@implementation MKMapItemMetadataImageRequest

- (void)handleError:(id)a3
{
  imageHandler = self->_imageHandler;
  if (imageHandler)
  {
    imageHandler[2](imageHandler, self, 0, a3);
  }

  [(MKMapItemMetadataImageRequest *)self setImageHandler:0];
}

- (void)handleData:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v5 = [MEMORY[0x1E69DCAB8] imageWithData:v4];
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
  v3 = [(MKMapItemMetadataImageRequest *)self info];
  v4 = [v3 url];
  v5 = [v2 URLWithString:v4];

  return v5;
}

+ (id)requestWithMapItem:(id)a3 info:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MKMapItemMetadataImageRequest);
  [(MKMapItemMetadataImageRequest *)v7 setInfo:v5];

  [(MKMapItemMetadataRequest *)v7 setMapItem:v6];

  return v7;
}

@end