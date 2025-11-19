@interface MTLIOCommandQueueDescriptor
- (BOOL)isEqual:(id)a3;
- (MTLIOCommandQueueDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLIOCommandQueueDescriptor

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setMaxCommandBufferCount:{-[MTLIOCommandQueueDescriptor maxCommandBufferCount](self, "maxCommandBufferCount")}];
  [v4 setPriority:{-[MTLIOCommandQueueDescriptor priority](self, "priority")}];
  [v4 setScratchBufferAllocator:{-[MTLIOCommandQueueDescriptor scratchBufferAllocator](self, "scratchBufferAllocator")}];
  [v4 setType:{-[MTLIOCommandQueueDescriptor type](self, "type")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    return 0;
  }

  v6 = [(MTLIOCommandQueueDescriptor *)self maxCommandBufferCount];
  if (v6 != [a3 maxCommandBufferCount])
  {
    return 0;
  }

  v7 = [(MTLIOCommandQueueDescriptor *)self priority];
  if (v7 != [a3 priority] || (objc_msgSend(-[MTLIOCommandQueueDescriptor scratchBufferAllocator](self, "scratchBufferAllocator"), "isEqual:", objc_msgSend(a3, "scratchBufferAllocator")) & 1) != 0)
  {
    return 0;
  }

  v9 = [(MTLIOCommandQueueDescriptor *)self type];
  return v9 == [a3 type];
}

- (unint64_t)hash
{
  bzero(&v4, 0x28uLL);
  v5 = [(MTLIOCommandQueueDescriptor *)self maxCommandBufferCount];
  v6 = [(MTLIOCommandQueueDescriptor *)self priority];
  v7 = [-[MTLIOCommandQueueDescriptor scratchBufferAllocator](self "scratchBufferAllocator")];
  v8 = [(MTLIOCommandQueueDescriptor *)self type];
  return _MTLHashState(&v4, 0x28uLL);
}

- (MTLIOCommandQueueDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLIOCommandQueueDescriptor;
  result = [(MTLIOCommandQueueDescriptor *)&v3 init];
  if (result)
  {
    result->_type = 0;
    result->_maxWorkerThreads = 4;
    *&result->_maxCommandBufferCount = xmmword_185DE23B0;
    result->_scratchBufferAllocator = 0;
  }

  return result;
}

- (id)formattedDescription:(unint64_t)a3
{
  v15[12] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = MTLIOCommandQueueDescriptor;
  v6 = [(MTLIOCommandQueueDescriptor *)&v14 description];
  v15[0] = v4;
  v15[1] = @"maxCommandBufferCount =";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxCommandBufferCount];
  v8 = 0;
  v15[2] = v7;
  v15[3] = v4;
  v15[4] = @"priority =";
  priority = self->_priority;
  if (priority <= 2)
  {
    v8 = off_1E6EEBF20[priority];
  }

  v15[5] = v8;
  v15[6] = v4;
  scratchBufferAllocator = self->_scratchBufferAllocator;
  type = self->_type;
  v15[7] = @"scratchBufferAllocator =";
  v15[8] = scratchBufferAllocator;
  v15[9] = v4;
  v15[10] = @"type =";
  v15[11] = [MEMORY[0x1E696AD98] numberWithInteger:type];
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 12), "componentsJoinedByString:", @" "];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLIOCommandQueueDescriptor;
  [(MTLIOCommandQueueDescriptor *)&v3 dealloc];
}

@end