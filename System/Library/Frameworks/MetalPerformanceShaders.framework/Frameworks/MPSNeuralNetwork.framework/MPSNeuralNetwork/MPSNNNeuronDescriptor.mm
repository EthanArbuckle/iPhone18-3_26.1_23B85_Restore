@interface MPSNNNeuronDescriptor
+ (MPSNNNeuronDescriptor)cnnNeuronDescriptorWithType:(MPSCNNNeuronType)neuronType;
+ (MPSNNNeuronDescriptor)cnnNeuronDescriptorWithType:(MPSCNNNeuronType)neuronType a:(float)a;
+ (MPSNNNeuronDescriptor)cnnNeuronDescriptorWithType:(MPSCNNNeuronType)neuronType a:(float)a b:(float)b;
+ (MPSNNNeuronDescriptor)cnnNeuronDescriptorWithType:(MPSCNNNeuronType)neuronType a:(float)a b:(float)b c:(float)c;
+ (MPSNNNeuronDescriptor)cnnNeuronPReLUDescriptorWithData:(NSData *)data noCopy:(BOOL)noCopy;
- (MPSNNNeuronDescriptor)initWithCoder:(id)coder;
- (MPSNNNeuronDescriptor)initWithPReLUWithData:(id)data noCopy:(BOOL)copy;
- (MPSNNNeuronDescriptor)initWithType:(int)type a:(float)a b:(float)b c:(float)c;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)initializeWithPReLUWithData:(id)data noCopy:(BOOL)copy;
- (void)initializeWithType:(int)type a:(float)a b:(float)b c:(float)c;
@end

@implementation MPSNNNeuronDescriptor

- (void)initializeWithType:(int)type a:(float)a b:(float)b c:(float)c
{
  self->_neuronType = type;
  self->_a = a;
  self->_b = b;
  self->_c = c;
  self->_data = 0;
  self->_count = 0;
  self->_noCopy = 0;
}

- (MPSNNNeuronDescriptor)initWithType:(int)type a:(float)a b:(float)b c:(float)c
{
  v6 = *&type;
  if (type >= 16)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v22 = objc_opt_class();
      NSStringFromClass(v22);
      MTLReportFailure();
    }

    return 0;
  }

  if (type == 10)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v24 = objc_opt_class();
      NSStringFromClass(v24);
      MTLReportFailure();
    }

    return 0;
  }

  v25.receiver = self;
  v25.super_class = MPSNNNeuronDescriptor;
  result = [(MPSNNNeuronDescriptor *)&v25 init];
  if (result)
  {
    v20 = result;
    *&v17 = a;
    *&v18 = b;
    *&v19 = c;
    objc_msgSend_initializeWithType_a_b_c_(result, v11, v6, v12, v13, v14, v15, v16, v17, v18, v19);
    return v20;
  }

  return result;
}

+ (MPSNNNeuronDescriptor)cnnNeuronDescriptorWithType:(MPSCNNNeuronType)neuronType a:(float)a b:(float)b c:(float)c
{
  v9 = *&neuronType;
  v10 = [MPSNNNeuronDescriptor alloc];
  *&v11 = a;
  *&v12 = b;
  *&v13 = c;
  v20 = objc_msgSend_initWithType_a_b_c_(v10, v14, v9, v15, v16, v17, v18, v19, v11, v12, v13);

  return v20;
}

+ (MPSNNNeuronDescriptor)cnnNeuronDescriptorWithType:(MPSCNNNeuronType)neuronType a:(float)a b:(float)b
{
  v7 = *&neuronType;
  v8 = [MPSNNNeuronDescriptor alloc];
  LODWORD(v9) = 1.0;
  *&v10 = a;
  *&v11 = b;
  v18 = objc_msgSend_initWithType_a_b_c_(v8, v12, v7, v13, v14, v15, v16, v17, v10, v11, v9);

  return v18;
}

+ (MPSNNNeuronDescriptor)cnnNeuronDescriptorWithType:(MPSCNNNeuronType)neuronType a:(float)a
{
  v5 = *&neuronType;
  v6 = [MPSNNNeuronDescriptor alloc];
  LODWORD(v7) = 1.0;
  LODWORD(v8) = 1.0;
  *&v9 = a;
  v16 = objc_msgSend_initWithType_a_b_c_(v6, v10, v5, v11, v12, v13, v14, v15, v9, v7, v8);

  return v16;
}

