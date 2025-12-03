@interface MDLMeshBufferZoneDefault
- (BOOL)reserveMemory:(unint64_t)memory allocator:(id)allocator;
- (MDLMeshBufferZoneDefault)initWithCapacity:(unint64_t)capacity allocator:(id)allocator;
@end

@implementation MDLMeshBufferZoneDefault

- (MDLMeshBufferZoneDefault)initWithCapacity:(unint64_t)capacity allocator:(id)allocator
{
  allocatorCopy = allocator;
  v11.receiver = self;
  v11.super_class = MDLMeshBufferZoneDefault;
  v8 = [(MDLMeshBufferZoneDefault *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_capacity = capacity;
    objc_storeStrong(&v8->_allocator, allocator);
  }

  return v9;
}

- (BOOL)reserveMemory:(unint64_t)memory allocator:(id)allocator
{
  allocatorCopy = allocator;
  v7 = allocatorCopy;
  if (!memory)
  {
    goto LABEL_8;
  }

  v8 = self->_usedCapacity + memory;
  if (v8 >= self->_capacity)
  {
    NSLog(&cfstr_NoMemoryAvalia.isa);
    goto LABEL_6;
  }

  if (self->_allocator == allocatorCopy)
  {
    self->_usedCapacity = v8;
LABEL_8:
    v9 = 1;
    goto LABEL_9;
  }

  NSLog(&cfstr_IncorrectAlloc.isa);
LABEL_6:
  v9 = 0;
LABEL_9:

  return v9;
}

@end