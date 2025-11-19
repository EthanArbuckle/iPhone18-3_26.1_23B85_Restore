@interface AVAssetWriterUnknownHelper
- (AVAssetWriterUnknownHelper)initWithConfigurationState:(id)a3;
- (AVAssetWriterUnknownHelper)initWithURL:(id)a3 fileType:(id)a4;
- (BOOL)_canAddInput:(id)a3 exceptionReason:(id *)a4;
- (BOOL)_canAddInputGroup:(id)a3 exceptionReason:(id *)a4;
- (void)addInput:(id)a3;
- (void)addInputGroup:(id)a3;
- (void)setDefaultPropertyValuesToConfigurationState:(id)a3 outputURL:(id)a4 fileType:(id)a5;
- (void)setDelegate:(id)a3;
- (void)setDirectoryForTemporaryFiles:(id)a3;
- (void)setInitialMovieFragmentInterval:(id *)a3;
- (void)setInitialMovieFragmentSequenceNumber:(int64_t)a3;
- (void)setInitialSegmentStartTime:(id *)a3;
- (void)setMetadata:(id)a3;
- (void)setMovieFragmentInterval:(id *)a3;
- (void)setMovieTimeScale:(int)a3;
- (void)setOutputFileTypeProfile:(id)a3;
- (void)setOverallDurationHint:(id *)a3;
- (void)setPreferredOutputSegmentInterval:(id *)a3;
- (void)setPreferredRate:(float)a3;
- (void)setPreferredTransform:(CGAffineTransform *)a3;
- (void)setPreferredVolume:(float)a3;
- (void)setProducesCombinableFragments:(BOOL)a3;
- (void)setRequiresInProcessOperation:(BOOL)a3;
- (void)setShouldOptimizeForNetworkUse:(BOOL)a3;
- (void)setSinglePassFileSize:(int64_t)a3;
- (void)setSinglePassMediaDataSize:(int64_t)a3;
- (void)setUsesVirtualCaptureCard:(BOOL)a3;
- (void)startWriting;
@end

@implementation AVAssetWriterUnknownHelper

- (AVAssetWriterUnknownHelper)initWithConfigurationState:(id)a3
{
  v20.receiver = self;
  v20.super_class = AVAssetWriterUnknownHelper;
  v5 = [(AVAssetWriterHelper *)&v20 initWithConfigurationState:?];
  if (![a3 mediaFileType])
  {
    v7 = v5;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "[configurationState mediaFileType] != nil";
    goto LABEL_10;
  }

  if (![a3 inputs])
  {
    v16 = v5;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "[configurationState inputs] != nil";
    goto LABEL_10;
  }

  if (![a3 inputGroups])
  {
    v17 = v5;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "[configurationState inputGroups] != nil";
    goto LABEL_10;
  }

  if (![a3 metadataItems])
  {
    v18 = v5;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "[configurationState metadataItems] != nil";
LABEL_10:
    v19 = [v13 exceptionWithName:v14 reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"invalid parameter not satisfying: %s", v8, v9, v10, v11, v12, v15), 0}];
    objc_exception_throw(v19);
  }

  return v5;
}

- (AVAssetWriterUnknownHelper)initWithURL:(id)a3 fileType:(id)a4
{
  v7 = objc_alloc_init(AVAssetWriterConfigurationState);
  [(AVAssetWriterUnknownHelper *)self setDefaultPropertyValuesToConfigurationState:v7 outputURL:a3 fileType:a4];

  return [(AVAssetWriterUnknownHelper *)self initWithConfigurationState:v7];
}

- (void)setDefaultPropertyValuesToConfigurationState:(id)a3 outputURL:(id)a4 fileType:(id)a5
{
  [a3 setURL:a4];
  [a3 setMediaFileType:a5];
  [a3 setInputs:{objc_msgSend(MEMORY[0x1E695DEC8], "array")}];
  [a3 setInputGroups:{objc_msgSend(MEMORY[0x1E695DEC8], "array")}];
  v12 = *MEMORY[0x1E6960C70];
  v11 = v12;
  *&v13 = *(MEMORY[0x1E6960C70] + 16);
  v7 = v13;
  [a3 setMovieFragmentInterval:&v12];
  v12 = v11;
  *&v13 = v7;
  [a3 setInitialMovieFragmentInterval:&v12];
  [a3 setShouldOptimizeForNetworkUse:0];
  [a3 setMetadataItems:{objc_msgSend(MEMORY[0x1E695DEC8], "array")}];
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  v12 = *MEMORY[0x1E695EFD0];
  v13 = v8;
  v14 = *(MEMORY[0x1E695EFD0] + 32);
  [a3 setPreferredTransform:&v12];
  LODWORD(v9) = 1.0;
  [a3 setPreferredVolume:v9];
  LODWORD(v10) = 1.0;
  [a3 setPreferredRate:v10];
  [a3 setSinglePassFileSize:0];
  [a3 setSinglePassMediaDataSize:0];
  v12 = v11;
  *&v13 = v7;
  [a3 setPreferredOutputSegmentInterval:&v12];
  v12 = v11;
  *&v13 = v7;
  [a3 setInitialSegmentStartTime:&v12];
  [a3 setOutputFileTypeProfile:0];
  [a3 setInitialMovieFragmentSequenceNumber:1];
  [a3 setProducesCombinableFragments:0];
  [a3 setUsesVirtualCaptureCard:0];
  [a3 setRequiresInProcessOperation:0];
}

