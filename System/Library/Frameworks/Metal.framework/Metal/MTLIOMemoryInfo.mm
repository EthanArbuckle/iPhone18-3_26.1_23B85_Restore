@interface MTLIOMemoryInfo
+ (id)initialize;
- (MTLIOMemoryInfo)init;
- (__CFArray)annotationList;
- (void)addResourceToList:(id)list;
- (void)dealloc;
- (void)removeResourceFromList:(id)list;
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

    copyAnnotations = [(MTLIOAccelResource *)fResourceListHead copyAnnotations];
    if (copyAnnotations)
    {
      v6 = copyAnnotations;
      v8.length = CFArrayGetCount(copyAnnotations);
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

- (void)addResourceToList:(id)list
{
  os_unfair_lock_lock(&self->_memoryInfoLock);
  fResourceListHead = self->fResourceListHead;
  *(list + 35) = fResourceListHead;
  *(list + 36) = fResourceListHead->prev;
  self->fResourceListHead->prev->next = list;
  self->fResourceListHead->prev = list;

  os_unfair_lock_unlock(&self->_memoryInfoLock);
}

- (void)removeResourceFromList:(id)list
{
  os_unfair_lock_lock(&self->_memoryInfoLock);
  *(*(list + 35) + 288) = *(list + 36);
  *(*(list + 36) + 280) = *(list + 35);
  *(list + 35) = 0;
  *(list + 36) = 0;

  os_unfair_lock_unlock(&self->_memoryInfoLock);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLIOMemoryInfo;
  [(MTLIOMemoryInfo *)&v3 dealloc];
}

@end