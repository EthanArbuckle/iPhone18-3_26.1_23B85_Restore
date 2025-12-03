@interface ANSTTensorDescriptor
+ (id)descriptorWithName:(id)name dataType:(unint64_t)type n:(unint64_t)n c:(unint64_t)c h:(unint64_t)h w:(unint64_t)w;
- (ANSTTensorDescriptor)initWithCoder:(id)coder;
- (ANSTTensorDescriptor)initWithE5TensorDescriptor:(e5rt_tensor_desc *)descriptor name:(id)name error:(id *)error;
- (ANSTTensorDescriptor)initWithName:(id)name dataType:(unint64_t)type lengths:(id)lengths strides:(id)strides error:(id *)error;
- (ANSTTensorDescriptor)initWithName:(id)name dataType:(unint64_t)type numberOfDimensions:(unint64_t)dimensions lengths:(const unint64_t *)lengths alignment:(unint64_t)alignment error:(id *)error;
- (ANSTTensorDescriptor)initWithName:(id)name dataType:(unint64_t)type numberOfDimensions:(unint64_t)dimensions lengths:(const unint64_t *)lengths strides:(const unint64_t *)strides error:(id *)error;
- (ANSTTensorDescriptor)initWithName:(id)name error:(id *)error;
- (BOOL)hasSameMemoryLayoutAs:(id)as;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesE5TensorDescriptor:(e5rt_tensor_desc *)descriptor error:(id *)error;
- (NSArray)lengths;
- (NSArray)strides;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (unint64_t)_minimumContiguousLength;
- (unint64_t)hash;
- (unint64_t)lengthOfDimensionAt:(unint64_t)at;
- (unint64_t)strideOfDimensionAt:(unint64_t)at;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANSTTensorDescriptor

- (unint64_t)lengthOfDimensionAt:(unint64_t)at
{
  if (self->_numberOfDimensions <= at)
  {
    return 0;
  }

  else
  {
    return self->_lengths[at];
  }
}

- (unint64_t)strideOfDimensionAt:(unint64_t)at
{
  if (self->_numberOfDimensions <= at)
  {
    return 0;
  }

  else
  {
    return self->_strides[at];
  }
}

- (ANSTTensorDescriptor)initWithName:(id)name error:(id *)error
{
  nameCopy = name;
  result = objc_msgSend_doesNotRecognizeSelector_(self, v7, a2);
  __break(1u);
  return result;
}

- (ANSTTensorDescriptor)initWithName:(id)name dataType:(unint64_t)type numberOfDimensions:(unint64_t)dimensions lengths:(const unint64_t *)lengths strides:(const unint64_t *)strides error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = ANSTTensorDescriptor;
  v13 = [(ANSTDescriptor *)&v28 initWithName:name error:error];
  v14 = v13;
  if (!v13)
  {
LABEL_11:
    v22 = v14;
    goto LABEL_17;
  }

  v13->_dataType = type;
  v13->_numberOfDimensions = dimensions;
  v15 = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
  v14->_lengths = v15;
  if (v15)
  {
    v17 = malloc_type_calloc(v14->_numberOfDimensions, 8uLL, 0x100004000313F17uLL);
    v14->_strides = v17;
    if (v17)
    {
      if (v14->_numberOfDimensions)
      {
        v18 = 0;
        lengths = v14->_lengths;
        while (1)
        {
          lengths[v18] = lengths[v18];
          v20 = strides[v18];
          v17[v18] = v20;
          if (!lengths[v18] || v20 == 0)
          {
            break;
          }

          if (++v18 >= v14->_numberOfDimensions)
          {
            goto LABEL_11;
          }
        }

        if (error)
        {
          v23 = MEMORY[0x277CCA9B8];
          v29 = *MEMORY[0x277CCA068];
          v30[0] = @"Tensor descriptor's length(s) and/or stride(s) should not be zero.";
          v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v30, &v29, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v23, v25, @"ANSTErrorDomain", 8, v24);
        }

        goto LABEL_16;
      }

      goto LABEL_11;
    }
  }

  if (!error)
  {
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v16, @"ANSTErrorDomain", 6, 0);
  *error = v22 = 0;
