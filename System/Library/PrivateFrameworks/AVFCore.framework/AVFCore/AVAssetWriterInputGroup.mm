@interface AVAssetWriterInputGroup
+ (AVAssetWriterInputGroup)assetWriterInputGroupWithInputs:(NSArray *)inputs defaultInput:(AVAssetWriterInput *)defaultInput;
+ (AVAssetWriterInputGroup)assetWriterInputGroupWithInputs:(id)a3 provisionalInputs:(id)a4 defaultInput:(id)a5;
- (AVAssetWriterInputGroup)initWithInputs:(NSArray *)inputs defaultInput:(AVAssetWriterInput *)defaultInput;
- (AVAssetWriterInputGroup)initWithInputs:(id)a3 provisionalInputs:(id)a4 defaultInput:(id)a5;
- (NSArray)inputs;
- (NSArray)provisionalInputs;
- (id)mediaSelectionOptionWithPropertyList:(id)a3;
- (id)options;
- (void)_startObservingInputPropertiesThatMayChangeValueOfOptions;
- (void)_stopObservingInputPropertiesThatMayChangeValueOfOptions;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation AVAssetWriterInputGroup

+ (AVAssetWriterInputGroup)assetWriterInputGroupWithInputs:(NSArray *)inputs defaultInput:(AVAssetWriterInput *)defaultInput
{
  v4 = [[a1 alloc] initWithInputs:inputs defaultInput:defaultInput];

  return v4;
}

- (AVAssetWriterInputGroup)initWithInputs:(NSArray *)inputs defaultInput:(AVAssetWriterInput *)defaultInput
{
  if (!inputs)
  {
    v11 = self;
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "inputs != nil";
    goto LABEL_13;
  }

  if (![(NSArray *)inputs count])
  {
    v20 = self;
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "[inputs count] > 0";
    goto LABEL_13;
  }

  if (defaultInput && ![(NSArray *)inputs containsObject:defaultInput])
  {
    v21 = self;
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "defaultInput == nil || [inputs containsObject:defaultInput]";
LABEL_13:
    v22 = [v17 exceptionWithName:v18 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v12, v13, v14, v15, v16, v19), 0}];
    objc_exception_throw(v22);
  }

  v23.receiver = self;
  v23.super_class = AVAssetWriterInputGroup;
  v8 = [(AVMediaSelectionGroup *)&v23 init];
  if (v8)
  {
    v9 = objc_alloc_init(AVAssetWriterInputGroupInternal);
    v8->_internal = v9;
    if (v9)
    {
      CFRetain(v9);
      v8->_internal->inputs = [(NSArray *)inputs copy];
      v8->_internal->defaultInput = defaultInput;
      [(AVAssetWriterInputGroup *)v8 _startObservingInputPropertiesThatMayChangeValueOfOptions];
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  if (self->_internal)
  {
    [(AVAssetWriterInputGroup *)self _stopObservingInputPropertiesThatMayChangeValueOfOptions];

    CFRelease(self->_internal);
  }

  v3.receiver = self;
  v3.super_class = AVAssetWriterInputGroup;
  [(AVMediaSelectionGroup *)&v3 dealloc];
}

- (NSArray)inputs
{
  result = self->_internal->inputs;
  if (!result)
  {
    return [MEMORY[0x1E695DEC8] array];
  }

  return result;
}

- (void)_startObservingInputPropertiesThatMayChangeValueOfOptions
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  obj = self->_internal->inputs;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        [v7 addObserver:self forKeyPath:@"languageCode" options:0 context:@"AVAssetWriterInputGroupOptionsChangedContext"];
        [v7 addObserver:self forKeyPath:@"extendedLanguageTag" options:0 context:@"AVAssetWriterInputGroupOptionsChangedContext"];
        [v7 addObserver:self forKeyPath:@"metadata" options:0 context:@"AVAssetWriterInputGroupOptionsChangedContext"];
        [v7 addObserver:self forKeyPath:@"trackReferences" options:0 context:@"AVAssetWriterInputGroupOptionsChangedContext"];
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_stopObservingInputPropertiesThatMayChangeValueOfOptions
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  inputs = self->_internal->inputs;
  v4 = [(NSArray *)inputs countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(inputs);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 removeObserver:self forKeyPath:@"languageCode"];
        [v8 removeObserver:self forKeyPath:@"extendedLanguageTag"];
        [v8 removeObserver:self forKeyPath:@"metadata"];
        [v8 removeObserver:self forKeyPath:@"trackReferences"];
      }

      v5 = [(NSArray *)inputs countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"AVAssetWriterInputGroupOptionsChangedContext")
  {
    [(AVAssetWriterInputGroup *)self willChangeValueForKey:@"options", a4, a5];

    [(AVAssetWriterInputGroup *)self didChangeValueForKey:@"options"];
  }
}

