@interface AVFigAssetWriterAudioTrack
- (AVFigAssetWriterAudioTrack)initWithFigAssetWriter:(OpaqueFigAssetWriter *)a3 mediaType:(id)a4 mediaFileType:(id)a5 formatSpecification:(id)a6 sourcePixelBufferAttributes:(id)a7 multiPass:(BOOL)a8 error:(id *)a9;
- (BOOL)addSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
- (BOOL)markEndOfDataReturningError:(id *)a3;
- (int)_attachToFigAssetWriterUsingFormatSpecification:(id)a3 sourcePixelBufferAttributes:(id)a4 multiPass:(BOOL)a5 error:(id *)a6;
- (void)dealloc;
@end

@implementation AVFigAssetWriterAudioTrack

- (AVFigAssetWriterAudioTrack)initWithFigAssetWriter:(OpaqueFigAssetWriter *)a3 mediaType:(id)a4 mediaFileType:(id)a5 formatSpecification:(id)a6 sourcePixelBufferAttributes:(id)a7 multiPass:(BOOL)a8 error:(id *)a9
{
  v11.receiver = self;
  v11.super_class = AVFigAssetWriterAudioTrack;
  v9 = [(AVFigAssetWriterTrack *)&v11 initWithFigAssetWriter:a3 mediaType:a4 mediaFileType:a5 formatSpecification:a6 sourcePixelBufferAttributes:a7 multiPass:a8 error:a9];
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

- (int)_attachToFigAssetWriterUsingFormatSpecification:(id)a3 sourcePixelBufferAttributes:(id)a4 multiPass:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v28 = 0;
  v27 = 0;
  v11 = [a3 outputSettings];
  v12 = [a3 sourceFormatDescription];
  v13 = [(AVFigAssetWriterTrack *)self mediaFileType];
  if (!v11)
  {
    v23.receiver = self;
    v23.super_class = AVFigAssetWriterAudioTrack;
    v27 = [(AVFigAssetWriterTrack *)&v23 _attachToFigAssetWriterUsingFormatSpecification:a3 sourcePixelBufferAttributes:a4 multiPass:v7 error:&v28];
    if (!a6)
    {
      return v27;
    }

    goto LABEL_13;
  }

  v14 = v13;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v24 = 0;
  if (v12)
  {
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObject:v12 forKey:*MEMORY[0x1E6971510]];
  }

  else
  {
    v15 = 0;
  }

  [v11 willYieldCompressedSamples];
  [v11 getAudioStreamBasicDescription:v25 forAudioFileTypeID:-[AVMediaFileType audioFileTypeID](v14 sourceFormatDescription:{"audioFileTypeID"), v12}];
  v16 = [v11 copyAudioChannelLayoutForSourceFormatDescription:v12 audioChannelLayoutSize:&v24];
  v17 = [v11 audioOptions];
  v18 = [(AVFigAssetWriterTrack *)self figAssetWriter];
  v19 = v24;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v20)
  {
    v21 = 4294954514;
    goto LABEL_11;
  }

  v21 = v20(v18, v25, v19, v16, v17, v15, &v27);
  if (v21)
  {
LABEL_11:
    v28 = [AVAssetWriter _errorForOSStatus:v21];
  }

  free(v16);
  if (a6)
  {
LABEL_13:
    *a6 = v28;
  }

  return v27;
}

- (BOOL)addSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = AVFigAssetWriterAudioTrack;
  return [(AVFigAssetWriterTrack *)&v5 addSampleBuffer:a3 error:a4];
}

- (BOOL)markEndOfDataReturningError:(id *)a3
{
  v5.receiver = self;
  v5.super_class = AVFigAssetWriterAudioTrack;
  v6 = 0;
  result = [(AVFigAssetWriterTrack *)&v5 markEndOfDataReturningError:&v6];
  if (a3)
  {
    *a3 = v6;
  }

  return result;
}

@end