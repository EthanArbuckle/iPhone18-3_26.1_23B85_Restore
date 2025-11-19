@interface CTEmojiImageAsset
- (CTEmojiImageAsset)initWithContentIdentifier:(id)a3 shortDescription:(id)a4 strikeImages:(id)a5;
- (id)_IPTCDictionaryWithProvenanceInfo:(id)a3;
- (id)_TIFFDictionaryWithEmojiInfoAndAlignmentInset:(CGSize)a3;
- (id)_attachmentProperties;
- (id)_imagePropertiesForImage:(CGImage *)a3 withAlignmentInset:(CGSize)a4 provenanceInfo:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)imageData;
- (id)preferredFilenameForData;
- (void)_finalizeImageData;
@end

@implementation CTEmojiImageAsset

- (CTEmojiImageAsset)initWithContentIdentifier:(id)a3 shortDescription:(id)a4 strikeImages:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (![v9 length])
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"CTEmojiImageAsset.m" lineNumber:79 description:{@"Invalid identifier %@", v9}];
  }

  if (![v10 length])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"CTEmojiImageAsset.m" lineNumber:80 description:{@"Invalid description %@", v10}];
  }

  if (![v11 count])
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"CTEmojiImageAsset.m" lineNumber:81 description:@"Empty images"];
  }

  if ([v9 length] && objc_msgSend(v10, "length") && objc_msgSend(v11, "count"))
  {
    v19.receiver = self;
    v19.super_class = CTEmojiImageAsset;
    v12 = [(CTEmojiImageAsset *)&v19 init];
    v13 = v12;
    if (v12)
    {
      [(CTEmojiImageAsset *)v12 setContentIdentifier:v9];
      [(CTEmojiImageAsset *)v13 setShortDescription:v10];
      [(CTEmojiImageAsset *)v13 setStrikes:v11];
    }

    self = v13;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_IPTCDictionaryWithProvenanceInfo:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [[v3 alloc] initWithCapacity:2];
  v6 = *MEMORY[0x1E696DD80];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696DD80]];
  v8 = *MEMORY[0x1E696DDB8];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696DDB8]];

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

- (id)_TIFFDictionaryWithEmojiInfoAndAlignmentInset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v15[5] = *MEMORY[0x1E69E9840];
  v14[0] = *MEMORY[0x1E696DF30];
  v6 = [(CTEmojiImageAsset *)self contentIdentifier];
  v15[0] = v6;
  v14[1] = *MEMORY[0x1E696DF40];
  v7 = [(CTEmojiImageAsset *)self shortDescription];
  v8 = *MEMORY[0x1E696DF68];
  v15[1] = v7;
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

- (id)_imagePropertiesForImage:(CGImage *)a3 withAlignmentInset:(CGSize)a4 provenanceInfo:(id)a5
{
  height = a4.height;
  width = a4.width;
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = *MEMORY[0x1E696DA48];
  v8 = a5;
  v9 = [(CTEmojiImageAsset *)self contentIdentifier];
  v20[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v11 = *MEMORY[0x1E696D9B0];
  v18[0] = v10;
  v12 = *MEMORY[0x1E696DF28];
  v17[0] = v11;
  v17[1] = v12;
  v13 = [(CTEmojiImageAsset *)self _TIFFDictionaryWithEmojiInfoAndAlignmentInset:width, height];
  v18[1] = v13;
  v17[2] = *MEMORY[0x1E696DD90];
  v14 = [(CTEmojiImageAsset *)self _IPTCDictionaryWithProvenanceInfo:v8];

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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CTEmojiImageAsset *)v2 heicData];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:0x80000];
    v5 = [(CTEmojiImageAsset *)v2 _attachmentProperties];
    v6 = [(CTEmojiImageAsset *)v2 strikes];
    v7 = [v6 count];
    v8 = CGImageDestinationCreateWithData(v4, @"public.heic", v7, MEMORY[0x1E695E0F8]);

    if (v8)
    {
      v23 = v5;
      v24 = v4;
      CGImageDestinationSetProperties(v8, v5);
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = [(CTEmojiImageAsset *)v2 strikes];
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v25 + 1) + 8 * v13);
            v15 = objc_autoreleasePoolPush();
            v16 = [v14 cgImage];
            [v14 alignmentInset];
            v18 = v17;
            v20 = v19;
            v21 = [v14 provenance];
            v22 = [(CTEmojiImageAsset *)v2 _imagePropertiesForImage:v16 withAlignmentInset:v21 provenanceInfo:v18, v20];

            CGImageDestinationAddImage(v8, [v14 cgImage], v22);
            objc_autoreleasePoolPop(v15);
            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v11);
      }

      v4 = v24;
      if (CGImageDestinationFinalize(v8))
      {
        [(CTEmojiImageAsset *)v2 setHeicData:v24];
      }

      CFRelease(v8);
    }

    else
    {
    }
  }

  objc_sync_exit(v2);
}

- (id)imageData
{
  [(CTEmojiImageAsset *)self _finalizeImageData];

  return [(CTEmojiImageAsset *)self heicData];
}

- (id)preferredFilenameForData
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(CTEmojiImageAsset *)self contentIdentifier];
  v4 = [v2 stringWithFormat:@"%@.heic", v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(CTEmojiImageAsset *)self contentIdentifier];
  [v4 setContentIdentifier:v5];

  v6 = [(CTEmojiImageAsset *)self shortDescription];
  [v4 setShortDescription:v6];

  v7 = [(CTEmojiImageAsset *)self strikes];
  [v4 setStrikes:v7];

  v8 = [(CTEmojiImageAsset *)self heicData];
  [v4 setHeicData:v8];

  return v4;
}

@end