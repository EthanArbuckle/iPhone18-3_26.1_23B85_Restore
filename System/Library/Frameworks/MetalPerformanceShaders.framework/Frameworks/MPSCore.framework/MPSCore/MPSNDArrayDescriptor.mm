@interface MPSNDArrayDescriptor
+ (MPSNDArrayDescriptor)descriptorWithDataType:(MPSDataType)dataType dimensionCount:(NSUInteger)numberOfDimensions dimensionSizes:(NSUInteger *)dimensionSizes;
+ (MPSNDArrayDescriptor)descriptorWithDataType:(MPSDataType)dataType dimensionSizes:(NSUInteger)dimension0;
+ (MPSNDArrayDescriptor)descriptorWithDataType:(MPSDataType)dataType shape:(NSArray *)shape;
- (MPSDimensionSlice)sliceRangeForDimension:(NSUInteger)dimensionIndex;
- (MPSNDArrayDescriptor)initWithDataType:(unsigned int)type dimensions:(unint64_t)dimensions sizes:;
- (NSUInteger)lengthOfDimension:(NSUInteger)dimensionIndex;
- (id)getShape;
- (vector_uchar16)dimensionOrder;
- (void)dealloc;
- (void)permuteWithDimensionOrder:(unint64_t *)order;
- (void)reshapeWithDimensionCount:(NSUInteger)numberOfDimensions dimensionSizes:(NSUInteger *)dimensionSizes;
- (void)reshapeWithShape:(NSArray *)shape;
- (void)setLengthOfDimension:(unint64_t)dimension atIndex:(unint64_t)index;
- (void)sliceDimension:(NSUInteger)dimensionIndex withSubrange:(MPSDimensionSlice)subRange;
- (void)transposeDimension:(NSUInteger)dimensionIndex withDimension:(NSUInteger)dimensionIndex2;
@end

@implementation MPSNDArrayDescriptor

- (NSUInteger)lengthOfDimension:(NSUInteger)dimensionIndex
{
  if (self->_numberOfDimensions <= dimensionIndex)
  {
    return 1;
  }

  do
  {
    selfCopy = self;
    self = self->_child;
  }

  while (self);
  v5 = *selfCopy->_dimensionOrder;
  return *&selfCopy->_dimensionLengths[4 * (*(&v5 | dimensionIndex & 0xF) & 0xF)];
}

- (void)setLengthOfDimension:(unint64_t)dimension atIndex:(unint64_t)index
{
  if (self->_numberOfDimensions <= index)
  {
    selfCopy = self;
    dimensionCopy = dimension;
    indexCopy = index;
    v10 = MTLReportFailureTypeEnabled();
    LOBYTE(index) = indexCopy;
    LODWORD(dimension) = dimensionCopy;
    v11 = v10;
    self = selfCopy;
    if (v11)
    {
      v12 = objc_opt_class();
      NSStringFromClass(v12);
      NSStringFromSelector(a2);
      MTLReportFailure();
      LOBYTE(index) = indexCopy;
      self = selfCopy;
      LODWORD(dimension) = dimensionCopy;
    }
  }

  selfCopy2 = self;
  do
  {
    v5 = selfCopy2;
    selfCopy2 = selfCopy2->_child;
  }

  while (selfCopy2);
  v13 = *v5->_dimensionOrder;
  *&self->_dimensionLengths[4 * (*(&v13 | index & 0xF) & 0xF)] = dimension;
}

- (MPSDimensionSlice)sliceRangeForDimension:(NSUInteger)dimensionIndex
{
  if (self->_numberOfDimensions <= dimensionIndex)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    do
    {
      selfCopy = self;
      self = self->_child;
    }

    while (self);
    v7 = *selfCopy->_dimensionOrder;
    v4 = selfCopy + 4 * (*(&v7 | dimensionIndex & 0xF) & 0xF);
    v5 = *(v4 + 20);
    v6 = *(v4 + 36);
  }

  result.length = v6;
  result.start = v5;
  return result;
}

