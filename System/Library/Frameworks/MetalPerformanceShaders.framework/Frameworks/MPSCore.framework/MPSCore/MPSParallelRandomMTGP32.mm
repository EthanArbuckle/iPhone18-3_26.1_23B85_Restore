@interface MPSParallelRandomMTGP32
- (MPSParallelRandomMTGP32)initWithCoder:(id)coder device:(id)device;
- (MPSParallelRandomMTGP32)initWithDevice:(id)device destinationDataType:(unsigned int)type seed:(unint64_t)seed;
- (MPSParallelRandomMTGP32)initWithDevice:(id)device destinationDataType:(unsigned int)type seed:(unint64_t)seed distributionDescriptor:(id)descriptor;
- (MPSParallelRandomMTGP32)initWithDevice:(id)device destinationDataType:(unsigned int)type state:(id)state distributionDescriptor:(id)descriptor;
- (id)exportState;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer computeEncoder:(id)encoder destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)offset numEntries:(unint64_t)entries;
- (void)encodeToCommandBuffer:(id)buffer computeEncoder:(id)encoder destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)offset numEntries:(unint64_t)entries stride:(unsigned int)stride;
- (void)encodeWithCoder:(id)coder;
- (void)reinitializeDistributionDescriptor:(id)descriptor;
- (void)resetSeedOnCommandBuffer:(id)buffer seed:(unint64_t)seed;
@end

@implementation MPSParallelRandomMTGP32