- (void)setDelegate:(id)a3
{
  v4 = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)v4 setDelegate:a3];
}

- (void)setMovieFragmentInterval:(id *)a3
{
  v4 = [(AVAssetWriterHelper *)self configurationState];
  v5 = *a3;
  [(AVAssetWriterConfigurationState *)v4 setMovieFragmentInterval:&v5];
}

- (void)setInitialMovieFragmentInterval:(id *)a3
{
  v4 = [(AVAssetWriterHelper *)self configurationState];
  v5 = *a3;
  [(AVAssetWriterConfigurationState *)v4 setInitialMovieFragmentInterval:&v5];
}

- (void)setOverallDurationHint:(id *)a3
{
  v4 = [(AVAssetWriterHelper *)self configurationState];
  v5 = *a3;
  [(AVAssetWriterConfigurationState *)v4 setOverallDurationHint:&v5];
}

- (void)setShouldOptimizeForNetworkUse:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)v4 setShouldOptimizeForNetworkUse:v3];
}

- (void)setDirectoryForTemporaryFiles:(id)a3
{
  v4 = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)v4 setDirectoryForTemporaryFiles:a3];
}

- (void)setMetadata:(id)a3
{
  v4 = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)v4 setMetadataItems:a3];
}

- (void)setMovieTimeScale:(int)a3
{
  v3 = *&a3;
  v4 = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)v4 setMovieTimeScale:v3];
}

- (void)setPreferredTransform:(CGAffineTransform *)a3
{
  v4 = [(AVAssetWriterHelper *)self configurationState];
  v5 = *&a3->c;
  v6[0] = *&a3->a;
  v6[1] = v5;
  v6[2] = *&a3->tx;
  [(AVAssetWriterConfigurationState *)v4 setPreferredTransform:v6];
}

- (void)setPreferredVolume:(float)a3
{
  v4 = [(AVAssetWriterHelper *)self configurationState];
  *&v5 = a3;

  [(AVAssetWriterConfigurationState *)v4 setPreferredVolume:v5];
}

- (void)setPreferredRate:(float)a3
{
  v4 = [(AVAssetWriterHelper *)self configurationState];
  *&v5 = a3;

  [(AVAssetWriterConfigurationState *)v4 setPreferredRate:v5];
}

- (void)setPreferredOutputSegmentInterval:(id *)a3
{
  v4 = [(AVAssetWriterHelper *)self configurationState];
  v5 = *a3;
  [(AVAssetWriterConfigurationState *)v4 setPreferredOutputSegmentInterval:&v5];
}

- (void)setInitialSegmentStartTime:(id *)a3
{
  v4 = [(AVAssetWriterHelper *)self configurationState];
  v5 = *a3;
  [(AVAssetWriterConfigurationState *)v4 setInitialSegmentStartTime:&v5];
}

- (void)setOutputFileTypeProfile:(id)a3
{
  v4 = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)v4 setOutputFileTypeProfile:a3];
}

- (void)setInitialMovieFragmentSequenceNumber:(int64_t)a3
{
  v4 = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)v4 setInitialMovieFragmentSequenceNumber:a3];
}

- (void)setProducesCombinableFragments:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)v4 setProducesCombinableFragments:v3];
}

- (void)setUsesVirtualCaptureCard:(BOOL)a3
{
  v3 = a3;
  if (![(AVAssetWriterHelper *)self isVirtualCaptureCardSupported])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = objc_opt_class();
    v15 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithClassAndSelector(v9 userInfo:{a2, @"Cannot use the virtual capture card", v10, v11, v12, v13, v14, v16), 0}];
    objc_exception_throw(v15);
  }

  v6 = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)v6 setUsesVirtualCaptureCard:v3];
}

- (void)setRequiresInProcessOperation:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)v4 setRequiresInProcessOperation:v3];
}

- (void)setSinglePassFileSize:(int64_t)a3
{
  v4 = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)v4 setSinglePassFileSize:a3];
}

- (void)setSinglePassMediaDataSize:(int64_t)a3
{
  v4 = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)v4 setSinglePassMediaDataSize:a3];
}

- (BOOL)_canAddInput:(id)a3 exceptionReason:(id *)a4
{
  v9 = 0;
  v7 = -[AVAssetWriterHelper _canApplyOutputSettings:forMediaType:sourceFormat:exceptionReason:](self, "_canApplyOutputSettings:forMediaType:sourceFormat:exceptionReason:", [a3 _outputSettingsObject], objc_msgSend(a3, "mediaType"), objc_msgSend(a3, "sourceFormatHint"), &v9);
  if (v7)
  {
    LOBYTE(v7) = -[AVAssetWriterHelper _canApplyTrackReferences:exceptionReason:](self, "_canApplyTrackReferences:exceptionReason:", [a3 _trackReferences], &v9);
  }

  if (a4)
  {
    *a4 = v9;
  }

  return v7;
}

