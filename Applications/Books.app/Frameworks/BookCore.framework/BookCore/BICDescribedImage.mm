@interface BICDescribedImage
+ (BICDescribedImage)describedImageWithIdentifier:(id)a3 size:(CGSize)a4 processingOptions:(unsigned __int16)a5;
+ (BICDescribedImage)describedImageWithPriority:(unint64_t)a3;
+ (id)describedImageFromEntryLocation:(id)a3;
+ (id)describedImageFromImageEntry:(id)a3;
+ (id)describedImagesToDictionaryOfSets:(id)a3;
+ (id)entryLocationWithIdentifier:(id)a3 level:(signed __int16)a4 size:(CGSize)a5 options:(unsigned __int16)a6 quality:(unsigned __int16)a7;
+ (id)groupDescribedImagesByIdentifier:(id)a3;
+ (id)identifierFromEntryLocation:(id)a3;
+ (id)stringForImageQuality:(unsigned __int16)a3;
+ (unsigned)transformedQualityFrom:(unsigned __int16)a3;
- (BICDescribedImage)initWithIdentifier:(id)a3;
- (BICDescribedImage)primaryRequest;
- (BICDescribedImage)stackRequest;
- (BOOL)isAlternateGeneric;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDescribedImage:(id)a3;
- (BOOL)isExpired;
- (BOOL)isGenericSeriesStack;
- (BOOL)isSeriesStackWithGenerics;
- (BOOL)requiresNetwork;
- (CGRect)nonShadowArea;
- (CGSize)imageSize;
- (id)_computeDescriptionIsFull:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)entryLocationForLevelID:(signed __int16)a3;
- (id)shortDescriptionOfProcessingOptions;
- (int64_t)costFor:(signed __int16)a3;
- (void)dealloc;
- (void)setAlternateRequest:(id)a3;
- (void)setStackOutline:(CGPath *)a3;
@end

@implementation BICDescribedImage

+ (id)groupDescribedImagesByIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = v4;
  if (v4 < 2)
  {
    if (v4 == &dword_0 + 1)
    {
      v22 = v3;
      v15 = [NSArray arrayWithObjects:&v22 count:1];
    }

    else
    {
      v15 = &__NSArray0__struct;
    }
  }

  else
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v3;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 identifier];
          v14 = [v6 objectForKeyedSubscript:v13];
          if (!v14)
          {
            v14 = [[NSMutableArray alloc] initWithCapacity:v5];
            [v6 setObject:v14 forKeyedSubscript:v13];
          }

          [v14 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v9);
    }

    v15 = [v6 allValues];

    v3 = v17;
  }

  return v15;
}

+ (BICDescribedImage)describedImageWithIdentifier:(id)a3 size:(CGSize)a4 processingOptions:(unsigned __int16)a5
{
  v5 = a5;
  v13 = a4;
  v6 = a3;
  v12 = 0;
  v7 = ClampImageSize(&v13, 1, &v12);
  v8 = v12;
  if (v7)
  {
    v9 = BCImageCacheLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1ED0A0(v6, v8, v9);
    }
  }

  v10 = [[BICDescribedImage alloc] initWithIdentifier:v6];
  [(BICDescribedImage *)v10 setImageSize:v13.width, v13.height];
  [(BICDescribedImage *)v10 setProcessingOptions:v5];

  return v10;
}

+ (id)describedImagesToDictionaryOfSets:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v4 objectForKeyedSubscript:v11];
        if (!v12)
        {
          v12 = +[NSMutableArray array];
          [v4 setObject:v12 forKeyedSubscript:v11];
        }

        [v12 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)describedImageFromImageEntry:(id)a3
{
  v3 = a3;
  v4 = [BICDescribedImage alloc];
  v5 = [v3 imageSet];
  v6 = [v5 identifier];
  v7 = [(BICDescribedImage *)v4 initWithIdentifier:v6];

  [v3 imageSize];
  [(BICDescribedImage *)v7 setImageSize:?];
  -[BICDescribedImage setProcessingOptions:](v7, "setProcessingOptions:", [v3 processingOptions]);
  -[BICDescribedImage setQuality:](v7, "setQuality:", [v3 quality]);
  v8 = [v3 lastUsed];
  [(BICDescribedImage *)v7 setLastUsed:v8];

  v9 = [v3 expiry];
  [(BICDescribedImage *)v7 setExpiry:v9];

  v10 = [v3 shadowLeft];
  v11 = [v3 shadowTop];
  v12 = [v3 shadowWidth];
  LODWORD(v9) = [v3 shadowHeight];

  [(BICDescribedImage *)v7 setNonShadowArea:v10, v11, v12, v9];

  return v7;
}

