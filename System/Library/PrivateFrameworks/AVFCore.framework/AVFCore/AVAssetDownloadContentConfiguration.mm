@interface AVAssetDownloadContentConfiguration
- (AVAssetDownloadContentConfiguration)init;
- (AVAssetDownloadContentConfiguration)initWithCoder:(id)coder;
- (FigStreamingAssetDownloadContentConfig)_createFigContentConfigForEnvironmentalCondition:(int64_t)condition;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_serializeIntoDownloadConfig:(FigStreamingAssetDownloadConfig *)config asset:(id)asset;
- (void)_serializeIntoDownloadConfig:(FigStreamingAssetDownloadConfig *)config environmentalCondition:(int64_t)condition;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVAssetDownloadContentConfiguration

- (AVAssetDownloadContentConfiguration)init
{
  v4.receiver = self;
  v4.super_class = AVAssetDownloadContentConfiguration;
  v2 = [(AVAssetDownloadContentConfiguration *)&v4 init];
  if (v2)
  {
    v2->_variantQualifiers = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_mediaSelections = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AVAssetDownloadContentConfiguration);
  [(AVAssetDownloadContentConfiguration *)v4 setVariantQualifiers:self->_variantQualifiers];
  [(AVAssetDownloadContentConfiguration *)v4 setMediaSelections:self->_mediaSelections];
  return v4;
}

- (FigStreamingAssetDownloadContentConfig)_createFigContentConfigForEnvironmentalCondition:(int64_t)condition
{
  v35 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  cf = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  variantQualifiers = self->_variantQualifiers;
  v7 = [(NSArray *)variantQualifiers countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v29;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(variantQualifiers);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if (([v12 environmentalConditions] & condition) != 0 || objc_msgSend(v12, "environmentalConditions") == condition)
        {
          if ([objc_msgSend(v12 "_variant")])
          {
            v13 = [objc_msgSend(v12 "_variant")];
            goto LABEL_17;
          }

          if ([v12 _figAssetVariantQualifier])
          {
            [array addObject:{objc_msgSend(v12, "_figAssetVariantQualifier")}];
          }

          else
          {
            FigSignalErrorAtGM();
          }

          v9 = 1;
        }
      }

      v8 = [(NSArray *)variantQualifiers countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = 0;
  if (!condition || (v9 & 1) != 0)
  {
LABEL_17:
    if (FigStreamingAssetDownloadContentConfigCreate())
    {
      goto LABEL_40;
    }

    if (v13)
    {
      if (FigStreamingAssetDownloadContentConfigSetAlternate())
      {
        goto LABEL_40;
      }
    }

    else if ([array count] && FigStreamingAssetDownloadContentConfigSetAlternateQualifiers())
    {
LABEL_40:
      if (cf)
      {
        CFRelease(cf);
      }

      return cf;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    mediaSelections = selfCopy->_mediaSelections;
    v15 = [(NSArray *)mediaSelections countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      array2 = 0;
      v18 = *v25;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(mediaSelections);
          }

          _selectedMediaArray = [*(*(&v24 + 1) + 8 * j) _selectedMediaArray];
          if (_selectedMediaArray)
          {
            v21 = _selectedMediaArray;
            if (!array2)
            {
              array2 = [MEMORY[0x1E695DF70] array];
            }

            [array2 addObject:v21];
          }
        }

        v16 = [(NSArray *)mediaSelections countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v16);
      if (array2 && FigStreamingAssetDownloadContentConfigSetMediaSelections())
      {
        goto LABEL_40;
      }
    }
  }

  return cf;
}

- (void)_serializeIntoDownloadConfig:(FigStreamingAssetDownloadConfig *)config environmentalCondition:(int64_t)condition
{
  v5 = [(AVAssetDownloadContentConfiguration *)self _createFigContentConfigForEnvironmentalCondition:condition];
  if (v5)
  {
    v6 = v5;
    if ([(AVAssetDownloadContentConfiguration *)self isMemberOfClass:objc_opt_class()])
    {
      FigStreamingAssetDownloadConfigSetPrimaryContentConfig();
    }

    else
    {
      FigStreamingAssetDownloadConfigAddAuxConfig();
    }

    CFRelease(v6);
  }
}

- (void)_serializeIntoDownloadConfig:(FigStreamingAssetDownloadConfig *)config asset:(id)asset
{
  [(AVAssetDownloadContentConfiguration *)self _serializeIntoDownloadConfig:config environmentalCondition:0];

  [(AVAssetDownloadContentConfiguration *)self _serializeIntoDownloadConfig:config environmentalCondition:1];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetDownloadContentConfiguration;
  [(AVAssetDownloadContentConfiguration *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v18), 0}];
    objc_exception_throw(v17);
  }

  [coder encodeObject:self->_variantQualifiers forKey:@"variantQualifiers"];
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  mediaSelections = self->_mediaSelections;
  v13 = [(NSArray *)mediaSelections countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(mediaSelections);
        }

        [array addObject:{objc_msgSend(*(*(&v18 + 1) + 8 * v16++), "propertyList")}];
      }

      while (v14 != v16);
      v14 = [(NSArray *)mediaSelections countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  [coder encodeObject:array forKey:@"mediaSelections"];
}

- (AVAssetDownloadContentConfiguration)initWithCoder:(id)coder
{
  v35 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    selfCopy = self;
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v22, v23, v24, v25, v26, v28), 0}];
    objc_exception_throw(v27);
  }

  v33.receiver = self;
  v33.super_class = AVAssetDownloadContentConfiguration;
  v6 = [(AVAssetDownloadContentConfiguration *)&v33 init];
  if (v6)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v6->_variantQualifiers = [coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, objc_opt_class(), 0), @"variantQualifiers"}];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [coder decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithObjects:", v10, v11, v12, v13, objc_opt_class(), 0), @"mediaSelections"}];
    v6->_mediaSelections = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        v18 = 0;
        do
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [[AVMediaSelection alloc] initWithAsset:0 propertyList:*(*(&v29 + 1) + 8 * v18)];
          if (v19)
          {
            [(NSArray *)v6->_mediaSelections addObject:v19];
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v16);
    }
  }

  return v6;
}

@end