- (void)addInput:(id)a3
{
  v18 = 0;
  if (![(AVAssetWriterUnknownHelper *)self _canAddInput:a3 exceptionReason:&v18])
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = objc_opt_class();
    v16 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithClassAndSelector(v10 userInfo:{a2, v18, v11, v12, v13, v14, v15, v17), 0}];
    objc_exception_throw(v16);
  }

  v6 = [(AVAssetWriterHelper *)self configurationState];
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:{-[AVAssetWriterConfigurationState inputs](v6, "inputs")}];
  [v7 addObject:a3];
  [(AVAssetWriterConfigurationState *)v6 setInputs:v7];
  [a3 _setWeakReferenceToAssetWriter:{-[AVAssetWriterHelper weakReferenceToAssetWriter](self, "weakReferenceToAssetWriter")}];
}

- (BOOL)_canAddInputGroup:(id)a3 exceptionReason:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = [(AVMediaFileType *)[(AVAssetWriterHelper *)self mediaFileType] UTI];
  if (![(NSString *)v7 isEqualToString:@"com.apple.quicktime-movie"]&& ![(NSString *)v7 isEqualToString:@"com.apple.quicktime-audio"]&& ![(NSString *)v7 isEqualToString:@"com.apple.m4a-audio"]&& ![(NSString *)v7 isEqualToString:@"com.apple.m4v-video"]&& ![(NSString *)v7 isEqualToString:@"public.3gpp"]&& ![(NSString *)v7 isEqualToString:@"public.mpeg-4"])
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The output file type %@ does not support mutually exclusive relationships among tracks.", v7];
LABEL_24:
    v16 = 0;
    if (a4)
    {
      goto LABEL_19;
    }

    return v16;
  }

  v8 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(a3, "inputs")}];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(a3, "provisionalInputs")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [(AVAssetWriterHelper *)self inputGroups];
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v11)
  {
    v16 = 1;
    goto LABEL_18;
  }

  v12 = v11;
  v13 = *v22;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v21 + 1) + 8 * i);
      if ([objc_msgSend(MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(v15, "inputs")), "intersectsSet:", v8}])
      {
        v18 = MEMORY[0x1E696AEC0];
        v19 = @"At least one AVAssetWriterInput in the given inputGroup is also present in an inputGroup already added.";
LABEL_23:
        v11 = [v18 stringWithFormat:v19, v20];
        goto LABEL_24;
      }

      if ([objc_msgSend(MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(v15, "provisionalInputs")), "intersectsSet:", v9}])
      {
        v18 = MEMORY[0x1E696AEC0];
        v19 = @"At least one provisional AVAssetWriterInput in the given inputGroup is also present as a provisional input in an inputGroup already added.";
        goto LABEL_23;
      }
    }

    v12 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v11 = 0;
    v16 = 1;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_18:
  if (a4)
  {
LABEL_19:
    *a4 = v11;
  }

  return v16;
}

- (void)addInputGroup:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v37 = 0;
  if (![(AVAssetWriterUnknownHelper *)self _canAddInputGroup:a3 exceptionReason:&v37])
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = objc_opt_class();
    v28 = [v20 exceptionWithName:v21 reason:AVMethodExceptionReasonWithClassAndSelector(v22 userInfo:{a2, v37, v23, v24, v25, v26, v27, v29), 0}];
    objc_exception_throw(v28);
  }

  ++self->_alternateGroupID;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = [a3 inputs];
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        [v11 setMarksOutputTrackAsEnabled:{v11 == objc_msgSend(a3, "defaultInput")}];
        [v11 _setAlternateGroupID:self->_alternateGroupID];
      }

      v8 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = [a3 provisionalInputs];
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * j);
        [v17 setMarksOutputTrackAsEnabled:0];
        [v17 _setProvisionalAlternateGroupID:self->_alternateGroupID];
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v14);
  }

  v18 = [(AVAssetWriterHelper *)self configurationState];
  v19 = [MEMORY[0x1E695DF70] arrayWithArray:{-[AVAssetWriterConfigurationState inputGroups](v18, "inputGroups")}];
  [v19 addObject:a3];
  [(AVAssetWriterConfigurationState *)v18 setInputGroups:v19];
}

- (void)startWriting
{
  v6 = 0;
  v3 = [(AVWeakReference *)[(AVAssetWriterHelper *)self weakReferenceToAssetWriter] referencedObject];
  if ((![(AVAssetWriterHelper *)self directoryForTemporaryFiles]|| AVCanWriteFilesToDirectoryAtURL([(AVAssetWriterHelper *)self directoryForTemporaryFiles], &v6)) && (v4 = [[AVAssetWriterWritingHelper alloc] initWithConfigurationState:[(AVAssetWriterHelper *)self configurationState] assetWriter:v3 error:&v6]) != 0)
  {
    v5 = v4;
    [v3 _setHelper:v4 ifCurrentHelper:self];
  }

  else
  {
    [(AVAssetWriterHelper *)self transitionToFailedStatusWithError:v6];
    v5 = 0;
  }
}

@end