- (void)sliceDimension:(NSUInteger)dimensionIndex withSubrange:(MPSDimensionSlice)subRange
{
  length = subRange.length;
  start = subRange.start;
  v6 = dimensionIndex;
  selfCopy = self;
  do
  {
    v9 = selfCopy;
    selfCopy = selfCopy->_child;
  }

  while (selfCopy);
  if (*(v9 + 224) <= dimensionIndex)
  {
    v22 = a2;
    v23 = MTLReportFailureTypeEnabled();
    a2 = v22;
    if (v23)
    {
      v24 = objc_opt_class();
      NSStringFromClass(v24);
      NSStringFromSelector(v22);
      MTLReportFailure();
      a2 = v22;
    }
  }

  v35 = *(v9 + 208);
  v10 = *(v9 + 4 * (*(&v35 | v6 & 0xF) & 0xF) + 16);
  if (start >= v10 && length != 0)
  {
    v25 = a2;
    v26 = MTLReportFailureTypeEnabled();
    a2 = v25;
    if (v26)
    {
      v27 = objc_opt_class();
      NSStringFromClass(v27);
      NSStringFromSelector(v25);
      v34[2] = *(v9 + 208);
      MTLReportFailure();
      a2 = v25;
    }
  }

  if (length + start - 1 >= v10 && length != 0)
  {
    v28 = a2;
    v29 = MTLReportFailureTypeEnabled();
    a2 = v28;
    if (v29)
    {
      v30 = objc_opt_class();
      NSStringFromClass(v30);
      NSStringFromSelector(v28);
      v34[1] = *(v9 + 208);
      MTLReportFailure();
      a2 = v28;
    }
  }

  if (*(v9 + 240) == 4)
  {
    v34[0] = *(v9 + 208);
    if (!*(v34 | v6 & 0xF) && (start & 1) != 0)
    {
      v31 = a2;
      if (MTLReportFailureTypeEnabled())
      {
        v32 = objc_opt_class();
        NSStringFromClass(v32);
        NSStringFromSelector(v31);
        MTLReportFailure();
      }
    }
  }

  if (*(*(v9 + 256) + 264) == 2)
  {
    v13 = [MPSNDArrayDescriptor alloc];
    v14 = *(v9 + 240);
    v15 = *(v9 + 224);
    v16 = *(v9 + 16);
    v17 = *(v9 + 32);
    v18 = *(v9 + 64);
    v36[2] = *(v9 + 48);
    v36[3] = v18;
    v36[0] = v16;
    v36[1] = v17;
    v20 = objc_msgSend_initWithDataType_dimensions_sizes_(v13, v19, v14, v15, v36);
    *(v20 + 268) = self->_preferPackedRows;
    *(v20 + 256) = v9;
    *(v9 + 248) = v20;
    *(v9 + 264) = 1;
    v9 = v20;
  }

  v33 = *(v9 + 208);
  v21 = v9 + 4 * (*(&v33 | v6 & 0xF) & 0xF);
  *(v21 + 80) = start;
  *(v21 + 144) = length;
}

