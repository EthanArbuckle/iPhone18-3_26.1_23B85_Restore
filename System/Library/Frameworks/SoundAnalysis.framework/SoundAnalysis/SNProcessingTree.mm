@interface SNProcessingTree
- (BOOL)processBuffer:(id)buffer framePosition:(int64_t)position error:(id *)error;
- (BOOL)setFormat:(SNFormatAndBlockSize *)format error:(id *)error;
- (BOOL)setMaxFramesPerSlice:(unsigned int)slice error:(id *)error;
- (BOOL)setProcessingContexts:(id)contexts error:(id *)error;
- (BOOL)writeDSPGraphDotFilesToDirectory:(id)directory error:(id *)error;
- (SNProcessingTree)initWithError:(id *)error;
- (id).cxx_construct;
- (id)clientSampleRateWithError:(id *)error;
- (id)clientSampleTimeFromSampleTime:(int64_t)time fromBox:(id)box error:(id *)error;
- (id)maxFramesPerSliceWithError:(id *)error;
- (shared_ptr<SoundAnalysis::ProcessingTree>)processingTree;
@end

@implementation SNProcessingTree

- (SNProcessingTree)initWithError:(id *)error
{
  v18.receiver = self;
  v18.super_class = SNProcessingTree;
  v4 = [(SNProcessingTree *)&v18 init];
  if (v4)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x4012000000;
    v13 = sub_1C9A7BCB8;
    v14 = sub_1C9A7BCC8;
    v15 = "";
    v16 = 0;
    v17 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1C9A7BCD8;
    v9[3] = &unk_1E8347670;
    v9[4] = &v10;
    if (sub_1C9A74388(SNDSPGraphUtilities, v9, error))
    {
      v6 = v11[6];
      v5 = v11[7];
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      cntrl = v4->_processingTree.__cntrl_;
      v4->_processingTree.__ptr_ = v6;
      v4->_processingTree.__cntrl_ = v5;
      if (cntrl)
      {
        sub_1C9A4E570(cntrl);
      }
    }

    else
    {

      v4 = 0;
    }

    _Block_object_dispose(&v10, 8);
    if (v17)
    {
      sub_1C9A4E570(v17);
    }
  }

  return v4;
}

- (shared_ptr<SoundAnalysis::ProcessingTree>)processingTree
{
  cntrl = self->_processingTree.__cntrl_;
  *v2 = self->_processingTree.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (BOOL)processBuffer:(id)buffer framePosition:(int64_t)position error:(id *)error
{
  bufferCopy = buffer;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1C9A7BE54;
  v11[3] = &unk_1E8347698;
  selfCopy = self;
  positionCopy = position;
  v12 = bufferCopy;
  v9 = bufferCopy;
  LOBYTE(error) = sub_1C9A74388(SNDSPGraphUtilities, v11, error);

  return error;
}

- (BOOL)setMaxFramesPerSlice:(unsigned int)slice error:(id *)error
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1C9A7BF50;
  v5[3] = &unk_1E83470C0;
  v5[4] = self;
  sliceCopy = slice;
  return sub_1C9A74388(SNDSPGraphUtilities, v5, error);
}

- (id)maxFramesPerSliceWithError:(id *)error
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1C9A7C010;
  v5[3] = &unk_1E8346FF8;
  v5[4] = self;
  v3 = sub_1C9A72EA0(SNDSPGraphUtilities, v5, error);

  return v3;
}

- (BOOL)writeDSPGraphDotFilesToDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1C9A7C0F8;
  v9[3] = &unk_1E8347160;
  v9[4] = self;
  v10 = directoryCopy;
  v7 = directoryCopy;
  LOBYTE(error) = sub_1C9A74388(SNDSPGraphUtilities, v9, error);

  return error;
}

- (BOOL)setProcessingContexts:(id)contexts error:(id *)error
{
  contextsCopy = contexts;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1C9A7C2C4;
  v9[3] = &unk_1E8347160;
  v10 = contextsCopy;
  selfCopy = self;
  v7 = contextsCopy;
  LOBYTE(error) = sub_1C9A74388(SNDSPGraphUtilities, v9, error);

  return error;
}

- (BOOL)setFormat:(SNFormatAndBlockSize *)format error:(id *)error
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v4 = *&format->var0.mBytesPerPacket;
  v7 = *&format->var0.mSampleRate;
  v8 = v4;
  v6[2] = sub_1C9A7C56C;
  v6[3] = &unk_1E83476C0;
  v6[4] = self;
  v9 = *&format->var0.mBitsPerChannel;
  return sub_1C9A74388(SNDSPGraphUtilities, v6, error);
}

- (id)clientSampleTimeFromSampleTime:(int64_t)time fromBox:(id)box error:(id *)error
{
  boxCopy = box;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C9A7C69C;
  v12[3] = &unk_1E83476E8;
  v13 = boxCopy;
  timeCopy = time;
  v12[4] = self;
  v9 = boxCopy;
  v10 = sub_1C9A72EA0(SNDSPGraphUtilities, v12, error);

  return v10;
}

- (id)clientSampleRateWithError:(id *)error
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1C9A7C78C;
  v5[3] = &unk_1E8346FF8;
  v5[4] = self;
  v3 = sub_1C9A72EA0(SNDSPGraphUtilities, v5, error);

  return v3;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end