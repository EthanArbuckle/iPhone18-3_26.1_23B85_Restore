@interface INUISearchFoundationImageAdapter
+ (id)_sharedImageLoader;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (INUISearchFoundationImageAdapter)initWithIntentsImage:(id)a3;
- (INUISearchFoundationImageAdapter)initWithPayloadImage:(id)a3;
- (id)payloadImage;
- (void)setSize:(CGSize)a3;
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
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___INUISearchFoundationImageAdapter;
  objc_msgSendSuper2(&v4, sel_initialize);
  if (objc_opt_class() == a1)
  {
    v3 = [a1 _sharedImageLoader];
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
    v6 = [(INUISearchFoundationImageAdapter *)self intentsImage];
    [v6 _imageSize];
    v8 = v7;
    v10 = v9;

    v4 = v8;
    v5 = v10;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v6 = [v5 data];
  [v3 setImageData:v6];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (self == v5)
    {
      v11 = 1;
    }

    else
    {
      intentsImage = self->_intentsImage;
      v8 = [(INUISearchFoundationImageAdapter *)v5 intentsImage];
      if (intentsImage == v8)
      {
        v11 = 1;
      }

      else
      {
        v9 = self->_intentsImage;
        v10 = [(INUISearchFoundationImageAdapter *)v6 intentsImage];
        v11 = [(INImage *)v9 isEqual:v10];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (INUISearchFoundationImageAdapter)initWithIntentsImage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = INUISearchFoundationImageAdapter;
  v5 = [(INUISearchFoundationImageAdapter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INUISearchFoundationImageAdapter *)v5 setIntentsImage:v4];
  }

  return v6;
}

- (INUISearchFoundationImageAdapter)initWithPayloadImage:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = INUISearchFoundationImageAdapter;
  v5 = [(INUISearchFoundationImageAdapter *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CD4348]);
    v7 = [v4 imageData];
    v8 = [v6 initWithData:v7];
    v9 = INIntentSlotValueTransformFromImageValue();
    intentsImage = v5->_intentsImage;
    v5->_intentsImage = v9;

    -[INUISearchFoundationImageAdapter setIsTemplate:](v5, "setIsTemplate:", [v4 isTemplate]);
    -[INUISearchFoundationImageAdapter setCornerRoundingStyle:](v5, "setCornerRoundingStyle:", [v4 cornerRoundingStyle]);
    [v4 scale];
    [(INUISearchFoundationImageAdapter *)v5 setScale:?];
    [v4 size];
    [(INUISearchFoundationImageAdapter *)v5 setSize:?];
    v11 = [v4 contentType];
    v12 = [v11 copy];
    [(INUISearchFoundationImageAdapter *)v5 setContentType:v12];

    v13 = [v4 keyColor];
    v14 = [v13 copy];
    [(INUISearchFoundationImageAdapter *)v5 setKeyColor:v14];

    v15 = [v4 identifier];
    v16 = [v15 copy];
    [(INUISearchFoundationImageAdapter *)v5 setIdentifier:v16];

    -[INUISearchFoundationImageAdapter setSource:](v5, "setSource:", [v4 source]);
  }

  return v5;
}

@end