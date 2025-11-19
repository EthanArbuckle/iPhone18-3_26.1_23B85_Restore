@interface VideoWriter
- (__CVBuffer)createPixelBuffer;
- (id)addFrame:(CGImage *)a3;
- (id)addFrameAsPixelBuf:(__CVBuffer *)a3;
- (id)addFrameAsPixelBuf:(__CVBuffer *)a3 atFrameTime:(id *)a4;
- (id)finish;
- (id)initForPath:(const char *)a3 fileType:(id)a4 codecType:(id)a5 imgWidth:(unsigned int)a6 imgHeight:(unsigned int)a7 fps:(float)a8 pixFormat:(unsigned int)a9 metadata:(id)a10;
- (id)initForURL:(id)a3 fileType:(id)a4 codecType:(id)a5 imgWidth:(unsigned int)a6 imgHeight:(unsigned int)a7 fps:(float)a8 pixFormat:(unsigned int)a9 metadata:(id)a10;
- (id)initForURL:(id)a3 fileType:(id)a4 codecType:(id)a5 imgWidth:(unsigned int)a6 imgHeight:(unsigned int)a7 fps:(float)a8 timeScale:(int)a9 transform:(CGAffineTransform *)a10 pixFormat:(unsigned int)a11 metadata:(id)a12;
- (void)endSessionAtTime:(id *)a3;
- (void)endSessionInfer;
- (void)setInputReady;
@end

@implementation VideoWriter

- (id)initForURL:(id)a3 fileType:(id)a4 codecType:(id)a5 imgWidth:(unsigned int)a6 imgHeight:(unsigned int)a7 fps:(float)a8 pixFormat:(unsigned int)a9 metadata:(id)a10
{
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  v13[0] = *MEMORY[0x277CBF2C0];
  v13[1] = v10;
  v13[2] = *(MEMORY[0x277CBF2C0] + 32);
  LODWORD(v12) = a9;
  return [(VideoWriter *)self initForURL:a3 fileType:a4 codecType:a5 imgWidth:*&a6 imgHeight:*&a7 fps:0 timeScale:v13 transform:v12 pixFormat:a10 metadata:?];
}