- (void)transposeDimension:(NSUInteger)dimensionIndex withDimension:(NSUInteger)dimensionIndex2
{
  if (dimensionIndex != dimensionIndex2)
  {
    v38 = v4;
    v39 = v5;
    selfCopy = self;
    do
    {
      v7 = selfCopy;
      selfCopy = selfCopy->_child;
    }

    while (selfCopy);
    if (*(v7 + 224) <= dimensionIndex)
    {
      selfCopy2 = self;
      v22 = dimensionIndex;
      v23 = dimensionIndex2;
      v24 = a2;
      v25 = MTLReportFailureTypeEnabled();
      a2 = v24;
      dimensionIndex2 = v23;
      LOBYTE(dimensionIndex) = v22;
      v26 = v25;
      self = selfCopy2;
      if (v26)
      {
        v27 = objc_opt_class();
        NSStringFromClass(v27);
        NSStringFromSelector(v24);
        MTLReportFailure();
        a2 = v24;
        self = selfCopy2;
        dimensionIndex2 = v23;
        LOBYTE(dimensionIndex) = v22;
      }
    }

    if (*(v7 + 224) <= dimensionIndex2)
    {
      selfCopy3 = self;
      v29 = dimensionIndex;
      v30 = dimensionIndex2;
      v31 = a2;
      v32 = MTLReportFailureTypeEnabled();
      LOBYTE(dimensionIndex2) = v30;
      LOBYTE(dimensionIndex) = v29;
      v33 = v32;
      self = selfCopy3;
      if (v33)
      {
        v34 = objc_opt_class();
        NSStringFromClass(v34);
        NSStringFromSelector(v31);
        MTLReportFailure();
        self = selfCopy3;
        LOBYTE(dimensionIndex2) = v30;
        LOBYTE(dimensionIndex) = v29;
      }
    }

    if (*(*(v7 + 256) + 264) == 2)
    {
      selfCopy4 = self;
      v9 = dimensionIndex;
      v10 = dimensionIndex2;
      v11 = [MPSNDArrayDescriptor alloc];
      v12 = *(v7 + 240);
      v13 = *(v7 + 224);
      v14 = *(v7 + 16);
      v15 = *(v7 + 32);
      v16 = *(v7 + 64);
      v37[2] = *(v7 + 48);
      v37[3] = v16;
      v37[0] = v14;
      v37[1] = v15;
      v18 = objc_msgSend_initWithDataType_dimensions_sizes_(v11, v17, v12, v13, v37);
      LOBYTE(dimensionIndex2) = v10;
      LOBYTE(dimensionIndex) = v9;
      *(v18 + 268) = selfCopy4->_preferPackedRows;
      *(v18 + 256) = v7;
      *(v7 + 248) = v18;
      *(v7 + 264) = 1;
      v7 = v18;
    }

    v19 = (&v35 | dimensionIndex2 & 0xF);
    v35 = *(v7 + 208);
    v20 = *v19;
    *v19 = *(&v35 | dimensionIndex & 0xF);
    v36 = v35;
    *(&v36 | dimensionIndex & 0xF) = v20;
    *(v7 + 208) = v36;
  }
}

- (void)permuteWithDimensionOrder:(unint64_t *)order
{
  v37 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  do
  {
    v6 = selfCopy;
    selfCopy = selfCopy->_child;
  }

  while (selfCopy);
  v7 = *(v6 + 224);
  MEMORY[0x28223BE20]();
  v9 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    v10 = v8;
    bzero(v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    for (i = 0; i != v7; ++i)
    {
      v12 = order[i];
      v9[v12] = 1;
      if (v12 >= *(v6 + 224) && MTLReportFailureTypeEnabled())
      {
        v13 = objc_opt_class();
        v32[1] = NSStringFromClass(v13);
        NSStringFromSelector(v10);
        MTLReportFailure();
      }
    }

    MEMORY[0x28223BE20]();
    v15 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v14)
    {
      v16 = 0;
      v17 = *(v6 + 208);
      v18 = 1;
      do
      {
        v18 *= v9[v16];
        v34 = v17;
        v15[order[v16]] = *(&v34 | v16 & 0xF);
        ++v16;
      }

      while (v14 != v16);
      if (v18 != 1 && MTLReportFailureTypeEnabled())
      {
        v19 = objc_opt_class();
        NSStringFromClass(v19);
        NSStringFromSelector(v10);
        MTLReportFailure();
      }
    }
  }

  else
  {
    v15 = &v36;
  }

  if (*(*(v6 + 256) + 264) == 2)
  {
    v20 = [MPSNDArrayDescriptor alloc];
    v21 = *(v6 + 240);
    v22 = *(v6 + 224);
    v23 = *(v6 + 16);
    v24 = *(v6 + 32);
    v25 = *(v6 + 64);
    v35[2] = *(v6 + 48);
    v35[3] = v25;
    v35[0] = v23;
    v35[1] = v24;
    v27 = objc_msgSend_initWithDataType_dimensions_sizes_(v20, v26, v21, v22, v35);
    *(v27 + 268) = self->_preferPackedRows;
    *(v27 + 256) = v6;
    *(v6 + 248) = v27;
    *(v6 + 264) = 1;
    v6 = v27;
  }

  v28 = *(v6 + 224);
  if (v28)
  {
    v29 = 0;
    v30 = *(v6 + 208);
    do
    {
      v31 = v15[v29];
      v33 = v30;
      *(&v33 | v29 & 0xF) = v31;
      v30 = v33;
      *(v6 + 208) = v33;
      ++v29;
    }

    while (v28 != v29);
  }
}

