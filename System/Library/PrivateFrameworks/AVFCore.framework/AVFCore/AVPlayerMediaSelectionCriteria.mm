@interface AVPlayerMediaSelectionCriteria
- (AVPlayerMediaSelectionCriteria)init;
- (AVPlayerMediaSelectionCriteria)initWithFigDictionary:(id)dictionary;
- (AVPlayerMediaSelectionCriteria)initWithPreferredLanguages:(NSArray *)preferredLanguages preferredMediaCharacteristics:(NSArray *)preferredMediaCharacteristics;
- (AVPlayerMediaSelectionCriteria)initWithPreferredLanguages:(id)languages preferredMediaCharacteristics:(id)characteristics fallbackPreferredLanguages:(id)preferredLanguages fallbackPreferredMediaCharacteristics:(id)mediaCharacteristics captionDisplayType:(int64_t)type;
- (AVPlayerMediaSelectionCriteria)initWithPreferredLanguages:(id)languages preferredMediaCharacteristics:(id)characteristics preferredMediaSubTypes:(id)types precludedMediaSubTypes:(id)subTypes;
- (AVPlayerMediaSelectionCriteria)initWithPreferredLanguages:(id)languages preferredMediaCharacteristics:(id)characteristics preferredMediaSubTypes:(id)types precludedMediaSubTypes:(id)subTypes preferMultichannelAudio:(BOOL)audio precludeMultichannelAudio:(BOOL)multichannelAudio;
- (AVPlayerMediaSelectionCriteria)initWithPremiumMediaCharacteristics:(id)characteristics preferredLanguages:(id)languages preferredMediaCharacteristics:(id)mediaCharacteristics;
- (AVPlayerMediaSelectionCriteria)initWithPrincipalMediaCharacteristics:(NSArray *)principalMediaCharacteristics preferredLanguages:(NSArray *)preferredLanguages preferredMediaCharacteristics:(NSArray *)preferredMediaCharacteristics;
- (BOOL)precludeMultichannelAudio;
- (BOOL)preferMultichannelAudio;
- (NSArray)preferredLanguages;
- (NSArray)preferredMediaCharacteristics;
- (NSArray)principalMediaCharacteristics;
- (id)_fallbackPreferredLanguages;
- (id)_fallbackPreferredMediaCharacteristics;
- (id)_precludedMediaCharacteristics;
- (id)description;
- (id)figDictionary;
- (id)precludedMediaSubTypes;
- (id)preferredMediaSubTypes;
- (id)premiumMediaCharacteristics;
- (void)dealloc;
@end

@implementation AVPlayerMediaSelectionCriteria

- (AVPlayerMediaSelectionCriteria)init
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = AVPlayerMediaSelectionCriteria;
  v2 = [(AVPlayerMediaSelectionCriteria *)&v5 init];
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    v2->_criteriaInternal = v3;
    if (v3)
    {
      v7 = *MEMORY[0x1E6972F78];
      v6 = *MEMORY[0x1E6973728];
      v8[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
      *v2->_criteriaInternal = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (AVPlayerMediaSelectionCriteria)initWithPreferredLanguages:(NSArray *)preferredLanguages preferredMediaCharacteristics:(NSArray *)preferredMediaCharacteristics
{
  v7 = [(AVPlayerMediaSelectionCriteria *)self init];
  if (v7)
  {
    v19 = 0;
    if (publicCriteriaAreExceptional(preferredLanguages, preferredMediaCharacteristics, 0, 0, &v19))
    {
      v11 = v7;
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v7 userInfo:{a2, v19, v12, v13, v14, v15, v16, v18), 0}];
      objc_exception_throw(v17);
    }

    v8 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*v7->_criteriaInternal];
    v9 = v8;
    if (preferredLanguages)
    {
      [v8 setValue:preferredLanguages forKey:*MEMORY[0x1E6972F98]];
    }

    if (preferredMediaCharacteristics)
    {
      [v9 setValue:AVTranslateAVMediaCharacteristicsToFigMediaCharacteristics(preferredMediaCharacteristics) forKey:*MEMORY[0x1E6972F90]];
    }

    *v7->_criteriaInternal = [v9 copy];
  }

  return v7;
}