- (id)initForURL:(id)a3 fileType:(id)a4 codecType:(id)a5 imgWidth:(unsigned int)a6 imgHeight:(unsigned int)a7 fps:(float)a8 timeScale:(int)a9 transform:(CGAffineTransform *)a10 pixFormat:(unsigned int)a11 metadata:(id)a12
{
  v80 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a12;
  v78.receiver = self;
  v78.super_class = VideoWriter;
  v23 = [(VideoWriter *)&v78 init];
  v24 = v23;
  if (!v23)
  {
    goto LABEL_18;
  }

  assetWriter = v23->_assetWriter;
  v23->_assetWriter = 0;

  writerInput = v24->_writerInput;
  v24->_writerInput = 0;

  inputAdaptor = v24->_inputAdaptor;
  v24->_inputAdaptor = 0;

  v24->fps = a8;
  v24->currFrame = 0;
  v24->_currFrameTime = 0;
  v24->imgWidth = a6;
  v24->imgHeight = a7;
  v24->_initFailed = 0;
  if (a9)
  {
    v24->timeScale = a9;
    v28 = a9;
  }

  else if (a8 == 60.0)
  {
    v24->timeScale = 6000;
    v28 = 6000.0;
  }

  else
  {
    v24->timeScale = 90000;
    v28 = 90000.0;
  }

  v24->pixelFormat = a11;
  v29 = *&a10->a;
  v30 = *&a10->c;
  *&v24->preferredTransform.tx = *&a10->tx;
  *&v24->preferredTransform.c = v30;
  *&v24->preferredTransform.a = v29;
  v24->_frameIncr = (v28 / a8);
  v31 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:1];
  inputLock = v24->_inputLock;
  v24->_inputLock = v31;

  v33 = dispatch_queue_create("frame write queue", 0);
  frameWriteQueue = v24->_frameWriteQueue;
  v24->_frameWriteQueue = v33;

  [v19 getFileSystemRepresentation:v79 maxLength:1000];
  unlink(v79);
  v77 = 0;
  v35 = [objc_alloc(MEMORY[0x277CE6460]) initWithURL:v19 fileType:v20 error:&v77];
  v36 = v77;
  v37 = v24->_assetWriter;
  v24->_assetWriter = v35;

  if (!v24->_assetWriter)
  {
    NSLog(&cfstr_AvassetwriterI.isa, v36);
    lastError = v24->lastError;
    v24->lastError = v36;
    v54 = v36;

    v24->_initFailed = 1;
    v58 = v24;
LABEL_29:

    goto LABEL_30;
  }

  v69 = v36;
  v70 = v20;
  v38 = v22;
  v39 = MEMORY[0x277CBEAC0];
  v40 = *MEMORY[0x277CE62C8];
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24->imgWidth];
  v42 = v21;
  v43 = *MEMORY[0x277CE63C0];
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24->imgHeight];
  v68 = v43;
  v21 = v42;
  v45 = [v39 dictionaryWithObjectsAndKeys:{v42, v40, v41, v68, v44, *MEMORY[0x277CE6360], 0}];

  v46 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:*MEMORY[0x277CE5EA8] outputSettings:v45];
  v47 = v24->_writerInput;
  v24->_writerInput = v46;

  v48 = v24->_writerInput;
  if (!v48)
  {
    NSLog(&cfstr_Avassetwriteri.isa);

    v58 = 0;
    v22 = v38;
    v20 = v70;
    goto LABEL_30;
  }

  [(AVAssetWriterInput *)v48 setMediaTimeScale:v24->timeScale];
  v49 = *&v24->preferredTransform.c;
  *v75 = *&v24->preferredTransform.a;
  *&v75[16] = v49;
  v76 = *&v24->preferredTransform.tx;
  [(AVAssetWriterInput *)v24->_writerInput setTransform:v75];
  [(AVAssetWriter *)v24->_assetWriter setMovieTimeScale:v24->timeScale];
  if (a11)
  {
    v50 = a11;
  }

  else
  {
    v50 = 193;
  }

  v51 = sub_241903CF4(v50, 0);
  v52 = [MEMORY[0x277CE6478] assetWriterInputPixelBufferAdaptorWithAssetWriterInput:v24->_writerInput sourcePixelBufferAttributes:v51];
  v53 = v24->_inputAdaptor;
  v24->_inputAdaptor = v52;

  v22 = v38;
  v54 = v69;
  if (!v24->_inputAdaptor)
  {
    NSLog(&cfstr_Avassetwriteri_0.isa);
    v58 = 0;
    v20 = v70;
LABEL_28:

    goto LABEL_29;
  }

  v20 = v70;
  if (![(AVAssetWriter *)v24->_assetWriter canAddInput:v24->_writerInput])
  {
    NSLog(&cfstr_AvassetwriterC.isa);
    v58 = 0;
    goto LABEL_28;
  }

  [(AVAssetWriter *)v24->_assetWriter addInput:v24->_writerInput];
  if (v22)
  {
    [(AVAssetWriter *)v24->_assetWriter setMetadata:v22];
  }

  if (![(AVAssetWriter *)v24->_assetWriter startWriting])
  {
    NSLog(&cfstr_ErrorInVideowr.isa);
    NSLog(&cfstr_VideowriterSta.isa, [(AVAssetWriter *)v24->_assetWriter status]);
    v60 = [(AVAssetWriter *)v24->_assetWriter error];
    NSLog(&cfstr_Error.isa, v60);

    v61 = [(AVAssetWriter *)v24->_assetWriter error];
    v62 = [v61 userInfo];

    if (v62)
    {
      v63 = [v62 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v64 = v63;
      if (v63)
      {
        NSLog(&cfstr_UnderlyingErro.isa, [v63 code]);
      }
    }

    v65 = [(AVAssetWriter *)v24->_assetWriter error];
    v66 = v24->lastError;
    v24->lastError = v65;

    v24->_initFailed = 1;
    v58 = v24;

    goto LABEL_28;
  }

  memset(v75, 0, 24);
  CMTimeMake(v75, 0, v24->timeScale);
  v55 = v24->_assetWriter;
  v73 = *v75;
  v74 = *&v75[16];
  [(AVAssetWriter *)v55 startSessionAtSourceTime:&v73];
  v56 = v24->_writerInput;
  v57 = v24->_frameWriteQueue;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_24190B6F0;
  v71[3] = &unk_278CF7FA0;
  v72 = v24;
  [(AVAssetWriterInput *)v56 requestMediaDataWhenReadyOnQueue:v57 usingBlock:v71];

LABEL_18:
  v58 = v24;
LABEL_30:

  return v58;
}