- (vector_uchar16)dimensionOrder
{
  do
  {
    self = self->_child;
  }

  while (self);
  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (MPSNDArrayDescriptor)initWithDataType:(unsigned int)type dimensions:(unint64_t)dimensions sizes:
{
  v18 = v4[2];
  v19 = v4[3];
  v16 = *v4;
  v17 = v4[1];
  if (dimensions >= 0x11)
  {
    selfCopy = self;
    v10 = MTLReportFailureTypeEnabled();
    self = selfCopy;
    if (v10)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v14 = NSStringFromSelector(a2);
      dimensionsCopy = dimensions;
      v13 = v12;
      MTLReportFailure();
      self = selfCopy;
    }
  }

  v20.receiver = self;
  v20.super_class = MPSNDArrayDescriptor;
  result = [(MPSNDArrayDescriptor *)&v20 init:v13];
  if (result)
  {
    *result->_dimensionLengths = v16;
    *&result->_dimensionLengths[16] = v17;
    *&result->_dimensionLengths[32] = v18;
    *&result->_dimensionLengths[48] = v19;
    *&result->_sliceOffsets[32] = 0u;
    *&result->_sliceOffsets[48] = 0u;
    *result->_sliceOffsets = 0u;
    *&result->_sliceOffsets[16] = 0u;
    *result->_sliceLengths = v16;
    *&result->_sliceLengths[16] = v17;
    *&result->_sliceLengths[32] = v18;
    *&result->_sliceLengths[48] = v19;
    *result->_dimensionOrder = xmmword_22E37B090;
    result->_dataType = type;
    result->_child = 0;
    result->_parent = result;
    result->_transitionOp = 0;
    result->_preferPackedRows = 0;
    result->_numberOfDimensions = dimensions;
    result->_rowBytes = 0;
  }

  return result;
}

+ (MPSNDArrayDescriptor)descriptorWithDataType:(MPSDataType)dataType dimensionCount:(NSUInteger)numberOfDimensions dimensionSizes:(NSUInteger *)dimensionSizes
{
  v6 = *&dataType;
  v7 = 16;
  if (numberOfDimensions < 0x10)
  {
    v7 = numberOfDimensions;
  }

  if (numberOfDimensions)
  {
    v8 = 0;
    *&v9 = 0x100000001;
    *(&v9 + 1) = 0x100000001;
    *&v10 = 0x100000001;
    *(&v10 + 1) = 0x100000001;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    *&v12 = 0x100000001;
    *(&v12 + 1) = 0x100000001;
    do
    {
      v13 = dimensionSizes[v8];
      v21 = v9;
      v22 = v10;
      v23 = v11;
      v24 = v12;
      *(&v21 + (v8 & 0xF)) = v13;
      v11 = v23;
      v12 = v24;
      v9 = v21;
      v10 = v22;
      ++v8;
    }

    while (v7 != v8);
  }

  else
  {
    *&v9 = 0x100000001;
    *(&v9 + 1) = 0x100000001;
    *&v10 = 0x100000001;
    *(&v10 + 1) = 0x100000001;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    *&v12 = 0x100000001;
    *(&v12 + 1) = 0x100000001;
  }

  v17 = v10;
  v18 = v9;
  v19 = v11;
  v20 = v12;
  v14 = [self alloc];
  v25[0] = v18;
  v25[1] = v17;
  v25[2] = v19;
  v25[3] = v20;
  return objc_msgSend_initWithDataType_dimensions_sizes_(v14, v15, v6, numberOfDimensions, v25);
}

