@interface MPSKernel
- (MPSKernel)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSKernel)init;
- (MPSKernel)initWithCoder:(NSCoder *)aDecoder;
- (MPSKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (id)debugDescription;
- (id)sharedInitWithDevice:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setLabel:(NSString *)label;
@end

@implementation MPSKernel

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSKernel;
  [(MPSKernel *)&v3 dealloc];
}

- (void)setLabel:(NSString *)label
{
  v5 = self->_label;
  if (v5 != label)
  {
    self->_label = objc_msgSend_copy(label, a2, label, v3, v4);

    self->_labelHash = objc_msgSend_hash(self->_label, v7, v8, v9, v10);
  }
}

- (MPSKernel)init
{
  v3 = MTLCreateSystemDefaultDevice();
  if (v3)
  {

    return objc_msgSend_initWithDevice_(self, v4, v3, v5, v6);
  }

  else
  {

    return 0;
  }
}

- (id)sharedInitWithDevice:(id)a3
{
  if (!a3)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  MPSDevice = MPSDevice::GetMPSDevice(a3);
  if (!MPSDevice)
  {
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_11:

      return 0;
    }

LABEL_9:
    v21 = objc_opt_class();
    NSStringFromClass(v21);
    MTLReportFailure();
    goto LABEL_11;
  }

  v6 = MPSDevice;
  v39.receiver = self;
  v39.super_class = MPSKernel;
  result = [(MPSKernel *)&v39 init];
  if (result)
  {
    if (qword_280AFECA0 != -1)
    {
      v38 = result;
      dispatch_once_f(&qword_280AFECA0, &xmmword_280AFECB0, sub_22E2EE670);
      result = v38;
    }

    *(result + 8) = xmmword_280AFECB0;
    *(result + 8) = 31;
    *(result + 5) = 0;
    self = result;
    *(result + 6) = objc_msgSend_hash(0, v8, v9, v10, v11);
    self->_device = v6;
    v12 = objc_opt_class();
    v16 = objc_msgSend_libraryInfo_(v12, v13, v6, v14, v15);
    MPSLibrary_DoNotUse = MPSDevice::GetMPSLibrary_DoNotUse(v6, v16, v17, v18, v19);
    result = self;
    self->_library = MPSLibrary_DoNotUse;
    self->_tuningParams = 0;
    *&self->_fileVersion.bits = 0;
    self->_enableConcurrency = 0;
    if (!self->_device)
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v27 = objc_msgSend_cStringUsingEncoding_(v23, v24, 1, v25, v26);
      v32 = objc_msgSend_name(a3, v28, v29, v30, v31);
      v36 = objc_msgSend_cStringUsingEncoding_(v32, v33, 1, v34, v35);
      sub_22E367184(self, v37, "[%s initWithDevice: %p] device is not supported: %s\nReturning nil.", v27, a3, v36);
      goto LABEL_11;
    }
  }

  return result;
}

- (MPSKernel)copyWithZone:(NSZone *)zone device:(id)device
{
  v6 = self->_device;
  if (!device)
  {
    v8 = self->_device;
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (MTLReportFailureTypeEnabled())
    {
      v25 = objc_opt_class();
      NSStringFromClass(v25);
      MTLReportFailure();
    }

    goto LABEL_14;
  }

  MPSDevice = MPSDevice::GetMPSDevice(device);
  if (MPSDevice)
  {
    v8 = MPSDevice;
  }

  else
  {
    v8 = v6;
  }

  if (!self->_device)
  {
    goto LABEL_11;
  }

LABEL_6:
  v9 = objc_opt_class();
  if (!v8)
  {
    v26 = NSStringFromClass(v9);
    v30 = objc_msgSend_cStringUsingEncoding_(v26, v27, 1, v28, v29);
    v31 = *(self->_device + 2);
    v36 = objc_msgSend_name(v31, v32, v33, v34, v35);
    v40 = objc_msgSend_cStringUsingEncoding_(v36, v37, 1, v38, v39);
    sub_22E367184(self, v41, "[%s copyWithZone:device: %p] device is not supported: %s\nReturning nil.", v30, v31, v40);
LABEL_14:

    return 0;
  }

  result = objc_msgSend_allocWithZone_(v9, v10, zone, v11, v12);
  if (result)
  {
    result->_options = self->_options;
    result->_verbosityLevel = self->_verbosityLevel;
    result->_allowedOptions = self->_allowedOptions;
    result->_device = v8;
    v14 = result;
    v15 = objc_opt_class();
    v19 = objc_msgSend_libraryInfo_(v15, v16, v8, v17, v18);
    v14->_library = MPSDevice::GetMPSLibrary_DoNotUse(v8, v19, v20, v21, v22);
    label = self->_label;
    v14->_label = label;
    v24 = label;
    result = v14;
    v14->_labelHash = self->_labelHash;
    v14->_tuningParams = self->_tuningParams;
    v14->_maxTuningParams = self->_maxTuningParams;
    v14->_privateOptions = self->_privateOptions;
    v14->_enableConcurrency = self->_enableConcurrency;
  }

  return result;
}

