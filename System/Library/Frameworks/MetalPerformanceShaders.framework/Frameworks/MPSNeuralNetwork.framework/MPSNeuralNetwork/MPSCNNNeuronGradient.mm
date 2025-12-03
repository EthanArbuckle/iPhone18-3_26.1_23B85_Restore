@interface MPSCNNNeuronGradient
- (MPSCNNNeuronGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNNeuronGradient)initWithDevice:(id)device;
- (MPSCNNNeuronGradient)initWithDevice:(id)device neuronDescriptor:(MPSNNNeuronDescriptor *)neuronDescriptor;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)privateInitWithDevice:(id)device a:(const float *)a count:(unint64_t)count type:(int)type;
- (id)privateInitWithDevice:(id)device a:(float)a b:(float)b c:(float)c type:(int)type;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)initializeWithNeuronType:(int)type neuronParameterA:(const float *)a count:(unint64_t)count;
- (void)initializeWithNeuronType:(int)type neuronParameterA:(float)a neuronParameterB:(float)b neuronParameterC:(float)c;
@end

@implementation MPSCNNNeuronGradient

- (MPSCNNNeuronGradient)initWithDevice:(id)device neuronDescriptor:(MPSNNNeuronDescriptor *)neuronDescriptor
{
  v33.receiver = self;
  v33.super_class = MPSCNNNeuronGradient;
  v5 = [(MPSCNNGradientKernel *)&v33 initWithDevice:device];
  v16 = v5;
  if (!v5)
  {
    return v16;
  }

  neuronType = neuronDescriptor->_neuronType;
  if (neuronType >= 16)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (neuronType != 10)
    {
      *&v13 = neuronDescriptor->_a;
      *&v14 = neuronDescriptor->_b;
      *&v15 = neuronDescriptor->_c;
      objc_msgSend_initializeWithNeuronType_neuronParameterA_neuronParameterB_neuronParameterC_(v5, v6, neuronDescriptor->_neuronType, v8, v9, v10, v11, v12, v13, v14, v15);
      return v16;
    }

    data = neuronDescriptor->_data;
    if (data)
    {
      if (objc_msgSend_length(data, v6, v7, v8, v9, v10, v11, v12))
      {
        v16->_data = neuronDescriptor->_data;
        v16->_noCopy = neuronDescriptor->_noCopy;
        v26 = objc_msgSend_bytes(neuronDescriptor->_data, v19, v20, v21, v22, v23, v24, v25);
        objc_msgSend_initializeWithNeuronType_neuronParameterA_count_(v16, v27, 10, v26, neuronDescriptor->_count, v28, v29, v30);
        return v16;
      }

      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    if (MTLReportFailureTypeEnabled())
    {
LABEL_14:
      v32 = objc_opt_class();
      NSStringFromClass(v32);
LABEL_15:
      MTLReportFailure();
    }
  }

LABEL_16:

  return 0;
}

- (id)privateInitWithDevice:(id)device a:(float)a b:(float)b c:(float)c type:(int)type
{
  v7 = *&type;
  v23.receiver = self;
  v23.super_class = MPSCNNNeuronGradient;
  result = [(MPSCNNGradientKernel *)&v23 initWithDevice:device];
  if (result)
  {
    if (v7 >= 16)
    {
      v22 = result;
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      return 0;
    }

    else
    {
      v21 = result;
      *&v18 = a;
      *&v19 = b;
      *&v20 = c;
      objc_msgSend_initializeWithNeuronType_neuronParameterA_neuronParameterB_neuronParameterC_(result, v12, v7, v13, v14, v15, v16, v17, v18, v19, v20);
      return v21;
    }
  }

  return result;
}

- (id)privateInitWithDevice:(id)device a:(const float *)a count:(unint64_t)count type:(int)type
{
  v6 = *&type;
  v16.receiver = self;
  v16.super_class = MPSCNNNeuronGradient;
  result = [(MPSCNNGradientKernel *)&v16 initWithDevice:device];
  if (result)
  {
    if (v6 >= 16)
    {
      v15 = result;
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      return 0;
    }

    else
    {
      v14 = result;
      objc_msgSend_initializeWithNeuronType_neuronParameterA_count_(result, v10, v6, a, count, v11, v12, v13);
      return v14;
    }
  }

  return result;
}

- (MPSCNNNeuronGradient)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (void)initializeWithNeuronType:(int)type neuronParameterA:(float)a neuronParameterB:(float)b neuronParameterC:(float)c
{
  self->_neuronType = type;
  self->_a = a;
  self->_b = b;
  self->_c = c;
  self->_data = 0;
  self->_noCopy = 0;
  self->_aBuf = 0;
  self->_count = 0;
  objc_msgSend_setPlugin_(self, a2, 0, v6, v7, v8, v9, v10);
  self->super.super._checkFlags |= 2u;
  self->super.super._encode = sub_239D1C93C;
  self->super.super._batchEncode = sub_239D1CD24;
  self->super.super._encodeData = self;
}