+ (MPSNDArrayDescriptor)descriptorWithDataType:(MPSDataType)dataType shape:(NSArray *)shape
{
  v6 = *&dataType;
  v8 = objc_msgSend_count(shape, a2, *&dataType, shape, v4);
  if (v8)
  {
    v12 = 0;
    v13 = v8 - 1;
    *&v14 = 0x100000001;
    *(&v14 + 1) = 0x100000001;
    v34 = v14;
    v36 = v14;
    v30 = v14;
    v32 = v14;
    do
    {
      v15 = objc_msgSend_objectAtIndexedSubscript_(shape, v9, v12, v10, v11, v30, v32, v34, v36);
      v20 = objc_msgSend_unsignedIntegerValue(v15, v16, v17, v18, v19);
      v38 = v37;
      v39 = v31;
      v40 = v35;
      v41 = v33;
      *(&v38 + (v13 & 0xF)) = v20;
      v32 = v41;
      v34 = v40;
      ++v12;
      --v13;
      v30 = v39;
      v36 = v38;
    }

    while (v13 != -1);
  }

  else
  {
    *&v21 = 0x100000001;
    *(&v21 + 1) = 0x100000001;
    v34 = v21;
    v36 = v21;
    v30 = v21;
    v32 = v21;
  }

  v22 = [self alloc];
  v27 = objc_msgSend_count(shape, v23, v24, v25, v26);
  v42[2] = v34;
  v42[3] = v32;
  v42[0] = v36;
  v42[1] = v30;
  return objc_msgSend_initWithDataType_dimensions_sizes_(v22, v28, v6, v27, v42);
}

+ (MPSNDArrayDescriptor)descriptorWithDataType:(MPSDataType)dataType dimensionSizes:(NSUInteger)dimension0
{
  va_start(va, dimension0);
  v47 = va_arg(va, void);
  v4 = *&dataType;
  if (dimension0 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = dimension0;
  }

  *&v6 = 0x100000001;
  *(&v6 + 1) = 0x100000001;
  *(&v7 + 1) = 0x100000001;
  *&v7 = v5 | 0x100000000;
  *&v8 = 0x100000001;
  *(&v8 + 1) = 0x100000001;
  if (dimension0)
  {
    va_copy(v46, va);
    if (v47)
    {
      DWORD1(v7) = v47;
      v9 = *&v46[0];
      *&v46[0] += 8;
      v10 = *v9;
      if (v10)
      {
        DWORD2(v7) = v10;
        v11 = *&v46[0];
        *&v46[0] += 8;
        v12 = *v11;
        if (v12)
        {
          HIDWORD(v7) = v12;
          v13 = *&v46[0];
          *&v46[0] += 8;
          v14 = *v13;
          v45 = v7;
          if (v14)
          {
            LODWORD(v6) = v14;
            v15 = *&v46[0];
            *&v46[0] += 8;
            v16 = *v15;
            if (v16)
            {
              DWORD1(v6) = v16;
              v17 = *&v46[0];
              *&v46[0] += 8;
              v18 = *v17;
              if (v18)
              {
                DWORD2(v6) = v18;
                v19 = *&v46[0];
                *&v46[0] += 8;
                v20 = *v19;
                if (v20)
                {
                  HIDWORD(v6) = v20;
                  v21 = *&v46[0];
                  *&v46[0] += 8;
                  v22 = *v21;
                  if (v22)
                  {
                    *(&v23 + 1) = 0x100000001;
                    *&v23 = v22 | 0x100000000;
                    v24 = *&v46[0];
                    *&v46[0] += 8;
                    v25 = *v24;
                    if (v25)
                    {
                      DWORD1(v23) = v25;
                      v26 = *&v46[0];
                      *&v46[0] += 8;
                      v27 = *v26;
                      if (v27)
                      {
                        DWORD2(v23) = v27;
                        v28 = *&v46[0];
                        *&v46[0] += 8;
                        v29 = *v28;
                        if (v29)
                        {
                          HIDWORD(v23) = v29;
                          v30 = *&v46[0];
                          *&v46[0] += 8;
                          v31 = *v30;
                          if (v31)
                          {
                            LODWORD(v8) = v31;
                            v32 = *&v46[0];
                            *&v46[0] += 8;
                            v33 = *v32;
                            if (v33)
                            {
                              DWORD1(v8) = v33;
                              v34 = *&v46[0];
                              *&v46[0] += 8;
                              v35 = *v34;
                              if (v35)
                              {
                                DWORD2(v8) = v35;
                                v36 = *&v46[0];
                                *&v46[0] += 8;
                                v37 = *v36;
                                if (v37)
                                {
                                  HIDWORD(v8) = v37;
                                  v38 = 16;
                                }

                                else
                                {
                                  v38 = 15;
                                }
                              }

                              else
                              {
                                v38 = 14;
                              }
                            }

                            else
                            {
                              v38 = 13;
                            }
                          }

                          else
                          {
                            v38 = 12;
                          }
                        }

                        else
                        {
                          v38 = 11;
                        }
                      }

                      else
                      {
                        v38 = 10;
                      }
                    }

                    else
                    {
                      v38 = 9;
                    }
                  }

                  else
                  {
                    v38 = 8;
                    *&v23 = 0x100000001;
                    *(&v23 + 1) = 0x100000001;
                  }
                }

                else
                {
                  v38 = 7;
                  *&v23 = 0x100000001;
                  *(&v23 + 1) = 0x100000001;
                }
              }

              else
              {
                v38 = 6;
                *&v23 = 0x100000001;
                *(&v23 + 1) = 0x100000001;
              }
            }

            else
            {
              v38 = 5;
              *&v23 = 0x100000001;
              *(&v23 + 1) = 0x100000001;
            }
          }

          else
          {
            v38 = 4;
            *&v23 = 0x100000001;
            *(&v23 + 1) = 0x100000001;
          }
        }

        else
        {
          v45 = v7;
          v38 = 3;
          *&v23 = 0x100000001;
          *(&v23 + 1) = 0x100000001;
        }
      }

      else
      {
        v45 = v7;
        v38 = 2;
        *&v23 = 0x100000001;
        *(&v23 + 1) = 0x100000001;
      }
    }

    else
    {
      v45 = v7;
      v38 = 1;
      *&v23 = 0x100000001;
      *(&v23 + 1) = 0x100000001;
    }

    v43 = v8;
    v44 = v6;
  }

  else
  {
    v44 = v6;
    v45 = v7;
    v38 = 0;
    *&v23 = 0x100000001;
    *(&v23 + 1) = 0x100000001;
    v43 = v23;
  }

  v42 = v23;
  v39 = [self alloc];
  v46[0] = v45;
  v46[1] = v44;
  v46[2] = v42;
  v46[3] = v43;
  return objc_msgSend_initWithDataType_dimensions_sizes_(v39, v40, v4, v38, v46);
}

