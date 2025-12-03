@interface PKTextInputDebugStateIntrospector
+ (id)_knownInstances;
+ (id)debugStateLineDescriptionForIntrospectable:(id)introspectable;
+ (void)debugStateDidChange;
- (BOOL)debugStateCanShowDetailsForStateKey:(id)key;
- (PKTextInputDebugStateIntrospector)initWithInteraction:(id)interaction;
- (PKTextInputDebugStateIntrospectorDelegate)delegate;
- (PKTextInputInteraction)interaction;
- (id)_introspectableForStateKey:(id)key;
- (id)debugStateDescriptionForStateKey:(id)key;
- (id)debugStateDetailViewControllerForStateKey:(id)key;
- (id)debugStateKeys;
- (id)fullDebugStateDescription;
- (void)_debugStateDidChange;
- (void)dealloc;
@end

@implementation PKTextInputDebugStateIntrospector

- (PKTextInputDebugStateIntrospector)initWithInteraction:(id)interaction
{
  interactionCopy = interaction;
  v9.receiver = self;
  v9.super_class = PKTextInputDebugStateIntrospector;
  v5 = [(PKTextInputDebugStateIntrospector *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interaction, interactionCopy);
    _knownInstances = [objc_opt_class() _knownInstances];
    [_knownInstances addObject:v6];
  }

  return v6;
}

- (void)dealloc
{
  _knownInstances = [objc_opt_class() _knownInstances];
  [_knownInstances removeObject:self];

  v4.receiver = self;
  v4.super_class = PKTextInputDebugStateIntrospector;
  [(PKTextInputDebugStateIntrospector *)&v4 dealloc];
}

+ (id)_knownInstances
{
  if (qword_1ED6A5408 != -1)
  {
    dispatch_once(&qword_1ED6A5408, &__block_literal_global_74);
  }

  v3 = _MergedGlobals_161;

  return v3;
}

void __52__PKTextInputDebugStateIntrospector__knownInstances__block_invoke()
{
  v0 = [MEMORY[0x1E696AC70] hashTableWithWeakObjects];
  v1 = _MergedGlobals_161;
  _MergedGlobals_161 = v0;
}

+ (id)debugStateLineDescriptionForIntrospectable:(id)introspectable
{
  v3 = MEMORY[0x1E695DF70];
  introspectableCopy = introspectable;
  array = [v3 array];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PKTextInputDebugStateIntrospector_debugStateLineDescriptionForIntrospectable___block_invoke;
  v9[3] = &unk_1E82DB6D8;
  v10 = array;
  v6 = array;
  [introspectableCopy reportDebugStateDescription:v9];

  v7 = [v6 componentsJoinedByString:{@", "}];

  return v7;
}

void __80__PKTextInputDebugStateIntrospector_debugStateLineDescriptionForIntrospectable___block_invoke(uint64_t a1, uint64_t a2, __CFString *a3)
{
  v4 = @"(nil)";
  if (a3)
  {
    v4 = a3;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", a2, v4];
  [*(a1 + 32) addObject:v5];
}

- (id)fullDebugStateDescription
{
  v19 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  debugStateKeys = [(PKTextInputDebugStateIntrospector *)self debugStateKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [debugStateKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(debugStateKeys);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(PKTextInputDebugStateIntrospector *)self debugStateTitleForStateKey:v9];
        v11 = [(PKTextInputDebugStateIntrospector *)self debugStateDescriptionForStateKey:v9];
        string2 = [v11 string];
        [string appendFormat:@"== %@ ==\n%@\n\n", v10, string2];
      }

      v6 = [debugStateKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return string;
}

+ (void)debugStateDidChange
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  _knownInstances = [self _knownInstances];
  v3 = [_knownInstances countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(_knownInstances);
        }

        [*(*(&v7 + 1) + 8 * v6++) _debugStateDidChange];
      }

      while (v4 != v6);
      v4 = [_knownInstances countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_debugStateDidChange
{
  delegate = [(PKTextInputDebugStateIntrospector *)self delegate];
  [delegate debugStateIntrospectorContentDidChange:self];
}

- (id)debugStateKeys
{
  if (qword_1ED6A5418 != -1)
  {
    dispatch_once(&qword_1ED6A5418, &__block_literal_global_18);
  }

  v3 = qword_1ED6A5410;

  return v3;
}

void __51__PKTextInputDebugStateIntrospector_debugStateKeys__block_invoke()
{
  v0 = qword_1ED6A5410;
  qword_1ED6A5410 = &unk_1F47C1DC0;
}

- (id)debugStateDetailViewControllerForStateKey:(id)key
{
  v3 = [(PKTextInputDebugStateIntrospector *)self _introspectableForStateKey:key];
  if (objc_opt_respondsToSelector())
  {
    debugStateDetailViewController = [v3 debugStateDetailViewController];
  }

  else
  {
    debugStateDetailViewController = 0;
  }

  return debugStateDetailViewController;
}

- (BOOL)debugStateCanShowDetailsForStateKey:(id)key
{
  v3 = [(PKTextInputDebugStateIntrospector *)self _introspectableForStateKey:key];
  if (objc_opt_respondsToSelector())
  {
    debugStateCanDisplayDetails = [v3 debugStateCanDisplayDetails];
  }

  else
  {
    debugStateCanDisplayDetails = 0;
  }

  return debugStateCanDisplayDetails;
}

- (id)debugStateDescriptionForStateKey:(id)key
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKTextInputDebugStateIntrospector *)self _introspectableForStateKey:key];
  v15 = *MEMORY[0x1E69DB648];
  v4 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:12.0];
  v16[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PKTextInputDebugStateIntrospector_debugStateDescriptionForStateKey___block_invoke;
  v12[3] = &unk_1E82DB700;
  v13 = v5;
  v7 = v6;
  v14 = v7;
  v8 = v5;
  [v3 reportDebugStateDescription:v12];
  if ([v7 length] >= 2)
  {
    [v7 deleteCharactersInRange:{objc_msgSend(v7, "length") - 1, 1}];
  }

  v9 = v14;
  v10 = v7;

  return v7;
}