+ (MPSNNNeuronDescriptor)cnnNeuronDescriptorWithType:(MPSCNNNeuronType)neuronType
{
  v3 = *&neuronType;
  v4 = [MPSNNNeuronDescriptor alloc];
  LODWORD(v5) = 1.0;
  LODWORD(v6) = 1.0;
  LODWORD(v7) = 1.0;
  v14 = objc_msgSend_initWithType_a_b_c_(v4, v8, v3, v9, v10, v11, v12, v13, v5, v6, v7);

  return v14;
}

- (void)initializeWithPReLUWithData:(id)data noCopy:(BOOL)copy
{
  v11 = objc_msgSend_length(data, a2, data, copy, v4, v5, v6, v7);
  self->_neuronType = 10;
  self->_a = 0.0;
  *&self->_b = 0;
  self->_data = data;
  self->_count = v11 >> 2;
  self->_noCopy = copy;
}

- (MPSNNNeuronDescriptor)initWithPReLUWithData:(id)data noCopy:(BOOL)copy
{
  if (!data)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  copyCopy = copy;
  v11 = objc_msgSend_length(data, a2, data, copy, v4, v5, v6, v7);
  if (!v11)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if ((v11 & 3) != 0)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_12:
      v19 = objc_opt_class();
      NSStringFromClass(v19);
      MTLReportFailure();
    }

LABEL_13:

    return 0;
  }

  v20.receiver = self;
  v20.super_class = MPSNNNeuronDescriptor;
  result = [(MPSNNNeuronDescriptor *)&v20 init];
  if (result)
  {
    v18 = result;
    objc_msgSend_initializeWithPReLUWithData_noCopy_(result, v13, data, copyCopy, v14, v15, v16, v17);
    return v18;
  }

  return result;
}

+ (MPSNNNeuronDescriptor)cnnNeuronPReLUDescriptorWithData:(NSData *)data noCopy:(BOOL)noCopy
{
  v4 = noCopy;
  v6 = [MPSNNNeuronDescriptor alloc];
  v12 = objc_msgSend_initWithPReLUWithData_noCopy_(v6, v7, data, v4, v8, v9, v10, v11);

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  result = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8, v9, v10, v11);
  if (result)
  {
    *(result + 2) = self->_neuronType;
    *(result + 3) = LODWORD(self->_a);
    *(result + 4) = LODWORD(self->_b);
    *(result + 5) = LODWORD(self->_c);
    v19 = result;
    v20 = objc_msgSend_copyWithZone_(self->_data, v13, zone, v14, v15, v16, v17, v18);
    result = v19;
    *(v19 + 3) = v20;
    *(v19 + 5) = self->_count;
    *(v19 + 32) = self->_noCopy;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNNeuronDescriptor;
  [(MPSNNNeuronDescriptor *)&v3 dealloc];
}

