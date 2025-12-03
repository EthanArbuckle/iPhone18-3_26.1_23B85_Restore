@interface PKStrokeProvider
+ (id)_identifiersForStrokes:(id)strokes;
+ (id)slicesForStrokes:(id)strokes;
- (BOOL)isStroke:(id)stroke versionOfStrokeWithIdentifier:(id)identifier;
- (BOOL)isValidStrokeIdentifier:(id)identifier;
- (CGSize)drawingCanvasSize;
- (CHStrokeProviderVersion)strokeProviderVersion;
- (NSArray)orderedStrokes;
- (NSOrderedSet)visibleStrokeEncodedIdentifiers;
- (NSString)description;
- (PKStrokeProvider)initWithDrawing:(id)drawing;
- (PKStrokeProvider)initWithDrawing:(id)drawing visibleOnscreenStrokes:(id)strokes shouldProcessVisibleStrokes:(BOOL)visibleStrokes transcriptionCache:(id)cache;
- (id)_cachedStrokeIdentifier:(id)identifier;
- (id)cachedTranscriptionForStrokeGroup:(id)group;
- (id)cachedTranscriptionsIntersectingStrokeGroup:(id)group;
- (id)encodedStrokeIdentifier:(id)identifier;
- (id)sliceForIdentifier:(id)identifier;
- (id)slices;
- (id)strokeForIdentifier:(id)identifier;
- (id)strokeIdentifierFromData:(id)data;
- (int64_t)compareOrderOfStrokeWithIdentifier:(id)identifier toStrokeWithIdentifier:(id)withIdentifier;
- (unint64_t)compareStyleOfStrokeWithIdentifier:(id)identifier toStrokeWithIdentifier:(id)withIdentifier;
- (void)_cacheStrokeIdentifier:(id)identifier withEncodedStrokeIdentifier:(id)strokeIdentifier;
- (void)updateTranscriptionCache:(id)cache;
@end

@implementation PKStrokeProvider

- (PKStrokeProvider)initWithDrawing:(id)drawing
{
  drawingCopy = drawing;
  v14.receiver = self;
  v14.super_class = PKStrokeProvider;
  v5 = [(PKStrokeProvider *)&v14 init];
  v6 = [drawingCopy copy];
  drawing = v5->_drawing;
  v5->_drawing = v6;

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5->_disabled = [standardUserDefaults BOOLForKey:@"PKDrawingRecognitionDisableUpdates"];

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  strokeIdsByEncoding = v5->_strokeIdsByEncoding;
  v5->_strokeIdsByEncoding = v9;

  v11 = objc_alloc_init(PKHandwritingTranscriptionCache);
  transcriptionCache = v5->_transcriptionCache;
  v5->_transcriptionCache = v11;

  return v5;
}

- (PKStrokeProvider)initWithDrawing:(id)drawing visibleOnscreenStrokes:(id)strokes shouldProcessVisibleStrokes:(BOOL)visibleStrokes transcriptionCache:(id)cache
{
  drawingCopy = drawing;
  strokesCopy = strokes;
  cacheCopy = cache;
  v13 = [(PKStrokeProvider *)self initWithDrawing:drawingCopy];
  if (v13)
  {
    v14 = [strokesCopy copy];
    visibleOnscreenStrokes = v13->_visibleOnscreenStrokes;
    v13->_visibleOnscreenStrokes = v14;

    v13->_shouldProcessVisibleStrokes = visibleStrokes;
    v16 = [cacheCopy copy];
    transcriptionCache = v13->_transcriptionCache;
    v13->_transcriptionCache = v16;
  }

  return v13;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = PKStrokeProvider;
  v3 = [(PKStrokeProvider *)&v8 description];
  strokeProviderVersion = [(PKStrokeProvider *)self strokeProviderVersion];
  orderedStrokes = [(PKStrokeProvider *)self orderedStrokes];
  v6 = [v3 stringByAppendingFormat:@" version: %@, strokes: %ld", strokeProviderVersion, objc_msgSend(orderedStrokes, "count")];

  return v6;
}

- (id)cachedTranscriptionForStrokeGroup:(id)group
{
  v3 = [(PKHandwritingTranscriptionCache *)self->_transcriptionCache cachedTranscriptionForStrokeGroup:group];

  return v3;
}

