@interface _MTLDepthStencilState
- (MTLResourceID)gpuResourceID;
- (_MTLDepthStencilState)initWithDevice:(id)device depthStencilDescriptor:(id)descriptor;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
@end

@implementation _MTLDepthStencilState

- (_MTLDepthStencilState)initWithDevice:(id)device depthStencilDescriptor:(id)descriptor
{
  v65 = 0;
  memset(v64, 0, sizeof(v64));
  _MTLMessageContextBegin_(v64, "[_MTLDepthStencilState initWithDevice:depthStencilDescriptor:]", 479, device, 10, "Creation Depth Stencil State");
  if (!device)
  {
    v59 = @"device must not be nil.";
    v60 = 4;
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v59 = @"device is not a MTLDevice.";
    v60 = 8;
LABEL_28:
    _MTLMessageContextPush_(v64, v60, v59, v7, v8, v9, v10, v11, v63.receiver);
    if (descriptor)
    {
      goto LABEL_4;
    }

LABEL_29:
    v61 = @"desc must not be nil.";
    v62 = 4;
    goto LABEL_31;
  }

  if (!descriptor)
  {
    goto LABEL_29;
  }

LABEL_4:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  v61 = @"desc is not a MTLDepthStencilDescriptor.";
  v62 = 8;
LABEL_31:
  _MTLMessageContextPush_(v64, v62, v61, v7, v8, v9, v10, v11, v63.receiver);
LABEL_5:
  if ([descriptor depthCompareFunction] >= 8)
  {
    _MTLMessageContextPush_(v64, 4, @"function is not a valid MTLCompareFunction.", v12, v13, v14, v15, v16, v63.receiver);
  }

  if ([objc_msgSend(descriptor "backFaceStencil")] >= 8)
  {
    _MTLMessageContextPush_(v64, 4, @"function is not a valid MTLCompareFunction.", v17, v18, v19, v20, v21, v63.receiver);
  }

  if ([objc_msgSend(descriptor "backFaceStencil")] >= 8)
  {
    _MTLMessageContextPush_(v64, 4, @"operation is not a valid MTLStencilOperation.", v22, v23, v24, v25, v26, v63.receiver);
  }

  if ([objc_msgSend(descriptor "backFaceStencil")] >= 8)
  {
    _MTLMessageContextPush_(v64, 4, @"operation is not a valid MTLStencilOperation.", v27, v28, v29, v30, v31, v63.receiver);
  }

  if ([objc_msgSend(descriptor "backFaceStencil")] >= 8)
  {
    _MTLMessageContextPush_(v64, 4, @"operation is not a valid MTLStencilOperation.", v32, v33, v34, v35, v36, v63.receiver);
  }

  if ([objc_msgSend(descriptor "frontFaceStencil")] >= 8)
  {
    _MTLMessageContextPush_(v64, 4, @"function is not a valid MTLCompareFunction.", v37, v38, v39, v40, v41, v63.receiver);
  }

  if ([objc_msgSend(descriptor "frontFaceStencil")] >= 8)
  {
    _MTLMessageContextPush_(v64, 4, @"operation is not a valid MTLStencilOperation.", v42, v43, v44, v45, v46, v63.receiver);
  }

  if ([objc_msgSend(descriptor "frontFaceStencil")] >= 8)
  {
    _MTLMessageContextPush_(v64, 4, @"operation is not a valid MTLStencilOperation.", v47, v48, v49, v50, v51, v63.receiver);
  }

  if ([objc_msgSend(descriptor "frontFaceStencil")] >= 8)
  {
    _MTLMessageContextPush_(v64, 4, @"operation is not a valid MTLStencilOperation.", v52, v53, v54, v55, v56, v63.receiver);
  }

  _MTLMessageContextEnd(v64);
  v63.receiver = self;
  v63.super_class = _MTLDepthStencilState;
  v57 = [(_MTLDepthStencilState *)&v63 init];
  if (v57)
  {
    v57->_device = device;
    v57->_label = [objc_msgSend(descriptor "label")];
  }

  return v57;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTLDepthStencilState;
  [(_MTLDepthStencilState *)&v3 dealloc];
}

- (id)formattedDescription:(unint64_t)description
{
  v15[6] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = _MTLDepthStencilState;
  v7 = [(_MTLDepthStencilState *)&v14 description];
  v15[0] = v5;
  v15[1] = @"label =";
  label = @"<none>";
  device = self->_device;
  if (self->_label)
  {
    label = self->_label;
  }

  v15[2] = label;
  v15[3] = v5;
  v15[4] = @"device =";
  v10 = [(MTLDevice *)device formattedDescription:description + 4];
  v11 = @"<null>";
  if (v10)
  {
    v11 = v10;
  }

  v15[5] = v11;
  result = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 6), "componentsJoinedByString:", @" "];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (MTLResourceID)gpuResourceID
{
  [(_MTLDepthStencilState *)self doesNotRecognizeSelector:a2];

  return [(_MTLDepthStencilState *)self uniqueIdentifier];
}

@end