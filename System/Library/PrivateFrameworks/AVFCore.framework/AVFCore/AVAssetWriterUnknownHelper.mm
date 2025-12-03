@interface AVAssetWriterUnknownHelper
- (AVAssetWriterUnknownHelper)initWithConfigurationState:(id)state;
- (AVAssetWriterUnknownHelper)initWithURL:(id)l fileType:(id)type;
- (BOOL)_canAddInput:(id)input exceptionReason:(id *)reason;
- (BOOL)_canAddInputGroup:(id)group exceptionReason:(id *)reason;
- (void)addInput:(id)input;
- (void)addInputGroup:(id)group;
- (void)setDefaultPropertyValuesToConfigurationState:(id)state outputURL:(id)l fileType:(id)type;
- (void)setDelegate:(id)delegate;
- (void)setDirectoryForTemporaryFiles:(id)files;
- (void)setInitialMovieFragmentInterval:(id *)interval;
- (void)setInitialMovieFragmentSequenceNumber:(int64_t)number;
- (void)setInitialSegmentStartTime:(id *)time;
- (void)setMetadata:(id)metadata;
- (void)setMovieFragmentInterval:(id *)interval;
- (void)setMovieTimeScale:(int)scale;
- (void)setOutputFileTypeProfile:(id)profile;
- (void)setOverallDurationHint:(id *)hint;
- (void)setPreferredOutputSegmentInterval:(id *)interval;
- (void)setPreferredRate:(float)rate;
- (void)setPreferredTransform:(CGAffineTransform *)transform;
- (void)setPreferredVolume:(float)volume;
- (void)setProducesCombinableFragments:(BOOL)fragments;
- (void)setRequiresInProcessOperation:(BOOL)operation;
- (void)setShouldOptimizeForNetworkUse:(BOOL)use;
- (void)setSinglePassFileSize:(int64_t)size;
- (void)setSinglePassMediaDataSize:(int64_t)size;
- (void)setUsesVirtualCaptureCard:(BOOL)card;
- (void)startWriting;
@end

@implementation AVAssetWriterUnknownHelper

- (AVAssetWriterUnknownHelper)initWithConfigurationState:(id)state
{
  v20.receiver = self;
  v20.super_class = AVAssetWriterUnknownHelper;
  v5 = [(AVAssetWriterHelper *)&v20 initWithConfigurationState:?];
  if (![state mediaFileType])
  {
    v7 = v5;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "[configurationState mediaFileType] != nil";
    goto LABEL_10;
  }

  if (![state inputs])
  {
    v16 = v5;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "[configurationState inputs] != nil";
    goto LABEL_10;
  }

  if (![state inputGroups])
  {
    v17 = v5;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "[configurationState inputGroups] != nil";
    goto LABEL_10;
  }

  if (![state metadataItems])
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

- (AVAssetWriterUnknownHelper)initWithURL:(id)l fileType:(id)type
{
  v7 = objc_alloc_init(AVAssetWriterConfigurationState);
  [(AVAssetWriterUnknownHelper *)self setDefaultPropertyValuesToConfigurationState:v7 outputURL:l fileType:type];

  return [(AVAssetWriterUnknownHelper *)self initWithConfigurationState:v7];
}

- (void)setDefaultPropertyValuesToConfigurationState:(id)state outputURL:(id)l fileType:(id)type
{
  [state setURL:l];
  [state setMediaFileType:type];
  [state setInputs:{objc_msgSend(MEMORY[0x1E695DEC8], "array")}];
  [state setInputGroups:{objc_msgSend(MEMORY[0x1E695DEC8], "array")}];
  v12 = *MEMORY[0x1E6960C70];
  v11 = v12;
  *&v13 = *(MEMORY[0x1E6960C70] + 16);
  v7 = v13;
  [state setMovieFragmentInterval:&v12];
  v12 = v11;
  *&v13 = v7;
  [state setInitialMovieFragmentInterval:&v12];
  [state setShouldOptimizeForNetworkUse:0];
  [state setMetadataItems:{objc_msgSend(MEMORY[0x1E695DEC8], "array")}];
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  v12 = *MEMORY[0x1E695EFD0];
  v13 = v8;
  v14 = *(MEMORY[0x1E695EFD0] + 32);
  [state setPreferredTransform:&v12];
  LODWORD(v9) = 1.0;
  [state setPreferredVolume:v9];
  LODWORD(v10) = 1.0;
  [state setPreferredRate:v10];
  [state setSinglePassFileSize:0];
  [state setSinglePassMediaDataSize:0];
  v12 = v11;
  *&v13 = v7;
  [state setPreferredOutputSegmentInterval:&v12];
  v12 = v11;
  *&v13 = v7;
  [state setInitialSegmentStartTime:&v12];
  [state setOutputFileTypeProfile:0];
  [state setInitialMovieFragmentSequenceNumber:1];
  [state setProducesCombinableFragments:0];
  [state setUsesVirtualCaptureCard:0];
  [state setRequiresInProcessOperation:0];
}

- (void)setDelegate:(id)delegate
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)configurationState setDelegate:delegate];
}

