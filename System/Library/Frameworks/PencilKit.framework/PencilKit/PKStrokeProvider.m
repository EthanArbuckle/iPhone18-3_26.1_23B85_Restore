@interface PKStrokeProvider
+ (id)_identifiersForStrokes:(id)a3;
+ (id)slicesForStrokes:(id)a3;
- (BOOL)isStroke:(id)a3 versionOfStrokeWithIdentifier:(id)a4;
- (BOOL)isValidStrokeIdentifier:(id)a3;
- (CGSize)drawingCanvasSize;
- (CHStrokeProviderVersion)strokeProviderVersion;
- (NSArray)orderedStrokes;
- (NSOrderedSet)visibleStrokeEncodedIdentifiers;
- (NSString)description;
- (PKStrokeProvider)initWithDrawing:(id)a3;
- (PKStrokeProvider)initWithDrawing:(id)a3 visibleOnscreenStrokes:(id)a4 shouldProcessVisibleStrokes:(BOOL)a5 transcriptionCache:(id)a6;
- (id)_cachedStrokeIdentifier:(id)a3;
- (id)cachedTranscriptionForStrokeGroup:(id)a3;
- (id)cachedTranscriptionsIntersectingStrokeGroup:(id)a3;
- (id)encodedStrokeIdentifier:(id)a3;
- (id)sliceForIdentifier:(id)a3;
- (id)slices;
- (id)strokeForIdentifier:(id)a3;
- (id)strokeIdentifierFromData:(id)a3;
- (int64_t)compareOrderOfStrokeWithIdentifier:(id)a3 toStrokeWithIdentifier:(id)a4;
- (unint64_t)compareStyleOfStrokeWithIdentifier:(id)a3 toStrokeWithIdentifier:(id)a4;
- (void)_cacheStrokeIdentifier:(id)a3 withEncodedStrokeIdentifier:(id)a4;
- (void)updateTranscriptionCache:(id)a3;
@end

@implementation PKStrokeProvider

- (PKStrokeProvider)initWithDrawing:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKStrokeProvider;
  v5 = [(PKStrokeProvider *)&v14 init];
  v6 = [v4 copy];
  drawing = v5->_drawing;
  v5->_drawing = v6;

  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5->_disabled = [v8 BOOLForKey:@"PKDrawingRecognitionDisableUpdates"];

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  strokeIdsByEncoding = v5->_strokeIdsByEncoding;
  v5->_strokeIdsByEncoding = v9;

  v11 = objc_alloc_init(PKHandwritingTranscriptionCache);
  transcriptionCache = v5->_transcriptionCache;
  v5->_transcriptionCache = v11;

  return v5;
}

- (PKStrokeProvider)initWithDrawing:(id)a3 visibleOnscreenStrokes:(id)a4 shouldProcessVisibleStrokes:(BOOL)a5 transcriptionCache:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(PKStrokeProvider *)self initWithDrawing:v10];
  if (v13)
  {
    v14 = [v11 copy];
    visibleOnscreenStrokes = v13->_visibleOnscreenStrokes;
    v13->_visibleOnscreenStrokes = v14;

    v13->_shouldProcessVisibleStrokes = a5;
    v16 = [v12 copy];
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
  v4 = [(PKStrokeProvider *)self strokeProviderVersion];
  v5 = [(PKStrokeProvider *)self orderedStrokes];
  v6 = [v3 stringByAppendingFormat:@" version: %@, strokes: %ld", v4, objc_msgSend(v5, "count")];

  return v6;
}

- (id)cachedTranscriptionForStrokeGroup:(id)a3
{
  v3 = [(PKHandwritingTranscriptionCache *)self->_transcriptionCache cachedTranscriptionForStrokeGroup:a3];

  return v3;
}

- (id)cachedTranscriptionsIntersectingStrokeGroup:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v4 = [(PKHandwritingTranscriptionCache *)self->_transcriptionCache allCachedGroups];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__PKStrokeProvider_cachedTranscriptionsIntersectingStrokeGroup___block_invoke;
  v21[3] = &unk_1E82D9108;
  v5 = v16;
  v22 = v5;
  v6 = [v4 indexesOfObjectsPassingTest:v21];

  if ([v6 count])
  {
    v7 = [(PKHandwritingTranscriptionCache *)self->_transcriptionCache allCachedGroups];
    v8 = [v7 objectsAtIndexes:v6];

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

- (void)updateTranscriptionCache:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  transcriptionCache = self->_transcriptionCache;
  self->_transcriptionCache = v4;
}

- (CHStrokeProviderVersion)strokeProviderVersion
{
  v2 = [(PKStrokeProvider *)self drawing];
  v3 = [v2 version];

  return v3;
}

- (id)slices
{
  v2 = self;
  objc_sync_enter(v2);
  strokeSlices = v2->_strokeSlices;
  if (strokeSlices)
  {
    v4 = strokeSlices;
  }

  else
  {
    if (v2->_shouldProcessVisibleStrokes)
    {
      v5 = v2->_visibleOnscreenStrokes;
    }

    else
    {
      v6 = [(PKStrokeProvider *)v2 drawing];
      v5 = [v6 strokes];
    }

    v7 = [objc_opt_class() slicesForStrokes:v5];
    v8 = v2->_strokeSlices;
    v2->_strokeSlices = v7;

    v4 = v2->_strokeSlices;
  }

  objc_sync_exit(v2);

  return v4;
}