+ (id)describedImageFromEntryLocation:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"|"];
  v4 = [BICDescribedImage alloc];
  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = [(BICDescribedImage *)v4 initWithIdentifier:v5];

  v7 = [v3 objectAtIndexedSubscript:2];
  v8 = [v7 integerValue];
  v9 = [v3 objectAtIndexedSubscript:3];
  -[BICDescribedImage setImageSize:](v6, "setImageSize:", v8, [v9 integerValue]);

  v10 = [v3 objectAtIndexedSubscript:4];
  -[BICDescribedImage setProcessingOptions:](v6, "setProcessingOptions:", [v10 integerValue]);

  if ([v3 count] >= 6)
  {
    v11 = [v3 objectAtIndexedSubscript:5];
    -[BICDescribedImage setQuality:](v6, "setQuality:", [v11 integerValue]);
  }

  return v6;
}

+ (BICDescribedImage)describedImageWithPriority:(unint64_t)a3
{
  v4 = [[BICDescribedImage alloc] initWithIdentifier:@"Prioritizer"];
  [(BICDescribedImage *)v4 setPriority:a3];

  return v4;
}

+ (id)stringForImageQuality:(unsigned __int16)a3
{
  if (a3 > 106)
  {
    if (a3 <= 202)
    {
      v3 = @"not transformed";
      v17 = @"download";
      v18 = @"cloud";
      if (a3 != 202)
      {
        v18 = 0;
      }

      if (a3 != 201)
      {
        v17 = v18;
      }

      if (a3 != 200)
      {
        v3 = v17;
      }

      v6 = @"transformed book sample stashed";
      v19 = @"transformed user";
      if (a3 != 108)
      {
        v19 = 0;
      }

      if (a3 != 107)
      {
        v6 = v19;
      }

      v9 = a3 <= 199;
    }

    else
    {
      v3 = @"book";
      v10 = @"user";
      v11 = @"max";
      if (a3 != 208)
      {
        v11 = 0;
      }

      if (a3 != 207)
      {
        v10 = v11;
      }

      if (a3 != 206)
      {
        v3 = v10;
      }

      v6 = @"profile";
      v12 = @"book sample";
      v13 = @"book sample stashed";
      if (a3 != 205)
      {
        v13 = 0;
      }

      if (a3 != 204)
      {
        v12 = v13;
      }

      if (a3 != 203)
      {
        v6 = v12;
      }

      v9 = a3 <= 205;
    }
  }

  else if (a3 <= 100)
  {
    v3 = @"generic";
    v14 = @"old";
    v15 = @"transformed";
    if (a3 != 100)
    {
      v15 = 0;
    }

    if (a3 != 3)
    {
      v14 = v15;
    }

    if (a3 != 2)
    {
      v3 = v14;
    }

    v6 = @"unknown";
    v16 = @"blank";
    if (a3 != 1)
    {
      v16 = 0;
    }

    if (a3)
    {
      v6 = v16;
    }

    v9 = a3 <= 1;
  }

  else
  {
    v3 = @"transformed profile";
    v4 = @"transformed book";
    v5 = @"transformed book sample";
    if (a3 != 106)
    {
      v5 = 0;
    }

    if (a3 != 105)
    {
      v4 = v5;
    }

    if (a3 != 104)
    {
      v3 = v4;
    }

    v6 = @"transformed smaller";
    v7 = @"transformed downloading";
    v8 = @"transformed cloud";
    if (a3 != 103)
    {
      v8 = 0;
    }

    if (a3 != 102)
    {
      v7 = v8;
    }

    if (a3 != 101)
    {
      v6 = v7;
    }

    v9 = a3 <= 103;
  }

  if (v9)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

+ (unsigned)transformedQualityFrom:(unsigned __int16)a3
{
  result = 0;
  if (a3 <= 199)
  {
    if ((a3 - 100) >= 9 && a3 >= 4u)
    {
      return result;
    }

    return a3;
  }

  if (a3 <= 203)
  {
    if (a3 == 203)
    {
      v4 = 104;
    }

    else
    {
      v4 = 0;
    }

    if (a3 == 202)
    {
      v5 = 103;
    }

    else
    {
      v5 = v4;
    }

    if (a3 == 201)
    {
      v6 = 102;
    }

    else
    {
      v6 = 0;
    }

    if (a3 == 200)
    {
      v6 = 200;
    }

    if (a3 <= 201)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else if (a3 <= 205)
  {
    if (a3 == 205)
    {
      v7 = 107;
    }

    else
    {
      v7 = 0;
    }

    if (a3 == 204)
    {
      return 106;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    switch(a3)
    {
      case 0xCEu:
        return 105;
      case 0xCFu:
        return 108;
      case 0xD0u:
        return a3;
    }
  }

  return result;
}

- (BICDescribedImage)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BICDescribedImage;
  v5 = [(BICDescribedImage *)&v9 init];
  v6 = v5;
  if (v5)
  {
    ++qword_346020;
    [(BICDescribedImage *)v5 setGeneration:?];
    v7 = +[NSMutableString string];
    [(BICDescribedImage *)v6 setOperationsLog:v7];
  }

  [(BICDescribedImage *)v6 setIdentifier:v4];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BICDescribedImage alloc];
  v5 = [(BICDescribedImage *)self identifier];
  v6 = [(BICDescribedImage *)v4 initWithIdentifier:v5];

  [(BICDescribedImage *)v6 setPriority:[(BICDescribedImage *)self priority]];
  v7 = [(BICDescribedImage *)self filePath];
  [(BICDescribedImage *)v6 setFilePath:v7];

  v8 = [(BICDescribedImage *)self urlString];
  [(BICDescribedImage *)v6 setUrlString:v8];

  v9 = [(BICDescribedImage *)self adamID];
  [(BICDescribedImage *)v6 setAdamID:v9];

  v10 = [(BICDescribedImage *)self image];
  [(BICDescribedImage *)v6 setImage:v10];

  [(BICDescribedImage *)v6 setProcessingOptions:[(BICDescribedImage *)self processingOptions]];
  [(BICDescribedImage *)v6 setRequestOptions:[(BICDescribedImage *)self requestOptions]];
  [(BICDescribedImage *)v6 setQuality:[(BICDescribedImage *)self quality]];
  [(BICDescribedImage *)self imageSize];
  [(BICDescribedImage *)v6 setImageSize:?];
  [(BICDescribedImage *)v6 setMatchScore:[(BICDescribedImage *)self matchScore]];
  v11 = [(BICDescribedImage *)self title];
  [(BICDescribedImage *)v6 setTitle:v11];

  v12 = [(BICDescribedImage *)self author];
  [(BICDescribedImage *)v6 setAuthor:v12];

  [(BICDescribedImage *)self nonShadowArea];
  [(BICDescribedImage *)v6 setNonShadowArea:?];
  [(BICDescribedImage *)v6 setStackOutline:[(BICDescribedImage *)self stackOutline]];
  v13 = [(BICDescribedImage *)self lastUsed];
  [(BICDescribedImage *)v6 setLastUsed:v13];

  v14 = [(BICDescribedImage *)self expiry];
  [(BICDescribedImage *)v6 setExpiry:v14];

  [(BICDescribedImage *)v6 setUnknownAspectRatio:[(BICDescribedImage *)self unknownAspectRatio]];
  v15 = +[NSMutableString string];
  [(BICDescribedImage *)v6 setOperationsLog:v15];

  return v6;
}

- (void)dealloc
{
  [(BICDescribedImage *)self setStackOutline:0];
  v3.receiver = self;
  v3.super_class = BICDescribedImage;
  [(BICDescribedImage *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BICDescribedImage *)self isEqualToDescribedImage:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToDescribedImage:(id)a3
{
  v4 = a3;
  [(BICDescribedImage *)self imageSize];
  v6 = v5;
  v8 = v7;
  [v4 imageSize];
  v11 = v6 == v10 && v8 == v9;
  if (v11 && (v12 = [v4 processingOptions], v12 == -[BICDescribedImage processingOptions](self, "processingOptions")) && (v13 = objc_msgSend(v4, "quality"), v13 == -[BICDescribedImage quality](self, "quality")))
  {
    v14 = [v4 identifier];
    v15 = [(BICDescribedImage *)self identifier];
    v16 = [v14 isEqualToString:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setStackOutline:(CGPath *)a3
{
  stackOutline = self->_stackOutline;
  if (stackOutline)
  {
    CFRelease(stackOutline);
    self->_stackOutline = 0;
  }

  if (a3)
  {
    self->_stackOutline = CGPathCreateCopy(a3);
  }
}

- (void)setAlternateRequest:(id)a3
{
  objc_storeStrong(&self->_alternateRequest, a3);
  v5 = a3;
  [v5 setPrimaryRequest:self];
}

+ (id)identifierFromEntryLocation:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"|"];
  v4 = [v3 firstObject];

  return v4;
}

+ (id)entryLocationWithIdentifier:(id)a3 level:(signed __int16)a4 size:(CGSize)a5 options:(unsigned __int16)a6 quality:(unsigned __int16)a7
{
  if (CGSizeZero.width == a5.width && CGSizeZero.height == a5.height)
  {
    [NSString stringWithFormat:@"%@|%d|%d|%d|%hd|%d", a4, a6, a7, a3, a4, a5.width, a5.height, a6, a7];
  }

  else
  {
    [NSString stringWithFormat:@"%@|%d|%d|%d|%hd", a4, a6, a7, a3, a4, a5.width, a5.height, a6, v10];
  }
  v8 = ;

  return v8;
}

- (id)entryLocationForLevelID:(signed __int16)a3
{
  v3 = a3;
  v5 = [(BICDescribedImage *)self identifier];
  [(BICDescribedImage *)self imageSize];
  v8 = [BICDescribedImage entryLocationWithIdentifier:v5 level:v3 size:[(BICDescribedImage *)self processingOptions] options:[(BICDescribedImage *)self quality] quality:v6, v7];

  return v8;
}

- (id)_computeDescriptionIsFull:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  [v5 addObject:@"<image:"];
  v6 = [(BICDescribedImage *)self identifier];
  [v5 addObject:v6];

  [(BICDescribedImage *)self imageSize];
  if (v8 != CGSizeZero.width || v7 != CGSizeZero.height)
  {
    [(BICDescribedImage *)self imageSize];
    v11 = v10;
    [(BICDescribedImage *)self imageSize];
    v13 = [NSString stringWithFormat:@", xy:%d, %d", v11, v12];
    [v5 addObject:v13];
  }

  if ([(BICDescribedImage *)self processingOptions])
  {
    v14 = [(BICDescribedImage *)self shortDescriptionOfProcessingOptions];
    v15 = [NSString stringWithFormat:@", o:%@", v14];
    [v5 addObject:v15];
  }

  if ([(BICDescribedImage *)self quality])
  {
    v16 = [objc_opt_class() stringForImageQuality:{-[BICDescribedImage quality](self, "quality")}];
    v17 = [NSString stringWithFormat:@", q:%@", v16];
    [v5 addObject:v17];
  }

  if (v3)
  {
    v18 = [(BICDescribedImage *)self urlString];

    if (v18)
    {
      v19 = @",url";
    }

    else
    {
      v20 = [(BICDescribedImage *)self adamID];

      if (v20)
      {
        v21 = [(BICDescribedImage *)self adamID];
        v22 = [NSString stringWithFormat:@", adamID:%@", v21];
        [v5 addObject:v22];

        goto LABEL_16;
      }

      v30 = [(BICDescribedImage *)self image];

      if (!v30)
      {
        goto LABEL_16;
      }

      v19 = @",cgImage";
    }

    [v5 addObject:v19];
LABEL_16:
    if ([(BICDescribedImage *)self matchScore])
    {
      v23 = [NSString stringWithFormat:@", rank:%lu", [(BICDescribedImage *)self matchScore]];
      [v5 addObject:v23];
    }

    v24 = [(BICDescribedImage *)self operationsLog];
    v25 = [v24 length];

    if (v25)
    {
      v26 = [(BICDescribedImage *)self operationsLog];
      v27 = [NSString stringWithFormat:@", ops:%@", v26];
      [v5 addObject:v27];
    }
  }

  [v5 addObject:@">"];
  v28 = [v5 componentsJoinedByString:&stru_2D2930];

  return v28;
}

- (id)shortDescriptionOfProcessingOptions
{
  v3 = +[NSMutableString string];
  if (![(BICDescribedImage *)self processingOptions])
  {
    v5 = @"none";
LABEL_26:
    [v3 appendString:v5];
    goto LABEL_27;
  }

  if (([(BICDescribedImage *)self processingOptions]& 2) != 0)
  {
    v4 = @"book";
  }

  else if (([(BICDescribedImage *)self processingOptions]& 4) != 0)
  {
    v4 = @"PDF";
  }

  else if (([(BICDescribedImage *)self processingOptions]& 8) != 0)
  {
    v4 = @"audio";
  }

  else if (([(BICDescribedImage *)self processingOptions]& 0x10) != 0)
  {
    v4 = @"shadow";
  }

  else
  {
    if (([(BICDescribedImage *)self processingOptions]& 0x20) == 0)
    {
      goto LABEL_14;
    }

    v4 = @"stack";
  }

  [v3 appendString:v4];
LABEL_14:
  if (([(BICDescribedImage *)self processingOptions]& 0x40) != 0)
  {
    [v3 appendString:@"-night"];
  }

  if (([(BICDescribedImage *)self processingOptions]& 0x80) != 0)
  {
    [v3 appendString:@"-rtl"];
  }

  if (([(BICDescribedImage *)self processingOptions]& 0x100) != 0)
  {
    [v3 appendString:@"-binding"];
  }

  if (([(BICDescribedImage *)self processingOptions]& 0x200) != 0)
  {
    [v3 appendString:@"-generic"];
  }

  if (([(BICDescribedImage *)self processingOptions]& 0x400) != 0)
  {
    [v3 appendString:@"-restricted"];
  }

  if (([(BICDescribedImage *)self processingOptions]& 0x10) != 0)
  {
    v5 = @"-shadow";
    goto LABEL_26;
  }

LABEL_27:

  return v3;
}

- (BOOL)isExpired
{
  v3 = [(BICDescribedImage *)self expiry];
  if (v3)
  {
    v4 = [(BICDescribedImage *)self expiry];
    [v4 timeIntervalSinceNow];
    v6 = v5 < 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isAlternateGeneric
{
  v3 = [(BICDescribedImage *)self alternateRequest];
  if (v3)
  {
    v4 = [(BICDescribedImage *)self alternateRequest];
    v5 = [v4 isGeneric];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isGenericSeriesStack
{
  v3 = [(BICDescribedImage *)self seriesStack];
  if (v3)
  {
    LOBYTE(v3) = ([(BICDescribedImage *)self processingOptions]& 0x200) != 0 && [(BICDescribedImage *)self quality]== 2;
  }

  return v3;
}

- (BOOL)isSeriesStackWithGenerics
{
  v3 = [(BICDescribedImage *)self seriesStack];
  if (v3)
  {
    LOBYTE(v3) = ([(BICDescribedImage *)self processingOptions]& 0x200) == 0 && [(BICDescribedImage *)self quality]== 2;
  }

  return v3;
}

- (int64_t)costFor:(signed __int16)a3
{
  if (a3)
  {
    return 0;
  }

  v4 = [(BICDescribedImage *)self image];
  v5 = [v4 CGImage];

  if (!v5)
  {
    return 0;
  }

  BytesPerRow = CGImageGetBytesPerRow(v5);
  CGImageGetWidth(v5);
  return (BytesPerRow * CGImageGetHeight(v5));
}

- (BOOL)requiresNetwork
{
  [(BICDescribedImage *)self imageSize];
  v6 = CGSizeZero.width == v4 && CGSizeZero.height == v3 && [(BICDescribedImage *)self quality]== 203;
  if ([(BICDescribedImage *)self quality]== 203)
  {
    v7 = [(BICDescribedImage *)self urlString];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BICDescribedImage *)self location]== 4 || v8;
  return v6 || v9;
}

- (CGSize)imageSize
{
  width = self->imageSize.width;
  height = self->imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)nonShadowArea
{
  x = self->nonShadowArea.origin.x;
  y = self->nonShadowArea.origin.y;
  width = self->nonShadowArea.size.width;
  height = self->nonShadowArea.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BICDescribedImage)primaryRequest
{
  WeakRetained = objc_loadWeakRetained(&self->primaryRequest);

  return WeakRetained;
}

- (BICDescribedImage)stackRequest
{
  WeakRetained = objc_loadWeakRetained(&self->stackRequest);

  return WeakRetained;
}

@end