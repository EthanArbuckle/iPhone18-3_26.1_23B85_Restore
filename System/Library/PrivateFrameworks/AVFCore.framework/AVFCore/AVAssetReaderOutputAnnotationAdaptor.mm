@interface AVAssetReaderOutputAnnotationAdaptor
+ (id)assetReaderOutputAnnotationAdaptorWithAssetReaderTrackOutput:(id)output;
- (AVAssetReaderOutputAnnotationAdaptor)initWithAssetReaderTrackOutput:(id)output;
- (id)nextAnnotation;
- (int)addExtractionForOutput:(id)output figAssetReader:(OpaqueFigAssetReader *)reader options:(id)options withOutputExtactionID:(int *)d;
- (void)dealloc;
@end

@implementation AVAssetReaderOutputAnnotationAdaptor

+ (id)assetReaderOutputAnnotationAdaptorWithAssetReaderTrackOutput:(id)output
{
  v3 = [[self alloc] initWithAssetReaderTrackOutput:output];

  return v3;
}

- (AVAssetReaderOutputAnnotationAdaptor)initWithAssetReaderTrackOutput:(id)output
{
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (!output)
  {
    selfCopy = self;
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "trackOutput != nil";
LABEL_10:
    v21 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v12, v13, v14, v15, v16, v19);
    v22 = v17;
    v23 = v18;
    goto LABEL_14;
  }

  v8 = v7;
  if (([objc_msgSend(output "mediaType")] & 1) == 0)
  {
    selfCopy2 = self;
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "[[trackOutput mediaType] isEqualToString:AVMediaTypeMetadata]";
    goto LABEL_10;
  }

  if ([output _isAttachedToAdaptor])
  {
    selfCopy3 = self;
    v25 = MEMORY[0x1E695DF30];
    v26 = *MEMORY[0x1E695D940];
    v32 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Cannot initialize an instance of %@ with a track output which was used to initialize another instance of %@", v27, v28, v29, v30, v31, v8);
LABEL_13:
    v21 = v32;
    v22 = v25;
    v23 = v26;
LABEL_14:
    objc_exception_throw([v22 exceptionWithName:v23 reason:v21 userInfo:0]);
  }

  if ([output _status] >= 1)
  {
    selfCopy4 = self;
    v25 = MEMORY[0x1E695DF30];
    v26 = *MEMORY[0x1E695D940];
    v32 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Cannot initialize an instance of %@ with a track output which has already progressed beyond AVAssetReaderStatusUnknown", v34, v35, v36, v37, v38, v8);
    goto LABEL_13;
  }

  v39.receiver = self;
  v39.super_class = AVAssetReaderOutputAnnotationAdaptor;
  v9 = [(AVAssetReaderOutputAnnotationAdaptor *)&v39 init];
  if (v9)
  {
    v9->_trackOutput = output;
    v9->_assetReaderOutputMetadataAdaptor = [AVAssetReaderOutputMetadataAdaptor assetReaderOutputMetadataAdaptorWithAssetReaderTrackOutput:output];
    [output _setAttachedAdaptor:v9];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetReaderOutputAnnotationAdaptor;
  [(AVAssetReaderOutputAnnotationAdaptor *)&v3 dealloc];
}

- (int)addExtractionForOutput:(id)output figAssetReader:(OpaqueFigAssetReader *)reader options:(id)options withOutputExtactionID:(int *)d
{
  v9 = [objc_msgSend(output "track")];
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v10)
  {
    return -12782;
  }

  return v10(reader, v9, options, d);
}

- (id)nextAnnotation
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  nextTimedMetadataGroup = [(AVAssetReaderOutputMetadataAdaptor *)self->_assetReaderOutputMetadataAdaptor nextTimedMetadataGroup];
  if (nextTimedMetadataGroup)
  {
    v14 = array;
    items = [(AVTimedMetadataGroup *)nextTimedMetadataGroup items];
    array2 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(NSArray *)items countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      v10 = *MEMORY[0x1E6960260];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(items);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if ([objc_msgSend(v12 "identifier")])
          {
            if ([objc_msgSend(v12 "dataType")])
            {
              [v12 value];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [array2 addObject:{+[AVAnnotationRepresentation _createBindingDictionaryFromMetadataItemPayload:error:](AVAnnotationRepresentation, "_createBindingDictionaryFromMetadataItemPayload:error:", objc_msgSend(v12, "value"), 0)}];
              }
            }
          }
        }

        v8 = [(NSArray *)items countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__AVAssetReaderOutputAnnotationAdaptor_nextAnnotation__block_invoke;
    v15[3] = &unk_1E7465000;
    v15[4] = array2;
    array = v14;
    v15[5] = v14;
    [(NSArray *)items enumerateObjectsUsingBlock:v15];
  }

  return [array firstObject];
}

uint64_t __54__AVAssetReaderOutputAnnotationAdaptor_nextAnnotation__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [objc_msgSend(a2 "identifier")];
    if (result)
    {
      [a2 value];
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {
        v13 = [a2 value];
        v5 = [AVAnnotation annotationPropertyListToNonDataBindingsArray:?];
        v14 = [MEMORY[0x1E695DF70] array];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v17;
          do
          {
            v9 = 0;
            do
            {
              if (*v17 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = [*(*(&v16 + 1) + 8 * v9) objectForKey:0x1F0A8AA90];
              v11 = *(a1 + 32);
              v15[0] = MEMORY[0x1E69E9820];
              v15[1] = 3221225472;
              v15[2] = __54__AVAssetReaderOutputAnnotationAdaptor_nextAnnotation__block_invoke_2;
              v15[3] = &unk_1E7461B68;
              v15[4] = v10;
              v12 = [v11 indexOfObjectPassingTest:v15];
              if (v12 != 0x7FFFFFFFFFFFFFFFLL)
              {
                [v14 addObject:{objc_msgSend(*(a1 + 32), "objectAtIndex:", v12)}];
              }

              ++v9;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          }

          while (v7);
        }

        return [*(a1 + 40) addObject:{-[AVAnnotation initWithJSONData:representationBinaryDataBindings:error:]([AVAnnotation alloc], "initWithJSONData:representationBinaryDataBindings:error:", objc_msgSend(MEMORY[0x1E696ACB0], "dataWithJSONObject:options:error:", v13, 0, 0), v14, 0)}];
      }
    }
  }

  return result;
}

uint64_t __54__AVAssetReaderOutputAnnotationAdaptor_nextAnnotation__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isEqual:{objc_msgSend(a2, "objectForKey:", 0x1F0A8AA90)}];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

@end