LABEL_17:

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

- (ANSTTensorDescriptor)initWithName:(id)name dataType:(unint64_t)type numberOfDimensions:(unint64_t)dimensions lengths:(const unint64_t *)lengths alignment:(unint64_t)alignment error:(id *)error
{
  nameCopy = name;
  v15 = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
  if (v15)
  {
    v17 = v15;
    if (dimensions)
    {
      Size = ANSTTensorDataTypeGetSize(type);
      v19 = 1;
      dimensionsCopy = dimensions;
      v21 = 1;
      do
      {
        Size *= v21;
        if (alignment >= 2 && !v19)
        {
          Size = (alignment - 1 + Size) / alignment * alignment;
        }

        v21 = lengths[dimensionsCopy - 1];
        v17[dimensionsCopy - 1] = Size;
        --v19;
        --dimensionsCopy;
      }

      while (dimensionsCopy);
    }

    v22 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_strides_error_(self, v16, nameCopy, type, dimensions, lengths, v17, error);
    free(v17);
    self = v22;
    selfCopy = self;
  }

  else if (error)
  {
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v16, @"ANSTErrorDomain", 6, 0);
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ANSTTensorDescriptor)initWithName:(id)name dataType:(unint64_t)type lengths:(id)lengths strides:(id)strides error:(id *)error
{
  nameCopy = name;
  lengthsCopy = lengths;
  stridesCopy = strides;
  v17 = objc_msgSend_count(lengthsCopy, v15, v16);
  v18 = malloc_type_calloc(v17, 8uLL, 0x100004000313F17uLL);
  if (!v18)
  {
    if (!error)
    {
LABEL_10:
      selfCopy = 0;
      goto LABEL_11;
    }

LABEL_8:
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v19, @"ANSTErrorDomain", 6, 0);
    *error = selfCopy = 0;
    goto LABEL_11;
  }

  v20 = v18;
  v21 = malloc_type_calloc(v17, 8uLL, 0x100004000313F17uLL);
  if (!v21)
  {
    free(v20);
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v23 = v21;
  v35 = nameCopy;
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      v25 = objc_msgSend_objectAtIndex_(lengthsCopy, v22, i);
      *(v20 + i) = objc_msgSend_unsignedIntegerValue(v25, v26, v27);

      v29 = objc_msgSend_objectAtIndex_(stridesCopy, v28, i);
      v23[i] = objc_msgSend_unsignedIntegerValue(v29, v30, v31);
    }
  }

  nameCopy = v35;
  v32 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_strides_error_(self, v22, v35, type, v17, v20, v23, error);
  free(v20);
  free(v23);
  self = v32;
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (BOOL)hasSameMemoryLayoutAs:(id)as
{
  asCopy = as;
  dataType = self->_dataType;
  if (dataType != objc_msgSend_dataType(asCopy, v6, v7) || (numberOfDimensions = self->_numberOfDimensions, numberOfDimensions != objc_msgSend_numberOfDimensions(asCopy, v8, v9)))
  {
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  if (self->_numberOfDimensions)
  {
    v12 = 0;
    do
    {
      v13 = self->_lengths[v12];
      if (v13 != objc_msgSend_lengthOfDimensionAt_(asCopy, v11, v12))
      {
        goto LABEL_9;
      }

      v15 = self->_strides[v12];
      if (v15 != objc_msgSend_strideOfDimensionAt_(asCopy, v14, v12))
      {
        goto LABEL_9;
      }
    }

    while (self->_numberOfDimensions > ++v12);
  }

  v16 = 1;
LABEL_10:

  return v16;
}

+ (id)descriptorWithName:(id)name dataType:(unint64_t)type n:(unint64_t)n c:(unint64_t)c h:(unint64_t)h w:(unint64_t)w
{
  v16[4] = *MEMORY[0x277D85DE8];
  v16[0] = n;
  v16[1] = c;
  v16[2] = h;
  v16[3] = w;
  nameCopy = name;
  v11 = [self alloc];
  v13 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v11, v12, nameCopy, type, 4, v16, 1, 0);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)dealloc
{
  lengths = self->_lengths;
  if (lengths)
  {
    free(lengths);
  }

  strides = self->_strides;
  if (strides)
  {
    free(strides);
  }

  v5.receiver = self;
  v5.super_class = ANSTTensorDescriptor;
  [(ANSTTensorDescriptor *)&v5 dealloc];
}

