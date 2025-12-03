@interface AVAssetWriterInputHelper
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)preferredMediaChunkDuration;
- (AVAssetWriterInputHelper)initWithConfigurationState:(id)state;
- (AVOutputSettings)outputSettings;
- (BOOL)appendPixelBuffer:(__CVBuffer *)buffer withPresentationTime:(id *)time;
- (BOOL)appendTaggedPixelBufferGroup:(OpaqueCMTaggedBufferGroup *)group withPresentationTime:(id *)time;
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
- (id)associatedInputsWithTrackAssociationType:(id)type;
- (id)availableTrackAssociationTypes;
- (id)description;
- (id)transitionToAndReturnTerminalHelperWithTerminalStatus:(int64_t)status;
- (int)mediaTimeScale;
- (int)trackID;
- (int64_t)appendCaption:(id)caption error:(id *)error;
- (int64_t)appendCaptionGroup:(id)group error:(id *)error;
- (int64_t)appendSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error;
- (int64_t)layer;
- (int64_t)preferredMediaChunkAlignment;
- (int64_t)preferredMediaChunkSize;
- (int64_t)status;
- (opaqueCMFormatDescription)sourceFormatHint;
- (signed)alternateGroupID;
- (signed)provisionalAlternateGroupID;
- (void)addTrackAssociationWithTrackOfInput:(id)input type:(id)type;
- (void)dealloc;
- (void)markAsFinished;
- (void)markCurrentPassAsFinished;
- (void)requestMediaDataWhenReadyOnQueue:(id)queue usingBlock:(id)block;
- (void)setAlternateGroupID:(signed __int16)d;
- (void)setExpectsMediaDataInRealTime:(BOOL)time;
- (void)setExtendedLanguageTag:(id)tag;
- (void)setLanguageCode:(id)code;
- (void)setLayer:(int64_t)layer;
- (void)setMarksOutputTrackAsEnabled:(BOOL)enabled;
- (void)setMaximizePowerEfficiency:(BOOL)efficiency;
- (void)setMediaDataLocation:(id)location;
- (void)setMediaTimeScale:(int)scale;
- (void)setMetadata:(id)metadata;
- (void)setNaturalSize:(CGSize)size;
- (void)setPerformsMultiPassEncodingIfSupported:(BOOL)supported;
- (void)setPreferredMediaChunkAlignment:(int64_t)alignment;
- (void)setPreferredMediaChunkDuration:(id *)duration;
- (void)setPreferredMediaChunkSize:(int64_t)size;
- (void)setPreferredVolume:(float)volume;
- (void)setProvisionalAlternateGroupID:(signed __int16)d;
- (void)setSampleReferenceBaseURL:(id)l;
- (void)setSourcePixelBufferAttributes:(id)attributes;
- (void)setTransform:(CGAffineTransform *)transform;
- (void)stopRequestingMediaData;
- (void)transitionAssetWriterAndAllInputsToFailedStatusWithError:(id)error;
@end

@implementation AVAssetWriterInputHelper

- (AVAssetWriterInputHelper)initWithConfigurationState:(id)state
{
  v15.receiver = self;
  v15.super_class = AVAssetWriterInputHelper;
  v5 = [(AVAssetWriterInputHelper *)&v15 init];
  v6 = objc_opt_class();
  AVRequireConcreteObject(v5, a2, v6);
  if (!state)
  {
    v8 = v5;
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"invalid parameter not satisfying: %s", v9, v10, v11, v12, v13, "configurationState != nil"), 0}];
    objc_exception_throw(v14);
  }

  if (v5)
  {
    v5->_configurationState = state;
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

- (id)transitionToAndReturnTerminalHelperWithTerminalStatus:(int64_t)status
{
  referencedObject = [(AVWeakReference *)[(AVAssetWriterInputHelper *)self weakReferenceToAssetWriterInput] referencedObject];
  v6 = [[AVAssetWriterInputTerminalHelper alloc] initWithConfigurationState:[(AVAssetWriterInputHelper *)self configurationState] terminalStatus:status];
  [referencedObject _setHelper:v6];

  return v6;
}

- (void)transitionAssetWriterAndAllInputsToFailedStatusWithError:(id)error
{
  referencedObject = [(AVWeakReference *)[(AVAssetWriterInputHelper *)self weakReferenceToAssetWriterInput] referencedObject];

  [referencedObject _tellAssetWriterToTransitionToFailedStatusWithError:error];
}

- (int)trackID
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState trackID];
}

- (NSString)mediaType
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState mediaType];
}

- (AVOutputSettings)outputSettings
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState outputSettings];
}

- (opaqueCMFormatDescription)sourceFormatHint
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState sourceFormatHint];
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

- (void)setTransform:(CGAffineTransform *)transform
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (NSArray)metadata
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState metadataItems];
}

- (void)setMetadata:(id)metadata
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (int)mediaTimeScale
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState mediaTimeScale];
}

- (void)setMediaTimeScale:(int)scale
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (BOOL)expectsMediaDataInRealTime
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState expectsMediaDataInRealTime];
}

- (void)setExpectsMediaDataInRealTime:(BOOL)time
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (BOOL)maximizePowerEfficiency
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState maximizePowerEfficiency];
}

- (void)setMaximizePowerEfficiency:(BOOL)efficiency
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (CGSize)naturalSize
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState naturalSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setNaturalSize:(CGSize)size
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (NSString)languageCode
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState languageCode];
}

- (void)setLanguageCode:(id)code
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (NSString)extendedLanguageTag
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState extendedLanguageTag];
}