- (void)initializeWithNeuronType:(int)type neuronParameterA:(const float *)a count:(unint64_t)count
{
  v66 = *MEMORY[0x277D85DE8];
  self->_neuronType = type;
  self->_a = 0.0;
  self->_b = 0.0;
  self->_c = 0.0;
  self->_aBuf = 0;
  self->_count = count;
  objc_msgSend_setPlugin_(self, a2, 0, a, count, v5, v6, v7);
  v11 = *MEMORY[0x277CD7350];
  v12 = (*(**(&self->super.super.super.super.isa + v11) + 40))(*(&self->super.super.super.super.isa + v11));
  v13 = (*(**(&self->super.super.super.super.isa + v11) + 24))(*(&self->super.super.super.super.isa + v11));
  self->super.super._checkFlags |= 2u;
  v21 = v12 | (16 * v13);
  self->super.super._encode = sub_239D1C93C;
  self->super.super._batchEncode = sub_239D1CD24;
  self->super.super._encodeData = self;
  if (self->_noCopy)
  {
    if (((a + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0]) != a && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v22 = 4 * count;
    if (((objc_msgSend_minBufferNoCopyAlignmentBytes((*(&self->super.super.super.super.isa + v11))[2], v14, v15, v16, v17, v18, v19, v20) - 1) & v22) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    size = 0;
    address = a;
    object_name = 0;
    infoCnt = 9;
    if (vm_region_64(*MEMORY[0x277D85F48], &address, &size, 10, info, &infoCnt, &object_name) || (info[0] & 1) == 0 || address != a || size != v22) && (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v48 = (*(&self->super.super.super.super.isa + v11))[2];
    v49 = objc_msgSend_bytes(self->_data, v23, v24, v25, v26, v27, v28, v29);
    v57 = objc_msgSend_length(self->_data, v50, v51, v52, v53, v54, v55, v56);
    self->_aBuf = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v48, v58, v49, v57, v21, 0, v59, v60);
  }

  else if (a)
  {
    v30 = 4 * count;
    v31 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.super.isa + v11))[2], v14, (v30 + 12) & 0xFFFFFFFFFFFFFFF0, v21, v17, v18, v19, v20);
    self->_aBuf = v31;
    v39 = objc_msgSend_contents(v31, v32, v33, v34, v35, v36, v37, v38);
    bzero(v39, (v30 + 12) & 0xFFFFFFFFFFFFFFF0);
    v47 = objc_msgSend_contents(self->_aBuf, v40, v41, v42, v43, v44, v45, v46);

    memcpy(v47, a, v30);
  }
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v21.receiver = self;
  v21.super_class = MPSCNNNeuronGradient;
  v5 = [(MPSCNNGradientKernel *)&v21 copyWithZone:zone device:device];
  v5[108] = self->_neuronType;
  v5[109] = LODWORD(self->_a);
  v5[110] = LODWORD(self->_b);
  v5[111] = LODWORD(self->_c);
  *(v5 + 456) = self->_noCopy;
  *(v5 + 58) = self->_count;
  *(v5 + 59) = self->_aBuf;
  v13 = objc_msgSend_plugin(self, v6, v7, v8, v9, v10, v11, v12);
  objc_msgSend_setPlugin_(v5, v14, v13, v15, v16, v17, v18, v19);
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNNeuronGradient;
  [(MPSCNNBinaryKernel *)&v3 dealloc];
}

