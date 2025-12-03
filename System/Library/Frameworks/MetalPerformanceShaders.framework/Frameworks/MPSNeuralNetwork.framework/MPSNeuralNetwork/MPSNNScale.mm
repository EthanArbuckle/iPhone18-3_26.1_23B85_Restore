@interface MPSNNScale
- (MPSNNScale)initWithCoder:(id)coder device:(id)device;
- (MPSNNScale)initWithDevice:(id)device;
- (MPSNNScale)initWithDevice:(id)device transformProvider:(id)provider handle:(id)handle outputSize:(id *)size scaleClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setLabel:(id)label;
@end

@implementation MPSNNScale

- (MPSNNScale)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v4 = objc_opt_class();
    NSStringFromClass(v4);
    MTLReportFailure();
  }

  return 0;
}

- (MPSNNScale)initWithDevice:(id)device transformProvider:(id)provider handle:(id)handle outputSize:(id *)size scaleClass:(Class)class
{
  v12 = [class alloc];
  v19 = objc_msgSend_initWithDevice_(v12, v13, device, v14, v15, v16, v17, v18);
  if (v19)
  {
    v20 = v19;
    v48.receiver = self;
    v48.super_class = MPSNNScale;
    v21 = [(MPSCNNKernel *)&v48 initWithDevice:device];
    if (v21)
    {
      v21->_transformProvider = provider;
      v21->_handle = handle;
      var2 = size->var2;
      *&v21->_destSize.width = *&size->var0;
      v21->_destSize.depth = var2;
      v21->_filter = v20;
      v21->super._checkFlags |= 0x4000u;
      filter = v21->_filter;
      if (filter)
      {
        objc_msgSend_offset(filter, v22, v23, v24, v25, v26, v27, v28);
      }

      else
      {
        v46 = 0uLL;
        v47 = 0;
      }

      v40 = v46;
      *&v41 = v47;
      objc_msgSend_setOffset_(v21, v22, &v40, v24, v25, v26, v27, v28);
      v38 = v21->_filter;
      if (v38)
      {
        objc_msgSend_clipRect(v38, v31, v32, v33, v34, v35, v36, v37);
      }

      else
      {
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
      }

      v40 = v43;
      v41 = v44;
      v42 = v45;
      objc_msgSend_setClipRect_(v21, v31, &v40, v33, v34, v35, v36, v37);
      v21->super._encode = sub_239BDFDD4;
      v21->super._encodeData = v21;
    }

    else
    {
    }
  }

  else
  {

    return 0;
  }

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v57.receiver = self;
  v57.super_class = MPSNNScale;
  [(MPSCNNKernel *)&v57 encodeWithCoder:?];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_msgSend_encodeObject_forKey_(coder, v7, v6, @"MPSNNScale.className", v8, v9, v10, v11);
  objc_msgSend_encodeObject_forKey_(coder, v12, self->_filter, @"MPSNNScale.o", v13, v14, v15, v16);
  if (self->_transformProvider)
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    objc_msgSend_encodeObject_forKey_(coder, v24, v23, @"MPSNNScale.transformProviderName", v25, v26, v27, v28);
    objc_msgSend_encodeObject_forKey_(coder, v29, self->_transformProvider, @"MPSNNScale.o", v30, v31, v32, v33);
  }

  if (self->_handle)
  {
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    objc_msgSend_encodeObject_forKey_(coder, v36, v35, @"MPSNNScale.handleName", v37, v38, v39, v40);
    objc_msgSend_encodeObject_forKey_(coder, v41, self->_handle, @"MPSNNScale.handle.o", v42, v43, v44, v45);
  }

  p_destSize = &self->_destSize;
  objc_msgSend_encodeInteger_forKey_(coder, v17, p_destSize->width, @"MPSNNScale.destSize.x", v18, v19, v20, v21);
  objc_msgSend_encodeInteger_forKey_(coder, v47, p_destSize->height, @"MPSNNScale.destSize.y", v48, v49, v50, v51);
  objc_msgSend_encodeInteger_forKey_(coder, v52, p_destSize->depth, @"MPSNNScale.destSize.z", v53, v54, v55, v56);
}

