@interface INUISearchFoundationImageAdapter
+ (id)_sharedImageLoader;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (INUISearchFoundationImageAdapter)initWithIntentsImage:(id)image;
- (INUISearchFoundationImageAdapter)initWithPayloadImage:(id)image;
- (id)payloadImage;
- (void)setSize:(CGSize)size;
@end

@implementation INUISearchFoundationImageAdapter

+ (id)_sharedImageLoader
{
  if (_sharedImageLoader_onceToken != -1)
  {
    dispatch_once(&_sharedImageLoader_onceToken, &__block_literal_global_1576);
  }

  v3 = _sharedImageLoader_sSharedImageLoader;

  return v3;
}

uint64_t __54__INUISearchFoundationImageAdapter__sharedImageLoader__block_invoke()
{
  _sharedImageLoader_sSharedImageLoader = +[INUIImageLoader registeredImageLoaderWithScreenDelegate];

  return MEMORY[0x2821F96F8]();
}

+ (void)initialize
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___INUISearchFoundationImageAdapter;
  objc_msgSendSuper2(&v4, sel_initialize);
  if (objc_opt_class() == self)
  {
    _sharedImageLoader = [self _sharedImageLoader];
  }
}

- (CGSize)size
{
  if (self->_sizeValue)
  {
    sizeValue = self->_sizeValue;

    [(NSValue *)sizeValue CGSizeValue];
  }

  else
  {
    intentsImage = [(INUISearchFoundationImageAdapter *)self intentsImage];
    [intentsImage _imageSize];
    v8 = v7;
    v10 = v9;

    v4 = v8;
    v5 = v10;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  sizeValue = self->_sizeValue;
  if (!sizeValue || (([(NSValue *)sizeValue CGSizeValue], v8 == width) ? (v9 = v7 == height) : (v9 = 0), !v9))
  {
    v10 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
    v11 = self->_sizeValue;
    self->_sizeValue = v10;

    MEMORY[0x2821F96F8]();
  }
}

- (id)payloadImage
{
  v3 = [(INUISearchFoundationImageAdapter *)self copy];
  intentsImage = self->_intentsImage;
  v5 = INIntentSlotValueTransformToImageValue();
  data = [v5 data];
  [v3 setImageData:data];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (self == v5)
    {
      v11 = 1;
    }

    else
    {
      intentsImage = self->_intentsImage;
      intentsImage = [(INUISearchFoundationImageAdapter *)v5 intentsImage];
      if (intentsImage == intentsImage)
      {
        v11 = 1;
      }

      else
      {
        v9 = self->_intentsImage;
        intentsImage2 = [(INUISearchFoundationImageAdapter *)v6 intentsImage];
        v11 = [(INImage *)v9 isEqual:intentsImage2];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (INUISearchFoundationImageAdapter)initWithIntentsImage:(id)image
{
  imageCopy = image;
  v8.receiver = self;
  v8.super_class = INUISearchFoundationImageAdapter;
  v5 = [(INUISearchFoundationImageAdapter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INUISearchFoundationImageAdapter *)v5 setIntentsImage:imageCopy];
  }

  return v6;
}

- (INUISearchFoundationImageAdapter)initWithPayloadImage:(id)image
{
  imageCopy = image;
  v18.receiver = self;
  v18.super_class = INUISearchFoundationImageAdapter;
  v5 = [(INUISearchFoundationImageAdapter *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CD4348]);
    imageData = [imageCopy imageData];
    v8 = [v6 initWithData:imageData];
    v9 = INIntentSlotValueTransformFromImageValue();
    intentsImage = v5->_intentsImage;
    v5->_intentsImage = v9;

    -[INUISearchFoundationImageAdapter setIsTemplate:](v5, "setIsTemplate:", [imageCopy isTemplate]);
    -[INUISearchFoundationImageAdapter setCornerRoundingStyle:](v5, "setCornerRoundingStyle:", [imageCopy cornerRoundingStyle]);
    [imageCopy scale];
    [(INUISearchFoundationImageAdapter *)v5 setScale:?];
    [imageCopy size];
    [(INUISearchFoundationImageAdapter *)v5 setSize:?];
    contentType = [imageCopy contentType];
    v12 = [contentType copy];
    [(INUISearchFoundationImageAdapter *)v5 setContentType:v12];

    keyColor = [imageCopy keyColor];
    v14 = [keyColor copy];
    [(INUISearchFoundationImageAdapter *)v5 setKeyColor:v14];

    identifier = [imageCopy identifier];
    v16 = [identifier copy];
    [(INUISearchFoundationImageAdapter *)v5 setIdentifier:v16];

    -[INUISearchFoundationImageAdapter setSource:](v5, "setSource:", [imageCopy source]);
  }

  return v5;
}

@end