- (unint64_t)_minimumContiguousLength
{
  result = objc_msgSend_numberOfDimensions(self, a2, v2);
  if (result)
  {
    v6 = objc_msgSend_lengthOfDimensionAt_(self, v5, 0);
    return objc_msgSend_strideOfDimensionAt_(self, v7, 0) * v6;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v28.receiver = self;
  v28.super_class = ANSTTensorDescriptor;
  if ([(ANSTDescriptor *)&v28 isEqual:equalCopy])
  {
    if (equalCopy == self)
    {
      goto LABEL_15;
    }

    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = objc_msgSend_dataType(self, v5, v6);
        if (v7 == objc_msgSend_dataType(equalCopy, v8, v9))
        {
          v12 = objc_msgSend_numberOfDimensions(self, v10, v11);
          if (v12 == objc_msgSend_numberOfDimensions(equalCopy, v13, v14))
          {
            v17 = objc_msgSend_numberOfDimensions(self, v15, v16);
            if (v17)
            {
              v19 = v17;
              v20 = 0;
              while (1)
              {
                v21 = objc_msgSend_lengthOfDimensionAt_(self, v18, v20);
                if (v21 != objc_msgSend_lengthOfDimensionAt_(equalCopy, v22, v20))
                {
                  goto LABEL_13;
                }

                v24 = objc_msgSend_strideOfDimensionAt_(self, v23, v20);
                if (v24 != objc_msgSend_strideOfDimensionAt_(equalCopy, v25, v20))
                {
                  goto LABEL_13;
                }

                ++v20;
                v26 = 1;
                if (v19 == v20)
                {
                  goto LABEL_14;
                }
              }
            }

LABEL_15:
            v26 = 1;
            goto LABEL_14;
          }
        }
      }
    }
  }

LABEL_13:
  v26 = 0;
LABEL_14:

  return v26;
}