- (AVPlayerMediaSelectionCriteria)initWithPrincipalMediaCharacteristics:(NSArray *)principalMediaCharacteristics preferredLanguages:(NSArray *)preferredLanguages preferredMediaCharacteristics:(NSArray *)preferredMediaCharacteristics
{
  v7 = [(AVPlayerMediaSelectionCriteria *)self initWithPreferredLanguages:preferredLanguages preferredMediaCharacteristics:preferredMediaCharacteristics];
  if (v7)
  {
    v18 = 0;
    if (publicCriteriaAreExceptional(0, 0, principalMediaCharacteristics, 0, &v18))
    {
      v10 = v7;
      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v7 userInfo:{a2, v18, v11, v12, v13, v14, v15, v17), 0}];
      objc_exception_throw(v16);
    }

    v8 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*v7->_criteriaInternal];
    if (principalMediaCharacteristics)
    {
      [v8 setValue:AVTranslateAVMediaCharacteristicsToFigMediaCharacteristics(principalMediaCharacteristics) forKey:*MEMORY[0x1E6972FB0]];
    }

    *v7->_criteriaInternal = [v8 copy];
  }

  return v7;
}

- (AVPlayerMediaSelectionCriteria)initWithPreferredLanguages:(id)languages preferredMediaCharacteristics:(id)characteristics preferredMediaSubTypes:(id)types precludedMediaSubTypes:(id)subTypes
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = [(AVPlayerMediaSelectionCriteria *)self initWithPreferredLanguages:languages preferredMediaCharacteristics:characteristics];
  if (v9)
  {
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = [types countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      v13 = @"preferredMediaSubTypes must contain only items of type NSNumber";
      do
      {
        v14 = 0;
        do
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(types);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_24:
            v22 = v9;
            v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v9 userInfo:{a2, v13, v23, v24, v25, v26, v27, v29), 0}];
            objc_exception_throw(v28);
          }

          ++v14;
        }

        while (v11 != v14);
        v11 = [types countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v11);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = [subTypes countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      v13 = @"precludedMediaSubTypes must contain only items of type NSNumber";
      do
      {
        v18 = 0;
        do
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(subTypes);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_24;
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [subTypes countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v16);
    }

    v19 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*v9->_criteriaInternal];
    v20 = v19;
    if (types)
    {
      [v19 setValue:types forKey:*MEMORY[0x1E6972FA0]];
    }

    if (subTypes)
    {
      [v20 setValue:subTypes forKey:*MEMORY[0x1E6972F80]];
    }

    *v9->_criteriaInternal = [v20 copy];
  }

  return v9;
}

- (AVPlayerMediaSelectionCriteria)initWithPreferredLanguages:(id)languages preferredMediaCharacteristics:(id)characteristics preferredMediaSubTypes:(id)types precludedMediaSubTypes:(id)subTypes preferMultichannelAudio:(BOOL)audio precludeMultichannelAudio:(BOOL)multichannelAudio
{
  multichannelAudioCopy = multichannelAudio;
  audioCopy = audio;
  v10 = [(AVPlayerMediaSelectionCriteria *)self initWithPreferredLanguages:languages preferredMediaCharacteristics:characteristics preferredMediaSubTypes:types precludedMediaSubTypes:subTypes];
  if (v10)
  {
    v11 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*v10->_criteriaInternal];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:audioCopy];
    [v11 setValue:v12 forKey:*MEMORY[0x1E6972F88]];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:multichannelAudioCopy];
    [v11 setValue:v13 forKey:*MEMORY[0x1E6972F70]];

    *v10->_criteriaInternal = [v11 copy];
  }

  return v10;
}

