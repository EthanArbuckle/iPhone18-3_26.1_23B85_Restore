@interface MPSCNNNeuron
- (MPSCNNNeuron)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNNeuron)initWithDevice:(id)device;
- (MPSCNNNeuron)initWithDevice:(id)device neuronDescriptor:(MPSNNNeuronDescriptor *)neuronDescriptor;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)privateInitWithDevice:(id)a3 a:(const float *)a4 count:(unint64_t)a5 type:(int)a6;
- (id)privateInitWithDevice:(id)a3 a:(float)a4 b:(float)a5 c:(float)a6 type:(int)a7;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)initializeWithNeuronType:(int)a3 neuronParameterA:(const float *)a4 count:(unint64_t)a5;
- (void)initializeWithNeuronType:(int)a3 neuronParameterA:(float)a4 neuronParameterB:(float)a5 neuronParameterC:(float)a6;
@end

@implementation MPSCNNNeuron

- (MPSCNNNeuron)initWithDevice:(id)device neuronDescriptor:(MPSNNNeuronDescriptor *)neuronDescriptor
{
  v33.receiver = self;
  v33.super_class = MPSCNNNeuron;
  v5 = [(MPSCNNKernel *)&v33 initWithDevice:device];
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

- (id)privateInitWithDevice:(id)a3 a:(float)a4 b:(float)a5 c:(float)a6 type:(int)a7
{
  v7 = *&a7;
  v23.receiver = self;
  v23.super_class = MPSCNNNeuron;
  result = [(MPSCNNKernel *)&v23 initWithDevice:a3];
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
      *&v18 = a4;
      *&v19 = a5;
      *&v20 = a6;
      objc_msgSend_initializeWithNeuronType_neuronParameterA_neuronParameterB_neuronParameterC_(result, v12, v7, v13, v14, v15, v16, v17, v18, v19, v20);
      return v21;
    }
  }

  return result;
}

- (id)privateInitWithDevice:(id)a3 a:(const float *)a4 count:(unint64_t)a5 type:(int)a6
{
  v6 = *&a6;
  v16.receiver = self;
  v16.super_class = MPSCNNNeuron;
  result = [(MPSCNNKernel *)&v16 initWithDevice:a3];
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
      objc_msgSend_initializeWithNeuronType_neuronParameterA_count_(result, v10, v6, a4, a5, v11, v12, v13);
      return v14;
    }
  }

  return result;
}

- (MPSCNNNeuron)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (void)initializeWithNeuronType:(int)a3 neuronParameterA:(float)a4 neuronParameterB:(float)a5 neuronParameterC:(float)a6
{
  self->_neuronType = a3;
  self->_a = a4;
  self->_b = a5;
  self->_c = a6;
  self->_data = 0;
  self->_noCopy = 0;
  self->_aBuf = 0;
  self->_count = 0;
  self->super._checkFlags |= 0x8002u;
  self->super._encode = sub_239D1B484;
  self->super._batchEncode = sub_239D1B88C;
  self->super._encodeData = self;
}

- (void)initializeWithNeuronType:(int)a3 neuronParameterA:(const float *)a4 count:(unint64_t)a5
{
  v62 = *MEMORY[0x277D85DE8];
  self->_neuronType = a3;
  self->_a = 0.0;
  self->_b = 0.0;
  self->_c = 0.0;
  self->_aBuf = 0;
  self->_count = a5;
  v8 = *MEMORY[0x277CD7350];
  v9 = (*(**(&self->super.super.super.isa + v8) + 24))(*(&self->super.super.super.isa + v8), a2);
  self->super._checkFlags |= 0x8002u;
  self->super._encode = sub_239D1B484;
  self->super._batchEncode = sub_239D1B88C;
  self->super._encodeData = self;
  v17 = 16 * v9;
  if (self->_noCopy)
  {
    if (((a4 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0]) != a4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v18 = 4 * a5;
    if (((objc_msgSend_minBufferNoCopyAlignmentBytes((*(&self->super.super.super.isa + v8))[2], v10, v11, v12, v13, v14, v15, v16) - 1) & v18) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    size = 0;
    address = a4;
    object_name = 0;
    infoCnt = 9;
    if (vm_region_64(*MEMORY[0x277D85F48], &address, &size, 10, info, &infoCnt, &object_name) || (info[0] & 1) == 0 || address != a4 || size != v18) && (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v44 = (*(&self->super.super.super.isa + v8))[2];
    v45 = objc_msgSend_bytes(self->_data, v19, v20, v21, v22, v23, v24, v25);
    v53 = objc_msgSend_length(self->_data, v46, v47, v48, v49, v50, v51, v52);
    self->_aBuf = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v44, v54, v45, v53, v17, 0, v55, v56);
  }

  else if (a4)
  {
    v26 = 4 * a5;
    v27 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v8))[2], v10, (v26 + 12) & 0xFFFFFFFFFFFFFFF0, v17, v13, v14, v15, v16);
    self->_aBuf = v27;
    v35 = objc_msgSend_contents(v27, v28, v29, v30, v31, v32, v33, v34);
    bzero(v35, (v26 + 12) & 0xFFFFFFFFFFFFFFF0);
    v43 = objc_msgSend_contents(self->_aBuf, v36, v37, v38, v39, v40, v41, v42);

    memcpy(v43, a4, v26);
  }
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v21.receiver = self;
  v21.super_class = MPSCNNNeuron;
  v5 = [(MPSCNNKernel *)&v21 copyWithZone:a3 device:a4];
  v5[82] = self->_neuronType;
  v5[83] = LODWORD(self->_a);
  v5[84] = LODWORD(self->_b);
  v5[85] = LODWORD(self->_c);
  *(v5 + 352) = self->_noCopy;
  *(v5 + 45) = self->_count;
  *(v5 + 46) = self->_aBuf;
  v13 = objc_msgSend_plugin(self, v6, v7, v8, v9, v10, v11, v12);
  objc_msgSend_setPlugin_(v5, v14, v13, v15, v16, v17, v18, v19);
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNNeuron;
  [(MPSCNNKernel *)&v3 dealloc];
}