- (unint64_t)hash
{
  v19.receiver = self;
  v19.super_class = ANSTTensorDescriptor;
  v3 = [(ANSTDescriptor *)&v19 hash];
  v6 = objc_msgSend_dataType(self, v4, v5);
  v9 = v6 ^ objc_msgSend_numberOfDimensions(self, v7, v8) ^ v3;
  v12 = objc_msgSend_numberOfDimensions(self, v10, v11);
  if (v12)
  {
    v14 = v12;
    for (i = 0; i != v14; ++i)
    {
      v16 = objc_msgSend_lengthOfDimensionAt_(self, v13, i);
      v9 ^= v16 ^ objc_msgSend_strideOfDimensionAt_(self, v17, i);
    }
  }

  return v9;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_name(self, a2, v2);
  v8 = objc_msgSend_dataType(self, v6, v7);
  v9 = ANSTTensorDataTypeToNSString(v8);
  v12 = objc_msgSend_lengths(self, v10, v11);
  v14 = objc_msgSend_componentsJoinedByString_(v12, v13, @"×");
  v16 = objc_msgSend_stringWithFormat_(v4, v15, @"%@ (%@, %@)", v5, v9, v14);

  return v16;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_name(self, v6, v7);
  v11 = objc_msgSend_dataType(self, v9, v10);
  v12 = ANSTTensorDataTypeToNSString(v11);
  v15 = objc_msgSend_lengths(self, v13, v14);
  v17 = objc_msgSend_componentsJoinedByString_(v15, v16, @"×");
  v20 = objc_msgSend_strides(self, v18, v19);
  v22 = objc_msgSend_componentsJoinedByString_(v20, v21, @"×");
  v24 = objc_msgSend_stringWithFormat_(v3, v23, @"<%@ %p> %@ (%@, %@, %@)", v5, self, v8, v12, v17, v22);

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_name(self, v8, v9);
  v12 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_strides_error_(v7, v11, v10, self->_dataType, self->_numberOfDimensions, self->_lengths, self->_strides, 0);

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = ANSTTensorDescriptor;
  [(ANSTDescriptor *)&v42 encodeWithCoder:coderCopy];
  v5 = MEMORY[0x277CCABB0];
  v8 = objc_msgSend_dataType(self, v6, v7);
  v10 = objc_msgSend_numberWithUnsignedInteger_(v5, v9, v8);
  v11 = NSStringFromSelector(sel_dataType);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v10, v11);

  v13 = MEMORY[0x277CCABB0];
  v16 = objc_msgSend_numberOfDimensions(self, v14, v15);
  v18 = objc_msgSend_numberWithUnsignedInteger_(v13, v17, v16);
  v19 = NSStringFromSelector(sel_numberOfDimensions);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v18, v19);

  v23 = objc_msgSend_numberOfDimensions(self, v21, v22);
  if (v23)
  {
    v25 = v23;
    for (i = 0; i != v25; ++i)
    {
      v27 = MEMORY[0x277CCABB0];
      v28 = objc_msgSend_lengthOfDimensionAt_(self, v24, i);
      v30 = objc_msgSend_numberWithUnsignedInteger_(v27, v29, v28);
      v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"length@%zu", i);
      objc_msgSend_encodeObject_forKey_(coderCopy, v33, v30, v32);

      v34 = MEMORY[0x277CCABB0];
      v36 = objc_msgSend_strideOfDimensionAt_(self, v35, i);
      v38 = objc_msgSend_numberWithUnsignedInteger_(v34, v37, v36);
      v40 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v39, @"stride@%zu", i);
      objc_msgSend_encodeObject_forKey_(coderCopy, v41, v38, v40);
    }
  }
}

- (ANSTTensorDescriptor)initWithCoder:(id)coder
{
  v95[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v85.receiver = self;
  v85.super_class = ANSTTensorDescriptor;
  v5 = [(ANSTDescriptor *)&v85 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_dataType);
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v6, v7);

  if (!v9)
  {
    v41 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA050];
    v94[0] = *MEMORY[0x277CCA068];
    v94[1] = @"ANSTDescriptorName";
    v95[0] = @"Tensor descriptor data type was not encoded.";
    v43 = objc_msgSend_name(v5, v10, v11);
    v95[1] = v43;
    v45 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v44, v95, v94, 2);
    v47 = objc_msgSend_errorWithDomain_code_userInfo_(v41, v46, v42, 4865, v45);
    objc_msgSend_failWithError_(coderCopy, v48, v47);

LABEL_19:
    v40 = 0;
    goto LABEL_20;
  }

  v5->_dataType = objc_msgSend_unsignedIntegerValue(v9, v10, v11);
  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_numberOfDimensions);
  v15 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v14, v12, v13);

  if (!v15)
  {
    v49 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277CCA050];
    v51 = *MEMORY[0x277CCA068];
    v93[0] = @"Tensor descriptor number of dimensions was not encoded.";
    v92[0] = v51;
    v92[1] = @"ANSTDescriptorName";
    v52 = objc_msgSend_name(v5, v16, v17);
    v93[1] = v52;
    v54 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v53, v93, v92, 2);
    objc_msgSend_errorWithDomain_code_userInfo_(v49, v55, v50, 4865, v54);
    v60 = LABEL_17:;
    objc_msgSend_failWithError_(coderCopy, v61, v60);

