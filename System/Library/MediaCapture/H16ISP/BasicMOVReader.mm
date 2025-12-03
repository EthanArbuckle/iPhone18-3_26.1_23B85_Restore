@interface BasicMOVReader
- (BasicMOVReader)initWithFileURL:(id)l error:(id *)error;
- (__CVBuffer)getNextFrameTimestamp:(id *)timestamp error:(id *)error;
@end

@implementation BasicMOVReader

- (BasicMOVReader)initWithFileURL:(id)l error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = BasicMOVReader;
  v6 = [(BasicMOVReader *)&v13 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CE63D8] assetWithURL:l];
    v8 = [MEMORY[0x277CE6410] assetReaderWithAsset:v7 error:error];
    v6->_reader = v8;
    if (v8)
    {
      v9 = [objc_msgSend(v7 tracksWithMediaType:{*MEMORY[0x277CE5EA8]), "objectAtIndex:", 0}];
      v14 = *MEMORY[0x277CC4E30];
      v15[0] = [MEMORY[0x277CCABB0] numberWithInt:875704422];
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v11 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:v9 outputSettings:v10];
      v6->_output = v11;
      if ([(AVAssetReader *)v6->_reader canAddOutput:v11])
      {
        [(AVAssetReader *)v6->_reader addOutput:v6->_output];
      }

      [(AVAssetReader *)v6->_reader startReading];
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (__CVBuffer)getNextFrameTimestamp:(id *)timestamp error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  copyNextSampleBuffer = [(AVAssetReaderTrackOutput *)self->_output copyNextSampleBuffer];
  if (!copyNextSampleBuffer)
  {
    if ([(AVAssetReader *)self->_reader status]!= AVAssetReaderStatusFailed)
    {
      v10 = 0;
      self->_hasReachedEndOfStream = 1;
      return v10;
    }

    if (error)
    {
      v11 = [(NSError *)[(AVAssetReader *)self->_reader error] copy];
LABEL_11:
      v10 = 0;
      *error = v11;
      return v10;
    }

    return 0;
  }

  v8 = copyNextSampleBuffer;
  ImageBuffer = CMSampleBufferGetImageBuffer(copyNextSampleBuffer);
  if (!ImageBuffer)
  {
    if (error)
    {
      v14 = *MEMORY[0x277CCA450];
      v15[0] = @"Sample buffer does not contain pixel data.";
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.videoeng.basicmovreader" code:1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v15, &v14, 1)}];
      goto LABEL_11;
    }

    return 0;
  }

  v10 = ImageBuffer;
  if (timestamp)
  {
    CMSampleBufferGetPresentationTimeStamp(&v13, v8);
    *timestamp = v13;
  }

  CVPixelBufferRetain(v10);
  CFRelease(v8);
  return v10;
}

@end