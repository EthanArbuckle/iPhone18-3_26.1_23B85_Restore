@interface AVAssetWriterInputHelper
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)preferredMediaChunkDuration;
- (AVAssetWriterInputHelper)initWithConfigurationState:(id)a3;
- (AVOutputSettings)outputSettings;
- (BOOL)appendPixelBuffer:(__CVBuffer *)a3 withPresentationTime:(id *)a4;
- (BOOL)appendTaggedPixelBufferGroup:(OpaqueCMTaggedBufferGroup *)a3 withPresentationTime:(id *)a4;
- (BOOL)expectsMediaDataInRealTime;
- (BOOL)marksOutputTrackAsEnabled;
- (BOOL)maximizePowerEfficiency;
- (BOOL)performsMultiPassEncodingIfSupported;
- (CGAffineTransform)transform;
- (CGSize)naturalSize;
- (NSArray)metadata;
- (NSDictionary)sourcePixelBufferAttributes;
- (NSDictionary)trackReferences;
- (NSString)extendedLanguageTag;
- (NSString)languageCode;
- (NSString)mediaDataLocation;
- (NSString)mediaType;
- (NSURL)sampleReferenceBaseURL;
- (float)preferredVolume;
- (id)associatedInputsWithTrackAssociationType:(id)a3;
- (id)availableTrackAssociationTypes;
- (id)description;
- (id)transitionToAndReturnTerminalHelperWithTerminalStatus:(int64_t)a3;
- (int)mediaTimeScale;
- (int)trackID;
- (int64_t)appendCaption:(id)a3 error:(id *)a4;
- (int64_t)appendCaptionGroup:(id)a3 error:(id *)a4;
- (int64_t)appendSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
- (int64_t)layer;
- (int64_t)preferredMediaChunkAlignment;
- (int64_t)preferredMediaChunkSize;
- (int64_t)status;
- (opaqueCMFormatDescription)sourceFormatHint;
- (signed)alternateGroupID;
- (signed)provisionalAlternateGroupID;
- (void)addTrackAssociationWithTrackOfInput:(id)a3 type:(id)a4;
- (void)dealloc;
- (void)markAsFinished;
- (void)markCurrentPassAsFinished;
- (void)requestMediaDataWhenReadyOnQueue:(id)a3 usingBlock:(id)a4;
- (void)setAlternateGroupID:(signed __int16)a3;
- (void)setExpectsMediaDataInRealTime:(BOOL)a3;
- (void)setExtendedLanguageTag:(id)a3;
- (void)setLanguageCode:(id)a3;
- (void)setLayer:(int64_t)a3;
- (void)setMarksOutputTrackAsEnabled:(BOOL)a3;
- (void)setMaximizePowerEfficiency:(BOOL)a3;
- (void)setMediaDataLocation:(id)a3;
- (void)setMediaTimeScale:(int)a3;
- (void)setMetadata:(id)a3;
- (void)setNaturalSize:(CGSize)a3;
- (void)setPerformsMultiPassEncodingIfSupported:(BOOL)a3;
- (void)setPreferredMediaChunkAlignment:(int64_t)a3;
- (void)setPreferredMediaChunkDuration:(id *)a3;
- (void)setPreferredMediaChunkSize:(int64_t)a3;
- (void)setPreferredVolume:(float)a3;
- (void)setProvisionalAlternateGroupID:(signed __int16)a3;
- (void)setSampleReferenceBaseURL:(id)a3;
- (void)setSourcePixelBufferAttributes:(id)a3;
- (void)setTransform:(CGAffineTransform *)a3;
- (void)stopRequestingMediaData;
- (void)transitionAssetWriterAndAllInputsToFailedStatusWithError:(id)a3;
@end

@implementation AVAssetWriterInputHelper

