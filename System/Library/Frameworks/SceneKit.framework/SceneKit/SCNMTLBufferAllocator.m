@interface SCNMTLBufferAllocator
- (SCNMTLBufferAllocator)initWithDevice:(id)a3 fixedSizeElement:(unint64_t)a4 buffersize:(unint64_t)a5 name:(id)a6;
- (id)_newSubBuffer;
- (id)newSubBufferWithBytes:(const void *)a3 length:(unint64_t)a4 renderContext:(id)a5;
- (void)dealloc;
@end

@implementation SCNMTLBufferAllocator

- (SCNMTLBufferAllocator)initWithDevice:(id)a3 fixedSizeElement:(unint64_t)a4 buffersize:(unint64_t)a5 name:(id)a6
{
  v15.receiver = self;
  v15.super_class = SCNMTLBufferAllocator;
  v10 = [(SCNMTLBufferAllocator *)&v15 init];
  v10->_device = a3;
  v11 = [a6 copy];
  v12 = (a4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = a5 / a4;
  if (a4 > a5)
  {
    v13 = 100;
  }

  v10->_elementSize = v12;
  v10->_name = v11;
  v10->_bufferSize = v13 * v12;
  v10->_pages = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
  v10->_allocatorLock._os_unfair_lock_opaque = 0;
  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLBufferAllocator;
  [(SCNMTLBufferAllocator *)&v3 dealloc];
}

- (id)_newSubBuffer
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_allocatorLock);
  if (![(SCNFixedSizePage *)self->_currentAllocatorPage hasFreeElementsLeft])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    pages = self->_pages;
    v4 = [(NSMutableArray *)pages countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(pages);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          if ([(SCNFixedSizePage *)v8 hasFreeElementsLeft])
          {
            self->_currentAllocatorPage = v8;
            currentAllocatorPage = v8;
            goto LABEL_13;
          }
        }

        v5 = [(NSMutableArray *)pages countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v9 = [(MTLDevice *)self->_device newBufferWithLength:self->_bufferSize options:32];
    self->_currentAllocatorPage = [[SCNFixedSizePage alloc] initWithBuffer:v9 elementSize:self->_elementSize];

    [(NSMutableArray *)self->_pages addObject:self->_currentAllocatorPage];
  }

  currentAllocatorPage = self->_currentAllocatorPage;
LABEL_13:
  v11 = [(SCNFixedSizePage *)currentAllocatorPage newSubBufferForAllocator:self];
  os_unfair_lock_unlock(&self->_allocatorLock);
  return v11;
}

- (id)newSubBufferWithBytes:(const void *)a3 length:(unint64_t)a4 renderContext:(id)a5
{
  p_elementSize = &self->_elementSize;
  if (self->_elementSize < a4)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [SCNMTLBufferAllocator newSubBufferWithBytes:a4 length:p_elementSize renderContext:v10];
    }
  }

  v11 = [(SCNMTLBufferAllocator *)self _newSubBuffer];
  v12 = [(MTLDevice *)self->_device newBufferWithBytes:a3 length:a4 options:1];
  [*-[SCNMTLRenderContext resourceBlitEncoder](a5) copyFromBuffer:v12 sourceOffset:0 toBuffer:objc_msgSend(v11 destinationOffset:"buffer") size:{objc_msgSend(v11, "offset"), a4}];

  return v11;
}

- (void)newSubBufferWithBytes:(int)a1 length:(uint64_t *)a2 renderContext:(os_log_t)log .cold.1(int a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 136315650;
  v5 = "length <= _elementSize";
  v6 = 1024;
  v7 = a1;
  v8 = 1024;
  v9 = v3;
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. subBuffer size overflow %d > %d", &v4, 0x18u);
}

@end