- (void)setExtendedLanguageTag:(id)tag
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (BOOL)marksOutputTrackAsEnabled
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState marksOutputTrackAsEnabled];
}

- (void)setMarksOutputTrackAsEnabled:(BOOL)enabled
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (float)preferredVolume
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState preferredVolume];
  return result;
}

- (void)setPreferredVolume:(float)volume
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (int64_t)layer
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState layer];
}

- (void)setLayer:(int64_t)layer
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (signed)alternateGroupID
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState alternateGroupID];
}

- (void)setAlternateGroupID:(signed __int16)d
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (signed)provisionalAlternateGroupID
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState provisionalAlternateGroupID];
}

- (void)setProvisionalAlternateGroupID:(signed __int16)d
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (NSDictionary)trackReferences
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState trackReferences];
}

- (BOOL)performsMultiPassEncodingIfSupported
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState performsMultiPassEncodingIfSupported];
}

- (void)setPerformsMultiPassEncodingIfSupported:(BOOL)supported
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
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

- (void)setPreferredMediaChunkDuration:(id *)duration
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (int64_t)preferredMediaChunkAlignment
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState preferredMediaChunkAlignment];
}

- (void)setPreferredMediaChunkAlignment:(int64_t)alignment
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (int64_t)preferredMediaChunkSize
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState preferredMediaChunkSize];
}

- (void)setPreferredMediaChunkSize:(int64_t)size
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (NSString)mediaDataLocation
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState mediaDataLocation];
}

- (void)setMediaDataLocation:(id)location
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (NSURL)sampleReferenceBaseURL
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState sampleReferenceBaseURL];
}

- (void)setSampleReferenceBaseURL:(id)l
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v14 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector(v7 userInfo:{a2, @"Cannot call method when status is %d", v9, v10, v11, v12, v13, status), 0}];
  objc_exception_throw(v14);
}

- (void)requestMediaDataWhenReadyOnQueue:(id)queue usingBlock:(id)block
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D930];
  v8 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v15 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector(v8 userInfo:{a2, @"Cannot call method when status is %d", v10, v11, v12, v13, v14, status), 0}];
  objc_exception_throw(v15);
}

- (void)stopRequestingMediaData
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v13 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithClassAndSelector(v6 userInfo:{a2, @"Cannot call method when status is %d", v8, v9, v10, v11, v12, status), 0}];
  objc_exception_throw(v13);
}

- (int64_t)appendSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error
{
  if (error)
  {
    *error = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Cannot call method when status is %d", -[AVAssetWriterInputHelper status](self, "status", buffer)), 0}]);
  }

  return 1;
}

- (BOOL)appendPixelBuffer:(__CVBuffer *)buffer withPresentationTime:(id *)time
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D930];
  v8 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v15 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector(v8 userInfo:{a2, @"Cannot call method when status is %d", v10, v11, v12, v13, v14, status), 0}];
  objc_exception_throw(v15);
}

- (BOOL)appendTaggedPixelBufferGroup:(OpaqueCMTaggedBufferGroup *)group withPresentationTime:(id *)time
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D930];
  v8 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v15 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector(v8 userInfo:{a2, @"Cannot call method when status is %d", v10, v11, v12, v13, v14, status), 0}];
  objc_exception_throw(v15);
}

- (int64_t)appendCaption:(id)caption error:(id *)error
{
  if (error)
  {
    *error = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Cannot call method when status is %d", -[AVAssetWriterInputHelper status](self, "status", caption)), 0}]);
  }

  return 1;
}

- (int64_t)appendCaptionGroup:(id)group error:(id *)error
{
  if (error)
  {
    *error = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Cannot call method when status is %d", -[AVAssetWriterInputHelper status](self, "status", group)), 0}]);
  }

  return 1;
}

- (void)markAsFinished
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v13 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithClassAndSelector(v6 userInfo:{a2, @"Cannot call method when status is %d", v8, v9, v10, v11, v12, status), 0}];
  objc_exception_throw(v13);
}

- (void)markCurrentPassAsFinished
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v13 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithClassAndSelector(v6 userInfo:{a2, @"Cannot call method when status is %d", v8, v9, v10, v11, v12, status), 0}];
  objc_exception_throw(v13);
}

- (NSDictionary)sourcePixelBufferAttributes
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  return [(AVAssetWriterInputConfigurationState *)configurationState sourcePixelBufferAttributes];
}

- (void)setSourcePixelBufferAttributes:(id)attributes
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  status = [(AVAssetWriterInputHelper *)self status];
  v13 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot call method when status is %d", v8, v9, v10, v11, v12, status), 0}];
  objc_exception_throw(v13);
}

- (void)addTrackAssociationWithTrackOfInput:(id)input type:(id)type
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D930];
  v8 = objc_opt_class();
  status = [(AVAssetWriterInputHelper *)self status];
  v15 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector(v8 userInfo:{a2, @"Cannot call method when status is %d", v10, v11, v12, v13, v14, status), 0}];
  objc_exception_throw(v15);
}

- (id)availableTrackAssociationTypes
{
  trackReferences = [(AVAssetWriterInputConfigurationState *)[(AVAssetWriterInputHelper *)self configurationState] trackReferences];

  return [(NSDictionary *)trackReferences allKeys];
}

- (id)associatedInputsWithTrackAssociationType:(id)type
{
  trackReferences = [(AVAssetWriterInputConfigurationState *)[(AVAssetWriterInputHelper *)self configurationState] trackReferences];

  return [(NSDictionary *)trackReferences objectForKey:type];
}

@end