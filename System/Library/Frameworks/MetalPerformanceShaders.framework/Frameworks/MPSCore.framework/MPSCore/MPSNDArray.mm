@interface MPSNDArray
+ (id)defaultAllocator;
- (MPSNDArray)init;
- (MPSNDArray)initWithBuffer:(id)buffer dataType:(unsigned int)type numDimensions:(unint64_t)dimensions dimSizes:(const int64_t *)sizes strides:(const int64_t *)strides offsets:(const int64_t *)offsets offsetBytes:(unint64_t)bytes sizePermutation:(unint64_t)self0 permutation:(const int64_t *)self1;
- (MPSNDArray)initWithBufferImpl:(id)impl offset:(unint64_t)offset descriptor:(id)descriptor isForNDArrayAlias:(BOOL)alias isUserBuffer:(BOOL)buffer;
- (MPSNDArray)initWithDevice:(id)device descriptor:(id)descriptor isTextureBacked:(BOOL)backed;
- (MPSNDArray)initWithDevice:(id)device matrix:(id)matrix;
- (MPSNDArray)initWithDevice:(id)device scalar:(double)value;
- (MPSNDArrayDescriptor)descriptor;
- (NSUInteger)lengthOfDimension:(NSUInteger)dimensionIndex;
- (NSUInteger)resourceSize;
- (id).cxx_construct;
- (id)arrayViewWithCommandBuffer:(id)buffer computeEncoder:(id)encoder descriptor:(id)descriptor destinationArray:(id)array aliasing:(unint64_t)aliasing;
- (id)arrayViewWithDimensionCount:(unint64_t)count dimensionSizes:(const unint64_t *)sizes strides:(const unint64_t *)strides;
- (id)arrayViewWithShape:(id)shape strides:(id)strides;
- (id)buffer;
- (id)checkNDArray:(const float *)array nativeUlps:(float)ulps absoluteErr:(float)err PSNR:(float)r;
- (id)dataWithCommandBuffer:(id)buffer;
- (id)debugDescription;
- (id)matrixWithCommandBuffer:(id)buffer descriptor:(id)descriptor aliasing:(unint64_t)aliasing;
- (id)safeArrayViewWithCommandBuffer:(id)buffer computeEncoder:(id)encoder descriptor:(id)descriptor aliasing:(unint64_t)aliasing;
- (id)userBuffer;
- (size_t)dataTypeSize;
- (void)arrayViewWithCommandBuffer:(id)buffer descriptor:(id)descriptor destinationArray:(id)array aliasing:(unint64_t)aliasing;
- (void)copyDataWithCommandBuffer:(id)buffer images:(id)images offset:(MPSImageCoordinate *)offset imageToArray:(BOOL)array;
- (void)dealloc;
- (void)encodeCopyWithCommandBuffer:(id)buffer computeEncoder:(id)encoder toBuffer:(id)toBuffer destinationDataType:(unsigned int)type destinationOffsetBytes:(unint64_t)bytes destinationStrideBytes:(int64_t *)strideBytes;
- (void)encodeReshapedMatrixWithCommandBuffer:(id)buffer computeEncoder:(id)encoder toBuffer:(id)toBuffer destinationDataType:(unsigned int)type destinationOffsetBytes:(unint64_t)bytes destinationRowBytes:(unint64_t)rowBytes destinationColumns:(unint64_t)columns destinationRows:(unint64_t)self0;
- (void)exportDataWithCommandBuffer:(id)buffer computeEncoder:(id)encoder toBuffer:(id)toBuffer destinationDataType:(unsigned int)type offset:(unint64_t)offset rowStrides:(int64_t *)strides lengths:(unint64_t *)lengths numLengths:(unint64_t)self0 flatteningLevel:(unint64_t)self1;
- (void)exportDataWithCommandBuffer:(id)buffer toBuffer:(id)toBuffer destinationDataType:(unsigned int)type offset:(unint64_t)offset rowStrides:(int64_t *)strides lengths:(unint64_t *)lengths numLengths:(unint64_t)numLengths flatteningLevel:(unint64_t)self0;
- (void)importDataWithCommandBuffer:(id)buffer computeEncoder:(id)encoder fromBuffer:(id)fromBuffer sourceDataType:(unsigned int)type offset:(unint64_t)offset rowStrides:(int64_t *)strides;
- (void)importDataWithCommandBuffer:(id)cmdBuf fromBuffer:(id)buffer sourceDataType:(MPSDataType)sourceDataType offset:(NSUInteger)offset rowStrides:(NSInteger *)rowStrides;
- (void)makeStrideBytesInArray:(int64_t *)array;
- (void)printNDArrayToFile:(__sFILE *)file;
- (void)readBytes:(void *)buffer strideBytes:(NSInteger *)strideBytesPerDimension;
- (void)shapeToVector:(int64_t *)vector numberOfDimensions:(int64_t)dimensions;
- (void)updateStrides;
- (void)writeBytes:(void *)buffer strideBytes:(NSInteger *)strideBytesPerDimension;
@end

@implementation MPSNDArray

- (void)dealloc
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  isTemporary = self->_isTemporary;
  objc_opt_class();
  if (isTemporary != (objc_opt_isKindOfClass() & 1) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  self->_label = 0;
  v4.receiver = self;
  v4.super_class = MPSNDArray;
  [(MPSNDArray *)&v4 dealloc];
}

- (size_t)dataTypeSize
{
  if ((self->_dataType & 0xFFF8) != 0)
  {
    return self->_dataType >> 3;
  }

  v4 = MTLReportFailureTypeEnabled();
  selfCopy2 = self;
  if (v4)
  {
    MTLReportFailure();
    selfCopy2 = self;
  }

  return selfCopy2->_dataType >> 3;
}

- (NSUInteger)lengthOfDimension:(NSUInteger)dimensionIndex
{
  if (dimensionIndex >= 0x10)
  {
    selfCopy = self;
    v5 = dimensionIndex;
    v7 = MTLReportFailureTypeEnabled();
    LOBYTE(dimensionIndex) = v5;
    v8 = v7;
    self = selfCopy;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = selfCopy;
      LOBYTE(dimensionIndex) = v5;
    }
  }

  return *&self->_dimensionLengths[4 * (dimensionIndex & 0xF)];
}

+ (id)defaultAllocator
{
  result = atomic_load_explicit(&qword_27DA622A8, memory_order_acquire);
  if (!result)
  {
    result = objc_alloc_init(MPSNDArrayDefaultAllocator);
    v3 = 0;
    atomic_compare_exchange_strong_explicit(&qword_27DA622A8, &v3, result, memory_order_release, memory_order_relaxed);
    if (v3)
    {
      *(result + 2) = 1;

      return atomic_load_explicit(&qword_27DA622A8, memory_order_acquire);
    }
  }

  return result;
}

- (MPSNDArrayDescriptor)descriptor
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *&self->_dimensionLengths[32];
  v3 = *&self->_dimensionLengths[48];
  v6 = *self->_dimensionLengths;
  v5 = *&self->_dimensionLengths[16];
  *&v7 = v6;
  *(&v7 + 1) = DWORD1(v6);
  v8 = v7;
  *&v7 = DWORD2(v6);
  *(&v7 + 1) = HIDWORD(v6);
  v22[0] = v8;
  v22[1] = v7;
  *&v7 = v5;
  *(&v7 + 1) = DWORD1(v5);
  v9 = v7;
  *&v7 = DWORD2(v5);
  *(&v7 + 1) = HIDWORD(v5);
  v22[2] = v9;
  v22[3] = v7;
  *&v7 = v4;
  *(&v7 + 1) = DWORD1(v4);
  v10 = v7;
  *&v7 = DWORD2(v4);
  *(&v7 + 1) = HIDWORD(v4);
  v22[4] = v10;
  v22[5] = v7;
  *&v7 = v3;
  *(&v7 + 1) = DWORD1(v3);
  v11 = v7;
  *&v7 = DWORD2(v3);
  *(&v7 + 1) = HIDWORD(v3);
  v22[6] = v11;
  v22[7] = v7;
  result = objc_msgSend_descriptorWithDataType_dimensionCount_dimensionSizes_(MPSNDArrayDescriptor, a2, self->_dataType, self->_numberOfDimensions, v22);
  *result->_dimensionOrder = *self->_dimensionOrder;
  v13 = *&self->_sliceLengths[16];
  v14 = *&self->_sliceLengths[32];
  v15 = *&self->_sliceLengths[48];
  *result->_sliceLengths = *self->_sliceLengths;
  *&result->_sliceLengths[16] = v13;
  *&result->_sliceLengths[32] = v14;
  *&result->_sliceLengths[48] = v15;
  v16 = *&self->_sliceOffsets[16];
  v17 = *&self->_sliceOffsets[32];
  v18 = *&self->_sliceOffsets[48];
  *result->_sliceOffsets = *self->_sliceOffsets;
  *&result->_sliceOffsets[16] = v16;
  *&result->_sliceOffsets[32] = v17;
  *&result->_sliceOffsets[48] = v18;
  v20 = *self->_dimensionLengths;
  v19 = *&self->_dimensionLengths[16];
  v21 = *&self->_dimensionLengths[48];
  *&result->_dimensionLengths[32] = *&self->_dimensionLengths[32];
  *&result->_dimensionLengths[48] = v21;
  *result->_dimensionLengths = v20;
  *&result->_dimensionLengths[16] = v19;
  if (self->_rowElements == *self->_dimensionLengths)
  {
    result->_preferPackedRows = 1;
  }

  result->_rowBytes = self->_rowBytes;
  return result;
}

- (id)dataWithCommandBuffer:(id)buffer
{
  if ((self->_dataType & 0xFFF8) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (self->_isTextureBacked && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  numberOfDimensions = self->_numberOfDimensions;
  if (numberOfDimensions == 1)
  {
    rowBytes = (LOWORD(self->_dataType) * *self->_sliceLengths) >> 3;
  }

  else
  {
    rowBytes = self->_rowBytes;
    if (numberOfDimensions)
    {
      v10 = *&self->_sliceLengths[32];
      v9 = *&self->_sliceLengths[48];
      v11 = 2;
      v13 = *self->_sliceLengths;
      v12 = *&self->_sliceLengths[16];
      do
      {
        v65[0] = v13;
        v65[1] = v12;
        v65[2] = v10;
        v65[3] = v9;
        rowBytes *= *(v65 + ((v11 - 1) & 0xF));
      }

      while (numberOfDimensions > v11++);
    }
  }

  v15 = objc_msgSend_device(buffer, a2, buffer, v3, v4);
  MPSDevice = MPSDevice::GetMPSDevice(v15);
  if (!MPSDevice)
  {
    return 0;
  }

  v17 = MPSDevice;
  v18 = (*(*MPSDevice + 24))();
  v19 = (*(*v17 + 40))(v17);
  v22 = objc_msgSend_newBufferWithLength_options_(v15, v20, rowBytes, v19 | (16 * v18), v21);
  v26 = *&self->_sliceLengths[32];
  v25 = *&self->_sliceLengths[48];
  v28 = *self->_sliceLengths;
  v27 = *&self->_sliceLengths[16];
  dataType_low = LOWORD(self->_dataType);
  v30 = self->_numberOfDimensions;
  v31 = self->_rowBytes;
  if (dataType_low <= 7)
  {
    v52 = *&self->_sliceLengths[32];
    v54 = *&self->_sliceLengths[48];
    v48 = *self->_sliceLengths;
    v50 = *&self->_sliceLengths[16];
    v46 = MTLReportFailureTypeEnabled();
    v28 = v48;
    v27 = v50;
    v26 = v52;
    v25 = v54;
    if (v46)
    {
      MTLReportFailure();
      v28 = v48;
      v27 = v50;
      v26 = v52;
      v25 = v54;
    }
  }

  v23.i64[0] = 0;
  if (dataType_low <= 7)
  {
    v32 = 1;
  }

  else
  {
    v32 = dataType_low >> 3;
  }

  v24.i64[0] = v31;
  v33 = vdupq_lane_s64(vceqq_s64(v24, v23).i64[0], 0);
  v34 = v32;
  v34.i32[1] = v31;
  v35 = 0uLL;
  v36 = vbslq_s8(v33, v32, v34);
  v37 = 1;
  if (v31)
  {
    v37 = 2;
  }

  if (v37 >= v30)
  {
    v38 = 0uLL;
    v39 = 0uLL;
  }

  else
  {
    if (v31)
    {
      v32 = v31;
    }

    v38 = 0uLL;
    v39 = 0uLL;
    do
    {
      v59 = xmmword_22E37B090;
      v64[0] = v28;
      v64[1] = v27;
      v64[2] = v26;
      v64[3] = v25;
      v32 *= *(v64 + (*(&v59 | (v37 - 1) & 0xF) & 0xF));
      v60 = v36;
      v61 = v35;
      v62 = v38;
      v63 = v39;
      v60.i32[v37 & 0xF] = v32;
      v38 = v62;
      v39 = v63;
      v36 = v60;
      v35 = v61;
      ++v37;
    }

    while (v30 != v37);
  }

  v47 = v39;
  v49 = v38;
  v51 = v36;
  v53 = v35;
  v40 = malloc_type_malloc(8 * self->_numberOfDimensions, 0x100004000313F17uLL);
  v42 = v40;
  if (self->_numberOfDimensions)
  {
    v43 = 0;
    v44 = 1;
    do
    {
      v55 = v51;
      v56 = v53;
      v57 = v49;
      v58 = v47;
      *(v40 + v43) = v55.i32[(v44 - 1) & 0xF];
      v43 = v44++;
    }

    while (self->_numberOfDimensions > v43);
  }

  objc_msgSend_exportDataWithCommandBuffer_toBuffer_destinationDataType_offset_rowStrides_(self, v41, buffer, v22, self->_dataType, 0, v40, *&v53, *v51.i64, *&v49, *&v47, v47, v49, *&v51, v53, *&v55, v56, v57, v58, v59);
  free(v42);
  return v22;
}

- (MPSNDArray)init
{
  if (MTLReportFailureTypeEnabled())
  {
    v8 = objc_opt_class();
    v10 = NSStringFromClass(v8);
    v11 = NSStringFromSelector(a2);
    MTLReportFailure();
  }

  objc_msgSend_dealloc(self, v4, v5, v6, v7, v10, v11);
  return 0;
}

- (MPSNDArray)initWithDevice:(id)device descriptor:(id)descriptor isTextureBacked:(BOOL)backed
{
  if (!descriptor)
  {
    selfCopy2 = self;
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_58;
    }

    goto LABEL_63;
  }

  if (!device)
  {
    selfCopy2 = self;
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_58;
    }

LABEL_63:
    v84 = objc_opt_class();
    NSStringFromClass(v84);
    NSStringFromSelector(a2);
    goto LABEL_57;
  }

  v123.receiver = self;
  v123.super_class = MPSNDArray;
  v9 = [(MPSNDArray *)&v123 init];
  selfCopy2 = v9;
  if (!v9)
  {
    return selfCopy2;
  }

  v11 = *(descriptor + 3);
  v12.i64[0] = 0x100000001;
  v12.i64[1] = 0x100000001;
  v13 = vandq_s8(vceqzq_s32(v11), v12);
  v14 = vorrq_s8(*(descriptor + 2), vandq_s8(vceqzq_s32(*(descriptor + 2)), v12));
  v15 = vorrq_s8(*(descriptor + 1), vandq_s8(vceqzq_s32(*(descriptor + 1)), v12));
  v16 = vorrq_s8(*(descriptor + 4), vandq_s8(vceqzq_s32(*(descriptor + 4)), v12));
  v17 = vorrq_s8(v11, v13);
  v9->_dataType = *(descriptor + 60);
  v9->_numberOfDimensions = *(descriptor + 28);
  *v9->_dimensionOrder = *(descriptor + 13);
  v18 = *(descriptor + 10);
  v19 = *(descriptor + 11);
  v20 = *(descriptor + 12);
  *v9->_sliceLengths = *(descriptor + 9);
  *&v9->_sliceLengths[16] = v18;
  *&v9->_sliceLengths[32] = v19;
  *&v9->_sliceLengths[48] = v20;
  v21 = *(descriptor + 7);
  v22 = *(descriptor + 8);
  v23 = *(descriptor + 6);
  *v9->_sliceOffsets = *(descriptor + 5);
  *&v9->_sliceOffsets[16] = v23;
  *&v9->_sliceOffsets[32] = v21;
  *&v9->_sliceOffsets[48] = v22;
  v111 = v17;
  v112 = v16;
  *&v9->_dimensionLengths[32] = v17;
  *&v9->_dimensionLengths[48] = v16;
  v109 = v15;
  v110 = v14;
  *v9->_dimensionLengths = v15;
  *&v9->_dimensionLengths[16] = v14;
  v9->_isTextureBacked = backed;
  MPSDevice = MPSDevice::GetMPSDevice(device);
  selfCopy2->_device = MPSDevice;
  selfCopy2->_parent = 0;
  selfCopy2->_label = 0;
  selfCopy2->_isTemporary = 0;
  selfCopy2->_offset = 0;
  selfCopy2->_isUserBuffer = 0;
  v25 = objc_opt_class();
  v29 = objc_msgSend_libraryInfo_(v25, v26, selfCopy2->_device, v27, v28);
  selfCopy2->_library = MPSDevice::GetMPSLibrary_DoNotUse(MPSDevice, v29, v30, v31, v32);
  if (*(descriptor + 28) >= 0x11uLL)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_58;
    }

    goto LABEL_73;
  }

  v33.i64[0] = 0x1010101010101010;
  v33.i64[1] = 0x1010101010101010;
  if ((vminvq_u8(vcgtq_u8(v33, *(descriptor + 13))) & 0x80) == 0)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_58;
    }

    goto LABEL_73;
  }

  if ((vminvq_u32(vandq_s8(vandq_s8(vcgeq_u32(v109, *(descriptor + 5)), vcgeq_u32(v111, *(descriptor + 7))), vandq_s8(vcgeq_u32(v110, *(descriptor + 6)), vcgeq_u32(v112, *(descriptor + 8))))) & 0x80000000) == 0)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_58;
    }

    goto LABEL_73;
  }

  if (backed)
  {
    return selfCopy2;
  }

  v34 = *(descriptor + 120);
  v35 = v34 * v109.u32[0];
  if (!*(descriptor + 268))
  {
    v35 = (v35 + 127) & 0x1FFFFFFFFFF80;
  }

  v36 = *(descriptor + 29);
  v37 = 8 * v36;
  if (!v36)
  {
    v37 = v35;
  }

  v38 = v37 >> 3;
  if ((v37 & 7) != 0)
  {
    v38 = 0;
  }

  selfCopy2->_rowBytes = v38;
  rowElements = v37 / v34;
  selfCopy2->_rowElements = v37 / v34;
  if ((v37 / v34) >> 31)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_58;
    }

LABEL_73:
    v85 = objc_opt_class();
    NSStringFromClass(v85);
    NSStringFromSelector(a2);
    goto LABEL_57;
  }

  v40 = *(descriptor + 28);
  if (v40 >= 2)
  {
    v41 = 1;
    while (1)
    {
      v122[0] = v109;
      v122[1] = v110;
      v122[2] = v111;
      v122[3] = v112;
      if ((*(v122 + (v41 & 0xF)) & 0x80000000) != 0)
      {
        break;
      }

      if (v40 == ++v41)
      {
        goto LABEL_19;
      }
    }

    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_58;
    }

LABEL_56:
    v82 = objc_opt_class();
    NSStringFromClass(v82);
    NSStringFromSelector(a2);
LABEL_57:
    MTLReportFailure();
    goto LABEL_58;
  }

LABEL_19:
  if (!is_mul_ok(v37, v109.u32[1]) || (v42 = v37 * v109.u32[1], v42 - 0x2000000000000001 < 0xDFFFFFFFFFFFFFF8) || !is_mul_ok(v42, v109.u32[2]) || (v43 = v42 * v109.u32[2], v43 - 0x2000000000000001 < 0xDFFFFFFFFFFFFFF8) || !is_mul_ok(v43, v109.u32[3]) || (v44 = v43 * v109.u32[3], v44 - 0x2000000000000001 < 0xDFFFFFFFFFFFFFF8) || !is_mul_ok(v44, v110.u32[0]) || (v45 = v44 * v110.u32[0], v45 - 0x2000000000000001 < 0xDFFFFFFFFFFFFFF8) || !is_mul_ok(v45, v110.u32[1]) || (v46 = v45 * v110.u32[1], v46 - 0x2000000000000001 < 0xDFFFFFFFFFFFFFF8) || !is_mul_ok(v46, v110.u32[2]) || (v47 = v46 * v110.u32[2], v47 - 0x2000000000000001 < 0xDFFFFFFFFFFFFFF8) || !is_mul_ok(v47, v110.u32[3]) || (v48 = v47 * v110.u32[3], v48 - 0x2000000000000001 < 0xDFFFFFFFFFFFFFF8) || !is_mul_ok(v48, v111.u32[0]) || (v49 = v48 * v111.u32[0], v49 - 0x2000000000000001 < 0xDFFFFFFFFFFFFFF8) || !is_mul_ok(v49, v111.u32[1]) || (v50 = v49 * v111.u32[1], v50 - 0x2000000000000001 < 0xDFFFFFFFFFFFFFF8) || !is_mul_ok(v50, v111.u32[2]) || (v51 = v50 * v111.u32[2], v51 - 0x2000000000000001 < 0xDFFFFFFFFFFFFFF8) || !is_mul_ok(v51, v111.u32[3]) || (v52 = v51 * v111.u32[3], v52 - 0x2000000000000001 < 0xDFFFFFFFFFFFFFF8) || !is_mul_ok(v52, v112.u32[0]) || (v53 = v52 * v112.u32[0], v53 - 0x2000000000000001 < 0xDFFFFFFFFFFFFFF8) || !is_mul_ok(v53, v112.u32[1]) || (v54 = v53 * v112.u32[1], v54 - 0x2000000000000001 < 0xDFFFFFFFFFFFFFF8) || !is_mul_ok(v54, v112.u32[2]) || (v55 = v54 * v112.u32[2], v55 - 0x2000000000000001 < 0xDFFFFFFFFFFFFFF8) || !is_mul_ok(v55, v112.u32[3]) || (v56 = v55 * v112.u32[3], v56 - 0x2000000000000001 < 0xDFFFFFFFFFFFFFF8))
  {
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_58:

      return 0;
    }

    goto LABEL_56;
  }

  selfCopy2->_buffer._device = device;
  selfCopy2->_buffer._requestedSize = (v56 + 7) >> 3;
  selfCopy2->_buffer._resourceSize.size = -1;
  selfCopy2->_buffer._resourceSize.align = 0;
  if (v34 < 8)
  {
    v81 = 0uLL;
    v74 = 0uLL;
    v75 = 0uLL;
    v76 = 0uLL;
    v77 = 0uLL;
    v78 = 0uLL;
    v79 = 0uLL;
    v80 = 0uLL;
  }

  else
  {
    if ((selfCopy2->_dataType & 0xFFF8) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    dataType_low = LOWORD(selfCopy2->_dataType);
    if (dataType_low < 8)
    {
      v58 = 1;
    }

    else
    {
      v58 = dataType_low >> 3;
    }

    v60 = *&selfCopy2->_dimensionLengths[32];
    v59 = *&selfCopy2->_dimensionLengths[48];
    v62 = *selfCopy2->_dimensionLengths;
    v61 = *&selfCopy2->_dimensionLengths[16];
    v63 = selfCopy2->_rowBytes * DWORD1(v62);
    v64 = v63 * DWORD2(v62) * HIDWORD(v62);
    v65 = v64 * v61 * DWORD1(v61);
    v66 = v65 * DWORD2(v61) * HIDWORD(v61);
    v67 = v66 * v60;
    v68 = v67 * DWORD1(v60);
    v69 = v68 * DWORD2(v60);
    v70 = v69 * HIDWORD(v60);
    v71 = v70 * v59;
    v72 = v71 * DWORD1(v59);
    v73 = v72 * DWORD2(v59);
    *&v74 = v63;
    *(&v74 + 1) = v63 * DWORD2(v62);
    *&v75 = v64;
    *(&v75 + 1) = v64 * v61;
    *&v76 = v65;
    *(&v76 + 1) = v65 * DWORD2(v61);
    *&v77 = v66;
    *(&v77 + 1) = v67;
    *&v78 = v68;
    *(&v78 + 1) = v69;
    *&v79 = v70;
    *(&v79 + 1) = v71;
    *&v80 = v72;
    *(&v80 + 1) = v73;
    *&v81 = v58;
    *(&v81 + 1) = selfCopy2->_rowBytes;
    rowElements = selfCopy2->_rowElements;
  }

  *selfCopy2->_strideBytes = v81;
  *&selfCopy2->_strideBytes[16] = v74;
  *&selfCopy2->_strideBytes[32] = v75;
  *&selfCopy2->_strideBytes[48] = v76;
  *&selfCopy2->_strideBytes[64] = v77;
  *&selfCopy2->_strideBytes[80] = v78;
  *&selfCopy2->_strideBytes[96] = v79;
  *&selfCopy2->_strideBytes[112] = v80;
  *&v86 = vdupq_n_s64(1uLL).u64[0];
  *(&v86 + 1) = rowElements;
  numberOfDimensions = selfCopy2->_numberOfDimensions;
  if (numberOfDimensions < 3)
  {
    v91 = 0uLL;
    v92 = 0uLL;
    v93 = 0uLL;
    v94 = 0uLL;
    v97 = 0uLL;
    v98 = 0uLL;
    v99 = 0uLL;
  }

  else
  {
    v89 = *&selfCopy2->_dimensionLengths[32];
    v88 = *&selfCopy2->_dimensionLengths[48];
    v90 = 2;
    v91 = 0uLL;
    v92 = 0uLL;
    v93 = 0uLL;
    v94 = 0uLL;
    v96 = *selfCopy2->_dimensionLengths;
    v95 = *&selfCopy2->_dimensionLengths[16];
    v97 = 0uLL;
    v98 = 0uLL;
    v99 = 0uLL;
    do
    {
      v121[0] = v96;
      v121[1] = v95;
      v121[2] = v89;
      v121[3] = v88;
      rowElements *= *(v121 + ((v90 - 1) & 0xF));
      v113 = v86;
      v114 = v99;
      v115 = v91;
      v116 = v92;
      v117 = v93;
      v118 = v94;
      v119 = v97;
      v120 = v98;
      *(&v113 + (v90 & 0xF)) = rowElements;
      v97 = v119;
      v98 = v120;
      v93 = v117;
      v94 = v118;
      v91 = v115;
      v92 = v116;
      v86 = v113;
      v99 = v114;
      ++v90;
    }

    while (numberOfDimensions != v90);
  }

  *selfCopy2->_strideElements = v86;
  *&selfCopy2->_strideElements[16] = v99;
  *&selfCopy2->_strideElements[32] = v91;
  *&selfCopy2->_strideElements[48] = v92;
  *&selfCopy2->_strideElements[64] = v93;
  *&selfCopy2->_strideElements[80] = v94;
  *&selfCopy2->_strideElements[96] = v97;
  *&selfCopy2->_strideElements[112] = v98;
  if (v34 <= 7)
  {
    v100 = *(&v86 + 1);
    v101 = 8u / v34;
    v102 = v92 / v101;
    v103 = *(&v92 + 1) / v101;
    *&v98 = v98 / v101;
    *(&v98 + 1) /= v101;
    *&v97 = v97 / v101;
    *(&v97 + 1) /= v101;
    *&v94 = v94 / v101;
    *(&v94 + 1) /= v101;
    *&v104 = v93 / v101;
    *(&v104 + 1) = *(&v93 + 1) / v101;
    *&v105 = v99 / v101;
    *(&v105 + 1) = *(&v99 + 1) / v101;
    *&v106 = v91 / v101;
    *(&v106 + 1) = *(&v91 + 1) / v101;
    *&v107 = v102;
    *(&v107 + 1) = v103;
    *&v108 = vdupq_n_s64(1uLL).u64[0];
    *(&v108 + 1) = v100 / v101;
    *&selfCopy2->_strideBytes[32] = v106;
    *&selfCopy2->_strideBytes[48] = v107;
    *selfCopy2->_strideBytes = v108;
    *&selfCopy2->_strideBytes[16] = v105;
    *&selfCopy2->_strideBytes[64] = v104;
    *&selfCopy2->_strideBytes[80] = v94;
    *&selfCopy2->_strideBytes[96] = v97;
    *&selfCopy2->_strideBytes[112] = v98;
  }

  return selfCopy2;
}