- (AVAssetWriterInputHelper)initWithConfigurationState:(id)a3
{
  v15.receiver = self;
  v15.super_class = AVAssetWriterInputHelper;
  v5 = [(AVAssetWriterInputHelper *)&v15 init];
  v6 = objc_opt_class();
  AVRequireConcreteObject(v5, a2, v6);
  if (!a3)
  {
    v8 = v5;
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"invalid parameter not satisfying: %s", v9, v10, v11, v12, v13, "configurationState != nil"), 0}];
    objc_exception_throw(v14);
  }

  if (v5)
  {
    v5->_configurationState = a3;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetWriterInputHelper;
  [(AVAssetWriterInputHelper *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, status=%d>", NSStringFromClass(v4), self, -[AVAssetWriterInputHelper status](self, "status")];
}

- (int64_t)status
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (id)transitionToAndReturnTerminalHelperWithTerminalStatus:(int64_t)a3
{
  v5 = [(AVWeakReference *)[(AVAssetWriterInputHelper *)self weakReferenceToAssetWriterInput] referencedObject];
  v6 = [[AVAssetWriterInputTerminalHelper alloc] initWithConfigurationState:[(AVAssetWriterInputHelper *)self configurationState] terminalStatus:a3];
  [v5 _setHelper:v6];

  return v6;
}

- (void)transitionAssetWriterAndAllInputsToFailedStatusWithError:(id)a3
{
  v4 = [(AVWeakReference *)[(AVAssetWriterInputHelper *)self weakReferenceToAssetWriterInput] referencedObject];

  [v4 _tellAssetWriterToTransitionToFailedStatusWithError:a3];
}

- (int)trackID
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 trackID];
}

- (NSString)mediaType
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 mediaType];
}

- (AVOutputSettings)outputSettings
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 outputSettings];
}

- (opaqueCMFormatDescription)sourceFormatHint
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 sourceFormatHint];
}

- (CGAffineTransform)transform
{
  result = [(AVAssetWriterInputHelper *)self configurationState];
  if (result)
  {

    return [(CGAffineTransform *)result transform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (NSArray)metadata
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 metadataItems];
}

- (void)setMetadata:(id)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (int)mediaTimeScale
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 mediaTimeScale];
}

- (void)setMediaTimeScale:(int)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (BOOL)expectsMediaDataInRealTime
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 expectsMediaDataInRealTime];
}

- (void)setExpectsMediaDataInRealTime:(BOOL)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (BOOL)maximizePowerEfficiency
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 maximizePowerEfficiency];
}

- (void)setMaximizePowerEfficiency:(BOOL)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (CGSize)naturalSize
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v2 naturalSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setNaturalSize:(CGSize)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (NSString)languageCode
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 languageCode];
}

- (void)setLanguageCode:(id)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (NSString)extendedLanguageTag
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 extendedLanguageTag];
}

- (void)setExtendedLanguageTag:(id)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (BOOL)marksOutputTrackAsEnabled
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 marksOutputTrackAsEnabled];
}

- (void)setMarksOutputTrackAsEnabled:(BOOL)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (float)preferredVolume
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)v2 preferredVolume];
  return result;
}

- (void)setPreferredVolume:(float)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (int64_t)layer
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 layer];
}

- (void)setLayer:(int64_t)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (signed)alternateGroupID
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 alternateGroupID];
}

- (void)setAlternateGroupID:(signed __int16)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (signed)provisionalAlternateGroupID
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 provisionalAlternateGroupID];
}

- (void)setProvisionalAlternateGroupID:(signed __int16)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (NSDictionary)trackReferences
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 trackReferences];
}

- (BOOL)performsMultiPassEncodingIfSupported
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 performsMultiPassEncodingIfSupported];
}

- (void)setPerformsMultiPassEncodingIfSupported:(BOOL)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)preferredMediaChunkDuration
{
  result = [(AVAssetWriterInputHelper *)self configurationState];
  if (result)
  {

    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result preferredMediaChunkDuration];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)setPreferredMediaChunkDuration:(id *)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (int64_t)preferredMediaChunkAlignment
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 preferredMediaChunkAlignment];
}

- (void)setPreferredMediaChunkAlignment:(int64_t)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (int64_t)preferredMediaChunkSize
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 preferredMediaChunkSize];
}

- (void)setPreferredMediaChunkSize:(int64_t)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (NSString)mediaDataLocation
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 mediaDataLocation];
}

- (void)setMediaDataLocation:(id)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (NSURL)sampleReferenceBaseURL
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 sampleReferenceBaseURL];
}