- (id)debugDescription
{
  if (self->_data)
  {
    v3 = MEMORY[0x277CCACA8];
    v32.receiver = self;
    v32.super_class = MPSNNNeuronDescriptor;
    v4 = [(MPSNNNeuronDescriptor *)&v32 debugDescription];
    neuronType = self->_neuronType;
    if (neuronType > 0xF)
    {
      return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tneuronType: %s\n\t\ta: %f \tb: %f \tc: %f \tdata: %p", v6, v7, v8, v9, v10, v4, "<invalid/missing type>", self->_a, self->_b, self->_c, self->_data);
    }

    else
    {
      return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tneuronType: %s\n\t\ta: %f \tb: %f \tc: %f \tdata: %p", v6, v7, v8, v9, v10, v4, off_278B30B88[neuronType], self->_a, self->_b, self->_c, self->_data);
    }
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    if (self->_neuronType == 14)
    {
      v31.receiver = self;
      v31.super_class = MPSNNNeuronDescriptor;
      v14 = [(MPSNNNeuronDescriptor *)&v31 debugDescription];
      v21 = self->_neuronType;
      if (v21 > 0xF)
      {
        return objc_msgSend_stringWithFormat_(v13, v15, @"%@\n\tneuronType: %s\n\t\ta: %f \tb: %f", v16, v17, v18, v19, v20, v14, "<invalid/missing type>", self->_a, self->_b);
      }

      else
      {
        return objc_msgSend_stringWithFormat_(v13, v15, @"%@\n\tneuronType: %s\n\t\ta: %f \tb: %f", v16, v17, v18, v19, v20, v14, off_278B30B88[v21], self->_a, self->_b);
      }
    }

    else
    {
      v30.receiver = self;
      v30.super_class = MPSNNNeuronDescriptor;
      v22 = [(MPSNNNeuronDescriptor *)&v30 debugDescription];
      v29 = self->_neuronType;
      if (v29 > 0xF)
      {
        return objc_msgSend_stringWithFormat_(v13, v23, @"%@\n\tneuronType: %s\n\t\ta: %f \tb: %f \tc: %f", v24, v25, v26, v27, v28, v22, "<invalid/missing type>", self->_a, self->_b, self->_c);
      }

      else
      {
        return objc_msgSend_stringWithFormat_(v13, v23, @"%@\n\tneuronType: %s\n\t\ta: %f \tb: %f \tc: %f", v24, v25, v26, v27, v28, v22, off_278B30B88[v29], self->_a, self->_b, self->_c);
      }
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  *&v8 = self->_a;
  objc_msgSend_encodeFloat_forKey_(coder, a2, @"MPSNNNeuronDescriptor.A", v3, v4, v5, v6, v7, v8);
  *&v11 = self->_b;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"MPSNNNeuronDescriptor.B", v13, v14, v15, v16, v17, v11);
  *&v18 = self->_c;
  objc_msgSend_encodeFloat_forKey_(coder, v19, @"MPSNNNeuronDescriptor.C", v20, v21, v22, v23, v24, v18);
  objc_msgSend_encodeInt64_forKey_(coder, v25, self->_neuronType, @"MPSNNNeuronDescriptor.neuronType", v26, v27, v28, v29);
  if (self->_neuronType == 10)
  {
    objc_msgSend_bytes(self->_data, v30, v31, v32, v33, v34, v35, v36);
    count = self->_count;
    v38 = malloc_type_malloc(4 * count, 0x100004052888210uLL);
    if (v38)
    {
      v44 = v38;
      MPSCopyToFromNetworkByteOrder32();
      objc_msgSend_encodeBytes_length_forKey_(coder, v45, v44, 4 * count, @"MPSNNNeuronDescriptor.PReLuData", v46, v47, v48);
      free(v44);
    }

    v49 = self->_count;

    objc_msgSend_encodeInt64_forKey_(coder, v39, v49, @"MPSNNNeuronDescriptor.PReLuCount", v40, v41, v42, v43);
  }
}

- (MPSNNNeuronDescriptor)initWithCoder:(id)coder
{
  v65.receiver = self;
  v65.super_class = MPSNNNeuronDescriptor;
  v10 = [(MPSNNNeuronDescriptor *)&v65 init];
  if (v10)
  {
    objc_msgSend_decodeFloatForKey_(coder, v4, @"MPSNNNeuronDescriptor.A", v5, v6, v7, v8, v9);
    v12 = v11;
    objc_msgSend_decodeFloatForKey_(coder, v13, @"MPSNNNeuronDescriptor.B", v14, v15, v16, v17, v18);
    v20 = v19;
    objc_msgSend_decodeFloatForKey_(coder, v21, @"MPSNNNeuronDescriptor.C", v22, v23, v24, v25, v26);
    v28 = v27;
    v36 = objc_msgSend_decodeInt64ForKey_(coder, v29, @"MPSNNNeuronDescriptor.neuronType", v30, v31, v32, v33, v34);
    if (v36 == 10)
    {
      v45 = 4 * objc_msgSend_decodeInt64ForKey_(coder, v35, @"MPSNNNeuronDescriptor.PReLuCount", v37, v38, v39, v40, v41);
      v46 = malloc_type_malloc(v45, 0x100004052888210uLL);
      v66 = 0;
      v52 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v47, @"MPSNNNeuronDescriptor.PReLuData", &v66, v48, v49, v50, v51);
      if (v45 == 4 && v52)
      {
        MPSCopyToFromNetworkByteOrder32();
      }

      v53 = objc_alloc(MEMORY[0x277CBEA90]);
      v58 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v53, v54, v46, v45, 1, v55, v56, v57);
      objc_msgSend_initializeWithPReLUWithData_noCopy_(v10, v59, v58, 0, v60, v61, v62, v63);
    }

    else
    {
      LODWORD(v42) = v12;
      LODWORD(v43) = v20;
      LODWORD(v44) = v28;
      objc_msgSend_initializeWithType_a_b_c_(v10, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    }
  }

  return v10;
}

@end