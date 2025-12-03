@interface AVAssetReaderSampleReferenceOutput
+ (AVAssetReaderSampleReferenceOutput)assetReaderSampleReferenceOutputWithTrack:(AVAssetTrack *)track;
- (AVAssetReaderSampleReferenceOutput)initWithTrack:(AVAssetTrack *)track;
- (BOOL)_enableTrackExtractionReturningError:(id *)error;
- (BOOL)_trimsSampleDurations;
- (id)_asset;
- (id)description;
- (id)mediaType;
- (void)dealloc;
@end

@implementation AVAssetReaderSampleReferenceOutput

+ (AVAssetReaderSampleReferenceOutput)assetReaderSampleReferenceOutputWithTrack:(AVAssetTrack *)track
{
  v3 = [objc_alloc(objc_opt_class()) initWithTrack:track];

  return v3;
}

- (AVAssetReaderSampleReferenceOutput)initWithTrack:(AVAssetTrack *)track
{
  v16.receiver = self;
  v16.super_class = AVAssetReaderSampleReferenceOutput;
  v5 = [(AVAssetReaderOutput *)&v16 init];
  v6 = v5;
  if (!track)
  {
    v9 = v5;
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v6 userInfo:{a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, "track != nil"), 0}];
    objc_exception_throw(v15);
  }

  if (v5)
  {
    v7 = objc_alloc_init(AVAssetReaderSampleReferenceOutputInternal);
    v6->_sampleReferenceOutputInternal = v7;
    if (v7)
    {
      CFRetain(v7);
      v6->_sampleReferenceOutputInternal->track = track;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  sampleReferenceOutputInternal = self->_sampleReferenceOutputInternal;
  if (sampleReferenceOutputInternal)
  {

    CFRelease(self->_sampleReferenceOutputInternal);
  }

  v4.receiver = self;
  v4.super_class = AVAssetReaderSampleReferenceOutput;
  [(AVAssetReaderOutput *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, track = %@>", NSStringFromClass(v4), self, -[AVAssetReaderSampleReferenceOutput track](self, "track")];
}

- (id)mediaType
{
  track = [(AVAssetReaderSampleReferenceOutput *)self track];

  return [(AVAssetTrack *)track mediaType];
}

- (id)_asset
{
  track = [(AVAssetReaderSampleReferenceOutput *)self track];

  return [(AVAssetTrack *)track asset];
}

- (BOOL)_trimsSampleDurations
{
  mediaType = [(AVAssetReaderSampleReferenceOutput *)self mediaType];

  return [mediaType isEqual:@"soun"];
}

- (BOOL)_enableTrackExtractionReturningError:(id *)error
{
  v12 = -1;
  _figAssetReader = [(AVAssetReaderOutput *)self _figAssetReader];
  trackID = [(AVAssetTrack *)[(AVAssetReaderSampleReferenceOutput *)self track] trackID];
  _figAssetReaderExtractionOptions = [(AVAssetReaderOutput *)self _figAssetReaderExtractionOptions];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v8)
  {
    v9 = 4294954514;
    if (error)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v9 = v8(_figAssetReader, trackID, _figAssetReaderExtractionOptions, &v12);
  if (v9)
  {
    if (error)
    {
LABEL_4:
      v10 = [AVAssetReader _errorForOSStatus:v9];
      result = 0;
      *error = v10;
      return result;
    }

    return 0;
  }

  [(AVAssetReaderOutput *)self _setExtractionID:v12];
  return 1;
}

@end