- (id)initForPath:(const char *)a3 fileType:(id)a4 codecType:(id)a5 imgWidth:(unsigned int)a6 imgHeight:(unsigned int)a7 fps:(float)a8 pixFormat:(unsigned int)a9 metadata:(id)a10
{
  v10 = *&a9;
  v12 = *&a7;
  v13 = *&a6;
  v18 = MEMORY[0x277CCACA8];
  v19 = a10;
  v20 = a5;
  v21 = a4;
  v22 = [v18 stringWithCString:a3 encoding:4];
  v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:v22 isDirectory:0];
  *&v24 = a8;
  v25 = [(VideoWriter *)self initForURL:v23 fileType:v21 codecType:v20 imgWidth:v13 imgHeight:v12 fps:v10 pixFormat:v24 metadata:v19];

  return v25;
}

- (void)setInputReady
{
  [(NSConditionLock *)self->_inputLock lockWhenCondition:1];
  inputLock = self->_inputLock;

  [(NSConditionLock *)inputLock unlockWithCondition:0];
}

- (id)addFrame:(CGImage *)a3
{
  if (self->_initFailed)
  {
    lastError = self->lastError;
    if (lastError)
    {
      v5 = [(NSError *)lastError localizedDescription];
    }

    else
    {
      v5 = @"VideoWriter: init I/O failure";
    }
  }

  else
  {
    v6 = sub_24190B00C(a3);
    if (v6)
    {
      v7 = v6;
      v5 = [(VideoWriter *)self addFrameAsPixelBuf:v6];
      CFRelease(v7);
    }

    else
    {
      v5 = @"Error creating CVPixelBufferRef";
      NSLog(&stru_285381D50.isa, @"Error creating CVPixelBufferRef");
    }
  }

  return v5;
}

- (id)addFrameAsPixelBuf:(__CVBuffer *)a3
{
  if (self->_initFailed)
  {
    lastError = self->lastError;
    if (lastError)
    {
      v5 = [(NSError *)lastError localizedDescription];
    }

    else
    {
      v5 = @"VideoWriter: init I/O failure";
    }
  }

  else
  {
    if (![(AVAssetWriterInput *)self->_writerInput isReadyForMoreMediaData])
    {
      do
      {
        [(NSConditionLock *)self->_inputLock lockWhenCondition:0];
        [(NSConditionLock *)self->_inputLock unlock];
      }

      while (![(AVAssetWriterInput *)self->_writerInput isReadyForMoreMediaData]);
    }

    memset(&v15, 0, sizeof(v15));
    CMTimeMake(&v15, self->_currFrameTime, self->timeScale);
    self->_currFrameTime += self->_frameIncr;
    ++self->currFrame;
    inputAdaptor = self->_inputAdaptor;
    v14 = v15;
    v8 = [(AVAssetWriterInputPixelBufferAdaptor *)inputAdaptor appendPixelBuffer:a3 withPresentationTime:&v14];
    v5 = 0;
    if (!v8)
    {
      NSLog(&cfstr_Avassetwriteri_1.isa);
      v9 = [(AVAssetWriter *)self->_assetWriter error];
      NSLog(&cfstr_AssetwriterErr.isa, v9);

      NSLog(&cfstr_AssetwriterSta.isa, [(AVAssetWriter *)self->_assetWriter status]);
      v10 = [(AVAssetWriter *)self->_assetWriter error];
      v11 = self->lastError;
      self->lastError = v10;

      v12 = [(AVAssetWriter *)self->_assetWriter error];
      v5 = [v12 localizedDescription];
    }

    [(NSConditionLock *)self->_inputLock lock];
    [(NSConditionLock *)self->_inputLock unlockWithCondition:1];
  }

  return v5;
}