- (id)options
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  inputs = self->_internal->inputs;
  v5 = [(NSArray *)inputs countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(inputs);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (![objc_msgSend(v9 "mediaType")])
        {
          v13 = [AVAssetWriterInputSelectionOption assetWriterInputSelectionOptionWithAssetWriterInput:v9];
          goto LABEL_18;
        }

        v10 = [v9 sourceFormatHint];
        if ([v9 outputSettings])
        {
          v11 = 1;
        }

        else
        {
          v11 = v10 == 0;
        }

        if (v11 || (v12 = CFGetTypeID(v10), v12 != CMFormatDescriptionGetTypeID()) || CMFormatDescriptionGetMediaType(v10) != 1935832172 || (displayFlagsOut = 0, CMTextFormatDescriptionGetDisplayFlags(v10, &displayFlagsOut)) || (displayFlagsOut & 0x80000000) == 0)
        {
          [v3 addObject:{+[AVAssetWriterInputSelectionOption assetWriterInputSelectionOptionWithAssetWriterInput:displaysNonForcedSubtitles:](AVAssetWriterInputSelectionOption, "assetWriterInputSelectionOptionWithAssetWriterInput:displaysNonForcedSubtitles:", v9, 1)}];
          if ([objc_msgSend(objc_msgSend(v9 "_trackReferences")])
          {
            continue;
          }
        }

        v13 = [AVAssetWriterInputSelectionOption assetWriterInputSelectionOptionWithAssetWriterInput:v9 displaysNonForcedSubtitles:0];
LABEL_18:
        [v3 addObject:v13];
        continue;
      }

      v6 = [(NSArray *)inputs countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (AVAssetWriterInputGroup)assetWriterInputGroupWithInputs:(id)a3 provisionalInputs:(id)a4 defaultInput:(id)a5
{
  v5 = [[a1 alloc] initWithInputs:a3 provisionalInputs:a4 defaultInput:a5];

  return v5;
}

- (AVAssetWriterInputGroup)initWithInputs:(id)a3 provisionalInputs:(id)a4 defaultInput:(id)a5
{
  if (a5 && ([a3 containsObject:a5] & 1) == 0)
  {
    v23 = self;
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "defaultInput == nil || [inputs containsObject:defaultInput]";
    goto LABEL_16;
  }

  if (![a3 count] || !objc_msgSend(a4, "count"))
  {
    if ([a3 count] || objc_msgSend(a4, "count"))
    {
      goto LABEL_9;
    }

    v24 = self;
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "[inputs count] > 0 || [provisionalInputs count] > 0";
LABEL_16:
    v25 = [v17 exceptionWithName:v18 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v12, v13, v14, v15, v16, v19), 0}];
    objc_exception_throw(v25);
  }

  v10 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  if ([v10 intersectsSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", a4)}])
  {
    v11 = self;
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "! [[NSSet setWithArray:inputs] intersectsSet:[NSSet setWithArray:provisionalInputs]]";
    goto LABEL_16;
  }

LABEL_9:
  v26.receiver = self;
  v26.super_class = AVAssetWriterInputGroup;
  v20 = [(AVMediaSelectionGroup *)&v26 init];
  if (v20)
  {
    v21 = objc_alloc_init(AVAssetWriterInputGroupInternal);
    v20->_internal = v21;
    if (v21)
    {
      CFRetain(v21);
      v20->_internal->inputs = [a3 copy];
      v20->_internal->defaultInput = a5;
      v20->_internal->provisionalInputs = [a4 copy];
      [(AVAssetWriterInputGroup *)v20 _startObservingInputPropertiesThatMayChangeValueOfOptions];
    }

    else
    {

      return 0;
    }
  }

  return v20;
}

- (NSArray)provisionalInputs
{
  result = self->_internal->provisionalInputs;
  if (!result)
  {
    return [MEMORY[0x1E695DEC8] array];
  }

  return result;
}

- (id)mediaSelectionOptionWithPropertyList:(id)a3
{
  v4 = [a3 objectForKey:@"UnsafeUnretainedPointerData"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = 0, [v4 length] == 8) && (objc_msgSend(v4, "getBytes:length:", &v7, 8), v5 = -[AVAssetWriterInputGroup inputs](self, "inputs"), -[NSArray indexOfObjectIdenticalTo:](v5, "indexOfObjectIdenticalTo:", v7) != 0x7FFFFFFFFFFFFFFFLL))
  {
    return [AVAssetWriterInputSelectionOption assetWriterInputSelectionOptionWithAssetWriterInput:v7];
  }

  else
  {
    return 0;
  }
}

@end