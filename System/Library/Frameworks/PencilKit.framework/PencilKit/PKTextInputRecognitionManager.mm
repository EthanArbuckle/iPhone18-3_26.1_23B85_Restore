@interface PKTextInputRecognitionManager
- (NSArray)textInputTargets;
- (id)strokeProviderSnapshot;
- (id)textInputTargetForItemStableIdentifier:(id)a3 strokeIdentifiers:(id)a4 simultaneousItemStableIdentifiers:(id)a5;
- (uint64_t)_updateRecognitionSession;
- (uint64_t)setPreferOutOfProcessRecognition:(uint64_t)result;
- (void)_processQueryDidUpdateResult:(uint64_t)a1;
- (void)beginRecognitionRequestWithDataSource:(void *)a1;
- (void)dealloc;
- (void)fetchContentInfoForTextInputTarget:(id)a3 strokeIdentifiers:(id)a4 completion:(id)a5;
- (void)queryDidUpdateResult:(id)a3;
- (void)reportDebugStateDescription:(id)a3;
- (void)setRecognitionLocales:(uint64_t)a1;
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

- (void)beginRecognitionRequestWithDataSource:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[4];
    v9 = v3;
    v5 = v3;
    v6 = a1[3];
    a1[3] = v5;
    v7 = v4;

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    a1[6] = v8;
    [v7 setNeedsRecognitionUpdate];

    v3 = v9;
  }
}

- (void)setRecognitionLocales:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 16);
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
      v9 = *(a1 + 16);
      *(a1 + 16) = v8;

      [(PKTextInputRecognitionManager *)a1 _updateRecognitionSession];
      +[PKTextInputDebugStateIntrospector debugStateDidChange];
      v3 = v10;
    }
  }

LABEL_9:
}

- (uint64_t)_updateRecognitionSession
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 16) count];
  v3 = *(a1 + 32);
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
    v8 = *(a1 + 32);
    *(a1 + 32) = v7;

    [*(a1 + 32) setDataSource:a1];
    [*(a1 + 32) setPriority:1];
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
      v6 = *(a1 + 32);
      *(a1 + 32) = 0;
    }
  }

  if (*(a1 + 32))
  {
    v9 = MEMORY[0x1E695DF70];
    v10 = *(a1 + 16);
    v11 = [v9 arrayWithCapacity:{objc_msgSend(v10, "count")}];

    v12 = *(a1 + 16);
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
      v28 = a1;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEFAULT, "Recognition Manager %p: Set recognition locales: %@", buf, 0x16u);
    }

    v16 = *(a1 + 32);
    v17 = *(a1 + 16);
    [v16 setPreferredLocales:v17];

    if (*(a1 + 8))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    [*(a1 + 32) setRecognitionEnvironment:v18];
  }

  v19 = *(a1 + 40);
  if (v19)
  {
  }

  else if (*(a1 + 32))
  {
    v20 = objc_alloc(MEMORY[0x1E6997BC8]);
    v21 = *(a1 + 32);
    v22 = [v20 initWithRecognitionSession:v21];
    v23 = *(a1 + 40);
    *(a1 + 40) = v22;

    [*(a1 + 40) setDelegate:a1];
    [*(a1 + 40) setTextInputTargetsDataSource:a1];
    [*(a1 + 40) setPreferredUpdatesInterval:0.0];
    [*(a1 + 40) start];
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

- (void)queryDidUpdateResult:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self)
  {
    textInputQuery = self->__textInputQuery;
  }

  else
  {
    textInputQuery = 0;
  }

  if (textInputQuery == v4)
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
        v15 = self;
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

- (void)_processQueryDidUpdateResult:(uint64_t)a1
{
  v14 = a2;
  if (a1)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 24);
    *(a1 + 24) = 0;

    if (v3)
    {
      v5 = [v14 lastProcessedStrokeProviderVersion];
      v6 = [v5 integerValue];

      v7 = [v3 recognitionManagerStrokeProvider:a1];
      v8 = [v7 strokeProviderVersion];
      v9 = [v8 integerValue];

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v11 = v10 - *(a1 + 48);
      *(a1 + 56) = v11;
      if (v6 >= v9)
      {
        v13 = [v14 availableItems];
        [v3 recognitionManager:a1 recognitionDidFinishWithQueryItems:v13 duration:v11];
      }

      else
      {
        v12 = [v14 lastProcessedStrokeProviderVersion];

        if (!v12)
        {
          [v3 recognitionManager:a1 recognitionDidFinishWithQueryItems:MEMORY[0x1E695E0F0] duration:v11];
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
  v2 = self;
  if (self)
  {
    self = self->_currentDataSource;
  }

  v3 = [(PKTextInputRecognitionManager *)self recognitionManagerTextInputTargets:v2];
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (id)textInputTargetForItemStableIdentifier:(id)a3 strokeIdentifiers:(id)a4 simultaneousItemStableIdentifiers:(id)a5
{
  v8 = self;
  if (self)
  {
    self = self->_currentDataSource;
  }

  return [(PKTextInputRecognitionManager *)self recognitionManager:v8 textInputTargetForItemStableIdentifier:a3 strokeIdentifiers:a4 simultaneousItemStableIdentifiers:a5];
}

- (void)fetchContentInfoForTextInputTarget:(id)a3 strokeIdentifiers:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (self && (currentDataSource = self->_currentDataSource) != 0)
  {
    [(PKTextInputRecognitionManagerDataSource *)currentDataSource recognitionManager:self fetchContentInfoForTextInputTarget:v11 strokeIdentifiers:v8 completion:v9];
  }

  else
  {
    v9[2](v9, 0);
  }
}

- (void)reportDebugStateDescription:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        v13 = [*(*(&v21 + 1) + 8 * i) localeIdentifier];
        if (v13)
        {
          [v6 addObject:v13];
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v14 = [v6 componentsJoinedByString:{@", "}];
  v4[2](v4, @"Locales", v14);
  if (self)
  {
    v15 = [(CHRecognitionSession *)self->__recognitionSession description];
    v4[2](v4, @"Recognition session", v15);

    textInputQuery = self->__textInputQuery;
  }

  else
  {
    v20 = [0 description];
    v4[2](v4, @"Recognition session", v20);

    textInputQuery = 0;
  }

  v17 = [(CHTextInputQuery *)textInputQuery description];
  v4[2](v4, @"Text input query", v17);

  if (self)
  {
    lastRecognitionDuration = self->__lastRecognitionDuration;
  }

  else
  {
    lastRecognitionDuration = 0.0;
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.3f s", *&lastRecognitionDuration];
  v4[2](v4, @"Last request duration", v19);
}

@end