@interface MTLPipelineBufferDescriptorArrayInternal
- (BOOL)isEqual:(id)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (void)dealloc;
- (void)setObject:(id)a3 atIndexedSubscript:(unint64_t)a4;
@end

@implementation MTLPipelineBufferDescriptorArrayInternal

- (void)dealloc
{
  v3 = 0;
  descriptors = self->_descriptors;
  do
  {
  }

  while (v3 != 31);
  v5.receiver = self;
  v5.super_class = MTLPipelineBufferDescriptorArrayInternal;
  [(MTLPipelineBufferDescriptorArrayInternal *)&v5 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(a3))
    {
      v7 = 0;
      descriptors = self->_descriptors;
      v9 = a3 + 8;
      do
      {
        v10 = descriptors[v7];
        v11 = *&v9[v7 * 8];
        if (v10 != v11)
        {
          if (v10)
          {
            v12 = v11 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            if (v10)
            {
              v6 = [(MTLPipelineBufferDescriptorInternal *)v10 isDefault];
              if (!v6)
              {
                return v6;
              }

              v11 = *&v9[v7 * 8];
            }

            if (v11)
            {
              v6 = [(MTLPipelineBufferDescriptorInternal *)v11 isDefault];
              if (!v6)
              {
                return v6;
              }
            }
          }

          else if (![(MTLPipelineBufferDescriptorInternal *)v10 isEqual:?])
          {
            goto LABEL_3;
          }
        }

        ++v7;
      }

      while (v7 != 31);
      LOBYTE(v6) = 1;
    }

    else
    {
LABEL_3:
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  if (a3 >= 0x1F)
  {
    [(MTLPipelineBufferDescriptorArrayInternal *)a3 objectAtIndexedSubscript:a2, a3, v3, v4, v5, v6, v7];
  }

  descriptors = self->_descriptors;
  result = descriptors[a3];
  if (!result)
  {
    result = objc_alloc_init(MTLPipelineBufferDescriptorInternal);
    v12 = 0;
    atomic_compare_exchange_strong(&descriptors[a3], &v12, result);
    if (v12)
    {

      return descriptors[a3];
    }

    else
    {
      descriptors[a3] = result;
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
      [(MTLPipelineBufferDescriptorArrayInternal *)isKindOfClass setObject:a2 atIndexedSubscript:a3, a4, v4, v5, v6, v7, v13];
    }
  }

  if (a4 >= 0x1F)
  {
    [(MTLPipelineBufferDescriptorArrayInternal *)a4 setObject:a2 atIndexedSubscript:a3, a4, v4, v5, v6, v7];
  }

  descriptors = self->_descriptors;
  if (descriptors[a4] != a3)
  {
    v14 = descriptors[a4];
    descriptors[a4] = [a3 copy];
  }
}

@end