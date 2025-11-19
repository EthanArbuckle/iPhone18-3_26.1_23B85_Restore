@interface MTLRenderPassColorAttachmentDescriptorArrayInternal
- (id)_descriptorAtIndex:(unint64_t)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (void)dealloc;
- (void)setObject:(id)a3 atIndexedSubscript:(unint64_t)a4;
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

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  if (a3 >= 8)
  {
    [(MTLRenderPassColorAttachmentDescriptorArrayInternal *)a3 objectAtIndexedSubscript:a2, a3, v3, v4, v5, v6, v7];
  }

  color_descriptors = self->_color_descriptors;
  result = color_descriptors[a3];
  if (!result)
  {
    result = objc_alloc_init(MTLRenderPassColorAttachmentDescriptorInternal);
    v12 = 0;
    atomic_compare_exchange_strong(&color_descriptors[a3], &v12, result);
    if (v12)
    {

      return color_descriptors[a3];
    }

    else
    {
      color_descriptors[a3] = result;
    }
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
      [(MTLRenderPassColorAttachmentDescriptorArrayInternal *)isKindOfClass setObject:a2 atIndexedSubscript:a3, a4, v4, v5, v6, v7, v13];
    }
  }

  if (a4 >= 8)
  {
    [(MTLRenderPassColorAttachmentDescriptorArrayInternal *)a4 setObject:a2 atIndexedSubscript:a3, a4, v4, v5, v6, v7];
  }

  color_descriptors = self->_color_descriptors;
  if (color_descriptors[a4] != a3)
  {
    v14 = color_descriptors[a4];
    color_descriptors[a4] = [a3 copy];
  }
}

- (id)_descriptorAtIndex:(unint64_t)a3
{
  if (a3 <= 7)
  {
    v3 = &self->_color_descriptors[a3];
    return *v3;
  }

  if (a3 == 9)
  {
    v4 = 80;
    goto LABEL_7;
  }

  if (a3 == 8)
  {
    v4 = 72;
LABEL_7:
    v3 = (&self->super.super.isa + v4);
    return *v3;
  }

  return 0;
}

@end