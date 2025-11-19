@interface MTLIOMemoryInfo
+ (id)initialize;
- (MTLIOMemoryInfo)init;
- (__CFArray)annotationList;
- (void)addResourceToList:(id)a3;
- (void)dealloc;
- (void)removeResourceFromList:(id)a3;
- (void)shutdown;
@end

@implementation MTLIOMemoryInfo

+ (id)initialize
{
  if (initialize_been_here != -1)
  {
    +[MTLIOMemoryInfo initialize];
  }

  return _memoryInfo;
}

uint64_t __29__MTLIOMemoryInfo_initialize__block_invoke()
{
  _memoryInfo = objc_alloc_init(MTLIOMemoryInfo);
  result = [_memoryInfo addDataSource:&__block_literal_global_3];
  *(_memoryInfo + 8) = result;
  return result;
}

- (__CFArray)annotationList
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  fResourceListHead = self->fResourceListHead;
  os_unfair_lock_lock(&self->_memoryInfoLock);
  while (1)
  {
    fResourceListHead = fResourceListHead->next;
    if (fResourceListHead == self->fResourceListHead)
    {
      break;
    }

    v5 = [(MTLIOAccelResource *)fResourceListHead copyAnnotations];
    if (v5)
    {
      v6 = v5;
      v8.length = CFArrayGetCount(v5);
      v8.location = 0;
      CFArrayAppendArray(Mutable, v6, v8);
      CFRelease(v6);
    }
  }

  os_unfair_lock_unlock(&self->_memoryInfoLock);
  return Mutable;
}

- (void)shutdown
{
  [(MTLIOMemoryInfo *)self removeDataSource:self->memlist_key];

  [(MTLIOMemoryInfo *)self dealloc];
}

- (MTLIOMemoryInfo)init
{
  v6.receiver = self;
  v6.super_class = MTLIOMemoryInfo;
  v2 = [(MTLIOMemoryInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_memoryInfoLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MTLIOAccelResource);
    v3->fResourceListHead = v4;
    v4->next = v4;
    v3->fResourceListHead->prev = v3->fResourceListHead;
  }

  return v3;
}

- (void)addResourceToList:(id)a3
{
  os_unfair_lock_lock(&self->_memoryInfoLock);
  fResourceListHead = self->fResourceListHead;
  *(a3 + 35) = fResourceListHead;
  *(a3 + 36) = fResourceListHead->prev;
  self->fResourceListHead->prev->next = a3;
  self->fResourceListHead->prev = a3;

  os_unfair_lock_unlock(&self->_memoryInfoLock);
}

- (void)removeResourceFromList:(id)a3
{
  os_unfair_lock_lock(&self->_memoryInfoLock);
  *(*(a3 + 35) + 288) = *(a3 + 36);
  *(*(a3 + 36) + 280) = *(a3 + 35);
  *(a3 + 35) = 0;
  *(a3 + 36) = 0;

  os_unfair_lock_unlock(&self->_memoryInfoLock);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLIOMemoryInfo;
  [(MTLIOMemoryInfo *)&v3 dealloc];
}

@end