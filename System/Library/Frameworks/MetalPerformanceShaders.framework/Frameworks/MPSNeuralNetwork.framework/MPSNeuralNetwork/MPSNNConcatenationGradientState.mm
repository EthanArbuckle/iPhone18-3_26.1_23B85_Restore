@interface MPSNNConcatenationGradientState
+ (id)temporaryStateWithCommandBuffer:(id)buffer;
- (MPSNNConcatenationGradientState)initWithResource:(id)resource;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation MPSNNConcatenationGradientState

- (MPSNNConcatenationGradientState)initWithResource:(id)resource
{
  v4.receiver = self;
  v4.super_class = MPSNNConcatenationGradientState;
  result = [(MPSState *)&v4 initWithResource:resource];
  if (result)
  {
    result->_info = 0;
    *(&result->_sliceCount + 1) = 0;
  }

  return result;
}

+ (id)temporaryStateWithCommandBuffer:(id)buffer
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___MPSNNConcatenationGradientState;
  result = objc_msgSendSuper2(&v4, sel_temporaryStateWithCommandBuffer_, buffer);
  if (result)
  {
    *(result + 37) = 0;
    *(result + 73) = 0;
  }

  return result;
}

- (id)debugDescription
{
  if (*(&self->_sliceCount + 1) && (info = self->_info) != 0)
  {
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%lu", v2, v3, v4, v5, v6, info->var0);
    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%lu", v11, v12, v13, v14, v15, self->_info->var1);
    if (*(&self->_sliceCount + 1) >= 2)
    {
      v23 = 0;
      v24 = 1;
      do
      {
        v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%@, %lu", v17, v18, v19, v20, v21, v9, self->_info[v23 + 1].var0);
        v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%@, %lu", v26, v27, v28, v29, v30, v22, self->_info[v23 + 1].var1);
        ++v24;
        ++v23;
      }

      while (v24 < *(&self->_sliceCount + 1));
    }
  }

  else
  {
    v9 = &stru_284CE28E0;
    v22 = &stru_284CE28E0;
  }

  v31 = MEMORY[0x277CCACA8];
  v40.receiver = self;
  v40.super_class = MPSNNConcatenationGradientState;
  v32 = [(MPSNNGradientState *)&v40 debugDescription];
  return objc_msgSend_stringWithFormat_(v31, v33, @"%@\nslice offsets:              {%@}\nfeature channels per slice: {%@}", v34, v35, v36, v37, v38, v32, v9, v22);
}

- (void)dealloc
{
  free(self->_info);
  v3.receiver = self;
  v3.super_class = MPSNNConcatenationGradientState;
  [(MPSNNGradientState *)&v3 dealloc];
}

@end