- (void)setMovieFragmentInterval:(id *)interval
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];
  v5 = *interval;
  [(AVAssetWriterConfigurationState *)configurationState setMovieFragmentInterval:&v5];
}

- (void)setInitialMovieFragmentInterval:(id *)interval
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];
  v5 = *interval;
  [(AVAssetWriterConfigurationState *)configurationState setInitialMovieFragmentInterval:&v5];
}

- (void)setOverallDurationHint:(id *)hint
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];
  v5 = *hint;
  [(AVAssetWriterConfigurationState *)configurationState setOverallDurationHint:&v5];
}

- (void)setShouldOptimizeForNetworkUse:(BOOL)use
{
  useCopy = use;
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)configurationState setShouldOptimizeForNetworkUse:useCopy];
}

- (void)setDirectoryForTemporaryFiles:(id)files
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)configurationState setDirectoryForTemporaryFiles:files];
}

- (void)setMetadata:(id)metadata
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)configurationState setMetadataItems:metadata];
}

- (void)setMovieTimeScale:(int)scale
{
  v3 = *&scale;
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)configurationState setMovieTimeScale:v3];
}

- (void)setPreferredTransform:(CGAffineTransform *)transform
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];
  v5 = *&transform->c;
  v6[0] = *&transform->a;
  v6[1] = v5;
  v6[2] = *&transform->tx;
  [(AVAssetWriterConfigurationState *)configurationState setPreferredTransform:v6];
}

- (void)setPreferredVolume:(float)volume
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];
  *&v5 = volume;

  [(AVAssetWriterConfigurationState *)configurationState setPreferredVolume:v5];
}

- (void)setPreferredRate:(float)rate
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];
  *&v5 = rate;

  [(AVAssetWriterConfigurationState *)configurationState setPreferredRate:v5];
}

- (void)setPreferredOutputSegmentInterval:(id *)interval
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];
  v5 = *interval;
  [(AVAssetWriterConfigurationState *)configurationState setPreferredOutputSegmentInterval:&v5];
}

- (void)setInitialSegmentStartTime:(id *)time
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];
  v5 = *time;
  [(AVAssetWriterConfigurationState *)configurationState setInitialSegmentStartTime:&v5];
}

- (void)setOutputFileTypeProfile:(id)profile
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)configurationState setOutputFileTypeProfile:profile];
}

- (void)setInitialMovieFragmentSequenceNumber:(int64_t)number
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)configurationState setInitialMovieFragmentSequenceNumber:number];
}

- (void)setProducesCombinableFragments:(BOOL)fragments
{
  fragmentsCopy = fragments;
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)configurationState setProducesCombinableFragments:fragmentsCopy];
}

- (void)setUsesVirtualCaptureCard:(BOOL)card
{
  cardCopy = card;
  if (![(AVAssetWriterHelper *)self isVirtualCaptureCardSupported])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = objc_opt_class();
    v15 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithClassAndSelector(v9 userInfo:{a2, @"Cannot use the virtual capture card", v10, v11, v12, v13, v14, v16), 0}];
    objc_exception_throw(v15);
  }

  configurationState = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)configurationState setUsesVirtualCaptureCard:cardCopy];
}

- (void)setRequiresInProcessOperation:(BOOL)operation
{
  operationCopy = operation;
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)configurationState setRequiresInProcessOperation:operationCopy];
}

- (void)setSinglePassFileSize:(int64_t)size
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)configurationState setSinglePassFileSize:size];
}

- (void)setSinglePassMediaDataSize:(int64_t)size
{
  configurationState = [(AVAssetWriterHelper *)self configurationState];

  [(AVAssetWriterConfigurationState *)configurationState setSinglePassMediaDataSize:size];
}

- (BOOL)_canAddInput:(id)input exceptionReason:(id *)reason
{
  v9 = 0;
  v7 = -[AVAssetWriterHelper _canApplyOutputSettings:forMediaType:sourceFormat:exceptionReason:](self, "_canApplyOutputSettings:forMediaType:sourceFormat:exceptionReason:", [input _outputSettingsObject], objc_msgSend(input, "mediaType"), objc_msgSend(input, "sourceFormatHint"), &v9);
  if (v7)
  {
    LOBYTE(v7) = -[AVAssetWriterHelper _canApplyTrackReferences:exceptionReason:](self, "_canApplyTrackReferences:exceptionReason:", [input _trackReferences], &v9);
  }

  if (reason)
  {
    *reason = v9;
  }

  return v7;
}

