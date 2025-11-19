@interface MDLMeshBufferZoneDefault
- (BOOL)reserveMemory:(unint64_t)a3 allocator:(id)a4;
- (MDLMeshBufferZoneDefault)initWithCapacity:(unint64_t)a3 allocator:(id)a4;
@end

@implementation MDLMeshBufferZoneDefault

- (MDLMeshBufferZoneDefault)initWithCapacity:(unint64_t)a3 allocator:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MDLMeshBufferZoneDefault;
  v8 = [(MDLMeshBufferZoneDefault *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_capacity = a3;
    objc_storeStrong(&v8->_allocator, a4);
  }

  return v9;
}

- (BOOL)reserveMemory:(unint64_t)a3 allocator:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!a3)
  {
    goto LABEL_8;
  }

  v8 = self->_usedCapacity + a3;
  if (v8 >= self->_capacity)
  {
    NSLog(&cfstr_NoMemoryAvalia.isa);
    goto LABEL_6;
  }

  if (self->_allocator == v6)
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