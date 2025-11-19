@interface MTLAttributeDescriptorArrayInternal
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (void)dealloc;
- (void)setObject:(id)a3 atIndexedSubscript:(unint64_t)a4;
@end

@implementation MTLAttributeDescriptorArrayInternal

- (void)dealloc
{
  v3 = 0;
  descriptors = self->_descriptors;
  do
  {
  }

  while (v3 != 31);
  v5.receiver = self;
  v5.super_class = MTLAttributeDescriptorArrayInternal;
  [(MTLAttributeDescriptorArrayInternal *)&v5 dealloc];
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  if (a3 >= 0x1F)
  {
    [MTLAttributeDescriptorArrayInternal objectAtIndexedSubscript:];
  }

  descriptors = self->_descriptors;
  result = descriptors[a3];
  if (!result)
  {
    result = objc_alloc_init(MTLAttributeDescriptorInternal);
    descriptors[a3] = result;
  }

  return result;
}

- (void)setObject:(id)a3 atIndexedSubscript:(unint64_t)a4
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLAttributeDescriptorArrayInternal *)isKindOfClass setObject:v8 atIndexedSubscript:v9, v10, v11, v12, v13, v14, v16];
    }
  }

  if (a4 >= 0x1F)
  {
    [MTLAttributeDescriptorArrayInternal setObject:atIndexedSubscript:];
  }

  descriptors = self->_descriptors;
  if (descriptors[a4] != a3)
  {
    v17 = descriptors[a4];
    descriptors[a4] = [a3 copy];
  }
}

@end