- (MPSNNScale)initWithCoder:(id)coder device:(id)device
{
  v66.receiver = self;
  v66.super_class = MPSNNScale;
  v5 = [(MPSCNNKernel *)&v66 initWithCoder:coder device:device];
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v7 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"MPSNNScale.className", v9, v10, v11, v12);
    if (v13)
    {
      v14 = NSClassFromString(v13);
      if (v14)
      {
        v20 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v15, v14, @"MPSNNScale.o", v16, v17, v18, v19);
        if (v20)
        {
          v21 = v20;
          v22 = objc_opt_class();
          v28 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v23, v22, @"MPSNNScale.transformProviderName", v24, v25, v26, v27);
          if (v28)
          {
            v28 = NSClassFromString(v28);
            if (v28)
            {
              v28 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v29, v28, @"MPSNNScale.o", v30, v31, v32, v33);
            }
          }

          v6->_transformProvider = v28;
          v34 = objc_opt_class();
          v40 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v35, v34, @"MPSNNScale.handleName", v36, v37, v38, v39);
          if (v40)
          {
            v40 = NSClassFromString(v40);
            if (v40)
            {
              v40 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v41, v40, @"MPSNNScale.handle.o", v42, v43, v44, v45);
            }
          }

          v6->_handle = v40;
          v6->_filter = v21;
          v6->_destSize.width = objc_msgSend_decodeIntegerForKey_(coder, v46, @"MPSNNScale.destSize.x", v47, v48, v49, v50, v51);
          v6->_destSize.height = objc_msgSend_decodeIntegerForKey_(coder, v52, @"MPSNNScale.destSize.y", v53, v54, v55, v56, v57);
          v6->_destSize.depth = objc_msgSend_decodeIntegerForKey_(coder, v58, @"MPSNNScale.destSize.z", v59, v60, v61, v62, v63);
          v6->super._encode = sub_239BDFDD4;
          v6->super._encodeData = v6;
          return v6;
        }
      }
    }
  }

  else if (MTLReportFailureTypeEnabled())
  {
    v65 = objc_opt_class();
    NSStringFromClass(v65);
    MTLReportFailure();
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v15.receiver = self;
  v15.super_class = MPSNNScale;
  v7 = [MPSCNNKernel copyWithZone:sel_copyWithZone_device_ device:?];
  if (v7)
  {
    v7[41] = self->_transformProvider;
    v7[46] = self->_handle;
    v7[45] = objc_msgSend_copyWithZone_device_(self->_filter, v8, zone, device, v9, v10, v11, v12);
    depth = self->_destSize.depth;
    *(v7 + 21) = *&self->_destSize.width;
    v7[44] = depth;
    v7[36] = self->super._encode;
    v7[38] = self->super._encodeData;
  }

  return v7;
}

- (id)debugDescription
{
  v9 = MEMORY[0x277CCACA8];
  v17 = objc_msgSend_debugDescription(self->_filter, a2, v2, v3, v4, v5, v6, v7);
  transformProvider = self->_transformProvider;
  if (transformProvider)
  {
    v19 = objc_msgSend_debugDescription(transformProvider, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    v19 = @"<copy entire image>";
  }

  return objc_msgSend_stringWithFormat_(v9, v10, @"%@\n\tregion provider: %@\n\tSize: { %lu, %lu, %lu}\n", v12, v13, v14, v15, v16, v17, v19, self->_destSize.width, self->_destSize.height, self->_destSize.depth);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNScale;
  [(MPSCNNKernel *)&v3 dealloc];
}

- (void)setLabel:(id)label
{
  v11.receiver = self;
  v11.super_class = MPSNNScale;
  [(MPSKernel *)&v11 setLabel:?];
  objc_msgSend_setLabel_(self->_filter, v5, label, v6, v7, v8, v9, v10);
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset
{
  v12 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, states, method, offset, v6, v7);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (self->_destSize.depth != 1 && MTLReportFailureTypeEnabled())
    {
      v38 = objc_opt_class();
      v41 = NSStringFromClass(v38);
      MTLReportFailure();
    }

    if (*(v12 + *MEMORY[0x277CD72F8]) >= 5uLL && MTLReportFailureTypeEnabled())
    {
      v39 = objc_opt_class();
      v41 = NSStringFromClass(v39);
      selfCopy = self;
      MTLReportFailure();
    }

    if (self->_transformProvider)
    {
      objc_opt_respondsToSelector();
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          MTLReportFailure();
        }
      }
    }
  }

  v47.receiver = self;
  v47.super_class = MPSNNScale;
  selfCopy = [(MPSCNNKernel *)&v47 destinationImageDescriptorForSourceImages:images sourceStates:states paddingMethod:method sourceOffset:0, v41, selfCopy];
  *&selfCopy[*MEMORY[0x277CD7340]] = self->_destSize.width;
  *&selfCopy[*MEMORY[0x277CD7338]] = self->_destSize.height;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  objc_msgSend_setOffset_(self, v14, &v43, v15, v16, v17, v18, v19);
  transformProvider = self->_transformProvider;
  if (transformProvider)
  {
    objc_msgSend_transformForSourceImage_handle_(transformProvider, v20, v12, self->_handle, v22, v23, v24, v25);
    v43 = v27;
    v44 = v28;
    v45 = v29;
    v46 = v30;
    objc_msgSend_setScaleTransform_(self->_filter, v31, &v43, v32, v33, v34, v35, v36);
  }

  else
  {
    objc_msgSend_setScaleTransform_(self->_filter, v20, 0, v21, v22, v23, v24, v25);
  }

  return selfCopy;
}

@end