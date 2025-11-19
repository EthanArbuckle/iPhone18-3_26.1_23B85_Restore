@interface _MTLSamplerState
- (_MTLSamplerState)initWithDevice:(id)a3 samplerDescriptor:(id)a4;
- (id)formattedDescription:(unint64_t)a3;
- (void)dealloc;
@end

@implementation _MTLSamplerState

- (_MTLSamplerState)initWithDevice:(id)a3 samplerDescriptor:(id)a4
{
  v67 = 0;
  memset(v66, 0, sizeof(v66));
  _MTLMessageContextBegin_(v66, "[_MTLSamplerState initWithDevice:samplerDescriptor:]", 752, a3, 12, "New Sampler State Validation");
  if (!a3)
  {
    v61 = @"device must not be nil.";
    v62 = 4;
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v61 = @"device is not a MTLDevice.";
    v62 = 8;
LABEL_26:
    _MTLMessageContextPush_(v66, v62, v61, v7, v8, v9, v10, v11, v65.receiver);
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_27:
    v63 = @"desc must not be nil.";
    v64 = 4;
    goto LABEL_29;
  }

  if (!a4)
  {
    goto LABEL_27;
  }

LABEL_4:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  v63 = @"desc is not a MTLSamplerDescriptor.";
  v64 = 8;
LABEL_29:
  _MTLMessageContextPush_(v66, v64, v63, v7, v8, v9, v10, v11, v65.receiver);
LABEL_5:
  if ([a4 minFilter] >= 3)
  {
    _MTLMessageContextPush_(v66, 4, @"filter is not a valid MTLSamplerMinMagFilter.", v12, v13, v14, v15, v16, v65.receiver);
  }

  if ([a4 magFilter] >= 3)
  {
    _MTLMessageContextPush_(v66, 4, @"filter is not a valid MTLSamplerMinMagFilter.", v17, v18, v19, v20, v21, v65.receiver);
  }

  if ([a4 mipFilter] >= 3)
  {
    _MTLMessageContextPush_(v66, 4, @"mipFilter is not a valid MTLSamplerMipFilter.", v22, v23, v24, v25, v26, v65.receiver);
  }

  if ([a4 borderColor] >= 4)
  {
    _MTLMessageContextPush_(v66, 4, @"borderColor is not a valid MTLSamplerBorderColorSPI.", v27, v28, v29, v30, v31, v65.receiver);
  }

  v32 = [a4 compareFunction];
  validateMTLCompareFunction(v32, v66, v33, v34, v35, v36, v37, v38, v65.receiver);
  if ([a4 reductionMode] >= 3)
  {
    _MTLMessageContextPush_(v66, 4, @"reductionMode is not a valid MTLSamplerReductionMode.", v39, v40, v41, v42, v43, v65.receiver);
  }

  if ([a4 sAddressMode] >= 7)
  {
    _MTLMessageContextPush_(v66, 4, @"addressMode is not a valid MTLSamplerAddressMode.", v44, v45, v46, v47, v48, v65.receiver);
  }

  if ([a4 tAddressMode] >= 7)
  {
    _MTLMessageContextPush_(v66, 4, @"addressMode is not a valid MTLSamplerAddressMode.", v49, v50, v51, v52, v53, v65.receiver);
  }

  if ([a4 rAddressMode] >= 7)
  {
    _MTLMessageContextPush_(v66, 4, @"addressMode is not a valid MTLSamplerAddressMode.", v54, v55, v56, v57, v58, v65.receiver);
  }

  _MTLMessageContextEnd(v66);
  v65.receiver = self;
  v65.super_class = _MTLSamplerState;
  v59 = [(_MTLSamplerState *)&v65 init];
  if (v59)
  {
    v59->_device = a3;
    v59->_label = [a4 label];
    v59->_pixelFormat = [a4 pixelFormat];
  }

  return v59;
}

- (void)dealloc
{
  self->_label = 0;

  v3.receiver = self;
  v3.super_class = _MTLSamplerState;
  [(_MTLSamplerState *)&v3 dealloc];
}

- (id)formattedDescription:(unint64_t)a3
{
  v14[6] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = _MTLSamplerState;
  v7 = [(_MTLSamplerState *)&v13 description];
  v14[0] = v5;
  v14[1] = @"label =";
  label = @"<none>";
  device = self->_device;
  if (self->_label)
  {
    label = self->_label;
  }

  v14[2] = label;
  v14[3] = v5;
  v14[4] = @"device =";
  if (device)
  {
    v10 = [(MTLDevice *)device formattedDescription:a3 + 4];
  }

  else
  {
    v10 = @"<null>";
  }

  v14[5] = v10;
  result = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v14, 6), "componentsJoinedByString:", @" "];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

@end