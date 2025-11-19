@interface ARModifiedImageData
- (ARModifiedImageData)initWithImageData:(id)a3;
@end

@implementation ARModifiedImageData

- (ARModifiedImageData)initWithImageData:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ARModifiedImageData;
  v5 = [(ARImageData *)&v14 initWithImageData:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = [v6 originalImage];
      originalImage = v5->_originalImage;
      v5->_originalImage = v7;

      v9 = [v6 metaData];
      v10 = [v9 copy];
      metaData = v5->_metaData;
      v5->_metaData = v10;
    }

    else
    {
      v12 = v4;
      v9 = v5->_originalImage;
      v5->_originalImage = v12;
    }

    [(ARImageData *)v5 setVisionData:0];
  }

  return v5;
}

@end