- (MPSParallelRandomMTGP32)initWithDevice:(id)device destinationDataType:(unsigned int)type seed:(unint64_t)seed distributionDescriptor:(id)descriptor
{
  seedCopy = seed;
  v119.receiver = self;
  v119.super_class = MPSParallelRandomMTGP32;
  v8 = [(MPSParallelRandom *)&v119 initWithDevice:device destinationDataType:*&type generatorType:0 distributionDescriptor:?];
  if (objc_msgSend_distributionType(v8, v9, v10, v11, v12) == 3)
  {
    objc_msgSend_mean(descriptor, v13, v14, v15, v16);
    v8->_normalMean = v17;
    objc_msgSend_standardDeviation(descriptor, v18, v19, v20, v21);
    v8->_normalStandardDeviation = v22;
    objc_msgSend_minimum(descriptor, v23, v24, v25, v26);
    v32 = fabsf(v31);
    v33 = 0.0;
    if (v32 != INFINITY)
    {
      objc_msgSend_minimum(descriptor, v27, v28, v29, v30, 0.0);
      v33 = (erf((v34 - v8->_normalMean) / v8->_normalStandardDeviation * 1.41421354) + 1.0) * 0.5;
    }

    v8->_uniformMin = v33;
    objc_msgSend_maximum(descriptor, v27, v28, v29, v30);
    v39 = fabsf(*&v40);
    LODWORD(v40) = 1.0;
    if (v39 != INFINITY)
    {
      objc_msgSend_maximum(descriptor, v35, v36, v37, v38, v40);
      *&v40 = (erf((v41 - v8->_normalMean) / v8->_normalStandardDeviation * 1.41421354) + 1.0) * 0.5;
    }
  }

  else
  {
    objc_msgSend_minimum(descriptor, v13, v14, v15, v16);
    v8->_uniformMin = v42;
    objc_msgSend_maximum(descriptor, v43, v44, v45, v46);
  }

  v8->_uniformMax = *&v40;
  v49 = 16 * (*(*v8->super.super._device + 24))(v8->super.super._device);
  if ((*(v8->super.super._device + 369) & 0x400) != 0)
  {
    v50 = 16;
  }

  else
  {
    v50 = 128;
  }

  if ((*(v8->super.super._device + 369) & 0x400) != 0)
  {
    v51 = objc_msgSend_newBufferWithLength_options_(device, v47, 22464, v49, v48);
  }

  else
  {
    v51 = objc_msgSend_newBufferWithLength_options_(device, v47, 179712, v49, v48);
  }

  v8->_state = v51;
  if (!v51 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v54 = objc_msgSend_newBufferWithLength_options_(device, v52, 4 * v50, v49, v53);
  v8->_pShift1 = v54;
  if (!v54 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v57 = objc_msgSend_newBufferWithLength_options_(device, v55, 4 * v50, v49, v56);
  v8->_pShift2 = v57;
  if (!v57 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v60 = objc_msgSend_newBufferWithLength_options_(device, v58, 16 * v50, v49, v59);
  v8->_pMR = v60;
  if (!v60 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v63 = objc_msgSend_newBufferWithLength_options_(device, v61, 16 * v50, v49, v62);
  v8->_pMT = v63;
  if (!v63 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v66 = objc_msgSend_newBufferWithLength_options_(device, v64, 4 * v50, v49, v65);
  v8->_pM = v66;
  if (!v66 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v69 = objc_msgSend_newBufferWithLength_options_(device, v67, 4 * v50, v49, v68);
  v8->_pStateIdx = v69;
  if (!v69 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v74 = objc_msgSend_contents(v8->_state, v70, v71, v72, v73);
  v79 = objc_msgSend_contents(v8->_pShift1, v75, v76, v77, v78);
  v84 = objc_msgSend_contents(v8->_pShift2, v80, v81, v82, v83);
  v89 = objc_msgSend_contents(v8->_pMR, v85, v86, v87, v88);
  v94 = objc_msgSend_contents(v8->_pMT, v90, v91, v92, v93);
  v99 = objc_msgSend_contents(v8->_pM, v95, v96, v97, v98);
  v117 = v8;
  v104 = objc_msgSend_contents(v8->_pStateIdx, v100, v101, v102, v103);
  for (i = 0; i != v50; ++i)
  {
    v106 = &unk_27DA61D80 + 64 * i;
    v107 = *v106;
    v108 = *(v106 + 1);
    v109 = *(v106 + 1);
    v110 = *(v106 + 2);
    v111 = *(v106 + 12);
    LODWORD(v106) = *(v106 + 13);
    *(v79 + 4 * i) = v107;
    *(v84 + 4 * i) = v108;
    v112 = 16 * i;
    *(v89 + v112) = v109;
    *(v94 + v112) = v110;
    *(v99 + 4 * i) = v111;
    *(v104 + 4 * i) = v106;
    v113 = HIDWORD(*(v89 + 16 * i)) ^ (*(v89 + 16 * i) << 16);
    memset(v74 + 2, v113 + HIWORD(v113) + ((v113 + HIWORD(v113)) >> 8), 0x574uLL);
    *v74 = seedCopy;
    v74[1] = v113;
    v114 = seedCopy;
    for (j = 1; j != 351; ++j)
    {
      v114 = (j + 1812433253 * (v114 ^ (v114 >> 30))) ^ v74[j];
      v74[j] = v114;
    }

    v74 += 351;
  }

  return v117;
}

- (MPSParallelRandomMTGP32)initWithDevice:(id)device destinationDataType:(unsigned int)type seed:(unint64_t)seed
{
  v6 = *&type;
  v9 = [MPSParallelRandomDistributionDescriptor alloc];
  objc_msgSend_setDistributionType_(v9, v10, 1, v11, v12);
  v14 = objc_msgSend_initWithDevice_destinationDataType_seed_distributionDescriptor_(self, v13, device, v6, seed, v9);

  return v14;
}

- (void)reinitializeDistributionDescriptor:(id)descriptor
{
  v7 = objc_msgSend_distributionType(descriptor, a2, descriptor, v3, v4);
  objc_msgSend_setDistributionType_(self, v8, v7, v9, v10);
  if (objc_msgSend_distributionType(self, v11, v12, v13, v14) == 3)
  {
    objc_msgSend_mean(descriptor, v15, v16, v17, v18);
    self->_normalMean = v19;
    objc_msgSend_standardDeviation(descriptor, v20, v21, v22, v23);
    self->_normalStandardDeviation = v24;
    objc_msgSend_minimum(descriptor, v25, v26, v27, v28);
    v34 = fabsf(v33);
    v35 = 0.0;
    if (v34 != INFINITY)
    {
      objc_msgSend_minimum(descriptor, v29, v30, v31, v32, 0.0);
      v35 = (erf((v36 - self->_normalMean) / self->_normalStandardDeviation * 1.41421354) + 1.0) * 0.5;
    }

    self->_uniformMin = v35;
    objc_msgSend_maximum(descriptor, v29, v30, v31, v32);
    v41 = fabsf(*&v42);
    LODWORD(v42) = 1.0;
    if (v41 != INFINITY)
    {
      objc_msgSend_maximum(descriptor, v37, v38, v39, v40, v42);
      *&v42 = (erf((v43 - self->_normalMean) / self->_normalStandardDeviation * 1.41421354) + 1.0) * 0.5;
    }
  }

  else
  {
    objc_msgSend_minimum(descriptor, v15, v16, v17, v18);
    self->_uniformMin = v44;
    objc_msgSend_maximum(descriptor, v45, v46, v47, v48);
  }

  self->_uniformMax = *&v42;
}

- (void)encodeToCommandBuffer:(id)buffer computeEncoder:(id)encoder destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)offset numEntries:(unint64_t)entries
{
  v7.receiver = self;
  v7.super_class = MPSParallelRandomMTGP32;
  [(MPSParallelRandom *)&v7 encodeToCommandBuffer:buffer computeEncoder:encoder destinationBuffer:destinationBuffer destinationOffset:offset numEntries:entries];
}

- (void)encodeToCommandBuffer:(id)buffer computeEncoder:(id)encoder destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)offset numEntries:(unint64_t)entries stride:(unsigned int)stride
{
  v8.receiver = self;
  v8.super_class = MPSParallelRandomMTGP32;
  [(MPSParallelRandom *)&v8 encodeToCommandBuffer:buffer computeEncoder:encoder destinationBuffer:destinationBuffer destinationOffset:offset numEntries:entries stride:*&stride];
}

- (void)resetSeedOnCommandBuffer:(id)buffer seed:(unint64_t)seed
{
  seedCopy = seed;
  UberShaderKey = MPSLibrary::CreateUberShaderKey(self->super.super._library, @"mtgp32SetState", xmmword_22E37BF78, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  library = self->super.super._library;
  explicit = atomic_load_explicit(UberShaderKey, memory_order_acquire);
  if (!explicit)
  {
    explicit = MPSLibrary::MPSKey_Compile(library, UberShaderKey);
  }

  if (buffer && explicit && (objc_msgSend_retainedReferences(buffer, v7, v8, v9, v10) & 1) == 0)
  {
    v14 = explicit;
    v36.i64[0] = MEMORY[0x277D85DD0];
    v36.i64[1] = 3221225472;
    v37 = sub_22E3717C4;
    v38 = &unk_2787BE7E8;
    v39 = explicit;
    objc_msgSend_addCompletedHandler_(buffer, v15, &v36, v16, v17);
  }

  v18 = objc_msgSend_computeCommandEncoder(buffer, v7, v8, v9, v10);
  v35 = seedCopy;
  objc_msgSend_setComputePipelineState_(v18, v19, explicit, v20, v21);
  objc_msgSend_setBuffer_offset_atIndex_(v18, v22, self->_state, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v18, v23, self->_pStateIdx, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v18, v24, self->_pMR, 0, 2);
  objc_msgSend_setBytes_length_atIndex_(v18, v25, &v35, 4, 3);
  v28 = 16;
  if ((*(self->super.super._device + 369) & 0x400) == 0)
  {
    v28 = 128;
  }

  v36 = vdupq_n_s64(1uLL);
  v37 = 1;
  v33 = v28;
  v34 = v36;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v18, v26, &v36, &v33, v27);
  objc_msgSend_endEncoding(v18, v29, v30, v31, v32);
  sub_22E2F0214(UberShaderKey);
}

- (MPSParallelRandomMTGP32)initWithDevice:(id)device destinationDataType:(unsigned int)type state:(id)state distributionDescriptor:(id)descriptor
{
  v7 = objc_msgSend_initWithDevice_destinationDataType_seed_distributionDescriptor_(self, a2, device, *&type, 0, descriptor);
  v12 = v7;
  if (v7)
  {
    v13 = *(*(v7 + 24) + 1476);
    v14 = objc_msgSend_contents(*(v7 + 104), v8, v9, v10, v11);
    if ((v13 & 0x400) != 0)
    {
      v15 = 16;
    }

    else
    {
      v15 = 128;
    }

    if ((v13 & 0x400) != 0)
    {
      v16 = 22464;
    }

    else
    {
      v16 = 179712;
    }

    memcpy(v14, *(state + 1), v16);
    v21 = objc_msgSend_contents(v12->_pShift1, v17, v18, v19, v20);
    v22 = 4 * v15;
    memcpy(v21, *(state + 2), 4 * v15);
    v27 = objc_msgSend_contents(v12->_pShift2, v23, v24, v25, v26);
    memcpy(v27, *(state + 3), 4 * v15);
    v32 = objc_msgSend_contents(v12->_pMR, v28, v29, v30, v31);
    v33 = 16 * v15;
    memcpy(v32, *(state + 4), v33);
    v38 = objc_msgSend_contents(v12->_pMT, v34, v35, v36, v37);
    memcpy(v38, *(state + 5), v33);
    v43 = objc_msgSend_contents(v12->_pM, v39, v40, v41, v42);
    memcpy(v43, *(state + 6), v22);
    v48 = objc_msgSend_contents(v12->_pStateIdx, v44, v45, v46, v47);
    memcpy(v48, *(state + 7), v22);
  }

  return v12;
}

- (id)exportState
{
  v3 = objc_alloc_init(MPSParallelRandomMTGP32State);
  v4 = *(self->super.super._device + 369);
  state = v3->_state;
  v10 = objc_msgSend_contents(self->_state, v6, v7, v8, v9);
  if ((v4 & 0x400) != 0)
  {
    v11 = 16;
  }

  else
  {
    v11 = 128;
  }

  if ((v4 & 0x400) != 0)
  {
    v12 = 22464;
  }

  else
  {
    v12 = 179712;
  }

  memcpy(state, v10, v12);
  shift1 = v3->_stateParams.shift1;
  v18 = objc_msgSend_contents(self->_pShift1, v14, v15, v16, v17);
  v19 = 4 * v11;
  memcpy(shift1, v18, 4 * v11);
  shift2 = v3->_stateParams.shift2;
  v25 = objc_msgSend_contents(self->_pShift2, v21, v22, v23, v24);
  memcpy(shift2, v25, 4 * v11);
  isa = v3[1].super.isa;
  v31 = objc_msgSend_contents(self->_pMR, v27, v28, v29, v30);
  v32 = 16 * v11;
  memcpy(isa, v31, v32);
  v33 = v3[1]._state;
  v38 = objc_msgSend_contents(self->_pMT, v34, v35, v36, v37);
  memcpy(v33, v38, v32);
  v39 = v3[1]._stateParams.shift1;
  v44 = objc_msgSend_contents(self->_pM, v40, v41, v42, v43);
  memcpy(v39, v44, v19);
  v45 = v3[1]._stateParams.shift2;
  v50 = objc_msgSend_contents(self->_pStateIdx, v46, v47, v48, v49);
  memcpy(v45, v50, v19);

  return v3;
}

- (MPSParallelRandomMTGP32)initWithCoder:(id)coder device:(id)device
{
  v91.receiver = self;
  v91.super_class = MPSParallelRandomMTGP32;
  [MPSParallelRandom initWithCoder:sel_initWithCoder_device_ device:?];
  if (self)
  {
    v9 = 16 * (*(*self->super.super._device + 24))(self->super.super._device);
    if ((*(self->super.super._device + 369) & 0x400) != 0)
    {
      v10 = 16;
    }

    else
    {
      v10 = 128;
    }

    if ((*(self->super.super._device + 369) & 0x400) != 0)
    {
      v11 = 22464;
    }

    else
    {
      v11 = 179712;
    }

    v90 = v11;
    v12 = objc_msgSend_newBufferWithLength_options_(device, v7, v11, v9, v8);
    self->_state = v12;
    if (!v12 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v15 = 4 * v10;
    v16 = objc_msgSend_newBufferWithLength_options_(device, v13, 4 * v10, v9, v14);
    self->_pShift1 = v16;
    if (!v16 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v19 = objc_msgSend_newBufferWithLength_options_(device, v17, 4 * v10, v9, v18);
    self->_pShift2 = v19;
    if (!v19 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v22 = 16 * v10;
    v23 = objc_msgSend_newBufferWithLength_options_(device, v20, 16 * v10, v9, v21);
    self->_pMR = v23;
    if (!v23 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v26 = objc_msgSend_newBufferWithLength_options_(device, v24, v22, v9, v25);
    self->_pMT = v26;
    if (!v26 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v29 = objc_msgSend_newBufferWithLength_options_(device, v27, v15, v9, v28);
    self->_pM = v29;
    if (!v29 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v32 = objc_msgSend_newBufferWithLength_options_(device, v30, v15, v9, v31);
    self->_pStateIdx = v32;
    if (!v32 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v37 = objc_msgSend_contents(self->_state, v33, v34, v35, v36);
    v92 = 0;
    v40 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v38, @"kMPSParallelRandomStateArrayKey", &v92, v39);
    if (v40 && v90 == v92)
    {
      MPSCopyToFromNetworkByteOrder32(v37, v40, v90 >> 2);
    }

    v45 = objc_msgSend_contents(self->_pShift1, v41, v42, v43, v44);
    v92 = 0;
    v48 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v46, @"kMPSParallelRandomParameterShift1ArrayKey", &v92, v47);
    if (v48 && v15 == v92)
    {
      MPSCopyToFromNetworkByteOrder32(v45, v48, v10);
    }

    v53 = objc_msgSend_contents(self->_pShift2, v49, v50, v51, v52);
    v92 = 0;
    v56 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v54, @"kMPSParallelRandomParameterShift2ArrayKey", &v92, v55);
    if (v56 && v15 == v92)
    {
      MPSCopyToFromNetworkByteOrder32(v53, v56, v10);
    }

    v61 = objc_msgSend_contents(self->_pMR, v57, v58, v59, v60);
    v92 = 0;
    v64 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v62, @"kMPSParallelRandomParameterMRArrayKey", &v92, v63);
    if (v64 && v22 == v92)
    {
      MPSCopyToFromNetworkByteOrder32(v61, v64, v15);
    }

    v69 = objc_msgSend_contents(self->_pMT, v65, v66, v67, v68);
    v92 = 0;
    v72 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v70, @"kMPSParallelRandomParameterMTArrayKey", &v92, v71);
    if (v72 && v22 == v92)
    {
      MPSCopyToFromNetworkByteOrder32(v69, v72, v15);
    }

    v77 = objc_msgSend_contents(self->_pM, v73, v74, v75, v76);
    v92 = 0;
    v80 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v78, @"kMPSParallelRandomParameterMArrayKey", &v92, v79);
    if (v80 && v15 == v92)
    {
      MPSCopyToFromNetworkByteOrder32(v77, v80, v10);
    }

    v85 = objc_msgSend_contents(self->_pStateIdx, v81, v82, v83, v84);
    v92 = 0;
    v88 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v86, @"kMPSParallelRandomParameterStateIdxArrayKey", &v92, v87);
    if (v88 && v15 == v92)
    {
      MPSCopyToFromNetworkByteOrder32(v85, v88, v10);
    }
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super._fileVersion.var0 + 1) = 1;
  v67.receiver = self;
  v67.super_class = MPSParallelRandomMTGP32;
  [(MPSParallelRandom *)&v67 encodeWithCoder:?];
  v5 = *(self->super.super._device + 369);
  v10 = objc_msgSend_contents(self->_state, v6, v7, v8, v9);
  if ((v5 & 0x400) != 0)
  {
    v11 = 16;
  }

  else
  {
    v11 = 128;
  }

  if ((v5 & 0x400) != 0)
  {
    v12 = 5616;
  }

  else
  {
    v12 = 44928;
  }

  v13 = malloc_type_malloc(4 * v12, 0x100004052888210uLL);
  if (v13)
  {
    v18 = v13;
    MPSCopyToFromNetworkByteOrder32(v13, v10, v12);
    objc_msgSend_encodeBytes_length_forKey_(coder, v19, v18, 4 * v12, @"kMPSParallelRandomStateArrayKey");
    free(v18);
  }

  v20 = objc_msgSend_contents(self->_pShift1, v14, v15, v16, v17);
  v21 = 4 * v11;
  v22 = 16 * v11;
  v23 = malloc_type_malloc(16 * v11, 0x100004052888210uLL);
  if (v23)
  {
    v28 = v23;
    MPSCopyToFromNetworkByteOrder32(v23, v20, 4 * v11);
    objc_msgSend_encodeBytes_length_forKey_(coder, v29, v28, 16 * v11, @"kMPSParallelRandomParameterShift1ArrayKey");
    free(v28);
  }

  v30 = objc_msgSend_contents(self->_pShift2, v24, v25, v26, v27);
  v31 = malloc_type_malloc(16 * v11, 0x100004052888210uLL);
  if (v31)
  {
    v36 = v31;
    MPSCopyToFromNetworkByteOrder32(v31, v30, 4 * v11);
    objc_msgSend_encodeBytes_length_forKey_(coder, v37, v36, 16 * v11, @"kMPSParallelRandomParameterShift2ArrayKey");
    free(v36);
  }

  v38 = objc_msgSend_contents(self->_pMR, v32, v33, v34, v35);
  v39 = v11 << 6;
  v40 = malloc_type_malloc(v11 << 6, 0x100004052888210uLL);
  if (v40)
  {
    v45 = v40;
    MPSCopyToFromNetworkByteOrder32(v40, v38, v22);
    objc_msgSend_encodeBytes_length_forKey_(coder, v46, v45, v39, @"kMPSParallelRandomParameterMRArrayKey");
    free(v45);
  }

  v47 = objc_msgSend_contents(self->_pMT, v41, v42, v43, v44);
  v48 = malloc_type_malloc(v39, 0x100004052888210uLL);
  if (v48)
  {
    v53 = v48;
    MPSCopyToFromNetworkByteOrder32(v48, v47, v22);
    objc_msgSend_encodeBytes_length_forKey_(coder, v54, v53, v39, @"kMPSParallelRandomParameterMTArrayKey");
    free(v53);
  }

  v55 = objc_msgSend_contents(self->_pM, v49, v50, v51, v52);
  v56 = malloc_type_malloc(v22, 0x100004052888210uLL);
  if (v56)
  {
    v61 = v56;
    MPSCopyToFromNetworkByteOrder32(v56, v55, v21);
    objc_msgSend_encodeBytes_length_forKey_(coder, v62, v61, v22, @"kMPSParallelRandomParameterMArrayKey");
    free(v61);
  }

  v63 = objc_msgSend_contents(self->_pStateIdx, v57, v58, v59, v60);
  v64 = malloc_type_malloc(v22, 0x100004052888210uLL);
  if (v64)
  {
    v65 = v64;
    MPSCopyToFromNetworkByteOrder32(v64, v63, v21);
    objc_msgSend_encodeBytes_length_forKey_(coder, v66, v65, v22, @"kMPSParallelRandomParameterStateIdxArrayKey");
    free(v65);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSParallelRandomMTGP32;
  [(MPSKernel *)&v3 dealloc];
}

@end