void __70__PKTextInputDebugStateIntrospector_debugStateDescriptionForStateKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AAB0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", v7];

  v15 = [v8 initWithString:v9 attributes:*(a1 + 32)];
  [*(a1 + 40) appendAttributedString:v15];
  v10 = *(a1 + 40);
  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  v12 = @"(nil)";
  if (v6)
  {
    v12 = v6;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v12];

  v14 = [v11 initWithString:v13 attributes:0];
  [v10 appendAttributedString:v14];
}

- (id)_introspectableForStateKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"Interaction Controller"])
  {
    interaction = [(PKTextInputDebugStateIntrospector *)self interaction];
    goto LABEL_13;
  }

  if ([keyCopy isEqualToString:@"Actions Logging"])
  {
    interaction2 = [(PKTextInputDebugStateIntrospector *)self interaction];
    debugLogController = [interaction2 debugLogController];
LABEL_11:
    interaction = debugLogController;
LABEL_12:

    goto LABEL_13;
  }

  if ([keyCopy isEqualToString:@"Canvas Controller"])
  {
    interaction2 = [(PKTextInputDebugStateIntrospector *)self interaction];
    debugLogController = [interaction2 canvasController];
    goto LABEL_11;
  }

  if ([keyCopy isEqualToString:@"Gesture Recognizer"])
  {
    interaction2 = [(PKTextInputDebugStateIntrospector *)self interaction];
    debugLogController = [interaction2 drawingGestureRecognizer];
    goto LABEL_11;
  }

  if ([keyCopy isEqualToString:@"Handwriting Controller"])
  {
    interaction2 = [(PKTextInputDebugStateIntrospector *)self interaction];
    debugLogController = [interaction2 handwritingController];
    goto LABEL_11;
  }

  if ([keyCopy isEqualToString:@"Active Input Target"])
  {
    interaction2 = [(PKTextInputDebugStateIntrospector *)self interaction];
    handwritingController = [interaction2 handwritingController];
    debugActiveInputTargetState = [handwritingController debugActiveInputTargetState];
LABEL_20:
    interaction = debugActiveInputTargetState;

    goto LABEL_12;
  }

  if ([keyCopy isEqualToString:@"Recognition Manager"])
  {
    interaction2 = [(PKTextInputDebugStateIntrospector *)self interaction];
    handwritingController = [interaction2 handwritingController];
    debugActiveInputTargetState = [handwritingController debugRecognitionManager];
    goto LABEL_20;
  }

  if ([keyCopy isEqualToString:@"Cursor Controller"])
  {
    interaction2 = [(PKTextInputDebugStateIntrospector *)self interaction];
    debugLogController = [interaction2 cursorController];
    goto LABEL_11;
  }

  if ([keyCopy isEqualToString:@"Reserve Space Controller"])
  {
    interaction2 = [(PKTextInputDebugStateIntrospector *)self interaction];
    debugLogController = [interaction2 reserveSpaceController];
    goto LABEL_11;
  }

  if ([keyCopy isEqualToString:@"Elements Controller"])
  {
    interaction2 = [(PKTextInputDebugStateIntrospector *)self interaction];
    debugLogController = [interaction2 elementsController];
    goto LABEL_11;
  }

  interaction = 0;
LABEL_13:

  return interaction;
}

- (PKTextInputInteraction)interaction
{
  WeakRetained = objc_loadWeakRetained(&self->_interaction);

  return WeakRetained;
}

- (PKTextInputDebugStateIntrospectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end