- (MPSCNNNeuron)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v88.receiver = self;
  v88.super_class = MPSCNNNeuron;
  v5 = [(MPSCNNKernel *)&v88 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  v5->super._checkFlags |= 0x8002u;
  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
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

  v19 = objc_msgSend_decodeInt32ForKey_(aDecoder, v6, @"MPSCNNNeuronTypeName", v7, v8, v9, v10, v11);
  if (v19 >= 16)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  objc_msgSend_decodeFloatForKey_(aDecoder, v13, @"MPSCNNNeuronA", v14, v15, v16, v17, v18);
  v21 = v20;
  objc_msgSend_decodeFloatForKey_(aDecoder, v22, @"MPSCNNNeuronB", v23, v24, v25, v26, v27);
  v29 = v28;
  objc_msgSend_decodeFloatForKey_(aDecoder, v30, @"MPSCNNNeuronC", v31, v32, v33, v34, v35);
  v37 = v36;
  v44 = objc_msgSend_decodeBoolForKey_(aDecoder, v38, @"MPSCNNNeuronAArrayIsNil", v39, v40, v41, v42, v43);
  v51 = objc_msgSend_decodeInt64ForKey_(aDecoder, v45, @"MPSCNNNeuronAArrayLength", v46, v47, v48, v49, v50);
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
    if (objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v63, @"MPSCNNNeuronAArray", &v89, v64, v65, v66, v67))
    {
      MPSCopyToFromNetworkByteOrder32();
    }

    v12->_noCopy = 1;
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = sub_239D1C16C;
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

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v51.receiver = self;
  v51.super_class = MPSCNNNeuron;
  [(MPSCNNKernel *)&v51 encodeWithCoder:?];
  objc_msgSend_encodeInt32_forKey_(a3, v5, self->_neuronType, @"MPSCNNNeuronTypeName", v6, v7, v8, v9);
  *&v10 = self->_a;
  objc_msgSend_encodeFloat_forKey_(a3, v11, @"MPSCNNNeuronA", v12, v13, v14, v15, v16, v10);
  *&v17 = self->_b;
  objc_msgSend_encodeFloat_forKey_(a3, v18, @"MPSCNNNeuronB", v19, v20, v21, v22, v23, v17);
  *&v24 = self->_c;
  objc_msgSend_encodeFloat_forKey_(a3, v25, @"MPSCNNNeuronC", v26, v27, v28, v29, v30, v24);
  objc_msgSend_encodeBool_forKey_(a3, v31, self->_aBuf == 0, @"MPSCNNNeuronAArrayIsNil", v32, v33, v34, v35);
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
      objc_msgSend_encodeBytes_length_forKey_(a3, v47, v46, 4 * count, @"MPSCNNNeuronAArray", v48, v49, v50);
      free(v46);
    }
  }

  objc_msgSend_encodeInt64_forKey_(a3, v36, self->_count, @"MPSCNNNeuronAArrayLength", v39, v40, v41, v42);
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  if (self->_data)
  {
    v24.receiver = self;
    v24.super_class = MPSCNNNeuron;
    v4 = [(MPSCNNKernel *)&v24 debugDescription];
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
    v23.receiver = self;
    v23.super_class = MPSCNNNeuron;
    v13 = [(MPSCNNKernel *)&v23 debugDescription];
    v20 = self->_neuronType;
    if (v20 > 0xF)
    {
      v21 = "<invalid/missing type>";
    }

    else
    {
      v21 = off_278B30B88[v20];
    }

    return objc_msgSend_stringWithFormat_(v3, v14, @"%@\n\tneuronType: %s\ta: %f\tb: %f\tc: %f", v15, v16, v17, v18, v19, v13, v21, self->_a, self->_b, self->_c);
  }
}

@end