- (id)cachedTranscriptionsIntersectingStrokeGroup:(id)group
{
  v24 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  allCachedGroups = [(PKHandwritingTranscriptionCache *)self->_transcriptionCache allCachedGroups];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__PKStrokeProvider_cachedTranscriptionsIntersectingStrokeGroup___block_invoke;
  v21[3] = &unk_1E82D9108;
  v5 = groupCopy;
  v22 = v5;
  v6 = [allCachedGroups indexesOfObjectsPassingTest:v21];

  if ([v6 count])
  {
    allCachedGroups2 = [(PKHandwritingTranscriptionCache *)self->_transcriptionCache allCachedGroups];
    v8 = [allCachedGroups2 objectsAtIndexes:v6];

    v9 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v8, "count")}];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v11)
    {
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [(PKHandwritingTranscriptionCache *)self->_transcriptionCache cachedTranscriptionForStrokeGroup:*(*(&v17 + 1) + 8 * i)];
          if (v14)
          {
            [v9 addObject:v14];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateTranscriptionCache:(id)cache
{
  cacheCopy = cache;
  v4 = [cacheCopy copy];
  transcriptionCache = self->_transcriptionCache;
  self->_transcriptionCache = v4;
}

- (CHStrokeProviderVersion)strokeProviderVersion
{
  drawing = [(PKStrokeProvider *)self drawing];
  version = [drawing version];

  return version;
}

- (id)slices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  strokeSlices = selfCopy->_strokeSlices;
  if (strokeSlices)
  {
    v4 = strokeSlices;
  }

  else
  {
    if (selfCopy->_shouldProcessVisibleStrokes)
    {
      strokes = selfCopy->_visibleOnscreenStrokes;
    }

    else
    {
      drawing = [(PKStrokeProvider *)selfCopy drawing];
      strokes = [drawing strokes];
    }

    v7 = [objc_opt_class() slicesForStrokes:strokes];
    v8 = selfCopy->_strokeSlices;
    selfCopy->_strokeSlices = v7;

    v4 = selfCopy->_strokeSlices;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

+ (id)slicesForStrokes:(id)strokes
{
  v24 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  v3 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(strokesCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = strokesCopy;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        _strokeMask = [v8 _strokeMask];
        v10 = _strokeMask == 0;

        if (v10)
        {
          v16 = -[PKStrokeProviderSlice initWithStroke:tStart:tEnd:]([PKStrokeProviderSlice alloc], "initWithStroke:tStart:tEnd:", v8, 0.0, [v8 _pointsCount]);
          [v3 addObject:v16];
        }

        else
        {
          _strokeMask2 = [v8 _strokeMask];
          centerlineSlices = [_strokeMask2 centerlineSlices];

          v13 = *centerlineSlices;
          v14 = centerlineSlices[1];
          while (v13 != v14)
          {
            v15 = [[PKStrokeProviderSlice alloc] initWithStroke:v8 tStart:*v13 tEnd:v13[1]];
            [v3 addObject:v15];

            v13 += 2;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  return v3;
}

- (NSArray)orderedStrokes
{
  if (self->_disabled)
  {
    array = MEMORY[0x1E695E0F0];
  }

  else
  {
    slices = [(PKStrokeProvider *)self slices];
    array = [slices array];
  }

  return array;
}

- (int64_t)compareOrderOfStrokeWithIdentifier:(id)identifier toStrokeWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  slices = [(PKStrokeProvider *)self slices];
  v9 = [[PKStrokeProviderSlice alloc] initWithIdentifier:identifierCopy];
  v10 = [slices indexOfObject:v9];

  v11 = [[PKStrokeProviderSlice alloc] initWithIdentifier:withIdentifierCopy];
  v12 = [slices indexOfObject:v11];

  if (v10 < v12)
  {
    v13 = -1;
  }

  else
  {
    v13 = v10 != v12;
  }

  return v13;
}

- (unint64_t)compareStyleOfStrokeWithIdentifier:(id)identifier toStrokeWithIdentifier:(id)withIdentifier
{
  withIdentifierCopy = withIdentifier;
  v25 = [(PKStrokeProvider *)self strokeForIdentifier:identifier];
  v7 = [(PKStrokeProvider *)self strokeForIdentifier:withIdentifierCopy];
  stroke = [v25 stroke];
  stroke2 = [v7 stroke];
  v10 = [stroke ink];
  v11 = [stroke2 ink];
  identifier = [v10 identifier];
  identifier2 = [v11 identifier];
  LODWORD(v17) = [identifier isEqual:identifier2];

  color = [v10 color];
  cGColor = [color CGColor];
  color2 = [v11 color];
  LODWORD(cGColor) = CGColorEqualToColor(cGColor, [color2 CGColor]);
  v17 = v17;

  if (cGColor)
  {
    v17 = v17 | 2;
  }

  [stroke _maxWidthForStroke];
  v19 = v18;
  [stroke2 _maxWidthForStroke];
  if (vabdd_f64(v19, v20) < 3.0)
  {
    [v10 weight];
    v22 = v21;
    [v11 weight];
    if (v22 == v23)
    {
      v17 |= 4uLL;
    }
  }

  return v17;
}

- (CGSize)drawingCanvasSize
{
  [(PKDrawing *)self->_drawing bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (BOOL)isStroke:(id)stroke versionOfStrokeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifier = [stroke identifier];
  v7 = identifierCopy;
  strokeUUID = [v7 strokeUUID];
  if (strokeUUID)
  {
    strokeUUID2 = [identifier strokeUUID];
    strokeUUID3 = [v7 strokeUUID];
    v11 = [strokeUUID2 isEqual:strokeUUID3];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isValidStrokeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  slices = [(PKStrokeProvider *)self slices];
  v6 = [[PKStrokeProviderSlice alloc] initWithIdentifier:identifierCopy];
  v7 = [slices containsObject:v6];

  return v7;
}

- (id)strokeForIdentifier:(id)identifier
{
  v3 = [(PKStrokeProvider *)self sliceForIdentifier:identifier];

  return v3;
}

- (void)_cacheStrokeIdentifier:(id)identifier withEncodedStrokeIdentifier:(id)strokeIdentifier
{
  identifierCopy = identifier;
  strokeIdentifierCopy = strokeIdentifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (identifierCopy)
  {
    if (strokeIdentifierCopy)
    {
      v8 = [(NSMutableDictionary *)selfCopy->_strokeIdsByEncoding objectForKey:strokeIdentifierCopy];

      if (!v8)
      {
        [(NSMutableDictionary *)selfCopy->_strokeIdsByEncoding setObject:identifierCopy forKey:strokeIdentifierCopy];
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)_cachedStrokeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (identifierCopy)
  {
    v6 = [(NSMutableDictionary *)selfCopy->_strokeIdsByEncoding objectForKey:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)strokeIdentifierFromData:(id)data
{
  dataCopy = data;
  v5 = [(PKStrokeProvider *)self _cachedStrokeIdentifier:dataCopy];
  if (!v5)
  {
    if (_MergedGlobals_140 != -1)
    {
      dispatch_once(&_MergedGlobals_140, &__block_literal_global_42);
    }

    v6 = MEMORY[0x1E696ACD0];
    v7 = qword_1ED6A5130;
    encodedStrokeIdentifier = [dataCopy encodedStrokeIdentifier];
    v11 = 0;
    v5 = [v6 unarchivedObjectOfClasses:v7 fromData:encodedStrokeIdentifier error:&v11];
    v9 = v11;

    [(PKStrokeProvider *)self _cacheStrokeIdentifier:v5 withEncodedStrokeIdentifier:dataCopy];
  }

  return v5;
}

void __45__PKStrokeProvider_strokeIdentifierFromData___block_invoke()
{
  v8[2] = *MEMORY[0x1E69E9840];
  v0 = NSClassFromString(&cfstr_Pkstrokeprovid.isa);
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  if (v0)
  {
    v8[0] = v2;
    v8[1] = v0;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
    v4 = [v1 setWithArray:v3];
    v5 = qword_1ED6A5130;
    qword_1ED6A5130 = v4;
  }

  else
  {
    v6 = [v1 setWithObject:v2];
    v7 = qword_1ED6A5130;
    qword_1ED6A5130 = v6;
  }
}

- (id)encodedStrokeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PKStrokeProvider *)self strokeForIdentifier:identifierCopy];
  v6 = v5;
  if (!v5 || ([v5 encodedStrokeIdentifier], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = 0;
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:identifierCopy requiringSecureCoding:1 error:&v14];
    v9 = v14;
    if (v8)
    {
      v7 = [objc_alloc(MEMORY[0x1E6997B58]) initWithData:v8];
    }

    else
    {
      v7 = 0;
    }
  }

  [(PKStrokeProvider *)self _cacheStrokeIdentifier:identifierCopy withEncodedStrokeIdentifier:v7];
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E6997B58]);
    data = [MEMORY[0x1E695DEF0] data];
    v10 = [v11 initWithData:data];
  }

  return v10;
}

- (NSOrderedSet)visibleStrokeEncodedIdentifiers
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA0] orderedSetWithArray:self->_visibleOnscreenStrokes];
  v4 = MEMORY[0x1E695DFB8];
  drawing = [(PKStrokeProvider *)self drawing];
  strokes = [drawing strokes];
  v7 = [v4 orderedSetWithArray:strokes];
  [v3 intersectOrderedSet:v7];

  v8 = [PKStrokeProvider _identifiersForStrokes:v3];
  v9 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v8, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [(PKStrokeProvider *)self encodedStrokeIdentifier:*(*(&v16 + 1) + 8 * i), v16];
        [v9 addObject:v14];
      }

      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v9;
}

- (id)sliceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  slices = [(PKStrokeProvider *)self slices];
  v6 = [[PKStrokeProviderSlice alloc] initWithIdentifier:identifierCopy];
  v7 = [slices indexOfObject:v6];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [slices objectAtIndexedSubscript:v7];
  }

  return v8;
}

+ (id)_identifiersForStrokes:(id)strokes
{
  v17 = *MEMORY[0x1E69E9840];
  array = [strokes array];
  v4 = [PKStrokeProvider slicesForStrokes:array];

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        strokeIdentifier = [*(*(&v12 + 1) + 8 * i) strokeIdentifier];
        [v5 addObject:strokeIdentifier];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

@end