- (MPSCNNNeuronGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v88.receiver = self;
  v88.super_class = MPSCNNNeuronGradient;
  v5 = [(MPSCNNGradientKernel *)&v88 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  v5->super.super._checkFlags |= 2u;
  if (*(&v5->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_9:

      return 0;
    }

    v61 = objc_opt_class();
    NSStringFromClass(v61);
LABEL_8:
    MTLReportFailure();
    goto LABEL_9;
  }

  v19 = objc_msgSend_decodeInt32ForKey_(aDecoder, v6, @"MPSCNNNeuronGradientTypeName", v7, v8, v9, v10, v11);
  if (v19 >= 16)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  objc_msgSend_decodeFloatForKey_(aDecoder, v13, @"MPSCNNNeuronGradientA", v14, v15, v16, v17, v18);
  v21 = v20;
  objc_msgSend_decodeFloatForKey_(aDecoder, v22, @"MPSCNNNeuronGradientB", v23, v24, v25, v26, v27);
  v29 = v28;
  objc_msgSend_decodeFloatForKey_(aDecoder, v30, @"MPSCNNNeuronGradientC", v31, v32, v33, v34, v35);
  v37 = v36;
  v44 = objc_msgSend_decodeBoolForKey_(aDecoder, v38, @"MPSCNNNeuronGradientAArrayIsNil", v39, v40, v41, v42, v43);
  v51 = objc_msgSend_decodeInt64ForKey_(aDecoder, v45, @"MPSCNNNeuronGradientAArrayLength", v46, v47, v48, v49, v50);
  v12->_noCopy = 0;
  if (v44)
  {
    LODWORD(v58) = v21;
    LODWORD(v59) = v29;
    LODWORD(v60) = v37;
    objc_msgSend_initializeWithNeuronType_neuronParameterA_neuronParameterB_neuronParameterC_(v12, v52, v19, v53, v54, v55, v56, v57, v58, v59, v60);
  }

  else
  {
    address = 0;
    v62 = (*MEMORY[0x277D85FA0] + 4 * v51 - 1) & -*MEMORY[0x277D85FA0];
    mach_vm_allocate(*MEMORY[0x277D85F48], &address, v62, 1);
    v89 = 0;
    if (objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v63, @"MPSCNNNeuronGradientAArray", &v89, v64, v65, v66, v67))
    {
      MPSCopyToFromNetworkByteOrder32();
    }

    v12->_noCopy = 1;
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = sub_239D1D61C;
    v86[3] = &unk_278B30B68;
    v86[4] = address;
    v86[5] = v62;
    v68 = objc_alloc(MEMORY[0x277CBEA90]);
    v12->_data = objc_msgSend_initWithBytesNoCopy_length_deallocator_(v68, v69, address, v62, v86, v70, v71, v72);
    v12->_count = v62 >> 2;
    v80 = objc_msgSend_bytes(v12->_data, v73, v74, v75, v76, v77, v78, v79);
    objc_msgSend_initializeWithNeuronType_neuronParameterA_count_(v12, v81, v19, v80, v62 >> 2, v82, v83, v84);
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v51.receiver = self;
  v51.super_class = MPSCNNNeuronGradient;
  [(MPSCNNGradientKernel *)&v51 encodeWithCoder:?];
  objc_msgSend_encodeInt32_forKey_(coder, v5, self->_neuronType, @"MPSCNNNeuronGradientTypeName", v6, v7, v8, v9);
  *&v10 = self->_a;
  objc_msgSend_encodeFloat_forKey_(coder, v11, @"MPSCNNNeuronGradientA", v12, v13, v14, v15, v16, v10);
  *&v17 = self->_b;
  objc_msgSend_encodeFloat_forKey_(coder, v18, @"MPSCNNNeuronGradientB", v19, v20, v21, v22, v23, v17);
  *&v24 = self->_c;
  objc_msgSend_encodeFloat_forKey_(coder, v25, @"MPSCNNNeuronGradientC", v26, v27, v28, v29, v30, v24);
  objc_msgSend_encodeBool_forKey_(coder, v31, self->_aBuf == 0, @"MPSCNNNeuronGradientAArrayIsNil", v32, v33, v34, v35);
  aBuf = self->_aBuf;
  if (aBuf)
  {
    objc_msgSend_contents(aBuf, v36, v37, v38, v39, v40, v41, v42);
    count = self->_count;
    v45 = malloc_type_malloc(4 * count, 0x100004052888210uLL);
    if (v45)
    {
      v46 = v45;
      MPSCopyToFromNetworkByteOrder32();
      objc_msgSend_encodeBytes_length_forKey_(coder, v47, v46, 4 * count, @"MPSCNNNeuronGradientAArray", v48, v49, v50);
      free(v46);
    }
  }

  objc_msgSend_encodeInt64_forKey_(coder, v36, self->_count, @"MPSCNNNeuronGradientAArrayLength", v39, v40, v41, v42);
}

- (id)debugDescription
{
  if (self->_data)
  {
    v3 = MEMORY[0x277CCACA8];
    v35.receiver = self;
    v35.super_class = MPSCNNNeuronGradient;
    v4 = [(MPSCNNBinaryKernel *)&v35 debugDescription];
    neuronType = self->_neuronType;
    if (neuronType > 0xF)
    {
      v12 = "<invalid/missing type>";
    }

    else
    {
      v12 = off_278B30B88[neuronType];
    }

    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tneuronType: %s\ta: %f\tb: %f\tc: %f\tdata: %p", v6, v7, v8, v9, v10, v4, v12, self->_a, self->_b, self->_c, self->_data);
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    if (self->_neuronType == 14)
    {
      v34.receiver = self;
      v34.super_class = MPSCNNNeuronGradient;
      v14 = [(MPSCNNBinaryKernel *)&v34 debugDescription];
      v21 = self->_neuronType;
      if (v21 > 0xF)
      {
        v22 = "<invalid/missing type>";
      }

      else
      {
        v22 = off_278B30B88[v21];
      }

      return objc_msgSend_stringWithFormat_(v13, v15, @"%@\n\tneuronType: %s\ta: %f\tb: %f", v16, v17, v18, v19, v20, v14, v22, self->_a, self->_b);
    }

    else
    {
      v33.receiver = self;
      v33.super_class = MPSCNNNeuronGradient;
      v24 = [(MPSCNNBinaryKernel *)&v33 debugDescription];
      v31 = self->_neuronType;
      if (v31 > 0xF)
      {
        v32 = "<invalid/missing type>";
      }

      else
      {
        v32 = off_278B30B88[v31];
      }

      return objc_msgSend_stringWithFormat_(v13, v25, @"%@\n\tneuronType: %s\ta: %f\tb: %f\tc: %f", v26, v27, v28, v29, v30, v24, v32, self->_a, self->_b, self->_c);
    }
  }
}

@end