- (void)setSampleReferenceBaseURL:(id)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, v8), 0}];
  objc_exception_throw(v14);
}

- (void)requestMediaDataWhenReadyOnQueue:(id)a3 usingBlock:(id)a4
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D930];
  v8 = objc_opt_class();
  v9 = [(AVAssetWriterInputHelper *)self status];
  v15 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector(v8 userInfo:{a2, @"Cannot call method when status is %d", v10, v11, v12, v13, v14, v9), 0}];
  objc_exception_throw(v15);
}

- (void)stopRequestingMediaData
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  v7 = [(AVAssetWriterInputHelper *)self status];
  v13 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithClassAndSelector(v6 userInfo:{a2, @"Cannot call method when status is %d", v8, v9, v10, v11, v12, v7), 0}];
  objc_exception_throw(v13);
}

- (int64_t)appendSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Cannot call method when status is %d", -[AVAssetWriterInputHelper status](self, "status", a3)), 0}]);
  }

  return 1;
}

- (BOOL)appendPixelBuffer:(__CVBuffer *)a3 withPresentationTime:(id *)a4
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D930];
  v8 = objc_opt_class();
  v9 = [(AVAssetWriterInputHelper *)self status];
  v15 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector(v8 userInfo:{a2, @"Cannot call method when status is %d", v10, v11, v12, v13, v14, v9), 0}];
  objc_exception_throw(v15);
}

- (BOOL)appendTaggedPixelBufferGroup:(OpaqueCMTaggedBufferGroup *)a3 withPresentationTime:(id *)a4
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D930];
  v8 = objc_opt_class();
  v9 = [(AVAssetWriterInputHelper *)self status];
  v15 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector(v8 userInfo:{a2, @"Cannot call method when status is %d", v10, v11, v12, v13, v14, v9), 0}];
  objc_exception_throw(v15);
}

- (int64_t)appendCaption:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Cannot call method when status is %d", -[AVAssetWriterInputHelper status](self, "status", a3)), 0}]);
  }

  return 1;
}

- (int64_t)appendCaptionGroup:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Cannot call method when status is %d", -[AVAssetWriterInputHelper status](self, "status", a3)), 0}]);
  }

  return 1;
}

- (void)markAsFinished
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  v7 = [(AVAssetWriterInputHelper *)self status];
  v13 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithClassAndSelector(v6 userInfo:{a2, @"Cannot call method when status is %d", v8, v9, v10, v11, v12, v7), 0}];
  objc_exception_throw(v13);
}

- (void)markCurrentPassAsFinished
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  v7 = [(AVAssetWriterInputHelper *)self status];
  v13 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithClassAndSelector(v6 userInfo:{a2, @"Cannot call method when status is %d", v8, v9, v10, v11, v12, v7), 0}];
  objc_exception_throw(v13);
}

- (NSDictionary)sourcePixelBufferAttributes
{
  v2 = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)v2 sourcePixelBufferAttributes];
}

- (void)setSourcePixelBufferAttributes:(id)a3
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [(AVAssetWriterInputHelper *)self status];
  v13 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot call method when status is %d", v8, v9, v10, v11, v12, v7), 0}];
  objc_exception_throw(v13);
}

- (void)addTrackAssociationWithTrackOfInput:(id)a3 type:(id)a4
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D930];
  v8 = objc_opt_class();
  v9 = [(AVAssetWriterInputHelper *)self status];
  v15 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector(v8 userInfo:{a2, @"Cannot call method when status is %d", v10, v11, v12, v13, v14, v9), 0}];
  objc_exception_throw(v15);
}

- (id)availableTrackAssociationTypes
{
  v2 = [(AVAssetWriterInputConfigurationState *)[(AVAssetWriterInputHelper *)self configurationState] trackReferences];

  return [(NSDictionary *)v2 allKeys];
}

- (id)associatedInputsWithTrackAssociationType:(id)a3
{
  v4 = [(AVAssetWriterInputConfigurationState *)[(AVAssetWriterInputHelper *)self configurationState] trackReferences];

  return [(NSDictionary *)v4 objectForKey:a3];
}

@end