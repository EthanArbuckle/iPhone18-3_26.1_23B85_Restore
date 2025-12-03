@interface MTLVertexAttributeDescriptorArrayInternal
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (void)dealloc;
- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript;
@end

@implementation MTLVertexAttributeDescriptorArrayInternal

- (void)dealloc
{
  v3 = 0;
  descriptors = self->_descriptors;
  do
  {
  }

  while (v3 != 31);
  v5.receiver = self;
  v5.super_class = MTLVertexAttributeDescriptorArrayInternal;
  [(MTLVertexAttributeDescriptorArrayInternal *)&v5 dealloc];
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  if (subscript >= 0x1F)
  {
    [MTLVertexAttributeDescriptorArrayInternal objectAtIndexedSubscript:];
  }

  descriptors = self->_descriptors;
  result = descriptors[subscript];
  if (!result)
  {
    result = objc_alloc_init(MTLVertexAttributeDescriptorInternal);
    descriptors[subscript] = result;
  }

  return result;
}

- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript
{
  if (object)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLVertexAttributeDescriptorArrayInternal *)isKindOfClass setObject:v8 atIndexedSubscript:v9, v10, v11, v12, v13, v14, v16];
    }
  }

  if (subscript >= 0x1F)
  {
    [MTLVertexAttributeDescriptorArrayInternal setObject:atIndexedSubscript:];
  }

  descriptors = self->_descriptors;
  if (descriptors[subscript] != object)
  {
    v17 = descriptors[subscript];
    descriptors[subscript] = [object copy];
  }
}

@end