- (id)addFrameAsPixelBuf:(__CVBuffer *)a3 atFrameTime:(id *)a4
{
  if (self->_initFailed)
  {
    lastError = self->lastError;
    if (lastError)
    {
      v6 = [(NSError *)lastError localizedDescription:a3];
    }

    else
    {
      v6 = @"VideoWriter: init I/O failure";
    }
  }

  else
  {
    if (![(AVAssetWriterInput *)self->_writerInput isReadyForMoreMediaData])
    {
      do
      {
        [(NSConditionLock *)self->_inputLock lockWhenCondition:0];
        [(NSConditionLock *)self->_inputLock unlock];
      }

      while (![(AVAssetWriterInput *)self->_writerInput isReadyForMoreMediaData]);
    }

    timeScale = self->timeScale;
    if (a4->var1 != timeScale)
    {
      time = *a4;
      CMTimeConvertScale(&v17, &time, timeScale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      *a4 = v17;
    }

    self->_currFrameTime = a4->var0;
    ++self->currFrame;
    inputAdaptor = self->_inputAdaptor;
    v17 = *a4;
    if ([(AVAssetWriterInputPixelBufferAdaptor *)inputAdaptor appendPixelBuffer:a3 withPresentationTime:&v17])
    {
      v6 = 0;
    }

    else
    {
      NSLog(&cfstr_Avassetwriteri_1.isa);
      v11 = [(AVAssetWriter *)self->_assetWriter error];
      NSLog(&cfstr_AssetwriterErr.isa, v11);

      NSLog(&cfstr_AssetwriterSta.isa, [(AVAssetWriter *)self->_assetWriter status]);
      v12 = [(AVAssetWriter *)self->_assetWriter error];
      v13 = self->lastError;
      self->lastError = v12;

      v14 = [(AVAssetWriter *)self->_assetWriter error];
      v6 = [v14 localizedDescription];
    }

    [(NSConditionLock *)self->_inputLock lock];
    [(NSConditionLock *)self->_inputLock unlockWithCondition:1];
  }

  return v6;
}

- (__CVBuffer)createPixelBuffer
{
  if (self->_initFailed)
  {
    return 0;
  }

  pixelBufferOut[1] = v2;
  pixelBufferOut[2] = v3;
  pixelBufferOut[0] = 0;
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(0, [(AVAssetWriterInputPixelBufferAdaptor *)self->_inputAdaptor pixelBufferPool], pixelBufferOut);
  if (PixelBuffer)
  {
    NSLog(&cfstr_VideowriterCvp.isa, PixelBuffer);
    return 0;
  }

  result = pixelBufferOut[0];
  if (!pixelBufferOut[0])
  {
    NSLog(&cfstr_VideowriterCvp_0.isa);
    return 0;
  }

  return result;
}

- (void)endSessionAtTime:(id *)a3
{
  assetWriter = self->_assetWriter;
  v4 = *a3;
  [(AVAssetWriter *)assetWriter endSessionAtSourceTime:&v4];
}

- (void)endSessionInfer
{
  memset(&v4, 0, sizeof(v4));
  CMTimeMake(&v4, self->_currFrameTime, self->timeScale);
  self->_currFrameTime += self->_frameIncr;
  ++self->currFrame;
  v3 = v4;
  [(VideoWriter *)self endSessionAtTime:&v3];
}

- (id)finish
{
  if (self->_initFailed)
  {
    lastError = self->lastError;
    if (lastError)
    {
      v4 = [(NSError *)lastError localizedDescription];
    }

    else
    {
      v4 = @"VideoWriter: init I/O failure";
    }
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_24190BF70;
    v16 = sub_24190BF80;
    v17 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    assetWriter = self->_assetWriter;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_24190BF88;
    v11[3] = &unk_278CF7FF8;
    v11[4] = &v12;
    [(AVAssetWriter *)assetWriter finishWritingWithCompletionHandler:v11];
    [v13[5] lockWhenCondition:1];
    [v13[5] unlockWithCondition:1];
    [(NSConditionLock *)self->_inputLock lock];
    [(NSConditionLock *)self->_inputLock unlockWithCondition:1];
    if ([(AVAssetWriter *)self->_assetWriter status]== AVAssetWriterStatusCompleted)
    {
      v4 = 0;
    }

    else
    {
      NSLog(&cfstr_AssetwriterSta_0.isa, [(AVAssetWriter *)self->_assetWriter status]);
      v6 = [(AVAssetWriter *)self->_assetWriter error];
      v4 = [v6 localizedDescription];

      v7 = [(AVAssetWriter *)self->_assetWriter error];
      NSLog(&cfstr_Error.isa, v7);

      v8 = [(AVAssetWriter *)self->_assetWriter error];
      v9 = self->lastError;
      self->lastError = v8;
    }

    _Block_object_dispose(&v12, 8);
  }

  return v4;
}

@end