- (AVPlayerMediaSelectionCriteria)initWithPreferredLanguages:(id)languages preferredMediaCharacteristics:(id)characteristics fallbackPreferredLanguages:(id)preferredLanguages fallbackPreferredMediaCharacteristics:(id)mediaCharacteristics captionDisplayType:(int64_t)type
{
  v12 = [AVPlayerMediaSelectionCriteria initWithPreferredLanguages:"initWithPreferredLanguages:preferredMediaCharacteristics:" preferredMediaCharacteristics:?];
  if (v12)
  {
    if (languages | characteristics)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*v12->_criteriaInternal];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v14 = dictionary;
    if (preferredLanguages)
    {
      [dictionary setValue:preferredLanguages forKey:*MEMORY[0x1E6972F68]];
    }

    if (mediaCharacteristics)
    {
      [v14 setValue:AVTranslateAVMediaCharacteristicsToFigMediaCharacteristics(mediaCharacteristics) forKey:*MEMORY[0x1E6972F60]];
    }

    v15 = [MEMORY[0x1E696AD98] numberWithInt:type];
    [v14 setValue:v15 forKey:*MEMORY[0x1E6972F58]];

    *v12->_criteriaInternal = [v14 copy];
  }

  return v12;
}

- (AVPlayerMediaSelectionCriteria)initWithPremiumMediaCharacteristics:(id)characteristics preferredLanguages:(id)languages preferredMediaCharacteristics:(id)mediaCharacteristics
{
  v9 = [(AVPlayerMediaSelectionCriteria *)self initWithPreferredLanguages:languages preferredMediaCharacteristics:mediaCharacteristics];
  if (v9)
  {
    if (languages | mediaCharacteristics)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*v9->_criteriaInternal];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v11 = dictionary;
    v21 = 0;
    if (publicCriteriaAreExceptional(0, 0, 0, characteristics, &v21))
    {
      v13 = v9;
      v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v9 userInfo:{a2, v21, v14, v15, v16, v17, v18, v20), 0}];
      objc_exception_throw(v19);
    }

    if (characteristics)
    {
      [v11 setValue:AVTranslateAVMediaCharacteristicsToFigMediaCharacteristics(characteristics) forKey:*MEMORY[0x1E6972FA8]];
    }

    *v9->_criteriaInternal = [v11 copy];
  }

  return v9;
}

- (void)dealloc
{
  criteriaInternal = self->_criteriaInternal;
  if (criteriaInternal)
  {

    free(self->_criteriaInternal);
  }

  v4.receiver = self;
  v4.super_class = AVPlayerMediaSelectionCriteria;
  [(AVPlayerMediaSelectionCriteria *)&v4 dealloc];
}

- (NSArray)preferredLanguages
{
  result = [*self->_criteriaInternal objectForKey:*MEMORY[0x1E6972F98]];
  if (!result)
  {
    v3 = MEMORY[0x1E695DEC8];

    return [v3 array];
  }

  return result;
}

- (NSArray)preferredMediaCharacteristics
{
  v2 = [*self->_criteriaInternal objectForKey:*MEMORY[0x1E6972F90]];
  if (v2)
  {

    return AVTranslateFigMediaCharacteristicsToAVMediaCharacteristics(v2);
  }

  else
  {
    v4 = MEMORY[0x1E695DEC8];

    return [v4 array];
  }
}

- (NSArray)principalMediaCharacteristics
{
  v2 = [*self->_criteriaInternal objectForKey:*MEMORY[0x1E6972FB0]];
  if (v2)
  {

    return AVTranslateFigMediaCharacteristicsToAVMediaCharacteristics(v2);
  }

  else
  {
    v4 = MEMORY[0x1E695DEC8];

    return [v4 array];
  }
}

- (id)premiumMediaCharacteristics
{
  v2 = [*self->_criteriaInternal objectForKey:*MEMORY[0x1E6972FA8]];
  if (v2)
  {

    return AVTranslateFigMediaCharacteristicsToAVMediaCharacteristics(v2);
  }

  else
  {
    v4 = MEMORY[0x1E695DEC8];

    return [v4 array];
  }
}