- (id)getShape
{
  v8 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, self->_numberOfDimensions, v2, v3);
  numberOfDimensions = self->_numberOfDimensions;
  if (numberOfDimensions >= 1)
  {
    v10 = numberOfDimensions + 1;
    do
    {
      v11 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v5, *&self->_sliceLengths[4 * (*(&v16 | (v10 - 2) & 0xF) & 0xF)], v6, v7, *self->_dimensionOrder, *&self->_dimensionOrder[8]);
      objc_msgSend_addObject_(v8, v12, v11, v13, v14);
      --v10;
    }

    while (v10 > 1);
  }

  return v8;
}

- (void)reshapeWithShape:(NSArray *)shape
{
  v7 = objc_msgSend_count(shape, a2, shape, v3, v4);
  v11 = v7;
  if (v7)
  {
    v12 = 0;
    v13 = v7 - 1;
    *&v14 = 0x100000001;
    *(&v14 + 1) = 0x100000001;
    v15 = 1;
    *&v16 = 0x100000001;
    *(&v16 + 1) = 0x100000001;
    *&v17 = 0x100000001;
    *(&v17 + 1) = 0x100000001;
    *&v18 = 0x100000001;
    *(&v18 + 1) = 0x100000001;
    do
    {
      v39 = v18;
      v41 = v17;
      v43 = v14;
      v19 = objc_msgSend_objectAtIndexedSubscript_(shape, v8, v12, v9, v10, v16);
      v24 = objc_msgSend_unsignedIntegerValue(v19, v20, v21, v22, v23);
      v45 = v43;
      v46 = v37;
      v47 = v41;
      v48 = v39;
      *(&v45 + (v13 & 0xF)) = v24;
      v17 = v47;
      v18 = v48;
      v15 *= v24;
      ++v12;
      --v13;
      v14 = v45;
      v16 = v46;
    }

    while (v13 != -1);
  }

  else
  {
    *&v14 = 0x100000001;
    *(&v14 + 1) = 0x100000001;
    v15 = 1;
    *&v16 = 0x100000001;
    *(&v16 + 1) = 0x100000001;
    *&v17 = 0x100000001;
    *(&v17 + 1) = 0x100000001;
    *&v18 = 0x100000001;
    *(&v18 + 1) = 0x100000001;
  }

  v40 = v18;
  v42 = v17;
  v44 = v14;
  selfCopy = self;
  do
  {
    v26 = selfCopy;
    selfCopy = selfCopy->_child;
  }

  while (selfCopy);
  v38 = v16;
  v28 = *v26->_sliceLengths;
  v27 = *&v26->_sliceLengths[16];
  v29 = DWORD2(v28);
  v30 = HIDWORD(v28);
  v31 = v28 * HIDWORD(*v26->_sliceLengths);
  v32 = *&v26->_sliceLengths[48];
  if (v15 != v31 * v29 * v30 * v27 * DWORD1(v27) * DWORD2(v27) * HIDWORD(v27) * *&v26->_sliceLengths[32] * HIDWORD(*&v26->_sliceLengths[32]) * *&v26->_sliceLengths[40] * HIDWORD(*&v26->_sliceLengths[32]) * v32 * DWORD1(v32) * DWORD2(v32) * HIDWORD(v32) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v33 = [MPSNDArrayDescriptor alloc];
  dataType = self->_dataType;
  v49[2] = v42;
  v49[3] = v40;
  v49[0] = v44;
  v49[1] = v38;
  v36 = objc_msgSend_initWithDataType_dimensions_sizes_(v33, v35, dataType, v11, v49);
  *(v36 + 268) = self->_preferPackedRows;
  *(v36 + 256) = v26;
  v26->_transitionOp = 2;
  v26->_child = v36;
}

- (void)reshapeWithDimensionCount:(NSUInteger)numberOfDimensions dimensionSizes:(NSUInteger *)dimensionSizes
{
  if (numberOfDimensions)
  {
    v6 = 0;
    *&v7 = 0x100000001;
    *(&v7 + 1) = 0x100000001;
    v8 = 1;
    *&v9 = 0x100000001;
    *(&v9 + 1) = 0x100000001;
    *&v10 = 0x100000001;
    *(&v10 + 1) = 0x100000001;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    do
    {
      v12 = dimensionSizes[v6];
      v29 = v7;
      v30 = v9;
      v31 = v10;
      v32 = v11;
      *(&v29 + (v6 & 0xF)) = v12;
      v10 = v31;
      v11 = v32;
      v7 = v29;
      v9 = v30;
      v8 *= v12;
      ++v6;
    }

    while (numberOfDimensions != v6);
  }

  else
  {
    *&v7 = 0x100000001;
    *(&v7 + 1) = 0x100000001;
    v8 = 1;
    *&v9 = 0x100000001;
    *(&v9 + 1) = 0x100000001;
    *&v10 = 0x100000001;
    *(&v10 + 1) = 0x100000001;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
  }

  v26 = v10;
  v27 = v9;
  v28 = v7;
  selfCopy = self;
  do
  {
    v14 = selfCopy;
    selfCopy = selfCopy->_child;
  }

  while (selfCopy);
  v25 = v11;
  v15 = *v14->_sliceLengths;
  v16 = *&v14->_sliceLengths[16];
  v17 = DWORD2(v15);
  v18 = HIDWORD(v15);
  v19 = v15 * HIDWORD(*v14->_sliceLengths);
  v20 = *&v14->_sliceLengths[48];
  if (v8 != v19 * v17 * v18 * v16 * DWORD1(v16) * DWORD2(v16) * HIDWORD(v16) * *&v14->_sliceLengths[32] * HIDWORD(*&v14->_sliceLengths[32]) * *&v14->_sliceLengths[40] * HIDWORD(*&v14->_sliceLengths[32]) * v20 * DWORD1(v20) * DWORD2(v20) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v21 = [MPSNDArrayDescriptor alloc];
  dataType = self->_dataType;
  v33[2] = v26;
  v33[3] = v25;
  v33[0] = v28;
  v33[1] = v27;
  v24 = objc_msgSend_initWithDataType_dimensions_sizes_(v21, v23, dataType, numberOfDimensions, v33);
  *(v24 + 268) = self->_preferPackedRows;
  *(v24 + 256) = v14;
  v14->_transitionOp = 2;
  v14->_child = v24;
}

- (void)dealloc
{
  self->_child = 0;
  v3.receiver = self;
  v3.super_class = MPSNDArrayDescriptor;
  [(MPSNDArrayDescriptor *)&v3 dealloc];
}

@end