@interface AVAudioMixProcessingEffect
+ (id)processingEffectWithDSPGraphText:(id)text properties:(id)properties parameterSchedule:(id)schedule identifier:(id)identifier;
- (AVAudioMixProcessingEffect)initWithDSPGraphText:(id)text properties:(id)properties parameterSchedule:(id)schedule identifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValueSupported:(id)supported exceptionReasonOut:(id *)out;
- (NSArray)parameterSchedule;
- (NSDictionary)properties;
- (NSString)DSPGraphText;
- (NSString)identifier;
- (id)_figAudioProperties;
- (id)_figSchedule;
- (id)_fourCCToFigPropertyDict;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation AVAudioMixProcessingEffect

- (BOOL)isValueSupported:(id)supported exceptionReasonOut:(id *)out
{
  if (isValueSupported_exceptionReasonOut__sSupportedValueTypesOnce != -1)
  {
    [AVAudioMixProcessingEffect isValueSupported:exceptionReasonOut:];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__14;
  v17 = __Block_byref_object_dispose__14;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__AVAudioMixProcessingEffect_isValueSupported_exceptionReasonOut___block_invoke_106;
  v12[3] = &unk_1E7463B90;
  v12[4] = supported;
  v12[5] = self;
  v12[6] = &v19;
  v12[7] = &v13;
  [isValueSupported_exceptionReasonOut__sSupportedValueTypes enumerateObjectsUsingBlock:v12];
  v7 = v20;
  v8 = *(v20 + 24);
  if (out && (v20[3] & 1) == 0)
  {
    v9 = v14;
    v10 = @"Unsupported type sent as value for property";
    if (v14[5])
    {
      v10 = v14[5];
    }

    *out = v10;
    v9[5] = 0;
    v8 = *(v7 + 24);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v8 & 1;
}

id __66__AVAudioMixProcessingEffect_isValueSupported_exceptionReasonOut___block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v3 count:5];
  result = [v0 setWithArray:{v1, v3, v4, v5, v6}];
  isValueSupported_exceptionReasonOut__sSupportedValueTypes = result;
  return result;
}

uint64_t __66__AVAudioMixProcessingEffect_isValueSupported_exceptionReasonOut___block_invoke_106(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  result = objc_opt_isKindOfClass();
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = *(a1 + 32);
    if (isKindOfClass)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      result = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (result)
      {
        v8 = result;
        v9 = *v16;
        while (2)
        {
          v10 = 0;
          do
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v7);
            }

            *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) isValueSupported:*(*(&v15 + 1) + 8 * v10) exceptionReasonOut:0];
            if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
            {
              result = [MEMORY[0x1E696AEC0] stringWithFormat:@"array containing value with type %@ is not supported", objc_opt_class()];
              *(*(*(a1 + 56) + 8) + 40) = result;
              return result;
            }

            ++v10;
          }

          while (v8 != v10);
          result = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
          v8 = result;
          if (result)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {
        v11 = *(a1 + 32);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __66__AVAudioMixProcessingEffect_isValueSupported_exceptionReasonOut___block_invoke_2;
        v12[3] = &unk_1E7463B68;
        v13 = *(a1 + 40);
        v14 = *(a1 + 56);
        return [v11 enumerateKeysAndObjectsUsingBlock:v12];
      }
    }
  }

  return result;
}

id __66__AVAudioMixProcessingEffect_isValueSupported_exceptionReasonOut___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) isValueSupported:a2 exceptionReasonOut:0];
  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    v8 = @"dictionary with key of type %@ is not supported";
    goto LABEL_5;
  }

  result = [*(a1 + 32) isValueSupported:a3 exceptionReasonOut:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v8 = @"dictionary with value of type %@ is not supported";
LABEL_5:
    result = [MEMORY[0x1E696AEC0] stringWithFormat:v8, objc_opt_class()];
    *(*(*(a1 + 48) + 8) + 40) = result;
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  return result;
}