- (MPSNDArray)initWithBufferImpl:(id)impl offset:(unint64_t)offset descriptor:(id)descriptor isForNDArrayAlias:(BOOL)alias isUserBuffer:(BOOL)buffer
{
  v14 = objc_msgSend_device(impl, a2, impl, offset, descriptor);
  v21 = objc_msgSend_initWithDevice_descriptor_(self, v15, v14, descriptor, v16);
  if (v21)
  {
    if (impl)
    {
      if (alias)
      {
LABEL_8:
        v33 = MPSAutoBuffer::InitWithBuffer((v21 + 520), impl);
        v38 = objc_msgSend_buffer(v21, v34, v35, v36, v37, v33);
        *(v21 + 568) = objc_msgSend_iosurface(v38, v39, v40, v41, v42);
        *(v21 + 576) = offset;
        *(v21 + 610) = buffer;
        return v21;
      }

      objc_msgSend_length(impl, v17, v18, v19, v20);
      explicit = atomic_load_explicit((v21 + 520), memory_order_acquire);
      if (explicit)
      {
        objc_msgSend_length(explicit, v22, v23, v24, v25);
      }

      v31 = objc_msgSend_length(impl, v22, v23, v24, v25);
      v32 = atomic_load_explicit((v21 + 520), memory_order_acquire);
      if (v32)
      {
        if (v31 >= objc_msgSend_length(v32, v27, v28, v29, v30))
        {
          goto LABEL_8;
        }
      }

      else if (v31 >= *(v21 + 528))
      {
        goto LABEL_8;
      }

      if (MTLReportFailureTypeEnabled())
      {
        v44 = objc_opt_class();
        NSStringFromClass(v44);
        NSStringFromSelector(a2);
        v49 = atomic_load_explicit((v21 + 520), memory_order_acquire);
        if (v49)
        {
          objc_msgSend_length(v49, v45, v46, v47, v48);
        }

        goto LABEL_16;
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      v50 = objc_opt_class();
      NSStringFromClass(v50);
      NSStringFromSelector(a2);
LABEL_16:
      MTLReportFailure();
    }

    return 0;
  }

  return v21;
}

- (void)shapeToVector:(int64_t *)vector numberOfDimensions:(int64_t)dimensions
{
  numberOfDimensions = self->_numberOfDimensions;
  if (numberOfDimensions >= dimensions)
  {
    numberOfDimensions = dimensions;
  }

  if (numberOfDimensions >= 1)
  {
    for (i = 0; i != numberOfDimensions; ++i)
    {
      v6 = *self->_dimensionOrder;
      vector[i] = *&self->_sliceLengths[4 * (*(&v6 | i & 0xF) & 0xF)];
    }
  }
}

- (MPSNDArray)initWithBuffer:(id)buffer dataType:(unsigned int)type numDimensions:(unint64_t)dimensions dimSizes:(const int64_t *)sizes strides:(const int64_t *)strides offsets:(const int64_t *)offsets offsetBytes:(unint64_t)bytes sizePermutation:(unint64_t)self0 permutation:(const int64_t *)self1
{
  dimensionsCopy = dimensions;
  selfCopy = self;
  if (dimensions)
  {
    v17 = 0;
    v18 = 8 * dimensions - 8;
    v19 = (strides + v18);
    v20 = (sizes + v18);
    v21 = vdupq_n_s64(1uLL);
    *&v22 = 0x100000001;
    *(&v22 + 1) = 0x100000001;
    *&v23 = 0x100000001;
    *(&v23 + 1) = 0x100000001;
    *&v24 = 0x100000001;
    *(&v24 + 1) = 0x100000001;
    v25 = v21;
    v26 = v21;
    v27 = v21;
    *&v28 = 0x100000001;
    *(&v28 + 1) = 0x100000001;
    v29 = v21;
    v30 = v21;
    v31 = v21;
    v32 = v21;
    do
    {
      v34 = *v20;
      v20 -= 2;
      v33 = v34;
      v35 = *v19--;
      v159 = v22;
      v160 = v23;
      v161 = v24;
      v162 = v28;
      *(&v159 + (v17 & 0xF)) = v33;
      v24 = v161;
      v28 = v162;
      v22 = v159;
      v23 = v160;
      v151 = v21;
      v152 = v25;
      v153 = v26;
      v154 = v27;
      v155 = v29;
      v156 = v30;
      v157 = v31;
      v158 = v32;
      v151.i64[v17 & 0xF] = v35;
      v32 = v158;
      v31 = v157;
      v30 = v156;
      v29 = v155;
      v27 = v154;
      v26 = v153;
      ++v17;
      v25 = v152;
      v21 = v151;
    }

    while (dimensions != v17);
    v36 = dimensions - 1;
    if (dimensions == 1)
    {
      *&v38 = 0x100000001;
      *(&v38 + 1) = 0x100000001;
      *&v40 = 0x100000001;
      *(&v40 + 1) = 0x100000001;
      *&v41 = 0x100000001;
      *(&v41 + 1) = 0x100000001;
      *&v42 = 0x100000001;
      *(&v42 + 1) = 0x100000001;
    }

    else
    {
      v37 = v151.i64[0];
      *&v38 = 0x100000001;
      *(&v38 + 1) = 0x100000001;
      v39 = 1;
      *&v40 = 0x100000001;
      *(&v40 + 1) = 0x100000001;
      *&v41 = 0x100000001;
      *(&v41 + 1) = 0x100000001;
      *&v42 = 0x100000001;
      *(&v42 + 1) = 0x100000001;
      do
      {
        v150[0] = v21;
        v150[1] = v25;
        v150[2] = v26;
        v150[3] = v27;
        v150[4] = v29;
        v150[5] = v30;
        v150[6] = v31;
        v150[7] = v32;
        v43 = *(v150 + (v39 & 0xF));
        v146 = v38;
        v147 = v40;
        v148 = v41;
        v149 = v42;
        *(&v146 + ((v39 - 1) & 0xF)) = v43 / v37;
        v41 = v148;
        v42 = v149;
        v38 = v146;
        v40 = v147;
        ++v39;
        v37 = v43;
      }

      while (dimensions != v39);
    }

    v145[0] = v22;
    v145[1] = v23;
    v145[2] = v24;
    v145[3] = v28;
    v48 = 4 * (v36 & 0xF);
    v49 = *(v145 + v48);
    v141 = v38;
    v142 = v40;
    v143 = v41;
    v144 = v42;
    *(&v141 + v48) = v49;
    v46 = v143;
    v47 = v144;
    v44 = v141;
    v45 = v142;
    if (offsets)
    {
      v50 = v49 + *offsets;
      v137 = v141;
      v138 = v142;
      v139 = v143;
      v140 = v144;
      *(&v137 + (v36 & 0xF)) = v50;
      v46 = v139;
      v47 = v140;
      v44 = v137;
      v45 = v138;
    }
  }

  else
  {
    v21 = vdupq_n_s64(1uLL);
    *&v22 = 0x100000001;
    *(&v22 + 1) = 0x100000001;
    *&v23 = 0x100000001;
    *(&v23 + 1) = 0x100000001;
    *&v24 = 0x100000001;
    *(&v24 + 1) = 0x100000001;
    *&v28 = 0x100000001;
    *(&v28 + 1) = 0x100000001;
    v25 = v21;
    v26 = v21;
    v27 = v21;
    v29 = v21;
    v30 = v21;
    v31 = v21;
    v32 = v21;
    *&v44 = 0x100000001;
    *(&v44 + 1) = 0x100000001;
    *&v45 = 0x100000001;
    *(&v45 + 1) = 0x100000001;
    *&v46 = 0x100000001;
    *(&v46 + 1) = 0x100000001;
    *&v47 = 0x100000001;
    *(&v47 + 1) = 0x100000001;
  }

  v51 = 63 - __clz(type);
  v52 = v44 * type;
  self->_rowBytes = v52 >> 3;
  if (type)
  {
    v53 = v51;
  }

  else
  {
    v53 = 0;
  }

  self->_rowElements = v52 >> v53;
  if (v52 >> v53 >> 31)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v54 = 1;
  if (dimensions >= 2)
  {
    while (!(sizes[v54] >> 31))
    {
      if (dimensions == ++v54)
      {
        v54 = 1;
        while (1)
        {
          v136[0] = v44;
          v136[1] = v45;
          v136[2] = v46;
          v136[3] = v47;
          v55 = (v52 * *(v136 + (v54 & 0xF))) >> 64;
          v52 *= *(v136 + (v54 & 0xF));
          if (v55 || v52 - 0x2000000000000001 < 0xDFFFFFFFFFFFFFF8)
          {
            goto LABEL_24;
          }

          if (dimensions == ++v54)
          {
            goto LABEL_25;
          }
        }
      }
    }

    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_42;
    }

LABEL_40:
    v97 = objc_opt_class();
    NSStringFromClass(v97);
    NSStringFromSelector(a2);
LABEL_41:
    MTLReportFailure();
LABEL_42:

    return 0;
  }

LABEL_24:
  if (v54 != dimensions)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_42;
    }

LABEL_46:
    v98 = objc_opt_class();
    NSStringFromClass(v98);
    NSStringFromSelector(a2);
    goto LABEL_41;
  }

LABEL_25:
  if (dimensions >= 0x11)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_42;
    }

    goto LABEL_46;
  }

  v102 = v44;
  v103 = v45;
  v104 = v46;
  v105 = v47;
  v106 = v28;
  v107 = v23;
  v108 = v24;
  v109 = v22;
  v110 = v25;
  v111 = v32;
  v112 = v31;
  v113 = v30;
  v114 = v29;
  v115 = v27;
  v116 = v26;
  v117 = v21;
  v163.receiver = self;
  v163.super_class = MPSNDArray;
  v56 = [(MPSNDArray *)&v163 init];
  selfCopy = v56;
  if (v56)
  {
    aSelector = a2;
    v61 = (v52 + 7) >> 3;
    v56->_dataType = type;
    v56->_numberOfDimensions = dimensionsCopy;
    *v56->_dimensionOrder = xmmword_22E37B090;
    *v56->_sliceLengths = v109;
    *&v56->_sliceLengths[16] = v107;
    *&v56->_sliceLengths[32] = v108;
    *&v56->_sliceLengths[48] = v106;
    *&v56->_sliceOffsets[32] = 0u;
    *&v56->_sliceOffsets[48] = 0u;
    *v56->_sliceOffsets = 0u;
    *&v56->_sliceOffsets[16] = 0u;
    *v56->_dimensionLengths = v102;
    *&v56->_dimensionLengths[16] = v103;
    *&v56->_dimensionLengths[32] = v104;
    *&v56->_dimensionLengths[48] = v105;
    v62 = objc_msgSend_device(buffer, v57, v58, v59, v60);
    MPSDevice = MPSDevice::GetMPSDevice(v62);
    selfCopy->_device = MPSDevice;
    selfCopy->_parent = 0;
    selfCopy->_label = 0;
    *&selfCopy->_isTemporary = 0;
    selfCopy->_isUserBuffer = 1;
    v64 = objc_opt_class();
    v68 = objc_msgSend_libraryInfo_(v64, v65, selfCopy->_device, v66, v67);
    MPSLibrary_DoNotUse = MPSDevice::GetMPSLibrary_DoNotUse(MPSDevice, v68, v69, v70, v71);
    v73 = 0uLL;
    *selfCopy->_strideBytes = 0u;
    selfCopy->_library = MPSLibrary_DoNotUse;
    selfCopy->_buffer._requestedSize = v61;
    selfCopy->_buffer._device = v62;
    selfCopy->_buffer._resourceSize.size = -1;
    selfCopy->_buffer._resourceSize.align = 0;
    selfCopy->_offset = bytes;
    *&selfCopy->_strideBytes[16] = 0u;
    *&selfCopy->_strideBytes[32] = 0u;
    *&selfCopy->_strideBytes[48] = 0u;
    *&selfCopy->_strideBytes[64] = 0u;
    *&selfCopy->_strideBytes[80] = 0u;
    *&selfCopy->_strideBytes[96] = 0u;
    *&selfCopy->_strideBytes[112] = 0u;
    *selfCopy->_strideElements = 0u;
    *&selfCopy->_strideElements[16] = 0u;
    *&selfCopy->_strideElements[32] = 0u;
    *&selfCopy->_strideElements[48] = 0u;
    *&selfCopy->_strideElements[64] = 0u;
    *&selfCopy->_strideElements[80] = 0u;
    *&selfCopy->_strideElements[96] = 0u;
    *&selfCopy->_strideElements[112] = 0u;
    if (dimensionsCopy)
    {
      v74 = 0;
      v75 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      v78 = 0uLL;
      v79 = 0uLL;
      v80 = 0uLL;
      v81 = 0uLL;
      v82 = 0uLL;
      v83 = 0uLL;
      v84 = 0uLL;
      v85 = 0uLL;
      v86 = 0uLL;
      v87 = 0uLL;
      v88 = 0uLL;
      v89 = 0uLL;
      do
      {
        v135[0] = v117;
        v135[1] = v110;
        v135[2] = v116;
        v135[3] = v115;
        v135[4] = v114;
        v135[5] = v113;
        v135[6] = v112;
        v135[7] = v111;
        v90 = 8 * (v74 & 0xF);
        v91 = *(v135 + v90);
        v127 = v82;
        v128 = v83;
        v129 = v84;
        v130 = v85;
        v131 = v86;
        v132 = v87;
        v133 = v88;
        v134 = v89;
        *(&v127 + v90) = v91;
        v88 = v133;
        v89 = v134;
        v86 = v131;
        v87 = v132;
        v84 = v129;
        v85 = v130;
        v82 = v127;
        v83 = v128;
        *&selfCopy->_strideElements[96] = v133;
        *&selfCopy->_strideElements[112] = v89;
        *&selfCopy->_strideElements[64] = v86;
        *&selfCopy->_strideElements[80] = v87;
        *&selfCopy->_strideElements[32] = v84;
        *&selfCopy->_strideElements[48] = v85;
        *selfCopy->_strideElements = v82;
        *&selfCopy->_strideElements[16] = v83;
        v119 = v73;
        v120 = v75;
        v121 = v76;
        v122 = v77;
        v123 = v78;
        v124 = v79;
        v125 = v80;
        v126 = v81;
        *(&v119 + v90) = (v91 << v53) >> 3;
        v80 = v125;
        v81 = v126;
        v78 = v123;
        v79 = v124;
        v76 = v121;
        v77 = v122;
        v73 = v119;
        v75 = v120;
        *&selfCopy->_strideBytes[96] = v125;
        *&selfCopy->_strideBytes[112] = v81;
        *&selfCopy->_strideBytes[64] = v78;
        *&selfCopy->_strideBytes[80] = v79;
        *&selfCopy->_strideBytes[32] = v76;
        *&selfCopy->_strideBytes[48] = v77;
        *selfCopy->_strideBytes = v73;
        *&selfCopy->_strideBytes[16] = v75;
        if (offsets)
        {
          *&selfCopy->_sliceOffsets[4 * (v74 & 0xF)] = offsets[dimensionsCopy - 1];
        }

        ++v74;
        --dimensionsCopy;
      }

      while (dimensionsCopy);
    }

    MPSAutoBuffer::InitWithBuffer(&selfCopy->_buffer, buffer);
    selfCopy->_iosurface = 0;
    if (a11)
    {
      if (permutation)
      {
        v92 = 0;
        v93 = 0;
        v94 = *selfCopy->_dimensionOrder;
        do
        {
          v95 = a11[v92];
          v118 = v94;
          *(&v118 | v92 & 0xF) = v95;
          v94 = v118;
          *selfCopy->_dimensionOrder = v118;
          v93 |= 1 << v95;
          ++v92;
        }

        while (permutation != v92);
        if ((v93 ^ (-1 << permutation)) != 0xFFFFFFFF)
        {
          if (!MTLReportFailureTypeEnabled())
          {
            goto LABEL_42;
          }

          v100 = objc_opt_class();
          NSStringFromClass(v100);
          NSStringFromSelector(aSelector);
          goto LABEL_41;
        }
      }
    }
  }

  return selfCopy;
}

- (MPSNDArray)initWithDevice:(id)device matrix:(id)matrix
{
  v6 = objc_autoreleasePoolPush();
  v11 = objc_msgSend_dataType(matrix, v7, v8, v9, v10);
  v16 = objc_msgSend_columns(matrix, v12, v13, v14, v15);
  v21 = objc_msgSend_rows(matrix, v17, v18, v19, v20);
  v26 = objc_msgSend_matrices(matrix, v22, v23, v24, v25);
  v29 = objc_msgSend_descriptorWithDataType_dimensionSizes_(MPSNDArrayDescriptor, v27, v11, v16, v28, v21, v26, 0);
  v34 = v29;
  if (*(matrix + 3) * *(matrix + 32) == 8 * *(matrix + 5))
  {
    *(v29 + 268) = 1;
  }

  v35 = objc_msgSend_data(matrix, v30, v31, v32, v33);
  v40 = objc_msgSend_offset(matrix, v36, v37, v38, v39);
  isUserBuffer = objc_msgSend_initWithBufferImpl_offset_descriptor_isForNDArrayAlias_isUserBuffer_(self, v41, v35, v40, v34, 0, 1);
  if (!isUserBuffer)
  {
    objc_msgSend_dealloc(0, v42, v43, v44, v45);
  }

  objc_autoreleasePoolPop(v6);
  return isUserBuffer;
}

- (MPSNDArray)initWithDevice:(id)device scalar:(double)value
{
  v7 = objc_autoreleasePoolPush();
  v10 = objc_msgSend_descriptorWithDataType_dimensionSizes_(MPSNDArrayDescriptor, v8, 268435488, 1, v9, 0);
  v13 = objc_msgSend_initWithDevice_descriptor_(self, v11, device, v10, v12);
  v18 = v13;
  if (v13)
  {
    v19 = objc_msgSend_buffer(v13, v14, v15, v16, v17);
    v24 = objc_msgSend_contents(v19, v20, v21, v22, v23);
    v25 = value;
    *v24 = v25;
  }

  else
  {
    objc_msgSend_dealloc(0, v14, v15, v16, v17);
  }

  objc_autoreleasePoolPop(v7);
  return v18;
}

- (NSUInteger)resourceSize
{
  explicit = atomic_load_explicit(&self->_buffer, memory_order_acquire);
  if (explicit)
  {
    return objc_msgSend_length(explicit, a2, v2, v3, v4);
  }

  else
  {
    return self->_buffer._requestedSize;
  }
}

- (void)updateStrides
{
  if (self)
  {
    dataType_low = LOWORD(self->_dataType);
    if (dataType_low >= 8)
    {
      if ((dataType_low & 0xFFF8) == 0)
      {
        selfCopy = self;
        v53 = MTLReportFailureTypeEnabled();
        self = selfCopy;
        if (v53)
        {
          MTLReportFailure();
          self = selfCopy;
        }
      }

      v3 = LOWORD(self->_dataType);
      LODWORD(v4) = v3 >> 3;
      v6 = *&self->_dimensionLengths[32];
      v5 = *&self->_dimensionLengths[48];
      v8 = *self->_dimensionLengths;
      v7 = *&self->_dimensionLengths[16];
      v9 = self->_rowBytes * DWORD1(v8);
      v10 = v9 * DWORD2(v8);
      v11 = v10 * HIDWORD(v8);
      v12 = v11 * v7;
      v13 = v12 * DWORD1(v7);
      v14 = v13 * DWORD2(v7);
      v15 = v14 * HIDWORD(v7);
      v16 = v15 * v6;
      v17 = v16 * DWORD1(v6);
      v18 = v17 * DWORD2(v6);
      v19 = v18 * HIDWORD(v6) * v5;
      v20 = v19 * DWORD1(v5) * DWORD2(v5);
      *&v21 = v19 * DWORD1(v5);
      *(&v21 + 1) = v20;
      *&v22 = v18 * HIDWORD(v6);
      *(&v22 + 1) = v19;
      *&v23 = v17;
      *(&v23 + 1) = v18;
      *&v24 = v15;
      *(&v24 + 1) = v16;
      *&v25 = v13;
      *(&v25 + 1) = v14;
      *&v26 = v11;
      *(&v26 + 1) = v12;
      *&v27 = v9;
      *(&v27 + 1) = v10;
      if (v3 < 8)
      {
        v4 = 1;
      }

      else
      {
        v4 = v4;
      }

      *&v28 = v4;
      *(&v28 + 1) = self->_rowBytes;
      *self->_strideBytes = v28;
      *&self->_strideBytes[16] = v27;
      *&self->_strideBytes[32] = v26;
      *&self->_strideBytes[48] = v25;
      *&self->_strideBytes[64] = v24;
      *&self->_strideBytes[80] = v23;
      *&self->_strideBytes[96] = v22;
      *&self->_strideBytes[112] = v21;
    }

    *&v30 = vdupq_n_s64(1uLL).u64[0];
    rowElements = self->_rowElements;
    *(&v30 + 1) = rowElements;
    v31 = 0uLL;
    numberOfDimensions = self->_numberOfDimensions;
    if (numberOfDimensions < 3)
    {
      v36 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      v42 = 0uLL;
      v43 = 0uLL;
      *self->_strideElements = v30;
      *&self->_strideElements[16] = 0uLL;
      *&self->_strideElements[32] = 0u;
      *&self->_strideElements[48] = 0u;
      *&self->_strideElements[64] = 0u;
      *&self->_strideElements[80] = 0u;
      *&self->_strideElements[96] = 0u;
      *&self->_strideElements[112] = 0u;
      if (dataType_low <= 7)
      {
LABEL_12:
        v44 = *(&v30 + 1);
        v45 = 8u / dataType_low;
        v46 = v31 / v45;
        v47 = *(&v31 + 1) / v45;
        *&v43 = v43 / v45;
        *(&v43 + 1) /= v45;
        *&v42 = v42 / v45;
        *(&v42 + 1) /= v45;
        *&v48 = v39 / v45;
        *(&v48 + 1) = *(&v39 + 1) / v45;
        *&v49 = v38 / v45;
        *(&v49 + 1) = *(&v38 + 1) / v45;
        *&v50 = v46;
        *(&v50 + 1) = v47;
        *&v51 = v36 / v45;
        *(&v51 + 1) = *(&v36 + 1) / v45;
        *&v37 = v37 / v45;
        *(&v37 + 1) /= v45;
        *&v52 = vdupq_n_s64(1uLL).u64[0];
        *(&v52 + 1) = v44 / v45;
        *&self->_strideBytes[32] = v51;
        *&self->_strideBytes[48] = v37;
        *self->_strideBytes = v52;
        *&self->_strideBytes[16] = v50;
        *&self->_strideBytes[64] = v49;
        *&self->_strideBytes[80] = v48;
        *&self->_strideBytes[96] = v42;
        *&self->_strideBytes[112] = v43;
      }
    }

    else
    {
      v34 = *&self->_dimensionLengths[32];
      v33 = *&self->_dimensionLengths[48];
      v35 = 2;
      v36 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      v41 = *self->_dimensionLengths;
      v40 = *&self->_dimensionLengths[16];
      v42 = 0uLL;
      v43 = 0uLL;
      do
      {
        v63[0] = v41;
        v63[1] = v40;
        v63[2] = v34;
        v63[3] = v33;
        rowElements *= *(v63 + ((v35 - 1) & 0xF));
        v55 = v30;
        v56 = v31;
        v57 = v36;
        v58 = v37;
        v59 = v38;
        v60 = v39;
        v61 = v42;
        v62 = v43;
        *(&v55 + (v35 & 0xF)) = rowElements;
        v42 = v61;
        v43 = v62;
        v38 = v59;
        v39 = v60;
        v36 = v57;
        v37 = v58;
        v30 = v55;
        v31 = v56;
        ++v35;
      }

      while (numberOfDimensions != v35);
      *self->_strideElements = v55;
      *&self->_strideElements[16] = v31;
      *&self->_strideElements[32] = v36;
      *&self->_strideElements[48] = v37;
      *&self->_strideElements[64] = v38;
      *&self->_strideElements[80] = v39;
      *&self->_strideElements[96] = v42;
      *&self->_strideElements[112] = v43;
      if (dataType_low <= 7)
      {
        goto LABEL_12;
      }
    }
  }
}

- (id)arrayViewWithShape:(id)shape strides:(id)strides
{
  Shape = shape;
  v57 = *MEMORY[0x277D85DE8];
  if (!shape)
  {
    v8 = objc_msgSend_descriptor(self, a2, 0, strides, v4);
    Shape = objc_msgSend_getShape(v8, v9, v10, v11, v12);
  }

  v13 = objc_msgSend_count(Shape, a2, shape, strides, v4);
  if (v13 != objc_msgSend_count(strides, v14, v15, v16, v17))
  {
    return 0;
  }

  v22 = objc_msgSend_count(Shape, v18, v19, v20, v21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, unk_22E37B560, 1, 1, 1, unk_22E37B580, 1, 1, 1, unk_22E37B5A0, 1, 1, 1, unk_22E37B5C0);
  if (v22 >= 0x10)
  {
    v27 = 16;
  }

  else
  {
    v27 = v22;
  }

  if (v22)
  {
    v28 = &v55;
    v29 = &v56;
    v30 = -1;
    v31 = v27;
    do
    {
      v32 = objc_msgSend_count(Shape, v23, v24, v25, v26);
      v36 = objc_msgSend_objectAtIndexedSubscript_(Shape, v33, v32 + v30, v34, v35);
      *v29++ = objc_msgSend_unsignedIntegerValue(v36, v37, v38, v39, v40);
      v45 = objc_msgSend_count(Shape, v41, v42, v43, v44);
      v49 = objc_msgSend_objectAtIndexedSubscript_(strides, v46, v45 + v30, v47, v48);
      *v28++ = objc_msgSend_unsignedIntegerValue(v49, v50, v51, v52, v53);
      --v30;
      --v31;
    }

    while (v31);
  }

  return objc_msgSend_arrayViewWithDimensionCount_dimensionSizes_strides_(self, v23, v27, &v56, &v55);
}