- (id)_precludedMediaCharacteristics
{
  v2 = [*self->_criteriaInternal objectForKey:*MEMORY[0x1E6972F78]];
  if (v2)
  {

    return AVTranslateFigMediaCharacteristicsToAVMediaCharacteristics(v2);
  }

  else
  {
    v4 = MEMORY[0x1E695DEC8];

    return [v4 array];
  }
}

- (id)_fallbackPreferredMediaCharacteristics
{
  v2 = [*self->_criteriaInternal objectForKey:*MEMORY[0x1E6972F60]];
  if (v2)
  {

    return AVTranslateFigMediaCharacteristicsToAVMediaCharacteristics(v2);
  }

  else
  {
    v4 = MEMORY[0x1E695DEC8];

    return [v4 array];
  }
}

- (id)_fallbackPreferredLanguages
{
  result = [*self->_criteriaInternal objectForKey:*MEMORY[0x1E6972F68]];
  if (!result)
  {
    v3 = MEMORY[0x1E695DEC8];

    return [v3 array];
  }

  return result;
}

- (id)preferredMediaSubTypes
{
  result = [*self->_criteriaInternal objectForKey:*MEMORY[0x1E6972FA0]];
  if (!result)
  {
    v3 = MEMORY[0x1E695DEC8];

    return [v3 array];
  }

  return result;
}

- (id)precludedMediaSubTypes
{
  result = [*self->_criteriaInternal objectForKey:*MEMORY[0x1E6972F80]];
  if (!result)
  {
    v3 = MEMORY[0x1E695DEC8];

    return [v3 array];
  }

  return result;
}

- (BOOL)preferMultichannelAudio
{
  v2 = [*self->_criteriaInternal objectForKey:*MEMORY[0x1E6972F88]];

  return [v2 BOOLValue];
}