+ (id)processingEffectWithDSPGraphText:(id)text properties:(id)properties parameterSchedule:(id)schedule identifier:(id)identifier
{
  v6 = [[AVAudioMixProcessingEffect alloc] initWithDSPGraphText:text properties:properties parameterSchedule:schedule identifier:identifier];

  return v6;
}

- (AVAudioMixProcessingEffect)initWithDSPGraphText:(id)text properties:(id)properties parameterSchedule:(id)schedule identifier:(id)identifier
{
  v37 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = AVAudioMixProcessingEffect;
  v11 = [(AVAudioMixEffect *)&v35 init];
  if (v11)
  {
    v11->_identifier = [identifier copy];
    v11->_graphText = [text copy];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3052000000;
    v32 = __Block_byref_object_copy__14;
    v33 = __Block_byref_object_dispose__14;
    v34 = 0;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __91__AVAudioMixProcessingEffect_initWithDSPGraphText_properties_parameterSchedule_identifier___block_invoke;
    v28[3] = &unk_1E7463BB8;
    v28[4] = v11;
    v28[5] = &v29;
    [properties enumerateKeysAndObjectsUsingBlock:v28];
    v17 = v30[5];
    if (v17)
    {
      v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v11 userInfo:{a2, v17, v12, v13, v14, v15, v16, v24), 0}];
      objc_exception_throw(v23);
    }

    v11->_properties = [properties copy];
    v11->_scheduleEntries = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = [schedule countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v18)
    {
      v19 = *v25;
      do
      {
        v20 = 0;
        do
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(schedule);
          }

          v21 = [*(*(&v24 + 1) + 8 * v20) copy];
          [(NSMutableArray *)v11->_scheduleEntries insertObject:v21 atIndex:[(NSMutableArray *)v11->_scheduleEntries indexOfObject:v21 inSortedRange:0 options:[(NSMutableArray *)v11->_scheduleEntries count] usingComparator:1024, &__block_literal_global_130]];
          ++v20;
        }

        while (v18 != v20);
        v18 = [schedule countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v18);
    }

    _Block_object_dispose(&v29, 8);
  }

  return v11;
}

uint64_t __91__AVAudioMixProcessingEffect_initWithDSPGraphText_properties_parameterSchedule_identifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  if ([a2 unsignedLongLongValue] >> 32)
  {
    result = [MEMORY[0x1E696AEC0] stringWithFormat:@"key %@ in properties dictionary is not FourCC", a2];
    *(*(*(a1 + 40) + 8) + 40) = result;
    v9 = 1;
  }

  else
  {
    result = [*(a1 + 32) isValueSupported:a3 exceptionReasonOut:*(*(a1 + 40) + 8) + 40];
    v9 = result ^ 1;
  }

  *a4 = v9;
  return result;
}

uint64_t __91__AVAudioMixProcessingEffect_initWithDSPGraphText_properties_parameterSchedule_identifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    [a2 time];
    if (a3)
    {
LABEL_3:
      [a3 time];
      goto LABEL_6;
    }
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
    if (a3)
    {
      goto LABEL_3;
    }
  }

  memset(&v6, 0, sizeof(v6));
LABEL_6:
  if (CMTimeCompare(&time1, &v6) < 0)
  {
    return -1;
  }

  if (!a2)
  {
    memset(&time1, 0, sizeof(time1));
    if (a3)
    {
      goto LABEL_9;
    }

LABEL_12:
    memset(&v6, 0, sizeof(v6));
    return CMTimeCompare(&time1, &v6) > 0;
  }

  [a2 time];
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_9:
  [a3 time];
  return CMTimeCompare(&time1, &v6) > 0;
}

