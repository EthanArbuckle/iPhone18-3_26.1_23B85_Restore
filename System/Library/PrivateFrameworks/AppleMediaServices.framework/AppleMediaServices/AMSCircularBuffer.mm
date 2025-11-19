@interface AMSCircularBuffer
+ (id)_rearrangeObjects:(id)a3 forCurrentIndex:(unint64_t)a4;
- (AMSCircularBuffer)initWithMaxSize:(unint64_t)a3;
- (NSArray)allObjects;
- (id)_flush;
- (id)description;
- (id)flush;
- (unint64_t)count;
- (unint64_t)maxSize;
- (void)addObject:(id)a3;
- (void)setMaxSize:(unint64_t)a3;
@end

@implementation AMSCircularBuffer

- (unint64_t)count
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(AMSCircularBuffer *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__AMSCircularBuffer_count__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __26__AMSCircularBuffer_count__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) buffer];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (unint64_t)maxSize
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(AMSCircularBuffer *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__AMSCircularBuffer_maxSize__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (AMSCircularBuffer)initWithMaxSize:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = AMSCircularBuffer;
  v4 = [(AMSCircularBuffer *)&v10 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.AppleMediaServices.AMSCircularBuffer.access", 0);
    accessQueue = v4->_accessQueue;
    v4->_accessQueue = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    buffer = v4->_buffer;
    v4->_buffer = v7;

    v4->_currentIndex = 0;
    v4->_maxSize = a3;
  }

  return v4;
}

- (NSArray)allObjects
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__15;
  v15 = __Block_byref_object_dispose__15;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = [(AMSCircularBuffer *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__AMSCircularBuffer_allObjects__block_invoke;
  block[3] = &unk_1E73B5DD8;
  block[4] = self;
  block[5] = &v11;
  block[6] = &v7;
  dispatch_sync(v3, block);

  v4 = [AMSCircularBuffer _rearrangeObjects:v12[5] forCurrentIndex:v8[3]];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  return v4;
}

uint64_t __31__AMSCircularBuffer_allObjects__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) buffer];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  result = [*(a1 + 32) currentIndex];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)setMaxSize:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [(AMSCircularBuffer *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__AMSCircularBuffer_setMaxSize___block_invoke;
  v6[3] = &unk_1E73B5E00;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  v6[4] = self;
  dispatch_async(v5, v6);

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __32__AMSCircularBuffer_setMaxSize___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a1 + 48) != *(*(a1 + 32) + 8))
  {
    v11 = WeakRetained;
    v3 = [WeakRetained _flush];
    v4 = [v3 count];
    for (i = (v4 - *(a1 + 48)) & ~((v4 - *(a1 + 48)) >> 63); i < [v3 count]; ++i)
    {
      v6 = [v11 buffer];
      v7 = [v3 objectAtIndexedSubscript:i];
      [v6 addObject:v7];
    }

    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    if (v8 > *(v9 + 8))
    {
      v10 = [v11 buffer];
      [v11 setCurrentIndex:{objc_msgSend(v10, "count")}];

      v8 = *(a1 + 48);
      v9 = *(a1 + 32);
    }

    *(v9 + 8) = v8;

    WeakRetained = v11;
  }
}

- (void)addObject:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(AMSCircularBuffer *)self accessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__AMSCircularBuffer_addObject___block_invoke;
  v7[3] = &unk_1E73B5E28;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __31__AMSCircularBuffer_addObject___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(*(a1 + 32) + 8))
  {
    v2 = [WeakRetained currentIndex];
    v3 = [WeakRetained buffer];
    v4 = [v3 count];

    if (v2 < v4)
    {
      v5 = [WeakRetained buffer];
      [v5 removeObjectAtIndex:v2];
    }

    v6 = [WeakRetained buffer];
    [v6 insertObject:*(a1 + 40) atIndex:v2];

    if (v2 + 1 < *(*(a1 + 32) + 8))
    {
      v7 = v2 + 1;
    }

    else
    {
      v7 = 0;
    }

    [WeakRetained setCurrentIndex:v7];
  }
}

- (id)flush
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  v3 = [(AMSCircularBuffer *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__AMSCircularBuffer_flush__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __26__AMSCircularBuffer_flush__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _flush];

  return MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  v3 = [(AMSCircularBuffer *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__AMSCircularBuffer_description__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __32__AMSCircularBuffer_description__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) buffer];
  v2 = [v5 description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_flush
{
  v3 = [(AMSCircularBuffer *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(AMSCircularBuffer *)self buffer];
  v5 = [(AMSCircularBuffer *)self currentIndex];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_maxSize];
  [(AMSCircularBuffer *)self setBuffer:v6];

  [(AMSCircularBuffer *)self setCurrentIndex:0];
  v7 = [AMSCircularBuffer _rearrangeObjects:v4 forCurrentIndex:v5];

  return v7;
}

+ (id)_rearrangeObjects:(id)a3 forCurrentIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v5 count])
  {
    v7 = 0;
    do
    {
      if (a4 == [v5 count])
      {
        a4 = 0;
      }

      v8 = [v5 objectAtIndexedSubscript:a4];
      [v6 addObject:v8];

      ++a4;
      ++v7;
    }

    while (v7 < [v5 count]);
  }

  return v6;
}

@end