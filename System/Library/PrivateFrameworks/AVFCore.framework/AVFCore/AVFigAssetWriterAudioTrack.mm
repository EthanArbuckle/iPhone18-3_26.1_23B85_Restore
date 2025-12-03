@interface AVFigAssetWriterAudioTrack
- (AVFigAssetWriterAudioTrack)initWithFigAssetWriter:(OpaqueFigAssetWriter *)writer mediaType:(id)type mediaFileType:(id)fileType formatSpecification:(id)specification sourcePixelBufferAttributes:(id)attributes multiPass:(BOOL)pass error:(id *)error;
- (BOOL)addSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error;
- (BOOL)markEndOfDataReturningError:(id *)error;
- (int)_attachToFigAssetWriterUsingFormatSpecification:(id)specification sourcePixelBufferAttributes:(id)attributes multiPass:(BOOL)pass error:(id *)error;
- (void)dealloc;
@end

@implementation AVFigAssetWriterAudioTrack

- (AVFigAssetWriterAudioTrack)initWithFigAssetWriter:(OpaqueFigAssetWriter *)writer mediaType:(id)type mediaFileType:(id)fileType formatSpecification:(id)specification sourcePixelBufferAttributes:(id)attributes multiPass:(BOOL)pass error:(id *)error
{
  v11.receiver = self;
  v11.super_class = AVFigAssetWriterAudioTrack;
  v9 = [(AVFigAssetWriterTrack *)&v11 initWithFigAssetWriter:writer mediaType:type mediaFileType:fileType formatSpecification:specification sourcePixelBufferAttributes:attributes multiPass:pass error:error];
  if (v9)
  {
    v9->_pendingAudioSampleBuffers = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVFigAssetWriterAudioTrack;
  [(AVFigAssetWriterTrack *)&v3 dealloc];
}

- (int)_attachToFigAssetWriterUsingFormatSpecification:(id)specification sourcePixelBufferAttributes:(id)attributes multiPass:(BOOL)pass error:(id *)error
{
  passCopy = pass;
  v28 = 0;
  v27 = 0;
  outputSettings = [specification outputSettings];
  sourceFormatDescription = [specification sourceFormatDescription];
  mediaFileType = [(AVFigAssetWriterTrack *)self mediaFileType];
  if (!outputSettings)
  {
    v23.receiver = self;
    v23.super_class = AVFigAssetWriterAudioTrack;
    v27 = [(AVFigAssetWriterTrack *)&v23 _attachToFigAssetWriterUsingFormatSpecification:specification sourcePixelBufferAttributes:attributes multiPass:passCopy error:&v28];
    if (!error)
    {
      return v27;
    }

    goto LABEL_13;
  }

  v14 = mediaFileType;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v24 = 0;
  if (sourceFormatDescription)
  {
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObject:sourceFormatDescription forKey:*MEMORY[0x1E6971510]];
  }

  else
  {
    v15 = 0;
  }

  [outputSettings willYieldCompressedSamples];
  [outputSettings getAudioStreamBasicDescription:v25 forAudioFileTypeID:-[AVMediaFileType audioFileTypeID](v14 sourceFormatDescription:{"audioFileTypeID"), sourceFormatDescription}];
  v16 = [outputSettings copyAudioChannelLayoutForSourceFormatDescription:sourceFormatDescription audioChannelLayoutSize:&v24];
  audioOptions = [outputSettings audioOptions];
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  v19 = v24;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v20)
  {
    v21 = 4294954514;
    goto LABEL_11;
  }

  v21 = v20(figAssetWriter, v25, v19, v16, audioOptions, v15, &v27);
  if (v21)
  {
LABEL_11:
    v28 = [AVAssetWriter _errorForOSStatus:v21];
  }

  free(v16);
  if (error)
  {
LABEL_13:
    *error = v28;
  }

  return v27;
}

- (BOOL)addSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error
{
  v5.receiver = self;
  v5.super_class = AVFigAssetWriterAudioTrack;
  return [(AVFigAssetWriterTrack *)&v5 addSampleBuffer:buffer error:error];
}

- (BOOL)markEndOfDataReturningError:(id *)error
{
  v5.receiver = self;
  v5.super_class = AVFigAssetWriterAudioTrack;
  v6 = 0;
  result = [(AVFigAssetWriterTrack *)&v5 markEndOfDataReturningError:&v6];
  if (error)
  {
    *error = v6;
  }

  return result;
}

@end