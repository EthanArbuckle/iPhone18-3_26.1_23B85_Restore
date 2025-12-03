@interface MTLRenderPassColorAttachmentDescriptorArrayInternal
- (id)_descriptorAtIndex:(unint64_t)index;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (void)dealloc;
- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript;
@end

@implementation MTLRenderPassColorAttachmentDescriptorArrayInternal

- (void)dealloc
{
  v3 = 0;
  color_descriptors = self->_color_descriptors;
  do
  {
  }

  while (v3 != 8);

  v5.receiver = self;
  v5.super_class = MTLRenderPassColorAttachmentDescriptorArrayInternal;
  [(MTLRenderPassColorAttachmentDescriptorArrayInternal *)&v5 dealloc];
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  if (subscript >= 8)
  {
    [(MTLRenderPassColorAttachmentDescriptorArrayInternal *)subscript objectAtIndexedSubscript:a2, subscript, v3, v4, v5, v6, v7];
  }

  color_descriptors = self->_color_descriptors;
  result = color_descriptors[subscript];
  if (!result)
  {
    result = objc_alloc_init(MTLRenderPassColorAttachmentDescriptorInternal);
    v12 = 0;
    atomic_compare_exchange_strong(&color_descriptors[subscript], &v12, result);
    if (v12)
    {

      return color_descriptors[subscript];
    }

    else
    {
      color_descriptors[subscript] = result;
    }
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
      [(MTLRenderPassColorAttachmentDescriptorArrayInternal *)isKindOfClass setObject:a2 atIndexedSubscript:object, subscript, v4, v5, v6, v7, v13];
    }
  }

  if (subscript >= 8)
  {
    [(MTLRenderPassColorAttachmentDescriptorArrayInternal *)subscript setObject:a2 atIndexedSubscript:object, subscript, v4, v5, v6, v7];
  }

  color_descriptors = self->_color_descriptors;
  if (color_descriptors[subscript] != object)
  {
    v14 = color_descriptors[subscript];
    color_descriptors[subscript] = [object copy];
  }
}

- (id)_descriptorAtIndex:(unint64_t)index
{
  if (index <= 7)
  {
    v3 = &self->_color_descriptors[index];
    return *v3;
  }

  if (index == 9)
  {
    v4 = 80;
    goto LABEL_7;
  }

  if (index == 8)
  {
    v4 = 72;
LABEL_7:
    v3 = (&self->super.super.isa + v4);
    return *v3;
  }

  return 0;
}

@end