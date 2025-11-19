@interface MTL4MachineLearningPipelineDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4MachineLearningPipelineDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)inputDimensionsAtBufferIndex:(int64_t)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)reset;
- (void)setInputDimensions:(id)a3 atBufferIndex:(int64_t)a4;
- (void)setInputDimensions:(id)a3 withRange:(_NSRange)a4;
@end

@implementation MTL4MachineLearningPipelineDescriptor

- (MTL4MachineLearningPipelineDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4MachineLearningPipelineDescriptor;
  return [(MTL4PipelineDescriptor *)&v3 init];
}

- (void)dealloc
{
  self->_machineLearningFunctionDescriptor = 0;
  extents = self->_extents;
  if (extents)
  {
    v4 = extents[2];
    if (!v4)
    {
      goto LABEL_5;
    }

    do
    {

      v4 = *v4;
    }

    while (v4);
    extents = self->_extents;
    if (extents)
    {
LABEL_5:
      v5 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(extents);
      MEMORY[0x1865FF210](v5, 0x10A0C408EF24B1CLL);
    }
  }

  self->_extents = 0;
  v6.receiver = self;
  v6.super_class = MTL4MachineLearningPipelineDescriptor;
  [(MTL4PipelineDescriptor *)&v6 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = MTL4MachineLearningPipelineDescriptor;
  v5 = [(MTL4PipelineDescriptor *)&v7 copyWithZone:?];
  v5[5] = [(MTL4FunctionDescriptor *)self->_machineLearningFunctionDescriptor copyWithZone:a3];
  v5[7] = self->_deviceSelection;
  if (self->_extents)
  {
    operator new();
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v17 = v3;
    v18 = v4;
    Class = object_getClass(self);
    if (Class != object_getClass(a3))
    {
      goto LABEL_3;
    }

    v16.receiver = self;
    v16.super_class = MTL4MachineLearningPipelineDescriptor;
    LODWORD(v8) = [(MTL4PipelineDescriptor *)&v16 isEqual:a3];
    if (!v8)
    {
      return v8;
    }

    if (self->_deviceSelection != *(a3 + 7))
    {
      goto LABEL_3;
    }

    machineLearningFunctionDescriptor = self->_machineLearningFunctionDescriptor;
    if (machineLearningFunctionDescriptor == *(a3 + 5) || (LODWORD(v8) = [(MTL4FunctionDescriptor *)machineLearningFunctionDescriptor isEqual:?], v8))
    {
      extents = self->_extents;
      v11 = *(a3 + 6);
      if (extents)
      {
        if (v11 && extents[3] == *(v11 + 24))
        {
          v12 = (extents + 2);
          while (1)
          {
            v12 = *v12;
            if (!v12)
            {
              break;
            }

            v15 = *(v12 + 1);
            v8 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(*(a3 + 6), &v15);
            if (v8)
            {
              v13 = operator==([*(&v15 + 1) tensorExtentsInternal], objc_msgSend(v8[3], "tensorExtentsInternal"));
              LOBYTE(v8) = 0;
              if (v13)
              {
                continue;
              }
            }

            return v8;
          }

          goto LABEL_19;
        }
      }

      else if (!v11)
      {
LABEL_19:
        LOBYTE(v8) = 1;
        return v8;
      }

LABEL_3:
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v24, 0x20uLL);
  v3 = [(MTL4FunctionDescriptor *)self->_machineLearningFunctionDescriptor hash];
  deviceSelection = self->_deviceSelection;
  v24[0] = v3;
  v24[1] = 0;
  extents = self->_extents;
  if (extents)
  {
    v5 = extents[3];
    if (v5)
    {
      __src = 0;
      v22 = 0;
      v23 = 0;
      std::vector<unsigned long>::reserve(&__src, v5);
      v6 = *(self->_extents + 2);
      if (v6)
      {
        v7 = v22;
        do
        {
          v8 = v6[2];
          if (v7 >= v23)
          {
            v9 = __src;
            v10 = v7 - __src;
            v11 = (v7 - __src) >> 3;
            v12 = v11 + 1;
            if ((v11 + 1) >> 61)
            {
              std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
            }

            v13 = v23 - __src;
            if ((v23 - __src) >> 2 > v12)
            {
              v12 = v13 >> 2;
            }

            if (v13 >= 0x7FFFFFFFFFFFFFF8)
            {
              v14 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v14 = v12;
            }

            if (v14)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<MTLTagType>>(&__src, v14);
            }

            v15 = v11;
            v16 = (8 * v11);
            v17 = &v16[-v15];
            *v16 = v8;
            v7 = (v16 + 1);
            memcpy(v17, v9, v10);
            v18 = __src;
            __src = v17;
            v22 = v7;
            v23 = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            *v7 = v8;
            v7 += 8;
          }

          v22 = v7;
          v6 = *v6;
        }

        while (v6);
      }

      std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
      if (!(v5 >> 60))
      {
        operator new();
      }

      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }
  }

  v20.receiver = self;
  v20.super_class = MTL4MachineLearningPipelineDescriptor;
  v26 = [(MTL4PipelineDescriptor *)&v20 hash];
  return _MTLHashState(v24, 0x20uLL);
}

- (void)reset
{
  extents = self->_extents;
  if (extents)
  {
    v4 = extents[2];
    if (!v4)
    {
      goto LABEL_5;
    }

    do
    {

      v4 = *v4;
    }

    while (v4);
    extents = self->_extents;
    if (extents)
    {
LABEL_5:
      v5 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(extents);
      MEMORY[0x1865FF210](v5, 0x10A0C408EF24B1CLL);
    }
  }

  self->_extents = 0;

  self->_machineLearningFunctionDescriptor = 0;
  self->_deviceSelection = 0;
  v6.receiver = self;
  v6.super_class = MTL4MachineLearningPipelineDescriptor;
  [(MTL4PipelineDescriptor *)&v6 reset];
}

- (void)setInputDimensions:(id)a3 atBufferIndex:(int64_t)a4
{
  v10 = a4;
  extents = self->_extents;
  if (!extents)
  {
    operator new();
  }

  if (std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(extents, &v10))
  {
    v7 = self->_extents;
    v11 = &v10;
  }

  v8 = a3;
  v9 = self->_extents;
  v11 = &v10;
  std::__hash_table<std::__hash_value_type<long,MTLTensorExtents *>,std::__unordered_map_hasher<long,std::__hash_value_type<long,MTLTensorExtents *>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,MTLTensorExtents *>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,MTLTensorExtents *>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v9, &v10)[3] = v8;
}

