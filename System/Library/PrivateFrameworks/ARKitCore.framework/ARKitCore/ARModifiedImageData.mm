@interface ARModifiedImageData
- (ARModifiedImageData)initWithImageData:(id)data;
@end

@implementation ARModifiedImageData

- (ARModifiedImageData)initWithImageData:(id)data
{
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = ARModifiedImageData;
  v5 = [(ARImageData *)&v14 initWithImageData:dataCopy];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = dataCopy;
      originalImage = [v6 originalImage];
      originalImage = v5->_originalImage;
      v5->_originalImage = originalImage;

      metaData = [v6 metaData];
      v10 = [metaData copy];
      metaData = v5->_metaData;
      v5->_metaData = v10;
    }

    else
    {
      v12 = dataCopy;
      metaData = v5->_originalImage;
      v5->_originalImage = v12;
    }

    [(ARImageData *)v5 setVisionData:0];
  }

  return v5;
}

@end