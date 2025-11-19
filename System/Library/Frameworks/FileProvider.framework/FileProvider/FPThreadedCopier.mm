@interface FPThreadedCopier
+ (FPThreadedCopier)sharedCopier;
- (BOOL)finishReading:(int)a3 writing:(int)a4 error:(id *)a5;
- (FPThreadedCopier)init;
- (int)beginReading:(id)a3 error:(id *)a4;
- (int)beginWriting:(id)a3 overwriteDestination:(BOOL)a4 error:(id *)a5;
- (void)beginOperation;
- (void)endOperation;
@end

@implementation FPThreadedCopier

+ (FPThreadedCopier)sharedCopier
{
  if (sharedCopier_once != -1)
  {
    +[FPThreadedCopier sharedCopier];
  }

  v3 = sharedCopier_sharedCopier;

  return v3;
}

uint64_t __32__FPThreadedCopier_sharedCopier__block_invoke()
{
  sharedCopier_sharedCopier = objc_alloc_init(FPThreadedCopier);

  return MEMORY[0x1EEE66BB8]();
}

- (FPThreadedCopier)init
{
  v9.receiver = self;
  v9.super_class = FPThreadedCopier;
  v2 = [(FPThreadedCopier *)&v9 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(2);
    bufferLimitSemaphore = v2->_bufferLimitSemaphore;
    v2->_bufferLimitSemaphore = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("FPThreadedCopier Writing Queue", v5);
    writeQueue = v2->_writeQueue;
    v2->_writeQueue = v6;
  }

  return v2;
}

void __64__FPThreadedCopier_copy_to_overwriteDestination_progress_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = [*(a1 + 32) mutableBytes];
  if (v2 >= 1)
  {
    v4 = v3;
    while (1)
    {
      v5 = write(*(a1 + 72), v4, v2);
      if (v5 == -1)
      {
        break;
      }

      v6 = v5;
      [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + v5}];
      v4 += v6;
      v2 -= v6;
      if (v6)
      {
        v7 = v2 <= 0;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        goto LABEL_11;
      }
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

LABEL_11:
  v11 = *(a1 + 48);
  objc_sync_enter(v11);
  v12 = [*(a1 + 48) buffers];
  [v12 addObject:*(a1 + 32)];

  objc_sync_exit(v11);
  v13 = [*(a1 + 48) bufferLimitSemaphore];
  dispatch_semaphore_signal(v13);
}

- (int)beginReading:(id)a3 error:(id *)a4
{
  v5 = open([a3 fileSystemRepresentation], 33028);
  v6 = v5;
  if (a4 && v5 == -1)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
  }

  return v6;
}

- (int)beginWriting:(id)a3 overwriteDestination:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v7 = [a3 fileSystemRepresentation];
  if (v6)
  {
    v8 = open(v7, 1797, 384);
  }

  else
  {
    v8 = open(v7, 3845, 384);
  }

  v9 = v8;
  if (a5 && v8 == -1)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
  }

  return v9;
}

- (BOOL)finishReading:(int)a3 writing:(int)a4 error:(id *)a5
{
  close(a3);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__10;
  v18 = __Block_byref_object_dispose__10;
  v19 = 0;
  writeQueue = self->_writeQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__FPThreadedCopier_finishReading_writing_error___block_invoke;
  v12[3] = &unk_1E793B958;
  v13 = a4;
  v12[4] = &v14;
  dispatch_sync(writeQueue, v12);
  v9 = v15[5];
  if (a5 && v9)
  {
    v9 = v9;
    *a5 = v9;
  }

  v10 = v9 == 0;
  _Block_object_dispose(&v14, 8);

  return v10;
}

uint64_t __48__FPThreadedCopier_finishReading_writing_error___block_invoke(uint64_t a1)
{
  result = close(*(a1 + 40));
  if (result == -1)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:0];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (void)beginOperation
{
  writeQueue = self->_writeQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__FPThreadedCopier_beginOperation__block_invoke;
  v3[3] = &unk_1E7939038;
  v3[4] = self;
  v3[5] = a2;
  dispatch_sync(writeQueue, v3);
}

void __34__FPThreadedCopier_beginOperation__block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (![*(a1 + 32) numberOfInflightCopies])
  {
    v2 = [*(a1 + 32) buffers];

    if (v2)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"FPThreadedCopier.m" lineNumber:203 description:@"self.buffers should be nil"];
    }

    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    [*(a1 + 32) setBuffers:v3];

    v4 = 1;
    do
    {
      v5 = v4;
      v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:0x10000];
      v7 = [*(a1 + 32) buffers];
      [v7 addObject:v6];

      v4 = 0;
    }

    while ((v5 & 1) != 0);
  }

  [*(a1 + 32) setNumberOfInflightCopies:{objc_msgSend(*(a1 + 32), "numberOfInflightCopies") + 1}];
  objc_sync_exit(obj);
}

- (void)endOperation
{
  writeQueue = self->_writeQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__FPThreadedCopier_endOperation__block_invoke;
  v3[3] = &unk_1E7939038;
  v3[4] = self;
  v3[5] = a2;
  dispatch_sync(writeQueue, v3);
}

void __32__FPThreadedCopier_endOperation__block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) setNumberOfInflightCopies:{objc_msgSend(*(a1 + 32), "numberOfInflightCopies") - 1}];
  if (![*(a1 + 32) numberOfInflightCopies])
  {
    v2 = [*(a1 + 32) buffers];

    if (!v2)
    {
      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      [v3 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"FPThreadedCopier.m" lineNumber:221 description:@"self.buffers should be non-nil"];
    }

    [*(a1 + 32) setBuffers:0];
  }

  objc_sync_exit(obj);
}

@end