- (void)setInputDimensions:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = [a3 count];
  if (v8 != length)
  {
    [(MTL4MachineLearningPipelineDescriptor *)v8 setInputDimensions:v9 withRange:v10, v11, v12, v13, v14, v15, v22];
  }

  if (self->_extents)
  {
    v16 = 1;
  }

  else
  {
    v16 = length == 0;
  }

  if (!v16)
  {
    operator new();
  }

  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      extents = self->_extents;
      v24 = (location + i);
      if (std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(extents, &v24))
      {
        v19 = self->_extents;
        v23 = location + i;
        v24 = &v23;
      }

      v20 = [a3 objectAtIndexedSubscript:i];
      v21 = self->_extents;
      v23 = location + i;
      v24 = &v23;
      std::__hash_table<std::__hash_value_type<long,MTLTensorExtents *>,std::__unordered_map_hasher<long,std::__hash_value_type<long,MTLTensorExtents *>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,MTLTensorExtents *>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,MTLTensorExtents *>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(v21, &v23)[3] = v20;
    }
  }
}

- (id)inputDimensionsAtBufferIndex:(int64_t)a3
{
  v4 = a3;
  result = self->_extents;
  if (result)
  {
    result = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(result, &v4);
    if (result)
    {
      return *(result + 3);
    }
  }

  return result;
}

@end