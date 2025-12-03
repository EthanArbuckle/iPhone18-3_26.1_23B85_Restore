@interface MTLPipelineBufferDescriptorArrayInternal
- (BOOL)isEqual:(id)equal;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (void)dealloc;
- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript;
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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(isDefault) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(equal))
    {
      v7 = 0;
      descriptors = self->_descriptors;
      v9 = equal + 8;
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
              isDefault = [(MTLPipelineBufferDescriptorInternal *)v10 isDefault];
              if (!isDefault)
              {
                return isDefault;
              }

              v11 = *&v9[v7 * 8];
            }

            if (v11)
            {
              isDefault = [(MTLPipelineBufferDescriptorInternal *)v11 isDefault];
              if (!isDefault)
              {
                return isDefault;
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
      LOBYTE(isDefault) = 1;
    }

    else
    {
LABEL_3:
      LOBYTE(isDefault) = 0;
    }
  }

  return isDefault;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  if (subscript >= 0x1F)
  {
    [(MTLPipelineBufferDescriptorArrayInternal *)subscript objectAtIndexedSubscript:a2, subscript, v3, v4, v5, v6, v7];
  }

  descriptors = self->_descriptors;
  result = descriptors[subscript];
  if (!result)
  {
    result = objc_alloc_init(MTLPipelineBufferDescriptorInternal);
    v12 = 0;
    atomic_compare_exchange_strong(&descriptors[subscript], &v12, result);
    if (v12)
    {

      return descriptors[subscript];
    }

    else
    {
      descriptors[subscript] = result;
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
      [(MTLPipelineBufferDescriptorArrayInternal *)isKindOfClass setObject:a2 atIndexedSubscript:object, subscript, v4, v5, v6, v7, v13];
    }
  }

  if (subscript >= 0x1F)
  {
    [(MTLPipelineBufferDescriptorArrayInternal *)subscript setObject:a2 atIndexedSubscript:object, subscript, v4, v5, v6, v7];
  }

  descriptors = self->_descriptors;
  if (descriptors[subscript] != object)
  {
    v14 = descriptors[subscript];
    descriptors[subscript] = [object copy];
  }
}

@end