LABEL_18:
    goto LABEL_19;
  }

  v18 = objc_msgSend_unsignedIntegerValue(v15, v16, v17);
  v5->_numberOfDimensions = v18;
  if (!v18)
  {
    v56 = MEMORY[0x277CCA9B8];
    v57 = *MEMORY[0x277CCA050];
    v90[0] = *MEMORY[0x277CCA068];
    v90[1] = @"ANSTDescriptorName";
    v91[0] = @"Invalid tensor descriptor number of dimensions was encoded.";
    v52 = objc_msgSend_name(v5, v19, v20);
    v91[1] = v52;
    v54 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v58, v91, v90, 2);
    objc_msgSend_errorWithDomain_code_userInfo_(v56, v59, v57, 4864, v54);
    goto LABEL_17;
  }

  v21 = malloc_type_calloc(v18, 8uLL, 0x100004000313F17uLL);
  v5->_lengths = v21;
  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = malloc_type_calloc(v5->_numberOfDimensions, 8uLL, 0x100004000313F17uLL);
  v5->_strides = v22;
  if (!v22)
  {
    goto LABEL_18;
  }

  v83 = v15;
  v84 = v9;
  if (v5->_numberOfDimensions)
  {
    v23 = 0;
    v24 = 0x277CCA000uLL;
    while (1)
    {
      v25 = objc_opt_class();
      v27 = objc_msgSend_stringWithFormat_(*(v24 + 3240), v26, @"length@%zu", v23);
      v29 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v28, v25, v27);

      if (!v29)
      {
        v64 = MEMORY[0x277CCA9B8];
        v65 = v24;
        v66 = *MEMORY[0x277CCA050];
        v88[0] = *MEMORY[0x277CCA068];
        v29 = objc_msgSend_stringWithFormat_(*(v65 + 3240), v30, @"Tensor descriptor length at dimension index #%zu was not encoded.", v23, v83, v84);
        v88[1] = @"ANSTDescriptorName";
        v89[0] = v29;
        v69 = objc_msgSend_name(v5, v67, v68);
        v89[1] = v69;
        v71 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v70, v89, v88, 2);
        v73 = objc_msgSend_errorWithDomain_code_userInfo_(v64, v72, v66, 4865, v71);
        objc_msgSend_failWithError_(coderCopy, v74, v73);
        goto LABEL_23;
      }

      v5->_lengths[v23] = objc_msgSend_unsignedIntegerValue(v29, v30, v31);
      v32 = objc_opt_class();
      v33 = v24;
      v35 = objc_msgSend_stringWithFormat_(*(v24 + 3240), v34, @"stride@%zu", v23, v83, v84);
      v37 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v36, v32, v35);

      if (!v37)
      {
        break;
      }

      v5->_strides[v23] = objc_msgSend_unsignedIntegerValue(v37, v38, v39);

      ++v23;
      v24 = v33;
      if (v23 >= v5->_numberOfDimensions)
      {
        goto LABEL_12;
      }
    }

    v75 = MEMORY[0x277CCA9B8];
    v76 = *MEMORY[0x277CCA050];
    v86[0] = *MEMORY[0x277CCA068];
    v69 = objc_msgSend_stringWithFormat_(*(v33 + 3240), v38, @"Tensor descriptor stride at dimension index #%zu was not encoded.", v23);
    v86[1] = @"ANSTDescriptorName";
    v87[0] = v69;
    v71 = objc_msgSend_name(v5, v77, v78);
    v87[1] = v71;
    v73 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v79, v87, v86, 2);
    v81 = objc_msgSend_errorWithDomain_code_userInfo_(v75, v80, v76, 4865, v73);
    objc_msgSend_failWithError_(coderCopy, v82, v81);

LABEL_23:
    goto LABEL_19;
  }

LABEL_12:

LABEL_13:
  v40 = v5;
LABEL_20:

  v62 = *MEMORY[0x277D85DE8];
  return v40;
}

- (NSArray)lengths
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = objc_msgSend_numberOfDimensions(self, v4, v5);
  v8 = objc_msgSend_initWithCapacity_(v3, v7, v6);
  v11 = objc_msgSend_numberOfDimensions(self, v9, v10);
  if (v11)
  {
    v14 = v11;
    for (i = 0; i != v14; ++i)
    {
      v16 = MEMORY[0x277CCABB0];
      v17 = objc_msgSend_lengthOfDimensionAt_(self, v12, i);
      v19 = objc_msgSend_numberWithUnsignedInteger_(v16, v18, v17);
      objc_msgSend_addObject_(v8, v20, v19);
    }
  }

  v21 = objc_msgSend_copy(v8, v12, v13);

  return v21;
}