- (void)addInput:(id)input
{
  v18 = 0;
  if (![(AVAssetWriterUnknownHelper *)self _canAddInput:input exceptionReason:&v18])
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = objc_opt_class();
    v16 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithClassAndSelector(v10 userInfo:{a2, v18, v11, v12, v13, v14, v15, v17), 0}];
    objc_exception_throw(v16);
  }

  configurationState = [(AVAssetWriterHelper *)self configurationState];
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:{-[AVAssetWriterConfigurationState inputs](configurationState, "inputs")}];
  [v7 addObject:input];
  [(AVAssetWriterConfigurationState *)configurationState setInputs:v7];
  [input _setWeakReferenceToAssetWriter:{-[AVAssetWriterHelper weakReferenceToAssetWriter](self, "weakReferenceToAssetWriter")}];
}

- (BOOL)_canAddInputGroup:(id)group exceptionReason:(id *)reason
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = [(AVMediaFileType *)[(AVAssetWriterHelper *)self mediaFileType] UTI];
  if (![(NSString *)v7 isEqualToString:@"com.apple.quicktime-movie"]&& ![(NSString *)v7 isEqualToString:@"com.apple.quicktime-audio"]&& ![(NSString *)v7 isEqualToString:@"com.apple.m4a-audio"]&& ![(NSString *)v7 isEqualToString:@"com.apple.m4v-video"]&& ![(NSString *)v7 isEqualToString:@"public.3gpp"]&& ![(NSString *)v7 isEqualToString:@"public.mpeg-4"])
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The output file type %@ does not support mutually exclusive relationships among tracks.", v7];
LABEL_24:
    v16 = 0;
    if (reason)
    {
      goto LABEL_19;
    }

    return v16;
  }

  v8 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(group, "inputs")}];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(group, "provisionalInputs")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  inputGroups = [(AVAssetWriterHelper *)self inputGroups];
  v11 = [(NSArray *)inputGroups countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        objc_enumerationMutation(inputGroups);
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

    v12 = [(NSArray *)inputGroups countByEnumeratingWithState:&v21 objects:v25 count:16];
    v11 = 0;
    v16 = 1;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_18:
  if (reason)
  {
LABEL_19:
    *reason = v11;
  }

  return v16;
}

- (void)addInputGroup:(id)group
{
  v40 = *MEMORY[0x1E69E9840];
  v37 = 0;
  if (![(AVAssetWriterUnknownHelper *)self _canAddInputGroup:group exceptionReason:&v37])
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
  inputs = [group inputs];
  v7 = [inputs countByEnumeratingWithState:&v33 objects:v39 count:16];
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
          objc_enumerationMutation(inputs);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        [v11 setMarksOutputTrackAsEnabled:{v11 == objc_msgSend(group, "defaultInput")}];
        [v11 _setAlternateGroupID:self->_alternateGroupID];
      }

      v8 = [inputs countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  provisionalInputs = [group provisionalInputs];
  v13 = [provisionalInputs countByEnumeratingWithState:&v29 objects:v38 count:16];
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
          objc_enumerationMutation(provisionalInputs);
        }

        v17 = *(*(&v29 + 1) + 8 * j);
        [v17 setMarksOutputTrackAsEnabled:0];
        [v17 _setProvisionalAlternateGroupID:self->_alternateGroupID];
      }

      v14 = [provisionalInputs countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v14);
  }

  configurationState = [(AVAssetWriterHelper *)self configurationState];
  v19 = [MEMORY[0x1E695DF70] arrayWithArray:{-[AVAssetWriterConfigurationState inputGroups](configurationState, "inputGroups")}];
  [v19 addObject:group];
  [(AVAssetWriterConfigurationState *)configurationState setInputGroups:v19];
}

- (void)startWriting
{
  v6 = 0;
  referencedObject = [(AVWeakReference *)[(AVAssetWriterHelper *)self weakReferenceToAssetWriter] referencedObject];
  if ((![(AVAssetWriterHelper *)self directoryForTemporaryFiles]|| AVCanWriteFilesToDirectoryAtURL([(AVAssetWriterHelper *)self directoryForTemporaryFiles], &v6)) && (v4 = [[AVAssetWriterWritingHelper alloc] initWithConfigurationState:[(AVAssetWriterHelper *)self configurationState] assetWriter:referencedObject error:&v6]) != 0)
  {
    v5 = v4;
    [referencedObject _setHelper:v4 ifCurrentHelper:self];
  }

  else
  {
    [(AVAssetWriterHelper *)self transitionToFailedStatusWithError:v6];
    v5 = 0;
  }
}

@end