- (id)arrayViewWithDimensionCount:(unint64_t)count dimensionSizes:(const unint64_t *)sizes strides:(const unint64_t *)strides
{
  result = 0;
  if (sizes)
  {
    if (strides)
    {
      result = 0;
      if (count)
      {
        if (self && *strides == 1)
        {
          if (count >= 0x10)
          {
            countCopy = 16;
          }

          else
          {
            countCopy = count;
          }

          v8 = *self->_sliceLengths;
          if (self->_rowElements == v8)
          {
            v9 = 0;
            v11 = *&self->_sliceLengths[32];
            v10 = *&self->_sliceLengths[48];
            v12 = *&self->_sliceLengths[16];
            v14 = *&self->_sliceOffsets[32];
            v13 = *&self->_sliceOffsets[48];
            v15 = 1;
            v17 = *self->_sliceOffsets;
            v16 = *&self->_sliceOffsets[16];
            do
            {
              v129[0] = v17;
              v129[1] = v16;
              v129[2] = v14;
              v129[3] = v13;
              if (*(v129 + (v9 & 0xF)))
              {
                return 0;
              }

              v18 = *&self->_strideElements[8 * (v9 & 0xF)];
              if (v18 != v15 && v18 != 0)
              {
                return 0;
              }

              v128[0] = v8;
              v128[1] = v12;
              v128[2] = v11;
              v128[3] = v10;
              v15 *= *(v128 + (v9++ & 0xF));
            }

            while (v9 != 16);
            if (count >= 2)
            {
              v20 = countCopy - 1;
              v21 = strides + 1;
              v22 = 1;
              do
              {
                v24 = *v21++;
                v23 = v24;
                if (v22 > v24 && v23 != 0)
                {
                  return 0;
                }

                if (v23)
                {
                  v22 = v23;
                }
              }

              while (--v20);
            }

            v29 = objc_msgSend_descriptor(self, a2, count, sizes, strides);
            result = objc_msgSend_safeArrayViewWithCommandBuffer_computeEncoder_descriptor_aliasing_(self, v30, 0, 0, v29, 1);
            if (result)
            {
              v31 = 0;
              *(result + 13) = 0u;
              v32 = result + 208;
              *(result + 27) = 0u;
              *(result + 28) = 0u;
              *(result + 25) = 0u;
              *(result + 26) = 0u;
              *(result + 23) = 0u;
              *(result + 24) = 0u;
              *(result + 21) = 0u;
              *(result + 22) = 0u;
              *(result + 19) = 0u;
              *(result + 20) = 0u;
              *(result + 17) = 0u;
              *(result + 18) = 0u;
              *(result + 15) = 0u;
              *(result + 16) = 0u;
              *(result + 14) = 0u;
              *&v33 = 0x100000001;
              *(&v33 + 1) = 0x100000001;
              *(result + 11) = v33;
              *(result + 12) = v33;
              *(result + 9) = v33;
              *(result + 10) = v33;
              *(result + 3) = v33;
              *(result + 4) = v33;
              *&v34 = 0x100000001;
              *(&v34 + 1) = 0x100000001;
              *&v35 = 0x100000001;
              *(&v35 + 1) = 0x100000001;
              *&v36 = 0x100000001;
              *(&v36 + 1) = 0x100000001;
              *(result + 1) = v33;
              *(result + 2) = v33;
              *&v37 = 0x100000001;
              *(&v37 + 1) = 0x100000001;
              *&v38 = 0x100000001;
              *(&v38 + 1) = 0x100000001;
              *(result + 60) = countCopy;
              *&v39 = 0x100000001;
              *(&v39 + 1) = 0x100000001;
              *&v40 = 0x100000001;
              *(&v40 + 1) = 0x100000001;
              v41 = *(result + 29);
              do
              {
                v42 = sizes[v31];
                v119 = v41;
                v124 = v37;
                v125 = v38;
                v126 = v39;
                v127 = v40;
                v43 = *(&v119 | v31 & 0xF) & 0xF;
                *(&v124 + v43) = v42;
                v39 = v126;
                v40 = v127;
                v37 = v124;
                v38 = v125;
                *(result + 11) = v126;
                *(result + 12) = v40;
                *(result + 9) = v37;
                *(result + 10) = v38;
                v120 = v33;
                v121 = v34;
                v122 = v35;
                v123 = v36;
                *(&v120 + v43) = v42;
                v35 = v122;
                v36 = v123;
                v33 = v120;
                v34 = v121;
                *(result + 3) = v122;
                *(result + 4) = v36;
                *(result + 1) = v33;
                *(result + 2) = v34;
                ++v31;
              }

              while (countCopy != v31);
              v44 = v37;
              *(result + 74) = v37;
              dataType_low = LOWORD(self->_dataType);
              if (count > 1)
              {
                v44 = strides[1];
                *(result + 74) = v44;
              }

              v46 = v44 * dataType_low + 7;
              if ((dataType_low & (dataType_low - 1)) != 0)
              {
                v68 = 0;
                v69 = 0uLL;
                v70 = 0uLL;
                v71 = 0uLL;
                v72 = 0uLL;
                v73 = 0uLL;
                v74 = 0uLL;
                v75 = 0uLL;
                v76 = 0uLL;
                v77 = 0uLL;
                v78 = 0uLL;
                *(result + 73) = v46 / dataType_low;
                v79 = 0uLL;
                v80 = 0uLL;
                v81 = 0uLL;
                v82 = 0uLL;
                v83 = 0uLL;
                v84 = 0uLL;
                do
                {
                  v85 = strides[v68];
                  v86 = (8 * v68) & 0x78;
                  v111 = v77;
                  v112 = v78;
                  v113 = v79;
                  v114 = v80;
                  v115 = v81;
                  v116 = v82;
                  v117 = v83;
                  v118 = v84;
                  *(&v111 + v86) = v85;
                  v83 = v117;
                  v84 = v118;
                  v81 = v115;
                  v82 = v116;
                  v79 = v113;
                  v80 = v114;
                  v77 = v111;
                  v78 = v112;
                  *(result + 27) = v117;
                  *(result + 28) = v84;
                  *(result + 25) = v81;
                  *(result + 26) = v82;
                  *(result + 23) = v79;
                  *(result + 24) = v80;
                  *(result + 21) = v77;
                  *(result + 22) = v78;
                  v103 = v69;
                  v104 = v70;
                  v105 = v71;
                  v106 = v72;
                  v107 = v73;
                  v108 = v74;
                  v109 = v75;
                  v110 = v76;
                  *(&v103 + v86) = (v85 * dataType_low + 7) >> 3;
                  v75 = v109;
                  v76 = v110;
                  v73 = v107;
                  v74 = v108;
                  v71 = v105;
                  v72 = v106;
                  v69 = v103;
                  v70 = v104;
                  *(result + 19) = v109;
                  *(result + 20) = v76;
                  *(result + 17) = v73;
                  *(result + 18) = v74;
                  *(result + 15) = v71;
                  *(result + 16) = v72;
                  ++v68;
                  *v32 = v69;
                  *(result + 14) = v70;
                }

                while (countCopy != v68);
              }

              else
              {
                v47 = 0;
                v48 = 63 - __clz(dataType_low);
                v49 = 0uLL;
                v50 = 0uLL;
                v51 = 0uLL;
                v52 = 0uLL;
                v53 = 0uLL;
                v54 = 0uLL;
                *(result + 73) = v46 >> 3;
                v55 = 0uLL;
                v56 = 0uLL;
                if (dataType_low)
                {
                  v57 = v48;
                }

                else
                {
                  v57 = 0;
                }

                v58 = 0uLL;
                v59 = 0uLL;
                v60 = 0uLL;
                v61 = 0uLL;
                v62 = 0uLL;
                v63 = 0uLL;
                v64 = 0uLL;
                v65 = 0uLL;
                do
                {
                  v66 = strides[v47];
                  v67 = (8 * v47) & 0x78;
                  v95 = v58;
                  v96 = v59;
                  v97 = v60;
                  v98 = v61;
                  v99 = v62;
                  v100 = v63;
                  v101 = v64;
                  v102 = v65;
                  *(&v95 + v67) = v66;
                  v64 = v101;
                  v65 = v102;
                  v62 = v99;
                  v63 = v100;
                  v60 = v97;
                  v61 = v98;
                  v58 = v95;
                  v59 = v96;
                  *(result + 27) = v101;
                  *(result + 28) = v65;
                  *(result + 25) = v62;
                  *(result + 26) = v63;
                  *(result + 23) = v60;
                  *(result + 24) = v61;
                  *(result + 21) = v58;
                  *(result + 22) = v59;
                  v87 = v49;
                  v88 = v50;
                  v89 = v51;
                  v90 = v52;
                  v91 = v53;
                  v92 = v54;
                  v93 = v55;
                  v94 = v56;
                  *(&v87 + v67) = v66 << v57 >> 3;
                  v55 = v93;
                  v56 = v94;
                  v53 = v91;
                  v54 = v92;
                  v51 = v89;
                  v52 = v90;
                  v49 = v87;
                  v50 = v88;
                  *(result + 19) = v93;
                  *(result + 20) = v56;
                  *(result + 17) = v53;
                  *(result + 18) = v54;
                  *(result + 15) = v51;
                  *(result + 16) = v52;
                  ++v47;
                  *v32 = v49;
                  *(result + 14) = v50;
                }

                while (countCopy != v47);
              }
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

- (id)safeArrayViewWithCommandBuffer:(id)buffer computeEncoder:(id)encoder descriptor:(id)descriptor aliasing:(unint64_t)aliasing
{
  if (self->_isTemporary)
  {
    return MEMORY[0x2821F9670](self, sel_temporaryArrayViewWithCommandBuffer_computeEncoder_descriptor_aliasing_, buffer, encoder, descriptor);
  }

  else
  {
    return MEMORY[0x2821F9670](self, sel_arrayViewWithCommandBuffer_computeEncoder_descriptor_destinationArray_aliasing_, buffer, encoder, descriptor);
  }
}

- (void)arrayViewWithCommandBuffer:(id)buffer descriptor:(id)descriptor destinationArray:(id)array aliasing:(unint64_t)aliasing
{
  if ((aliasing & 2) == 0)
  {
    selfCopy = self;
    bufferCopy = buffer;
    v9 = MTLReportFailureTypeEnabled();
    buffer = bufferCopy;
    v10 = v9;
    self = selfCopy;
    if (v10)
    {
      MTLReportFailure();
      self = selfCopy;
      buffer = bufferCopy;
    }
  }

  MEMORY[0x2821F9670](self, sel_arrayViewWithCommandBuffer_computeEncoder_descriptor_destinationArray_aliasing_, buffer, 0, descriptor);
}

- (id)arrayViewWithCommandBuffer:(id)buffer computeEncoder:(id)encoder descriptor:(id)descriptor destinationArray:(id)array aliasing:(unint64_t)aliasing
{
  aliasingCopy = aliasing;
  if (!descriptor && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v242 = 0x2B2B032C2B2B0328;
  v243 = 1;
  v244 = 0;
  v245 = 0;
  v246 = 0;
  kdebug_trace();
  v10 = *(descriptor + 31);
  v227 = *(descriptor + 66);
  selfCopy = self;
  v12 = [MPSNDArray alloc];
  v17 = objc_msgSend_buffer(selfCopy, v13, v14, v15, v16);
  v22 = objc_msgSend_offset(selfCopy, v18, v19, v20, v21);
  isUserBuffer = objc_msgSend_initWithBufferImpl_offset_descriptor_isForNDArrayAlias_isUserBuffer_(v12, v23, v17, v22, descriptor, 1, self->_isUserBuffer);
  v26 = *self->_strideElements;
  v25 = *&self->_strideElements[16];
  v28 = *&self->_strideElements[32];
  v27 = *&self->_strideElements[48];
  v29 = *&self->_strideElements[80];
  v30 = *&self->_strideElements[96];
  v31 = *&self->_strideElements[112];
  *(isUserBuffer + 400) = *&self->_strideElements[64];
  *(isUserBuffer + 416) = v29;
  *(isUserBuffer + 368) = v28;
  *(isUserBuffer + 384) = v27;
  *(isUserBuffer + 336) = v26;
  *(isUserBuffer + 352) = v25;
  *(isUserBuffer + 432) = v30;
  *(isUserBuffer + 448) = v31;
  v32 = *self->_strideBytes;
  v33 = *&self->_strideBytes[16];
  v34 = *&self->_strideBytes[32];
  v35 = *&self->_strideBytes[48];
  v36 = *&self->_strideBytes[64];
  v37 = *&self->_strideBytes[80];
  v38 = *&self->_strideBytes[112];
  *(isUserBuffer + 304) = *&self->_strideBytes[96];
  *(isUserBuffer + 320) = v38;
  *(isUserBuffer + 272) = v36;
  *(isUserBuffer + 288) = v37;
  *(isUserBuffer + 240) = v34;
  *(isUserBuffer + 256) = v35;
  *(isUserBuffer + 208) = v32;
  *(isUserBuffer + 224) = v33;
  v39 = *(descriptor + 13);
  v40 = vminvq_u8(vceqq_s8(v39, *selfCopy->_dimensionOrder));
  v41 = vminvq_u8(vceqq_s8(v39, xmmword_22E37B090));
  v42 = (vminvq_u32(vceqzq_s32(vorrq_s8(vorrq_s8(*(descriptor + 5), *(descriptor + 7)), vorrq_s8(*(descriptor + 6), *(descriptor + 8))))) & 0x80000000) == 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_s32(*(descriptor + 9), *selfCopy->_dimensionLengths), vceqq_s32(*(descriptor + 11), *&selfCopy->_dimensionLengths[32])), vandq_s8(vceqq_s32(*(descriptor + 10), *&selfCopy->_dimensionLengths[16]), vceqq_s32(*(descriptor + 12), *&selfCopy->_dimensionLengths[48])))) & 0x80000000) == 0;
  descriptorCopy = descriptor;
  v44 = (v40 & 0x80) == 0;
  if ((v41 & 0x80) == 0)
  {
    v44 = 1;
  }

  v45 = v44 || v42;
  arrayCopy = array;
  while (1)
  {
    if ((aliasingCopy & 2) == 0 && !v45)
    {
      if (!v10)
      {
        goto LABEL_69;
      }

      goto LABEL_9;
    }

    if (v227 == 2)
    {
      v47 = 0;
      v48 = 0;
      v50 = *(v10 + 3);
      v49 = *(v10 + 4);
      v52 = *(v10 + 1);
      v51 = *(v10 + 2);
      v54 = *(descriptorCopy + 3);
      v53 = *(descriptorCopy + 4);
      v56 = *(descriptorCopy + 1);
      v55 = *(descriptorCopy + 2);
      v57 = *(descriptorCopy + 13);
      v59 = *(descriptorCopy + 7);
      v58 = *(descriptorCopy + 8);
      v61 = *(descriptorCopy + 5);
      v60 = *(descriptorCopy + 6);
      do
      {
        v238[0] = v52;
        v238[1] = v51;
        v238[2] = v50;
        v238[3] = v49;
        v62 = 4 * (v48 & 0xF);
        v63 = *(v238 + v62);
        v237[0] = v56;
        v237[1] = v55;
        v237[2] = v54;
        v237[3] = v53;
        v64 = *(v237 + v62);
        v235 = v57;
        v65 = *(&v235 | v48 & 0xF);
        v236[0] = v61;
        v236[1] = v60;
        v236[2] = v59;
        v236[3] = v58;
        if (*(v236 + v62))
        {
          v66 = 1;
        }

        else
        {
          v66 = descriptorCopy[(v48 & 0xF) + 36] != v64;
        }

        v67 = v63 != v64 && (v48 != v65 || v66);
        v47 |= v67;
        if (v67)
        {
          break;
        }
      }

      while (v48++ < 0xF);
      v69 = v47 ^ 1;
    }

    else
    {
      v69 = 1;
    }

    v70 = ((aliasingCopy & 2) == 0) & ((v227 != 2) | v69);
    if (v45 != 2)
    {
      if ((v70 & 1) == 0)
      {
        break;
      }

      goto LABEL_35;
    }

    v71 = descriptorCopy[36];
    v72 = *selfCopy->_sliceLengths;
    if (v71 != v72)
    {
      v73 = *(descriptorCopy + 120);
      v74 = *(descriptorCopy + 268) ? v73 * v71 : (v73 * v71 + 127) & 0x1FFFFFFFFFF80;
      v75 = v74 / v73;
      if (selfCopy->_rowElements != v72 || v75 != v71)
      {
        v70 = 0;
      }
    }

    if ((v70 & 1) == 0)
    {
      break;
    }

    *(descriptorCopy + 13) = *selfCopy->_dimensionOrder;
LABEL_35:

    v77 = [MPSNDArray alloc];
    v82 = objc_msgSend_buffer(selfCopy, v78, v79, v80, v81);
    v87 = objc_msgSend_offset(selfCopy, v83, v84, v85, v86);
    v89 = objc_msgSend_initWithBufferImpl_offset_descriptor_isForNDArrayAlias_isUserBuffer_(v77, v88, v82, v87, descriptorCopy, 1, selfCopy->_isUserBuffer);
    isUserBuffer = v89;
    v95 = *self->_strideElements;
    v94 = *&self->_strideElements[16];
    v97 = *&self->_strideElements[32];
    v96 = *&self->_strideElements[48];
    v98 = *&self->_strideElements[80];
    v99 = *&self->_strideElements[96];
    v100 = *&self->_strideElements[112];
    *(v89 + 400) = *&self->_strideElements[64];
    *(v89 + 416) = v98;
    *(v89 + 368) = v97;
    *(v89 + 384) = v96;
    *(v89 + 336) = v95;
    *(v89 + 352) = v94;
    *(v89 + 432) = v99;
    *(v89 + 448) = v100;
    v102 = *self->_strideBytes;
    v101 = *&self->_strideBytes[16];
    v104 = *&self->_strideBytes[32];
    v103 = *&self->_strideBytes[48];
    v105 = *&self->_strideBytes[80];
    v106 = *&self->_strideBytes[96];
    v107 = *&self->_strideBytes[112];
    *(v89 + 272) = *&self->_strideBytes[64];
    *(v89 + 288) = v105;
    *(v89 + 240) = v104;
    *(v89 + 256) = v103;
    *(v89 + 208) = v102;
    *(v89 + 224) = v101;
    *(v89 + 304) = v106;
    *(v89 + 320) = v107;
    *(v89 + 610) = self->_isUserBuffer;
    if (v45 == 2)
    {
      objc_msgSend_updateStrides(v89, v90, v91, v92, v93);
    }

    selfCopy = isUserBuffer;
    if (!v10)
    {
      goto LABEL_69;
    }

LABEL_9:
    v45 = v227;
    v46 = v10[66];
    descriptorCopy = v10;
    v10 = *(v10 + 31);
    v227 = v46;
  }

  if ((buffer == 0) | aliasingCopy & 1)
  {

    goto LABEL_81;
  }

  v225 = selfCopy;
  if (((*(descriptor + 120) & 0xFFF8) == 0 || array && (*(array + 244) & 0xFFF8) == 0) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v108 = *(descriptorCopy + 28);
  if (v108)
  {
    v109 = 0;
    v111 = *(descriptorCopy + 11);
    v110 = *(descriptorCopy + 12);
    *&v112 = 0x100000001;
    *(&v112 + 1) = 0x100000001;
    *&v113 = 0x100000001;
    *(&v113 + 1) = 0x100000001;
    v115 = *(descriptorCopy + 9);
    v114 = *(descriptorCopy + 10);
    *&v116 = 0x100000001;
    *(&v116 + 1) = 0x100000001;
    *&v117 = 0x100000001;
    *(&v117 + 1) = 0x100000001;
    v118 = *(descriptorCopy + 13);
    do
    {
      v229 = v118;
      v234[0] = v115;
      v234[1] = v114;
      v234[2] = v111;
      v234[3] = v110;
      v119 = *(v234 + (*(&v229 | v109 & 0xF) & 0xF));
      v230 = v112;
      v231 = v113;
      v232 = v116;
      v233 = v117;
      *(&v230 + (v109 & 0xF)) = v119;
      v116 = v232;
      v117 = v233;
      v112 = v230;
      v113 = v231;
      ++v109;
    }

    while (v108 != v109);
  }

  else
  {
    *&v112 = 0x100000001;
    *(&v112 + 1) = 0x100000001;
    *&v113 = 0x100000001;
    *(&v113 + 1) = 0x100000001;
    *&v116 = 0x100000001;
    *(&v116 + 1) = 0x100000001;
    *&v117 = 0x100000001;
    *(&v117 + 1) = 0x100000001;
  }

  v220 = v116;
  v221 = v113;
  v222 = v117;
  v223 = v112;
  v120 = [MPSNDArrayDescriptor alloc];
  v121 = descriptorCopy[60];
  v122 = *(descriptorCopy + 28);
  v241[0] = v223;
  v241[1] = v221;
  v241[2] = v220;
  v241[3] = v222;
  v126 = objc_msgSend_initWithDataType_dimensions_sizes_(v120, v123, v121, v122, v241);
  v126[268] = *(descriptor + 268);
  if ((aliasingCopy & 4) != 0)
  {
    v134 = objc_msgSend_temporaryNDArrayWithCommandBuffer_descriptor_(MPSTemporaryNDArray, v124, buffer, v126, v125);
  }

  else if (array)
  {
    v127 = [MPSNDArray alloc];
    v132 = objc_msgSend_buffer(arrayCopy, v128, v129, v130, v131);
    v134 = objc_msgSend_initWithBufferImpl_offset_descriptor_isForNDArrayAlias_isUserBuffer_(v127, v133, v132, arrayCopy[72], v126, 1, *(arrayCopy + 610));
  }

  else
  {
    v135 = [MPSNDArray alloc];
    v140 = objc_msgSend_device(buffer, v136, v137, v138, v139);
    v134 = objc_msgSend_initWithDevice_descriptor_(v135, v141, v140, v126, v142);
  }

  v143 = v134;

  v144 = malloc_type_calloc(0x10uLL, 8uLL, 0x100004000313F17uLL);
  objc_msgSend_makeStrideBytesInArray_(v143, v145, v144, v146, v147);
  if (v45 > 1)
  {
    if (v45 == 2)
    {
      v184 = *(descriptorCopy + 9);
      v185 = DWORD1(v184);
      v186 = *(descriptorCopy + 28);
      if (v186 >= 3)
      {
        v188 = *(descriptorCopy + 11);
        v187 = *(descriptorCopy + 12);
        v189 = 2;
        v190 = *(descriptorCopy + 10);
        do
        {
          v228[0] = v184;
          v228[1] = v190;
          v228[2] = v188;
          v228[3] = v187;
          v185 *= *(v228 + (v189++ & 0xF));
        }

        while (v186 != v189);
      }

      v191 = objc_msgSend_buffer(v143, v148, v149, v150, v151);
      v197 = objc_msgSend_dataType(v143, v192, v193, v194, v195);
      if (*(descriptorCopy + 28) < 2uLL)
      {
        objc_msgSend_encodeReshapedMatrixWithCommandBuffer_computeEncoder_toBuffer_destinationDataType_destinationOffsetBytes_destinationRowBytes_destinationColumns_destinationRows_(v225, v196, buffer, encoder, v191, v197, 0, 0, descriptorCopy[36], v185);
      }

      else
      {
        objc_msgSend_encodeReshapedMatrixWithCommandBuffer_computeEncoder_toBuffer_destinationDataType_destinationOffsetBytes_destinationRowBytes_destinationColumns_destinationRows_(v225, v196, buffer, encoder, v191, v197, 0, v144[1], descriptorCopy[36], v185);
      }

      if ((objc_msgSend_retainedReferences(buffer, v198, v199, v200, v201) & 1) == 0)
      {
        v202 = v225;
        v239[0] = MEMORY[0x277D85DD0];
        v239[1] = 3221225472;
        v239[2] = sub_22E3472C0;
        v239[3] = &unk_2787BE7E8;
        v239[4] = v225;
        objc_msgSend_addCompletedHandler_(buffer, v203, v239, v204, v205);
      }
    }
  }

  else
  {
    v152 = [MPSNDArray alloc];
    v157 = objc_msgSend_buffer(v225, v153, v154, v155, v156);
    v162 = objc_msgSend_offset(v225, v158, v159, v160, v161);
    v164 = objc_msgSend_initWithBufferImpl_offset_descriptor_isForNDArrayAlias_isUserBuffer_(v152, v163, v157, v162, descriptorCopy, 1, v225[610]);
    v169 = objc_msgSend_buffer(v143, v165, v166, v167, v168);
    v174 = objc_msgSend_dataType(v143, v170, v171, v172, v173);
    objc_msgSend_encodeCopyWithCommandBuffer_computeEncoder_toBuffer_destinationDataType_destinationOffsetBytes_destinationStrideBytes_(v164, v175, buffer, encoder, v169, v174, 0, v144);
    if ((objc_msgSend_retainedReferences(buffer, v176, v177, v178, v179) & 1) == 0)
    {
      v180 = v164;
      v240[0] = MEMORY[0x277D85DD0];
      v240[1] = 3221225472;
      v240[2] = sub_22E3472B8;
      v240[3] = &unk_2787BE7E8;
      v240[4] = v164;
      objc_msgSend_addCompletedHandler_(buffer, v181, v240, v182, v183);
    }
  }

  free(v144);

  isUserBuffer = v143;
  array = arrayCopy;
  selfCopy = v143;
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_69:

  *(isUserBuffer + 512) = self;
  if (self->_isTemporary)
  {
    if (!self[1].super.isa && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    isa = self[1].super.isa;
    if (isa)
    {
      v207 = (isa - 1);
      self[1].super.isa = v207;
      if (!v207)
      {
        do
        {
          selfCopy2 = self;
          self = self->_parent;
        }

        while (self && self->_isTemporary);
        v209 = *selfCopy2[1]._dimensionLengths - 1;
        *selfCopy2[1]._dimensionLengths = v209;
        if (!v209)
        {
          MPSAutoBuffer::ReleaseTemporaryBuffer(&selfCopy2->_buffer);
        }
      }
    }
  }

  if (!array)
  {
    v216 = isUserBuffer;
    goto LABEL_82;
  }

  *(array + 122) = *(isUserBuffer + 488);
  *(array + 60) = *(isUserBuffer + 480);
  *(array + 4) = *(isUserBuffer + 16);
  *(array + 5) = *(isUserBuffer + 20);
  *(array + 6) = *(isUserBuffer + 24);
  *(array + 7) = *(isUserBuffer + 28);
  *(array + 8) = *(isUserBuffer + 32);
  *(array + 9) = *(isUserBuffer + 36);
  *(array + 10) = *(isUserBuffer + 40);
  *(array + 11) = *(isUserBuffer + 44);
  *(array + 12) = *(isUserBuffer + 48);
  *(array + 13) = *(isUserBuffer + 52);
  *(array + 14) = *(isUserBuffer + 56);
  *(array + 15) = *(isUserBuffer + 60);
  *(array + 16) = *(isUserBuffer + 64);
  *(array + 17) = *(isUserBuffer + 68);
  *(array + 18) = *(isUserBuffer + 72);
  *(array + 19) = *(isUserBuffer + 76);
  *(array + 29) = *(isUserBuffer + 464);
  v210 = *(isUserBuffer + 160);
  v211 = *(isUserBuffer + 176);
  v212 = *(isUserBuffer + 192);
  *(array + 9) = *(isUserBuffer + 144);
  *(array + 10) = v210;
  *(array + 11) = v211;
  *(array + 12) = v212;
  v214 = *(isUserBuffer + 80);
  v213 = *(isUserBuffer + 96);
  v215 = *(isUserBuffer + 128);
  *(array + 7) = *(isUserBuffer + 112);
  *(array + 8) = v215;
  *(array + 5) = v214;
  *(array + 6) = v213;

LABEL_81:
  v216 = 0;
LABEL_82:
  kdebug_trace();
  return v216;
}

- (id)matrixWithCommandBuffer:(id)buffer descriptor:(id)descriptor aliasing:(unint64_t)aliasing
{
  if ((*(descriptor + 24) & 0xFFF8) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((self->_dataType & 0xFFF8) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v9 = objc_msgSend_rows(descriptor, a2, buffer, descriptor, aliasing);
  v14 = objc_msgSend_columns(descriptor, v10, v11, v12, v13) * v9;
  v23 = v14 * objc_msgSend_matrices(descriptor, v15, v16, v17, v18);
  if (v23)
  {
    v24 = *self->_sliceLengths;
    v25 = *&self->_sliceLengths[16];
    v26 = *&self->_sliceLengths[32];
    v27 = *&self->_sliceLengths[48];
    v28 = *self->_dimensionOrder;
    v141[2] = v26;
    v141[3] = v27;
    v141[0] = v24;
    v141[1] = v25;
    v29 = *(v141 + (v28 & 0xF));
    numberOfDimensions = self->_numberOfDimensions;
    if (numberOfDimensions >= 2)
    {
      for (i = 1; i != numberOfDimensions; ++i)
      {
        v139 = v28;
        v140[0] = v24;
        v140[1] = v25;
        v140[2] = v26;
        v140[3] = v27;
        v29 *= *(v140 + (*(&v139 | i & 0xF) & 0xF));
      }
    }

    if (v23 != v29 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_rows(descriptor, v19, v20, v21, v22) < 2)
    {
      rowBytes = self->_rowBytes;
      if (LOWORD(self->_dataType) * *&self->_sliceLengths[4 * (*self->_dimensionOrder & 0xF)] == 8 * rowBytes)
      {
        v40 = objc_msgSend_rowBytes(descriptor, v32, v33, v34, v35);
        rowBytes = self->_rowBytes;
        v41 = v40 <= rowBytes;
      }

      else
      {
        v41 = 0;
      }

      v39 = aliasing < 2 && v41;
    }

    else
    {
      v36 = objc_msgSend_rowBytes(descriptor, v32, v33, v34, v35);
      rowBytes = self->_rowBytes;
      v38 = aliasing < 2 && v36 == rowBytes;
      v39 = v38;
    }

    v132 = *&self->_dimensionLengths[32];
    v133 = *&self->_dimensionLengths[48];
    v130 = *self->_dimensionLengths;
    v131 = *&self->_dimensionLengths[16];
    v129 = *self->_dimensionOrder;
    if (objc_msgSend_matrices(descriptor, v32, v33, v34, v35) >= 2)
    {
      v138[0] = v130;
      v138[1] = v131;
      v138[2] = v132;
      v138[3] = v133;
      v46 = rowBytes * *(v138 + (BYTE1(v129) & 0xF));
      if (objc_msgSend_matrixBytes(descriptor, v42, v43, v44, v45) != v46)
      {
        v39 = 0;
      }
    }

    if (objc_msgSend_dataType(descriptor, v42, v43, v44, v45) == self->_dataType)
    {
      v47 = v39;
    }

    else
    {
      v47 = 0;
    }

    v48 = self->_numberOfDimensions;
    if (v48)
    {
      v49 = 0;
      v50 = *self->_dimensionOrder;
      v52 = *&self->_sliceOffsets[32];
      v51 = *&self->_sliceOffsets[48];
      v54 = *self->_sliceOffsets;
      v53 = *&self->_sliceOffsets[16];
      v56 = *&self->_sliceLengths[32];
      v55 = *&self->_sliceLengths[48];
      v58 = *self->_sliceLengths;
      v57 = *&self->_sliceLengths[16];
      v60 = *&self->_dimensionLengths[32];
      v59 = *&self->_dimensionLengths[48];
      v62 = *self->_dimensionLengths;
      v61 = *&self->_dimensionLengths[16];
      do
      {
        v134 = v50;
        v63 = 4 * (v49 & 0xF);
        v64 = *(&v134 | v49 & 0xF);
        v137[0] = v54;
        v137[1] = v53;
        v137[2] = v52;
        v137[3] = v51;
        v38 = *(v137 + v63) == 0;
        v136[0] = v58;
        v136[1] = v57;
        v136[2] = v56;
        v136[3] = v55;
        v65 = *(v136 + v63);
        v135[0] = v62;
        v135[1] = v61;
        v135[2] = v60;
        v135[3] = v59;
        v66 = *(v135 + v63);
        v69 = v38 && v49 == v64 && v65 == v66;
        v47 &= v69;
        ++v49;
      }

      while (v48 != v49);
    }

    if (v47)
    {
      v70 = [MPSMatrix alloc];
      v75 = objc_msgSend_buffer(self, v71, v72, v73, v74);
      v78 = objc_msgSend_initWithBuffer_descriptor_(v70, v76, v75, descriptor, v77);
      if (objc_msgSend_retainedReferences(buffer, v79, v80, v81, v82))
      {
        return v78;
      }

LABEL_39:
      v83 = v78;
      v142[0] = MEMORY[0x277D85DD0];
      v142[1] = 3221225472;
      v142[2] = sub_22E347828;
      v142[3] = &unk_2787BE7E8;
      v142[4] = v78;
      objc_msgSend_addCompletedHandler_(buffer, v84, v142, v85, v86);
      return v78;
    }

    if (aliasing != 1)
    {
      v88 = malloc_type_calloc(3uLL, 8uLL, 0x100004000313F17uLL);
      *v88 = objc_msgSend_dataType(descriptor, v89, v90, v91, v92) >> 3;
      if (objc_msgSend_rows(descriptor, v93, v94, v95, v96) >= 2)
      {
        v88[1] = objc_msgSend_rowBytes(descriptor, v97, v98, v99, v100);
      }

      if (objc_msgSend_matrices(descriptor, v97, v98, v99, v100) < 2)
      {
        v105 = 2;
      }

      else
      {
        v88[2] = objc_msgSend_matrixBytes(descriptor, v101, v102, v103, v104);
        v105 = 3;
      }

      v106 = [MPSMatrix alloc];
      v111 = objc_msgSend_device(buffer, v107, v108, v109, v110);
      v78 = objc_msgSend_initWithDevice_descriptor_(v106, v112, v111, descriptor, v113);
      v118 = objc_msgSend_data(v78, v114, v115, v116, v117);
      v123 = objc_msgSend_dataType(descriptor, v119, v120, v121, v122);
      objc_msgSend_exportDataWithCommandBuffer_toBuffer_destinationDataType_offset_rowStrides_lengths_numLengths_flatteningLevel_(self, v124, buffer, v118, v123, 0, v88, 0, 0, v105);
      free(v88);
      if (objc_msgSend_retainedReferences(buffer, v125, v126, v127, v128))
      {
        return v78;
      }

      goto LABEL_39;
    }
  }

  return 0;
}

- (void)encodeReshapedMatrixWithCommandBuffer:(id)buffer computeEncoder:(id)encoder toBuffer:(id)toBuffer destinationDataType:(unsigned int)type destinationOffsetBytes:(unint64_t)bytes destinationRowBytes:(unint64_t)rowBytes destinationColumns:(unint64_t)columns destinationRows:(unint64_t)self0
{
  rowBytesCopy = rowBytes;
  v110 = *MEMORY[0x277D85DE8];
  if ((self->_dataType & 0xFFF8) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((type & 0xFFF8) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17.i64[0] = -1;
  v17.i64[1] = -1;
  v83 = v17;
  v84 = v17;
  v81 = v17;
  v82 = v17;
  v80 = v17;
  dataType = self->_dataType;
  v19 = 32;
  if (dataType <= 268435487)
  {
    if (dataType > 15)
    {
      if (dataType > 63)
      {
        if (dataType == 64)
        {
          v19 = 288;
          v20 = 1;
          if (type > 268435487)
          {
            goto LABEL_62;
          }

          goto LABEL_46;
        }

        if (dataType == 268435472)
        {
          v19 = 320;
          v20 = 1;
          if (type > 268435487)
          {
            goto LABEL_62;
          }

          goto LABEL_46;
        }
      }

      else
      {
        if (dataType == 16)
        {
          v19 = 224;
          v20 = 1;
          if (type > 268435487)
          {
            goto LABEL_62;
          }

          goto LABEL_46;
        }

        if (dataType == 32)
        {
          v19 = 256;
          v20 = 1;
          if (type > 268435487)
          {
            goto LABEL_62;
          }

LABEL_46:
          if (type <= 15)
          {
            if (type != -2147483640)
            {
              if (type == -1879048176)
              {
                v20 = 12;
              }

              else
              {
                if (type != 8)
                {
                  goto LABEL_77;
                }

                v20 = 6;
              }
            }
          }

          else if (type > 63)
          {
            if (type == 64)
            {
              v20 = 9;
            }

            else
            {
              if (type != 268435472)
              {
                goto LABEL_77;
              }

              v20 = 10;
            }
          }

          else if (type == 16)
          {
            v20 = 7;
          }

          else
          {
            if (type != 32)
            {
              goto LABEL_77;
            }

            v20 = 8;
          }

          goto LABEL_78;
        }
      }

      goto LABEL_61;
    }

    if (dataType != -2147483640)
    {
      if (dataType == -1879048176)
      {
        v19 = 384;
        v20 = 1;
        if (type > 268435487)
        {
          goto LABEL_62;
        }

        goto LABEL_46;
      }

      if (dataType == 8)
      {
        v19 = 192;
        v20 = 1;
        if (type > 268435487)
        {
          goto LABEL_62;
        }

        goto LABEL_46;
      }

      goto LABEL_61;
    }

LABEL_45:
    v20 = 1;
    if (type <= 268435487)
    {
      goto LABEL_46;
    }

    goto LABEL_62;
  }

  if (dataType <= 536870919)
  {
    switch(dataType)
    {
      case 268435488:
        v19 = 352;
        v20 = 1;
        if (type > 268435487)
        {
          goto LABEL_62;
        }

        goto LABEL_46;
      case 285212704:
        v19 = 416;
        goto LABEL_45;
      case 285212736:
        v19 = 448;
        v20 = 1;
        if (type > 268435487)
        {
          goto LABEL_62;
        }

        goto LABEL_46;
    }
  }

  else
  {
    if (dataType <= 536870943)
    {
      if (dataType != 536870920)
      {
        if (dataType == 536870928)
        {
          v19 = 64;
          v20 = 1;
          if (type > 268435487)
          {
            goto LABEL_62;
          }

          goto LABEL_46;
        }

        goto LABEL_61;
      }

      goto LABEL_45;
    }

    if (dataType == 536870944)
    {
      v19 = 96;
      v20 = 1;
      if (type > 268435487)
      {
        goto LABEL_62;
      }

      goto LABEL_46;
    }

    if (dataType == 536870976)
    {
      v19 = 128;
      v20 = 1;
      if (type > 268435487)
      {
        goto LABEL_62;
      }

      goto LABEL_46;
    }
  }

LABEL_61:
  v19 = 576;
  v20 = 1;
  if (type <= 268435487)
  {
    goto LABEL_46;
  }

LABEL_62:
  if (type <= 536870919)
  {
    switch(type)
    {
      case 0x10000020u:
        v20 = 11;
        goto LABEL_78;
      case 0x11000020u:
        v20 = 13;
        goto LABEL_78;
      case 0x11000040u:
        v20 = 14;
        goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (type > 536870943)
  {
    if (type == 536870944)
    {
      v20 = 3;
      goto LABEL_78;
    }

    if (type == 536870976)
    {
      v20 = 4;
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (type != 536870920)
  {
    if (type == 536870928)
    {
      v20 = 2;
      goto LABEL_78;
    }

LABEL_77:
    v20 = 18;
  }

LABEL_78:
  v21 = v20 | v19;
  v81.i64[1] = v20 | v19;
  if ((atomic_load_explicit(&qword_280AFEBA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AFEBA0))
  {
    qword_280AFEB98 = objc_msgSend_hash(@"NDArrayReshapeMatrix", v71, v72, v73, v74);
    __cxa_guard_release(&qword_280AFEBA0);
  }

  v26 = MPSLibrary::CreateUberShaderKey(self->_library, @"reshapeNDArrayData", &v80, v21, 0, 0, 1, 0, 0, @"NDArrayReshapeMatrix", qword_280AFEB98, 0, 0);
  library = self->_library;
  explicit = atomic_load_explicit(v26, memory_order_acquire);
  if (explicit)
  {
    if (!buffer)
    {
      goto LABEL_86;
    }
  }

  else
  {
    explicit = MPSLibrary::MPSKey_Compile(library, v26);
    if (!buffer)
    {
      goto LABEL_86;
    }
  }

  if (explicit && (objc_msgSend_retainedReferences(buffer, v22, v23, v24, v25) & 1) == 0)
  {
    v29 = explicit;
    *&v96 = MEMORY[0x277D85DD0];
    *(&v96 + 1) = 3221225472;
    *&v97 = sub_22E3717C4;
    *(&v97 + 1) = &unk_2787BE7E8;
    *&v98 = explicit;
    objc_msgSend_addCompletedHandler_(buffer, v30, &v96, v31, v32);
  }

LABEL_86:
  numberOfDimensions = self->_numberOfDimensions;
  if (numberOfDimensions < 2)
  {
    v36 = 1;
  }

  else
  {
    v35 = *&self->_sliceLengths[32];
    v34 = *&self->_sliceLengths[48];
    v36 = 1;
    v37 = 1;
    v39 = *self->_sliceLengths;
    v38 = *&self->_sliceLengths[16];
    do
    {
      v75[0] = v39;
      v75[1] = v38;
      v75[2] = v35;
      v75[3] = v34;
      v36 *= *(v75 + (v37++ & 0xF));
    }

    while (numberOfDimensions != v37);
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  LOBYTE(v109) = 2;
  v40 = 1;
  v41 = self->_dataType;
  if (v41 > 268435487)
  {
    if (v41 <= 536870919)
    {
      switch(v41)
      {
        case 268435488:
          v40 = 11;
          goto LABEL_123;
        case 285212704:
          v40 = 13;
          goto LABEL_123;
        case 285212736:
          v40 = 14;
          goto LABEL_123;
      }
    }

    else if (v41 > 536870943)
    {
      if (v41 == 536870944)
      {
        v40 = 3;
        goto LABEL_123;
      }

      if (v41 == 536870976)
      {
        v40 = 4;
        goto LABEL_123;
      }
    }

    else
    {
      if (v41 == 536870920)
      {
        goto LABEL_123;
      }

      if (v41 == 536870928)
      {
        v40 = 2;
        goto LABEL_123;
      }
    }
  }

  else if (v41 <= 15)
  {
    switch(v41)
    {
      case -2147483640:
        goto LABEL_123;
      case -1879048176:
        v40 = 12;
        goto LABEL_123;
      case 8:
        v40 = 6;
        goto LABEL_123;
    }
  }

  else if (v41 > 63)
  {
    if (v41 == 64)
    {
      v40 = 9;
      goto LABEL_123;
    }

    if (v41 == 268435472)
    {
      v40 = 10;
      goto LABEL_123;
    }
  }

  else
  {
    if (v41 == 16)
    {
      v40 = 7;
      goto LABEL_123;
    }

    if (v41 == 32)
    {
      v40 = 8;
      goto LABEL_123;
    }
  }

  v40 = 18;
LABEL_123:
  v42 = 31 - __clz(v41 >> 3);
  rowBytes = self->_rowBytes;
  v44 = v41 >> 3;
  if (v41 >> 3)
  {
    v45 = v42;
  }

  else
  {
    v45 = 0;
  }

  DWORD2(v109) = self->_rowBytes;
  HIDWORD(v109) = v45;
  v46 = *self->_sliceLengths;
  *&v100 = __PAIR64__(v36, v46);
  v47 = 1;
  DWORD2(v100) = 1;
  *&v105 = __PAIR64__(rowBytes, v44);
  DWORD1(v109) = v40;
  DWORD2(v105) = DWORD1(v46) * rowBytes;
  BYTE1(v104) = 1;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  memset(v85, 0, sizeof(v85));
  LOBYTE(v95) = 2;
  if (type > 268435487)
  {
    if (type <= 536870919)
    {
      switch(type)
      {
        case 0x10000020u:
          v47 = 11;
          goto LABEL_158;
        case 0x11000020u:
          v47 = 13;
          goto LABEL_158;
        case 0x11000040u:
          v47 = 14;
          goto LABEL_158;
      }
    }

    else if (type > 536870943)
    {
      if (type == 536870944)
      {
        v47 = 3;
        goto LABEL_158;
      }

      if (type == 536870976)
      {
        v47 = 4;
        goto LABEL_158;
      }
    }

    else
    {
      if (type == 536870920)
      {
        goto LABEL_158;
      }

      if (type == 536870928)
      {
        v47 = 2;
        goto LABEL_158;
      }
    }
  }

  else if (type <= 15)
  {
    switch(type)
    {
      case 0x80000008:
        goto LABEL_158;
      case 0x90000010:
        v47 = 12;
        goto LABEL_158;
      case 8u:
        v47 = 6;
        goto LABEL_158;
    }
  }

  else if (type > 63)
  {
    if (type == 64)
    {
      v47 = 9;
      goto LABEL_158;
    }

    if (type == 268435472)
    {
      v47 = 10;
      goto LABEL_158;
    }
  }

  else
  {
    if (type == 16)
    {
      v47 = 7;
      goto LABEL_158;
    }

    if (type == 32)
    {
      v47 = 8;
      goto LABEL_158;
    }
  }

  v47 = 18;
LABEL_158:
  v48 = 31 - __clz(type >> 3);
  if (!(type >> 3))
  {
    v48 = 0;
  }

  HIDWORD(v95) = v48;
  LODWORD(v86) = columns;
  *(&v86 + 4) = rows | 0x100000000;
  LODWORD(v91) = type >> 3;
  DWORD1(v91) = rowBytesCopy;
  *(&v95 + 4) = __PAIR64__(rowBytesCopy, v47);
  DWORD2(v91) = rows * rowBytesCopy;
  BYTE1(v90) = 1;
  if (v46 >= columns)
  {
    columnsCopy = columns;
  }

  else
  {
    columnsCopy = v46;
  }

  v54 = objc_msgSend_threadExecutionWidth(explicit, v22, v23, v24, v25);
  encoderCopy = encoder;
  if (!encoder)
  {
    encoderCopy = objc_msgSend_computeCommandEncoder(buffer, v50, v51, v52, v53);
  }

  objc_msgSend_setComputePipelineState_(encoderCopy, v50, explicit, v52, v53);
  v60 = objc_msgSend_buffer(self, v56, v57, v58, v59);
  objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v61, v60, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v62, toBuffer, bytes, 1);
  objc_msgSend_setBytes_length_atIndex_(encoderCopy, v63, &v96, 224, 2);
  objc_msgSend_setBytes_length_atIndex_(encoderCopy, v64, v85, 224, 3);
  v78 = (columnsCopy + v54 - 1) / v54;
  v79 = vdupq_n_s64(1uLL);
  v76 = v54;
  v77 = v79;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoderCopy, v65, &v78, &v76, v66);
  if (!encoder)
  {
    objc_msgSend_endEncoding(encoderCopy, v67, v68, v69, v70);
  }

  sub_22E2F0214(v26);
}

- (void)encodeCopyWithCommandBuffer:(id)buffer computeEncoder:(id)encoder toBuffer:(id)toBuffer destinationDataType:(unsigned int)type destinationOffsetBytes:(unint64_t)bytes destinationStrideBytes:(int64_t *)strideBytes
{
  v161 = *MEMORY[0x277D85DE8];
  if ((self->_dataType & 0xFFF8) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((type & 0xFFF8) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15.i64[0] = -1;
  v15.i64[1] = -1;
  v123 = v15;
  v122 = v15;
  v121 = v15;
  v120 = v15;
  v119 = v15;
  dataType = self->_dataType;
  v17 = 32;
  if (dataType <= 268435487)
  {
    if (dataType > 15)
    {
      if (dataType > 63)
      {
        if (dataType == 64)
        {
          v17 = 288;
          v18 = 1;
          if (type > 268435487)
          {
            goto LABEL_62;
          }

          goto LABEL_46;
        }

        if (dataType == 268435472)
        {
          v17 = 320;
          v18 = 1;
          if (type > 268435487)
          {
            goto LABEL_62;
          }

          goto LABEL_46;
        }
      }

      else
      {
        if (dataType == 16)
        {
          v17 = 224;
          v18 = 1;
          if (type > 268435487)
          {
            goto LABEL_62;
          }

          goto LABEL_46;
        }

        if (dataType == 32)
        {
          v17 = 256;
          v18 = 1;
          if (type > 268435487)
          {
            goto LABEL_62;
          }

LABEL_46:
          if (type <= 15)
          {
            if (type != -2147483640)
            {
              if (type == -1879048176)
              {
                v18 = 12;
              }

              else
              {
                if (type != 8)
                {
                  goto LABEL_77;
                }

                v18 = 6;
              }
            }
          }

          else if (type > 63)
          {
            if (type == 64)
            {
              v18 = 9;
            }

            else
            {
              if (type != 268435472)
              {
                goto LABEL_77;
              }

              v18 = 10;
            }
          }

          else if (type == 16)
          {
            v18 = 7;
          }

          else
          {
            if (type != 32)
            {
              goto LABEL_77;
            }

            v18 = 8;
          }

          goto LABEL_78;
        }
      }

      goto LABEL_61;
    }

    if (dataType != -2147483640)
    {
      if (dataType == -1879048176)
      {
        v17 = 384;
        v18 = 1;
        if (type > 268435487)
        {
          goto LABEL_62;
        }

        goto LABEL_46;
      }

      if (dataType == 8)
      {
        v17 = 192;
        v18 = 1;
        if (type > 268435487)
        {
          goto LABEL_62;
        }

        goto LABEL_46;
      }

      goto LABEL_61;
    }

LABEL_45:
    v18 = 1;
    if (type <= 268435487)
    {
      goto LABEL_46;
    }

    goto LABEL_62;
  }

  if (dataType <= 536870919)
  {
    switch(dataType)
    {
      case 268435488:
        v17 = 352;
        v18 = 1;
        if (type > 268435487)
        {
          goto LABEL_62;
        }

        goto LABEL_46;
      case 285212704:
        v17 = 416;
        goto LABEL_45;
      case 285212736:
        v17 = 448;
        v18 = 1;
        if (type > 268435487)
        {
          goto LABEL_62;
        }

        goto LABEL_46;
    }
  }

  else
  {
    if (dataType <= 536870943)
    {
      if (dataType != 536870920)
      {
        if (dataType == 536870928)
        {
          v17 = 64;
          v18 = 1;
          if (type > 268435487)
          {
            goto LABEL_62;
          }

          goto LABEL_46;
        }

        goto LABEL_61;
      }

      goto LABEL_45;
    }

    if (dataType == 536870944)
    {
      v17 = 96;
      v18 = 1;
      if (type > 268435487)
      {
        goto LABEL_62;
      }

      goto LABEL_46;
    }

    if (dataType == 536870976)
    {
      v17 = 128;
      v18 = 1;
      if (type > 268435487)
      {
        goto LABEL_62;
      }

      goto LABEL_46;
    }
  }

LABEL_61:
  v17 = 576;
  v18 = 1;
  if (type <= 268435487)
  {
    goto LABEL_46;
  }

LABEL_62:
  if (type <= 536870919)
  {
    switch(type)
    {
      case 0x10000020u:
        v18 = 11;
        goto LABEL_78;
      case 0x11000020u:
        v18 = 13;
        goto LABEL_78;
      case 0x11000040u:
        v18 = 14;
        goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (type > 536870943)
  {
    if (type == 536870944)
    {
      v18 = 3;
      goto LABEL_78;
    }

    if (type == 536870976)
    {
      v18 = 4;
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (type != 536870920)
  {
    if (type == 536870928)
    {
      v18 = 2;
      goto LABEL_78;
    }

LABEL_77:
    v18 = 18;
  }

LABEL_78:
  v19 = v18 | v17;
  v120.i64[1] = v18 | v17;
  if ((atomic_load_explicit(&qword_280AFEBB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AFEBB0))
  {
    qword_280AFEBA8 = objc_msgSend_hash(@"NDArrayCopy", v95, v96, v97, v98);
    __cxa_guard_release(&qword_280AFEBB0);
  }

  v24 = MPSLibrary::CreateUberShaderKey(self->_library, @"copyNDArrayData", &v119, v19 | 0x100000000, 0, 0, 1, 0, 0, @"NDArrayCopy", qword_280AFEBA8, 0, 0);
  library = self->_library;
  explicit = atomic_load_explicit(v24, memory_order_acquire);
  if (explicit)
  {
    if (!buffer)
    {
      goto LABEL_86;
    }
  }

  else
  {
    explicit = MPSLibrary::MPSKey_Compile(library, v24);
    if (!buffer)
    {
      goto LABEL_86;
    }
  }

  if (explicit && (objc_msgSend_retainedReferences(buffer, v20, v21, v22, v23) & 1) == 0)
  {
    v27 = explicit;
    *&v127 = MEMORY[0x277D85DD0];
    *(&v127 + 1) = 3221225472;
    *v128 = sub_22E3717C4;
    *&v128[8] = &unk_2787BE7E8;
    *&v128[16] = explicit;
    objc_msgSend_addCompletedHandler_(buffer, v28, &v127, v29, v30);
  }

LABEL_86:
  v159 = 0;
  v160 = 0;
  numberOfDimensions = self->_numberOfDimensions;
  LOBYTE(v159) = numberOfDimensions;
  v32 = self->_dataType;
  v33 = 1;
  if (v32 > 268435487)
  {
    if (v32 <= 536870919)
    {
      switch(v32)
      {
        case 268435488:
          v33 = 11;
          goto LABEL_118;
        case 285212704:
          v33 = 13;
          goto LABEL_118;
        case 285212736:
          v33 = 14;
          goto LABEL_118;
      }
    }

    else if (v32 > 536870943)
    {
      if (v32 == 536870944)
      {
        v33 = 3;
        goto LABEL_118;
      }

      if (v32 == 536870976)
      {
        v33 = 4;
        goto LABEL_118;
      }
    }

    else
    {
      if (v32 == 536870920)
      {
        goto LABEL_118;
      }

      if (v32 == 536870928)
      {
        v33 = 2;
        goto LABEL_118;
      }
    }
  }

  else if (v32 <= 15)
  {
    switch(v32)
    {
      case -2147483640:
        goto LABEL_118;
      case -1879048176:
        v33 = 12;
        goto LABEL_118;
      case 8:
        v33 = 6;
        goto LABEL_118;
    }
  }

  else if (v32 > 63)
  {
    if (v32 == 64)
    {
      v33 = 9;
      goto LABEL_118;
    }

    if (v32 == 268435472)
    {
      v33 = 10;
      goto LABEL_118;
    }
  }

  else
  {
    if (v32 == 16)
    {
      v33 = 7;
      goto LABEL_118;
    }

    if (v32 == 32)
    {
      v33 = 8;
      goto LABEL_118;
    }
  }

  v33 = 18;
LABEL_118:
  rowBytes = self->_rowBytes;
  HIDWORD(v159) = v33;
  LODWORD(v160) = rowBytes;
  v35 = 31 - __clz(v32 >> 3);
  if (v32 >> 3)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  HIDWORD(v160) = v36;
  v38 = *&self->_strideBytes[96];
  v37 = *&self->_strideBytes[112];
  v40 = *&self->_strideBytes[64];
  v39 = *&self->_strideBytes[80];
  v42 = *&self->_strideBytes[32];
  v41 = *&self->_strideBytes[48];
  v43 = *self->_strideBytes;
  v44 = *&self->_strideBytes[16];
  v46 = *&self->_sliceOffsets[32];
  v45 = *&self->_sliceOffsets[48];
  v48 = *self->_sliceOffsets;
  v47 = *&self->_sliceOffsets[16];
  v50 = *&self->_sliceLengths[32];
  v49 = *&self->_sliceLengths[48];
  v52 = *self->_sliceLengths;
  v51 = *&self->_sliceLengths[16];
  v53 = *self->_dimensionOrder;
  v144 = v53;
  *(&v127 + 4) = vextq_s8(v48, v48, 4uLL).u64[0];
  v134 = vextq_s8(v52, v52, 4uLL).u64[0];
  v150 = vzip2q_s32(v43, vuzp1q_s32(v43, v44)).u64[0];
  v145 = BYTE2(v53);
  *(&v127 | 0xC) = v48.i32[3];
  v135 = v52.i32[3];
  v151 = v44.i32[2];
  v146 = BYTE3(v53);
  LODWORD(v127) = v48.i32[0];
  *v128 = v47.i32[0];
  v136 = v51.i32[0];
  v54 = BYTE4(v53);
  v147 = DWORD1(v53);
  *&v128[4] = vextq_s8(v47, v47, 4uLL).u64[0];
  v137 = vextq_s8(v51, v51, 4uLL).u64[0];
  v55 = BYTE5(v53);
  v152 = vzip1_s32(*v42.i8, *&vextq_s8(v42, v42, 8uLL));
  v153 = vzip1_s32(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
  v56 = BYTE6(v53);
  *&v128[12] = vextq_s8(v47, v46, 0xCuLL).u64[0];
  v138 = vextq_s8(v51, v50, 0xCuLL).u64[0];
  v57 = BYTE7(v53);
  v58 = BYTE8(v53);
  v148 = *(&v53 + 1);
  *&v128[20] = v46.i32[1];
  v139 = v50.i32[1];
  v59 = BYTE9(v53);
  v41.i32[0] = vdupq_laneq_s32(v46, 2).u32[0];
  v41.i32[1] = v46.i32[3];
  v46.i32[0] = vdupq_laneq_s32(v50, 2).u32[0];
  v129 = v41.i64[0];
  v46.i32[1] = v50.i32[3];
  v140 = v46.i64[0];
  v154 = vzip1_s32(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
  v155 = vmovn_s64(v39);
  v60 = BYTE10(v53);
  v61 = BYTE11(v53);
  v133 = v52.i32[0];
  v130 = v45;
  v149 = v43.i32[0];
  v141 = v49;
  v62 = BYTE12(v53);
  v43.i32[0] = vdup_lane_s32(*&v45, 1).u32[0];
  v43.i32[1] = DWORD2(v45);
  v156 = v38.i32[0];
  v131 = v43.i64[0];
  v43.i32[0] = vdup_lane_s32(*&v49, 1).u32[0];
  v43.i32[1] = DWORD2(v49);
  v38.i32[0] = vdupq_laneq_s32(v38, 2).u32[0];
  v38.i32[1] = v37;
  v63 = BYTE13(v53);
  v132 = HIDWORD(v45);
  v143 = HIDWORD(v49);
  v142 = v43.i64[0];
  v158 = DWORD2(v37);
  v64 = BYTE14(v53);
  v157 = v38.i64[0];
  v65 = HIBYTE(v53);
  v125 = numberOfDimensions;
  v66 = 1;
  v126 = 0;
  if (type > 268435487)
  {
    if (type <= 536870919)
    {
      switch(type)
      {
        case 0x10000020u:
          v66 = 11;
          goto LABEL_153;
        case 0x11000020u:
          v66 = 13;
          goto LABEL_153;
        case 0x11000040u:
          v66 = 14;
          goto LABEL_153;
      }
    }

    else if (type > 536870943)
    {
      if (type == 536870944)
      {
        v66 = 3;
        goto LABEL_153;
      }

      if (type == 536870976)
      {
        v66 = 4;
        goto LABEL_153;
      }
    }

    else
    {
      if (type == 536870920)
      {
        goto LABEL_153;
      }

      if (type == 536870928)
      {
        v66 = 2;
        goto LABEL_153;
      }
    }
  }

  else if (type <= 15)
  {
    switch(type)
    {
      case 0x80000008:
        goto LABEL_153;
      case 0x90000010:
        v66 = 12;
        goto LABEL_153;
      case 8u:
        v66 = 6;
        goto LABEL_153;
    }
  }

  else if (type > 63)
  {
    if (type == 64)
    {
      v66 = 9;
      goto LABEL_153;
    }

    if (type == 268435472)
    {
      v66 = 10;
      goto LABEL_153;
    }
  }

  else
  {
    if (type == 16)
    {
      v66 = 7;
      goto LABEL_153;
    }

    if (type == 32)
    {
      v66 = 8;
      goto LABEL_153;
    }
  }

  v66 = 18;
LABEL_153:
  v67 = 31 - __clz(type >> 3);
  if (type >> 3)
  {
    v68 = v67;
  }

  else
  {
    v68 = 0;
  }

  HIDWORD(v125) = v66;
  HIDWORD(v126) = v68;
  memset(v124, 0, 64);
  v114[0] = v52;
  v114[1] = v51;
  v114[2] = v50;
  v114[3] = v49;
  *&v69 = *(v114 + (v53 & 0xF));
  v113[0] = v52;
  v113[1] = v51;
  v113[2] = v50;
  v113[3] = v49;
  *(&v69 + 4) = *(v113 + (BYTE1(v53) & 0xF));
  v112[0] = v52;
  v112[1] = v51;
  v112[2] = v50;
  v112[3] = v49;
  DWORD2(v69) = *(v112 + (BYTE2(v53) & 0xF));
  v111[0] = v52;
  v111[1] = v51;
  v111[2] = v50;
  v111[3] = v49;
  HIDWORD(v69) = *(v111 + (BYTE3(v53) & 0xF));
  v70 = vuzp1q_s32(*strideBytes, *(strideBytes + 1));
  LODWORD(v126) = vmovn_s64(*strideBytes).i32[1];
  v124[4] = v69;
  v124[9] = v70;
  v110[0] = v52;
  v110[1] = v51;
  v110[2] = v50;
  v110[3] = v49;
  LODWORD(v69) = *(v110 + (v54 & 0xF));
  v109[0] = v52;
  v109[1] = v51;
  v109[2] = v50;
  v109[3] = v49;
  DWORD1(v69) = *(v109 + (v55 & 0xF));
  v108[0] = v52;
  v108[1] = v51;
  v108[2] = v50;
  v108[3] = v49;
  DWORD2(v69) = *(v108 + (v56 & 0xF));
  v107[0] = v52;
  v107[1] = v51;
  v107[2] = v50;
  v107[3] = v49;
  HIDWORD(v69) = *(v107 + (v57 & 0xF));
  v71 = vuzp1q_s32(*(strideBytes + 2), *(strideBytes + 3));
  v124[5] = v69;
  v124[10] = v71;
  v106[0] = v52;
  v106[1] = v51;
  v106[2] = v50;
  v106[3] = v49;
  LODWORD(v69) = *(v106 + (v58 & 0xF));
  v105[0] = v52;
  v105[1] = v51;
  v105[2] = v50;
  v105[3] = v49;
  DWORD1(v69) = *(v105 + (v59 & 0xF));
  v104[0] = v52;
  v104[1] = v51;
  v104[2] = v50;
  v104[3] = v49;
  DWORD2(v69) = *(v104 + (v60 & 0xF));
  v103[0] = v52;
  v103[1] = v51;
  v103[2] = v50;
  v103[3] = v49;
  v72 = vuzp1q_s32(*(strideBytes + 4), *(strideBytes + 5));
  HIDWORD(v69) = *(v103 + (v61 & 0xF));
  v124[6] = v69;
  v124[11] = v72;
  v102[0] = v52;
  v102[1] = v51;
  v102[2] = v50;
  v102[3] = v49;
  LODWORD(v69) = *(v102 + (v62 & 0xF));
  v101[0] = v52;
  v101[1] = v51;
  v101[2] = v50;
  v101[3] = v49;
  DWORD1(v69) = *(v101 + (v63 & 0xF));
  v100[0] = v52;
  v100[1] = v51;
  v100[2] = v50;
  v100[3] = v49;
  DWORD2(v69) = *(v100 + (v64 & 0xF));
  v99[0] = v52;
  v99[1] = v51;
  v99[2] = v50;
  v99[3] = v49;
  HIDWORD(v69) = *(v99 + (v65 & 0xF));
  v124[12] = vuzp1q_s32(*(strideBytes + 6), *(strideBytes + 7));
  v124[7] = v69;
  v124[8] = xmmword_22E37B090;
  v73 = *&self->_sliceLengths[4 * (*self->_dimensionOrder & 0xF)];
  v78 = objc_msgSend_threadExecutionWidth(explicit, v60, v64, v111, v112);
  encoderCopy = encoder;
  if (!encoder)
  {
    encoderCopy = objc_msgSend_computeCommandEncoder(buffer, v74, v75, v76, v77);
  }

  objc_msgSend_setComputePipelineState_(encoderCopy, v74, explicit, v76, v77);
  v84 = objc_msgSend_buffer(self, v80, v81, v82, v83);
  objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v85, v84, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v86, toBuffer, bytes, 1);
  objc_msgSend_setBytes_length_atIndex_(encoderCopy, v87, &v127, 224, 2);
  objc_msgSend_setBytes_length_atIndex_(encoderCopy, v88, v124, 224, 3);
  v117 = (2 * v78 + v73 - 1) / (2 * v78);
  v118 = vdupq_n_s64(1uLL);
  v115 = 2 * v78;
  v116 = v118;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoderCopy, v89, &v117, &v115, v90);
  if (!encoder)
  {
    objc_msgSend_endEncoding(encoderCopy, v91, v92, v93, v94);
  }

  sub_22E2F0214(v24);
}

- (void)exportDataWithCommandBuffer:(id)buffer toBuffer:(id)toBuffer destinationDataType:(unsigned int)type offset:(unint64_t)offset rowStrides:(int64_t *)strides lengths:(unint64_t *)lengths numLengths:(unint64_t)numLengths flatteningLevel:(unint64_t)self0
{
  v13 = *&type;
  v17 = objc_msgSend_computeCommandEncoder(buffer, a2, buffer, toBuffer, *&type);
  objc_msgSend_exportDataWithCommandBuffer_computeEncoder_toBuffer_destinationDataType_offset_rowStrides_lengths_numLengths_flatteningLevel_(self, v18, buffer, v17, toBuffer, v13, offset, strides, lengths, numLengths, level);

  objc_msgSend_endEncoding(v17, v19, v20, v21, v22);
}

- (void)exportDataWithCommandBuffer:(id)buffer computeEncoder:(id)encoder toBuffer:(id)toBuffer destinationDataType:(unsigned int)type offset:(unint64_t)offset rowStrides:(int64_t *)strides lengths:(unint64_t *)lengths numLengths:(unint64_t)self0 flatteningLevel:(unint64_t)self1
{
  v235 = *MEMORY[0x277D85DE8];
  if (lengths)
  {
    v15 = level > 1;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (lengths)
  {
    v16 = @"reshapeNDArrayData";
  }

  else
  {
    v16 = @"copyNDArrayData";
  }

  dataType = self->_dataType;
  v18 = 32;
  if (dataType <= 268435487)
  {
    if (dataType > 15)
    {
      if (dataType > 63)
      {
        if (dataType == 64)
        {
          v18 = 288;
          v19 = 1;
          if (type > 268435487)
          {
            goto LABEL_68;
          }

          goto LABEL_52;
        }

        if (dataType == 268435472)
        {
          v18 = 320;
          v19 = 1;
          if (type > 268435487)
          {
            goto LABEL_68;
          }

          goto LABEL_52;
        }
      }

      else
      {
        if (dataType == 16)
        {
          v18 = 224;
          v19 = 1;
          if (type > 268435487)
          {
            goto LABEL_68;
          }

          goto LABEL_52;
        }

        if (dataType == 32)
        {
          v18 = 256;
          v19 = 1;
          if (type > 268435487)
          {
            goto LABEL_68;
          }

LABEL_52:
          if (type <= 15)
          {
            if (type != -2147483640)
            {
              if (type == -1879048176)
              {
                v19 = 12;
              }

              else
              {
                if (type != 8)
                {
                  goto LABEL_83;
                }

                v19 = 6;
              }
            }
          }

          else if (type > 63)
          {
            if (type == 64)
            {
              v19 = 9;
            }

            else
            {
              if (type != 268435472)
              {
                goto LABEL_83;
              }

              v19 = 10;
            }
          }

          else if (type == 16)
          {
            v19 = 7;
          }

          else
          {
            if (type != 32)
            {
              goto LABEL_83;
            }

            v19 = 8;
          }

          goto LABEL_84;
        }
      }

      goto LABEL_67;
    }

    if (dataType != -2147483640)
    {
      if (dataType == -1879048176)
      {
        v18 = 384;
        v19 = 1;
        if (type > 268435487)
        {
          goto LABEL_68;
        }

        goto LABEL_52;
      }

      if (dataType == 8)
      {
        v18 = 192;
        v19 = 1;
        if (type > 268435487)
        {
          goto LABEL_68;
        }

        goto LABEL_52;
      }

      goto LABEL_67;
    }

LABEL_51:
    v19 = 1;
    if (type <= 268435487)
    {
      goto LABEL_52;
    }

    goto LABEL_68;
  }

  if (dataType <= 536870919)
  {
    switch(dataType)
    {
      case 268435488:
        v18 = 352;
        v19 = 1;
        if (type > 268435487)
        {
          goto LABEL_68;
        }

        goto LABEL_52;
      case 285212704:
        v18 = 416;
        goto LABEL_51;
      case 285212736:
        v18 = 448;
        v19 = 1;
        if (type > 268435487)
        {
          goto LABEL_68;
        }

        goto LABEL_52;
    }
  }

  else
  {
    if (dataType <= 536870943)
    {
      if (dataType != 536870920)
      {
        if (dataType == 536870928)
        {
          v18 = 64;
          v19 = 1;
          if (type > 268435487)
          {
            goto LABEL_68;
          }

          goto LABEL_52;
        }

        goto LABEL_67;
      }

      goto LABEL_51;
    }

    if (dataType == 536870944)
    {
      v18 = 96;
      v19 = 1;
      if (type > 268435487)
      {
        goto LABEL_68;
      }

      goto LABEL_52;
    }

    if (dataType == 536870976)
    {
      v18 = 128;
      v19 = 1;
      if (type > 268435487)
      {
        goto LABEL_68;
      }

      goto LABEL_52;
    }
  }

LABEL_67:
  v18 = 576;
  v19 = 1;
  if (type <= 268435487)
  {
    goto LABEL_52;
  }

LABEL_68:
  if (type <= 536870919)
  {
    switch(type)
    {
      case 0x10000020u:
        v19 = 11;
        goto LABEL_84;
      case 0x11000020u:
        v19 = 13;
        goto LABEL_84;
      case 0x11000040u:
        v19 = 14;
        goto LABEL_84;
    }

    goto LABEL_83;
  }

  if (type > 536870943)
  {
    if (type == 536870944)
    {
      v19 = 3;
      goto LABEL_84;
    }

    if (type == 536870976)
    {
      v19 = 4;
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  if (type != 536870920)
  {
    if (type == 536870928)
    {
      v19 = 2;
      goto LABEL_84;
    }

LABEL_83:
    v19 = 18;
  }

LABEL_84:
  v20 = v18 | v19 | (level << 16);
  v21.i64[0] = -1;
  v21.i64[1] = -1;
  v205 = v21;
  v204 = v21;
  v203 = v21;
  v201 = -1;
  v200 = v21;
  v202 = v20;
  if ((atomic_load_explicit(&qword_280AFEBC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AFEBC0))
  {
    qword_280AFEBB8 = objc_msgSend_hash(@"NDArrayExport", v126, v127, v128, v129);
    __cxa_guard_release(&qword_280AFEBC0);
  }

  v139 = MPSLibrary::CreateUberShaderKey(self->_library, v16, &v200, v20 | ((lengths == 0) << 32), 0, 0, 1, 0, 0, @"NDArrayExport", qword_280AFEBB8, 0, 0);
  library = self->_library;
  explicit = atomic_load_explicit(v139, memory_order_acquire);
  if (explicit)
  {
    if (!buffer)
    {
      goto LABEL_92;
    }
  }

  else
  {
    explicit = MPSLibrary::MPSKey_Compile(library, v139);
    if (!buffer)
    {
      goto LABEL_92;
    }
  }

  if (explicit && (objc_msgSend_retainedReferences(buffer, v22, v23, v24, v25) & 1) == 0)
  {
    v28 = explicit;
    *&v209 = MEMORY[0x277D85DD0];
    *(&v209 + 1) = 3221225472;
    v210 = sub_22E3717C4;
    v211 = &unk_2787BE7E8;
    *v212 = explicit;
    objc_msgSend_addCompletedHandler_(buffer, v29, &v209, v30, v31);
  }

LABEL_92:
  v32 = *&self->_sliceLengths[4 * (*self->_dimensionOrder & 0xF)];
  if (lengths && v32 >= *lengths)
  {
    v32 = *lengths;
  }

  v131 = v32;
  v130 = objc_msgSend_threadExecutionWidth(explicit, v22, v23, v24, v25);
  if (level)
  {
    v36 = 0;
    v38 = *&self->_sliceLengths[32];
    v37 = *&self->_sliceLengths[48];
    v39 = 0uLL;
    v41 = *self->_sliceLengths;
    v40 = *&self->_sliceLengths[16];
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
    v46 = *&self->_sliceOffsets[32];
    v45 = *&self->_sliceOffsets[48];
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v52 = *self->_sliceOffsets;
    v51 = *&self->_sliceOffsets[16];
    do
    {
      v195[0] = v41;
      v195[1] = v40;
      v195[2] = v38;
      v195[3] = v37;
      v53 = *(v195 + (v36 & 0xF));
      v191 = v47;
      v192 = v48;
      v193 = v49;
      v194 = v50;
      *(&v191 + (v36 & 0xF)) = v53;
      v50 = v194;
      v49 = v193;
      v48 = v192;
      v47 = v191;
      v190[0] = v52;
      v190[1] = v51;
      v190[2] = v46;
      v190[3] = v45;
      v54 = *(v190 + (v36 & 0xF));
      v186 = v39;
      v187 = v42;
      v188 = v43;
      v189 = v44;
      *(&v186 + (v36 & 0xF)) = v54;
      v44 = v189;
      v43 = v188;
      v42 = v187;
      v39 = v186;
      LODWORD(v55) = ++v36;
    }

    while (v36 < level);
  }

  else
  {
    LODWORD(v55) = 0;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v39 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
  }

  v141 = v47;
  v143 = v48;
  v132 = v39;
  v133 = v42;
  v145 = v49;
  v147 = v50;
  v134 = v43;
  v135 = v44;
  if (self->_numberOfDimensions > v55)
  {
    v56 = 4 * ((level - 1) & 0xF);
    do
    {
      v57 = self + 4 * (v55 & 0xF);
      v58 = *(v57 + 36);
      v185[0] = v141;
      v185[1] = v143;
      v185[2] = v145;
      v185[3] = v147;
      v59 = v58 * *(v185 + v56);
      v181 = v141;
      v182 = v143;
      v183 = v145;
      v184 = v147;
      *(&v181 + v56) = v59;
      v145 = v183;
      v147 = v184;
      v141 = v181;
      v143 = v182;
      if (*(v57 + 20) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v55 = (v55 + 1);
    }

    while (self->_numberOfDimensions > v55);
  }

  v61 = *&self->_strideBytes[96];
  v60 = *&self->_strideBytes[112];
  v63 = *&self->_strideBytes[64];
  v62 = *&self->_strideBytes[80];
  v65 = *&self->_strideBytes[32];
  v64 = *&self->_strideBytes[48];
  v67 = *self->_strideBytes;
  v66 = *&self->_strideBytes[16];
  v234 = 0;
  levelCopy = level;
  v68 = 1;
  v69 = self->_dataType;
  if (v69 > 268435487)
  {
    if (v69 <= 536870919)
    {
      switch(v69)
      {
        case 268435488:
          v68 = 11;
          goto LABEL_139;
        case 285212704:
          v68 = 13;
          goto LABEL_139;
        case 285212736:
          v68 = 14;
          goto LABEL_139;
      }
    }

    else if (v69 > 536870943)
    {
      if (v69 == 536870944)
      {
        v68 = 3;
        goto LABEL_139;
      }

      if (v69 == 536870976)
      {
        v68 = 4;
        goto LABEL_139;
      }
    }

    else
    {
      if (v69 == 536870920)
      {
        goto LABEL_139;
      }

      if (v69 == 536870928)
      {
        v68 = 2;
        goto LABEL_139;
      }
    }
  }

  else if (v69 <= 15)
  {
    switch(v69)
    {
      case -2147483640:
        goto LABEL_139;
      case -1879048176:
        v68 = 12;
        goto LABEL_139;
      case 8:
        v68 = 6;
        goto LABEL_139;
    }
  }

  else if (v69 > 63)
  {
    if (v69 == 64)
    {
      v68 = 9;
      goto LABEL_139;
    }

    if (v69 == 268435472)
    {
      v68 = 10;
      goto LABEL_139;
    }
  }

  else
  {
    if (v69 == 16)
    {
      v68 = 7;
      goto LABEL_139;
    }

    if (v69 == 32)
    {
      v68 = 8;
      goto LABEL_139;
    }
  }

  v68 = 18;
LABEL_139:
  rowBytes = self->_rowBytes;
  HIDWORD(levelCopy) = v68;
  LODWORD(v234) = rowBytes;
  v71 = 31 - __clz(v69 >> 3);
  if (!(v69 >> 3))
  {
    v71 = 0;
  }

  HIDWORD(v234) = v71;
  v72 = *self->_dimensionOrder;
  v209 = v132;
  v216 = v141;
  v224 = v72;
  v225 = vzip1_s32(*v67.i8, *&vextq_s8(v67, v67, 8uLL));
  v226 = vzip1_s32(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
  v210 = v133.i64[0];
  v211 = vextq_s8(v133, v133, 8uLL).u64[0];
  v217 = v143.i64[0];
  v218 = vextq_s8(v143, v143, 8uLL).u64[0];
  v227 = vzip1_s32(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
  v228 = vzip1_s32(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
  *v212 = v134.i32[0];
  v219 = v145.i32[0];
  *&v212[4] = vextq_s8(v134, v134, 4uLL).u64[0];
  v220 = vextq_s8(v145, v145, 4uLL).u64[0];
  v229 = vzip1_s32(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
  v230 = vzip1_s32(*v62.i8, *&vextq_s8(v62, v62, 8uLL));
  v213 = v134.i32[3];
  v221 = v145.i32[3];
  LODWORD(v73) = vdupq_laneq_s32(v135, 2).u32[0];
  HIDWORD(v73) = v135.i32[3];
  LODWORD(v74) = vdupq_laneq_s32(v147, 2).u32[0];
  HIDWORD(v74) = v147.i32[3];
  v214 = v135.i64[0];
  v215 = v73;
  v222 = v147.i64[0];
  v223 = v74;
  v231 = vmovn_s64(v61);
  v232 = vmovn_s64(v60);
  if (strides)
  {
    if (!level)
    {
      LODWORD(v84) = 0;
      LODWORD(v90) = 0;
      v76 = 0uLL;
      v77 = 0uLL;
      v78 = 0uLL;
      v79 = 0uLL;
      v85 = 0uLL;
      v86 = 0uLL;
      v87 = 0uLL;
      v88 = 0uLL;
      if (lengths)
      {
        goto LABEL_158;
      }

      goto LABEL_164;
    }

    v75 = 0;
    v76 = 0uLL;
    v77 = 0uLL;
    v78 = 0uLL;
    v79 = 0uLL;
    do
    {
      v80 = strides[v75];
      v177 = v76;
      v178 = v77;
      v179 = v78;
      v180 = v79;
      *(&v177 + (v75 & 0xF)) = v80;
      v78 = v179;
      v79 = v180;
      v76 = v177;
      v77 = v178;
      ++v75;
    }

    while (level > v75);
  }

  else
  {
    v146 = *&self->_sliceLengths[48];
    v148 = v72;
    v142 = *&self->_sliceLengths[16];
    v144 = *&self->_sliceLengths[32];
    v136 = *self->_sliceLengths;
    v81 = v69;
    if (v69 <= 7u && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v82 = v81 >> 3;
    if (v81 <= 7)
    {
      v82 = 1;
    }

    v77 = 0uLL;
    v76 = v82;
    if (level < 2)
    {
      v78 = 0uLL;
      v79 = 0uLL;
      if (lengths)
      {
        goto LABEL_153;
      }

      goto LABEL_161;
    }

    v83 = 1;
    v78 = 0uLL;
    v79 = 0uLL;
    do
    {
      v171 = v148;
      v176[0] = v136;
      v176[1] = v142;
      v176[2] = v144;
      v176[3] = v146;
      v82 *= *(v176 + (*(&v171 | (v83 - 1) & 0xF) & 0xF));
      v172 = v76;
      v173 = v77;
      v174 = v78;
      v175 = v79;
      *(&v172 + (v83 & 0xF)) = v82;
      v78 = v174;
      v79 = v175;
      v76 = v172;
      v77 = v173;
      ++v83;
    }

    while (level != v83);
  }

  if (lengths)
  {
LABEL_153:
    if (!level)
    {
      v85 = 0uLL;
      v86 = 0uLL;
      v87 = 0uLL;
      v88 = 0uLL;
      numLengthsCopy2 = numLengths;
      v92 = 0;
      if (!numLengths)
      {
        goto LABEL_173;
      }

LABEL_167:
      v100 = v92 + 1;
      do
      {
        v101 = lengths[v92];
        v166[0] = v85;
        v166[1] = v86;
        v166[2] = v87;
        v166[3] = v88;
        v102 = *(v166 + ((level - 1) & 0xF));
        v162 = v85;
        v163 = v86;
        v164 = v87;
        v165 = v88;
        *(&v162 + ((level - 1) & 0xF)) = v102 * v101;
        v87 = v164;
        v88 = v165;
        v85 = v162;
        v86 = v163;
        v92 = v100++;
      }

      while (v92 < numLengthsCopy2);
      goto LABEL_173;
    }

    v84 = 0;
    v85 = 0uLL;
    v86 = 0uLL;
    v87 = 0uLL;
    v88 = 0uLL;
    do
    {
      v89 = lengths[v84];
      v167 = v85;
      v168 = v86;
      v169 = v87;
      v170 = v88;
      *(&v167 + (v84 & 0xF)) = v89;
      v87 = v169;
      v88 = v170;
      v85 = v167;
      v86 = v168;
      ++v84;
    }

    while (level > v84);
LABEL_158:
    numLengthsCopy2 = numLengths;
    v92 = v84;
    if (v84 >= numLengths)
    {
      goto LABEL_173;
    }

    goto LABEL_167;
  }

LABEL_161:
  LODWORD(v90) = 0;
  if (level)
  {
    v94 = *&self->_sliceLengths[32];
    v93 = *&self->_sliceLengths[48];
    v85 = 0uLL;
    v86 = 0uLL;
    v96 = *self->_sliceLengths;
    v95 = *&self->_sliceLengths[16];
    v87 = 0uLL;
    v88 = 0uLL;
    v97 = *self->_dimensionOrder;
    do
    {
      v156 = v97;
      v161[0] = v96;
      v161[1] = v95;
      v161[2] = v94;
      v161[3] = v93;
      v98 = *(v161 + (*(&v156 | v90 & 0xF) & 0xF));
      v157 = v85;
      v158 = v86;
      v159 = v87;
      v160 = v88;
      *(&v157 + (v90 & 0xF)) = v98;
      v87 = v159;
      v88 = v160;
      v85 = v157;
      v86 = v158;
      v90 = (v90 + 1);
    }

    while (v90 < level);
LABEL_164:
    numberOfDimensions = self->_numberOfDimensions;
    if (numberOfDimensions <= v90)
    {
      goto LABEL_173;
    }

    goto LABEL_171;
  }

  v85 = 0uLL;
  v86 = 0uLL;
  v87 = 0uLL;
  v88 = 0uLL;
  numberOfDimensions = self->_numberOfDimensions;
  if (!numberOfDimensions)
  {
    goto LABEL_173;
  }

LABEL_171:
  v104 = *&self->_sliceLengths[32];
  v103 = *&self->_sliceLengths[48];
  v106 = *self->_sliceLengths;
  v105 = *&self->_sliceLengths[16];
  v107 = *self->_dimensionOrder;
  do
  {
    v149 = v107;
    v155[0] = v106;
    v155[1] = v105;
    v155[2] = v104;
    v155[3] = v103;
    v108 = *(v155 + (*(&v149 | v90 & 0xF) & 0xF));
    v154[0] = v85;
    v154[1] = v86;
    v154[2] = v87;
    v154[3] = v88;
    v109 = *(v154 + ((level - 1) & 0xF));
    v150 = v85;
    v151 = v86;
    v152 = v87;
    v153 = v88;
    *(&v150 + ((level - 1) & 0xF)) = v108 * v109;
    v87 = v152;
    v88 = v153;
    v85 = v150;
    v86 = v151;
    v90 = (v90 + 1);
  }

  while (numberOfDimensions > v90);
LABEL_173:
  v208 = 0;
  v207 = levelCopy;
  v110 = 1;
  if (type > 268435487)
  {
    if (type <= 536870919)
    {
      switch(type)
      {
        case 0x10000020u:
          v110 = 11;
          goto LABEL_205;
        case 0x11000020u:
          v110 = 13;
          goto LABEL_205;
        case 0x11000040u:
          v110 = 14;
          goto LABEL_205;
      }
    }

    else if (type > 536870943)
    {
      if (type == 536870944)
      {
        v110 = 3;
        goto LABEL_205;
      }

      if (type == 536870976)
      {
        v110 = 4;
        goto LABEL_205;
      }
    }

    else
    {
      if (type == 536870920)
      {
        goto LABEL_205;
      }

      if (type == 536870928)
      {
        v110 = 2;
        goto LABEL_205;
      }
    }
  }

  else if (type <= 15)
  {
    switch(type)
    {
      case 0x80000008:
        goto LABEL_205;
      case 0x90000010:
        v110 = 12;
        goto LABEL_205;
      case 8u:
        v110 = 6;
        goto LABEL_205;
    }
  }

  else if (type > 63)
  {
    if (type == 64)
    {
      v110 = 9;
      goto LABEL_205;
    }

    if (type == 268435472)
    {
      v110 = 10;
      goto LABEL_205;
    }
  }

  else
  {
    if (type == 16)
    {
      v110 = 7;
      goto LABEL_205;
    }

    if (type == 32)
    {
      v110 = 8;
      goto LABEL_205;
    }
  }

  v110 = 18;
LABEL_205:
  v111 = DWORD1(v76);
  v112 = 31 - __clz(type >> 3);
  if (type >> 3)
  {
    v113 = v112;
  }

  else
  {
    v113 = 0;
  }

  if (SDWORD1(v76) < 0)
  {
    v111 = -DWORD1(v76);
  }

  HIDWORD(v207) = v110;
  v208 = __PAIR64__(v113, v111);
  memset(v206, 0, 64);
  v206[4] = v85;
  v206[5] = v86;
  v206[10] = v77;
  v206[11] = v78;
  v206[6] = v87;
  v206[7] = v88;
  v206[12] = v79;
  v206[9] = v76;
  v206[8] = xmmword_22E37B090;
  objc_msgSend_setComputePipelineState_(encoder, v33, explicit, v34, v35);
  v118 = objc_msgSend_buffer(self, v114, v115, v116, v117);
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v119, v118, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v120, toBuffer, offset, 1);
  objc_msgSend_setBytes_length_atIndex_(encoder, v121, &v209, 224, 2);
  objc_msgSend_setBytes_length_atIndex_(encoder, v122, v206, 224, 3);
  v198 = (2 * v130 + v131 - 1) / (2 * v130);
  v199 = vdupq_n_s64(1uLL);
  v196 = 2 * v130;
  v197 = v199;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v123, &v198, &v196, v124);
  sub_22E2F0214(v139);
}

- (void)importDataWithCommandBuffer:(id)cmdBuf fromBuffer:(id)buffer sourceDataType:(MPSDataType)sourceDataType offset:(NSUInteger)offset rowStrides:(NSInteger *)rowStrides
{
  v9 = *&sourceDataType;
  v13 = objc_msgSend_computeCommandEncoder(cmdBuf, a2, cmdBuf, buffer, *&sourceDataType);
  objc_msgSend_importDataWithCommandBuffer_computeEncoder_fromBuffer_sourceDataType_offset_rowStrides_(self, v14, cmdBuf, v13, buffer, v9, offset, rowStrides);

  objc_msgSend_endEncoding(v13, v15, v16, v17, v18);
}

- (void)importDataWithCommandBuffer:(id)buffer computeEncoder:(id)encoder fromBuffer:(id)fromBuffer sourceDataType:(unsigned int)type offset:(unint64_t)offset rowStrides:(int64_t *)strides
{
  v190 = *MEMORY[0x277D85DE8];
  if ((self->_dataType & 0xFFF8) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((type & 0xFFF8) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15 = 32;
  if (type <= 268435487)
  {
    if (type > 15)
    {
      if (type > 63)
      {
        if (type == 64)
        {
          v15 = 288;
          dataType = self->_dataType;
          v17 = 1;
          if (dataType > 268435487)
          {
            goto LABEL_62;
          }

          goto LABEL_46;
        }

        if (type == 268435472)
        {
          v15 = 320;
          dataType = self->_dataType;
          v17 = 1;
          if (dataType > 268435487)
          {
            goto LABEL_62;
          }

          goto LABEL_46;
        }
      }

      else
      {
        if (type == 16)
        {
          v15 = 224;
          dataType = self->_dataType;
          v17 = 1;
          if (dataType > 268435487)
          {
            goto LABEL_62;
          }

          goto LABEL_46;
        }

        if (type == 32)
        {
          v15 = 256;
          dataType = self->_dataType;
          v17 = 1;
          if (dataType > 268435487)
          {
            goto LABEL_62;
          }

LABEL_46:
          if (dataType <= 15)
          {
            if (dataType != -2147483640)
            {
              if (dataType == -1879048176)
              {
                v17 = 12;
              }

              else
              {
                if (dataType != 8)
                {
                  goto LABEL_77;
                }

                v17 = 6;
              }
            }
          }

          else if (dataType > 63)
          {
            if (dataType == 64)
            {
              v17 = 9;
            }

            else
            {
              if (dataType != 268435472)
              {
                goto LABEL_77;
              }

              v17 = 10;
            }
          }

          else if (dataType == 16)
          {
            v17 = 7;
          }

          else
          {
            if (dataType != 32)
            {
              goto LABEL_77;
            }

            v17 = 8;
          }

          goto LABEL_78;
        }
      }

      goto LABEL_61;
    }

    if (type != -2147483640)
    {
      if (type == -1879048176)
      {
        v15 = 384;
        dataType = self->_dataType;
        v17 = 1;
        if (dataType > 268435487)
        {
          goto LABEL_62;
        }

        goto LABEL_46;
      }

      if (type == 8)
      {
        v15 = 192;
        dataType = self->_dataType;
        v17 = 1;
        if (dataType > 268435487)
        {
          goto LABEL_62;
        }

        goto LABEL_46;
      }

      goto LABEL_61;
    }

LABEL_45:
    dataType = self->_dataType;
    v17 = 1;
    if (dataType <= 268435487)
    {
      goto LABEL_46;
    }

    goto LABEL_62;
  }

  if (type <= 536870919)
  {
    switch(type)
    {
      case 0x10000020u:
        v15 = 352;
        dataType = self->_dataType;
        v17 = 1;
        if (dataType > 268435487)
        {
          goto LABEL_62;
        }

        goto LABEL_46;
      case 0x11000020u:
        v15 = 416;
        goto LABEL_45;
      case 0x11000040u:
        v15 = 448;
        dataType = self->_dataType;
        v17 = 1;
        if (dataType > 268435487)
        {
          goto LABEL_62;
        }

        goto LABEL_46;
    }
  }

  else
  {
    if (type <= 536870943)
    {
      if (type != 536870920)
      {
        if (type == 536870928)
        {
          v15 = 64;
          dataType = self->_dataType;
          v17 = 1;
          if (dataType > 268435487)
          {
            goto LABEL_62;
          }

          goto LABEL_46;
        }

        goto LABEL_61;
      }

      goto LABEL_45;
    }

    if (type == 536870944)
    {
      v15 = 96;
      dataType = self->_dataType;
      v17 = 1;
      if (dataType > 268435487)
      {
        goto LABEL_62;
      }

      goto LABEL_46;
    }

    if (type == 536870976)
    {
      v15 = 128;
      dataType = self->_dataType;
      v17 = 1;
      if (dataType > 268435487)
      {
        goto LABEL_62;
      }

      goto LABEL_46;
    }
  }

LABEL_61:
  v15 = 576;
  dataType = self->_dataType;
  v17 = 1;
  if (dataType <= 268435487)
  {
    goto LABEL_46;
  }

LABEL_62:
  if (dataType <= 536870919)
  {
    switch(dataType)
    {
      case 268435488:
        v17 = 11;
        goto LABEL_78;
      case 285212704:
        v17 = 13;
        goto LABEL_78;
      case 285212736:
        v17 = 14;
        goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (dataType > 536870943)
  {
    if (dataType == 536870944)
    {
      v17 = 3;
      goto LABEL_78;
    }

    if (dataType == 536870976)
    {
      v17 = 4;
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (dataType != 536870920)
  {
    if (dataType == 536870928)
    {
      v17 = 2;
      goto LABEL_78;
    }

LABEL_77:
    v17 = 18;
  }

LABEL_78:
  v18 = v17 | v15;
  v19.i64[0] = -1;
  v19.i64[1] = -1;
  v160 = v19;
  v159 = v19;
  v158 = v19;
  v156 = -1;
  v155 = v19;
  v157 = v17 | v15;
  if ((atomic_load_explicit(&qword_280AFEBD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AFEBD0))
  {
    qword_280AFEBC8 = objc_msgSend_hash(@"NDArrayImport", v100, v101, v102, v103);
    __cxa_guard_release(&qword_280AFEBD0);
  }

  v24 = MPSLibrary::CreateUberShaderKey(self->_library, @"copyNDArrayData", &v155, v18 | 0x200000000, 0, 0, 1, 0, 0, @"NDArrayImport", qword_280AFEBC8, 0, 0);
  library = self->_library;
  explicit = atomic_load_explicit(v24, memory_order_acquire);
  if (explicit)
  {
    if (!buffer)
    {
      goto LABEL_86;
    }
  }

  else
  {
    explicit = MPSLibrary::MPSKey_Compile(library, v24);
    if (!buffer)
    {
      goto LABEL_86;
    }
  }

  if (explicit && (objc_msgSend_retainedReferences(buffer, v20, v21, v22, v23) & 1) == 0)
  {
    v27 = explicit;
    *&v164 = MEMORY[0x277D85DD0];
    *(&v164 + 1) = 3221225472;
    v165 = sub_22E3717C4;
    v166 = &unk_2787BE7E8;
    *v167 = explicit;
    objc_msgSend_addCompletedHandler_(buffer, v28, &v164, v29, v30);
  }

LABEL_86:
  v112 = *&self->_sliceLengths[32];
  v113 = *&self->_sliceLengths[48];
  v110 = *self->_sliceLengths;
  v111 = *&self->_sliceLengths[16];
  v109 = *self->_dimensionOrder;
  v31 = objc_msgSend_threadExecutionWidth(explicit, v20, v21, v22, v23);
  numberOfDimensions = self->_numberOfDimensions;
  if (numberOfDimensions)
  {
    v34 = *&self->_sliceLengths[32];
    v33 = *&self->_sliceLengths[48];
    v35 = 0uLL;
    v36 = 1;
    v38 = *self->_sliceLengths;
    v37 = *&self->_sliceLengths[16];
    v39 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v43 = *&self->_sliceOffsets[32];
    v42 = *&self->_sliceOffsets[48];
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v49 = *self->_sliceOffsets;
    v48 = *&self->_sliceOffsets[16];
    do
    {
      v150[0] = v38;
      v150[1] = v37;
      v150[2] = v34;
      v150[3] = v33;
      v50 = (v36 - 1) & 0xF;
      v51 = *(v150 + v50);
      v146 = v44;
      v147 = v45;
      v148 = v46;
      v149 = v47;
      *(&v146 + v50) = v51;
      v47 = v149;
      v46 = v148;
      v45 = v147;
      v44 = v146;
      v145[0] = v49;
      v145[1] = v48;
      v145[2] = v43;
      v145[3] = v42;
      v52 = *(v145 + v50);
      v141 = v35;
      v142 = v39;
      v143 = v40;
      v144 = v41;
      *(&v141 + v50) = v52;
      v41 = v144;
      v40 = v143;
      v39 = v142;
      v35 = v141;
    }

    while (numberOfDimensions > v36++);
  }

  else
  {
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v35 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
  }

  v114 = v45;
  v115 = v46;
  v116 = v44;
  v117 = v47;
  v55 = *&self->_strideBytes[96];
  v54 = *&self->_strideBytes[112];
  v57 = *&self->_strideBytes[64];
  v56 = *&self->_strideBytes[80];
  v59 = *&self->_strideBytes[32];
  v58 = *&self->_strideBytes[48];
  v61 = *self->_strideBytes;
  v60 = *&self->_strideBytes[16];
  v189 = 0;
  v188 = numberOfDimensions;
  v62 = 1;
  v63 = self->_dataType;
  if (v63 > 268435487)
  {
    if (v63 <= 536870919)
    {
      switch(v63)
      {
        case 268435488:
          v62 = 11;
          goto LABEL_123;
        case 285212704:
          v62 = 13;
          goto LABEL_123;
        case 285212736:
          v62 = 14;
          goto LABEL_123;
      }
    }

    else if (v63 > 536870943)
    {
      if (v63 == 536870944)
      {
        v62 = 3;
        goto LABEL_123;
      }

      if (v63 == 536870976)
      {
        v62 = 4;
        goto LABEL_123;
      }
    }

    else
    {
      if (v63 == 536870920)
      {
        goto LABEL_123;
      }

      if (v63 == 536870928)
      {
        v62 = 2;
        goto LABEL_123;
      }
    }
  }

  else if (v63 <= 15)
  {
    switch(v63)
    {
      case -2147483640:
        goto LABEL_123;
      case -1879048176:
        v62 = 12;
        goto LABEL_123;
      case 8:
        v62 = 6;
        goto LABEL_123;
    }
  }

  else if (v63 > 63)
  {
    if (v63 == 64)
    {
      v62 = 9;
      goto LABEL_123;
    }

    if (v63 == 268435472)
    {
      v62 = 10;
      goto LABEL_123;
    }
  }

  else
  {
    if (v63 == 16)
    {
      v62 = 7;
      goto LABEL_123;
    }

    if (v63 == 32)
    {
      v62 = 8;
      goto LABEL_123;
    }
  }

  v62 = 18;
LABEL_123:
  rowBytes = self->_rowBytes;
  HIDWORD(v188) = v62;
  LODWORD(v189) = rowBytes;
  v65 = 31 - __clz(v63 >> 3);
  if (!(v63 >> 3))
  {
    v65 = 0;
  }

  HIDWORD(v189) = v65;
  v66 = *self->_dimensionOrder;
  v164 = v35;
  v171 = v44;
  v179 = v66;
  v180 = vzip1_s32(*v61.i8, *&vextq_s8(v61, v61, 8uLL));
  v181 = vzip1_s32(*v60.i8, *&vextq_s8(v60, v60, 8uLL));
  v165 = v39.i64[0];
  v166 = vextq_s8(v39, v39, 8uLL).u64[0];
  v172 = v45.i64[0];
  v173 = vextq_s8(v45, v45, 8uLL).u64[0];
  v182 = vzip1_s32(*v59.i8, *&vextq_s8(v59, v59, 8uLL));
  v183 = vzip1_s32(*v58.i8, *&vextq_s8(v58, v58, 8uLL));
  *v167 = v40.i32[0];
  v174 = v46.i32[0];
  *&v167[4] = vextq_s8(v40, v40, 4uLL).u64[0];
  v175 = vextq_s8(v46, v46, 4uLL).u64[0];
  v184 = vzip1_s32(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
  v185 = vzip1_s32(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
  v168 = v40.i32[3];
  v176 = v46.i32[3];
  v67 = v41.i64[0];
  LODWORD(v68) = vdupq_laneq_s32(v41, 2).u32[0];
  HIDWORD(v68) = v41.i32[3];
  v69 = vmovn_s64(v55);
  LODWORD(v70) = vdupq_laneq_s32(v117, 2).u32[0];
  HIDWORD(v70) = v117.i32[3];
  v169 = v67;
  v170 = v68;
  v177 = v117.i64[0];
  v178 = v70;
  v186 = v69;
  v187 = vmovn_s64(v54);
  if (strides)
  {
    v71 = vuzp1q_s32(*(strides + 6), *(strides + 7));
    v72 = vuzp1q_s32(*(strides + 4), *(strides + 5));
    v73 = vuzp1q_s32(*(strides + 2), *(strides + 3));
    v74 = vuzp1q_s32(*strides, *(strides + 1));
  }

  else
  {
    v107 = *&self->_sliceLengths[48];
    v108 = v66;
    v105 = *&self->_sliceLengths[16];
    v106 = *&self->_sliceLengths[32];
    v104 = *self->_sliceLengths;
    v75 = v63;
    if (v63 <= 7u && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v76 = v75 >> 3;
    if (v75 <= 7)
    {
      v76 = 1;
    }

    v73 = 0uLL;
    v74 = v76;
    if (numberOfDimensions < 2)
    {
      v72 = 0uLL;
      v71 = 0uLL;
    }

    else
    {
      v77 = 1;
      v72 = 0uLL;
      v71 = 0uLL;
      do
      {
        v135 = v108;
        v140[0] = v104;
        v140[1] = v105;
        v140[2] = v106;
        v140[3] = v107;
        v76 *= *(v140 + (*(&v135 | (v77 - 1) & 0xF) & 0xF));
        v136 = v74;
        v137 = v73;
        v138 = v72;
        v139 = v71;
        v136.i32[v77 & 0xF] = v76;
        v71 = v139;
        v72 = v138;
        v73 = v137;
        v74 = v136;
        ++v77;
      }

      while (numberOfDimensions != v77);
    }
  }

  v78 = *self->_dimensionOrder;
  v163 = 0;
  v162 = v188;
  v79 = 1;
  if (type > 268435487)
  {
    if (type <= 536870919)
    {
      switch(type)
      {
        case 0x10000020u:
          v79 = 11;
          goto LABEL_167;
        case 0x11000020u:
          v79 = 13;
          goto LABEL_167;
        case 0x11000040u:
          v79 = 14;
          goto LABEL_167;
      }
    }

    else if (type > 536870943)
    {
      if (type == 536870944)
      {
        v79 = 3;
        goto LABEL_167;
      }

      if (type == 536870976)
      {
        v79 = 4;
        goto LABEL_167;
      }
    }

    else
    {
      if (type == 536870920)
      {
        goto LABEL_167;
      }

      if (type == 536870928)
      {
        v79 = 2;
        goto LABEL_167;
      }
    }
  }

  else if (type <= 15)
  {
    switch(type)
    {
      case 0x80000008:
        goto LABEL_167;
      case 0x90000010:
        v79 = 12;
        goto LABEL_167;
      case 8u:
        v79 = 6;
        goto LABEL_167;
    }
  }

  else if (type > 63)
  {
    if (type == 64)
    {
      v79 = 9;
      goto LABEL_167;
    }

    if (type == 268435472)
    {
      v79 = 10;
      goto LABEL_167;
    }
  }

  else
  {
    if (type == 16)
    {
      v79 = 7;
      goto LABEL_167;
    }

    if (type == 32)
    {
      v79 = 8;
      goto LABEL_167;
    }
  }

  v79 = 18;
LABEL_167:
  v80 = 31 - __clz(type >> 3);
  v81 = type >> 3 == 0;
  v134[0] = v116;
  v134[1] = v114;
  v134[2] = v115;
  v134[3] = v117;
  v133[0] = v116;
  v133[1] = v114;
  v133[2] = v115;
  v133[3] = v117;
  v132[0] = v116;
  v132[1] = v114;
  v132[2] = v115;
  v132[3] = v117;
  v131[0] = v116;
  v131[1] = v114;
  v131[2] = v115;
  v131[3] = v117;
  v130[0] = v116;
  v130[1] = v114;
  v130[2] = v115;
  v130[3] = v117;
  v129[0] = v116;
  v129[1] = v114;
  v129[2] = v115;
  v129[3] = v117;
  v128[0] = v116;
  v128[1] = v114;
  v128[2] = v115;
  v128[3] = v117;
  v127[0] = v116;
  v127[1] = v114;
  v127[2] = v115;
  v127[3] = v117;
  v82 = (BYTE8(v78) & 0xF);
  v126[0] = v116;
  v126[1] = v114;
  v126[2] = v115;
  v126[3] = v117;
  v125[0] = v116;
  v125[1] = v114;
  v125[2] = v115;
  v125[3] = v117;
  v83 = v125 + (BYTE6(v78) & 0xF);
  v124[0] = v116;
  v124[1] = v114;
  v124[2] = v115;
  v124[3] = v117;
  v123[0] = v116;
  v123[1] = v114;
  v123[2] = v115;
  v123[3] = v117;
  v122[0] = v116;
  v122[1] = v114;
  v122[2] = v115;
  v122[3] = v117;
  v121[0] = v116;
  v121[1] = v114;
  v121[2] = v115;
  v121[3] = v117;
  v120[0] = v116;
  v120[1] = v114;
  v120[2] = v115;
  v120[3] = v117;
  v119[0] = v116;
  v119[1] = v114;
  v119[2] = v115;
  v119[3] = v117;
  v84 = v74.i32[1];
  if (v81)
  {
    v80 = 0;
  }

  if (v74.i32[1] < 0)
  {
    v84 = -v74.i32[1];
  }

  HIDWORD(v162) = v79;
  v163 = __PAIR64__(v80, v84);
  memset(v161, 0, 64);
  *&v85 = *(v119 + (v78 & 0xF));
  *(&v85 + 4) = *(v120 + (BYTE1(v78) & 0xF));
  DWORD2(v85) = *(v121 + (BYTE2(v78) & 0xF));
  HIDWORD(v85) = *(v122 + (BYTE3(v78) & 0xF));
  v161[4] = v85;
  v161[9] = v74;
  LODWORD(v86) = *(v123 + (BYTE4(v78) & 0xF));
  DWORD1(v86) = *(v124 + (BYTE5(v78) & 0xF));
  DWORD2(v86) = *v83;
  HIDWORD(v86) = *(v126 + (BYTE7(v78) & 0xF));
  v161[5] = v86;
  v161[10] = v73;
  LODWORD(v87) = *(v127 + v82);
  DWORD1(v87) = *(v128 + (BYTE9(v78) & 0xF));
  DWORD2(v87) = *(v129 + (BYTE10(v78) & 0xF));
  HIDWORD(v87) = *(v130 + (BYTE11(v78) & 0xF));
  v161[6] = v87;
  v161[11] = v72;
  LODWORD(v87) = *(v131 + (BYTE12(v78) & 0xF));
  DWORD1(v87) = *(v132 + (BYTE13(v78) & 0xF));
  DWORD2(v87) = *(v133 + (BYTE14(v78) & 0xF));
  HIDWORD(v87) = *(v134 + (HIBYTE(v78) & 0xF));
  v161[12] = v71;
  v161[7] = v87;
  v161[8] = xmmword_22E37B090;
  v118[0] = v110;
  v118[1] = v111;
  v118[2] = v112;
  v118[3] = v113;
  v88 = *(v118 + (v109 & 0xF));
  objc_msgSend_setComputePipelineState_(encoder, v82, explicit, v126, v83);
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v89, fromBuffer, offset, 0);
  v94 = objc_msgSend_buffer(self, v90, v91, v92, v93);
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v95, v94, 0, 1);
  objc_msgSend_setBytes_length_atIndex_(encoder, v96, v161, 224, 2);
  objc_msgSend_setBytes_length_atIndex_(encoder, v97, &v164, 224, 3);
  v153 = (2 * v31 + v88 - 1) / (2 * v31);
  v154 = vdupq_n_s64(1uLL);
  v151 = 2 * v31;
  v152 = v154;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v98, &v153, &v151, v99);
  sub_22E2F0214(v24);
}

- (void)copyDataWithCommandBuffer:(id)buffer images:(id)images offset:(MPSImageCoordinate *)offset imageToArray:(BOOL)array
{
  arrayCopy = array;
  selfCopy = self;
  v300 = *MEMORY[0x277D85DE8];
  if ((self->_dataType & 0xFFF8) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (objc_msgSend_count(images, a2, buffer, images, offset))
  {
    v18 = objc_msgSend_objectAtIndexedSubscript_(images, v11, 0, v12, v13);
    if (arrayCopy)
    {
      v19 = @"copyNDArrayFromImage";
    }

    else
    {
      v19 = @"copyNDArrayToImage";
    }

    dataType = selfCopy->_dataType;
    if (arrayCopy)
    {
      v21 = 1;
      if (dataType > 268435487)
      {
        if (dataType <= 536870919)
        {
          switch(dataType)
          {
            case 268435488:
              v21 = 11;
              goto LABEL_71;
            case 285212704:
              v21 = 13;
              goto LABEL_71;
            case 285212736:
              v21 = 14;
              goto LABEL_71;
          }
        }

        else if (dataType > 536870943)
        {
          if (dataType == 536870944)
          {
            v21 = 3;
            goto LABEL_71;
          }

          if (dataType == 536870976)
          {
            v21 = 4;
            goto LABEL_71;
          }
        }

        else
        {
          if (dataType == 536870920)
          {
            goto LABEL_71;
          }

          if (dataType == 536870928)
          {
            v21 = 2;
            goto LABEL_71;
          }
        }
      }

      else if (dataType <= 15)
      {
        switch(dataType)
        {
          case -2147483640:
            goto LABEL_71;
          case -1879048176:
            v21 = 12;
            goto LABEL_71;
          case 8:
            v21 = 6;
            goto LABEL_71;
        }
      }

      else if (dataType > 63)
      {
        if (dataType == 64)
        {
          v21 = 9;
          goto LABEL_71;
        }

        if (dataType == 268435472)
        {
          v21 = 10;
          goto LABEL_71;
        }
      }

      else
      {
        if (dataType == 16)
        {
          v21 = 7;
          goto LABEL_71;
        }

        if (dataType == 32)
        {
          v21 = 8;
          goto LABEL_71;
        }
      }

      v21 = 18;
    }

    else
    {
      v21 = 32;
      if (dataType > 268435487)
      {
        if (dataType <= 536870919)
        {
          switch(dataType)
          {
            case 268435488:
              v21 = 352;
              goto LABEL_71;
            case 285212704:
              v21 = 416;
              goto LABEL_71;
            case 285212736:
              v21 = 448;
              goto LABEL_71;
          }
        }

        else if (dataType > 536870943)
        {
          if (dataType == 536870944)
          {
            v21 = 96;
            goto LABEL_71;
          }

          if (dataType == 536870976)
          {
            v21 = 128;
            goto LABEL_71;
          }
        }

        else
        {
          if (dataType == 536870920)
          {
            goto LABEL_71;
          }

          if (dataType == 536870928)
          {
            v21 = 64;
            goto LABEL_71;
          }
        }
      }

      else if (dataType <= 15)
      {
        switch(dataType)
        {
          case -2147483640:
            goto LABEL_71;
          case -1879048176:
            v21 = 384;
            goto LABEL_71;
          case 8:
            v21 = 192;
            goto LABEL_71;
        }
      }

      else if (dataType > 63)
      {
        if (dataType == 64)
        {
          v21 = 288;
          goto LABEL_71;
        }

        if (dataType == 268435472)
        {
          v21 = 320;
          goto LABEL_71;
        }
      }

      else
      {
        if (dataType == 16)
        {
          v21 = 224;
          goto LABEL_71;
        }

        if (dataType == 32)
        {
          v21 = 256;
          goto LABEL_71;
        }
      }

      v21 = 576;
    }

LABEL_71:
    bufferCopy = buffer;
    offsetCopy = offset;
    numberOfDimensions = selfCopy->_numberOfDimensions;
    v24 = *&selfCopy->_sliceLengths[32];
    v23 = *&selfCopy->_sliceLengths[48];
    v26 = *selfCopy->_sliceLengths;
    v25 = *&selfCopy->_sliceLengths[16];
    v236 = v19;
    v27 = 0;
    if (numberOfDimensions)
    {
      v29 = *&selfCopy->_sliceOffsets[32];
      v28 = *&selfCopy->_sliceOffsets[48];
      v30 = 0uLL;
      v31 = 1;
      v32 = 0uLL;
      v34 = *selfCopy->_sliceOffsets;
      v33 = *&selfCopy->_sliceOffsets[16];
      v35 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
      do
      {
        v262[0] = v26;
        v262[1] = v25;
        v262[2] = v24;
        v262[3] = v23;
        v41 = (v31 - 1) & 0xF;
        v42 = *(v262 + v41);
        v258 = v30;
        v259 = v32;
        v260 = v35;
        v261 = v36;
        *(&v258 + v41) = v42;
        v35 = v260;
        v36 = v261;
        v30 = v258;
        v32 = v259;
        v257[0] = v34;
        v257[1] = v33;
        v257[2] = v29;
        v257[3] = v28;
        v43 = *(v257 + v41);
        v253 = v37;
        v254 = v38;
        v255 = v39;
        v256 = v40;
        *(&v253 + v41) = v43;
        v39 = v255;
        v40 = v256;
        v37 = v253;
        v38 = v254;
        if (v42 <= 1)
        {
          v27 = v27;
        }

        else
        {
          v27 = (v27 + 1);
        }
      }

      while (numberOfDimensions > v31++);
    }

    else
    {
      v37 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
      v30 = 0uLL;
      v32 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
    }

    v231 = v32;
    v232 = v35;
    v233 = v36;
    v234 = v30;
    v243 = v39;
    v244 = v38;
    v245 = v40;
    v246 = v37;
    v45 = *selfCopy->_dimensionOrder;
    v252[0] = v26;
    v252[1] = v25;
    v252[2] = v24;
    v252[3] = v23;
    v46 = *(v252 + (v45 & 0xF));
    v251[0] = v26;
    v251[1] = v25;
    v251[2] = v24;
    v251[3] = v23;
    v235 = *(v251 + (BYTE1(v45) & 0xF));
    v250[0] = v26;
    v250[1] = v25;
    v250[2] = v24;
    v250[3] = v23;
    v47 = *(v250 + (BYTE2(v45) & 0xF));
    v249[0] = v26;
    v249[1] = v25;
    v249[2] = v24;
    v249[3] = v23;
    v48 = *(v249 + (BYTE3(v45) & 0xF));
    if (v27 >= 5 && MTLReportFailureTypeEnabled())
    {
      v213 = objc_msgSend_debugDescription(selfCopy, v14, v15, v16, v17);
      v218 = v27;
      MTLReportFailure();
    }

    objc_msgSend_featureChannels(v18, v14, v15, v16, v17, v213, v218);
    v49 = v46;
    v50 = offsetCopy[1].i64[0] + v46;
    v247 = selfCopy;
    if (v50 > objc_msgSend_featureChannels(v18, v51, v52, v53, v54) && MTLReportFailureTypeEnabled())
    {
      v186 = objc_msgSend_debugDescription(selfCopy, v55, v56, v57, v58);
      v187 = offsetCopy[1].i64[0];
      v223 = v49;
      v227 = objc_msgSend_featureChannels(v18, v188, v189, v190, v191);
      v214 = v186;
      v219 = v187;
      selfCopy = v247;
      MTLReportFailure();
    }

    objc_msgSend_width(v18, v55, v56, v57, v58, v214, v219, v223, v227);
    v59 = offsetCopy->i64[0] + v235;
    if (v59 > objc_msgSend_width(v18, v60, v61, v62, v63) && MTLReportFailureTypeEnabled())
    {
      v192 = objc_msgSend_debugDescription(selfCopy, v64, v65, v66, v67);
      v193 = offsetCopy->i64[0];
      v224 = v235;
      v228 = objc_msgSend_width(v18, v194, v195, v196, v197);
      v215 = v192;
      v220 = v193;
      selfCopy = v247;
      MTLReportFailure();
    }

    objc_msgSend_height(v18, v64, v65, v66, v67, v215, v220, v224, v228);
    v68 = offsetCopy->i64[1] + v47;
    if (v68 > objc_msgSend_height(v18, v69, v70, v71, v72) && MTLReportFailureTypeEnabled())
    {
      v198 = objc_msgSend_debugDescription(selfCopy, v73, v74, v75, v76);
      v199 = offsetCopy->i64[1];
      v225 = v47;
      v229 = objc_msgSend_height(v18, v200, v201, v202, v203);
      v216 = v198;
      v221 = v199;
      selfCopy = v247;
      MTLReportFailure();
    }

    objc_msgSend_count(images, v73, v74, v75, v76, v216, v221, v225, v229);
    if (objc_msgSend_count(images, v77, v78, v79, v80) < v48 && MTLReportFailureTypeEnabled())
    {
      v204 = objc_msgSend_debugDescription(selfCopy, v81, v82, v83, v84);
      v222 = v48;
      v226 = objc_msgSend_count(images, v205, v206, v207, v208);
      v217 = v204;
      selfCopy = v247;
      MTLReportFailure();
    }

    v85 = objc_msgSend_count(images, v81, v82, v83, v84, v217, v222, v226);
    if (v85 >= v48)
    {
      v86 = v48;
    }

    else
    {
      v86 = v85;
    }

    v242 = v86;
    v230 = (*(*selfCopy->_device + 56))(selfCopy->_device);
    if (v230)
    {
      v91 = 2;
    }

    else
    {
      v91 = 0;
    }

    v92 = arrayCopy;
    if (arrayCopy)
    {
      v93 = 0x400000000;
    }

    else
    {
      v93 = 0x300000000;
    }

    *&v94 = -1;
    *(&v94 + 1) = -1;
    v273 = -1;
    v271 = v94;
    v272 = v94;
    v269 = v94;
    v270 = v94;
    v95 = (*(selfCopy->_device + 185) >> 52) & 0x3FFLL;
    *&v270 = v21;
    v268 = v95;
    explicit = atomic_load_explicit((v18 + 96), memory_order_acquire);
    if ((*(v18 + 152) & 2) != 0)
    {
      if (*(v18 + 148) < 2u)
      {
        v97 = 2;
      }

      else
      {
        v97 = 3;
      }

      v98 = *(v18 + 48) - 1;
      if (v98 > 4)
      {
LABEL_97:
        v99 = 0;
        goto LABEL_103;
      }
    }

    else
    {
      if (!explicit)
      {
        explicit = *(v18 + 136);
      }

      v97 = objc_msgSend_textureType(explicit, v87, v88, v89, v90);
      v98 = *(v18 + 48) - 1;
      if (v98 > 4)
      {
        goto LABEL_97;
      }
    }

    v99 = dword_22E37B5C8[v98];
LABEL_103:
    if (v97 == 3)
    {
      ++v99;
    }

    if (*(v18 + 56) > 1uLL)
    {
      v99 |= 2u;
    }

    if ((*(v18 + 80) & 0x3000000) != 0)
    {
      v99 |= 4u;
    }

    *&v269 = v99 | v91;
    *(&v269 + 1) = -1;
    if ((atomic_load_explicit(&qword_280AFEBE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AFEBE0))
    {
      qword_280AFEBD8 = objc_msgSend_hash(@"NDArrayCopyImage", v209, v210, v211, v212);
      __cxa_guard_release(&qword_280AFEBE0);
      selfCopy = v247;
    }

    UberShaderKey = MPSLibrary::CreateUberShaderKey(selfCopy->_library, v236, &v268, v21 | v93, 0, 0, 1, 0, 0, @"NDArrayCopyImage", qword_280AFEBD8, 0, 0);
    v104 = v49;
    v105 = v47;
    library = v247->_library;
    v107 = atomic_load_explicit(UberShaderKey, memory_order_acquire);
    if (v107)
    {
      if (!bufferCopy)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v107 = MPSLibrary::MPSKey_Compile(library, UberShaderKey);
      if (!bufferCopy)
      {
        goto LABEL_117;
      }
    }

    if (v107 && (objc_msgSend_retainedReferences(bufferCopy, v100, v101, v102, v103) & 1) == 0)
    {
      v108 = v107;
      *&v274 = MEMORY[0x277D85DD0];
      *(&v274 + 1) = 3221225472;
      v275 = sub_22E3717C4;
      v276 = &unk_2787BE7E8;
      *v277 = v107;
      objc_msgSend_addCompletedHandler_(bufferCopy, v109, &v274, v110, v111);
    }

LABEL_117:
    v112 = objc_msgSend_computeCommandEncoder(bufferCopy, v100, v101, v102, v103);
    v117 = v112;
    v119 = *&v247->_strideBytes[96];
    v118 = *&v247->_strideBytes[112];
    v121 = *&v247->_strideBytes[64];
    v120 = *&v247->_strideBytes[80];
    v123 = *&v247->_strideBytes[32];
    v122 = *&v247->_strideBytes[48];
    v125 = *v247->_strideBytes;
    v124 = *&v247->_strideBytes[16];
    v298 = 0;
    v299 = 0;
    LOBYTE(v298) = v247->_numberOfDimensions;
    v126 = 1;
    v127 = v247->_dataType;
    if (v127 > 268435487)
    {
      if (v127 <= 536870919)
      {
        switch(v127)
        {
          case 268435488:
            v126 = 11;
            goto LABEL_149;
          case 285212704:
            v126 = 13;
            goto LABEL_149;
          case 285212736:
            v126 = 14;
            goto LABEL_149;
        }
      }

      else if (v127 > 536870943)
      {
        if (v127 == 536870944)
        {
          v126 = 3;
          goto LABEL_149;
        }

        if (v127 == 536870976)
        {
          v126 = 4;
          goto LABEL_149;
        }
      }

      else
      {
        if (v127 == 536870920)
        {
          goto LABEL_149;
        }

        if (v127 == 536870928)
        {
          v126 = 2;
          goto LABEL_149;
        }
      }
    }

    else if (v127 <= 15)
    {
      switch(v127)
      {
        case -2147483640:
          goto LABEL_149;
        case -1879048176:
          v126 = 12;
          goto LABEL_149;
        case 8:
          v126 = 6;
          goto LABEL_149;
      }
    }

    else if (v127 > 63)
    {
      if (v127 == 64)
      {
        v126 = 9;
        goto LABEL_149;
      }

      if (v127 == 268435472)
      {
        v126 = 10;
        goto LABEL_149;
      }
    }

    else
    {
      if (v127 == 16)
      {
        v126 = 7;
        goto LABEL_149;
      }

      if (v127 == 32)
      {
        v126 = 8;
        goto LABEL_149;
      }
    }

    v126 = 18;
LABEL_149:
    rowBytes = v247->_rowBytes;
    HIDWORD(v298) = v126;
    LODWORD(v299) = rowBytes;
    v129 = 31 - __clz(v127 >> 3);
    if (v127 >> 3)
    {
      v130 = v129;
    }

    else
    {
      v130 = 0;
    }

    HIDWORD(v299) = v130;
    v131 = *v247->_dimensionOrder;
    v274 = v246;
    v281 = v234;
    v289 = v131;
    v290 = vzip1_s32(*v125.i8, *&vextq_s8(v125, v125, 8uLL));
    v291 = vzip1_s32(*v124.i8, *&vextq_s8(v124, v124, 8uLL));
    v275 = v244.i64[0];
    v276 = vextq_s8(v244, v244, 8uLL).u64[0];
    v282 = v231.i64[0];
    v283 = vextq_s8(v231, v231, 8uLL).u64[0];
    v292 = vzip1_s32(*v123.i8, *&vextq_s8(v123, v123, 8uLL));
    v293 = vzip1_s32(*v122.i8, *&vextq_s8(v122, v122, 8uLL));
    *v277 = v243.i32[0];
    v284 = v232.i32[0];
    *&v277[4] = vextq_s8(v243, v243, 4uLL).u64[0];
    v285 = vextq_s8(v232, v232, 4uLL).u64[0];
    v294 = vzip1_s32(*v121.i8, *&vextq_s8(v121, v121, 8uLL));
    v295 = vzip1_s32(*v120.i8, *&vextq_s8(v120, v120, 8uLL));
    v278 = v243.i32[3];
    v286 = v232.i32[3];
    LODWORD(v132) = vdupq_laneq_s32(v245, 2).u32[0];
    HIDWORD(v132) = v245.i32[3];
    LODWORD(v133) = vdupq_laneq_s32(v233, 2).u32[0];
    HIDWORD(v133) = v233.i32[3];
    v279 = v245.i64[0];
    v280 = v132;
    v287 = v233.i64[0];
    v288 = v133;
    v296 = vmovn_s64(v119);
    v297 = vmovn_s64(v118);
    if (v92)
    {
      *&v266[8] = offsetCopy[1].i64[0];
      *&v266[10] = v104;
      LOWORD(v267) = 0;
      WORD1(v267) = (v104 + 3) >> 2;
      v264 = 0;
      v134 = vmovn_s64(*offsetCopy);
      LODWORD(v265) = 0;
      HIWORD(v265) = v134.i16[2];
      WORD2(v265) = v134.i16[0];
      *v266 = 0x1000100010001;
      objc_msgSend_setBytes_length_atIndex_(v112, v113, &v264, 32, 0);
    }

    else
    {
      v138 = vmovn_s64(*offsetCopy);
      LOWORD(v139) = v138.i16[0];
      WORD1(v139) = v138.i16[2];
      HIDWORD(v139) = (offsetCopy[1].i64[0] >> 2);
      v138.i16[0] = vdup_lane_s16(*&v234, 2).u16[0];
      v138.i16[1] = WORD4(v234);
      v138.i16[2] = (v234 + 3) >> 2;
      v138.i16[3] = WORD6(v234);
      v264 = v139;
      v265 = v138;
      v140 = objc_msgSend_texture(v18, v113, v114, v115, v116);
      *&v266[2] = objc_msgSend_arrayLength(v140, v141, v142, v143, v144);
      *v266 = objc_msgSend_featureChannels(v18, v145, v146, v147, v148);
      v267 = 65537;
      *&v266[4] = 0x1000000400001;
      objc_msgSend_setBytes_length_atIndex_(v117, v149, &v264, 40, 0);
    }

    objc_msgSend_setComputePipelineState_(v117, v135, v107, v136, v137);
    v154 = objc_msgSend_buffer(v247, v150, v151, v152, v153);
    objc_msgSend_setBuffer_offset_atIndex_(v117, v155, v154, 0, 1);
    v160 = objc_msgSend_threadExecutionWidth(v107, v156, v157, v158, v159);
    v165 = 4;
    if (v47 <= 3)
    {
      v165 = 1;
    }

    v239 = v165;
    if (v47 <= 3)
    {
      v166 = v160;
    }

    else
    {
      v166 = v160 >> 2;
    }

    if (v104 < 0xD)
    {
      v241 = 1;
      v167 = v242;
    }

    else
    {
      v241 = 4;
      v167 = v242;
      if (v235 * v47 <= 0xF && v104 >= 0x3D)
      {
        if (v104 < 0xFD)
        {
          v241 = 16;
          v166 = 4;
          v168 = 4;
        }

        else
        {
          v241 = 64;
          v166 = 1;
          v168 = 1;
        }

        v239 = v168;
        goto LABEL_171;
      }
    }

    if (!v166)
    {
      v169 = 0;
      if (v167)
      {
LABEL_172:
        v170 = v167;
        v171 = 0;
        v172 = (*(v247->_device + 185) >> 52) & 0x3FFLL;
        if (v172 >= v167)
        {
          v172 = v167;
        }

        if (v230)
        {
          v173 = v172;
        }

        else
        {
          v173 = 1;
        }

        do
        {
          if (v173 + v171 > v170)
          {
            v173 = v170 - v171;
          }

          if (v173)
          {
            for (i = 0; i < v173; ++i)
            {
              v175 = objc_msgSend_objectAtIndexedSubscript_(images, v161, v171 + i, v163, v164);
              v180 = objc_msgSend_texture(v175, v176, v177, v178, v179);
              objc_msgSend_setTexture_atIndex_(v117, v181, v180, i, v182);
            }
          }

          v183 = v247->_dimensionOrder[3];
          v248[0] = v246;
          v248[1] = v244;
          v248[2] = v243;
          v248[3] = v245;
          *(&v274 + v183) = *(v248 + (v183 & 0xF)) + v171;
          *(&v281 + v183) = v173;
          objc_msgSend_setBytes_length_atIndex_(v117, v161, &v274, 224, 2);
          v264 = v169;
          v265 = (v105 + v239 - 1) / v239;
          *v266 = (((v104 + 3) >> 2) + v241 - 1) / v241;
          v263[0] = v166;
          v263[1] = v239;
          v263[2] = v241;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v117, v184, &v264, v263, v185);
          v171 += v173;
          v170 = v242;
        }

        while (v171 < v242);
      }

LABEL_183:
      objc_msgSend_endEncoding(v117, v161, v162, v163, v164);
      sub_22E2F0214(UberShaderKey);
      return;
    }

LABEL_171:
    v169 = (v235 + v166 - 1) / v166;
    if (v167)
    {
      goto LABEL_172;
    }

    goto LABEL_183;
  }
}

- (void)makeStrideBytesInArray:(int64_t *)array
{
  if ((self->_dataType & 0xFFF8) == 0)
  {
    selfCopy = self;
    arrayCopy = array;
    v7 = MTLReportFailureTypeEnabled();
    array = arrayCopy;
    v8 = v7;
    self = selfCopy;
    if (v8)
    {
      MTLReportFailure();
      self = selfCopy;
      array = arrayCopy;
    }
  }

  *array = self->_dataType >> 3;
  if (self->_numberOfDimensions >= 2)
  {
    rowBytes = self->_rowBytes;
    array[1] = rowBytes;
    if (self->_numberOfDimensions >= 3)
    {
      v4 = 2;
      do
      {
        rowBytes *= *&self->_dimensionLengths[4 * ((v4 - 1) & 0xF)];
        array[v4++] = rowBytes;
      }

      while (v4 < self->_numberOfDimensions);
    }
  }
}

- (void)readBytes:(void *)buffer strideBytes:(NSInteger *)strideBytesPerDimension
{
  if (strideBytesPerDimension && (self->_dataType & 0xFFF8) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v11 = objc_msgSend_buffer(self, a2, buffer, strideBytesPerDimension, v4);
  iosurface = self->_iosurface;
  if (iosurface && (IOSurfaceLock(iosurface, 0, 0), (v13 = self->_iosurface) != 0))
  {
    BaseAddress = IOSurfaceGetBaseAddress(v13);
  }

  else
  {
    BaseAddress = objc_msgSend_contents(v11, v7, v8, v9, v10);
  }

  v76 = BaseAddress;
  if (!BaseAddress && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  offset = self->_offset;
  v15 = *self->_sliceLengths;
  v16 = *&self->_sliceLengths[16];
  v17 = *&self->_sliceLengths[48];
  v18 = *self->_dimensionOrder;
  v108 = *&self->_sliceLengths[32];
  v109 = v17;
  v107[0] = v15;
  v107[1] = v16;
  v19 = *(v107 + (v18 & 0xF));
  v106[2] = v108;
  v106[3] = v17;
  v106[0] = v15;
  v106[1] = v16;
  v20 = *(v106 + (BYTE1(v18) & 0xF));
  v105[3] = v17;
  v105[2] = v108;
  v105[1] = v16;
  v105[0] = v15;
  v83 = *(v105 + (BYTE2(v18) & 0xF));
  v104[3] = v17;
  v104[2] = v108;
  v104[1] = v16;
  v104[0] = v15;
  v82 = *(v104 + (BYTE3(v18) & 0xF));
  v103[3] = v17;
  v103[2] = v108;
  v103[1] = v16;
  v103[0] = v15;
  v21 = *(v103 + (BYTE4(v18) & 0xF));
  v102[2] = v108;
  v102[3] = v17;
  v102[0] = v15;
  v102[1] = v16;
  v22 = *(v102 + (BYTE5(v18) & 0xF));
  v101[2] = v108;
  v101[3] = v17;
  v101[0] = v15;
  v101[1] = v16;
  v81 = *(v101 + (BYTE6(v18) & 0xF));
  v100[2] = v108;
  v100[3] = v17;
  v100[0] = v15;
  v100[1] = v16;
  v80 = *(v100 + (BYTE7(v18) & 0xF));
  v99[2] = v108;
  v99[3] = v17;
  v99[0] = v15;
  v99[1] = v16;
  v23 = *(v99 + (BYTE8(v18) & 0xF));
  v98[2] = v108;
  v98[3] = v17;
  v98[0] = v15;
  v98[1] = v16;
  v24 = *(v98 + (BYTE9(v18) & 0xF));
  v97[2] = v108;
  v97[3] = v17;
  v97[0] = v15;
  v97[1] = v16;
  v79 = *(v97 + (BYTE10(v18) & 0xF));
  v96[2] = v108;
  v96[3] = v17;
  v96[0] = v15;
  v96[1] = v16;
  v78 = *(v96 + (BYTE11(v18) & 0xF));
  v95[2] = v108;
  v95[3] = v17;
  v95[0] = v15;
  v95[1] = v16;
  v25 = *(v95 + (BYTE12(v18) & 0xF));
  v94[2] = v108;
  v94[3] = v17;
  v94[0] = v15;
  v94[1] = v16;
  v26 = *(v94 + (BYTE13(v18) & 0xF));
  v93[2] = v108;
  v93[3] = v17;
  v93[0] = v15;
  v93[1] = v16;
  v27 = *(v93 + (BYTE14(v18) & 0xF));
  v92[2] = v108;
  v92[3] = v17;
  v92[0] = v15;
  v92[1] = v16;
  v15.n128_u64[0] = __PAIR64__(v26, v25);
  v15.n128_u32[2] = v27;
  v15.n128_u32[3] = *(v92 + (HIBYTE(v18) & 0xF));
  v74 = v15;
  v72 = v24;
  v73 = v23;
  v15.n128_u64[0] = __PAIR64__(v24, v23);
  v88 = v15;
  v28 = v21;
  v15.n128_u64[0] = __PAIR64__(v22, v21);
  v29 = v22;
  v86 = v15;
  v30 = v19;
  v15.n128_u64[0] = __PAIR64__(v20, v19);
  v31 = v20;
  v84 = v15;
  v32 = malloc_type_malloc(0x80uLL, 0x100004000313F17uLL);
  v33 = v32;
  if (strideBytesPerDimension)
  {
    dataType_low = LOWORD(self->_dataType);
    *v32 = 8 * *strideBytesPerDimension / dataType_low;
    v32[1] = 8 * strideBytesPerDimension[1] / dataType_low;
    v32[2] = 8 * strideBytesPerDimension[2] / dataType_low;
    v32[3] = 8 * strideBytesPerDimension[3] / dataType_low;
    v32[4] = 8 * strideBytesPerDimension[4] / dataType_low;
    v32[5] = 8 * strideBytesPerDimension[5] / dataType_low;
    v32[6] = 8 * strideBytesPerDimension[6] / dataType_low;
    v32[7] = 8 * strideBytesPerDimension[7] / dataType_low;
    v32[8] = 8 * strideBytesPerDimension[8] / dataType_low;
    v32[9] = 8 * strideBytesPerDimension[9] / dataType_low;
    v32[10] = 8 * strideBytesPerDimension[10] / dataType_low;
    v32[11] = 8 * strideBytesPerDimension[11] / dataType_low;
    v32[12] = 8 * strideBytesPerDimension[12] / dataType_low;
    v32[13] = 8 * strideBytesPerDimension[13] / dataType_low;
    v32[14] = 8 * strideBytesPerDimension[14] / dataType_low;
    v35 = 8 * strideBytesPerDimension[15] / dataType_low;
    v37 = v82;
    v36 = v83;
    v39 = v80;
    v38 = v81;
    v41 = v78;
    v40 = v79;
  }

  else
  {
    *v32 = 1;
    v32[1] = v30;
    v42 = v30 * v31;
    v32[2] = v42;
    v32[3] = v42 * v83;
    v43 = v42 * v83 * v82;
    v32[4] = v43;
    v32[5] = v43 * v28;
    v44 = v43 * v28 * v29;
    v32[6] = v44;
    v32[7] = v44 * v81;
    v45 = v44 * v81 * v80;
    v32[8] = v45;
    v32[9] = v45 * v73;
    v46 = v45 * v73 * v72;
    v32[10] = v46;
    v32[11] = v46 * v79;
    v47 = v46 * v79 * v78;
    v32[12] = v47;
    v32[13] = v47 * v25;
    v32[14] = v47 * v25 * v26;
    v35 = v47 * v25 * v26 * v27;
    v37 = v82;
    v39 = v80;
    v36 = v83;
    v41 = v78;
    v38 = v81;
    v40 = v79;
  }

  v48 = v88;
  v48.n128_u32[2] = v40;
  v89 = v48;
  v49 = v86;
  v49.n128_u32[2] = v38;
  v87 = v49;
  v50 = v84;
  v50.n128_u32[2] = v36;
  v85 = v50;
  v32[15] = v35;
  v52 = malloc_type_malloc(0x80uLL, 0x100004000313F17uLL);
  v54 = *&self->_strideElements[96];
  v53 = *&self->_strideElements[112];
  v56 = *&self->_strideElements[64];
  v55 = *&self->_strideElements[80];
  v58 = *&self->_strideElements[32];
  v57 = *&self->_strideElements[48];
  v59 = *&self->_strideElements[16];
  *v52 = *self->_strideElements;
  v52[1] = v59;
  v52[2] = v58;
  v52[3] = v57;
  v52[4] = v56;
  v52[5] = v55;
  v52[6] = v54;
  v52[7] = v53;
  numberOfDimensions = self->_numberOfDimensions;
  if (numberOfDimensions)
  {
    v61 = numberOfDimensions - 1;
  }

  else
  {
    v61 = 0;
  }

  if (numberOfDimensions <= 0xF)
  {
    v63 = *&self->_sliceOffsets[32];
    v62 = *&self->_sliceOffsets[48];
    v65 = *self->_sliceOffsets;
    v64 = *&self->_sliceOffsets[16];
    v66 = *self->_dimensionOrder;
    do
    {
      v90 = v66;
      v91[0] = v65;
      v91[1] = v64;
      v91[2] = v63;
      v91[3] = v62;
      if (*(v91 + (*(&v90 | numberOfDimensions & 0xF) & 0xF)))
      {
        v61 = numberOfDimensions;
      }

      ++numberOfDimensions;
    }

    while (numberOfDimensions != 16);
  }

  v68 = v87;
  v67 = v89;
  v67.n128_u32[3] = v41;
  v68.n128_u32[3] = v39;
  v69 = v85;
  v69.n128_u32[3] = v37;
  v70 = LOWORD(self->_dataType);
  if (v70 > 0xF)
  {
    switch(v70)
    {
      case 0x10u:
        sub_22E34D31C(buffer, offset + v76, v33, v52, v61, 0, 0, v69, v68, v67, v74, xmmword_22E37B090, *self->_dimensionOrder, 0, 0, v51, 0, 0, *self->_sliceOffsets, *&self->_sliceOffsets[16], *&self->_sliceOffsets[32], *&self->_sliceOffsets[48]);
        free(v33);
        free(v52);
        v71 = self->_iosurface;
        if (!v71)
        {
          return;
        }

        goto LABEL_36;
      case 0x20u:
        sub_22E34D068(buffer, offset + v76, v33, v52, v61, 0, 0, v69, v68, v67, v74, xmmword_22E37B090, *self->_dimensionOrder, 0, 0, v51, 0, 0, *self->_sliceOffsets, *&self->_sliceOffsets[16], *&self->_sliceOffsets[32], *&self->_sliceOffsets[48]);
        free(v33);
        free(v52);
        v71 = self->_iosurface;
        if (!v71)
        {
          return;
        }

        goto LABEL_36;
      case 0x40u:
        sub_22E34CDB4(buffer, offset + v76, v33, v52, v61, 0, 0, v69, v68, v67, v74, xmmword_22E37B090, *self->_dimensionOrder, 0, 0, v51, 0, 0, *self->_sliceOffsets, *&self->_sliceOffsets[16], *&self->_sliceOffsets[32], *&self->_sliceOffsets[48]);
        free(v33);
        free(v52);
        v71 = self->_iosurface;
        if (!v71)
        {
          return;
        }

        goto LABEL_36;
    }

LABEL_35:
    free(v33);
    free(v52);
    v71 = self->_iosurface;
    if (!v71)
    {
      return;
    }

    goto LABEL_36;
  }

  if (v70 == 2)
  {
    sub_22E34DC1C(buffer, offset + v76, v33, v52, v61, 0, 0, v69, v68, v67, v74, xmmword_22E37B090, *self->_dimensionOrder, 0, 0, v51, 0, 0, *self->_sliceOffsets, *&self->_sliceOffsets[16], *&self->_sliceOffsets[32], *&self->_sliceOffsets[48]);
    free(v33);
    free(v52);
    v71 = self->_iosurface;
    if (!v71)
    {
      return;
    }

    goto LABEL_36;
  }

  if (v70 == 4)
  {
    sub_22E34D9B8(buffer, offset + v76, v33, v52, v61, 0, 0, v69, v68, v67, v74, xmmword_22E37B090, *self->_dimensionOrder, 0, 0, v51, 0, 0, *self->_sliceOffsets, *&self->_sliceOffsets[16], *&self->_sliceOffsets[32], *&self->_sliceOffsets[48]);
    goto LABEL_35;
  }

  if (v70 != 8)
  {
    goto LABEL_35;
  }

  sub_22E34D670(buffer, offset + v76, v33, v52, v61, 0, 0, v69, v68, v67, v74, xmmword_22E37B090, *self->_dimensionOrder, 0, 0, v51, 0, 0, *self->_sliceOffsets, *&self->_sliceOffsets[16], *&self->_sliceOffsets[32], *&self->_sliceOffsets[48]);
  free(v33);
  free(v52);
  v71 = self->_iosurface;
  if (!v71)
  {
    return;
  }

LABEL_36:

  IOSurfaceUnlock(v71, 0, 0);
}

- (void)writeBytes:(void *)buffer strideBytes:(NSInteger *)strideBytesPerDimension
{
  if (strideBytesPerDimension && (self->_dataType & 0xFFF8) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = objc_msgSend_buffer(self, a2, buffer, strideBytesPerDimension, v4);
  iosurface = self->_iosurface;
  if (iosurface && (IOSurfaceLock(iosurface, 0, 0), (v14 = self->_iosurface) != 0))
  {
    BaseAddress = IOSurfaceGetBaseAddress(v14);
  }

  else
  {
    BaseAddress = objc_msgSend_contents(v12, v8, v9, v10, v11);
  }

  v16 = BaseAddress;
  offset = self->_offset;
  numberOfDimensions = self->_numberOfDimensions;
  if (numberOfDimensions <= 1)
  {
    numberOfDimensions = 1;
  }

  v19 = malloc_type_malloc(8 * numberOfDimensions, 0x100004000313F17uLL);
  v20 = v19;
  if (strideBytesPerDimension)
  {
    if (self->_numberOfDimensions)
    {
      v21 = 0;
      dataType_low = LOWORD(self->_dataType);
      do
      {
        v19[v21] = 8 * strideBytesPerDimension[v21] / dataType_low;
        ++v21;
      }

      while (v21 < self->_numberOfDimensions);
    }
  }

  else
  {
    *v19 = 1;
    if (self->_numberOfDimensions >= 2)
    {
      v23 = 1;
      v24 = 1;
      do
      {
        v45 = *self->_dimensionOrder;
        v24 *= *&self->_sliceLengths[4 * (*(&v45 | (v23 - 1) & 0xF) & 0xF)];
        v19[v23++] = v24;
      }

      while (v23 < self->_numberOfDimensions);
    }
  }

  v26 = malloc_type_malloc(0x80uLL, 0x100004000313F17uLL);
  v28 = *&self->_strideElements[96];
  v27 = *&self->_strideElements[112];
  v30 = *&self->_strideElements[64];
  v29 = *&self->_strideElements[80];
  v32 = *&self->_strideElements[32];
  v31 = *&self->_strideElements[48];
  v33 = *&self->_strideElements[16];
  *v26 = *self->_strideElements;
  v26[1] = v33;
  v26[2] = v32;
  v26[3] = v31;
  v26[4] = v30;
  v26[5] = v29;
  v26[6] = v28;
  v26[7] = v27;
  v34 = self->_numberOfDimensions;
  if (v34)
  {
    v35 = v34 - 1;
  }

  else
  {
    v35 = 0;
  }

  if (v34 <= 0xF)
  {
    v37 = *&self->_sliceOffsets[32];
    v36 = *&self->_sliceOffsets[48];
    v39 = *self->_sliceOffsets;
    v38 = *&self->_sliceOffsets[16];
    v40 = *self->_dimensionOrder;
    do
    {
      v43 = v40;
      v44[0] = v39;
      v44[1] = v38;
      v44[2] = v37;
      v44[3] = v36;
      if (*(v44 + (*(&v43 | v34 & 0xF) & 0xF)))
      {
        v35 = v34;
      }

      ++v34;
    }

    while (v34 != 16);
  }

  v41 = LOWORD(self->_dataType);
  if (v41 > 0xF)
  {
    switch(v41)
    {
      case 0x10u:
        sub_22E34D31C(offset + v16, buffer, v26, v20, v35, 0, 0, *self->_sliceLengths, *&self->_sliceLengths[16], *&self->_sliceLengths[32], *&self->_sliceLengths[48], *self->_dimensionOrder, xmmword_22E37B090, *self->_sliceOffsets, *&self->_sliceOffsets[16], v25, *&self->_sliceOffsets[32], *&self->_sliceOffsets[48], 0, 0, 0, 0);
        free(v20);
        free(v26);
        v42 = self->_iosurface;
        if (!v42)
        {
          return;
        }

        goto LABEL_42;
      case 0x20u:
        sub_22E34D068(offset + v16, buffer, v26, v20, v35, 0, 0, *self->_sliceLengths, *&self->_sliceLengths[16], *&self->_sliceLengths[32], *&self->_sliceLengths[48], *self->_dimensionOrder, xmmword_22E37B090, *self->_sliceOffsets, *&self->_sliceOffsets[16], v25, *&self->_sliceOffsets[32], *&self->_sliceOffsets[48], 0, 0, 0, 0);
        free(v20);
        free(v26);
        v42 = self->_iosurface;
        if (!v42)
        {
          return;
        }

        goto LABEL_42;
      case 0x40u:
        sub_22E34CDB4(offset + v16, buffer, v26, v20, v35, 0, 0, *self->_sliceLengths, *&self->_sliceLengths[16], *&self->_sliceLengths[32], *&self->_sliceLengths[48], *self->_dimensionOrder, xmmword_22E37B090, *self->_sliceOffsets, *&self->_sliceOffsets[16], v25, *&self->_sliceOffsets[32], *&self->_sliceOffsets[48], 0, 0, 0, 0);
        free(v20);
        free(v26);
        v42 = self->_iosurface;
        if (!v42)
        {
          return;
        }

        goto LABEL_42;
    }

LABEL_41:
    free(v20);
    free(v26);
    v42 = self->_iosurface;
    if (!v42)
    {
      return;
    }

    goto LABEL_42;
  }

  if (v41 == 2)
  {
    sub_22E34DC1C(offset + v16, buffer, v26, v20, v35, 0, 0, *self->_sliceLengths, *&self->_sliceLengths[16], *&self->_sliceLengths[32], *&self->_sliceLengths[48], *self->_dimensionOrder, xmmword_22E37B090, *self->_sliceOffsets, *&self->_sliceOffsets[16], v25, *&self->_sliceOffsets[32], *&self->_sliceOffsets[48], 0, 0, 0, 0);
    free(v20);
    free(v26);
    v42 = self->_iosurface;
    if (!v42)
    {
      return;
    }

    goto LABEL_42;
  }

  if (v41 == 4)
  {
    sub_22E34D9B8(offset + v16, buffer, v26, v20, v35, 0, 0, *self->_sliceLengths, *&self->_sliceLengths[16], *&self->_sliceLengths[32], *&self->_sliceLengths[48], *self->_dimensionOrder, xmmword_22E37B090, *self->_sliceOffsets, *&self->_sliceOffsets[16], v25, *&self->_sliceOffsets[32], *&self->_sliceOffsets[48], 0, 0, 0, 0);
    goto LABEL_41;
  }

  if (v41 != 8)
  {
    goto LABEL_41;
  }

  sub_22E34D670(offset + v16, buffer, v26, v20, v35, 0, 0, *self->_sliceLengths, *&self->_sliceLengths[16], *&self->_sliceLengths[32], *&self->_sliceLengths[48], *self->_dimensionOrder, xmmword_22E37B090, *self->_sliceOffsets, *&self->_sliceOffsets[16], v25, *&self->_sliceOffsets[32], *&self->_sliceOffsets[48], 0, 0, 0, 0);
  free(v20);
  free(v26);
  v42 = self->_iosurface;
  if (!v42)
  {
    return;
  }

LABEL_42:

  IOSurfaceUnlock(v42, 0, 0);
}

- (id)buffer
{
  p_buffer = &self->_buffer;
  result = atomic_load_explicit(&self->_buffer, memory_order_acquire);
  if (!result)
  {
    MPSAutoBuffer::AllocateBuffer(p_buffer, 0);
    return atomic_load_explicit(p_buffer, memory_order_acquire);
  }

  return result;
}

- (id)userBuffer
{
  if (self->_isUserBuffer)
  {
    return objc_msgSend_buffer(self, a2, v2, v3, v4);
  }

  else
  {
    return 0;
  }
}

- (id)debugDescription
{
  v2 = MEMORY[0x28223BE20](self, a2);
  v30 = objc_msgSend_label(v2, v3, v4, v5, v6);
  v31 = MEMORY[0x277CCACA8];
  v36.receiver = v2;
  v36.super_class = MPSNDArray;
  v29 = [(MPSNDArray *)&v36 debugDescription];
  v28 = *(v2 + 480);
  v27 = *(v2 + 576);
  v7 = *(v2 + 488);
  v26 = objc_msgSend_name(*(*(v2 + 504) + 16), v8, v9, v10, v11);
  v12 = (v2 + 520);
  if (atomic_load_explicit((v2 + 520), memory_order_acquire))
  {
    explicit = atomic_load_explicit(v12, memory_order_acquire);
    if (!explicit)
    {
      MPSAutoBuffer::AllocateBuffer((v2 + 520), 0);
      explicit = atomic_load_explicit(v12, memory_order_acquire);
    }

    v24 = explicit;
  }

  else
  {
    v24 = 0;
  }

  v25 = dataTypeToString(v7);
  v14 = "YES";
  if (!*(v2 + 568))
  {
    v14 = "NO";
  }

  v18 = *(v2 + 48);
  v17 = *(v2 + 64);
  v20 = *(v2 + 112);
  v19 = *(v2 + 128);
  v22 = *(v2 + 80);
  v21 = *(v2 + 96);
  v34 = *(v2 + 176);
  v35 = *(v2 + 192);
  v32 = *(v2 + 144);
  v33 = *(v2 + 160);
  v15 = *(v2 + 32);
  v16 = *(v2 + 16);
  return objc_msgSend_stringWithFormat_(v31, DWORD1(v19), @"%@\tArray: %@\tRank: %d\tOffsetBytes:%lu\t%s\tDevice: %@\tMTLBuffer: %p\tIOSurfaceBacked: %s\n- dimensionLengths        = [ %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d ]\n- sliceLengths            = [ %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d ]\n- sliceOffsets            = [ %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d ]\n- dimensionOrder          = [ %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d ]\n- transposed sliceLengths = [ %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d ]\n- strideElements          = [ %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu ]\n- transposed strideElems  = [ %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu ]\n", DWORD2(v20), v20, v29, v30, v28, v27, v25, v26, v24, v14, v16, DWORD1(v16), DWORD2(v16), HIDWORD(v16), v15, DWORD1(v15), DWORD2(v15), HIDWORD(v15), v18, DWORD1(v18), DWORD2(v18), HIDWORD(v18), v17, DWORD1(v17), DWORD2(v17), HIDWORD(v17), v32, DWORD1(v32), DWORD2(v32), HIDWORD(v32), v33, DWORD1(v33), DWORD2(v33), HIDWORD(v33), v34, DWORD1(v34), DWORD2(v34), HIDWORD(v34), v35, DWORD1(v35), DWORD2(v35), HIDWORD(v35), v22, DWORD1(v22), DWORD2(v22), HIDWORD(v22), v21, DWORD1(v21), DWORD2(v21), HIDWORD(v21), v20, DWORD1(v20), DWORD2(v20), HIDWORD(v20), v19, DWORD1(v19), DWORD2(v19), HIDWORD(v19), *(v2 + 464), BYTE1(*(v2 + 464)));
}

- (void)printNDArrayToFile:(__sFILE *)file
{
  dataType = self->_dataType;
  if (dataType <= 7 && dataType != 2 && dataType != 4)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v8 = self->_dataType;
  v10 = *&self->_sliceLengths[32];
  v9 = *&self->_sliceLengths[48];
  v12 = *self->_sliceLengths;
  v11 = *&self->_sliceLengths[16];
  if (v8 > 7u)
  {
    v112 = *self->_sliceLengths;
    v113 = *&self->_sliceLengths[16];
    v114 = *&self->_sliceLengths[32];
    v115 = *&self->_sliceLengths[48];
    if ((v8 & 0xFFF8) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else if (v8 == 2)
  {
    v16 = *self->_dimensionOrder;
    v146[0] = *self->_sliceLengths;
    v146[1] = v11;
    v146[2] = v10;
    v146[3] = v9;
    v17 = v16 & 0xF;
    v18 = (*(v146 + v17) + 3) >> 2;
    v142 = v12;
    v143 = v11;
    v144 = v10;
    v145 = v9;
    *(&v142 + v17) = v18;
    v8 = 8;
    v115 = v145;
    v114 = v144;
    v113 = v143;
    v112 = v142;
  }

  else if (v8 == 4)
  {
    v13 = *self->_dimensionOrder;
    v141[0] = *self->_sliceLengths;
    v141[1] = v11;
    v141[2] = v10;
    v141[3] = v9;
    v14 = v13 & 0xF;
    v15 = (*(v141 + v14) + 1) >> 1;
    v137 = v12;
    v138 = v11;
    v139 = v10;
    v140 = v9;
    *(&v137 + v14) = v15;
    v8 = 8;
    v114 = v139;
    v115 = v140;
    v112 = v137;
    v113 = v138;
  }

  else
  {
    v112 = *self->_sliceLengths;
    v113 = *&self->_sliceLengths[16];
    v114 = *&self->_sliceLengths[32];
    v115 = *&self->_sliceLengths[48];
    v8 = 8;
  }

  fwrite("\n\n", 2uLL, 1uLL, file);
  v24 = objc_msgSend_debugDescription(self, v20, v21, v22, v23);
  v29 = objc_msgSend_UTF8String(v24, v25, v26, v27, v28);
  fputs(v29, file);
  fprintf(file, "- rowBytes                = %zu\n\n", self->_rowBytes);
  isTemporary = self->_isTemporary;
  if (isTemporary)
  {
    Count = objc_msgSend_readCount(self, v30, v31, v32, v33);
    if (!Count)
    {
      v40 = "MPSTemporaryNDArray underlying memory is already released as readCount is 0\n";
      v41 = 76;
      goto LABEL_33;
    }

    fprintf(file, "MPSTemporaryNDArray readCount = %lu\n\n\n", Count);
    if (objc_msgSend_status(*self[1]._anon_8, v36, v37, v38, v39) == 4)
    {
      v40 = "MPSTemporaryNDArray underlying memory is already released as commandBuffer is completed\n";
      v41 = 88;
LABEL_33:
      fwrite(v40, v41, 1uLL, file);

      fwrite("\n\n", 2uLL, 1uLL, file);
      return;
    }
  }

  explicit = atomic_load_explicit(&self->_buffer, memory_order_acquire);
  if (explicit)
  {
    if (isTemporary)
    {
      goto LABEL_29;
    }
  }

  else
  {
    MPSAutoBuffer::AllocateBuffer(&self->_buffer, 0);
    explicit = atomic_load_explicit(&self->_buffer, memory_order_acquire);
    if (isTemporary)
    {
      goto LABEL_29;
    }
  }

  if (objc_msgSend_storageMode(explicit, v30, v31, v32, v33) != 2)
  {
    v66 = 0;
    v82 = explicit != 0;
    goto LABEL_37;
  }

LABEL_29:
  v43 = objc_autoreleasePoolPush();
  Queue = MPSDevice::GetQueue(self->_device, v44, v45, v46, v47);
  v53 = objc_msgSend_commandBuffer(Queue, v49, v50, v51, v52);
  v58 = objc_msgSend_device(Queue, v54, v55, v56, v57);
  v63 = objc_msgSend_length(explicit, v59, v60, v61, v62);
  v66 = objc_msgSend_newBufferWithLength_options_(v58, v64, v63, 0, v65);
  v71 = objc_msgSend_dataType(self, v67, v68, v69, v70);
  objc_msgSend_exportDataWithCommandBuffer_toBuffer_destinationDataType_offset_rowStrides_(self, v72, v53, v66, v71, 0, 0);
  objc_msgSend_commit(v53, v73, v74, v75, v76);
  objc_msgSend_waitUntilCompleted(v53, v77, v78, v79, v80);
  objc_autoreleasePoolPop(v43);
  v81 = v66;
  v82 = explicit != 0;
  if (explicit)
  {
LABEL_37:
    v84 = v114;
    v83 = v115;
    v86 = v112;
    v85 = v113;
    goto LABEL_38;
  }

  v84 = v114;
  v83 = v115;
  v86 = v112;
  v85 = v113;
  if (isTemporary)
  {
    v40 = "MPSTemporaryNDArray underlying memory is not yet allocated, it is usually allocated lazily just before a kernel writes to it\n";
    v41 = 125;
    goto LABEL_33;
  }

LABEL_38:
  v87 = v8 >> 3;
  v88 = v86 * DWORD1(v86) * DWORD2(v86) * HIDWORD(v86) * v85 * DWORD1(v85) * DWORD2(v85) * HIDWORD(v85) * v84 * DWORD1(v84) * DWORD2(v84) * HIDWORD(v84) * v83 * DWORD1(v83) * DWORD2(v83) * HIDWORD(v83);
  if (!v82 && v88 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v89 = v88 * v87;
  v94 = malloc_type_malloc(v88 * v87, 0xE304991AuLL);
  if (isTemporary || objc_msgSend_storageMode(explicit, v90, v91, v92, v93) == 2)
  {
    v95 = objc_msgSend_contents(v66, v90, v91, v92, v93);
    memcpy(v94, v95, v89);
  }

  else
  {
    objc_msgSend_readBytes_strideBytes_(self, v90, v94, 0, v93);
  }

  numberOfDimensions = self->_numberOfDimensions;
  if (numberOfDimensions <= 1)
  {
    v97 = 1;
  }

  else
  {
    v97 = self->_numberOfDimensions;
  }

  v98 = v97 - 1;
  v99 = *self->_dimensionOrder;
  v136[0] = v112;
  v136[1] = v113;
  v136[2] = v114;
  v136[3] = v115;
  v135[0] = v112;
  v135[1] = v113;
  v135[2] = v114;
  v135[3] = v115;
  v100 = v135 + (BYTE1(v99) & 0xF);
  v134[0] = v112;
  v134[1] = v113;
  v134[2] = v114;
  v134[3] = v115;
  v101 = v134 + (BYTE2(v99) & 0xF);
  v133[0] = v112;
  v133[1] = v113;
  v133[2] = v114;
  v133[3] = v115;
  v102 = BYTE3(v99) & 0xF;
  v132[0] = v112;
  v132[1] = v113;
  v132[2] = v114;
  v132[3] = v115;
  v131[0] = v112;
  v131[1] = v113;
  v131[2] = v114;
  v131[3] = v115;
  v130[0] = v112;
  v130[1] = v113;
  v130[2] = v114;
  v130[3] = v115;
  v129[0] = v112;
  v129[1] = v113;
  v129[2] = v114;
  v129[3] = v115;
  v128[0] = v112;
  v128[1] = v113;
  v128[2] = v114;
  v128[3] = v115;
  v127[0] = v112;
  v127[1] = v113;
  v127[2] = v114;
  v127[3] = v115;
  v126[0] = v112;
  v126[1] = v113;
  v126[2] = v114;
  v126[3] = v115;
  v125[0] = v112;
  v125[1] = v113;
  v125[2] = v114;
  v125[3] = v115;
  v124[0] = v112;
  v124[1] = v113;
  v124[2] = v114;
  v124[3] = v115;
  v123[0] = v112;
  v123[1] = v113;
  v123[2] = v114;
  v123[3] = v115;
  v122[0] = v112;
  v122[1] = v113;
  v122[2] = v114;
  v122[3] = v115;
  v121[0] = v112;
  v121[1] = v113;
  v121[2] = v114;
  v121[3] = v115;
  v103.n128_u32[0] = *(v124 + (BYTE12(v99) & 0xF));
  v103.n128_u32[1] = *(v123 + (BYTE13(v99) & 0xF));
  v103.n128_u32[2] = *(v122 + (BYTE14(v99) & 0xF));
  v103.n128_u32[3] = *(v121 + (HIBYTE(v99) & 0xF));
  v104.n128_u32[0] = *(v128 + (BYTE8(v99) & 0xF));
  v104.n128_u32[1] = *(v127 + (BYTE9(v99) & 0xF));
  v104.n128_u32[2] = *(v126 + (BYTE10(v99) & 0xF));
  v104.n128_u32[3] = *(v125 + (BYTE11(v99) & 0xF));
  v105.n128_u32[0] = *(v132 + (BYTE4(v99) & 0xF));
  v105.n128_u32[1] = *(v131 + (BYTE5(v99) & 0xF));
  v105.n128_u32[2] = *(v130 + (BYTE6(v99) & 0xF));
  v105.n128_u32[3] = *(v129 + (BYTE7(v99) & 0xF));
  v107.n128_u32[0] = *(v136 + (v99 & 0xF));
  v107.n128_u32[1] = *v100;
  v107.n128_u32[2] = *v101;
  v106 = 0uLL;
  v107.n128_u32[3] = *(v133 + v102);
  v108 = (v8 >> 3);
  if (numberOfDimensions < 2)
  {
    v110 = 0uLL;
    v111 = 0uLL;
    if (v8 > 268435487)
    {
      goto LABEL_51;
    }

LABEL_58:
    if (v8 > 31)
    {
      if (v8 <= 268435463)
      {
        if (v8 == 32)
        {
          sub_22E350298(v98, 0, v94, file, v107, v105, v104, v103, v108, v106, v110, v111);
        }

        else if (v8 == 64)
        {
          sub_22E350670(v98, 0, v94, file, v107, v105, v104, v103, v108, v106, v110, v111);
        }

        goto LABEL_91;
      }

      if (v8 != 268435464)
      {
        if (v8 == 268435472)
        {
          sub_22E350A48(v98, 0, v94, file, v107, v105, v104, v103, v108, v106, v110, v111);
        }

        goto LABEL_91;
      }
    }

    else if (v8 > 7)
    {
      if (v8 != 8)
      {
        if (v8 == 16)
        {
          sub_22E34FEC0(v98, 0, v94, file, v107, v105, v104, v103, v108, v106, v110, v111);
        }

        goto LABEL_91;
      }
    }

    else if (v8 != -2147483640)
    {
      if (v8 == -1879048176)
      {
        sub_22E350C38(v98, 0, v94, file, v107, v105, v104, v103, v108, v106, v110, v111);
      }

      goto LABEL_91;
    }

    goto LABEL_90;
  }

  v109 = 1;
  v110 = 0uLL;
  v111 = 0uLL;
  do
  {
    v120[0] = v107;
    v120[1] = v105;
    v120[2] = v104;
    v120[3] = v103;
    LODWORD(v87) = *(v120 + ((v109 - 1) & 0xF)) * v87;
    v116 = v108;
    v117 = v106;
    v118 = v110;
    v119 = v111;
    v116.n128_u32[v109 & 0xF] = v87;
    v110 = v118;
    v111 = v119;
    v108 = v116;
    v106 = v117;
    ++v109;
  }

  while (numberOfDimensions != v109);
  if (v8 <= 268435487)
  {
    goto LABEL_58;
  }

LABEL_51:
  if (v8 > 335544327)
  {
    if (v8 > 536870927)
    {
      switch(v8)
      {
        case 536870928:
          sub_22E3500AC(v98, 0, v94, file, v107, v105, v104, v103, v108, v106, v110, v111);
          break;
        case 536870944:
          sub_22E350484(v98, 0, v94, file, v107, v105, v104, v103, v108, v106, v110, v111);
          break;
        case 536870976:
          sub_22E35085C(v98, 0, v94, file, v107, v105, v104, v103, v108, v106, v110, v111);
          break;
      }

      goto LABEL_91;
    }

    if (v8 != 335544328)
    {
      if (v8 == 536870920)
      {
        sub_22E34FAE8(v98, 0, v94, file, v107, v105, v104, v103, v108, v106, v110, v111);
      }

      goto LABEL_91;
    }

    goto LABEL_90;
  }

  if (v8 <= 285212735)
  {
    if (v8 == 268435488)
    {
      sub_22E350E34(v98, 0, v94, file, v107, v105, v104, v103, v108, v106, v110, v111);
    }

    else if (v8 == 285212704)
    {
      sub_22E351024(v98, 0, v94, file, v107, v105, v104, v103, v108, v106, v110, v111);
    }

    goto LABEL_91;
  }

  if (v8 == 285212736)
  {
    sub_22E351224(v98, 0, v94, file, v107, v105, v104, v103, v108, v106, v110, v111);
  }

  else if (v8 == 301989896)
  {
LABEL_90:
    sub_22E34FCD4(v98, 0, v94, file, v107, v105, v104, v103, v108, v106, v110, v111);
  }

LABEL_91:
  fwrite("\n\n", 2uLL, 1uLL, file);

  free(v94);
}

- (id)checkNDArray:(const float *)array nativeUlps:(float)ulps absoluteErr:(float)err PSNR:(float)r
{
  if ((self->_dataType & 0xFFF8) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (self->_isTemporary && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v9 = *&self->_sliceLengths[16];
  v10 = *&self->_sliceLengths[32];
  v11 = *self->_sliceLengths * HIDWORD(*self->_sliceLengths) * *&self->_sliceLengths[8] * HIDWORD(*self->_sliceLengths) * v9 * DWORD1(v9) * DWORD2(v9) * HIDWORD(v9) * v10 * DWORD1(v10) * DWORD2(v10) * HIDWORD(v10) * *&self->_sliceLengths[48] * HIDWORD(*&self->_sliceLengths[48]) * *&self->_sliceLengths[56] * HIDWORD(*&self->_sliceLengths[48]);
  v12 = malloc_type_malloc(v11 * (self->_dataType >> 3), 0x52E28CBFuLL);
  v13 = v11 << (HIBYTE(self->_dataType) & 1);
  v14 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
  objc_msgSend_readBytes_strideBytes_(self, v15, v12, 0, v16);
  dataType = self->_dataType;
  if (dataType > 268435487)
  {
    if (dataType <= 536870919)
    {
      switch(dataType)
      {
        case 268435488:
          goto LABEL_33;
        case 285212704:
          goto LABEL_36;
        case 285212736:
LABEL_33:
          memcpy(v14, v12, 4 * v13);
          goto LABEL_86;
      }

LABEL_74:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

LABEL_86:
      v34 = 1;
      v35 = malloc_type_calloc(0x2710uLL, 1uLL, 0x100004077774924uLL);
      if (v13)
      {
        rCopy2 = r;
LABEL_158:
        v159 = 0;
        v37 = 0;
        v36 = 0;
        v160 = 0;
        v161 = 0.0;
        v162 = 0.0;
        v163.i64[0] = 0x7F0000007FLL;
        v163.i64[1] = 0x7F0000007FLL;
        v164 = vnegq_f32(v163);
        v165.i64[0] = 0x7F0000007F000000;
        v165.i64[1] = 0x7F0000007F000000;
        v166.i64[0] = 0x80000000800000;
        v166.i64[1] = 0x80000000800000;
        v167.i64[0] = 0x4B0000004B000000;
        v167.i64[1] = 0x4B0000004B000000;
        v168 = 0.0;
        v169 = 0.0;
        v170 = 0.0;
        v171 = 0.0;
        ulpsCopy2 = ulps;
        errCopy2 = err;
        v201 = v164;
        while (1)
        {
          v56.i32[0] = *&v14[4 * v160];
          v55.f32[0] = array[v160];
          v174 = vabds_f32(v56.f32[0], v55.f32[0]);
          v175 = vdupq_lane_s32(*v55.f32, 0);
          v176 = vdupq_lane_s32(*v56.f32, 0);
          LODWORD(v177) = vandq_s8(vmulq_f32(vmulq_f32(vmaxnmq_f32(vsubq_s32(v165, vandq_s8(v175, v164)), v166), vsubq_f32(v56, v55)), v167), vbicq_s8(vorrq_s8(vceqq_f32(v175, v175), vceqq_f32(v176, v176)), vceqq_f32(v175, v176))).u32[0];
          if (v55.f32[0] > v170)
          {
            v170 = array[v160];
          }

          if (v55.f32[0] < v171)
          {
            v171 = array[v160];
          }

          v161 = v161 + (v56.f32[0] - v55.f32[0]) * (v56.f32[0] - v55.f32[0]);
          v178 = fabsf(v177);
          if (v178 <= ulpsCopy2 || v174 <= errCopy2)
          {
            if (v174 > v162)
            {
              v37 = v160;
              v162 = v174;
            }

            if (v178 <= fabsf(v168))
            {
              goto LABEL_159;
            }
          }

          else
          {
            if (!v159)
            {
              v204 = v56;
              v205 = v55;
              snprintf(v35, 0x270FuLL, "%lu : %f(%a) *%f(%a) (±%f, %.3f ulps)", v160, v56.f32[0], v56.f32[0], v55.f32[0], v55.f32[0], v174, v177);
              v56 = v204;
              v55 = v205;
              v167.i64[0] = 0x4B0000004B000000;
              v167.i64[1] = 0x4B0000004B000000;
              v166.i64[0] = 0x80000000800000;
              v166.i64[1] = 0x80000000800000;
              v165.i64[0] = 0x7F0000007F000000;
              v165.i64[1] = 0x7F0000007F000000;
              v164 = v201;
              ulpsCopy2 = ulps;
              errCopy2 = err;
            }

            ++v159;
            if (v174 > v162)
            {
              v37 = v160;
              v162 = v174;
            }

            if (v178 <= fabsf(v168))
            {
              goto LABEL_159;
            }
          }

          v169 = fabsf((v56.f32[0] - v55.f32[0]) / v55.f32[0]);
          v36 = v160;
          v168 = v178;
LABEL_159:
          if (v13 == ++v160)
          {
            v34 = v159 == 0;
            v180 = v161 / v13;
            v181 = (v170 - v171);
            v40 = v162;
            v39 = v168;
            v38 = v169;
            r = rCopy2;
            goto LABEL_197;
          }
        }
      }

      goto LABEL_195;
    }

    if (dataType > 536870943)
    {
      if (dataType == 536870944)
      {
        if (v13)
        {
          if (v13 > 7)
          {
            v33 = v13 & 0xFFFFFFFFFFFFFFF8;
            v72 = (v12 + 16);
            v73 = (v14 + 16);
            v74 = v13 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v75 = vcvtq_f32_s32(*v72);
              v73[-1] = vcvtq_f32_s32(v72[-1]);
              *v73 = v75;
              v72 += 2;
              v73 += 2;
              v74 -= 8;
            }

            while (v74);
            if (v13 == v33)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v33 = 0;
          }

          v76 = v13 - v33;
          v77 = 4 * v33;
          v78 = &v14[4 * v33];
          v79 = &v12[v77];
          do
          {
            v80 = *v79++;
            *v78++ = v80;
            --v76;
          }

          while (v76);
          goto LABEL_157;
        }

        goto LABEL_68;
      }

      if (dataType == 536870976)
      {
        if (v13)
        {
          if (v13 > 7)
          {
            v28 = v13 & 0xFFFFFFFFFFFFFFF8;
            v90 = (v12 + 32);
            v91 = (v14 + 16);
            v92 = v13 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v94 = v90[-2];
              v93 = v90[-1];
              v96 = *v90;
              v95 = v90[1];
              v90 += 4;
              v91[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(v94)), vcvtq_f64_s64(v93));
              *v91 = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(v96)), vcvtq_f64_s64(v95));
              v91 += 2;
              v92 -= 8;
            }

            while (v92);
            if (v13 == v28)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v28 = 0;
          }

          v97 = v13 - v28;
          v98 = &v14[4 * v28];
          v99 = &v12[8 * v28];
          do
          {
            v100 = *v99++;
            *v98++ = v100;
            --v97;
          }

          while (v97);
          goto LABEL_157;
        }

        goto LABEL_68;
      }

      goto LABEL_74;
    }

    if (dataType == 536870920)
    {
      goto LABEL_50;
    }

    if (dataType != 536870928)
    {
      goto LABEL_74;
    }

    if (!v13)
    {
      goto LABEL_68;
    }

    if (v13 < 4)
    {
      v21 = 0;
LABEL_155:
      v155 = v13 - v21;
      v156 = &v14[4 * v21];
      v157 = &v12[2 * v21];
      do
      {
        v158 = *v157;
        v157 += 2;
        *v156++ = v158;
        --v155;
      }

      while (v155);
      goto LABEL_157;
    }

    if (v13 >= 0x10)
    {
      v21 = v13 & 0xFFFFFFFFFFFFFFF0;
      v144 = (v12 + 16);
      v145 = (v14 + 32);
      v146 = v13 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v147 = *v144[-2].i8;
        v148 = vcvtq_f32_s32(vmovl_s16(*v144));
        v149 = vmovl_high_s16(*v144->i8);
        v145[-2] = vcvtq_f32_s32(vmovl_s16(*v147.i8));
        v145[-1] = vcvtq_f32_s32(vmovl_high_s16(v147));
        *v145 = v148;
        v145[1] = vcvtq_f32_s32(v149);
        v145 += 4;
        v144 += 4;
        v146 -= 16;
      }

      while (v146);
      if (v13 == v21)
      {
        goto LABEL_157;
      }

      if ((v13 & 0xC) == 0)
      {
        goto LABEL_155;
      }
    }

    else
    {
      v21 = 0;
    }

    v150 = v21;
    v21 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v151 = &v12[2 * v150];
    v152 = &v14[4 * v150];
    v153 = v150 - (v13 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v154 = *v151++;
      *v152++ = vcvtq_f32_s32(vmovl_s16(v154));
      v153 += 4;
    }

    while (v153);
    if (v13 == v21)
    {
      goto LABEL_157;
    }

    goto LABEL_155;
  }

  if (dataType <= 15)
  {
    if (dataType != -2147483640)
    {
      if (dataType == -1879048176)
      {
        if (v13 < 4)
        {
          v46 = 0;
          v47 = v13;
          if (!v13)
          {
            goto LABEL_86;
          }
        }

        else
        {
          v41 = 3;
          v42 = vuzp1_s16(0, 0);
          v43 = v14;
          v44 = v12;
          do
          {
            v45 = *v44++;
            v18.i64[0] = v45;
            v18 = vzip1q_s16(v42, v18);
            *v43++ = v18;
            v41 += 4;
          }

          while (v41 < v13);
          v46 = v13 & 0xFFFFFFFFFFFFFFFCLL;
          v47 = v13 - (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13 <= (v13 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_86;
          }
        }

        v52 = &v14[4 * v46];
        v53 = &v12[2 * v46];
        do
        {
          v54 = *v53;
          v53 += 2;
          *v52 = 0;
          *(v52 + 1) = v54;
          v52 += 4;
          --v47;
        }

        while (v47);
        goto LABEL_157;
      }

      if (dataType != 8)
      {
        goto LABEL_74;
      }

      if (!v13)
      {
        goto LABEL_68;
      }

      if (v13 < 4 || (v14 < &v12[v13] ? (_CF = v12 >= &v14[4 * v13]) : (_CF = 1), !_CF))
      {
        v23 = 0;
LABEL_89:
        v57 = v13 - v23;
        v58 = &v14[4 * v23];
        v59 = &v12[v23];
        do
        {
          v60 = *v59++;
          *v58++ = v60;
          --v57;
        }

        while (v57);
        goto LABEL_157;
      }

      if (v13 >= 0x10)
      {
        v23 = v13 & 0xFFFFFFFFFFFFFFF0;
        v17.i32[1] = -243;
        v182 = v13 & 0xFFFFFFFFFFFFFFF0;
        v183 = v14;
        v184 = v12;
        do
        {
          v185 = *v184++;
          v183[2] = vcvtq_f32_u32(vqtbl1q_s8(v185, xmmword_22E37B0C0));
          v183[3] = vcvtq_f32_u32(vqtbl1q_s8(v185, xmmword_22E37B0B0));
          *v183 = vcvtq_f32_u32(vqtbl1q_s8(v185, xmmword_22E37B0E0));
          v183[1] = vcvtq_f32_u32(vqtbl1q_s8(v185, xmmword_22E37B0D0));
          v183 += 4;
          v182 -= 16;
        }

        while (v182);
        if (v13 == v23)
        {
          goto LABEL_157;
        }

        if ((v13 & 0xC) == 0)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v23 = 0;
      }

      v186 = v23;
      v23 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      v187 = &v12[v186];
      v188 = &v14[4 * v186];
      v189 = v186 - (v13 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v190 = *v187++;
        v17.i32[0] = v190;
        v17 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v17.f32)));
        *v188++ = v17;
        v189 += 4;
      }

      while (v189);
      if (v13 == v23)
      {
        goto LABEL_157;
      }

      goto LABEL_89;
    }

LABEL_50:
    if (!v13)
    {
      goto LABEL_68;
    }

    if (v13 < 4 || (v14 < &v12[v13] ? (v29 = v12 >= &v14[4 * v13]) : (v29 = 1), !v29))
    {
      v30 = 0;
LABEL_77:
      v48 = v13 - v30;
      v49 = &v14[4 * v30];
      v50 = &v12[v30];
      do
      {
        v51 = *v50++;
        *v49++ = v51;
        --v48;
      }

      while (v48);
      goto LABEL_157;
    }

    if (v13 >= 0x10)
    {
      v30 = v13 & 0xFFFFFFFFFFFFFFF0;
      v18 = xmmword_22E37B100;
      v135 = v13 & 0xFFFFFFFFFFFFFFF0;
      v136 = v14;
      v137 = v12;
      do
      {
        v138 = *v137++;
        v136[2] = vcvtq_n_f32_s32(vqtbl1q_s8(v138, xmmword_22E37B100), 0x18uLL);
        v136[3] = vcvtq_n_f32_s32(vqtbl1q_s8(v138, xmmword_22E37B0F0), 0x18uLL);
        *v136 = vcvtq_n_f32_s32(vqtbl1q_s8(v138, xmmword_22E37B120), 0x18uLL);
        v136[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v138, xmmword_22E37B110), 0x18uLL);
        v136 += 4;
        v135 -= 16;
      }

      while (v135);
      if (v13 == v30)
      {
        goto LABEL_157;
      }

      if ((v13 & 0xC) == 0)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v30 = 0;
    }

    v139 = v30;
    v30 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v140 = &v12[v139];
    v141 = &v14[4 * v139];
    v142 = v139 - (v13 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v143 = *v140++;
      v18.i32[0] = v143;
      v18 = vcvtq_n_f32_s32(vqtbl1q_s8(v18, xmmword_22E37B120), 0x18uLL);
      *v141++ = v18;
      v142 += 4;
    }

    while (v142);
    if (v13 == v30)
    {
      goto LABEL_157;
    }

    goto LABEL_77;
  }

  if (dataType > 63)
  {
    if (dataType == 64)
    {
      if (v13)
      {
        if (v13 > 7)
        {
          v32 = v13 & 0xFFFFFFFFFFFFFFF8;
          v61 = (v12 + 32);
          v62 = (v14 + 16);
          v63 = v13 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v65 = v61[-2];
            v64 = v61[-1];
            v67 = *v61;
            v66 = v61[1];
            v61 += 4;
            v62[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v65)), vcvtq_f64_u64(v64));
            *v62 = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v67)), vcvtq_f64_u64(v66));
            v62 += 2;
            v63 -= 8;
          }

          while (v63);
          if (v13 == v32)
          {
            goto LABEL_157;
          }
        }

        else
        {
          v32 = 0;
        }

        v68 = v13 - v32;
        v69 = &v14[4 * v32];
        v70 = &v12[8 * v32];
        do
        {
          v71 = *v70++;
          *v69++ = v71;
          --v68;
        }

        while (v68);
        goto LABEL_157;
      }

      goto LABEL_68;
    }

    if (dataType == 268435472)
    {
LABEL_36:
      v24 = off_27DA622D8;
      if (off_27DA622D8)
      {
        goto LABEL_39;
      }

      if (qword_27DA622E0 == -1)
      {
        v24 = off_27DA622D8;
        if (off_27DA622D8)
        {
          goto LABEL_39;
        }
      }

      else
      {
        dispatch_once(&qword_27DA622E0, &unk_284217480);
        v24 = off_27DA622D8;
        if (off_27DA622D8)
        {
LABEL_39:
          v207[0] = v12;
          v207[1] = 1;
          v207[2] = v13;
          v207[3] = 2 * v13;
          v206[0] = v14;
          v206[1] = 1;
          v206[2] = v13;
          v206[3] = 4 * v13;
          v25 = (v24)(v207, v206, 0);
          if (v13)
          {
            _ZF = v25 == 0;
          }

          else
          {
            _ZF = 1;
          }

          if (_ZF)
          {
            goto LABEL_86;
          }

LABEL_43:
          if (v13 < 4)
          {
            v27 = 0;
LABEL_127:
            v112 = v13 - v27;
            v113 = &v14[4 * v27];
            v114 = &v12[2 * v27];
            do
            {
              v115 = *v114;
              v114 += 2;
              _H0 = v115;
              __asm { FCVT            S0, H0 }

              *v113 = _S0;
              v113 += 4;
              --v112;
            }

            while (v112);
            goto LABEL_157;
          }

          if (v13 >= 0x10)
          {
            v27 = v13 & 0xFFFFFFFFFFFFFFF0;
            v101 = (v12 + 16);
            v102 = (v14 + 32);
            v103 = v13 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v104 = *v101[-2].i8;
              v105 = vcvtq_f32_f16(*v101);
              v106 = vcvt_hight_f32_f16(*v101->i8);
              v102[-2] = vcvtq_f32_f16(*v104.i8);
              v102[-1] = vcvt_hight_f32_f16(v104);
              *v102 = v105;
              v102[1] = v106;
              v102 += 4;
              v101 += 4;
              v103 -= 16;
            }

            while (v103);
            if (v13 == v27)
            {
              goto LABEL_157;
            }

            if ((v13 & 0xC) == 0)
            {
              goto LABEL_127;
            }
          }

          else
          {
            v27 = 0;
          }

          v107 = v27;
          v27 = v13 & 0xFFFFFFFFFFFFFFFCLL;
          v108 = &v12[2 * v107];
          v109 = &v14[4 * v107];
          v110 = v107 - (v13 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v111 = *v108++;
            *v109++ = vcvtq_f32_f16(v111);
            v110 += 4;
          }

          while (v110);
          if (v13 == v27)
          {
            goto LABEL_157;
          }

          goto LABEL_127;
        }
      }

      if (!v13)
      {
        v34 = 1;
        v35 = malloc_type_calloc(0x2710uLL, 1uLL, 0x100004077774924uLL);
LABEL_195:
        v36 = 0;
        v37 = 0;
        v38 = 0.0;
        v39 = 0.0;
        v40 = 0.0;
        goto LABEL_196;
      }

      goto LABEL_43;
    }

    goto LABEL_74;
  }

  if (dataType != 16)
  {
    if (dataType == 32)
    {
      if (v13)
      {
        if (v13 > 7)
        {
          v20 = v13 & 0xFFFFFFFFFFFFFFF8;
          v81 = (v12 + 16);
          v82 = (v14 + 16);
          v83 = v13 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v84 = vcvtq_f32_u32(*v81);
            v82[-1] = vcvtq_f32_u32(v81[-1]);
            *v82 = v84;
            v81 += 2;
            v82 += 2;
            v83 -= 8;
          }

          while (v83);
          if (v13 == v20)
          {
            goto LABEL_157;
          }
        }

        else
        {
          v20 = 0;
        }

        v85 = v13 - v20;
        v86 = 4 * v20;
        v87 = &v14[4 * v20];
        v88 = &v12[v86];
        do
        {
          v89 = *v88++;
          *v87++ = v89;
          --v85;
        }

        while (v85);
LABEL_157:
        rCopy2 = r;
        v35 = malloc_type_calloc(0x2710uLL, 1uLL, 0x100004077774924uLL);
        goto LABEL_158;
      }

      goto LABEL_68;
    }

    goto LABEL_74;
  }

  if (v13)
  {
    if (v13 < 4)
    {
      v31 = 0;
LABEL_137:
      v131 = v13 - v31;
      v132 = &v14[4 * v31];
      v133 = &v12[2 * v31];
      do
      {
        v134 = *v133;
        v133 += 2;
        *v132++ = v134;
        --v131;
      }

      while (v131);
      goto LABEL_157;
    }

    if (v13 >= 0x10)
    {
      v31 = v13 & 0xFFFFFFFFFFFFFFF0;
      v120 = (v12 + 16);
      v121 = (v14 + 32);
      v122 = v13 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v123 = *v120[-2].i8;
        v124 = vcvtq_f32_u32(vmovl_u16(*v120));
        v125 = vmovl_high_u16(*v120->i8);
        v121[-2] = vcvtq_f32_u32(vmovl_u16(*v123.i8));
        v121[-1] = vcvtq_f32_u32(vmovl_high_u16(v123));
        *v121 = v124;
        v121[1] = vcvtq_f32_u32(v125);
        v121 += 4;
        v120 += 4;
        v122 -= 16;
      }

      while (v122);
      if (v13 == v31)
      {
        goto LABEL_157;
      }

      if ((v13 & 0xC) == 0)
      {
        goto LABEL_137;
      }
    }

    else
    {
      v31 = 0;
    }

    v126 = v31;
    v31 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v127 = &v12[2 * v126];
    v128 = &v14[4 * v126];
    v129 = v126 - (v13 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v130 = *v127++;
      *v128++ = vcvtq_f32_u32(vmovl_u16(v130));
      v129 += 4;
    }

    while (v129);
    if (v13 == v31)
    {
      goto LABEL_157;
    }

    goto LABEL_137;
  }

LABEL_68:
  v34 = 1;
  v35 = malloc_type_calloc(0x2710uLL, 1uLL, 0x100004077774924uLL);
  v36 = 0;
  v37 = 0;
  v38 = 0.0;
  v39 = 0.0;
  v40 = 0.0;
LABEL_196:
  v180 = 0.0;
  v181 = 0.0;
LABEL_197:
  v191 = log10(v181);
  v192 = 0;
  v196 = log10(v180) * -10.0 + v191 * 20.0;
  v198 = v196 >= r && r != 0.0;
  if (!v198 && !v34)
  {
    v192 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v193, @"%s\t - maxAbsErr(%lld) = %e, maxULPErr(%lld) = %f -> maxRelError = %f,   PSNR = %f\n", v194, v195, v35, v37, *&v40, v36, *&v39, *&v38, *&v196);
  }

  free(v35);
  free(v12);
  free(v14);
  return v192;
}

- (id).cxx_construct
{
  atomic_store(0, self + 65);
  *(self + 68) = 0;
  *(self + 33) = 0u;
  return self;
}

@end