- (void)dealloc
{
  graphText = self->_graphText;
  if (graphText)
  {
  }

  v4.receiver = self;
  v4.super_class = AVAudioMixProcessingEffect;
  [(AVAudioMixProcessingEffect *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (equal == self)
  {
LABEL_10:
    LOBYTE(v5) = 1;
    return v5;
  }

  v5 = [(NSString *)self->_identifier isEqual:*(equal + 2)];
  if (v5)
  {
    v5 = [(NSMutableArray *)self->_scheduleEntries isEqual:*(equal + 4)];
    if (v5)
    {
      v5 = [(NSDictionary *)self->_properties isEqual:*(equal + 5)];
      if (v5)
      {
        graphText = self->_graphText;
        if (!graphText || !*(equal + 3))
        {
          goto LABEL_10;
        }

        v7 = [(NSString *)graphText hash];
        if (v7 == [*(equal + 3) hash])
        {
          v5 = [(NSString *)self->_graphText isEqual:*(equal + 3)];
          if (v5)
          {
            goto LABEL_10;
          }

          return v5;
        }

LABEL_11:
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  graphText = self->_graphText;
  if (graphText)
  {
    graphText = [graphText hash];
  }

  v5 = graphText ^ v3;
  v6 = [(NSMutableArray *)self->_scheduleEntries hash];
  return v5 ^ v6 ^ [(NSDictionary *)self->_properties hash];
}

- (id)_fourCCToFigPropertyDict
{
  if (_fourCCToFigPropertyDict_sFourCCToFigPropertyDictOnce != -1)
  {
    [AVAudioMixProcessingEffect _fourCCToFigPropertyDict];
  }

  return _fourCCToFigPropertyDict_sFourCCToFigPropertyDict;
}

id __54__AVAudioMixProcessingEffect__fourCCToFigPropertyDict__block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v1 = *MEMORY[0x1E69716F0];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1735554168];
  v3 = *MEMORY[0x1E69716F8];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1886548848];
  result = [v0 dictionaryWithObjectsAndKeys:{v1, v2, v3, v4, *MEMORY[0x1E69716E8], objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", 1635087216), 0}];
  _fourCCToFigPropertyDict_sFourCCToFigPropertyDict = result;
  return result;
}

- (id)_figAudioProperties
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_graphText)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:1634758764];
    [dictionary setValue:v4 forKey:*MEMORY[0x1E69716C8]];
    v5 = [MEMORY[0x1E696AD98] numberWithInt:1685287015];
    [dictionary setValue:v5 forKey:*MEMORY[0x1E69716D0]];
    v6 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [dictionary setValue:v6 forKey:*MEMORY[0x1E69716D8]];
    _fourCCToFigPropertyDict = [(AVAudioMixProcessingEffect *)self _fourCCToFigPropertyDict];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary2 setValue:self->_graphText forKey:{objc_msgSend(_fourCCToFigPropertyDict, "objectForKey:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", 1735554168))}];
    properties = self->_properties;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__AVAudioMixProcessingEffect__figAudioProperties__block_invoke;
    v11[3] = &unk_1E7463BE0;
    v11[4] = dictionary2;
    v11[5] = _fourCCToFigPropertyDict;
    [(NSDictionary *)properties enumerateKeysAndObjectsUsingBlock:v11];
    [dictionary setValue:dictionary2 forKey:*MEMORY[0x1E69716E0]];
  }

  return dictionary;
}

uint64_t __49__AVAudioMixProcessingEffect__figAudioProperties__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) objectForKey:a2];

  return [v4 setValue:a3 forKey:v5];
}

- (id)_figSchedule
{
  v15 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  parameterSchedule = [(AVAudioMixProcessingEffect *)self parameterSchedule];
  v5 = [(NSArray *)parameterSchedule countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(parameterSchedule);
        }

        [array addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "_figSchedule")}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)parameterSchedule countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return array;
}

- (NSString)identifier
{
  v2 = self->_identifier;

  return v2;
}

- (NSString)DSPGraphText
{
  graphText = self->_graphText;
  if (!graphText)
  {
    return 0;
  }

  v3 = graphText;

  return v3;
}

- (NSArray)parameterSchedule
{
  v2 = self->_scheduleEntries;

  return v2;
}

- (NSDictionary)properties
{
  v2 = self->_properties;

  return v2;
}

- (id)description
{
  if (self->_graphText)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"DSPG(%p) identifier=%@", self, -[AVAudioMixProcessingEffect identifier](self, "identifier")];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN(%p)", self, v3];
  }
}

@end