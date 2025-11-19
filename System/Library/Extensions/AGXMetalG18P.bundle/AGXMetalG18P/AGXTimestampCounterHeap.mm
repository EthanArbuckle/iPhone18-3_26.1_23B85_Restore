@interface AGXTimestampCounterHeap
- (AGXTimestampCounterHeap)initWithDevice:(id)a3 descriptor:(id)a4 error:(id *)a5;
- (id)resolveCounterRange:(_NSRange)a3;
- (void)dealloc;
- (void)fillWithByte:(unsigned __int8)a3;
- (void)invalidateCounterRange:(_NSRange)a3;
- (void)setLabel:(id)a3;
@end

@implementation AGXTimestampCounterHeap

- (void)fillWithByte:(unsigned __int8)a3
{
  v3 = a3;
  v5 = [(IOGPUMetalBuffer *)self->heap_backing contents];
  v6 = [(IOGPUMetalBuffer *)self->heap_backing length];

  memset(v5, v3, v6);
}

- (void)invalidateCounterRange:(_NSRange)a3
{
  v4 = 8 * a3.location;
  v5 = 8 * a3.length;
  if (8 * a3.location + 8 * a3.length > [(IOGPUMetalBuffer *)self->heap_backing length])
  {
    v5 = [(IOGPUMetalBuffer *)self->heap_backing length]- v4;
  }

  v6 = [(IOGPUMetalBuffer *)self->heap_backing contents];

  bzero(v6, v5);
}

- (id)resolveCounterRange:(_NSRange)a3
{
  if (!a3.length || a3.location + a3.length > self->count)
  {
    return 0;
  }

  length = a3.length;
  v6 = [(IOGPUMetalBuffer *)self->heap_backing contents]+ 8 * a3.location;
  v7 = MEMORY[0x29EDB8DA0];

  return [v7 dataWithBytes:v6 length:8 * length];
}

- (void)setLabel:(id)a3
{
  heap_backing = self->heap_backing;
  if (heap_backing)
  {
    [(IOGPUMetalResource *)heap_backing setLabel:a3];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AGXTimestampCounterHeap;
  [(AGXTimestampCounterHeap *)&v3 dealloc];
}

- (AGXTimestampCounterHeap)initWithDevice:(id)a3 descriptor:(id)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x29EDCA608];
  v17.receiver = self;
  v17.super_class = AGXTimestampCounterHeap;
  v8 = [(AGXTimestampCounterHeap *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_device = a3;
    v8->count = [a4 entryCount];
    v9->type = 1;
    v10 = 8 * [a4 entryCount];
    if (!v10)
    {
      v11 = MEMORY[0x29EDB9FA0];
      v22 = *MEMORY[0x29EDB9ED8];
      v23[0] = @"Heap size cannot be 0";
      v12 = MEMORY[0x29EDB8DC0];
      v13 = v23;
      v14 = &v22;
      goto LABEL_8;
    }

    if (v10 > 0x8000)
    {
      v11 = MEMORY[0x29EDB9FA0];
      v20 = *MEMORY[0x29EDB9ED8];
      v21 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Requested Heap size is too large (requested %llu max is %llu)", objc_msgSend(a4, "entryCount"), 4096];
      v12 = MEMORY[0x29EDB8DC0];
      v13 = &v21;
      v14 = &v20;
LABEL_8:
      *a5 = [v11 errorWithDomain:@"MTLTimestampCounterHeapDomain" code:1 userInfo:{objc_msgSend(v12, "dictionaryWithObjects:forKeys:count:", v13, v14, 1)}];
      fwrite("AGX: MTLCounterHeap: Invalid heap size requested.\n", 0x32uLL, 1uLL, *MEMORY[0x29EDCA610]);

      return 0;
    }

    v15 = [[AGXBuffer alloc] initCounterSampleBufferWithDevice:a3 length:v10 options:0];
    v9->heap_backing = v15;
    if (!v15)
    {
      v11 = MEMORY[0x29EDB9FA0];
      v18 = *MEMORY[0x29EDB9ED8];
      v19 = @"Cannot create heap; there are too many heaps already allocated in this process or on the system.";
      v12 = MEMORY[0x29EDB8DC0];
      v13 = &v19;
      v14 = &v18;
      goto LABEL_8;
    }
  }

  return v9;
}

@end