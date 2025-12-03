@interface BICDescribedImage
+ (BICDescribedImage)describedImageWithIdentifier:(id)identifier size:(CGSize)size processingOptions:(unsigned __int16)options;
+ (BICDescribedImage)describedImageWithPriority:(unint64_t)priority;
+ (id)describedImageFromEntryLocation:(id)location;
+ (id)describedImageFromImageEntry:(id)entry;
+ (id)describedImagesToDictionaryOfSets:(id)sets;
+ (id)entryLocationWithIdentifier:(id)identifier level:(signed __int16)level size:(CGSize)size options:(unsigned __int16)options quality:(unsigned __int16)quality;
+ (id)groupDescribedImagesByIdentifier:(id)identifier;
+ (id)identifierFromEntryLocation:(id)location;
+ (id)stringForImageQuality:(unsigned __int16)quality;
+ (unsigned)transformedQualityFrom:(unsigned __int16)from;
- (BICDescribedImage)initWithIdentifier:(id)identifier;
- (BICDescribedImage)primaryRequest;
- (BICDescribedImage)stackRequest;
- (BOOL)isAlternateGeneric;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDescribedImage:(id)image;
- (BOOL)isExpired;
- (BOOL)isGenericSeriesStack;
- (BOOL)isSeriesStackWithGenerics;
- (BOOL)requiresNetwork;
- (CGRect)nonShadowArea;
- (CGSize)imageSize;
- (id)_computeDescriptionIsFull:(BOOL)full;
- (id)copyWithZone:(_NSZone *)zone;
- (id)entryLocationForLevelID:(signed __int16)d;
- (id)shortDescriptionOfProcessingOptions;
- (int64_t)costFor:(signed __int16)for;
- (void)dealloc;
- (void)setAlternateRequest:(id)request;
- (void)setStackOutline:(CGPath *)outline;
@end

@implementation BICDescribedImage

+ (id)groupDescribedImagesByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy count];
  v5 = v4;
  if (v4 < 2)
  {
    if (v4 == &dword_0 + 1)
    {
      v22 = identifierCopy;
      allValues = [NSArray arrayWithObjects:&v22 count:1];
    }

    else
    {
      allValues = &__NSArray0__struct;
    }
  }

  else
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = identifierCopy;
    v7 = identifierCopy;
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
          identifier = [v12 identifier];
          v14 = [v6 objectForKeyedSubscript:identifier];
          if (!v14)
          {
            v14 = [[NSMutableArray alloc] initWithCapacity:v5];
            [v6 setObject:v14 forKeyedSubscript:identifier];
          }

          [v14 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v9);
    }

    allValues = [v6 allValues];

    identifierCopy = v17;
  }

  return allValues;
}

+ (BICDescribedImage)describedImageWithIdentifier:(id)identifier size:(CGSize)size processingOptions:(unsigned __int16)options
{
  optionsCopy = options;
  sizeCopy = size;
  identifierCopy = identifier;
  v12 = 0;
  v7 = ClampImageSize(&sizeCopy, 1, &v12);
  v8 = v12;
  if (v7)
  {
    v9 = BCImageCacheLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1ED0A0(identifierCopy, v8, v9);
    }
  }

  v10 = [[BICDescribedImage alloc] initWithIdentifier:identifierCopy];
  [(BICDescribedImage *)v10 setImageSize:sizeCopy.width, sizeCopy.height];
  [(BICDescribedImage *)v10 setProcessingOptions:optionsCopy];

  return v10;
}

