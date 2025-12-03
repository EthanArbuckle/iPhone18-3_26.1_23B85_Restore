@interface AVCaptureFileOutput
- (CMTime)recordedDuration;
- (id)initSubclass;
- (int64_t)recordedFileSize;
- (void)dealloc;
- (void)setMaxRecordedDuration:(CMTime *)maxRecordedDuration;
@end

@implementation AVCaptureFileOutput

- (id)initSubclass
{
  v5.receiver = self;
  v5.super_class = AVCaptureFileOutput;
  initSubclass = [(AVCaptureOutput *)&v5 initSubclass];
  if (initSubclass)
  {
    [initSubclass setDeferredStartEnabled:AVCaptureSessionIsDeferredStartSupported()];
    v3 = objc_alloc_init(AVCaptureFileOutputInternal);
    initSubclass[2] = v3;
    if (!v3)
    {

      return 0;
    }
  }

  return initSubclass;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureFileOutput;
  [(AVCaptureOutput *)&v3 dealloc];
}

- (CMTime)recordedDuration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3810000000;
  v9 = &unk_1A92DB249;
  v10 = *MEMORY[0x1E6960CC0];
  v11 = *(MEMORY[0x1E6960CC0] + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AVCaptureFileOutput_recordedDuration__block_invoke;
  v5[3] = &unk_1E786EA80;
  v5[4] = self;
  v5[5] = &v6;
  [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v5];
  *retstr = *(v7 + 4);
  _Block_object_dispose(&v6, 8);
  return result;
}

void __39__AVCaptureFileOutput_recordedDuration__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    dictionaryRepresentation = 0;
    v4 = [*(a1 + 32) sinkID];
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v5)
    {
      v5(a2, v4, *MEMORY[0x1E698FAD0], *MEMORY[0x1E695E480], &dictionaryRepresentation);
      if (dictionaryRepresentation)
      {
        CMTimeMakeFromDictionary(&v8, dictionaryRepresentation);
        v6 = *(*(a1 + 40) + 8);
        *(v6 + 32) = *&v8.value;
        v7 = dictionaryRepresentation;
        *(v6 + 48) = v8.epoch;
        CFRelease(v7);
      }
    }
  }
}

- (int64_t)recordedFileSize
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__AVCaptureFileOutput_recordedFileSize__block_invoke;
  v4[3] = &unk_1E786EA80;
  v4[4] = self;
  v4[5] = &v5;
  [(AVCaptureOutput *)self performFigCaptureSessionOperationSafelyUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __39__AVCaptureFileOutput_recordedFileSize__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    number = 0;
    v4 = [*(a1 + 32) sinkID];
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v5)
    {
      v5(a2, v4, *MEMORY[0x1E698FAD8], *MEMORY[0x1E695E480], &number);
      if (number)
      {
        CFNumberGetValue(number, kCFNumberSInt64Type, (*(*(a1 + 40) + 8) + 24));
        CFRelease(number);
      }
    }
  }
}

- (void)setMaxRecordedDuration:(CMTime *)maxRecordedDuration
{
  fileOutputInternal = self->_fileOutputInternal;
  epoch = maxRecordedDuration->epoch;
  *&fileOutputInternal->maxRecordedDuration.value = *&maxRecordedDuration->value;
  fileOutputInternal->maxRecordedDuration.epoch = epoch;
}

@end