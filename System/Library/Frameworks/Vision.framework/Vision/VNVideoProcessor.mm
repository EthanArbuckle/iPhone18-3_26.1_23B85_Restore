@interface VNVideoProcessor
- (BOOL)addRequest:(VNRequest *)request processingOptions:(VNVideoProcessorRequestProcessingOptions *)processingOptions error:(NSError *)error;
- (BOOL)analyzeTimeRange:(CMTimeRange *)timeRange error:(NSError *)error;
- (BOOL)analyzeWithTimeRange:(CMTimeRange *)timeRange error:(NSError *)error;
- (VNVideoProcessor)initWithURL:(NSURL *)videoURL;
@end

@implementation VNVideoProcessor

- (BOOL)analyzeTimeRange:(CMTimeRange *)timeRange error:(NSError *)error
{
  videoProcessor = self->_videoProcessor;
  v7 = *&timeRange->start.value;
  epoch = timeRange->start.epoch;
  duration = timeRange->duration;
  return [(VCPVideoProcessor *)videoProcessor analyzeWithStart:&v7 andDuration:&duration error:error];
}

- (BOOL)analyzeWithTimeRange:(CMTimeRange *)timeRange error:(NSError *)error
{
  v4 = *&timeRange->start.epoch;
  v6[0] = *&timeRange->start.value;
  v6[1] = v4;
  v6[2] = *&timeRange->duration.timescale;
  return [(VNVideoProcessor *)self analyzeTimeRange:v6 error:error];
}

- (BOOL)addRequest:(VNRequest *)request processingOptions:(VNVideoProcessorRequestProcessingOptions *)processingOptions error:(NSError *)error
{
  v8 = request;
  _createVCPVideoProcessorRequestConfiguration = [(VNVideoProcessorRequestProcessingOptions *)processingOptions _createVCPVideoProcessorRequestConfiguration];
  LOBYTE(error) = [(VCPVideoProcessor *)self->_videoProcessor addRequest:v8 withConfiguration:_createVCPVideoProcessorRequestConfiguration error:error];

  return error;
}

- (VNVideoProcessor)initWithURL:(NSURL *)videoURL
{
  v4 = videoURL;
  v12.receiver = self;
  v12.super_class = VNVideoProcessor;
  v5 = [(VNVideoProcessor *)&v12 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v6 = getVCPVideoProcessorClass_softClass;
  v17 = getVCPVideoProcessorClass_softClass;
  if (!getVCPVideoProcessorClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getVCPVideoProcessorClass_block_invoke;
    v13[3] = &unk_1E77B69F0;
    v13[4] = &v14;
    __getVCPVideoProcessorClass_block_invoke(v13);
    v6 = v15[3];
  }

  v7 = v6;
  _Block_object_dispose(&v14, 8);
  v8 = [[v6 alloc] initWithURL:v4];
  videoProcessor = v5->_videoProcessor;
  v5->_videoProcessor = v8;

  if (v5->_videoProcessor)
  {
    v10 = v5;
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  return v10;
}

@end