- (id)debugDescription
{
  options = self->_options;
  if (options > 0x1D)
  {
    v4 = "<invalid options list>";
  }

  else
  {
    v4 = off_2787BF650[options];
  }

  v5 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSKernel;
  v6 = [(MPSKernel *)&v13 debugDescription];
  label = &stru_28421E100;
  if (self->_label)
  {
    label = self->_label;
  }

  v11 = *(self->_device + 2);
  if (self->_enableConcurrency)
  {
    return objc_msgSend_stringWithFormat_(v5, v7, @"%@ %@\n\tdevice:        %p\n\toptions:       %s\n\tconcurrent:    %s\n", v8, v9, v6, label, v11, v4, "YES");
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v5, v7, @"%@ %@\n\tdevice:        %p\n\toptions:       %s\n\tconcurrent:    %s\n", v8, v9, v6, label, v11, v4, "NO");
  }
}

- (void)encodeWithCoder:(id)a3
{
  v6 = self->_fileVersion.bits & 0xFFFFFF00 | 1;
  self->_fileVersion.bits = v6;
  objc_msgSend_encodeInt32_forKey_(a3, a2, v6, @"MPSKernel._fileVersion", v3);
  objc_msgSend_encodeInt64_forKey_(a3, v7, self->_options, @"MPSKernel._options", v8);
  objc_msgSend_encodeInt64_forKey_(a3, v9, self->_verbosityLevel, @"MPSKernel._verbosityLevel", v10);
  objc_msgSend_encodeInt32_forKey_(a3, v11, self->_tuningParams, @"MPSKernel._tuningParams", v12);
  objc_msgSend_encodeInt32_forKey_(a3, v13, self->_maxTuningParams, @"MPSKernel._maxTuningParams", v14);
  if (self->_label)
  {
    objc_msgSend_encodeObject_forKey_(a3, v15, self->_label, @"MPSKernel._label", v16);
  }

  else
  {
    objc_msgSend_encodeObject_forKey_(a3, v15, &stru_28421E100, @"MPSKernel._label", v16);
  }

  v21 = objc_msgSend_name(*(self->_device + 2), v17, v18, v19, v20);
  objc_msgSend_encodeObject_forKey_(a3, v22, v21, @"MPSKernel.originalDevice", v23);
  objc_msgSend_encodeInt32_forKey_(a3, v24, self->_privateOptions, @"MPSKernel.tableOptions", v25);
  enableConcurrency = self->_enableConcurrency;

  MEMORY[0x2821F9670](a3, sel_encodeBool_forKey_, enableConcurrency, @"MPSKernel.enableConcurrency", v26);
}

- (MPSKernel)initWithCoder:(NSCoder *)aDecoder
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v9 = objc_msgSend_mpsMTLDevice(aDecoder, v5, v6, v7, v8)) != 0 || (v9 = MTLCreateSystemDefaultDevice()) != 0)
  {

    return MEMORY[0x2821F9670](self, sel_initWithCoder_device_, aDecoder, v9, v10);
  }

  else
  {

    return 0;
  }
}

- (MPSKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v8 = objc_msgSend_decodeInt32ForKey_(aDecoder, a2, @"MPSKernel._fileVersion", device, v4);
  if (v8 == 1)
  {
    v12 = v8;
    v13 = objc_msgSend_sharedInitWithDevice_(self, v9, device, v10, v11);
    v17 = v13;
    if (v13)
    {
      *(v13 + 80) = v12;
      *(v13 + 8) = objc_msgSend_decodeInt64ForKey_(aDecoder, v14, @"MPSKernel._options", v15, v16);
      v17->_verbosityLevel = objc_msgSend_decodeInt64ForKey_(aDecoder, v18, @"MPSKernel._verbosityLevel", v19, v20);
      v17->_privateOptions = objc_msgSend_decodeInt32ForKey_(aDecoder, v21, @"MPSKernel.tableOptions", v22, v23);
      v24 = objc_opt_class();
      v27 = objc_msgSend_decodeObjectOfClass_forKey_(aDecoder, v25, v24, @"MPSKernel._label", v26);
      v17->_label = v27;
      v17->_labelHash = objc_msgSend_hash(v27, v28, v29, v30, v31);
      v17->_enableConcurrency = objc_msgSend_decodeBoolForKey_(aDecoder, v32, @"MPSKernel.enableConcurrency", v33, v34);
      v35 = objc_opt_class();
      v38 = objc_msgSend_decodeObjectOfClass_forKey_(aDecoder, v36, v35, @"MPSKernel.originalDevice", v37);
      if (v38)
      {
        v43 = v38;
        v44 = objc_msgSend_name(device, v39, v40, v41, v42);
        if (objc_msgSend_isEqualToString_(v44, v45, v43, v46, v47))
        {
          v17->_tuningParams = objc_msgSend_decodeInt32ForKey_(aDecoder, v48, @"MPSKernel._tuningParams", v49, v50);
          v17->_maxTuningParams = objc_msgSend_decodeInt32ForKey_(aDecoder, v51, @"MPSKernel._maxTuningParams", v52, v53);
        }
      }
    }

    return v17;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v55 = objc_opt_class();
      NSStringFromClass(v55);
      MTLReportFailure();
    }

    return 0;
  }
}

@end