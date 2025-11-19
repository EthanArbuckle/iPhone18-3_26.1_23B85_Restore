@interface BNImageProvider
- (BNImageProvider)initWithCoder:(id)a3;
- (BNImageProvider)initWithImage:(id)a3;
- (BNImageProvider)initWithImageName:(id)a3;
- (BNImageProvider)initWithImageName:(id)a3 fromBundle:(id)a4;
- (BNImageProvider)initWithSystemImageName:(id)a3;
- (UIImage)image;
- (id)_initWithImageSource:(id)a3 ofType:(int64_t)a4 fromBundle:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BNImageProvider

- (id)_initWithImageSource:(id)a3 ofType:(int64_t)a4 fromBundle:(id)a5
{
  v10 = a3;
  v11 = a5;
  if (!v10)
  {
    [BNImageProvider _initWithImageSource:ofType:fromBundle:];
  }

  if ((a4 - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    [BNImageProvider _initWithImageSource:a2 ofType:self fromBundle:a4];
  }

  else if (a4 == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_15;
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = @"image";
    goto LABEL_14;
  }

  if ((a4 & 0xFFFFFFFFFFFFFFFELL) != 2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = @"[UNKNOWN]";
    if (a4 == 2)
    {
      v13 = @"imageName";
    }

    if (a4 == 3)
    {
      v13 = @"systemImageName";
    }

LABEL_14:
    [v12 handleFailureInMethod:a2 object:self file:@"BNImageProvider.m" lineNumber:64 description:{@"Image source (%@) is not of specified type (%@)", v10, v13}];
  }

LABEL_15:
  v20.receiver = self;
  v20.super_class = BNImageProvider;
  v14 = [(BNImageProvider *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_imageSource, a3);
    v15->_imageSourceType = a4;
    v16 = [v11 bundleURL];
    v17 = [v16 copy];
    bundleURL = v15->_bundleURL;
    v15->_bundleURL = v17;
  }

  return v15;
}

- (BNImageProvider)initWithImage:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [BNImageProvider initWithImage:];
  }

  v5 = [(BNImageProvider *)self _initWithImageSource:v4 ofType:1 fromBundle:0];

  return v5;
}

- (BNImageProvider)initWithImageName:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    [BNImageProvider initWithImageName:];
  }

  v5 = [(BNImageProvider *)self _initWithImageSource:v4 ofType:2 fromBundle:0];

  return v5;
}

- (BNImageProvider)initWithImageName:(id)a3 fromBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    [BNImageProvider initWithImageName:fromBundle:];
  }

  v8 = [(BNImageProvider *)self _initWithImageSource:v6 ofType:2 fromBundle:v7];

  return v8;
}

- (BNImageProvider)initWithSystemImageName:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    [BNImageProvider initWithSystemImageName:];
  }

  v5 = [(BNImageProvider *)self _initWithImageSource:v4 ofType:3 fromBundle:0];

  return v5;
}

- (UIImage)image
{
  if (!self->_image)
  {
    imageSourceType = self->_imageSourceType;
    switch(imageSourceType)
    {
      case 3:
        v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:self->_imageSource];
        break;
      case 2:
        if (self->_bundleURL)
        {
          v5 = [MEMORY[0x1E696AAE8] bundleWithURL:?];
        }

        else
        {
          v5 = 0;
        }

        v6 = [MEMORY[0x1E69DCAB8] imageNamed:self->_imageSource inBundle:v5 withConfiguration:0];
        image = self->_image;
        self->_image = v6;

        goto LABEL_12;
      case 1:
        v4 = self->_imageSource;
        break;
      default:
        goto LABEL_13;
    }

    v5 = self->_image;
    self->_image = v4;
LABEL_12:
  }

LABEL_13:
  v8 = self->_image;

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInteger:self->_imageSourceType forKey:@"imageSourceType"];
  bundleURL = self->_bundleURL;
  if (bundleURL)
  {
    [v6 encodeObject:bundleURL forKey:@" bundleURL"];
  }

  v5 = self->_imageSourceType - 1;
  if (v5 <= 2)
  {
    [v6 encodeObject:self->_imageSource forKey:off_1E81E50D8[v5]];
  }
}

- (BNImageProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"imageSourceType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@" bundleURL"];
  v7 = v6;
  if (v5 == 1)
  {
    v8 = @"image";
  }

  else
  {
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      v9 = 0;
      if (v6)
      {
        goto LABEL_6;
      }

LABEL_8:
      v11 = [(BNImageProvider *)self _initWithImageSource:v9 ofType:v5 fromBundle:0];
      goto LABEL_9;
    }

    v8 = @"imageName";
  }

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v8];
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_6:
  v10 = [MEMORY[0x1E696AAE8] bundleWithURL:v7];
  v11 = [(BNImageProvider *)self _initWithImageSource:v9 ofType:v5 fromBundle:v10];

LABEL_9:
  return v11;
}

- (void)_initWithImageSource:ofType:fromBundle:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"imageSource" object:? file:? lineNumber:? description:?];
}

- (void)_initWithImageSource:(uint64_t)a1 ofType:(uint64_t)a2 fromBundle:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"BNImageProvider.m" lineNumber:63 description:{@"Invalid image source type: %ld", a3}];
}

- (void)initWithImage:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"image" object:? file:? lineNumber:? description:?];
}

- (void)initWithImageName:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[imageName length] > 0" object:? file:? lineNumber:? description:?];
}

- (void)initWithImageName:fromBundle:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[imageName length] > 0" object:? file:? lineNumber:? description:?];
}

- (void)initWithSystemImageName:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[systemImageName length] > 0" object:? file:? lineNumber:? description:?];
}

@end