- (NSArray)strides
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = objc_msgSend_numberOfDimensions(self, v4, v5);
  v8 = objc_msgSend_initWithCapacity_(v3, v7, v6);
  v11 = objc_msgSend_numberOfDimensions(self, v9, v10);
  if (v11)
  {
    v14 = v11;
    for (i = 0; i != v14; ++i)
    {
      v16 = MEMORY[0x277CCABB0];
      v17 = objc_msgSend_strideOfDimensionAt_(self, v12, i);
      v19 = objc_msgSend_numberWithUnsignedInteger_(v16, v18, v17);
      objc_msgSend_addObject_(v8, v20, v19);
    }
  }

  v21 = objc_msgSend_copy(v8, v12, v13);

  return v21;
}

- (ANSTTensorDescriptor)initWithE5TensorDescriptor:(e5rt_tensor_desc *)descriptor name:(id)name error:(id *)error
{
  v66[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v58 = 0;
  rank = e5rt_tensor_desc_get_rank();
  if (rank)
  {
    v9 = rank;
    last_error_message = e5rt_get_last_error_message();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s returned error code %u (%s)", "e5rt_tensor_desc_get_rank(e5TensorDescriptor, &rank)", v9, last_error_message);
    v13 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22E657820();
    }

    if (error)
    {
      v15 = MEMORY[0x277CCA9B8];
      v65 = *MEMORY[0x277CCA068];
      v66[0] = v12;
      v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v66, &v65, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, @"ANSTErrorDomain", 5, v16);
    }

    goto LABEL_7;
  }

  v57 = 0;
  v19 = e5rt_tensor_desc_retain_dtype();
  if (v19)
  {
    v20 = v19;
    v21 = e5rt_get_last_error_message();
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%s returned error code %u (%s)", "e5rt_tensor_desc_retain_dtype(e5TensorDescriptor, &dtype_desc)", v20, v21);
    v24 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_22E657820();
    }

    if (!error)
    {
      selfCopy = 0;
LABEL_32:

      goto LABEL_33;
    }

    v26 = MEMORY[0x277CCA9B8];
    v63 = *MEMORY[0x277CCA068];
    v64 = v23;
    v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, &v64, &v63, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v26, v28, @"ANSTErrorDomain", 5, v27);
    *error = selfCopy = 0;
LABEL_31:

    goto LABEL_32;
  }

  if (sub_22E5E1C70(0, &v57, error))
  {
    v23 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v29, v58);
    v27 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v30, v58);
    if (v58)
    {
      v32 = 0;
      while (1)
      {
        dimension_length = e5rt_tensor_desc_get_dimension_length();
        if (dimension_length)
        {
          break;
        }

        dimension_stride = e5rt_tensor_desc_get_dimension_stride();
        if (dimension_stride)
        {
          v48 = dimension_stride;
          v49 = e5rt_get_last_error_message();
          v44 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v50, @"%s returned error code %u (%s)", "e5rt_tensor_desc_get_dimension_stride(e5TensorDescriptor, dim, &stride)", v48, v49);
          v51 = _ANSTLoggingGetOSLogForCategoryANSTKit();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            sub_22E657820();
          }

          if (error)
          {
            v47 = MEMORY[0x277CCA9B8];
            v59 = *MEMORY[0x277CCA068];
            v60 = v44;
            objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v52, &v60, &v59, 1);
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        v36 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v35, 0);
        objc_msgSend_addObject_(v23, v37, v36);

        v39 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v38, 0);
        objc_msgSend_addObject_(v27, v40, v39);

        if (++v32 >= v58)
        {
          goto LABEL_19;
        }
      }

      v41 = dimension_length;
      v42 = e5rt_get_last_error_message();
      v44 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v43, @"%s returned error code %u (%s)", "e5rt_tensor_desc_get_dimension_length(e5TensorDescriptor, dim, &length)", v41, v42);
      v45 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_22E657820();
      }

      if (error)
      {
        v47 = MEMORY[0x277CCA9B8];
        v61 = *MEMORY[0x277CCA068];
        v62 = v44;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, &v62, &v61, 1);
        v53 = LABEL_29:;
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v47, v54, @"ANSTErrorDomain", 5, v53);
      }