- (BOOL)precludeMultichannelAudio
{
  v2 = [*self->_criteriaInternal objectForKey:*MEMORY[0x1E6972F70]];

  return [v2 BOOLValue];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"<%@: %p", NSStringFromClass(v4), self];
  if ([(NSArray *)[(AVPlayerMediaSelectionCriteria *)self principalMediaCharacteristics] count])
  {
    v6 = MEMORY[0x1E696AEC0];
    [(AVPlayerMediaSelectionCriteria *)self principalMediaCharacteristics];
    [v5 appendString:{objc_msgSend(v6, "stringWithFormat:", @", principalMediaCharacteristics = %@", FigCFCopyCompactDescription())}];
  }

  if ([-[AVPlayerMediaSelectionCriteria premiumMediaCharacteristics](self "premiumMediaCharacteristics")])
  {
    v7 = MEMORY[0x1E696AEC0];
    [(AVPlayerMediaSelectionCriteria *)self premiumMediaCharacteristics];
    [v5 appendString:{objc_msgSend(v7, "stringWithFormat:", @", premiumMediaCharacteristics = %@", FigCFCopyCompactDescription())}];
  }

  if ([(NSArray *)[(AVPlayerMediaSelectionCriteria *)self preferredLanguages] count])
  {
    v8 = MEMORY[0x1E696AEC0];
    [(AVPlayerMediaSelectionCriteria *)self preferredLanguages];
    [v5 appendString:{objc_msgSend(v8, "stringWithFormat:", @", preferredLanguages = %@", FigCFCopyCompactDescription())}];
  }

  if ([(NSArray *)[(AVPlayerMediaSelectionCriteria *)self preferredMediaCharacteristics] count])
  {
    v9 = MEMORY[0x1E696AEC0];
    [(AVPlayerMediaSelectionCriteria *)self preferredMediaCharacteristics];
    [v5 appendString:{objc_msgSend(v9, "stringWithFormat:", @", preferredMediaCharacteristics = %@", FigCFCopyCompactDescription())}];
  }

  if ([-[AVPlayerMediaSelectionCriteria _precludedMediaCharacteristics](self "_precludedMediaCharacteristics")])
  {
    v10 = MEMORY[0x1E696AEC0];
    [(AVPlayerMediaSelectionCriteria *)self _precludedMediaCharacteristics];
    [v5 appendString:{objc_msgSend(v10, "stringWithFormat:", @", precludedMediaCharacteristics = %@", FigCFCopyCompactDescription())}];
  }

  if ([-[AVPlayerMediaSelectionCriteria _fallbackPreferredMediaCharacteristics](self "_fallbackPreferredMediaCharacteristics")])
  {
    v11 = MEMORY[0x1E696AEC0];
    [(AVPlayerMediaSelectionCriteria *)self _fallbackPreferredMediaCharacteristics];
    [v5 appendString:{objc_msgSend(v11, "stringWithFormat:", @", fallbackPreferredMediaCharacteristics = %@", FigCFCopyCompactDescription())}];
  }

  if ([-[AVPlayerMediaSelectionCriteria _fallbackPreferredLanguages](self "_fallbackPreferredLanguages")])
  {
    v12 = MEMORY[0x1E696AEC0];
    [(AVPlayerMediaSelectionCriteria *)self _fallbackPreferredLanguages];
    [v5 appendString:{objc_msgSend(v12, "stringWithFormat:", @", fallbackPreferredLanguages = %@", FigCFCopyCompactDescription())}];
  }

  v13 = [*self->_criteriaInternal objectForKey:*MEMORY[0x1E6972F58]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = MEMORY[0x1E696AEC0];
    intValue = [v13 intValue];
    if (intValue > 2)
    {
      v16 = @"Unknown";
    }

    else
    {
      v16 = off_1E7465B38[intValue];
    }

    [v5 appendString:{objc_msgSend(v14, "stringWithFormat:", @", captionAppearanceDisplayType = %@", v16)}];
  }

  if ([-[AVPlayerMediaSelectionCriteria preferredMediaSubTypes](self "preferredMediaSubTypes")])
  {
    v17 = MEMORY[0x1E696AEC0];
    [(AVPlayerMediaSelectionCriteria *)self preferredMediaSubTypes];
    [v5 appendString:{objc_msgSend(v17, "stringWithFormat:", @", preferredMediaSubTypes = %@", FigCFCopyCompactDescription())}];
  }

  if ([-[AVPlayerMediaSelectionCriteria precludedMediaSubTypes](self "precludedMediaSubTypes")])
  {
    v18 = MEMORY[0x1E696AEC0];
    [(AVPlayerMediaSelectionCriteria *)self precludedMediaSubTypes];
    [v5 appendString:{objc_msgSend(v18, "stringWithFormat:", @", precludedMediaSubTypes = %@", FigCFCopyCompactDescription())}];
  }

  if ([(AVPlayerMediaSelectionCriteria *)self preferMultichannelAudio])
  {
    [v5 appendString:{@", preferMultichannelAudio"}];
  }

  if ([(AVPlayerMediaSelectionCriteria *)self precludeMultichannelAudio])
  {
    [v5 appendString:{@", precludeMultichannelAudio"}];
  }

  [v5 appendString:@">"];
  return v5;
}

- (id)figDictionary
{
  v3 = *self->_criteriaInternal;
  if (v3)
  {
    v4 = [v3 copy];

    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E695DF20];

    return [v6 dictionary];
  }
}

- (AVPlayerMediaSelectionCriteria)initWithFigDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = AVPlayerMediaSelectionCriteria;
  v4 = [(AVPlayerMediaSelectionCriteria *)&v7 init];
  if (v4)
  {
    v5 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    v4->_criteriaInternal = v5;
    if (v5)
    {
      *v4->_criteriaInternal = [dictionary copy];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

@end