@interface AGXTimestampCounterHeap
- (AGXTimestampCounterHeap)initWithDevice:(id)device descriptor:(id)descriptor error:(id *)error;
- (id)resolveCounterRange:(_NSRange)range;
- (void)dealloc;
- (void)fillWithByte:(unsigned __int8)byte;
- (void)invalidateCounterRange:(_NSRange)range;
- (void)setLabel:(id)label;
@end

@implementation AGXTimestampCounterHeap

- (void)fillWithByte:(unsigned __int8)byte
{
  byteCopy = byte;
  contents = [(IOGPUMetalBuffer *)self->heap_backing contents];
  v6 = [(IOGPUMetalBuffer *)self->heap_backing length];

  memset(contents, byteCopy, v6);
}

- (void)invalidateCounterRange:(_NSRange)range
{
  v4 = 8 * range.location;
  v5 = 8 * range.length;
  if (8 * range.location + 8 * range.length > [(IOGPUMetalBuffer *)self->heap_backing length])
  {
    v5 = [(IOGPUMetalBuffer *)self->heap_backing length]- v4;
  }

  contents = [(IOGPUMetalBuffer *)self->heap_backing contents];

  bzero(contents, v5);
}

- (id)resolveCounterRange:(_NSRange)range
{
  if (!range.length || range.location + range.length > self->count)
  {
    return 0;
  }

  length = range.length;
  v6 = [(IOGPUMetalBuffer *)self->heap_backing contents]+ 8 * range.location;
  v7 = MEMORY[0x29EDB8DA0];

  return [v7 dataWithBytes:v6 length:8 * length];
}

- (void)setLabel:(id)label
{
  heap_backing = self->heap_backing;
  if (heap_backing)
  {
    [(IOGPUMetalResource *)heap_backing setLabel:label];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AGXTimestampCounterHeap;
  [(AGXTimestampCounterHeap *)&v3 dealloc];
}

- (AGXTimestampCounterHeap)initWithDevice:(id)device descriptor:(id)descriptor error:(id *)error
{
  v23[1] = *MEMORY[0x29EDCA608];
  v17.receiver = self;
  v17.super_class = AGXTimestampCounterHeap;
  v8 = [(AGXTimestampCounterHeap *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_device = device;
    v8->count = [descriptor entryCount];
    v9->type = 1;
    v10 = 8 * [descriptor entryCount];
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
      4096 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Requested Heap size is too large (requested %llu max is %llu)", objc_msgSend(descriptor, "entryCount"), 4096];
      v12 = MEMORY[0x29EDB8DC0];
      v13 = &4096;
      v14 = &v20;
LABEL_8:
      *error = [v11 errorWithDomain:@"MTLTimestampCounterHeapDomain" code:1 userInfo:{objc_msgSend(v12, "dictionaryWithObjects:forKeys:count:", v13, v14, 1)}];
      fwrite("AGX: MTLCounterHeap: Invalid heap size requested.\n", 0x32uLL, 1uLL, *MEMORY[0x29EDCA610]);

      return 0;
    }

    v15 = [[AGXBuffer alloc] initCounterSampleBufferWithDevice:device length:v10 options:0];
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