LABEL_30:

      selfCopy = 0;
    }

    else
    {
LABEL_19:
      self = objc_msgSend_initWithName_dataType_lengths_strides_error_(self, v31, nameCopy, v57, v23, v27, error);
      selfCopy = self;
    }

    goto LABEL_31;
  }

LABEL_7:
  selfCopy = 0;
LABEL_33:

  v55 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BOOL)matchesE5TensorDescriptor:(e5rt_tensor_desc *)descriptor error:(id *)error
{
  v119[1] = *MEMORY[0x277D85DE8];
  rank = e5rt_tensor_desc_get_rank();
  if (rank)
  {
    v9 = rank;
    last_error_message = e5rt_get_last_error_message();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s returned error code %u (%s)", "e5rt_tensor_desc_get_rank(e5TensorDescriptor, &rank)", v9, last_error_message);
    v13 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22E657908();
    }

    if (!error)
    {
      goto LABEL_19;
    }

    v15 = MEMORY[0x277CCA9B8];
    v118 = *MEMORY[0x277CCA068];
    v119[0] = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v119, &v118, 1);
    v16 = LABEL_6:;
    objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, @"ANSTErrorDomain", 5, v16);
    *error = LABEL_18:;

    goto LABEL_19;
  }

  if (objc_msgSend_numberOfDimensions(self, v7, v8))
  {
    v28 = MEMORY[0x277CCACA8];
    v29 = objc_msgSend_numberOfDimensions(self, v18, v19);
    v12 = objc_msgSend_stringWithFormat_(v28, v30, @"%s: Rank mismatch (self %ld, E5 %ld)", "[ANSTTensorDescriptor(E5RT) matchesE5TensorDescriptor:error:]", v29, 0);
    v31 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_22E657908();
    }

    if (!error)
    {
      goto LABEL_19;
    }

    v33 = MEMORY[0x277CCA9B8];
    v116 = *MEMORY[0x277CCA068];
    v117 = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, &v117, &v116, 1);
    goto LABEL_17;
  }

  v20 = e5rt_tensor_desc_retain_dtype();
  if (v20)
  {
    v23 = v20;
    v24 = e5rt_get_last_error_message();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%s returned error code %u (%s)", "e5rt_tensor_desc_retain_dtype(e5TensorDescriptor, &dtype_desc)", v23, v24);
    v26 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_22E657908();
    }

    if (!error)
    {
      goto LABEL_19;
    }

    v15 = MEMORY[0x277CCA9B8];
    v114 = *MEMORY[0x277CCA068];
    v115 = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, &v115, &v114, 1);
    goto LABEL_6;
  }

  v37 = objc_msgSend_dataType(self, v21, v22);
  v102 = 0;
  v103 = 0;
  v38 = sub_22E5E1C70(0, &v103, &v102);
  v39 = v102;
  if (v38)
  {
    v40 = v103 == v37;
  }

  else
  {
    v41 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_22E65797C(v39, v41, v42, v43, v44, v45, v46, v47);
    }

    v40 = 0;
  }

  v48 = e5rt_tensor_desc_dtype_release();
  if (v48)
  {
    v51 = v48;
    v52 = e5rt_get_last_error_message();
    v54 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v53, @"%s returned error code %u (%s)", "e5rt_tensor_desc_dtype_release(&dtype_desc)", v51, v52);
    v55 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_22E657908();
    }
  }

  if (!v40)
  {
    v78 = MEMORY[0x277CCACA8];
    v79 = objc_msgSend_dataType(self, v49, v50);
    v12 = objc_msgSend_stringWithFormat_(v78, v80, @"%s: Data type mismatch (self %ld)", "[ANSTTensorDescriptor(E5RT) matchesE5TensorDescriptor:error:]", v79);
    v81 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      sub_22E657908();
    }

    if (!error)
    {
      goto LABEL_19;
    }

    v33 = MEMORY[0x277CCA9B8];
    v112 = *MEMORY[0x277CCA068];
    v113 = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v82, &v113, &v112, 1);
    v16 = LABEL_17:;
    objc_msgSend_errorWithDomain_code_userInfo_(v33, v34, @"ANSTErrorDomain", 8, v16);
    goto LABEL_18;
  }

  if (objc_msgSend_numberOfDimensions(self, v49, v50))
  {
    v58 = 0;
    while (1)
    {
      v59 = objc_msgSend_lengths(self, v56, v57);
      v61 = objc_msgSend_objectAtIndexedSubscript_(v59, v60, v58);
      v64 = objc_msgSend_unsignedLongValue(v61, v62, v63);

      v103 = 0;
      dimension_length = e5rt_tensor_desc_get_dimension_length();
      if (dimension_length)
      {
        v83 = dimension_length;
        v84 = e5rt_get_last_error_message();
        v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v85, @"%s returned error code %u (%s)", "e5rt_tensor_desc_get_dimension_length(e5TensorDescriptor, dim, &e5Length)", v83, v84);
        v86 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          sub_22E657908();
        }

        if (!error)
        {
          goto LABEL_19;
        }

        v88 = MEMORY[0x277CCA9B8];
        v110 = *MEMORY[0x277CCA068];
        v111 = v12;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v87, &v111, &v110, 1);
        v97 = LABEL_56:;
        objc_msgSend_errorWithDomain_code_userInfo_(v88, v98, @"ANSTErrorDomain", 5, v97);
        goto LABEL_62;
      }

      if (v64 != v103)
      {
        v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v66, @"%s: Dimension %d length mismatch (self %ld, e5 %ld)", "[ANSTTensorDescriptor(E5RT) matchesE5TensorDescriptor:error:]", v58, v64, v103);
        v89 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          sub_22E657908();
        }

        if (error)
        {
          v91 = MEMORY[0x277CCA9B8];
          v108 = *MEMORY[0x277CCA068];
          v109 = v12;
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v90, &v109, &v108, 1);
          goto LABEL_61;
        }

        goto LABEL_19;
      }

      v68 = objc_msgSend_strides(self, v66, v67);
      v70 = objc_msgSend_objectAtIndexedSubscript_(v68, v69, v58);
      v73 = objc_msgSend_longValue(v70, v71, v72);

      v102 = 0;
      dimension_stride = e5rt_tensor_desc_get_dimension_stride();
      if (dimension_stride)
      {
        v92 = dimension_stride;
        v93 = e5rt_get_last_error_message();
        v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v94, @"%s returned error code %u (%s)", "e5rt_tensor_desc_get_dimension_stride(e5TensorDescriptor, dim, &e5Stride)", v92, v93);
        v95 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          sub_22E657908();
        }

        if (!error)
        {
          goto LABEL_19;
        }

        v88 = MEMORY[0x277CCA9B8];
        v106 = *MEMORY[0x277CCA068];
        v107 = v12;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v96, &v107, &v106, 1);
        goto LABEL_56;
      }

      if (v73 != v102)
      {
        break;
      }

      ++v58;
      v77 = objc_msgSend_numberOfDimensions(self, v75, v76);
      result = 1;
      if (v77 <= v58)
      {
        goto LABEL_20;
      }
    }

    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v75, @"%s: Dimension %d stride mismatch (self %ld, e5 %ld)", "[ANSTTensorDescriptor(E5RT) matchesE5TensorDescriptor:error:]", v58, v73, v102);
    v99 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      sub_22E657908();
    }

    if (error)
    {
      v91 = MEMORY[0x277CCA9B8];
      v104 = *MEMORY[0x277CCA068];
      v105 = v12;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v100, &v105, &v104, 1);
      v97 = LABEL_61:;
      objc_msgSend_errorWithDomain_code_userInfo_(v91, v101, @"ANSTErrorDomain", 8, v97);
      *error = LABEL_62:;
    }

LABEL_19:

    result = 0;
  }

  else
  {
    result = 1;
  }

LABEL_20:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

@end