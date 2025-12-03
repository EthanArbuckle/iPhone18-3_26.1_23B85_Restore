@interface CTEmojiImageAsset
- (CTEmojiImageAsset)initWithContentIdentifier:(id)identifier shortDescription:(id)description strikeImages:(id)images;
- (id)_IPTCDictionaryWithProvenanceInfo:(id)info;
- (id)_TIFFDictionaryWithEmojiInfoAndAlignmentInset:(CGSize)inset;
- (id)_attachmentProperties;
- (id)_imagePropertiesForImage:(CGImage *)image withAlignmentInset:(CGSize)inset provenanceInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)imageData;
- (id)preferredFilenameForData;
- (void)_finalizeImageData;
@end

@implementation CTEmojiImageAsset

- (CTEmojiImageAsset)initWithContentIdentifier:(id)identifier shortDescription:(id)description strikeImages:(id)images
{
  identifierCopy = identifier;
  descriptionCopy = description;
  imagesCopy = images;
  if (![identifierCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CTEmojiImageAsset.m" lineNumber:79 description:{@"Invalid identifier %@", identifierCopy}];
  }

  if (![descriptionCopy length])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"CTEmojiImageAsset.m" lineNumber:80 description:{@"Invalid description %@", descriptionCopy}];
  }

  if (![imagesCopy count])
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"CTEmojiImageAsset.m" lineNumber:81 description:@"Empty images"];
  }

  if ([identifierCopy length] && objc_msgSend(descriptionCopy, "length") && objc_msgSend(imagesCopy, "count"))
  {
    v19.receiver = self;
    v19.super_class = CTEmojiImageAsset;
    v12 = [(CTEmojiImageAsset *)&v19 init];
    v13 = v12;
    if (v12)
    {
      [(CTEmojiImageAsset *)v12 setContentIdentifier:identifierCopy];
      [(CTEmojiImageAsset *)v13 setShortDescription:descriptionCopy];
      [(CTEmojiImageAsset *)v13 setStrikes:imagesCopy];
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_IPTCDictionaryWithProvenanceInfo:(id)info
{
  v3 = MEMORY[0x1E695DF90];
  infoCopy = info;
  v5 = [[v3 alloc] initWithCapacity:2];
  v6 = *MEMORY[0x1E696DD80];
  v7 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E696DD80]];
  v8 = *MEMORY[0x1E696DDB8];
  v9 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E696DDB8]];

  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    [v5 setObject:v7 forKeyedSubscript:v6];
    [v5 setObject:v9 forKeyedSubscript:v8];
  }

  return v5;
}

- (id)_TIFFDictionaryWithEmojiInfoAndAlignmentInset:(CGSize)inset
{
  height = inset.height;
  width = inset.width;
  v15[5] = *MEMORY[0x1E69E9840];
  v14[0] = *MEMORY[0x1E696DF30];
  contentIdentifier = [(CTEmojiImageAsset *)self contentIdentifier];
  v15[0] = contentIdentifier;
  v14[1] = *MEMORY[0x1E696DF40];
  shortDescription = [(CTEmojiImageAsset *)self shortDescription];
  v8 = *MEMORY[0x1E696DF68];
  v15[1] = shortDescription;
  v15[2] = @"Apple TextKit";
  v9 = *MEMORY[0x1E696DF80];
  v14[2] = v8;
  v14[3] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:width];
  v15[3] = v10;
  v14[4] = *MEMORY[0x1E696DF90];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  v15[4] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];

  return v12;
}

- (id)_imagePropertiesForImage:(CGImage *)image withAlignmentInset:(CGSize)inset provenanceInfo:(id)info
{
  height = inset.height;
  width = inset.width;
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = *MEMORY[0x1E696DA48];
  infoCopy = info;
  contentIdentifier = [(CTEmojiImageAsset *)self contentIdentifier];
  v20[0] = contentIdentifier;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v11 = *MEMORY[0x1E696D9B0];
  v18[0] = v10;
  v12 = *MEMORY[0x1E696DF28];
  v17[0] = v11;
  v17[1] = v12;
  height = [(CTEmojiImageAsset *)self _TIFFDictionaryWithEmojiInfoAndAlignmentInset:width, height];
  v18[1] = height;
  v17[2] = *MEMORY[0x1E696DD90];
  v14 = [(CTEmojiImageAsset *)self _IPTCDictionaryWithProvenanceInfo:infoCopy];

  v18[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

  return v15;
}

- (id)_attachmentProperties
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E696DF28];
  v2 = [(CTEmojiImageAsset *)self _TIFFDictionaryWithEmojiInfoAndAlignmentInset:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (void)_finalizeImageData
{
  v30 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  heicData = [(CTEmojiImageAsset *)selfCopy heicData];

  if (!heicData)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:0x80000];
    _attachmentProperties = [(CTEmojiImageAsset *)selfCopy _attachmentProperties];
    strikes = [(CTEmojiImageAsset *)selfCopy strikes];
    v7 = [strikes count];
    v8 = CGImageDestinationCreateWithData(v4, @"public.heic", v7, MEMORY[0x1E695E0F8]);

    if (v8)
    {
      v23 = _attachmentProperties;
      v24 = v4;
      CGImageDestinationSetProperties(v8, _attachmentProperties);
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      strikes2 = [(CTEmojiImageAsset *)selfCopy strikes];
      v10 = [strikes2 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        do
        {
          v13 = 0;
          do
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(strikes2);
            }

            v14 = *(*(&v25 + 1) + 8 * v13);
            v15 = objc_autoreleasePoolPush();
            cgImage = [v14 cgImage];
            [v14 alignmentInset];
            v18 = v17;
            v20 = v19;
            provenance = [v14 provenance];
            v22 = [(CTEmojiImageAsset *)selfCopy _imagePropertiesForImage:cgImage withAlignmentInset:provenance provenanceInfo:v18, v20];

            CGImageDestinationAddImage(v8, [v14 cgImage], v22);
            objc_autoreleasePoolPop(v15);
            ++v13;
          }

          while (v11 != v13);
          v11 = [strikes2 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v11);
      }

      v4 = v24;
      if (CGImageDestinationFinalize(v8))
      {
        [(CTEmojiImageAsset *)selfCopy setHeicData:v24];
      }

      CFRelease(v8);
    }

    else
    {
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)imageData
{
  [(CTEmojiImageAsset *)self _finalizeImageData];

  return [(CTEmojiImageAsset *)self heicData];
}

- (id)preferredFilenameForData
{
  v2 = MEMORY[0x1E696AEC0];
  contentIdentifier = [(CTEmojiImageAsset *)self contentIdentifier];
  v4 = [v2 stringWithFormat:@"%@.heic", contentIdentifier];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  contentIdentifier = [(CTEmojiImageAsset *)self contentIdentifier];
  [v4 setContentIdentifier:contentIdentifier];

  shortDescription = [(CTEmojiImageAsset *)self shortDescription];
  [v4 setShortDescription:shortDescription];

  strikes = [(CTEmojiImageAsset *)self strikes];
  [v4 setStrikes:strikes];

  heicData = [(CTEmojiImageAsset *)self heicData];
  [v4 setHeicData:heicData];

  return v4;
}

@end