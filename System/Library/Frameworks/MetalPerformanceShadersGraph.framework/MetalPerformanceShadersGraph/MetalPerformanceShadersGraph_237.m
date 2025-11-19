void sub_1E06EED50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLeakyReluOpHandler *EmitterViewerSPI::MPSLeakyReluOpHandler::MPSLeakyReluOpHandler(EmitterViewerSPI::MPSLeakyReluOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48E70;
  v31 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v31);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06EF34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLessThanOpHandler *EmitterViewerSPI::MPSLessThanOpHandler::MPSLessThanOpHandler(EmitterViewerSPI::MPSLessThanOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48EA0;
  v31 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v31);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06EF768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLessThanOrEqualToOpHandler *EmitterViewerSPI::MPSLessThanOrEqualToOpHandler::MPSLessThanOrEqualToOpHandler(EmitterViewerSPI::MPSLessThanOrEqualToOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48ED0;
  v31 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v31);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06EFB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLocalConvolutionDataGradientOpHandler *EmitterViewerSPI::MPSLocalConvolutionDataGradientOpHandler::MPSLocalConvolutionDataGradientOpHandler(EmitterViewerSPI::MPSLocalConvolutionDataGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48F00;
  v5 = *(*(a3 + 6) + 8);
  v53 = a3;
  v54 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v54);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v52 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v52 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v49 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v53 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v53 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v50 = [MEMORY[0x1E695DF70] array];
  if (*(v53 + 9))
  {
    v13 = v53 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v50 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v53);
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v18 addObject:v19];

  v20 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v18 addObject:v20];

  v21 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v18 addObject:v21];

  v22 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v18 addObject:v22];

  v23 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v18 addObject:v23];

  v24 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v18 addObject:v24];

  v25 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v18 addObject:v25];

  v26 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v18 addObject:v26];

  v27 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v18 addObject:v27];

  v28 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v18 addObject:v28];

  v29 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v18 addObject:v29];

  v30 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v18 value:StorageType];
  if (v30)
  {
    [v16 addObject:v30];
  }

  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v53);
  v32 = Rewriter;
  if (Rewriter)
  {
    v33 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v33 = 0;
  }

  v34 = EmitViewerSPI::emitElementsAttrProperty(@"kernel_sizes", v32, v33);
  if (v34)
  {
    [v16 addObject:v34];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v53);
  v36 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v37 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v37 = 0;
  }

  v38 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v36, v37);
  if (v38)
  {
    [v16 addObject:v38];
  }

  v39 = [MEMORY[0x1E695DF70] array];
  v40 = [MPSGraphViewerNodeSPI alloc];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v44 = [MEMORY[0x1E695DEC8] arrayWithArray:v39];
  v45 = [(MPSGraphViewerNodeSPI *)v40 initWithType:v49 inputs:v41 outputs:v42 properties:v43 regions:v44];
  v46 = *(this + 3);
  *(this + 3) = v45;

  v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"returns the gradient of the local_convolution operation relative to the input tensor."];
  [*(this + 3) setLocalizedDescription:v47];

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F0294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLocalConvolutionOpHandler *EmitterViewerSPI::MPSLocalConvolutionOpHandler::MPSLocalConvolutionOpHandler(EmitterViewerSPI::MPSLocalConvolutionOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48F30;
  v5 = *(*(a3 + 6) + 8);
  v53 = a3;
  v54 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v54);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v52 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v52 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v49 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v53 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v53 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v50 = [MEMORY[0x1E695DF70] array];
  if (*(v53 + 9))
  {
    v13 = v53 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v50 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v53);
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v18 addObject:v19];

  v20 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v18 addObject:v20];

  v21 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v18 addObject:v21];

  v22 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v18 addObject:v22];

  v23 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v18 addObject:v23];

  v24 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v18 addObject:v24];

  v25 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v18 addObject:v25];

  v26 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v18 addObject:v26];

  v27 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v18 addObject:v27];

  v28 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v18 addObject:v28];

  v29 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v18 addObject:v29];

  v30 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v18 value:StorageType];
  if (v30)
  {
    [v16 addObject:v30];
  }

  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v53);
  v32 = Rewriter;
  if (Rewriter)
  {
    v33 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v33 = 0;
  }

  v34 = EmitViewerSPI::emitElementsAttrProperty(@"kernel_sizes", v32, v33);
  if (v34)
  {
    [v16 addObject:v34];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v53);
  v36 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v37 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v37 = 0;
  }

  v38 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v36, v37);
  if (v38)
  {
    [v16 addObject:v38];
  }

  v39 = [MEMORY[0x1E695DF70] array];
  v40 = [MPSGraphViewerNodeSPI alloc];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v44 = [MEMORY[0x1E695DEC8] arrayWithArray:v39];
  v45 = [(MPSGraphViewerNodeSPI *)v40 initWithType:v49 inputs:v41 outputs:v42 properties:v43 regions:v44];
  v46 = *(this + 3);
  *(this + 3) = v45;

  v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"For each pixel of the input image, a different set of weights is provided in the channels of the weight tensor and form a 2d filter for that pixel. The weights are arranged in HW order inside the channels of the weight tensor. The destination pixel is calculated as the weighted sum of the pixels surrounding the pixel at the same location of the input image. The input image is zero padded when the filter reaches outside of the input."}];
  [*(this + 3) setLocalizedDescription:v47];

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F0A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLocalConvolutionWeightGradientOpHandler *EmitterViewerSPI::MPSLocalConvolutionWeightGradientOpHandler::MPSLocalConvolutionWeightGradientOpHandler(EmitterViewerSPI::MPSLocalConvolutionWeightGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48F60;
  v5 = *(*(a3 + 6) + 8);
  v53 = a3;
  v54 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v54);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v52 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v52 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v49 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v53 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v53 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v50 = [MEMORY[0x1E695DF70] array];
  if (*(v53 + 9))
  {
    v13 = v53 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v50 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v53);
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v18 addObject:v19];

  v20 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v18 addObject:v20];

  v21 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v18 addObject:v21];

  v22 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v18 addObject:v22];

  v23 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v18 addObject:v23];

  v24 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v18 addObject:v24];

  v25 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v18 addObject:v25];

  v26 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v18 addObject:v26];

  v27 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v18 addObject:v27];

  v28 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v18 addObject:v28];

  v29 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v18 addObject:v29];

  v30 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v18 value:StorageType];
  if (v30)
  {
    [v16 addObject:v30];
  }

  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v53);
  v32 = Rewriter;
  if (Rewriter)
  {
    v33 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v33 = 0;
  }

  v34 = EmitViewerSPI::emitElementsAttrProperty(@"kernel_sizes", v32, v33);
  if (v34)
  {
    [v16 addObject:v34];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v53);
  v36 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v37 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v37 = 0;
  }

  v38 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v36, v37);
  if (v38)
  {
    [v16 addObject:v38];
  }

  v39 = [MEMORY[0x1E695DF70] array];
  v40 = [MPSGraphViewerNodeSPI alloc];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v44 = [MEMORY[0x1E695DEC8] arrayWithArray:v39];
  v45 = [(MPSGraphViewerNodeSPI *)v40 initWithType:v49 inputs:v41 outputs:v42 properties:v43 regions:v44];
  v46 = *(this + 3);
  *(this + 3) = v45;

  v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"returns the gradient of the local_convolution operation relative to the weight tensor."];
  [*(this + 3) setLocalizedDescription:v47];

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F119C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLogarithmBase2OpHandler *EmitterViewerSPI::MPSLogarithmBase2OpHandler::MPSLogarithmBase2OpHandler(EmitterViewerSPI::MPSLogarithmBase2OpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48F90;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F15F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLogarithmBase10OpHandler *EmitterViewerSPI::MPSLogarithmBase10OpHandler::MPSLogarithmBase10OpHandler(EmitterViewerSPI::MPSLogarithmBase10OpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48FC0;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F19D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLogarithmOpHandler *EmitterViewerSPI::MPSLogarithmOpHandler::MPSLogarithmOpHandler(EmitterViewerSPI::MPSLogarithmOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48FF0;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F1DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSMatMulOpHandler *EmitterViewerSPI::MPSMatMulOpHandler::MPSMatMulOpHandler(EmitterViewerSPI::MPSMatMulOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49020;
  v5 = *(*(a3 + 6) + 8);
  v36 = a3;
  v37 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v37);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v35 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v35 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v32 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(v36 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(v36 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v36 + 9))
  {
    v14 = v36 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v37) = mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v36);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"transpose_lhs" dataType:2147483656 shape:&unk_1F5B766A0];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v37 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v36);
  v20 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"transpose_rhs" dataType:2147483656 shape:&unk_1F5B766B8];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&TransposeRhs length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v32 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;
  v30 = ;
  [*(this + 3) setLocalizedDescription:v30];

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F22BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSMaterializeSparseTensorOpHandler *EmitterViewerSPI::MPSMaterializeSparseTensorOpHandler::MPSMaterializeSparseTensorOpHandler(EmitterViewerSPI::MPSMaterializeSparseTensorOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49050;
  v4 = *(*(a3 + 6) + 8);
  v49 = a3;
  v50 = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&v50);
  v6 = strlen(AttrData);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v48 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v48 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v45 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v49, 0);
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"sparse_values", *(*(v49 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v11)
  {
    [v9 addObject:v11];
  }

  v12 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v49, 1u);
  if ((*(v49 + 46) & 0x80) != 0)
  {
    v13 = *(v49 + 9);
    v14 = v12;
    v15 = (HIDWORD(v12) + v12);
    v16 = v15 - v12;
    if (v15 == v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v13 = 0;
    v14 = v12;
    v38 = (HIDWORD(v12) + v12);
    v16 = v38 - v12;
    if (v38 == v12)
    {
      goto LABEL_14;
    }
  }

  v39 = 0;
  v40 = v13 + 32 * v14;
  v41 = 1;
  do
  {
    v42 = *(v40 + 32 * v39 + 24);
    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"index_tensors%d", v41 - 1];
    v44 = EmitViewerSPI::emitNodeInputPort(a2, v43, v42);

    if (v44)
    {
      [v9 addObject:v44];
    }

    v39 = v41++;
  }

  while (v16 > v39);
