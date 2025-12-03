@interface QLImageData
- (CGSize)size;
- (QLImageData)initWithImageSource:(CGImageSource *)source;
- (id)durations;
- (id)imageAtIndex:(unint64_t)index;
- (int64_t)orientation;
- (void)dealloc;
@end

@implementation QLImageData

- (void)dealloc
{
  imageSource = self->_imageSource;
  if (imageSource)
  {
    CFRelease(imageSource);
  }

  v4.receiver = self;
  v4.super_class = QLImageData;
  [(QLImageData *)&v4 dealloc];
}

- (QLImageData)initWithImageSource:(CGImageSource *)source
{
  v8.receiver = self;
  v8.super_class = QLImageData;
  v4 = [(QLImageData *)&v8 init];
  v5 = v4;
  v6 = 0;
  if (source && v4)
  {
    CFRetain(source);
    v5->_imageSource = source;
    v6 = v5;
  }

  return v6;
}

- (id)imageAtIndex:(unint64_t)index
{
  v5 = [(QLImageData *)self count];
  if (v5 <= index)
  {
    goto LABEL_6;
  }

  v6 = v5;
  orientation = [(QLImageData *)self orientation];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v10 = v9;

  if (v6 >= 2)
  {
    [(QLImageData *)self size];
    QLGetScaleForAnimatedImageWithSize();
    v10 = v11;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(self->_imageSource, index, 0);
  if (ImageAtIndex)
  {
    v13 = ImageAtIndex;
    v14 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:ImageAtIndex scale:orientation orientation:v10];
    CFRelease(v13);
  }

  else
  {
LABEL_6:
    v14 = 0;
  }

  return v14;
}

- (id)durations
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(QLImageData *)self count];
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (v3 == 1)
  {
    v4 = &unk_284D73178;
    goto LABEL_28;
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v3];
  v6 = MEMORY[0x277CE1CB8];
  type = [(QLImageData *)self type];
  v8 = [v6 typeWithIdentifier:type];

  if ([v8 conformsToType:*MEMORY[0x277CE1D88]])
  {
    v9 = MEMORY[0x277CD31C8];
  }

  else if ([v8 conformsToType:*MEMORY[0x277CE1E10]])
  {
    v9 = MEMORY[0x277CD3438];
  }

  else if ([v8 conformsToType:*MEMORY[0x277CE1D90]])
  {
    v9 = MEMORY[0x277CD3360];
  }

  else
  {
    if (![v8 conformsToType:*MEMORY[0x277CE1EE0]])
    {
      v26 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"public.heics"];
      if (v26 && [v8 conformsToType:v26])
      {
        v10 = *MEMORY[0x277CD3340];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_14;
    }

    v9 = MEMORY[0x277CD3500];
  }

  v10 = *v9;
LABEL_14:
  v11 = CGImageSourceCopyProperties(self->_imageSource, 0);
  v12 = [(__CFDictionary *)v11 objectForKeyedSubscript:v10];
  v13 = [v12 objectForKeyedSubscript:@"FrameInfo"];

  if (v13)
  {
    v27 = v10;
    v28 = v8;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v29 + 1) + 8 * i) objectForKeyedSubscript:{@"DelayTime", v27, v28, v29}];
          [v19 doubleValue];
          v21 = v20;

          if (v21 >= 0.0109999999)
          {
            v22 = v21;
          }

          else
          {
            v22 = 0.100000001;
          }

          v23 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
          [v5 addObject:v23];
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    v4 = v5;
    v10 = v27;
    v8 = v28;
  }

  else
  {
    v4 = &unk_284D73190;
  }

LABEL_28:
  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

- (int64_t)orientation
{
  if (self->_imageSource && [(QLImageData *)self count])
  {
    v3 = CGImageSourceCopyPropertiesAtIndex(self->_imageSource, 0, 0);
    v4 = v3;
    if (!v3)
    {
      v9 = 0;
LABEL_17:

      return v9;
    }

    v5 = v3;
    v6 = *MEMORY[0x277CD3410];
    v7 = [(__CFDictionary *)v5 objectForKey:*MEMORY[0x277CD3410]];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v10 = [(__CFDictionary *)v5 objectForKey:*MEMORY[0x277CD3490]];
      v8 = [v10 objectForKey:v6];

      if (!v8)
      {
        goto LABEL_13;
      }
    }

    integerValue = [v8 integerValue];
    switch(integerValue)
    {
      case 3:
        v9 = 1;
        goto LABEL_16;
      case 8:
        v9 = 2;
        goto LABEL_16;
      case 6:
        v9 = 3;
LABEL_16:

        goto LABEL_17;
    }

LABEL_13:
    v9 = 0;
    goto LABEL_16;
  }

  return 0;
}

- (CGSize)size
{
  v2 = 0.0;
  if (self->_imageSource)
  {
    v4 = 0.0;
    if ([(QLImageData *)self count])
    {
      v5 = CGImageSourceCopyPropertiesAtIndex(self->_imageSource, 0, 0);
      v6 = v5;
      if (v5)
      {
        v7 = [(__CFDictionary *)v5 objectForKey:*MEMORY[0x277CD3450]];
        [v7 floatValue];
        v4 = v8;
        v9 = [(__CFDictionary *)v6 objectForKey:*MEMORY[0x277CD3448]];
        [v9 floatValue];
        v2 = v10;
      }
    }
  }

  else
  {
    v4 = 0.0;
  }

  v11 = v4;
  v12 = v2;
  result.height = v12;
  result.width = v11;
  return result;
}

@end