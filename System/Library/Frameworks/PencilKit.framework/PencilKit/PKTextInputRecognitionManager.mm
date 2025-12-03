@interface PKTextInputRecognitionManager
- (NSArray)textInputTargets;
- (id)strokeProviderSnapshot;
- (id)textInputTargetForItemStableIdentifier:(id)identifier strokeIdentifiers:(id)identifiers simultaneousItemStableIdentifiers:(id)stableIdentifiers;
- (uint64_t)_updateRecognitionSession;
- (uint64_t)setPreferOutOfProcessRecognition:(uint64_t)result;
- (void)_processQueryDidUpdateResult:(uint64_t)result;
- (void)beginRecognitionRequestWithDataSource:(void *)source;
- (void)dealloc;
- (void)fetchContentInfoForTextInputTarget:(id)target strokeIdentifiers:(id)identifiers completion:(id)completion;
- (void)queryDidUpdateResult:(id)result;
- (void)reportDebugStateDescription:(id)description;
- (void)setRecognitionLocales:(uint64_t)locales;
@end

@implementation PKTextInputRecognitionManager

- (void)dealloc
{
  if (self)
  {
    [(CHRecognitionSession *)self->__recognitionSession setDataSource:0];
    [(CHTextInputQuery *)self->__textInputQuery setDelegate:0];
    textInputQuery = self->__textInputQuery;
  }

  else
  {
    [0 setDataSource:0];
    [0 setDelegate:0];
    textInputQuery = 0;
  }

  [(CHTextInputQuery *)textInputQuery setTextInputTargetsDataSource:0];
  v4.receiver = self;
  v4.super_class = PKTextInputRecognitionManager;
  [(PKTextInputRecognitionManager *)&v4 dealloc];
}

- (void)beginRecognitionRequestWithDataSource:(void *)source
{
  v3 = a2;
  if (source)
  {
    v4 = source[4];
    v9 = v3;
    v5 = v3;
    v6 = source[3];
    source[3] = v5;
    v7 = v4;

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    source[6] = v8;
    [v7 setNeedsRecognitionUpdate];

    v3 = v9;
  }
}

- (void)setRecognitionLocales:(uint64_t)locales
{
  v3 = a2;
  if (locales)
  {
    v4 = *(locales + 16);
    v10 = v3;
    v5 = v3;
    v6 = v4;
    v3 = v10;
    if (v5 | v6)
    {
      if (v5 && v6)
      {
        v7 = [v5 isEqual:v6];

        v3 = v10;
        if (v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }

      v8 = [v5 copy];
      v9 = *(locales + 16);
      *(locales + 16) = v8;

      [(PKTextInputRecognitionManager *)locales _updateRecognitionSession];
      +[PKTextInputDebugStateIntrospector debugStateDidChange];
      v3 = v10;
    }
  }

LABEL_9:
}

- (uint64_t)_updateRecognitionSession
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(self + 16) count];
  v3 = *(self + 32);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v7 = [objc_alloc(MEMORY[0x1E6997B78]) initWithMode:1];
    v8 = *(self + 32);
    *(self + 32) = v7;

    [*(self + 32) setDataSource:self];
    [*(self + 32) setPriority:1];
  }

  else
  {
    if (v2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 == 0;
    }

    if (!v5)
    {
      [v3 setDataSource:0];
      v6 = *(self + 32);
      *(self + 32) = 0;
    }
  }

  if (*(self + 32))
  {
    v9 = MEMORY[0x1E695DF70];
    v10 = *(self + 16);
    v11 = [v9 arrayWithCapacity:{objc_msgSend(v10, "count")}];

    v12 = *(self + 16);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __58__PKTextInputRecognitionManager__updateRecognitionSession__block_invoke;
    v25[3] = &unk_1E82DB9C8;
    v13 = v11;
    v26 = v13;
    [v12 enumerateObjectsUsingBlock:v25];
    v14 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 componentsJoinedByString:{@", "}];
      *buf = 134218242;
      selfCopy = self;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEFAULT, "Recognition Manager %p: Set recognition locales: %@", buf, 0x16u);
    }

    v16 = *(self + 32);
    v17 = *(self + 16);
    [v16 setPreferredLocales:v17];

    if (*(self + 8))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    [*(self + 32) setRecognitionEnvironment:v18];
  }

  v19 = *(self + 40);
  if (v19)
  {
  }

  else if (*(self + 32))
  {
    v20 = objc_alloc(MEMORY[0x1E6997BC8]);
    v21 = *(self + 32);
    v22 = [v20 initWithRecognitionSession:v21];
    v23 = *(self + 40);
    *(self + 40) = v22;

    [*(self + 40) setDelegate:self];
    [*(self + 40) setTextInputTargetsDataSource:self];
    [*(self + 40) setPreferredUpdatesInterval:0.0];
    [*(self + 40) start];
  }

  +[PKTextInputDebugStateIntrospector debugStateDidChange];
  return +[PKTextInputDebugStateIntrospector debugStateDidChange];
}

- (uint64_t)setPreferOutOfProcessRecognition:(uint64_t)result
{
  if (result && *(result + 8) != a2)
  {
    *(result + 8) = a2;
    [(PKTextInputRecognitionManager *)result _updateRecognitionSession];

    return +[PKTextInputDebugStateIntrospector debugStateDidChange];
  }

  return result;
}

void __58__PKTextInputRecognitionManager__updateRecognitionSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 localeIdentifier];
  v4 = v3;
  v5 = &stru_1F476BD20;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  [*(a1 + 32) addObject:v6];
}