LABEL_14:

  v17 = [MEMORY[0x1E695DF70] array];
  if (*(v49 + 9))
  {
    v18 = v49 - 16;
  }

  else
  {
    v18 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  v20 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v20)
  {
    [v17 addObject:v20];
  }

  v21 = [MEMORY[0x1E695DF70] array];
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v49);
  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"COO" value:0];
  [v23 addObject:v24];

  v25 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CSC" value:1];
  [v23 addObject:v25];

  v26 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CSR" value:2];
  [v23 addObject:v26];

  v27 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"storage_type" type:@"MPSSparseTensorStorage" cases:v23 value:StorageType];
  if (v27)
  {
    [v21 addObject:v27];
  }

  v28 = [MEMORY[0x1E695DF70] array];
  v29 = [MPSGraphViewerNodeSPI alloc];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v31 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v21];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v28];
  v34 = [(MPSGraphViewerNodeSPI *)v29 initWithType:v45 inputs:v30 outputs:v31 properties:v32 regions:v33];
  v35 = *(this + 3);
  *(this + 3) = v34;
  v36 = ;
  [*(this + 3) setLocalizedDescription:v36];

  if (v48 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F28A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSMatrixDecompositionLUOpHandler *EmitterViewerSPI::MPSMatrixDecompositionLUOpHandler::MPSMatrixDecompositionLUOpHandler(EmitterViewerSPI::MPSMatrixDecompositionLUOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49080;
  v38 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v38);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v37 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"lu_matrix", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  if (*(a3 + 9))
  {
    v16 = a3 - 16;
  }

  else
  {
    v16 = 0;
  }

  v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 1);
  v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  v19 = EmitViewerSPI::emitNodeOutputPort(a2, @"pivot_indices", v18);
  if (v19)
  {
    [v12 addObject:v19];
  }

  if (*(a3 + 9))
  {
    v20 = a3 - 16;
  }

  else
  {
    v20 = 0;
  }

  v21 = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 2);
  v22 = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0);
  v23 = EmitViewerSPI::emitNodeOutputPort(a2, @"lu_status", v22);
  if (v23)
  {
    [v12 addObject:v23];
  }

  v24 = [MEMORY[0x1E695DF70] array];
  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v24];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Return the LU decomposition of an input matrix A as A = P*L*U The result contains the LU decomposition in packed form, a pivot_indices matrix to track matrix pivots and a status"}];
  [*(this + 3) setLocalizedDescription:v33];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F2D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSMatrixInverseOpHandler *EmitterViewerSPI::MPSMatrixInverseOpHandler::MPSMatrixInverseOpHandler(EmitterViewerSPI::MPSMatrixInverseOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B490B0;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input_matrix", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"inverse_matrix", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Computes inverse for a square input"];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F318C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSMatrixSolverLUOpHandler *EmitterViewerSPI::MPSMatrixSolverLUOpHandler::MPSMatrixSolverLUOpHandler(EmitterViewerSPI::MPSMatrixSolverLUOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B490E0;
  v32 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v32);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v31 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v31 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v29 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lu_matrix", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"pivot_indices", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs_matrix", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v15 = a3 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"solution_matrix", NextResultAtOffset);
  if (v17)
  {
    [v14 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [MPSGraphViewerNodeSPI alloc];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v14];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v25 = [(MPSGraphViewerNodeSPI *)v20 initWithType:v29 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Solves for x, in the equation Ax = b. Inputs are LU factorized matrix of A, permutation matrix (P), rhs matrix (b). Returns x"}];
  [*(this + 3) setLocalizedDescription:v27];

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F35D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSMaximumOpHandler *EmitterViewerSPI::MPSMaximumOpHandler::MPSMaximumOpHandler(EmitterViewerSPI::MPSMaximumOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49110;
  v31 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v31);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F3A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSMinimumOpHandler *EmitterViewerSPI::MPSMinimumOpHandler::MPSMinimumOpHandler(EmitterViewerSPI::MPSMinimumOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49140;
  v31 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v31);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F3E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSModuloOpHandler *EmitterViewerSPI::MPSModuloOpHandler::MPSModuloOpHandler(EmitterViewerSPI::MPSModuloOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49170;
  v31 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v31);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F4244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSMultiplyOpHandler *EmitterViewerSPI::MPSMultiplyOpHandler::MPSMultiplyOpHandler(EmitterViewerSPI::MPSMultiplyOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B491A0;
  v31 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v31);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F4660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNReluOpHandler *EmitterViewerSPI::MPSNReluOpHandler::MPSNReluOpHandler(EmitterViewerSPI::MPSNReluOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B491D0;
  v32 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v32);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v31 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v31 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v29 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"primary", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"secondary", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"tertiary", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v15 = a3 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v17)
  {
    [v14 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [MPSGraphViewerNodeSPI alloc];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v14];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v25 = [(MPSGraphViewerNodeSPI *)v20 initWithType:v29 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;
  v27 = ;
  [*(this + 3) setLocalizedDescription:v27];

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F4AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNandOpHandler *EmitterViewerSPI::MPSNandOpHandler::MPSNandOpHandler(EmitterViewerSPI::MPSNandOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49200;
  v31 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v31);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F4EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNegativeOpHandler *EmitterViewerSPI::MPSNegativeOpHandler::MPSNegativeOpHandler(EmitterViewerSPI::MPSNegativeOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49230;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F52D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNonMaximumSuppressionOpHandler *EmitterViewerSPI::MPSNonMaximumSuppressionOpHandler::MPSNonMaximumSuppressionOpHandler(EmitterViewerSPI::MPSNonMaximumSuppressionOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49260;
  v5 = *(*(a3 + 6) + 8);
  v59 = a3;
  v60 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v60);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v58 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v58 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v55 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::NonMaximumSuppressionOp::getODSOperandIndexAndLength(&v59, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"boxes", *(*(v59 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::NonMaximumSuppressionOp::getODSOperandIndexAndLength(&v59, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"scores", *(*(v59 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::NonMaximumSuppressionOp::getODSOperandIndexAndLength(&v59, 2u);
  if ((*(v59 + 46) & 0x80) != 0)
  {
    v16 = *(v59 + 9);
    v17 = v15;
    if (HIDWORD(v15) + v15 == v15)
    {
LABEL_16:
      v18 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v16 = 0;
    v17 = v15;
    if (HIDWORD(v15) + v15 == v15)
    {
      goto LABEL_16;
    }
  }

  v18 = *(v16 + 32 * v17 + 24);
LABEL_19:
  v19 = EmitViewerSPI::emitNodeInputPort(a2, @"class_indices", v18);
  if (v19)
  {
    [v10 addObject:v19];
  }

  v20 = mlir::mps::NonMaximumSuppressionOp::getODSOperandIndexAndLength(&v59, 3u);
  v21 = EmitViewerSPI::emitNodeInputPort(a2, @"iou_threshold", *(*(v59 + 9) + 32 * v20 + 24));
  if (v21)
  {
    [v10 addObject:v21];
  }

  v22 = mlir::mps::NonMaximumSuppressionOp::getODSOperandIndexAndLength(&v59, 4u);
  v23 = EmitViewerSPI::emitNodeInputPort(a2, @"score_threshold", *(*(v59 + 9) + 32 * v22 + 24));
  if (v23)
  {
    [v10 addObject:v23];
  }

  v24 = [MEMORY[0x1E695DF70] array];
  if (*(v59 + 9))
  {
    v25 = v59 - 16;
  }

  else
  {
    v25 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
  v27 = EmitViewerSPI::emitNodeOutputPort(a2, @"selected_indices", NextResultAtOffset);
  if (v27)
  {
    [v24 addObject:v27];
  }

  if (*(v59 + 9))
  {
    v28 = v59 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 1);
  v30 = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0);
  v31 = EmitViewerSPI::emitNodeOutputPort(a2, @"num_boxes", v30);
  if (v31)
  {
    [v24 addObject:v31];
  }

  v32 = [MEMORY[0x1E695DF70] array];
  NormalizeCoordinates = mlir::mps::CostVolumeOp::getNormalizeCoordinates(&v59);
  v33 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"per_class_suppression" dataType:2147483656 shape:&unk_1F5B766D0];
  if (v33)
  {
    v34 = [MEMORY[0x1E695DEF0] dataWithBytes:&NormalizeCoordinates length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v33 setValue:v34];

    [v32 addObject:v33];
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v59);
  v36 = [MEMORY[0x1E695DF70] array];
  v37 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"cornersHeightFirst" value:0];
  [v36 addObject:v37];

  v38 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"cornersWidthFirst" value:1];
  [v36 addObject:v38];

  v39 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"centersHeightFirst" value:2];
  [v36 addObject:v39];

  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"centersWidthFirst" value:3];
  [v36 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"coordinate_mode" type:@"MPSCropResizeCoordinateMode" cases:v36 value:StorageType];
  if (v41)
  {
    [v32 addObject:v41];
  }

  MaxBoxes = mlir::mps::NonMaximumSuppressionOp::getMaxBoxes(&v59);
  LODWORD(v60) = MaxBoxes;
  BYTE4(v60) = BYTE4(MaxBoxes);
  if ((MaxBoxes & 0x100000000) != 0)
  {
    v43 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"max_boxes" dataType:32 shape:&unk_1F5B766E8];
    if (v43)
    {
      if ((v60 & 0x100000000) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v44 = [MEMORY[0x1E695DEF0] dataWithBytes:&v60 length:8];
      [(MPSGraphViewerNodePropertyDataSPI *)v43 setValue:v44];

      [v32 addObject:v43];
    }
  }

  v45 = [MEMORY[0x1E695DF70] array];
  v46 = [MPSGraphViewerNodeSPI alloc];
  v47 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v48 = [MEMORY[0x1E695DEC8] arrayWithArray:v24];
  v49 = [MEMORY[0x1E695DEC8] arrayWithArray:v32];
  v50 = [MEMORY[0x1E695DEC8] arrayWithArray:v45];
  v51 = [(MPSGraphViewerNodeSPI *)v46 initWithType:v55 inputs:v47 outputs:v48 properties:v49 regions:v50];
  v52 = *(this + 3);
  *(this + 3) = v51;
  v53 = ;
  [*(this + 3) setLocalizedDescription:v53];

  if (v58 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F5A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNonZeroOpHandler *EmitterViewerSPI::MPSNonZeroOpHandler::MPSNonZeroOpHandler(EmitterViewerSPI::MPSNonZeroOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49290;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F5F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNorOpHandler *EmitterViewerSPI::MPSNorOpHandler::MPSNorOpHandler(EmitterViewerSPI::MPSNorOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B492C0;
  v31 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v31);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F6394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNormalizationOpHandler *EmitterViewerSPI::MPSNormalizationOpHandler::MPSNormalizationOpHandler(EmitterViewerSPI::MPSNormalizationOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v40[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B492F0;
  v5 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v37 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"mean", *(*(v38 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"variance", *(*(v38 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"gamma", *(*(v38 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"beta", *(*(v38 + 9) + 152));
  if (v15)
  {
    [v10 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v17 = v38 - 16;
  }

  else
  {
    v17 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  v19 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v19)
  {
    [v16 addObject:v19];
  }

  v20 = [MEMORY[0x1E695DF70] array];
  mlir::mps::InstanceNormOp::getEpsilon(&v38, &v39);
  v21 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"epsilon" dataType:268435488 shape:&unk_1F5B76700];
  if (v21)
  {
    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v20 addObject:v21];
  }

  v23 = v40[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v24) == v23)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v40);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v40);
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v20];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;
  v33 = ;
  [*(this + 3) setLocalizedDescription:v33];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F6924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNotEqualToOpHandler *EmitterViewerSPI::MPSNotEqualToOpHandler::MPSNotEqualToOpHandler(EmitterViewerSPI::MPSNotEqualToOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49320;
  v31 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v31);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F6D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNotOpHandler *EmitterViewerSPI::MPSNotOpHandler::MPSNotOpHandler(EmitterViewerSPI::MPSNotOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49350;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F7184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSOneHotOpHandler *EmitterViewerSPI::MPSOneHotOpHandler::MPSOneHotOpHandler(EmitterViewerSPI::MPSOneHotOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49380;
  v5 = *(*(a3 + 6) + 8);
  v32 = a3;
  v33 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v33);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v31 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v31 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v29 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(v32 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"depth", *(*(v32 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v32 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x1E695DF70] array];
  if (*(v32 + 9))
  {
    v15 = v32 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v17)
  {
    [v14 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  mlir::pdl_interp::CheckTypeOp::getType(&v32);
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [MPSGraphViewerNodeSPI alloc];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v14];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v25 = [(MPSGraphViewerNodeSPI *)v20 initWithType:v29 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;
  v27 = ;
  [*(this + 3) setLocalizedDescription:v27];

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F75E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSOrOpHandler *EmitterViewerSPI::MPSOrOpHandler::MPSOrOpHandler(EmitterViewerSPI::MPSOrOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B493B0;
  v31 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v31);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F7A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPReluOpHandler *EmitterViewerSPI::MPSPReluOpHandler::MPSPReluOpHandler(EmitterViewerSPI::MPSPReluOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B493E0;
  v31 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v31);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Where i = 1 ... C, if x_i > 0, return x_i, otherwise return alpha_i * x_i."}];
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F7E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPadGradientOpHandler *EmitterViewerSPI::MPSPadGradientOpHandler::MPSPadGradientOpHandler(EmitterViewerSPI::MPSPadGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49410;
  v5 = *(*(a3 + 6) + 8);
  v39 = a3;
  v40 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v40);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v38 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v38 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v39 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v39 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"paddings", *(*(v39 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v36 = [MEMORY[0x1E695DF70] array];
  if (*(v39 + 9))
  {
    v14 = v39 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v36 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v39);
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"constant" value:0];
  [v19 addObject:v20];

  v21 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"reflect" value:1];
  [v19 addObject:v21];

  v22 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"symmetric" value:2];
  [v19 addObject:v22];

  v23 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"clampToEdge" value:3];
  [v19 addObject:v23];

  v24 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"paddingMode" type:@"MPSPaddingMode" cases:v19 value:StorageType];
  if (v24)
  {
    [v17 addObject:v24];
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v36];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;
  v33 = ;
  [*(this + 3) setLocalizedDescription:v33];

  if (v38 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F83A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPadOpHandler *EmitterViewerSPI::MPSPadOpHandler::MPSPadOpHandler(EmitterViewerSPI::MPSPadOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49440;
  v5 = *(*(a3 + 6) + 8);
  v39 = a3;
  v40 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v40);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v38 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v38 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v39 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"paddings", *(*(v39 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"constant_values", *(*(v39 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v36 = [MEMORY[0x1E695DF70] array];
  if (*(v39 + 9))
  {
    v14 = v39 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v36 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v39);
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"constant" value:0];
  [v19 addObject:v20];

  v21 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"reflect" value:1];
  [v19 addObject:v21];

  v22 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"symmetric" value:2];
  [v19 addObject:v22];

  v23 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"clampToEdge" value:3];
  [v19 addObject:v23];

  v24 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"paddingMode" type:@"MPSPaddingMode" cases:v19 value:StorageType];
  if (v24)
  {
    [v17 addObject:v24];
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v36];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Pad the input tensor specifying padding values and padding mode"];
  [*(this + 3) setLocalizedDescription:v33];

  if (v38 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F8964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPermuteOpHandler *EmitterViewerSPI::MPSPermuteOpHandler::MPSPermuteOpHandler(EmitterViewerSPI::MPSPermuteOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49470;
  v31 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v31);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"perm", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F8DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPlaceholderOpHandler *EmitterViewerSPI::MPSPlaceholderOpHandler::MPSPlaceholderOpHandler(EmitterViewerSPI::MPSPlaceholderOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B494A0;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v12 = a3 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v11 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MPSGraphViewerNodeSPI alloc];
  v18 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [(MPSGraphViewerNodeSPI *)v17 initWithType:v26 inputs:v18 outputs:v19 properties:v20 regions:v21];
  v23 = *(this + 3);
  *(this + 3) = v22;

  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Inserts a placeholder for a tensor that will be always fed."];
  [*(this + 3) setLocalizedDescription:v24];

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F9184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPoolAvgGradientOpHandler *EmitterViewerSPI::MPSPoolAvgGradientOpHandler::MPSPoolAvgGradientOpHandler(EmitterViewerSPI::MPSPoolAvgGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B494D0;
  v5 = *(*(a3 + 6) + 8);
  v62 = a3;
  v63 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v63);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v61 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v61 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v57 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v58 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v62 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v62 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v62 + 9))
  {
    v14 = v62 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v62);
  v19 = WindowSizes;
  if (WindowSizes)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(@"window_sizes", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  Strides = mlir::mps::Conv3DOp::getStrides(&v62);
  v23 = Strides;
  if (Strides)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v23, v24);
  if (v25)
  {
    [v17 addObject:v25];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v62);
  v27 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v27, v28);
  if (v29)
  {
    [v17 addObject:v29];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v62);
  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v31 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v31 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v31 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v31 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v31 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v31 value:PaddingStyle];
  if (v37)
  {
    [v17 addObject:v37];
  }

  Offsets = mlir::mps::StencilOp::getOffsets(&v62);
  if (v39)
  {
    v40 = Offsets;
    if (Offsets)
    {
      v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Offsets + 8);
    }

    else
    {
      v41 = 0;
    }

    v42 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v40, v41);
    if (v42)
    {
      [v17 addObject:v42];
    }
  }

  LOBYTE(v63) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v62);
  v43 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"ceil_mode" dataType:2147483656 shape:&unk_1F5B76718];
  if (v43)
  {
    v44 = [MEMORY[0x1E695DEF0] dataWithBytes:&v63 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v43 setValue:v44];

    [v17 addObject:v43];
  }

  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v62);
  v45 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"include_zero_pad" dataType:2147483656 shape:&unk_1F5B76730];
  if (v45)
  {
    v46 = [MEMORY[0x1E695DEF0] dataWithBytes:&ResetAfter length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v45 setValue:v46];

    [v17 addObject:v45];
  }

  v47 = [MEMORY[0x1E695DF70] array];
  v48 = [MPSGraphViewerNodeSPI alloc];
  v49 = [MEMORY[0x1E695DEC8] arrayWithArray:v58];
  v50 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v51 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v52 = [MEMORY[0x1E695DEC8] arrayWithArray:v47];
  v53 = [(MPSGraphViewerNodeSPI *)v48 initWithType:v57 inputs:v49 outputs:v50 properties:v51 regions:v52];
  v54 = *(this + 3);
  *(this + 3) = v53;

  v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Computes the gradient backpropagation for the pooling operation in four dimensions. If indices are provided, then output_shape should be provided too and input should not be provided. If input is provided, then indices and output_shape should not be provided."}];
  [*(this + 3) setLocalizedDescription:v55];

  if (v61 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06F990C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPoolAvgOpHandler *EmitterViewerSPI::MPSPoolAvgOpHandler::MPSPoolAvgOpHandler(EmitterViewerSPI::MPSPoolAvgOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49500;
  v5 = *(*(a3 + 6) + 8);
  v60 = a3;
  v61 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v61);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v59 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v59 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v55 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v60 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v56 = [MEMORY[0x1E695DF70] array];
  if (*(v60 + 9))
  {
    v12 = v60 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v56 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v60);
  v17 = WindowSizes;
  if (WindowSizes)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
  }

  else
  {
    v18 = 0;
  }

  v19 = EmitViewerSPI::emitElementsAttrProperty(@"window_sizes", v17, v18);
  if (v19)
  {
    [v15 addObject:v19];
  }

  Strides = mlir::mps::Conv3DOp::getStrides(&v60);
  v21 = Strides;
  if (Strides)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v22 = 0;
  }

  v23 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v21, v22);
  if (v23)
  {
    [v15 addObject:v23];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v60);
  v25 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v26 = 0;
  }

  v27 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v25, v26);
  if (v27)
  {
    [v15 addObject:v27];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v60);
  v29 = [MEMORY[0x1E695DF70] array];
  v30 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v29 addObject:v30];

  v31 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v29 addObject:v31];

  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v29 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v29 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v29 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v29 value:PaddingStyle];
  if (v35)
  {
    [v15 addObject:v35];
  }

  Offsets = mlir::mps::StencilOp::getOffsets(&v60);
  if (v37)
  {
    v38 = Offsets;
    if (Offsets)
    {
      v39 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Offsets + 8);
    }

    else
    {
      v39 = 0;
    }

    v40 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v38, v39);
    if (v40)
    {
      [v15 addObject:v40];
    }
  }

  LOBYTE(v61) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v60);
  v41 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"ceil_mode" dataType:2147483656 shape:&unk_1F5B76748];
  if (v41)
  {
    v42 = [MEMORY[0x1E695DEF0] dataWithBytes:&v61 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v41 setValue:v42];

    [v15 addObject:v41];
  }

  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v60);
  v43 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"include_zero_pad" dataType:2147483656 shape:&unk_1F5B76760];
  if (v43)
  {
    v44 = [MEMORY[0x1E695DEF0] dataWithBytes:&ResetAfter length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v43 setValue:v44];

    [v15 addObject:v43];
  }

  v45 = [MEMORY[0x1E695DF70] array];
  v46 = [MPSGraphViewerNodeSPI alloc];
  v47 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v48 = [MEMORY[0x1E695DEC8] arrayWithArray:v56];
  v49 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v50 = [MEMORY[0x1E695DEC8] arrayWithArray:v45];
  v51 = [(MPSGraphViewerNodeSPI *)v46 initWithType:v55 inputs:v47 outputs:v48 properties:v49 regions:v50];
  v52 = *(this + 3);
  *(this + 3) = v51;
  v53 = ;
  [*(this + 3) setLocalizedDescription:v53];

  if (v59 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06FA160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPoolL2NormGradientOpHandler *EmitterViewerSPI::MPSPoolL2NormGradientOpHandler::MPSPoolL2NormGradientOpHandler(EmitterViewerSPI::MPSPoolL2NormGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49530;
  v5 = *(*(a3 + 6) + 8);
  v62 = a3;
  v63 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v63);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v61 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v61 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v57 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v58 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v62 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v62 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v62 + 9))
  {
    v14 = v62 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v62);
  v19 = WindowSizes;
  if (WindowSizes)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(@"window_sizes", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  Strides = mlir::mps::Conv3DOp::getStrides(&v62);
  v23 = Strides;
  if (Strides)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v23, v24);
  if (v25)
  {
    [v17 addObject:v25];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v62);
  v27 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v27, v28);
  if (v29)
  {
    [v17 addObject:v29];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v62);
  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v31 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v31 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v31 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v31 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v31 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v31 value:PaddingStyle];
  if (v37)
  {
    [v17 addObject:v37];
  }

  Offsets = mlir::mps::StencilOp::getOffsets(&v62);
  if (v39)
  {
    v40 = Offsets;
    if (Offsets)
    {
      v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Offsets + 8);
    }

    else
    {
      v41 = 0;
    }

    v42 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v40, v41);
    if (v42)
    {
      [v17 addObject:v42];
    }
  }

  LOBYTE(v63) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v62);
  v43 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"ceil_mode" dataType:2147483656 shape:&unk_1F5B76778];
  if (v43)
  {
    v44 = [MEMORY[0x1E695DEF0] dataWithBytes:&v63 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v43 setValue:v44];

    [v17 addObject:v43];
  }

  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v62);
  v45 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"include_zero_pad" dataType:2147483656 shape:&unk_1F5B76790];
  if (v45)
  {
    v46 = [MEMORY[0x1E695DEF0] dataWithBytes:&ResetAfter length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v45 setValue:v46];

    [v17 addObject:v45];
  }

  v47 = [MEMORY[0x1E695DF70] array];
  v48 = [MPSGraphViewerNodeSPI alloc];
  v49 = [MEMORY[0x1E695DEC8] arrayWithArray:v58];
  v50 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v51 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v52 = [MEMORY[0x1E695DEC8] arrayWithArray:v47];
  v53 = [(MPSGraphViewerNodeSPI *)v48 initWithType:v57 inputs:v49 outputs:v50 properties:v51 regions:v52];
  v54 = *(this + 3);
  *(this + 3) = v53;

  v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Computes the gradient backpropagation for the pooling operation in four dimensions. If indices are provided, then output_shape should be provided too and input should not be provided. If input is provided, then indices and output_shape should not be provided."}];
  [*(this + 3) setLocalizedDescription:v55];

  if (v61 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06FA9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPoolL2NormOpHandler *EmitterViewerSPI::MPSPoolL2NormOpHandler::MPSPoolL2NormOpHandler(EmitterViewerSPI::MPSPoolL2NormOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49560;
  v5 = *(*(a3 + 6) + 8);
  v60 = a3;
  v61 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v61);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v59 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v59 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v55 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v60 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v56 = [MEMORY[0x1E695DF70] array];
  if (*(v60 + 9))
  {
    v12 = v60 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v56 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v60);
  v17 = WindowSizes;
  if (WindowSizes)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
  }

  else
  {
    v18 = 0;
  }

  v19 = EmitViewerSPI::emitElementsAttrProperty(@"window_sizes", v17, v18);
  if (v19)
  {
    [v15 addObject:v19];
  }

  Strides = mlir::mps::Conv3DOp::getStrides(&v60);
  v21 = Strides;
  if (Strides)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v22 = 0;
  }

  v23 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v21, v22);
  if (v23)
  {
    [v15 addObject:v23];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v60);
  v25 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v26 = 0;
  }

  v27 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v25, v26);
  if (v27)
  {
    [v15 addObject:v27];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v60);
  v29 = [MEMORY[0x1E695DF70] array];
  v30 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v29 addObject:v30];

  v31 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v29 addObject:v31];

  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v29 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v29 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v29 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v29 value:PaddingStyle];
  if (v35)
  {
    [v15 addObject:v35];
  }

  Offsets = mlir::mps::StencilOp::getOffsets(&v60);
  if (v37)
  {
    v38 = Offsets;
    if (Offsets)
    {
      v39 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Offsets + 8);
    }

    else
    {
      v39 = 0;
    }

    v40 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v38, v39);
    if (v40)
    {
      [v15 addObject:v40];
    }
  }

  LOBYTE(v61) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v60);
  v41 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"ceil_mode" dataType:2147483656 shape:&unk_1F5B767A8];
  if (v41)
  {
    v42 = [MEMORY[0x1E695DEF0] dataWithBytes:&v61 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v41 setValue:v42];

    [v15 addObject:v41];
  }

  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v60);
  v43 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"include_zero_pad" dataType:2147483656 shape:&unk_1F5B767C0];
  if (v43)
  {
    v44 = [MEMORY[0x1E695DEF0] dataWithBytes:&ResetAfter length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v43 setValue:v44];

    [v15 addObject:v43];
  }

  v45 = [MEMORY[0x1E695DF70] array];
  v46 = [MPSGraphViewerNodeSPI alloc];
  v47 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v48 = [MEMORY[0x1E695DEC8] arrayWithArray:v56];
  v49 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v50 = [MEMORY[0x1E695DEC8] arrayWithArray:v45];
  v51 = [(MPSGraphViewerNodeSPI *)v46 initWithType:v55 inputs:v47 outputs:v48 properties:v49 regions:v50];
  v52 = *(this + 3);
  *(this + 3) = v51;
  v53 = ;
  [*(this + 3) setLocalizedDescription:v53];

  if (v59 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06FB22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPoolMaxGradientOpHandler *EmitterViewerSPI::MPSPoolMaxGradientOpHandler::MPSPoolMaxGradientOpHandler(EmitterViewerSPI::MPSPoolMaxGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49590;
  v5 = *(*(a3 + 6) + 8);
  v89 = a3;
  v90 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v90);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v88 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v88 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v83 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v84 = v10;
  ODSOperandIndexAndLength = mlir::mps::PoolMaxGradientOp::getODSOperandIndexAndLength(&v89, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v89 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::PoolMaxGradientOp::getODSOperandIndexAndLength(&v89, 1u);
  if ((*(v89 + 46) & 0x80) != 0)
  {
    v14 = *(v89 + 9);
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_14;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
LABEL_17:
  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"input", v16);
  if (v17)
  {
    [v10 addObject:v17];
  }

  v18 = mlir::mps::PoolMaxGradientOp::getODSOperandIndexAndLength(&v89, 2u);
  if ((*(v89 + 46) & 0x80) != 0)
  {
    v19 = *(v89 + 9);
    v20 = v18;
    if (HIDWORD(v18) + v18 == v18)
    {
LABEL_21:
      v21 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v19 = 0;
    v20 = v18;
    if (HIDWORD(v18) + v18 == v18)
    {
      goto LABEL_21;
    }
  }

  v21 = *(v19 + 32 * v20 + 24);
LABEL_24:
  v22 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", v21);
  if (v22)
  {
    [v10 addObject:v22];
  }

  v23 = mlir::mps::PoolMaxGradientOp::getODSOperandIndexAndLength(&v89, 3u);
  if ((*(v89 + 46) & 0x80) != 0)
  {
    v24 = *(v89 + 9);
    v25 = v23;
    if (HIDWORD(v23) + v23 == v23)
    {
LABEL_28:
      v26 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v24 = 0;
    v25 = v23;
    if (HIDWORD(v23) + v23 == v23)
    {
      goto LABEL_28;
    }
  }

  v26 = *(v24 + 32 * v25 + 24);
LABEL_31:
  v27 = EmitViewerSPI::emitNodeInputPort(a2, @"output_shape", v26);
  if (v27)
  {
    [v10 addObject:v27];
  }

  v85 = [MEMORY[0x1E695DF70] array];
  if (*(v89 + 9))
  {
    v28 = v89 - 16;
  }

  else
  {
    v28 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0);
  v30 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v30)
  {
    [v85 addObject:v30];
  }

  v31 = [MEMORY[0x1E695DF70] array];
  WindowSizes = mlir::mps::PoolMaxGradientOp::getWindowSizes(&v89);
  v33 = WindowSizes;
  if (WindowSizes)
  {
    v34 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
  }

  else
  {
    v34 = 0;
  }

  v35 = EmitViewerSPI::emitElementsAttrProperty(@"window_sizes", v33, v34);
  v82 = v35;
  if (v35)
  {
    [v31 addObject:v35];
  }

  Strides = mlir::mps::PoolMaxGradientOp::getStrides(&v89);
  v37 = Strides;
  if (Strides)
  {
    v38 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v38 = 0;
  }

  v39 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v37, v38);
  if (v39)
  {
    [v31 addObject:v39];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v89);
  v41 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v42 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v42 = 0;
  }

  v43 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v41, v42);
  if (v43)
  {
    [v31 addObject:v43];
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v89);
  v45 = [MEMORY[0x1E695DF70] array];
  v46 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v45 addObject:v46];

  v47 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v45 addObject:v47];

  v48 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v45 addObject:v48];

  v49 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v45 addObject:v49];

  v50 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v45 addObject:v50];

  v51 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v45 value:WeightsLayout];
  if (v51)
  {
    [v31 addObject:v51];
  }

  Offsets = mlir::mps::StencilOp::getOffsets(&v89);
  if (v53)
  {
    v54 = Offsets;
    if (Offsets)
    {
      v55 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Offsets + 8);
    }

    else
    {
      v55 = 0;
    }

    v56 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v54, v55);
    if (v56)
    {
      [v31 addObject:v56];
    }
  }

  LOBYTE(v90) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v89);
  v57 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"ceil_mode" dataType:2147483656 shape:&unk_1F5B767D8];
  if (v57)
  {
    v58 = [MEMORY[0x1E695DEF0] dataWithBytes:&v90 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v57 setValue:v58];

    [v31 addObject:v57];
  }

  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v89);
  v59 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"include_zero_pad" dataType:2147483656 shape:&unk_1F5B767F0];
  if (v59)
  {
    v60 = [MEMORY[0x1E695DEF0] dataWithBytes:&ResetAfter length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v59 setValue:v60];

    [v31 addObject:v59];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v89);
  v62 = [MEMORY[0x1E695DF70] array];
  v63 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Global_Flatten1D" value:0];
  [v62 addObject:v63];

  v64 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Global_Flatten2D" value:1];
  [v62 addObject:v64];

  v65 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Global_Flatten3D" value:2];
  [v62 addObject:v65];

  v66 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Global_Flatten4D" value:3];
  [v62 addObject:v66];

  v67 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Local_Flatten1D" value:4];
  [v62 addObject:v67];

  v68 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Local_Flatten2D" value:5];
  [v62 addObject:v68];

  v69 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Local_Flatten3D" value:6];
  [v62 addObject:v69];

  v70 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Local_Flatten4D" value:7];
  [v62 addObject:v70];

  v71 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"indices_mode" type:@"MPSPoolIndicesMode" cases:v62 value:PaddingStyle];
  if (v71)
  {
    [v31 addObject:v71];
  }

  mlir::mps::PoolMaxGradientOp::getIndicesResultType(&v89);
  v72 = [MEMORY[0x1E695DF70] array];
  v73 = [MPSGraphViewerNodeSPI alloc];
  v74 = [MEMORY[0x1E695DEC8] arrayWithArray:v84];
  v75 = [MEMORY[0x1E695DEC8] arrayWithArray:v85];
  v76 = [MEMORY[0x1E695DEC8] arrayWithArray:v31];
  v77 = [MEMORY[0x1E695DEC8] arrayWithArray:v72];
  v78 = [(MPSGraphViewerNodeSPI *)v73 initWithType:v83 inputs:v74 outputs:v75 properties:v76 regions:v77];
  v79 = *(this + 3);
  *(this + 3) = v78;

  v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Computes the gradient backpropagation for the pooling operation in four dimensions. If indices are provided, then output_shape should be provided too and input should not be provided. If input is provided, then indices and output_shape should not be provided."}];
  [*(this + 3) setLocalizedDescription:v80];

  if (v88 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06FBDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPoolMaxOpHandler *EmitterViewerSPI::MPSPoolMaxOpHandler::MPSPoolMaxOpHandler(EmitterViewerSPI::MPSPoolMaxOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B495C0;
  v5 = *(*(a3 + 6) + 8);
  v78 = a3;
  v79 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v79);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v77 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v77 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v73 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v74 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v78 + 9) + 24));
  if (v10)
  {
    [v74 addObject:v10];
  }

  v11 = [MEMORY[0x1E695DF70] array];
  if (*(v78 + 9))
  {
    v12 = v78 - 16;
  }

  else
  {
    v12 = 0;
  }

  v72 = v11;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v11 addObject:v14];
  }

  if (*(v78 + 9))
  {
    v15 = v78 - 16;
  }

  else
  {
    v15 = 0;
  }

  v16 = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 1);
  v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  v18 = EmitViewerSPI::emitNodeOutputPort(a2, @"indices", v17);
  if (v18)
  {
    [v11 addObject:v18];
  }

  v19 = [MEMORY[0x1E695DF70] array];
  WindowSizes = mlir::mps::PoolMaxGradientOp::getWindowSizes(&v78);
  v21 = WindowSizes;
  if (WindowSizes)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
  }

  else
  {
    v22 = 0;
  }

  v23 = EmitViewerSPI::emitElementsAttrProperty(@"window_sizes", v21, v22);
  v71 = v23;
  if (v23)
  {
    [v19 addObject:v23];
  }

  Strides = mlir::mps::PoolMaxGradientOp::getStrides(&v78);
  v25 = Strides;
  if (Strides)
  {
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v26 = 0;
  }

  v27 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v25, v26);
  v70 = v27;
  if (v27)
  {
    [v19 addObject:v27];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v78);
  v29 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v30 = 0;
  }

  v31 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v29, v30);
  if (v31)
  {
    [v19 addObject:v31];
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v78);
  v33 = [MEMORY[0x1E695DF70] array];
  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v33 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v33 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v33 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v33 addObject:v37];

  v38 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v33 addObject:v38];

  v39 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v33 value:WeightsLayout];
  if (v39)
  {
    [v19 addObject:v39];
  }

  Offsets = mlir::mps::StencilOp::getOffsets(&v78);
  if (v41)
  {
    v42 = Offsets;
    if (Offsets)
    {
      v43 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Offsets + 8);
    }

    else
    {
      v43 = 0;
    }

    v44 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v42, v43);
    if (v44)
    {
      [v19 addObject:v44];
    }
  }

  LOBYTE(v79) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v78);
  v45 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"ceil_mode" dataType:2147483656 shape:&unk_1F5B76808];
  if (v45)
  {
    v46 = [MEMORY[0x1E695DEF0] dataWithBytes:&v79 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v45 setValue:v46];

    [v19 addObject:v45];
  }

  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v78);
  v47 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"include_zero_pad" dataType:2147483656 shape:&unk_1F5B76820];
  if (v47)
  {
    v48 = [MEMORY[0x1E695DEF0] dataWithBytes:&ResetAfter length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v47 setValue:v48];

    [v19 addObject:v47];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v78);
  v50 = [MEMORY[0x1E695DF70] array];
  v51 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Global_Flatten1D" value:0];
  [v50 addObject:v51];

  v52 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Global_Flatten2D" value:1];
  [v50 addObject:v52];

  v53 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Global_Flatten3D" value:2];
  [v50 addObject:v53];

  v54 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Global_Flatten4D" value:3];
  [v50 addObject:v54];

  v55 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Local_Flatten1D" value:4];
  [v50 addObject:v55];

  v56 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Local_Flatten2D" value:5];
  [v50 addObject:v56];

  v57 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Local_Flatten3D" value:6];
  [v50 addObject:v57];

  v58 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Local_Flatten4D" value:7];
  [v50 addObject:v58];

  v59 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"indices_mode" type:@"MPSPoolIndicesMode" cases:v50 value:PaddingStyle];
  if (v59)
  {
    [v19 addObject:v59];
  }

  mlir::mps::PoolMaxGradientOp::getIndicesResultType(&v78);
  v60 = [MEMORY[0x1E695DF70] array];
  v61 = [MPSGraphViewerNodeSPI alloc];
  v62 = [MEMORY[0x1E695DEC8] arrayWithArray:v74];
  v63 = [MEMORY[0x1E695DEC8] arrayWithArray:v72];
  v64 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v65 = [MEMORY[0x1E695DEC8] arrayWithArray:v60];
  v66 = [(MPSGraphViewerNodeSPI *)v61 initWithType:v73 inputs:v62 outputs:v63 properties:v64 regions:v65];
  v67 = *(this + 3);
  *(this + 3) = v66;
  v68 = ;
  [*(this + 3) setLocalizedDescription:v68];

  if (v77 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06FC910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPowerOpHandler *EmitterViewerSPI::MPSPowerOpHandler::MPSPowerOpHandler(EmitterViewerSPI::MPSPowerOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B495F0;
  v31 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v31);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06FCE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPruningGradientOpHandler *EmitterViewerSPI::MPSPruningGradientOpHandler::MPSPruningGradientOpHandler(EmitterViewerSPI::MPSPruningGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v46[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49620;
  v5 = *(*(a3 + 6) + 8);
  v44 = a3;
  v45 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v45);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v43 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v43 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v41 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v44 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"incoming_gradient", *(*(v44 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v44 + 9))
  {
    v14 = v44 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v44);
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"magnitude_pruning" value:0];
  [v19 addObject:v20];

  v21 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"pruning_metric" type:@"MPSPruningMetric" cases:v19 value:StorageType];
  if (v21)
  {
    [v17 addObject:v21];
  }

  Layout = mlir::mps::SampleGridOp::getLayout(&v44);
  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"random_pruning" value:0];
  [v23 addObject:v24];

  v25 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"block_1d_2_4_pruning" value:1];
  [v23 addObject:v25];

  v26 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"pruning_structure" type:@"MPSPruningStructure" cases:v23 value:Layout];
  if (v26)
  {
    [v17 addObject:v26];
  }

  mlir::mps::PruningOp::getSparsity(&v44, &v45);
  v27 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"sparsity" dataType:268435488 shape:&unk_1F5B76838];
  if (v27)
  {
    v28 = [MEMORY[0x1E695DEF0] dataWithBytes:&v45 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v27 setValue:v28];

    [v17 addObject:v27];
  }

  v29 = v46[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v30) == v29)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v46);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v46);
  }

  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [MPSGraphViewerNodeSPI alloc];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v36 = [MEMORY[0x1E695DEC8] arrayWithArray:v31];
  v37 = [(MPSGraphViewerNodeSPI *)v32 initWithType:v41 inputs:v33 outputs:v34 properties:v35 regions:v36];
  v38 = *(this + 3);
  *(this + 3) = v37;

  v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Gradient of prune tensor. Computed based on a pruning metric, a target sparsity and a pruning structure."}];
  [*(this + 3) setLocalizedDescription:v39];

  if (v43 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06FD4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  llvm::APFloat::~APFloat(&a19);

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPruningOpHandler *EmitterViewerSPI::MPSPruningOpHandler::MPSPruningOpHandler(EmitterViewerSPI::MPSPruningOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v45[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49650;
  v5 = *(*(a3 + 6) + 8);
  v43 = a3;
  v44 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v44);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v42 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v42 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v40 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v43 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v43 + 9))
  {
    v13 = v43 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v43);
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"magnitude_pruning" value:0];
  [v18 addObject:v19];

  v20 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"pruning_metric" type:@"MPSPruningMetric" cases:v18 value:StorageType];
  if (v20)
  {
    [v16 addObject:v20];
  }

  Layout = mlir::mps::SampleGridOp::getLayout(&v43);
  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"random_pruning" value:0];
  [v22 addObject:v23];

  v24 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"block_1d_2_4_pruning" value:1];
  [v22 addObject:v24];

  v25 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"pruning_structure" type:@"MPSPruningStructure" cases:v22 value:Layout];
  if (v25)
  {
    [v16 addObject:v25];
  }

  mlir::mps::PruningOp::getSparsity(&v43, &v44);
  v26 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"sparsity" dataType:268435488 shape:&unk_1F5B76850];
  if (v26)
  {
    v27 = [MEMORY[0x1E695DEF0] dataWithBytes:&v44 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v26 setValue:v27];

    [v16 addObject:v26];
  }

  v28 = v45[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v29) == v28)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v45);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v45);
  }

  v30 = [MEMORY[0x1E695DF70] array];
  v31 = [MPSGraphViewerNodeSPI alloc];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v30];
  v36 = [(MPSGraphViewerNodeSPI *)v31 initWithType:v40 inputs:v32 outputs:v33 properties:v34 regions:v35];
  v37 = *(this + 3);
  *(this + 3) = v36;

  v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Prune a tensor based on a pruning metric, a target sparsity and a pruning structure."}];
  [*(this + 3) setLocalizedDescription:v38];

  if (v42 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06FDB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSQuantizeOpHandler *EmitterViewerSPI::MPSQuantizeOpHandler::MPSQuantizeOpHandler(EmitterViewerSPI::MPSQuantizeOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49680;
  v5 = *(*(a3 + 6) + 8);
  v35 = a3;
  v36 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v36);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v34 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v34 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v32 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v35 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", *(*(v35 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"zero_point", *(*(v35 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x1E695DF70] array];
  if (*(v35 + 9))
  {
    v15 = v35 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v17)
  {
    [v14 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  mlir::func::FuncOp::getFunctionType(&v35);
  Axis = mlir::mps::DequantizeLUTOp::getAxis(&v35);
  LODWORD(v36) = Axis;
  BYTE4(v36) = BYTE4(Axis);
  if ((Axis & 0x100000000) != 0)
  {
    v20 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"axis" dataType:536870944 shape:&unk_1F5B76868];
    if (v20)
    {
      if ((v36 & 0x100000000) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&v36 length:8];
      [(MPSGraphViewerNodePropertyDataSPI *)v20 setValue:v21];

      [v18 addObject:v20];
    }
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v14];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v32 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;
  v30 = ;
  [*(this + 3) setLocalizedDescription:v30];

  if (v34 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06FE0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRandomNormalOpHandler *EmitterViewerSPI::MPSRandomNormalOpHandler::MPSRandomNormalOpHandler(EmitterViewerSPI::MPSRandomNormalOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v41[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B496B0;
  v37 = a3;
  v40 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v40);
  v6 = strlen(AttrData);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v36 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v36 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v34 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"state", *(*(v37 + 9) + 24));
  if (v10)
  {
    [v9 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(v37 + 9) + 56));
  if (v11)
  {
    [v9 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v37 + 9))
  {
    v13 = v37 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  mlir::func::FuncOp::getFunctionType(&v37);
  mlir::mps::InstanceNormOp::getEpsilon(&v37, &v40);
  v17 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"mean" dataType:268435488 shape:&unk_1F5B76880];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v40 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  mlir::mps::RandomNormalOp::getStdDev(&v37, v38);
  v19 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"std_dev" dataType:268435488 shape:&unk_1F5B76898];
  if (v19)
  {
    v20 = [MEMORY[0x1E695DEF0] dataWithBytes:v38 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v16 addObject:v19];
  }

  mlir::mps::LSTMOp::getGateLayout(&v37);

  v21 = v39[0];
  v23 = llvm::APFloatBase::PPCDoubleDouble(v22);
  if (v23 == v21)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v39);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v39);
  }

  if (v23 == v41[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v41);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v41);
  }

  v24 = [MEMORY[0x1E695DF70] array];
  v25 = [MPSGraphViewerNodeSPI alloc];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v24];
  v30 = [(MPSGraphViewerNodeSPI *)v25 initWithType:v34 inputs:v26 outputs:v27 properties:v28 regions:v29];
  v31 = *(this + 3);
  *(this + 3) = v30;
  v32 = ;
  [*(this + 3) setLocalizedDescription:v32];

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06FE6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  llvm::APFloat::~APFloat(&a17);

  llvm::APFloat::~APFloat(&a21);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRandomTruncatedNormalOpHandler *EmitterViewerSPI::MPSRandomTruncatedNormalOpHandler::MPSRandomTruncatedNormalOpHandler(EmitterViewerSPI::MPSRandomTruncatedNormalOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v49[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B496E0;
  v41 = a3;
  v48 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v48);
  v6 = strlen(AttrData);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v40 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v40 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v37 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v38 = [MEMORY[0x1E695DF70] array];
  v9 = EmitViewerSPI::emitNodeInputPort(a2, @"state", *(*(v41 + 9) + 24));
  if (v9)
  {
    [v38 addObject:v9];
  }

  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(v41 + 9) + 56));
  if (v10)
  {
    [v38 addObject:v10];
  }

  v11 = [MEMORY[0x1E695DF70] array];
  if (*(v41 + 9))
  {
    v12 = v41 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v11 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  mlir::mps::RandomTruncatedNormalOp::getResultElementType(&v41);
  mlir::mps::RandomTruncatedNormalOp::getMean(&v41, &v48);
  v16 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"mean" dataType:268435488 shape:&unk_1F5B768B0];
  if (v16)
  {
    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:&v48 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v16 setValue:v17];

    [v15 addObject:v16];
  }

  mlir::mps::RandomTruncatedNormalOp::getStdDev(&v41, v46);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"std_dev" dataType:268435488 shape:&unk_1F5B768C8];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:v46 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v15 addObject:v18];
  }

  mlir::mps::PruningOp::getSparsity(&v41, v44);
  v20 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"minimum" dataType:268435488 shape:&unk_1F5B768E0];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:v44 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v15 addObject:v20];
  }

  mlir::mps::InstanceNormOp::getEpsilon(&v41, v42);
  v22 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"maximum" dataType:268435488 shape:&unk_1F5B768F8];
  if (v22)
  {
    v23 = [MEMORY[0x1E695DEF0] dataWithBytes:v42 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v15 addObject:v22];
  }

  mlir::mps::Conv3DOp::getPaddingStyle(&v41);

  v24 = v43[0];
  v26 = llvm::APFloatBase::PPCDoubleDouble(v25);
  if (v26 == v24)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v43);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v43);
  }

  if (v26 == v45[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v45);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v45);
  }

  if (v26 == v47[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v47);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v47);
  }

  if (v26 == v49[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v49);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v49);
  }

  v27 = [MEMORY[0x1E695DF70] array];
  v28 = [MPSGraphViewerNodeSPI alloc];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v38];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v31 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v27];
  v33 = [(MPSGraphViewerNodeSPI *)v28 initWithType:v37 inputs:v29 outputs:v30 properties:v31 regions:v32];
  v34 = *(this + 3);
  *(this + 3) = v33;
  v35 = ;
  [*(this + 3) setLocalizedDescription:v35];

  if (v40 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06FEDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  llvm::APFloat::~APFloat(&a18);

  llvm::APFloat::~APFloat(&a22);
  llvm::APFloat::~APFloat(&a26);

  llvm::APFloat::~APFloat((v34 - 128));
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRandomUniformOpHandler *EmitterViewerSPI::MPSRandomUniformOpHandler::MPSRandomUniformOpHandler(EmitterViewerSPI::MPSRandomUniformOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49710;
  v5 = *(*(a3 + 6) + 8);
  v33 = a3;
  v34 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v34);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v32 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v32 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v30 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"state", *(*(v33 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(v33 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"minimum", *(*(v33 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"maximum", *(*(v33 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  if (*(v33 + 9))
  {
    v16 = v33 - 16;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  v18 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v18)
  {
    [v15 addObject:v18];
  }

  v19 = [MEMORY[0x1E695DF70] array];
  mlir::pdl_interp::CheckTypeOp::getType(&v33);
  v20 = [MEMORY[0x1E695DF70] array];
  v21 = [MPSGraphViewerNodeSPI alloc];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v20];
  v26 = [(MPSGraphViewerNodeSPI *)v21 initWithType:v30 inputs:v22 outputs:v23 properties:v24 regions:v25];
  v27 = *(this + 3);
  *(this + 3) = v26;
  v28 = ;
  [*(this + 3) setLocalizedDescription:v28];

  if (v32 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06FF33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRankOpHandler *EmitterViewerSPI::MPSRankOpHandler::MPSRankOpHandler(EmitterViewerSPI::MPSRankOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49740;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"This op computes the rank of the input tensor and returns it as a scalar tensor."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06FF760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReadDataFromFileOpHandler *EmitterViewerSPI::MPSReadDataFromFileOpHandler::MPSReadDataFromFileOpHandler(EmitterViewerSPI::MPSReadDataFromFileOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49770;
  v38 = a3;
  v33[0] = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v33);
  v6 = strlen(AttrData);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v37 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v32 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v11 = v38 - 16;
  }

  else
  {
    v11 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  v13 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x1E695DF70] array];
  Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v38);
  v17 = EmitViewerSPI::emitStringProperty(@"file_path", Name, v16);
  if (v17)
  {
    [v14 addObject:v17];
  }

  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v38);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"offset" dataType:64 shape:&unk_1F5B76910];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&Offset length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v14 addObject:v18];
  }

  mlir::pdl::OperationOp::getOpName(&v38, v33);
  if (v34 == 1)
  {
    v20 = EmitViewerSPI::emitStringProperty(@"file_symbol", v33[0], v33[1]);
    if (v20)
    {
      [v14 addObject:v20];
    }
  }

  v21 = [MEMORY[0x1E695DF70] array];
  v22 = [MPSGraphViewerNodeSPI alloc];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v24 = v10;
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v14];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v21];
  v28 = [(MPSGraphViewerNodeSPI *)v22 initWithType:v32 inputs:v23 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;
  v30 = ;
  [*(this + 3) setLocalizedDescription:v30];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06FFC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReadVariableOpHandler *EmitterViewerSPI::MPSReadVariableOpHandler::MPSReadVariableOpHandler(EmitterViewerSPI::MPSReadVariableOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B497A0;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"resource", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Inserts a variableHandle for a tensor resource."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0700028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRealPartOpHandler *EmitterViewerSPI::MPSRealPartOpHandler::MPSRealPartOpHandler(EmitterViewerSPI::MPSRealPartOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B497D0;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Extracts the real part of the input tensor."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0700408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRealToHermiteanFFTOpHandler *EmitterViewerSPI::MPSRealToHermiteanFFTOpHandler::MPSRealToHermiteanFFTOpHandler(EmitterViewerSPI::MPSRealToHermiteanFFTOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49800;
  v5 = *(*(a3 + 6) + 8);
  v39 = a3;
  v40 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v40);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v38 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v38 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v36 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v39 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", *(*(v39 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v39 + 9))
  {
    v14 = v39 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  Layout = mlir::mps::SampleGridOp::getLayout(&v39);
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v19 addObject:v20];

  v21 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"size" value:1];
  [v19 addObject:v21];

  v22 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"unitary" value:2];
  [v19 addObject:v22];

  v23 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"scaling_mode" type:@"MPSFFTScalingMode" cases:v19 value:Layout];
  if (v23)
  {
    [v17 addObject:v23];
  }

  LOBYTE(v40) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v39);
  v24 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"inverse" dataType:2147483656 shape:&unk_1F5B76928];
  if (v24)
  {
    v25 = [MEMORY[0x1E695DEF0] dataWithBytes:&v40 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v24 setValue:v25];

    [v17 addObject:v24];
  }

  v26 = [MEMORY[0x1E695DF70] array];
  v27 = [MPSGraphViewerNodeSPI alloc];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v31 = [MEMORY[0x1E695DEC8] arrayWithArray:v26];
  v32 = [(MPSGraphViewerNodeSPI *)v27 initWithType:v36 inputs:v28 outputs:v29 properties:v30 regions:v31];
  v33 = *(this + 3);
  *(this + 3) = v32;
  v34 = ;
  [*(this + 3) setLocalizedDescription:v34];

  if (v38 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0700984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReciprocalOpHandler *EmitterViewerSPI::MPSReciprocalOpHandler::MPSReciprocalOpHandler(EmitterViewerSPI::MPSReciprocalOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49830;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0700DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReciprocalSquareRootOpHandler *EmitterViewerSPI::MPSReciprocalSquareRootOpHandler::MPSReciprocalSquareRootOpHandler(EmitterViewerSPI::MPSReciprocalSquareRootOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49860;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E070118C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionAndOpHandler *EmitterViewerSPI::MPSReductionAndOpHandler::MPSReductionAndOpHandler(EmitterViewerSPI::MPSReductionAndOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49890;
  v5 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v37 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 1u);
  if ((*(v38 + 46) & 0x80) != 0)
  {
    v14 = *(v38 + 9);
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_14;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
LABEL_17:
  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", v16);
  if (v17)
  {
    [v10 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v19 = v38 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v21)
  {
    [v18 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v39) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v38);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_1F5B76940];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v22 addObject:v23];
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;
  v33 = ;
  [*(this + 3) setLocalizedDescription:v33];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0701680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionArgMaxOpHandler *EmitterViewerSPI::MPSReductionArgMaxOpHandler::MPSReductionArgMaxOpHandler(EmitterViewerSPI::MPSReductionArgMaxOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B498C0;
  v5 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v37 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 1u);
  if ((*(v38 + 46) & 0x80) != 0)
  {
    v14 = *(v38 + 9);
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_14;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
LABEL_17:
  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", v16);
  if (v17)
  {
    [v10 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v19 = v38 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v21)
  {
    [v18 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v39) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v38);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_1F5B76958];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v22 addObject:v23];
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;
  v33 = ;
  [*(this + 3) setLocalizedDescription:v33];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0701BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionArgMinOpHandler *EmitterViewerSPI::MPSReductionArgMinOpHandler::MPSReductionArgMinOpHandler(EmitterViewerSPI::MPSReductionArgMinOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B498F0;
  v5 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v37 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 1u);
  if ((*(v38 + 46) & 0x80) != 0)
  {
    v14 = *(v38 + 9);
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_14;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
LABEL_17:
  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", v16);
  if (v17)
  {
    [v10 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v19 = v38 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v21)
  {
    [v18 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v39) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v38);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_1F5B76970];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v22 addObject:v23];
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;
  v33 = ;
  [*(this + 3) setLocalizedDescription:v33];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07020C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionLogSumExpOpHandler *EmitterViewerSPI::MPSReductionLogSumExpOpHandler::MPSReductionLogSumExpOpHandler(EmitterViewerSPI::MPSReductionLogSumExpOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49920;
  v5 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v37 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 1u);
  if ((*(v38 + 46) & 0x80) != 0)
  {
    v14 = *(v38 + 9);
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_14;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
LABEL_17:
  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", v16);
  if (v17)
  {
    [v10 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v19 = v38 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v21)
  {
    [v18 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v39) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v38);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_1F5B76988];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v22 addObject:v23];
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;
  v33 = ;
  [*(this + 3) setLocalizedDescription:v33];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07025EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionMaxOpHandler *EmitterViewerSPI::MPSReductionMaxOpHandler::MPSReductionMaxOpHandler(EmitterViewerSPI::MPSReductionMaxOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49950;
  v5 = *(*(a3 + 6) + 8);
  v41 = a3;
  v42 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v42);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v40 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v40 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v37 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v41, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v41 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v41, 1u);
  if ((*(v41 + 46) & 0x80) != 0)
  {
    v14 = *(v41 + 9);
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_14;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
LABEL_17:
  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", v16);
  if (v17)
  {
    [v10 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  if (*(v41 + 9))
  {
    v19 = v41 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v21)
  {
    [v18 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v42) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v41);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_1F5B769A0];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&v42 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v22 addObject:v23];
  }

  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v41);
  v25 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"propagate_nans" dataType:2147483656 shape:&unk_1F5B769B8];
  if (v25)
  {
    v26 = [MEMORY[0x1E695DEF0] dataWithBytes:&IsSize length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v25 setValue:v26];

    [v22 addObject:v25];
  }

  v27 = [MEMORY[0x1E695DF70] array];
  v28 = [MPSGraphViewerNodeSPI alloc];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v31 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v27];
  v33 = [(MPSGraphViewerNodeSPI *)v28 initWithType:v37 inputs:v29 outputs:v30 properties:v31 regions:v32];
  v34 = *(this + 3);
  *(this + 3) = v33;
  v35 = ;
  [*(this + 3) setLocalizedDescription:v35];

  if (v40 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0702B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionMeanOpHandler *EmitterViewerSPI::MPSReductionMeanOpHandler::MPSReductionMeanOpHandler(EmitterViewerSPI::MPSReductionMeanOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49980;
  v5 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v37 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 1u);
  if ((*(v38 + 46) & 0x80) != 0)
  {
    v14 = *(v38 + 9);
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_14;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
LABEL_17:
  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", v16);
  if (v17)
  {
    [v10 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v19 = v38 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v21)
  {
    [v18 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v39) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v38);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_1F5B769D0];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v22 addObject:v23];
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;
  v33 = ;
  [*(this + 3) setLocalizedDescription:v33];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07030C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionMinOpHandler *EmitterViewerSPI::MPSReductionMinOpHandler::MPSReductionMinOpHandler(EmitterViewerSPI::MPSReductionMinOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B499B0;
  v5 = *(*(a3 + 6) + 8);
  v41 = a3;
  v42 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v42);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v40 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v40 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v37 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v41, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v41 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v41, 1u);
  if ((*(v41 + 46) & 0x80) != 0)
  {
    v14 = *(v41 + 9);
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_14;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
LABEL_17:
  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", v16);
  if (v17)
  {
    [v10 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  if (*(v41 + 9))
  {
    v19 = v41 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v21)
  {
    [v18 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v42) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v41);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_1F5B769E8];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&v42 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v22 addObject:v23];
  }

  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v41);
  v25 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"propagate_nans" dataType:2147483656 shape:&unk_1F5B76A00];
  if (v25)
  {
    v26 = [MEMORY[0x1E695DEF0] dataWithBytes:&IsSize length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v25 setValue:v26];

    [v22 addObject:v25];
  }

  v27 = [MEMORY[0x1E695DF70] array];
  v28 = [MPSGraphViewerNodeSPI alloc];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v31 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v27];
  v33 = [(MPSGraphViewerNodeSPI *)v28 initWithType:v37 inputs:v29 outputs:v30 properties:v31 regions:v32];
  v34 = *(this + 3);
  *(this + 3) = v33;
  v35 = ;
  [*(this + 3) setLocalizedDescription:v35];

  if (v40 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E070365C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionOrOpHandler *EmitterViewerSPI::MPSReductionOrOpHandler::MPSReductionOrOpHandler(EmitterViewerSPI::MPSReductionOrOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B499E0;
  v5 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v37 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 1u);
  if ((*(v38 + 46) & 0x80) != 0)
  {
    v14 = *(v38 + 9);
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_14;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
LABEL_17:
  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", v16);
  if (v17)
  {
    [v10 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v19 = v38 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v21)
  {
    [v18 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v39) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v38);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_1F5B76A18];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v22 addObject:v23];
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;
  v33 = ;
  [*(this + 3) setLocalizedDescription:v33];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0703BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionProdOpHandler *EmitterViewerSPI::MPSReductionProdOpHandler::MPSReductionProdOpHandler(EmitterViewerSPI::MPSReductionProdOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49A10;
  v5 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v37 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 1u);
  if ((*(v38 + 46) & 0x80) != 0)
  {
    v14 = *(v38 + 9);
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_14;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
LABEL_17:
  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", v16);
  if (v17)
  {
    [v10 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v19 = v38 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v21)
  {
    [v18 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v39) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v38);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_1F5B76A30];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v22 addObject:v23];
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;
  v33 = ;
  [*(this + 3) setLocalizedDescription:v33];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07040C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionSumOpHandler *EmitterViewerSPI::MPSReductionSumOpHandler::MPSReductionSumOpHandler(EmitterViewerSPI::MPSReductionSumOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49A40;
  v5 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v37 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 1u);
  if ((*(v38 + 46) & 0x80) != 0)
  {
    v14 = *(v38 + 9);
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_14;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
LABEL_17:
  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", v16);
  if (v17)
  {
    [v10 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v19 = v38 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v21)
  {
    [v18 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v39) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v38);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_1F5B76A48];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v22 addObject:v23];
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;
  v33 = ;
  [*(this + 3) setLocalizedDescription:v33];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07045EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionVarianceOpHandler *EmitterViewerSPI::MPSReductionVarianceOpHandler::MPSReductionVarianceOpHandler(EmitterViewerSPI::MPSReductionVarianceOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49A70;
  v5 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v37 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 1u);
  if ((*(v38 + 46) & 0x80) != 0)
  {
    v14 = *(v38 + 9);
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_14;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
LABEL_17:
  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", v16);
  if (v17)
  {
    [v10 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v19 = v38 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v21)
  {
    [v18 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v39) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v38);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_1F5B76A60];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v22 addObject:v23];
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;
  v33 = ;
  [*(this + 3) setLocalizedDescription:v33];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0704B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReinterpretCastOpHandler *EmitterViewerSPI::MPSReinterpretCastOpHandler::MPSReinterpretCastOpHandler(EmitterViewerSPI::MPSReinterpretCastOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49AA0;
  v5 = *(*(a3 + 6) + 8);
  v30 = a3;
  v31 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v31);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v30 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v30 + 9))
  {
    v13 = v30 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  mlir::pdl_interp::CheckTypeOp::getType(&v30);
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Returns the input tensor reinterpreted to result_element_type type with the innermost dimension scaled by sizeof(type(input)) / sizeof(result_element_type)."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0704F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRelu6OpHandler *EmitterViewerSPI::MPSRelu6OpHandler::MPSRelu6OpHandler(EmitterViewerSPI::MPSRelu6OpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49AD0;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0705314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReluGradOpHandler *EmitterViewerSPI::MPSReluGradOpHandler::MPSReluGradOpHandler(EmitterViewerSPI::MPSReluGradOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49B00;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradients", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"features", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"backprops", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07056F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReluOpHandler *EmitterViewerSPI::MPSReluOpHandler::MPSReluOpHandler(EmitterViewerSPI::MPSReluOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49B30;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}