+ (id)describedImagesToDictionaryOfSets:(id)sets
{
  setsCopy = sets;
  v4 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = setsCopy;
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
        identifier = [v10 identifier];
        v12 = [v4 objectForKeyedSubscript:identifier];
        if (!v12)
        {
          v12 = +[NSMutableArray array];
          [v4 setObject:v12 forKeyedSubscript:identifier];
        }

        [v12 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)describedImageFromImageEntry:(id)entry
{
  entryCopy = entry;
  v4 = [BICDescribedImage alloc];
  imageSet = [entryCopy imageSet];
  identifier = [imageSet identifier];
  v7 = [(BICDescribedImage *)v4 initWithIdentifier:identifier];

  [entryCopy imageSize];
  [(BICDescribedImage *)v7 setImageSize:?];
  -[BICDescribedImage setProcessingOptions:](v7, "setProcessingOptions:", [entryCopy processingOptions]);
  -[BICDescribedImage setQuality:](v7, "setQuality:", [entryCopy quality]);
  lastUsed = [entryCopy lastUsed];
  [(BICDescribedImage *)v7 setLastUsed:lastUsed];

  expiry = [entryCopy expiry];
  [(BICDescribedImage *)v7 setExpiry:expiry];

  shadowLeft = [entryCopy shadowLeft];
  shadowTop = [entryCopy shadowTop];
  shadowWidth = [entryCopy shadowWidth];
  LODWORD(expiry) = [entryCopy shadowHeight];

  [(BICDescribedImage *)v7 setNonShadowArea:shadowLeft, shadowTop, shadowWidth, expiry];

  return v7;
}

+ (id)describedImageFromEntryLocation:(id)location
{
  v3 = [location componentsSeparatedByString:@"|"];
  v4 = [BICDescribedImage alloc];
  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = [(BICDescribedImage *)v4 initWithIdentifier:v5];

  v7 = [v3 objectAtIndexedSubscript:2];
  integerValue = [v7 integerValue];
  v9 = [v3 objectAtIndexedSubscript:3];
  -[BICDescribedImage setImageSize:](v6, "setImageSize:", integerValue, [v9 integerValue]);

  v10 = [v3 objectAtIndexedSubscript:4];
  -[BICDescribedImage setProcessingOptions:](v6, "setProcessingOptions:", [v10 integerValue]);

  if ([v3 count] >= 6)
  {
    v11 = [v3 objectAtIndexedSubscript:5];
    -[BICDescribedImage setQuality:](v6, "setQuality:", [v11 integerValue]);
  }

  return v6;
}

+ (BICDescribedImage)describedImageWithPriority:(unint64_t)priority
{
  v4 = [[BICDescribedImage alloc] initWithIdentifier:@"Prioritizer"];
  [(BICDescribedImage *)v4 setPriority:priority];

  return v4;
}

+ (id)stringForImageQuality:(unsigned __int16)quality
{
  if (quality > 106)
  {
    if (quality <= 202)
    {
      v3 = @"not transformed";
      v17 = @"download";
      v18 = @"cloud";
      if (quality != 202)
      {
        v18 = 0;
      }

      if (quality != 201)
      {
        v17 = v18;
      }

      if (quality != 200)
      {
        v3 = v17;
      }

      v6 = @"transformed book sample stashed";
      v19 = @"transformed user";
      if (quality != 108)
      {
        v19 = 0;
      }

      if (quality != 107)
      {
        v6 = v19;
      }

      v9 = quality <= 199;
    }

    else
    {
      v3 = @"book";
      v10 = @"user";
      v11 = @"max";
      if (quality != 208)
      {
        v11 = 0;
      }

      if (quality != 207)
      {
        v10 = v11;
      }

      if (quality != 206)
      {
        v3 = v10;
      }

      v6 = @"profile";
      v12 = @"book sample";
      v13 = @"book sample stashed";
      if (quality != 205)
      {
        v13 = 0;
      }

      if (quality != 204)
      {
        v12 = v13;
      }

      if (quality != 203)
      {
        v6 = v12;
      }

      v9 = quality <= 205;
    }
  }

  else if (quality <= 100)
  {
    v3 = @"generic";
    v14 = @"old";
    v15 = @"transformed";
    if (quality != 100)
    {
      v15 = 0;
    }

    if (quality != 3)
    {
      v14 = v15;
    }

    if (quality != 2)
    {
      v3 = v14;
    }

    v6 = @"unknown";
    v16 = @"blank";
    if (quality != 1)
    {
      v16 = 0;
    }

    if (quality)
    {
      v6 = v16;
    }

    v9 = quality <= 1;
  }

  else
  {
    v3 = @"transformed profile";
    v4 = @"transformed book";
    v5 = @"transformed book sample";
    if (quality != 106)
    {
      v5 = 0;
    }

    if (quality != 105)
    {
      v4 = v5;
    }

    if (quality != 104)
    {
      v3 = v4;
    }

    v6 = @"transformed smaller";
    v7 = @"transformed downloading";
    v8 = @"transformed cloud";
    if (quality != 103)
    {
      v8 = 0;
    }

    if (quality != 102)
    {
      v7 = v8;
    }

    if (quality != 101)
    {
      v6 = v7;
    }

    v9 = quality <= 103;
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

+ (unsigned)transformedQualityFrom:(unsigned __int16)from
{
  result = 0;
  if (from <= 199)
  {
    if ((from - 100) >= 9 && from >= 4u)
    {
      return result;
    }

    return from;
  }

  if (from <= 203)
  {
    if (from == 203)
    {
      v4 = 104;
    }

    else
    {
      v4 = 0;
    }

    if (from == 202)
    {
      v5 = 103;
    }

    else
    {
      v5 = v4;
    }

    if (from == 201)
    {
      v6 = 102;
    }

    else
    {
      v6 = 0;
    }

    if (from == 200)
    {
      v6 = 200;
    }

    if (from <= 201)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else if (from <= 205)
  {
    if (from == 205)
    {
      v7 = 107;
    }

    else
    {
      v7 = 0;
    }

    if (from == 204)
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
    switch(from)
    {
      case 0xCEu:
        return 105;
      case 0xCFu:
        return 108;
      case 0xD0u:
        return from;
    }
  }

  return result;
}

- (BICDescribedImage)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
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

  [(BICDescribedImage *)v6 setIdentifier:identifierCopy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BICDescribedImage alloc];
  identifier = [(BICDescribedImage *)self identifier];
  v6 = [(BICDescribedImage *)v4 initWithIdentifier:identifier];

  [(BICDescribedImage *)v6 setPriority:[(BICDescribedImage *)self priority]];
  filePath = [(BICDescribedImage *)self filePath];
  [(BICDescribedImage *)v6 setFilePath:filePath];

  urlString = [(BICDescribedImage *)self urlString];
  [(BICDescribedImage *)v6 setUrlString:urlString];

  adamID = [(BICDescribedImage *)self adamID];
  [(BICDescribedImage *)v6 setAdamID:adamID];

  image = [(BICDescribedImage *)self image];
  [(BICDescribedImage *)v6 setImage:image];

  [(BICDescribedImage *)v6 setProcessingOptions:[(BICDescribedImage *)self processingOptions]];
  [(BICDescribedImage *)v6 setRequestOptions:[(BICDescribedImage *)self requestOptions]];
  [(BICDescribedImage *)v6 setQuality:[(BICDescribedImage *)self quality]];
  [(BICDescribedImage *)self imageSize];
  [(BICDescribedImage *)v6 setImageSize:?];
  [(BICDescribedImage *)v6 setMatchScore:[(BICDescribedImage *)self matchScore]];
  title = [(BICDescribedImage *)self title];
  [(BICDescribedImage *)v6 setTitle:title];

  author = [(BICDescribedImage *)self author];
  [(BICDescribedImage *)v6 setAuthor:author];

  [(BICDescribedImage *)self nonShadowArea];
  [(BICDescribedImage *)v6 setNonShadowArea:?];
  [(BICDescribedImage *)v6 setStackOutline:[(BICDescribedImage *)self stackOutline]];
  lastUsed = [(BICDescribedImage *)self lastUsed];
  [(BICDescribedImage *)v6 setLastUsed:lastUsed];

  expiry = [(BICDescribedImage *)self expiry];
  [(BICDescribedImage *)v6 setExpiry:expiry];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BICDescribedImage *)self isEqualToDescribedImage:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToDescribedImage:(id)image
{
  imageCopy = image;
  [(BICDescribedImage *)self imageSize];
  v6 = v5;
  v8 = v7;
  [imageCopy imageSize];
  v11 = v6 == v10 && v8 == v9;
  if (v11 && (v12 = [imageCopy processingOptions], v12 == -[BICDescribedImage processingOptions](self, "processingOptions")) && (v13 = objc_msgSend(imageCopy, "quality"), v13 == -[BICDescribedImage quality](self, "quality")))
  {
    identifier = [imageCopy identifier];
    identifier2 = [(BICDescribedImage *)self identifier];
    v16 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setStackOutline:(CGPath *)outline
{
  stackOutline = self->_stackOutline;
  if (stackOutline)
  {
    CFRelease(stackOutline);
    self->_stackOutline = 0;
  }

  if (outline)
  {
    self->_stackOutline = CGPathCreateCopy(outline);
  }
}

- (void)setAlternateRequest:(id)request
{
  objc_storeStrong(&self->_alternateRequest, request);
  requestCopy = request;
  [requestCopy setPrimaryRequest:self];
}

+ (id)identifierFromEntryLocation:(id)location
{
  v3 = [location componentsSeparatedByString:@"|"];
  firstObject = [v3 firstObject];

  return firstObject;
}

+ (id)entryLocationWithIdentifier:(id)identifier level:(signed __int16)level size:(CGSize)size options:(unsigned __int16)options quality:(unsigned __int16)quality
{
  if (CGSizeZero.width == size.width && CGSizeZero.height == size.height)
  {
    [NSString stringWithFormat:@"%@|%d|%d|%d|%hd|%d", level, options, quality, identifier, level, size.width, size.height, options, quality];
  }

  else
  {
    [NSString stringWithFormat:@"%@|%d|%d|%d|%hd", level, options, quality, identifier, level, size.width, size.height, options, v10];
  }
  v8 = ;

  return v8;
}

- (id)entryLocationForLevelID:(signed __int16)d
{
  dCopy = d;
  identifier = [(BICDescribedImage *)self identifier];
  [(BICDescribedImage *)self imageSize];
  v8 = [BICDescribedImage entryLocationWithIdentifier:identifier level:dCopy size:[(BICDescribedImage *)self processingOptions] options:[(BICDescribedImage *)self quality] quality:v6, v7];

  return v8;
}

- (id)_computeDescriptionIsFull:(BOOL)full
{
  fullCopy = full;
  v5 = objc_opt_new();
  [v5 addObject:@"<image:"];
  identifier = [(BICDescribedImage *)self identifier];
  [v5 addObject:identifier];

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
    shortDescriptionOfProcessingOptions = [(BICDescribedImage *)self shortDescriptionOfProcessingOptions];
    v15 = [NSString stringWithFormat:@", o:%@", shortDescriptionOfProcessingOptions];
    [v5 addObject:v15];
  }

  if ([(BICDescribedImage *)self quality])
  {
    v16 = [objc_opt_class() stringForImageQuality:{-[BICDescribedImage quality](self, "quality")}];
    v17 = [NSString stringWithFormat:@", q:%@", v16];
    [v5 addObject:v17];
  }

  if (fullCopy)
  {
    urlString = [(BICDescribedImage *)self urlString];

    if (urlString)
    {
      v19 = @",url";
    }

    else
    {
      adamID = [(BICDescribedImage *)self adamID];

      if (adamID)
      {
        adamID2 = [(BICDescribedImage *)self adamID];
        v22 = [NSString stringWithFormat:@", adamID:%@", adamID2];
        [v5 addObject:v22];

        goto LABEL_16;
      }

      image = [(BICDescribedImage *)self image];

      if (!image)
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

    operationsLog = [(BICDescribedImage *)self operationsLog];
    v25 = [operationsLog length];

    if (v25)
    {
      operationsLog2 = [(BICDescribedImage *)self operationsLog];
      v27 = [NSString stringWithFormat:@", ops:%@", operationsLog2];
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
  expiry = [(BICDescribedImage *)self expiry];
  if (expiry)
  {
    expiry2 = [(BICDescribedImage *)self expiry];
    [expiry2 timeIntervalSinceNow];
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
  alternateRequest = [(BICDescribedImage *)self alternateRequest];
  if (alternateRequest)
  {
    alternateRequest2 = [(BICDescribedImage *)self alternateRequest];
    isGeneric = [alternateRequest2 isGeneric];
  }

  else
  {
    isGeneric = 0;
  }

  return isGeneric;
}

- (BOOL)isGenericSeriesStack
{
  seriesStack = [(BICDescribedImage *)self seriesStack];
  if (seriesStack)
  {
    LOBYTE(seriesStack) = ([(BICDescribedImage *)self processingOptions]& 0x200) != 0 && [(BICDescribedImage *)self quality]== 2;
  }

  return seriesStack;
}

- (BOOL)isSeriesStackWithGenerics
{
  seriesStack = [(BICDescribedImage *)self seriesStack];
  if (seriesStack)
  {
    LOBYTE(seriesStack) = ([(BICDescribedImage *)self processingOptions]& 0x200) == 0 && [(BICDescribedImage *)self quality]== 2;
  }

  return seriesStack;
}

- (int64_t)costFor:(signed __int16)for
{
  if (for)
  {
    return 0;
  }

  image = [(BICDescribedImage *)self image];
  cGImage = [image CGImage];

  if (!cGImage)
  {
    return 0;
  }

  BytesPerRow = CGImageGetBytesPerRow(cGImage);
  CGImageGetWidth(cGImage);
  return (BytesPerRow * CGImageGetHeight(cGImage));
}

- (BOOL)requiresNetwork
{
  [(BICDescribedImage *)self imageSize];
  v6 = CGSizeZero.width == v4 && CGSizeZero.height == v3 && [(BICDescribedImage *)self quality]== 203;
  if ([(BICDescribedImage *)self quality]== 203)
  {
    urlString = [(BICDescribedImage *)self urlString];
    v8 = urlString != 0;
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