+ (id)slicesForStrokes:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v3 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v18, "count")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v18;
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
        v9 = [v8 _strokeMask];
        v10 = v9 == 0;

        if (v10)
        {
          v16 = -[PKStrokeProviderSlice initWithStroke:tStart:tEnd:]([PKStrokeProviderSlice alloc], "initWithStroke:tStart:tEnd:", v8, 0.0, [v8 _pointsCount]);
          [v3 addObject:v16];
        }

        else
        {
          v11 = [v8 _strokeMask];
          v12 = [v11 centerlineSlices];

          v13 = *v12;
          v14 = v12[1];
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
    v2 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v3 = [(PKStrokeProvider *)self slices];
    v2 = [v3 array];
  }

  return v2;
}

- (int64_t)compareOrderOfStrokeWithIdentifier:(id)a3 toStrokeWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKStrokeProvider *)self slices];
  v9 = [[PKStrokeProviderSlice alloc] initWithIdentifier:v6];
  v10 = [v8 indexOfObject:v9];

  v11 = [[PKStrokeProviderSlice alloc] initWithIdentifier:v7];
  v12 = [v8 indexOfObject:v11];

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

- (unint64_t)compareStyleOfStrokeWithIdentifier:(id)a3 toStrokeWithIdentifier:(id)a4
{
  v6 = a4;
  v25 = [(PKStrokeProvider *)self strokeForIdentifier:a3];
  v7 = [(PKStrokeProvider *)self strokeForIdentifier:v6];
  v8 = [v25 stroke];
  v9 = [v7 stroke];
  v10 = [v8 ink];
  v11 = [v9 ink];
  v12 = [v10 identifier];
  v13 = [v11 identifier];
  LODWORD(v17) = [v12 isEqual:v13];

  v14 = [v10 color];
  v15 = [v14 CGColor];
  v16 = [v11 color];
  LODWORD(v15) = CGColorEqualToColor(v15, [v16 CGColor]);
  v17 = v17;

  if (v15)
  {
    v17 = v17 | 2;
  }

  [v8 _maxWidthForStroke];
  v19 = v18;
  [v9 _maxWidthForStroke];
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

- (BOOL)isStroke:(id)a3 versionOfStrokeWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = [a3 identifier];
  v7 = v5;
  v8 = [v7 strokeUUID];
  if (v8)
  {
    v9 = [v6 strokeUUID];
    v10 = [v7 strokeUUID];
    v11 = [v9 isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isValidStrokeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKStrokeProvider *)self slices];
  v6 = [[PKStrokeProviderSlice alloc] initWithIdentifier:v4];
  v7 = [v5 containsObject:v6];

  return v7;
}

- (id)strokeForIdentifier:(id)a3
{
  v3 = [(PKStrokeProvider *)self sliceForIdentifier:a3];

  return v3;
}

- (void)_cacheStrokeIdentifier:(id)a3 withEncodedStrokeIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if (v9)
  {
    if (v6)
    {
      v8 = [(NSMutableDictionary *)v7->_strokeIdsByEncoding objectForKey:v6];

      if (!v8)
      {
        [(NSMutableDictionary *)v7->_strokeIdsByEncoding setObject:v9 forKey:v6];
      }
    }
  }

  objc_sync_exit(v7);
}

- (id)_cachedStrokeIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v4)
  {
    v6 = [(NSMutableDictionary *)v5->_strokeIdsByEncoding objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(v5);

  return v6;
}

- (id)strokeIdentifierFromData:(id)a3
{
  v4 = a3;
  v5 = [(PKStrokeProvider *)self _cachedStrokeIdentifier:v4];
  if (!v5)
  {
    if (_MergedGlobals_140 != -1)
    {
      dispatch_once(&_MergedGlobals_140, &__block_literal_global_42);
    }

    v6 = MEMORY[0x1E696ACD0];
    v7 = qword_1ED6A5130;
    v8 = [v4 encodedStrokeIdentifier];
    v11 = 0;
    v5 = [v6 unarchivedObjectOfClasses:v7 fromData:v8 error:&v11];
    v9 = v11;

    [(PKStrokeProvider *)self _cacheStrokeIdentifier:v5 withEncodedStrokeIdentifier:v4];
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

- (id)encodedStrokeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKStrokeProvider *)self strokeForIdentifier:v4];
  v6 = v5;
  if (!v5 || ([v5 encodedStrokeIdentifier], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = 0;
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v14];
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

  [(PKStrokeProvider *)self _cacheStrokeIdentifier:v4 withEncodedStrokeIdentifier:v7];
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E6997B58]);
    v12 = [MEMORY[0x1E695DEF0] data];
    v10 = [v11 initWithData:v12];
  }

  return v10;
}

- (NSOrderedSet)visibleStrokeEncodedIdentifiers
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA0] orderedSetWithArray:self->_visibleOnscreenStrokes];
  v4 = MEMORY[0x1E695DFB8];
  v5 = [(PKStrokeProvider *)self drawing];
  v6 = [v5 strokes];
  v7 = [v4 orderedSetWithArray:v6];
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

- (id)sliceForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKStrokeProvider *)self slices];
  v6 = [[PKStrokeProviderSlice alloc] initWithIdentifier:v4];
  v7 = [v5 indexOfObject:v6];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 objectAtIndexedSubscript:v7];
  }

  return v8;
}

+ (id)_identifiersForStrokes:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [a3 array];
  v4 = [PKStrokeProvider slicesForStrokes:v3];

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

        v10 = [*(*(&v12 + 1) + 8 * i) strokeIdentifier];
        [v5 addObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

@end