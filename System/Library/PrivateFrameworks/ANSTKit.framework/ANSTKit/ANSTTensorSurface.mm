@interface ANSTTensorSurface
+ (ANSTTensorSurface)new;
- (ANSTTensorSurface)init;
- (ANSTTensorSurface)initWithDescriptor:(id)a3 ioSurface:(__IOSurface *)a4 error:(id *)p_isa;
- (void)dealloc;
@end

@implementation ANSTTensorSurface

- (ANSTTensorSurface)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (ANSTTensorSurface)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

- (ANSTTensorSurface)initWithDescriptor:(id)a3 ioSurface:(__IOSurface *)a4 error:(id *)p_isa
{
  v28[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  AllocSize = IOSurfaceGetAllocSize(a4);
  if (AllocSize >= objc_msgSend_sizeInBytes(v8, v10, v11))
  {
    v26.receiver = self;
    v26.super_class = ANSTTensorSurface;
    v21 = [(ANSTTensorSurface *)&v26 init];
    if (v21)
    {
      v22 = objc_msgSend_copy(v8, v19, v20);
      tensorDescriptor = v21->_tensorDescriptor;
      v21->_tensorDescriptor = v22;

      v21->_surfaceRef = a4;
      CFRetain(a4);
    }

    self = v21;
    p_isa = &self->super.isa;
  }

  else if (p_isa)
  {
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"Given IOSurface's alloc size smaller than the given tensor descriptor's required size in bytes.");
    v14 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22E65C9B0();
    }

    v15 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA068];
    v28[0] = v13;
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v28, &v27, 1);
    *p_isa = objc_msgSend_errorWithDomain_code_userInfo_(v15, v18, @"ANSTErrorDomain", 2, v17);

    p_isa = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return p_isa;
}

- (void)dealloc
{
  surfaceRef = self->_surfaceRef;
  if (surfaceRef)
  {
    CFRelease(surfaceRef);
  }

  v4.receiver = self;
  v4.super_class = ANSTTensorSurface;
  [(ANSTTensorSurface *)&v4 dealloc];
}

@end