- (void)queryDidUpdateResult:(id)result
{
  v18 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = resultCopy;
  if (self)
  {
    textInputQuery = self->__textInputQuery;
  }

  else
  {
    textInputQuery = 0;
  }

  if (textInputQuery == resultCopy)
  {
    v7 = +[PKTextInputSettings sharedSettings];
    [v7 debugRecognitionRequestArtificialDelay];
    v9 = v8;

    if (v9 <= 0.01)
    {
      [(PKTextInputRecognitionManager *)self _processQueryDidUpdateResult:v5];
    }

    else
    {
      v10 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        selfCopy = self;
        v16 = 2048;
        v17 = v9;
        _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "Recognition Manager %p: debug artificial delay for queryDidUpdateResult: %0.2f", buf, 0x16u);
      }

      v11 = dispatch_time(0, (v9 * 1000000000.0));
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __54__PKTextInputRecognitionManager_queryDidUpdateResult___block_invoke;
      v12[3] = &unk_1E82D6E70;
      v12[4] = self;
      v13 = v5;
      dispatch_after(v11, MEMORY[0x1E69E96A0], v12);
    }
  }
}

- (void)_processQueryDidUpdateResult:(uint64_t)result
{
  v14 = a2;
  if (result)
  {
    v3 = *(result + 24);
    v4 = *(result + 24);
    *(result + 24) = 0;

    if (v3)
    {
      lastProcessedStrokeProviderVersion = [v14 lastProcessedStrokeProviderVersion];
      integerValue = [lastProcessedStrokeProviderVersion integerValue];

      v7 = [v3 recognitionManagerStrokeProvider:result];
      strokeProviderVersion = [v7 strokeProviderVersion];
      integerValue2 = [strokeProviderVersion integerValue];

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v11 = v10 - *(result + 48);
      *(result + 56) = v11;
      if (integerValue >= integerValue2)
      {
        availableItems = [v14 availableItems];
        [v3 recognitionManager:result recognitionDidFinishWithQueryItems:availableItems duration:v11];
      }

      else
      {
        lastProcessedStrokeProviderVersion2 = [v14 lastProcessedStrokeProviderVersion];

        if (!lastProcessedStrokeProviderVersion2)
        {
          [v3 recognitionManager:result recognitionDidFinishWithQueryItems:MEMORY[0x1E695E0F0] duration:v11];
        }
      }
    }
  }
}

- (id)strokeProviderSnapshot
{
  if (self && (v3 = self->_currentDataSource) != 0)
  {
    v4 = v3;
    v5 = [(PKTextInputRecognitionManagerDataSource *)v3 recognitionManagerStrokeProvider:self];
  }

  else
  {
    v4 = objc_alloc_init(PKDrawing);
    v5 = [[PKTextInputStrokeProvider alloc] initWithDrawing:v4];
  }

  v6 = v5;

  return v6;
}

- (NSArray)textInputTargets
{
  selfCopy = self;
  if (self)
  {
    self = self->_currentDataSource;
  }

  v3 = [(PKTextInputRecognitionManager *)self recognitionManagerTextInputTargets:selfCopy];
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (id)textInputTargetForItemStableIdentifier:(id)identifier strokeIdentifiers:(id)identifiers simultaneousItemStableIdentifiers:(id)stableIdentifiers
{
  selfCopy = self;
  if (self)
  {
    self = self->_currentDataSource;
  }

  return [(PKTextInputRecognitionManager *)self recognitionManager:selfCopy textInputTargetForItemStableIdentifier:identifier strokeIdentifiers:identifiers simultaneousItemStableIdentifiers:stableIdentifiers];
}

- (void)fetchContentInfoForTextInputTarget:(id)target strokeIdentifiers:(id)identifiers completion:(id)completion
{
  targetCopy = target;
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (self && (currentDataSource = self->_currentDataSource) != 0)
  {
    [(PKTextInputRecognitionManagerDataSource *)currentDataSource recognitionManager:self fetchContentInfoForTextInputTarget:targetCopy strokeIdentifiers:identifiersCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)reportDebugStateDescription:(id)description
{
  v26 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (self)
  {
    recognitionLocales = self->_recognitionLocales;
  }

  else
  {
    recognitionLocales = 0;
  }

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](recognitionLocales, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  if (self)
  {
    v7 = self->_recognitionLocales;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        localeIdentifier = [*(*(&v21 + 1) + 8 * i) localeIdentifier];
        if (localeIdentifier)
        {
          [v6 addObject:localeIdentifier];
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v14 = [v6 componentsJoinedByString:{@", "}];
  descriptionCopy[2](descriptionCopy, @"Locales", v14);
  if (self)
  {
    v15 = [(CHRecognitionSession *)self->__recognitionSession description];
    descriptionCopy[2](descriptionCopy, @"Recognition session", v15);

    textInputQuery = self->__textInputQuery;
  }

  else
  {
    v20 = [0 description];
    descriptionCopy[2](descriptionCopy, @"Recognition session", v20);

    textInputQuery = 0;
  }

  v17 = [(CHTextInputQuery *)textInputQuery description];
  descriptionCopy[2](descriptionCopy, @"Text input query", v17);

  if (self)
  {
    lastRecognitionDuration = self->__lastRecognitionDuration;
  }

  else
  {
    lastRecognitionDuration = 0.0;
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.3f s", *&lastRecognitionDuration];
  descriptionCopy[2](descriptionCopy, @"Last request duration", v19);
}

@end