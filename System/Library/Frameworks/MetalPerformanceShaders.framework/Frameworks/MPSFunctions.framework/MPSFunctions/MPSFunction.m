@interface MPSFunction
- (MPSFunction)initWithCoder:(id)a3;
- (MPSFunction)initWithCoder:(id)a3 device:(id)a4 error:(id *)a5;
- (MPSFunction)initWithDevice:(id)a3 functionName:(id)a4 zone:(_NSZone *)a5 error:(id *)a6;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)buildAsync:(id)a3 withLibrary:(id)a4;
- (void)buildIsCompleteWithFunction:(id)a3 error:(id)a4;
- (void)buildStitchedFunctionAsyncWithName:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSFunction

- (MPSFunction)initWithDevice:(id)a3 functionName:(id)a4 zone:(_NSZone *)a5 error:(id *)a6
{
  v9 = a3;
  if (!a3)
  {
    v9 = MTLCreateSystemDefaultDevice();
    if (!v9)
    {
      if (!a6)
      {
        goto LABEL_15;
      }

      v22 = sub_239931A78("Error: could not make system default MTLDevice");
      goto LABEL_14;
    }
  }

  v24.receiver = self;
  v24.super_class = MPSFunction;
  self = [(MPSFunction *)&v24 init];
  if (self)
  {
    v16 = objc_msgSend_copyWithZone_(a4, v14, a5, v15);
    if (v16)
    {
      v17 = v16;
      self->_device = v9;
      self->_name = v17;
      self->_fileVersion.bits = 65537;
      v18 = objc_opt_new();
      self->_compilationResult = v18;
      if (v18)
      {
        v19 = sub_239931D30();
        v21 = objc_msgSend_newLibraryWithFile_error_(v9, v20, v19, a6);
        if (v21)
        {
          self->_library = v21;
          return self;
        }

        if (a6)
        {
          v22 = sub_239931A78("Internal error: Unable to find MPSFunction .metallib");
          goto LABEL_14;
        }
      }

LABEL_15:
      objc_msgSend_dealloc(self, v11, v12, v13);
      return 0;
    }

    if (!a6)
    {
      goto LABEL_15;
    }

    v22 = sub_239931A78("Error: out of memory");
LABEL_14:
    *a6 = v22;
    goto LABEL_15;
  }

  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSFunction;
  [(MPSFunction *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v4 = a4;
  if (a4 || (result = MTLCreateSystemDefaultDevice(), (v4 = result) != 0))
  {
    v10 = 0;
    v8 = objc_alloc(objc_opt_class());
    return objc_msgSend_initWithDevice_functionName_zone_error_(v8, v9, v4, self->_name, a3, &v10);
  }

  return result;
}

- (MPSFunction)initWithCoder:(id)a3
{
  if (objc_msgSend_conformsToProtocol_(a3, a2, &unk_284C6D280, v3))
  {
    v9 = objc_msgSend_mpsMTLDevice(a3, v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_autoreleasePoolPush();
  v26 = 0;
  v14 = objc_msgSend_className(self, v11, v12, v13);
  v19 = objc_msgSend_initWithCoder_device_error_(self, v15, a3, v9, &v26);
  if (v26 || !v19)
  {
    v20 = objc_msgSend_localizedDescription(v26, v16, v17, v18);
    v24 = objc_msgSend_localizedFailureReason(v26, v21, v22, v23);
    NSLog(&cfstr_InitwithcoderF.isa, v14, v20, v24);
  }

  objc_autoreleasePoolPop(v10);
  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInt32_forKey_(a3, a2, self->_fileVersion.bits & 0xFFFFFF00 | 1, @"MPSFunction._fileVersion");
  name = self->_name;

  MEMORY[0x2821F9670](a3, sel_encodeObject_forKey_, name, @"MPSFunction._name");
}

- (MPSFunction)initWithCoder:(id)a3 device:(id)a4 error:(id *)a5
{
  v9 = objc_msgSend_decodeInt32ForKey_(a3, a2, @"MPSFunction._fileVersion", a4);
  if ((v9 & 0xFE) != 0)
  {
    if (!a5)
    {
LABEL_5:
      objc_msgSend_dealloc(self, v10, v11, v12);
      return 0;
    }

    v13 = sub_239931A78("MPSFunction error: file format too new. Can only decode MPSFunction version 1");
LABEL_4:
    *a5 = v13;
    goto LABEL_5;
  }

  v15 = v9;
  v16 = objc_opt_class();
  v18 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v17, v16, @"MPSFunction._name");
  if (!v18)
  {
    if (!a5)
    {
      goto LABEL_5;
    }

    v13 = sub_239931A78("MPSFunction error: function name is missing in decoder");
    goto LABEL_4;
  }

  result = objc_msgSend_initWithDevice_functionName_zone_error_(self, v10, a4, v18, 0, a5);
  if (result)
  {
    result->_fileVersion.bits = v15;
  }

  return result;
}

- (void)buildIsCompleteWithFunction:(id)a3 error:(id)a4
{
  v4 = *(objc_msgSend_completionHandler(self->_compilationResult, a2, a3, a4) + 16);

  v4();
}

- (void)buildAsync:(id)a3 withLibrary:(id)a4
{
  compilationResult = self->_compilationResult;
  if (compilationResult)
  {
    v7 = objc_msgSend_completionHandler(compilationResult, a2, a3, a4);

    MEMORY[0x2821F9670](a4, sel_newFunctionWithDescriptor_completionHandler_, a3, v7);
  }
}

- (void)buildStitchedFunctionAsyncWithName:(id)a3
{
  name = a3;
  if (!a3)
  {
    name = self->_name;
  }

  v6 = objc_msgSend_device(self, a2, a3, v3);
  global_queue = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239932298;
  block[3] = &unk_278AAAC38;
  block[4] = self;
  block[5] = v6;
  block[6] = name;
  dispatch_async(global_queue, block);
}

- (id)debugDescription
{
  v13.receiver = self;
  v13.super_class = MPSFunction;
  v3 = [(MPSFunction *)&v13 debugDescription];
  v4 = MEMORY[0x277CCACA8];
  device = self->_device;
  v9 = objc_msgSend_name(device, v6, v7, v8);
  return objc_msgSend_stringWithFormat_(v4, v10, @"%@\n\tDevice:         %p %@\n\tFunction name:  %@\n", v11, v3, device, v9, self->_name);
}

@end