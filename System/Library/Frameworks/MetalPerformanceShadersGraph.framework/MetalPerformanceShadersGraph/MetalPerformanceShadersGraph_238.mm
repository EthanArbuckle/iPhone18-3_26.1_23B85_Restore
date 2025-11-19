void sub_1E0705ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReshapeOpHandler *EmitterViewerSPI::MPSReshapeOpHandler::MPSReshapeOpHandler(EmitterViewerSPI::MPSReshapeOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49B60;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v33 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(v33 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v33 + 9))
  {
    v14 = v33 - 16;
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
  LOBYTE(v34) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v33);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"zero_is_copy" dataType:2147483656 shape:&unk_1F5B76A78];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v34 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  v20 = [MEMORY[0x1E695DF70] array];
  v21 = [MPSGraphViewerNodeSPI alloc];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
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

void sub_1E0705F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSResizeGradientOpHandler *EmitterViewerSPI::MPSResizeGradientOpHandler::MPSResizeGradientOpHandler(EmitterViewerSPI::MPSResizeGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49B90;
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

  v48 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v53, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input_gradient", *(*(v53 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v53, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"input_shape", *(*(v53 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v53, 2u);
  if ((*(v53 + 46) & 0x80) != 0)
  {
    v16 = *(v53 + 9);
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
  v19 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", v18);
  if (v19)
  {
    [v10 addObject:v19];
  }

  v20 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v53, 3u);
  if ((*(v53 + 46) & 0x80) != 0)
  {
    v21 = *(v53 + 9);
    v22 = v20;
    if (HIDWORD(v20) + v20 == v20)
    {
LABEL_23:
      v23 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v21 = 0;
    v22 = v20;
    if (HIDWORD(v20) + v20 == v20)
    {
      goto LABEL_23;
    }
  }

  v23 = *(v21 + 32 * v22 + 24);
LABEL_26:
  v24 = EmitViewerSPI::emitNodeInputPort(a2, @"offset", v23);
  if (v24)
  {
    [v10 addObject:v24];
  }

  v49 = [MEMORY[0x1E695DF70] array];
  if (*(v53 + 9))
  {
    v25 = v53 - 16;
  }

  else
  {
    v25 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
  v27 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v27)
  {
    [v49 addObject:v27];
  }

  v28 = [MEMORY[0x1E695DF70] array];
  GateLayout = mlir::mps::LSTMOp::getGateLayout(&v53);
  v30 = [MEMORY[0x1E695DF70] array];
  v31 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"nearest" value:0];
  [v30 addObject:v31];

  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"bilinear" value:1];
  [v30 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"mode" type:@"MPSSamplingMode" cases:v30 value:GateLayout];
  if (v33)
  {
    [v28 addObject:v33];
  }

  LOBYTE(v54) = mlir::mps::StridedSliceOp::getEndIsSize(&v53);
  v34 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"center_result" dataType:2147483656 shape:&unk_1F5B76A90];
  if (v34)
  {
    v35 = [MEMORY[0x1E695DEF0] dataWithBytes:&v54 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v34 setValue:v35];

    [v28 addObject:v34];
  }

  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v53);
  v36 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"align_corners" dataType:2147483656 shape:&unk_1F5B76AA8];
  if (v36)
  {
    v37 = [MEMORY[0x1E695DEF0] dataWithBytes:&InferredResultTypes length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v36 setValue:v37];

    [v28 addObject:v36];
  }

  mlir::mps::ResizeGradientOp::getNearestRoundingMode(&v53);

  v38 = [MEMORY[0x1E695DF70] array];
  v39 = [MPSGraphViewerNodeSPI alloc];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v28];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v38];
  v44 = [(MPSGraphViewerNodeSPI *)v39 initWithType:v48 inputs:v40 outputs:v41 properties:v42 regions:v43];
  v45 = *(this + 3);
  *(this + 3) = v44;
  v46 = ;
  [*(this + 3) setLocalizedDescription:v46];

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0706674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSResizeOpHandler *EmitterViewerSPI::MPSResizeOpHandler::MPSResizeOpHandler(EmitterViewerSPI::MPSResizeOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49BC0;
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

  v48 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v53, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v53 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v53, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(v53 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v53, 2u);
  if ((*(v53 + 46) & 0x80) != 0)
  {
    v16 = *(v53 + 9);
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
  v19 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", v18);
  if (v19)
  {
    [v10 addObject:v19];
  }

  v20 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v53, 3u);
  if ((*(v53 + 46) & 0x80) != 0)
  {
    v21 = *(v53 + 9);
    v22 = v20;
    if (HIDWORD(v20) + v20 == v20)
    {
LABEL_23:
      v23 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v21 = 0;
    v22 = v20;
    if (HIDWORD(v20) + v20 == v20)
    {
      goto LABEL_23;
    }
  }

  v23 = *(v21 + 32 * v22 + 24);
LABEL_26:
  v24 = EmitViewerSPI::emitNodeInputPort(a2, @"offset", v23);
  if (v24)
  {
    [v10 addObject:v24];
  }

  v49 = [MEMORY[0x1E695DF70] array];
  if (*(v53 + 9))
  {
    v25 = v53 - 16;
  }

  else
  {
    v25 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
  v27 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v27)
  {
    [v49 addObject:v27];
  }

  v28 = [MEMORY[0x1E695DF70] array];
  GateLayout = mlir::mps::LSTMOp::getGateLayout(&v53);
  v30 = [MEMORY[0x1E695DF70] array];
  v31 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"nearest" value:0];
  [v30 addObject:v31];

  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"bilinear" value:1];
  [v30 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"mode" type:@"MPSSamplingMode" cases:v30 value:GateLayout];
  if (v33)
  {
    [v28 addObject:v33];
  }

  LOBYTE(v54) = mlir::mps::StridedSliceOp::getEndIsSize(&v53);
  v34 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"center_result" dataType:2147483656 shape:&unk_1F5B76AC0];
  if (v34)
  {
    v35 = [MEMORY[0x1E695DEF0] dataWithBytes:&v54 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v34 setValue:v35];

    [v28 addObject:v34];
  }

  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v53);
  v36 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"align_corners" dataType:2147483656 shape:&unk_1F5B76AD8];
  if (v36)
  {
    v37 = [MEMORY[0x1E695DEF0] dataWithBytes:&InferredResultTypes length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v36 setValue:v37];

    [v28 addObject:v36];
  }

  mlir::mps::ResizeGradientOp::getNearestRoundingMode(&v53);

  v38 = [MEMORY[0x1E695DF70] array];
  v39 = [MPSGraphViewerNodeSPI alloc];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v28];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v38];
  v44 = [(MPSGraphViewerNodeSPI *)v39 initWithType:v48 inputs:v40 outputs:v41 properties:v42 regions:v43];
  v45 = *(this + 3);
  *(this + 3) = v44;
  v46 = ;
  [*(this + 3) setLocalizedDescription:v46];

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0706E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReverseOpHandler *EmitterViewerSPI::MPSReverseOpHandler::MPSReverseOpHandler(EmitterViewerSPI::MPSReverseOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49BF0;
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

  v33 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v36 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 1u);
  if ((*(v36 + 46) & 0x80) != 0)
  {
    v14 = *(v36 + 9);
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
  if (*(v36 + 9))
  {
    v19 = v36 - 16;
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
  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [MPSGraphViewerNodeSPI alloc];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
  v29 = [(MPSGraphViewerNodeSPI *)v24 initWithType:v33 inputs:v25 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;

  v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Reverse values within tensor along provided axes. If no axes are provided then all axes are reversed."];
  [*(this + 3) setLocalizedDescription:v31];

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E070734C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRintOpHandler *EmitterViewerSPI::MPSRintOpHandler::MPSRintOpHandler(EmitterViewerSPI::MPSRintOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49C20;
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

void sub_1E0707744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRoundOpHandler *EmitterViewerSPI::MPSRoundOpHandler::MPSRoundOpHandler(EmitterViewerSPI::MPSRoundOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49C50;
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

void sub_1E0707B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSampleGridDataGradientOpHandler *EmitterViewerSPI::MPSSampleGridDataGradientOpHandler::MPSSampleGridDataGradientOpHandler(EmitterViewerSPI::MPSSampleGridDataGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49C80;
  v5 = *(*(a3 + 6) + 8);
  v49 = a3;
  v50 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v50);
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

  v48 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v48 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v44 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v49 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"coordinates", *(*(v49 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"outputShape", *(*(v49 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v45 = [MEMORY[0x1E695DF70] array];
  if (*(v49 + 9))
  {
    v14 = v49 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v45 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v50) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v49);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"normalize_coordinates" dataType:2147483656 shape:&unk_1F5B76AF0];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v50 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  NormalizeCoordinates = mlir::mps::CostVolumeOp::getNormalizeCoordinates(&v49);
  v20 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"relative_coordinates" dataType:2147483656 shape:&unk_1F5B76B08];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&NormalizeCoordinates length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  Layout = mlir::mps::SampleGridOp::getLayout(&v49);
  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"constant" value:0];
  [v23 addObject:v24];

  v25 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"reflect" value:1];
  [v23 addObject:v25];

  v26 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"symmetric" value:2];
  [v23 addObject:v26];

  v27 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"clampToEdge" value:3];
  [v23 addObject:v27];

  v28 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_mode" type:@"MPSPaddingMode" cases:v23 value:Layout];
  if (v28)
  {
    [v17 addObject:v28];
  }

  PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v49);
  v30 = [MEMORY[0x1E695DF70] array];
  v31 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"nearest" value:0];
  [v30 addObject:v31];

  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"bilinear" value:1];
  [v30 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"sampling_mode" type:@"MPSSamplingMode" cases:v30 value:PaddingStyle];
  if (v33)
  {
    [v17 addObject:v33];
  }

  v34 = [MEMORY[0x1E695DF70] array];
  v35 = [MPSGraphViewerNodeSPI alloc];
  v36 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v37 = [MEMORY[0x1E695DEC8] arrayWithArray:v45];
  v38 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v39 = [MEMORY[0x1E695DEC8] arrayWithArray:v34];
  v40 = [(MPSGraphViewerNodeSPI *)v35 initWithType:v44 inputs:v36 outputs:v37 properties:v38 regions:v39];
  v41 = *(this + 3);
  *(this + 3) = v40;

  v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Gradient of sample_grid operation relative to the input data."];
  [*(this + 3) setLocalizedDescription:v42];

  if (v48 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0708230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSampleGridOpHandler *EmitterViewerSPI::MPSSampleGridOpHandler::MPSSampleGridOpHandler(EmitterViewerSPI::MPSSampleGridOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49CB0;
  v5 = *(*(a3 + 6) + 8);
  v68 = a3;
  v69 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v69);
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

  v67 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v67 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v61 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v62 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v68 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"coordinates", *(*(v68 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"constant_values", *(*(v68 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v63 = [MEMORY[0x1E695DF70] array];
  if (*(v68 + 9))
  {
    v14 = v68 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v63 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v69) = mlir::mps::GRUOp::getResetAfter(&v68);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"normalize_coordinates" dataType:2147483656 shape:&unk_1F5B76B20];
  v60 = v18;
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v69 length:{1, v18}];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  Training = mlir::mps::GRUOp::getTraining(&v68);
  v20 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"relative_coordinates" dataType:2147483656 shape:&unk_1F5B76B38];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&Training length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v68);
  v22 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"align_corners" dataType:2147483656 shape:&unk_1F5B76B50];
  if (v22)
  {
    v23 = [MEMORY[0x1E695DEF0] dataWithBytes:&InferredResultTypes length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v17 addObject:v22];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v68);
  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"constant" value:0];
  [v25 addObject:v26];

  v27 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"reflect" value:1];
  [v25 addObject:v27];

  v28 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"symmetric" value:2];
  [v25 addObject:v28];

  v29 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"clampToEdge" value:3];
  [v25 addObject:v29];

  v30 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_mode" type:@"MPSPaddingMode" cases:v25 value:PaddingStyle];
  if (v30)
  {
    [v17 addObject:v30];
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v68);
  v32 = [MEMORY[0x1E695DF70] array];
  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"nearest" value:0];
  [v32 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"bilinear" value:1];
  [v32 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"sampling_mode" type:@"MPSSamplingMode" cases:v32 value:WeightsLayout];
  if (v35)
  {
    [v17 addObject:v35];
  }

  Layout = mlir::mps::SampleGridOp::getLayout(&v68);
  v37 = [MEMORY[0x1E695DF70] array];
  v38 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v37 addObject:v38];

  v39 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v37 addObject:v39];

  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v37 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v37 addObject:v41];

  v42 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v37 addObject:v42];

  v43 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v37 addObject:v43];

  v44 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v37 addObject:v44];

  v45 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v37 addObject:v45];

  v46 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v37 addObject:v46];

  v47 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v37 addObject:v47];

  v48 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v37 addObject:v48];

  v49 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"layout" type:@"MPSTensorDataLayout" cases:v37 value:Layout];
  if (v49)
  {
    [v17 addObject:v49];
  }

  mlir::mps::SampleGridOp::getNearestRoundingMode(&v68);
  v50 = [MEMORY[0x1E695DF70] array];
  v51 = [MPSGraphViewerNodeSPI alloc];
  v52 = [MEMORY[0x1E695DEC8] arrayWithArray:v62];
  v53 = [MEMORY[0x1E695DEC8] arrayWithArray:v63];
  v54 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v55 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v56 = [(MPSGraphViewerNodeSPI *)v51 initWithType:v61 inputs:v52 outputs:v53 properties:v54 regions:v55];
  v57 = *(this + 3);
  *(this + 3) = v56;
  v58 = ;
  [*(this + 3) setLocalizedDescription:v58];

  if (v67 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0708CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSScatterAlongAxisOpHandler *EmitterViewerSPI::MPSScatterAlongAxisOpHandler::MPSScatterAlongAxisOpHandler(EmitterViewerSPI::MPSScatterAlongAxisOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49CE0;
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

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"data", *(*(v43 + 9) + 24));
  if (v12)
  {
    [v11 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"updates", *(*(v43 + 9) + 56));
  if (v13)
  {
    [v11 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(v43 + 9) + 88));
  if (v14)
  {
    [v11 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v43 + 9) + 120));
  if (v15)
  {
    [v11 addObject:v15];
  }

  v40 = [MEMORY[0x1E695DF70] array];
  if (*(v43 + 9))
  {
    v16 = v43 - 16;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  v18 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v18)
  {
    [v40 addObject:v18];
  }

  v19 = [MEMORY[0x1E695DF70] array];
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v43);
  v21 = [MEMORY[0x1E695DF70] array];
  v22 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"add" value:0];
  [v21 addObject:v22];

  v23 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"subtract" value:1];
  [v21 addObject:v23];

  v24 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"multiply" value:2];
  [v21 addObject:v24];

  v25 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"divide" value:3];
  [v21 addObject:v25];

  v26 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"min" value:4];
  [v21 addObject:v26];

  v27 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"max" value:5];
  [v21 addObject:v27];

  v28 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"set" value:6];
  [v21 addObject:v28];

  v29 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"mode" type:@"MPSScatterMode" cases:v21 value:StorageType];
  if (v29)
  {
    [v19 addObject:v29];
  }

  v30 = [MEMORY[0x1E695DF70] array];
  v31 = [MPSGraphViewerNodeSPI alloc];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v33 = v10;
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v40];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v36 = [MEMORY[0x1E695DEC8] arrayWithArray:v30];
  v37 = [(MPSGraphViewerNodeSPI *)v31 initWithType:v33 inputs:v32 outputs:v34 properties:v35 regions:v36];
  v38 = *(this + 3);
  *(this + 3) = v37;

  if (v42 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07093F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSScatterNDOpHandler *EmitterViewerSPI::MPSScatterNDOpHandler::MPSScatterNDOpHandler(EmitterViewerSPI::MPSScatterNDOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49D10;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"data", *(*(v43 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"updates", *(*(v43 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(v43 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x1E695DF70] array];
  if (*(v43 + 9))
  {
    v15 = v43 - 16;
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
  LODWORD(v44) = mlir::pdl::ResultOp::getIndex(&v43);
  v19 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"batch_dims" dataType:32 shape:&unk_1F5B76B68];
  if (v19)
  {
    v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&v44 length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v18 addObject:v19];
  }

  Layout = mlir::mps::SampleGridOp::getLayout(&v43);
  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"add" value:0];
  [v22 addObject:v23];

  v24 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"subtract" value:1];
  [v22 addObject:v24];

  v25 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"multiply" value:2];
  [v22 addObject:v25];

  v26 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"divide" value:3];
  [v22 addObject:v26];

  v27 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"min" value:4];
  [v22 addObject:v27];

  v28 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"max" value:5];
  [v22 addObject:v28];

  v29 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"set" value:6];
  [v22 addObject:v29];

  v30 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"mode" type:@"MPSScatterMode" cases:v22 value:Layout];
  if (v30)
  {
    [v18 addObject:v30];
  }

  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [MPSGraphViewerNodeSPI alloc];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v14];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v36 = [MEMORY[0x1E695DEC8] arrayWithArray:v31];
  v37 = [(MPSGraphViewerNodeSPI *)v32 initWithType:v40 inputs:v33 outputs:v34 properties:v35 regions:v36];
  v38 = *(this + 3);
  *(this + 3) = v37;

  if (v42 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0709AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSScatterOpHandler *EmitterViewerSPI::MPSScatterOpHandler::MPSScatterOpHandler(EmitterViewerSPI::MPSScatterOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49D40;
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

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"data", *(*(v43 + 9) + 24));
  if (v12)
  {
    [v11 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"updates", *(*(v43 + 9) + 56));
  if (v13)
  {
    [v11 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(v43 + 9) + 88));
  if (v14)
  {
    [v11 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v43 + 9) + 120));
  if (v15)
  {
    [v11 addObject:v15];
  }

  v40 = [MEMORY[0x1E695DF70] array];
  if (*(v43 + 9))
  {
    v16 = v43 - 16;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  v18 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v18)
  {
    [v40 addObject:v18];
  }

  v19 = [MEMORY[0x1E695DF70] array];
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v43);
  v21 = [MEMORY[0x1E695DF70] array];
  v22 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"add" value:0];
  [v21 addObject:v22];

  v23 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"subtract" value:1];
  [v21 addObject:v23];

  v24 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"multiply" value:2];
  [v21 addObject:v24];

  v25 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"divide" value:3];
  [v21 addObject:v25];

  v26 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"min" value:4];
  [v21 addObject:v26];

  v27 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"max" value:5];
  [v21 addObject:v27];

  v28 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"set" value:6];
  [v21 addObject:v28];

  v29 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"mode" type:@"MPSScatterMode" cases:v21 value:StorageType];
  if (v29)
  {
    [v19 addObject:v29];
  }

  v30 = [MEMORY[0x1E695DF70] array];
  v31 = [MPSGraphViewerNodeSPI alloc];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v33 = v10;
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v40];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v36 = [MEMORY[0x1E695DEC8] arrayWithArray:v30];
  v37 = [(MPSGraphViewerNodeSPI *)v31 initWithType:v33 inputs:v32 outputs:v34 properties:v35 regions:v36];
  v38 = *(this + 3);
  *(this + 3) = v37;

  if (v42 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E070A10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSelectOpHandler *EmitterViewerSPI::MPSSelectOpHandler::MPSSelectOpHandler(EmitterViewerSPI::MPSSelectOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49D70;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"condition", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"true_value", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"false_value", *(*(a3 + 9) + 88));
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

void sub_1E070A5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSShapeOpHandler *EmitterViewerSPI::MPSShapeOpHandler::MPSShapeOpHandler(EmitterViewerSPI::MPSShapeOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49DA0;
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

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"This op computes the shape if the input tensor and returns it as a 1-dimensional tensor."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E070A9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSigmoidGradientOpHandler *EmitterViewerSPI::MPSSigmoidGradientOpHandler::MPSSigmoidGradientOpHandler(EmitterViewerSPI::MPSSigmoidGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49DD0;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input_gradient", *(*(a3 + 9) + 56));
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

void sub_1E070ADE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSigmoidGradientWithSigmoidOpHandler *EmitterViewerSPI::MPSSigmoidGradientWithSigmoidOpHandler::MPSSigmoidGradientWithSigmoidOpHandler(EmitterViewerSPI::MPSSigmoidGradientWithSigmoidOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49E00;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"dy", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"y", *(*(a3 + 9) + 56));
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

void sub_1E070B200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSigmoidHardOpHandler *EmitterViewerSPI::MPSSigmoidHardOpHandler::MPSSigmoidHardOpHandler(EmitterViewerSPI::MPSSigmoidHardOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49E30;
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

void sub_1E070B650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSigmoidOpHandler *EmitterViewerSPI::MPSSigmoidOpHandler::MPSSigmoidOpHandler(EmitterViewerSPI::MPSSigmoidOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49E60;
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

void sub_1E070BA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSignOpHandler *EmitterViewerSPI::MPSSignOpHandler::MPSSignOpHandler(EmitterViewerSPI::MPSSignOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49E90;
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

void sub_1E070BE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSignbitOpHandler *EmitterViewerSPI::MPSSignbitOpHandler::MPSSignbitOpHandler(EmitterViewerSPI::MPSSignbitOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49EC0;
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

void sub_1E070C214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSinOpHandler *EmitterViewerSPI::MPSSinOpHandler::MPSSinOpHandler(EmitterViewerSPI::MPSSinOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49EF0;
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

void sub_1E070C5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSingleGateRNNGradientOpHandler *EmitterViewerSPI::MPSSingleGateRNNGradientOpHandler::MPSSingleGateRNNGradientOpHandler(EmitterViewerSPI::MPSSingleGateRNNGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49F20;
  v5 = *(*(a3 + 6) + 8);
  v71 = a3;
  v72 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v72);
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

  v70 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v70 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v68 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&v71, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient_input_sequence", *(*(v71 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&v71, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"recurrent_weight", *(*(v71 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&v71, 2u);
  v16 = EmitViewerSPI::emitNodeInputPort(a2, @"training_state", *(*(v71 + 9) + 32 * v15 + 24));
  if (v16)
  {
    [v10 addObject:v16];
  }

  v17 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&v71, 3u);
  if ((*(v71 + 46) & 0x80) != 0)
  {
    v18 = *(v71 + 9);
    v19 = v17;
    if (HIDWORD(v17) + v17 == v17)
    {
LABEL_18:
      v20 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v18 = 0;
    v19 = v17;
    if (HIDWORD(v17) + v17 == v17)
    {
      goto LABEL_18;
    }
  }

  v20 = *(v18 + 32 * v19 + 24);
LABEL_21:
  v21 = EmitViewerSPI::emitNodeInputPort(a2, @"input_state", v20);
  if (v21)
  {
    [v10 addObject:v21];
  }

  v22 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&v71, 4u);
  if ((*(v71 + 46) & 0x80) != 0)
  {
    v23 = *(v71 + 9);
    v24 = v22;
    if (HIDWORD(v22) + v22 == v22)
    {
LABEL_25:
      v25 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v23 = 0;
    v24 = v22;
    if (HIDWORD(v22) + v22 == v22)
    {
      goto LABEL_25;
    }
  }

  v25 = *(v23 + 32 * v24 + 24);
LABEL_28:
  v26 = EmitViewerSPI::emitNodeInputPort(a2, @"mask", v25);
  if (v26)
  {
    [v10 addObject:v26];
  }

  v27 = [MEMORY[0x1E695DF70] array];
  ODSResultIndexAndLength = mlir::mps::LSTMOp::getODSResultIndexAndLength(&v71, 0, v28, v29);
  if (*(v71 + 9))
  {
    NextResultAtOffset = v71 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v32 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  v33 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_output_sequence", v32);
  if (v33)
  {
    [v27 addObject:v33];
  }

  v36 = mlir::mps::LSTMOp::getODSResultIndexAndLength(&v71, 1u, v34, v35);
  if (*(v71 + 9))
  {
    v37 = v71 - 16;
  }

  else
  {
    v37 = 0;
  }

  if (v36)
  {
    v37 = mlir::detail::OpResultImpl::getNextResultAtOffset(v37, v36);
  }

  v38 = mlir::detail::OpResultImpl::getNextResultAtOffset(v37, 0);
  v39 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_recurrent_weight", v38);
  if (v39)
  {
    [v27 addObject:v39];
  }

  v42 = mlir::mps::LSTMOp::getODSResultIndexAndLength(&v71, 2u, v40, v41);
  if (*(v71 + 9))
  {
    v43 = v71 - 16;
  }

  else
  {
    v43 = 0;
  }

  if (v42)
  {
    v43 = mlir::detail::OpResultImpl::getNextResultAtOffset(v43, v42);
  }

  if (HIDWORD(v42) + v42 == v42)
  {
    v44 = 0;
  }

  else
  {
    v44 = mlir::detail::OpResultImpl::getNextResultAtOffset(v43, 0);
  }

  v45 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_input_state", v44);
  if (v45)
  {
    [v27 addObject:v45];
  }

  v46 = [MEMORY[0x1E695DF70] array];
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v71);
  v48 = [MEMORY[0x1E695DF70] array];
  v49 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v48 addObject:v49];

  v50 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v48 addObject:v50];

  v51 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v48 addObject:v51];

  v52 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v48 addObject:v52];

  v53 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v48 addObject:v53];

  v54 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v48 addObject:v54];

  v55 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"activation" type:@"MPSRNNActivation" cases:v48 value:StorageType];
  if (v55)
  {
    [v46 addObject:v55];
  }

  LOBYTE(v72) = mlir::mps::StridedSliceOp::getEndIsSize(&v71);
  v56 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"gradient_for_input_state" dataType:2147483656 shape:&unk_1F5B76B80];
  if (v56)
  {
    v57 = [MEMORY[0x1E695DEF0] dataWithBytes:&v72 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v56 setValue:v57];

    [v46 addObject:v56];
  }

  v58 = [MEMORY[0x1E695DF70] array];
  v59 = [MPSGraphViewerNodeSPI alloc];
  v60 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v61 = [MEMORY[0x1E695DEC8] arrayWithArray:v27];
  v62 = [MEMORY[0x1E695DEC8] arrayWithArray:v46];
  v63 = [MEMORY[0x1E695DEC8] arrayWithArray:v58];
  v64 = [(MPSGraphViewerNodeSPI *)v59 initWithType:v68 inputs:v60 outputs:v61 properties:v62 regions:v63];
  v65 = *(this + 3);
  *(this + 3) = v64;
  v66 = ;
  [*(this + 3) setLocalizedDescription:v66];

  if (v70 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E070CE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSingleGateRNNOpHandler *EmitterViewerSPI::MPSSingleGateRNNOpHandler::MPSSingleGateRNNOpHandler(EmitterViewerSPI::MPSSingleGateRNNOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49F50;
  v5 = *(*(a3 + 6) + 8);
  v63 = a3;
  v64 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v64);
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

  v62 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v62 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v60 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&v63, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input_sequence", *(*(v63 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&v63, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"recurrent_weight", *(*(v63 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&v63, 2u);
  if ((*(v63 + 46) & 0x80) != 0)
  {
    v16 = *(v63 + 9);
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
  v19 = EmitViewerSPI::emitNodeInputPort(a2, @"input_state", v18);
  if (v19)
  {
    [v10 addObject:v19];
  }

  v20 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&v63, 3u);
  if ((*(v63 + 46) & 0x80) != 0)
  {
    v21 = *(v63 + 9);
    v22 = v20;
    if (HIDWORD(v20) + v20 == v20)
    {
LABEL_23:
      v23 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v21 = 0;
    v22 = v20;
    if (HIDWORD(v20) + v20 == v20)
    {
      goto LABEL_23;
    }
  }

  v23 = *(v21 + 32 * v22 + 24);
LABEL_26:
  v24 = EmitViewerSPI::emitNodeInputPort(a2, @"mask", v23);
  if (v24)
  {
    [v10 addObject:v24];
  }

  v25 = [MEMORY[0x1E695DF70] array];
  ODSResultIndexAndLength = mlir::mps::GRUOp::getODSResultIndexAndLength(&v63, 0, v26, v27);
  if (*(v63 + 9))
  {
    NextResultAtOffset = v63 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v30 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  v31 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", v30);
  if (v31)
  {
    [v25 addObject:v31];
  }

  v34 = mlir::mps::GRUOp::getODSResultIndexAndLength(&v63, 1u, v32, v33);
  if (*(v63 + 9))
  {
    v35 = v63 - 16;
  }

  else
  {
    v35 = 0;
  }

  if (v34)
  {
    v35 = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, v34);
  }

  if (HIDWORD(v34) + v34 == v34)
  {
    v36 = 0;
  }

  else
  {
    v36 = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, 0);
  }

  v37 = EmitViewerSPI::emitNodeOutputPort(a2, @"training_state", v36);
  if (v37)
  {
    [v25 addObject:v37];
  }

  v38 = [MEMORY[0x1E695DF70] array];
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v63);
  v40 = [MEMORY[0x1E695DF70] array];
  v41 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v40 addObject:v41];

  v42 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v40 addObject:v42];

  v43 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v40 addObject:v43];

  v44 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v40 addObject:v44];

  v45 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v40 addObject:v45];

  v46 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v40 addObject:v46];

  v47 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"activation" type:@"MPSRNNActivation" cases:v40 value:StorageType];
  if (v47)
  {
    [v38 addObject:v47];
  }

  LOBYTE(v64) = mlir::mps::StridedSliceOp::getEndIsSize(&v63);
  v48 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"training" dataType:2147483656 shape:&unk_1F5B76B98];
  if (v48)
  {
    v49 = [MEMORY[0x1E695DEF0] dataWithBytes:&v64 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v48 setValue:v49];

    [v38 addObject:v48];
  }

  v50 = [MEMORY[0x1E695DF70] array];
  v51 = [MPSGraphViewerNodeSPI alloc];
  v52 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v53 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v54 = [MEMORY[0x1E695DEC8] arrayWithArray:v38];
  v55 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v56 = [(MPSGraphViewerNodeSPI *)v51 initWithType:v60 inputs:v52 outputs:v53 properties:v54 regions:v55];
  v57 = *(this + 3);
  *(this + 3) = v56;
  v58 = ;
  [*(this + 3) setLocalizedDescription:v58];

  if (v62 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E070D72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSinhOpHandler *EmitterViewerSPI::MPSSinhOpHandler::MPSSinhOpHandler(EmitterViewerSPI::MPSSinhOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49F80;
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

void sub_1E070DBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSizeOpHandler *EmitterViewerSPI::MPSSizeOpHandler::MPSSizeOpHandler(EmitterViewerSPI::MPSSizeOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49FB0;
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
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E070DF5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSliceOpHandler *EmitterViewerSPI::MPSSliceOpHandler::MPSSliceOpHandler(EmitterViewerSPI::MPSSliceOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B49FE0;
  v33 = *(*(a3 + 6) + 8);
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"start", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"length", *(*(a3 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v16 = a3 - 16;
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

void sub_1E070E3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSoftmaxOpHandler *EmitterViewerSPI::MPSSoftmaxOpHandler::MPSSoftmaxOpHandler(EmitterViewerSPI::MPSSoftmaxOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A010;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", *(*(a3 + 9) + 56));
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

void sub_1E070E814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSoftplusOpHandler *EmitterViewerSPI::MPSSoftplusOpHandler::MPSSoftplusOpHandler(EmitterViewerSPI::MPSSoftplusOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A040;
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

void sub_1E070EBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSoftplusParametricOpHandler *EmitterViewerSPI::MPSSoftplusParametricOpHandler::MPSSoftplusParametricOpHandler(EmitterViewerSPI::MPSSoftplusParametricOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A070;
  v33 = *(*(a3 + 6) + 8);
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"alpha", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"beta", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(a3 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v16 = a3 - 16;
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

void sub_1E070F078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSoftsignOpHandler *EmitterViewerSPI::MPSSoftsignOpHandler::MPSSoftsignOpHandler(EmitterViewerSPI::MPSSoftsignOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A0A0;
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

void sub_1E070F494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSortOpHandler *EmitterViewerSPI::MPSSortOpHandler::MPSSortOpHandler(EmitterViewerSPI::MPSSortOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A0D0;
  v5 = *(*(a3 + 6) + 8);
  v37 = a3;
  v38 = v5;
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

  v36 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v36 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v34 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v37 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v37 + 9))
  {
    v14 = v37 - 16;
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

  if (*(v37 + 9))
  {
    v17 = v37 - 16;
  }

  else
  {
    v17 = 0;
  }

  v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 1);
  v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  v20 = EmitViewerSPI::emitNodeOutputPort(a2, @"indices", v19);
  if (v20)
  {
    [v13 addObject:v20];
  }

  v21 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v38) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v37);
  v22 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"descending" dataType:2147483656 shape:&unk_1F5B76BB0];
  if (v22)
  {
    v23 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v21 addObject:v22];
  }

  v24 = [MEMORY[0x1E695DF70] array];
  v25 = [MPSGraphViewerNodeSPI alloc];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v21];
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

void sub_1E070F97C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSpaceToBatchOpHandler *EmitterViewerSPI::MPSSpaceToBatchOpHandler::MPSSpaceToBatchOpHandler(EmitterViewerSPI::MPSSpaceToBatchOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A100;
  v5 = *(*(a3 + 6) + 8);
  v37 = a3;
  v38 = v5;
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

  v36 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v36 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v33 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v34 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"spatial_axes", *(*(v37 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"batch_axis", *(*(v37 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"block_dimensions", *(*(v37 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  if (*(v37 + 9))
  {
    v16 = v37 - 16;
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
  LOBYTE(v38) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v37);
  v20 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"pixel_shuffle" dataType:2147483656 shape:&unk_1F5B76BC8];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v19 addObject:v20];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v25 = v15;
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v29 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v33 inputs:v24 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;
  v31 = ;
  [*(this + 3) setLocalizedDescription:v31];

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E070FEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSpaceToDepth2DOpHandler *EmitterViewerSPI::MPSSpaceToDepth2DOpHandler::MPSSpaceToDepth2DOpHandler(EmitterViewerSPI::MPSSpaceToDepth2DOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A130;
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

  v33 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"width_axis", *(*(v38 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"height_axis", *(*(v38 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"depth_axis", *(*(v38 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v34 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v15 = v38 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v17)
  {
    [v34 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  LODWORD(v39) = mlir::pdl::ResultOp::getIndex(&v38);
  v19 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"block_size" dataType:32 shape:&unk_1F5B76BE0];
  if (v19)
  {
    v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v18 addObject:v19];
  }

  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v38);
  v21 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"pixel_shuffle" dataType:2147483656 shape:&unk_1F5B76BF8];
  if (v21)
  {
    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&IsSize length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v18 addObject:v21];
  }

  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [MPSGraphViewerNodeSPI alloc];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v34];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
  v29 = [(MPSGraphViewerNodeSPI *)v24 initWithType:v33 inputs:v25 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;
  v31 = ;
  [*(this + 3) setLocalizedDescription:v31];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071048C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSplitOpHandler *EmitterViewerSPI::MPSSplitOpHandler::MPSSplitOpHandler(EmitterViewerSPI::MPSSplitOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A160;
  v5 = *(*(a3 + 6) + 8);
  v49 = a3;
  v50 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v50);
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

  v48 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v48 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v45 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v46 = v10;
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v49, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"x", *(*(v49 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v49, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v49 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v49, 2u);
  if ((*(v49 + 46) & 0x80) != 0)
  {
    v16 = *(v49 + 9);
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
  v19 = EmitViewerSPI::emitNodeInputPort(a2, @"split_sizes", v18);
  if (v19)
  {
    [v10 addObject:v19];
  }

  v20 = [MEMORY[0x1E695DF70] array];
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v49, 0);
  v22 = ODSResultIndexAndLength;
  if (*(v49 + 9))
  {
    NextResultAtOffset = v49 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v24 = (HIDWORD(v22) + v22);
  v25 = v24 - v22;
  if (v24 != v22)
  {
    v40 = 0;
    v41 = 1;
    do
    {
      v42 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v40);
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results%d", v41 - 1];
      v44 = EmitViewerSPI::emitNodeOutputPort(a2, v43, v42);

      if (v44)
      {
        [v20 addObject:v44];
      }

      v40 = v41++;
    }

    while (v25 > v40);
  }

  v26 = [MEMORY[0x1E695DF70] array];
  Index = mlir::pdl::ResultsOp::getIndex(&v49);
  LODWORD(v50) = Index;
  BYTE4(v50) = BYTE4(Index);
  if ((Index & 0x100000000) != 0)
  {
    v28 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"num_splits" dataType:32 shape:&unk_1F5B76C10];
    if (v28)
    {
      if ((v50 & 0x100000000) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v29 = [MEMORY[0x1E695DEF0] dataWithBytes:&v50 length:8];
      [(MPSGraphViewerNodePropertyDataSPI *)v28 setValue:v29];

      [v26 addObject:v28];
    }
  }

  v30 = [MEMORY[0x1E695DF70] array];
  v31 = [MPSGraphViewerNodeSPI alloc];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v46];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v20];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v26];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v30];
  v36 = [(MPSGraphViewerNodeSPI *)v31 initWithType:v45 inputs:v32 outputs:v33 properties:v34 regions:v35];
  v37 = *(this + 3);
  *(this + 3) = v36;
  v38 = ;
  [*(this + 3) setLocalizedDescription:v38];

  if (v48 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0710AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSquareOpHandler *EmitterViewerSPI::MPSSquareOpHandler::MPSSquareOpHandler(EmitterViewerSPI::MPSSquareOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A190;
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

void sub_1E0710F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSquareRootOpHandler *EmitterViewerSPI::MPSSquareRootOpHandler::MPSSquareRootOpHandler(EmitterViewerSPI::MPSSquareRootOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A1C0;
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

void sub_1E071130C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSqueezeOpHandler *EmitterViewerSPI::MPSSqueezeOpHandler::MPSSqueezeOpHandler(EmitterViewerSPI::MPSSqueezeOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A1F0;
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

  v33 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v36 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 1u);
  if ((*(v36 + 46) & 0x80) != 0)
  {
    v14 = *(v36 + 9);
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
  if (*(v36 + 9))
  {
    v19 = v36 - 16;
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
  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [MPSGraphViewerNodeSPI alloc];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
  v29 = [(MPSGraphViewerNodeSPI *)v24 initWithType:v33 inputs:v25 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;
  v31 = ;
  [*(this + 3) setLocalizedDescription:v31];

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0711788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSStencilOpHandler *EmitterViewerSPI::MPSStencilOpHandler::MPSStencilOpHandler(EmitterViewerSPI::MPSStencilOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v83[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A220;
  v5 = *(*(a3 + 6) + 8);
  v81 = a3;
  v82 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v82);
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

  v80 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v80 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v76 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v78 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v81 + 9) + 24));
  if (v10)
  {
    [v78 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v81 + 9) + 56));
  if (v11)
  {
    [v78 addObject:v11];
  }

  v77 = [MEMORY[0x1E695DF70] array];
  if (*(v81 + 9))
  {
    v12 = v81 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v77 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  Offsets = mlir::mps::StencilOp::getOffsets(&v81);
  if (v17)
  {
    v18 = Offsets;
    if (Offsets)
    {
      v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Offsets + 8);
    }

    else
    {
      v19 = 0;
    }

    v20 = EmitViewerSPI::emitElementsAttrProperty(@"offsets", v18, v19);
    if (v20)
    {
      [v15 addObject:v20];
    }
  }

  Strides = mlir::mps::PoolMaxGradientOp::getStrides(&v81);
  v22 = Strides;
  if (Strides)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v22, v23);
  v75 = v24;
  if (v24)
  {
    [v15 addObject:v24];
  }

  AttributeValueNames = mlir::pdl::OperationOp::getAttributeValueNames(&v81);
  v26 = AttributeValueNames;
  if (AttributeValueNames)
  {
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*AttributeValueNames + 8);
  }

  else
  {
    v27 = 0;
  }

  v28 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v26, v27);
  if (v28)
  {
    [v15 addObject:v28];
  }

  ExplicitPadding = mlir::mps::StencilOp::getExplicitPadding(&v81);
  if (v30)
  {
    v31 = ExplicitPadding;
    if (ExplicitPadding)
    {
      v32 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
    }

    else
    {
      v32 = 0;
    }

    v33 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v31, v32);
    if (v33)
    {
      [v15 addObject:v33];
    }
  }

  mlir::mps::RandomNormalOp::getStdDev(&v81, &v82);
  v34 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"paddingConstant" dataType:268435488 shape:&unk_1F5B76C28];
  if (v34)
  {
    v35 = [MEMORY[0x1E695DEF0] dataWithBytes:&v82 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v34 setValue:v35];

    [v15 addObject:v34];
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v81);
  v37 = [MEMORY[0x1E695DF70] array];
  v38 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"min" value:0];
  [v37 addObject:v38];

  v39 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"max" value:1];
  [v37 addObject:v39];

  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sum" value:2];
  [v37 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"product" value:3];
  [v37 addObject:v41];

  v42 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"argMin " value:4];
  [v37 addObject:v42];

  v43 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"argMax" value:5];
  [v37 addObject:v43];

  v44 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"reductionMode" type:@"MPSReductionMode" cases:v37 value:WeightsLayout];
  if (v44)
  {
    [v15 addObject:v44];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v81);
  v46 = [MEMORY[0x1E695DF70] array];
  v47 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"zero" value:4];
  [v46 addObject:v47];

  v48 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"constant" value:0];
  [v46 addObject:v48];

  v49 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"clampToEdge" value:3];
  [v46 addObject:v49];

  v50 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"mirror" value:1];
  [v46 addObject:v50];

  v51 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"mirrorWithEdge" value:2];
  [v46 addObject:v51];

  v52 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"periodic" value:5];
  [v46 addObject:v52];

  v53 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"antiPeriodic" value:6];
  [v46 addObject:v53];

  v54 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"paddingMode" type:@"MPSStencilPaddingMode" cases:v46 value:PaddingStyle];
  if (v54)
  {
    [v15 addObject:v54];
  }

  v55 = mlir::mps::StencilOp::getPaddingStyle(&v81);
  v56 = [MEMORY[0x1E695DF70] array];
  v57 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v56 addObject:v57];

  v58 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v56 addObject:v58];

  v59 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v56 addObject:v59];

  v60 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v56 addObject:v60];

  v61 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v56 addObject:v61];

  v62 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v56 value:v55];
  if (v62)
  {
    [v15 addObject:v62];
  }

  v63 = v83[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v64) == v63)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v83);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v83);
  }

  v65 = [MEMORY[0x1E695DF70] array];
  v66 = [MPSGraphViewerNodeSPI alloc];
  v67 = [MEMORY[0x1E695DEC8] arrayWithArray:v78];
  v68 = [MEMORY[0x1E695DEC8] arrayWithArray:v77];
  v69 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v70 = [MEMORY[0x1E695DEC8] arrayWithArray:v65];
  v71 = [(MPSGraphViewerNodeSPI *)v66 initWithType:v76 inputs:v67 outputs:v68 properties:v69 regions:v70];
  v72 = *(this + 3);
  *(this + 3) = v71;
  v73 = ;
  [*(this + 3) setLocalizedDescription:v73];

  if (v80 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071221C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSStridedSliceGradientOpHandler *EmitterViewerSPI::MPSStridedSliceGradientOpHandler::MPSStridedSliceGradientOpHandler(EmitterViewerSPI::MPSStridedSliceGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A250;
  v5 = *(*(a3 + 6) + 8);
  v45 = a3;
  v46 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v46);
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

  v44 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v44 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v39 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"grad_input", *(*(v45 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"fwd_shape", *(*(v45 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"begin", *(*(v45 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"end", *(*(v45 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"stride", *(*(v45 + 9) + 152));
  if (v15)
  {
    [v10 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  if (*(v45 + 9))
  {
    v17 = v45 - 16;
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
  LODWORD(v46) = mlir::pdl::ResultOp::getIndex(&v45);
  v21 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"begin_mask" dataType:32 shape:&unk_1F5B76C40];
  if (v21)
  {
    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&v46 length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v20 addObject:v21];
  }

  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v45);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"end_mask" dataType:32 shape:&unk_1F5B76C58];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&Offset length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v20 addObject:v23];
  }

  Groups = mlir::mps::Conv3DOp::getGroups(&v45);
  v25 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"shrink_axis_mask" dataType:32 shape:&unk_1F5B76C70];
  if (v25)
  {
    v26 = [MEMORY[0x1E695DEF0] dataWithBytes:&Groups length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v25 setValue:v26];

    [v20 addObject:v25];
  }

  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v45);
  v27 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"end_is_size" dataType:2147483656 shape:&unk_1F5B76C88];
  if (v27)
  {
    v28 = [MEMORY[0x1E695DEF0] dataWithBytes:&IsSize length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v27 setValue:v28];

    [v20 addObject:v27];
  }

  v29 = [MEMORY[0x1E695DF70] array];
  v30 = [MPSGraphViewerNodeSPI alloc];
  v31 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v20];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v29];
  v35 = [(MPSGraphViewerNodeSPI *)v30 initWithType:v39 inputs:v31 outputs:v32 properties:v33 regions:v34];
  v36 = *(this + 3);
  *(this + 3) = v35;
  v37 = ;
  [*(this + 3) setLocalizedDescription:v37];

  if (v44 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0712AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSStridedSliceOpHandler *EmitterViewerSPI::MPSStridedSliceOpHandler::MPSStridedSliceOpHandler(EmitterViewerSPI::MPSStridedSliceOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A280;
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

  v37 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v44 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"begin", *(*(v44 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"end", *(*(v44 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"stride", *(*(v44 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v38 = [MEMORY[0x1E695DF70] array];
  if (*(v44 + 9))
  {
    v15 = v44 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v17)
  {
    [v38 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  LODWORD(v45) = mlir::pdl::ResultOp::getIndex(&v44);
  v19 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"begin_mask" dataType:32 shape:&unk_1F5B76CA0];
  if (v19)
  {
    v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&v45 length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v18 addObject:v19];
  }

  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v44);
  v21 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"end_mask" dataType:32 shape:&unk_1F5B76CB8];
  if (v21)
  {
    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&Offset length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v18 addObject:v21];
  }

  Groups = mlir::mps::Conv3DOp::getGroups(&v44);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"shrink_axis_mask" dataType:32 shape:&unk_1F5B76CD0];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&Groups length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v18 addObject:v23];
  }

  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v44);
  v25 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"end_is_size" dataType:2147483656 shape:&unk_1F5B76CE8];
  if (v25)
  {
    v26 = [MEMORY[0x1E695DEF0] dataWithBytes:&IsSize length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v25 setValue:v26];

    [v18 addObject:v25];
  }

  v27 = [MEMORY[0x1E695DF70] array];
  v28 = [MPSGraphViewerNodeSPI alloc];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v38];
  v31 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v27];
  v33 = [(MPSGraphViewerNodeSPI *)v28 initWithType:v37 inputs:v29 outputs:v30 properties:v31 regions:v32];
  v34 = *(this + 3);
  *(this + 3) = v33;
  v35 = ;
  [*(this + 3) setLocalizedDescription:v35];

  if (v43 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07131A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSStridedSliceUpdateOpHandler *EmitterViewerSPI::MPSStridedSliceUpdateOpHandler::MPSStridedSliceUpdateOpHandler(EmitterViewerSPI::MPSStridedSliceUpdateOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A2B0;
  v5 = *(*(a3 + 6) + 8);
  v45 = a3;
  v46 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v46);
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

  v44 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v44 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v39 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"data", *(*(v45 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"update", *(*(v45 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"begin", *(*(v45 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"end", *(*(v45 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"stride", *(*(v45 + 9) + 152));
  if (v15)
  {
    [v10 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  if (*(v45 + 9))
  {
    v17 = v45 - 16;
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
  LODWORD(v46) = mlir::pdl::ResultOp::getIndex(&v45);
  v21 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"begin_mask" dataType:32 shape:&unk_1F5B76D00];
  if (v21)
  {
    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&v46 length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v20 addObject:v21];
  }

  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v45);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"end_mask" dataType:32 shape:&unk_1F5B76D18];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&Offset length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v20 addObject:v23];
  }

  Groups = mlir::mps::Conv3DOp::getGroups(&v45);
  v25 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"shrink_axis_mask" dataType:32 shape:&unk_1F5B76D30];
  if (v25)
  {
    v26 = [MEMORY[0x1E695DEF0] dataWithBytes:&Groups length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v25 setValue:v26];

    [v20 addObject:v25];
  }

  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v45);
  v27 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"end_is_size" dataType:2147483656 shape:&unk_1F5B76D48];
  if (v27)
  {
    v28 = [MEMORY[0x1E695DEF0] dataWithBytes:&IsSize length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v27 setValue:v28];

    [v20 addObject:v27];
  }

  v29 = [MEMORY[0x1E695DF70] array];
  v30 = [MPSGraphViewerNodeSPI alloc];
  v31 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v20];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v29];
  v35 = [(MPSGraphViewerNodeSPI *)v30 initWithType:v39 inputs:v31 outputs:v32 properties:v33 regions:v34];
  v36 = *(this + 3);
  *(this + 3) = v35;
  v37 = ;
  [*(this + 3) setLocalizedDescription:v37];

  if (v44 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07138DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSubtractOpHandler *EmitterViewerSPI::MPSSubtractOpHandler::MPSSubtractOpHandler(EmitterViewerSPI::MPSSubtractOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A2E0;
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

void sub_1E0713DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSwishOpHandler *EmitterViewerSPI::MPSSwishOpHandler::MPSSwishOpHandler(EmitterViewerSPI::MPSSwishOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A310;
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

void sub_1E071419C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTanOpHandler *EmitterViewerSPI::MPSTanOpHandler::MPSTanOpHandler(EmitterViewerSPI::MPSTanOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A340;
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

void sub_1E071457C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTanhOpHandler *EmitterViewerSPI::MPSTanhOpHandler::MPSTanhOpHandler(EmitterViewerSPI::MPSTanhOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A370;
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

void sub_1E071495C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTileGradientOpHandler *EmitterViewerSPI::MPSTileGradientOpHandler::MPSTileGradientOpHandler(EmitterViewerSPI::MPSTileGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A3A0;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"multiplier", *(*(a3 + 9) + 88));
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

void sub_1E0714DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTileOpHandler *EmitterViewerSPI::MPSTileOpHandler::MPSTileOpHandler(EmitterViewerSPI::MPSTileOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A3D0;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"multiplier", *(*(a3 + 9) + 56));
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

void sub_1E07151DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTopKGradientOpHandler *EmitterViewerSPI::MPSTopKGradientOpHandler::MPSTopKGradientOpHandler(EmitterViewerSPI::MPSTopKGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A400;
  v5 = *(*(a3 + 6) + 8);
  v37 = a3;
  v38 = v5;
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

  v36 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v36 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v33 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v34 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input_gradient", *(*(v37 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v37 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"k", *(*(v37 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  if (*(v37 + 9))
  {
    v16 = v37 - 16;
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
  LOBYTE(v38) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v37);
  v20 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"smallest" dataType:2147483656 shape:&unk_1F5B76D60];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v19 addObject:v20];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v25 = v15;
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v29 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v33 inputs:v24 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;
  v31 = ;
  [*(this + 3) setLocalizedDescription:v31];

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07156F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTopKOpHandler *EmitterViewerSPI::MPSTopKOpHandler::MPSTopKOpHandler(EmitterViewerSPI::MPSTopKOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A430;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v38 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"k", *(*(v38 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v15 = v38 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"values", NextResultAtOffset);
  if (v17)
  {
    [v14 addObject:v17];
  }

  if (*(v38 + 9))
  {
    v18 = v38 - 16;
  }

  else
  {
    v18 = 0;
  }

  v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 1);
  v20 = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"indices", v20);
  if (v21)
  {
    [v14 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v39) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v38);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"smallest" dataType:2147483656 shape:&unk_1F5B76D78];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v22 addObject:v23];
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v14];
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

void sub_1E0715C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTransposeOpHandler *EmitterViewerSPI::MPSTransposeOpHandler::MPSTransposeOpHandler(EmitterViewerSPI::MPSTransposeOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A460;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis1", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"axis2", *(*(a3 + 9) + 88));
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

void sub_1E07160FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTruncateOpHandler *EmitterViewerSPI::MPSTruncateOpHandler::MPSTruncateOpHandler(EmitterViewerSPI::MPSTruncateOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A490;
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

void sub_1E0716500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTypeConstraintOpHandler *EmitterViewerSPI::MPSTypeConstraintOpHandler::MPSTypeConstraintOpHandler(EmitterViewerSPI::MPSTypeConstraintOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A4C0;
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
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
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

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"This operation does not modify the input value in any way. It enforces the input value type to be more specialized than (or the same as) the constraint type."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07168EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSUnrealizedFoldOpHandler *EmitterViewerSPI::MPSUnrealizedFoldOpHandler::MPSUnrealizedFoldOpHandler(EmitterViewerSPI::MPSUnrealizedFoldOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A4F0;
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

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"This op serves the purpose of representing a folding mechanism expected to materialize. It is meant to be used within the conversion mechanism where we expect a less specialized, or generic return type for an operation, but we already have a more specialized type (in most cases, statically defined).\n\nThis op is valid if the input is more specialized than the output."}];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0716CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSUpdateRandomStateOpHandler *EmitterViewerSPI::MPSUpdateRandomStateOpHandler::MPSUpdateRandomStateOpHandler(EmitterViewerSPI::MPSUpdateRandomStateOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A520;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"state", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(a3 + 9) + 56));
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

void sub_1E07170E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSVariableFromTensorOpHandler *EmitterViewerSPI::MPSVariableFromTensorOpHandler::MPSVariableFromTensorOpHandler(EmitterViewerSPI::MPSVariableFromTensorOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A550;
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

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Create and return a variable formed from input tensor. This variable will be used to make changes to the original input tensor data, and will not persist across multiple executions of the same graph."}];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07174D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXnorOpHandler *EmitterViewerSPI::MPSXnorOpHandler::MPSXnorOpHandler(EmitterViewerSPI::MPSXnorOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A580;
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

void sub_1E07178E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXorOpHandler *EmitterViewerSPI::MPSXorOpHandler::MPSXorOpHandler(EmitterViewerSPI::MPSXorOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A5B0;
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

void sub_1E0717D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ConditionOpHandler *EmitterViewerSPI::ConditionOpHandler::ConditionOpHandler(EmitterViewerSPI::ConditionOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A5E0;
  v4 = *(*(a3 + 6) + 8);
  v39 = a3;
  v40 = v4;
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

  v38 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v38 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::serialization::ConditionOp::getODSOperandIndexAndLength(&v39, 0);
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"condition", *(*(v39 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v11)
  {
    [v9 addObject:v11];
  }

  v12 = mlir::mps::serialization::ConditionOp::getODSOperandIndexAndLength(&v39, 1u);
  if ((*(v39 + 46) & 0x80) != 0)
  {
    v13 = *(v39 + 9);
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
    v28 = (HIDWORD(v12) + v12);
    v16 = v28 - v12;
    if (v28 == v12)
    {
      goto LABEL_14;
    }
  }

  v29 = 0;
  v30 = v13 + 32 * v14;
  v31 = 1;
  do
  {
    v32 = *(v30 + 32 * v29 + 24);
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"args%d", v31 - 1];
    v34 = EmitViewerSPI::emitNodeInputPort(a2, v33, v32);

    if (v34)
    {
      [v9 addObject:v34];
    }

    v29 = v31++;
  }

  while (v16 > v29);
LABEL_14:

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [MPSGraphViewerNodeSPI alloc];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v25 = [(MPSGraphViewerNodeSPI *)v20 initWithType:v35 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  if (v38 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0718154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ForOpHandler *EmitterViewerSPI::ForOpHandler::ForOpHandler(EmitterViewerSPI::ForOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A610;
  v5 = *(*(a3 + 6) + 8);
  v76 = a3;
  v77 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v77);
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

  v75 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v75 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v67 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::serialization::ForOp::getODSOperandIndexAndLength(&v76, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"lowerBound", *(*(v76 + 9) + 32 * ODSOperandIndexAndLength + 24));
  v66 = this;
  v72 = v12;
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::serialization::ForOp::getODSOperandIndexAndLength(&v76, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"upperBound", *(*(v76 + 9) + 32 * v13 + 24));
  v70 = v14;
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::serialization::ForOp::getODSOperandIndexAndLength(&v76, 2u);
  v16 = EmitViewerSPI::emitNodeInputPort(a2, @"step", *(*(v76 + 9) + 32 * v15 + 24));
  v68 = v16;
  if (v16)
  {
    [v10 addObject:v16];
  }

  v17 = mlir::mps::serialization::ForOp::getODSOperandIndexAndLength(&v76, 3u);
  if ((*(v76 + 46) & 0x80) != 0)
  {
    v18 = *(v76 + 9);
    v19 = v17;
    v20 = (HIDWORD(v17) + v17);
    v21 = v20 - v17;
    if (v20 == v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v18 = 0;
    v19 = v17;
    v59 = (HIDWORD(v17) + v17);
    v21 = v59 - v17;
    if (v59 == v17)
    {
      goto LABEL_18;
    }
  }

  v60 = 0;
  v61 = v18 + 32 * v19;
  v62 = 1;
  do
  {
    v63 = *(v61 + 32 * v60 + 24);
    v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"initArgs%d", v62 - 1];
    v65 = EmitViewerSPI::emitNodeInputPort(a2, v64, v63);

    if (v65)
    {
      [v10 addObject:v65];
    }

    v60 = v62++;
  }

  while (v21 > v60);
LABEL_18:

  v73 = [MEMORY[0x1E695DF70] array];
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v76, 0);
  v23 = ODSResultIndexAndLength;
  if (*(v76 + 9))
  {
    NextResultAtOffset = v76 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v25 = (HIDWORD(v23) + v23);
  v26 = v25 - v23;
  if (v25 != v23)
  {
    v54 = 0;
    v55 = 1;
    do
    {
      v56 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v54);
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results%d", v55 - 1];
      v58 = EmitViewerSPI::emitNodeOutputPort(a2, v57, v56);

      if (v58)
      {
        [v73 addObject:v58];
      }

      v54 = v55++;
    }

    while (v26 > v54);
  }

  v69 = [MEMORY[0x1E695DF70] array];
  v71 = [MEMORY[0x1E695DF70] array];
  v27 = 0;
  v28 = (((v76 + 16 * ((*(v76 + 11) >> 23) & 1) + ((*(v76 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v76 + 10));
  while (*v28 != v28)
  {
    v29 = v28[1];
    v30 = v29 ? v29 - 8 : 0;
    if (v27 >= ((*(v30 + 56) - *(v30 + 48)) >> 3))
    {
      break;
    }

    v31 = v28[1];
    if (v31)
    {
      v32 = v31 - 8;
    }

    else
    {
      v32 = 0;
    }

    v33 = *(v32 + 48);
    v34 = *(v33 + 8 * v27);
    if (v34)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(a2 + 29, *(v33 + 8 * v27)))
      {
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"region_arg%d", v27];
        EmitViewerSPI::emitNodeInputPort(a2, v35, v34);
      }

      else
      {
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"region_arg%d", v27];
        EmitViewerSPI::emitNodeOutputPort(a2, v35, v34);
      }
      v36 = ;

      if (v36)
      {
        [v10 addObject:v36];
      }
    }

    ++v27;
  }

  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v28[1]; i != v28; i = i[1])
  {
    v49 = i - 1;
    if (!i)
    {
      v49 = 0;
    }

    v50 = v49 + 4;
    for (j = v49[5]; j != v50; j = j[1])
    {
      v52 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(j, v37);
      v53 = EmitViewerSPI::emitNode(a2, v52);
      if (v53)
      {
        [v38 addObject:v53];
      }
    }
  }

  v40 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"region" returnType:0 nodes:v38];
  [v71 addObject:v40];

  v41 = [MPSGraphViewerNodeSPI alloc];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v73];
  v44 = [MEMORY[0x1E695DEC8] arrayWithArray:v69];
  v45 = [MEMORY[0x1E695DEC8] arrayWithArray:v71];
  v46 = [(MPSGraphViewerNodeSPI *)v41 initWithType:v67 inputs:v42 outputs:v43 properties:v44 regions:v45];
  v47 = *(v66 + 3);
  *(v66 + 3) = v46;

  if (v75 < 0)
  {
    operator delete(__dst);
  }

  return v66;
}

void sub_1E0718910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::IfOpHandler *EmitterViewerSPI::IfOpHandler::IfOpHandler(EmitterViewerSPI::IfOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A640;
  v4 = *(*(a3 + 6) + 8);
  v75 = a3;
  v76 = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&v76);
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

  v74 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v74 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v68 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"condition", *(*(v75 + 9) + 24));
  if (v10)
  {
    [v9 addObject:v10];
  }

  v72 = [MEMORY[0x1E695DF70] array];
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v75, 0);
  v12 = ODSResultIndexAndLength;
  if (*(v75 + 9))
  {
    NextResultAtOffset = v75 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v14 = (HIDWORD(v12) + v12);
  v15 = v14 - v12;
  if (v14 != v12)
  {
    v63 = 0;
    v64 = 1;
    do
    {
      v65 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v63);
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results%d", v64 - 1];
      v67 = EmitViewerSPI::emitNodeOutputPort(a2, v66, v65);

      if (v67)
      {
        [v72 addObject:v67];
      }

      v63 = v64++;
    }

    while (v15 > v63);
  }

  v70 = [MEMORY[0x1E695DF70] array];
  v71 = [MEMORY[0x1E695DF70] array];
  v16 = 0;
  v17 = (((v75 + 16 * ((*(v75 + 11) >> 23) & 1) + ((*(v75 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v75 + 10));
  while (*v17 != v17)
  {
    v18 = v17[1];
    v19 = v18 ? v18 - 8 : 0;
    if (v16 >= ((*(v19 + 56) - *(v19 + 48)) >> 3))
    {
      break;
    }

    v20 = v17[1];
    if (v20)
    {
      v21 = v20 - 8;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v21 + 48);
    v23 = *(v22 + 8 * v16);
    if (v23)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(a2 + 29, *(v22 + 8 * v16)))
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"then_arg%d", v16];
        EmitViewerSPI::emitNodeInputPort(a2, v24, v23);
      }

      else
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"then_arg%d", v16];
        EmitViewerSPI::emitNodeOutputPort(a2, v24, v23);
      }
      v25 = ;

      if (v25)
      {
        [v9 addObject:v25];
      }
    }

    ++v16;
  }

  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v17[1]; i != v17; i = i[1])
  {
    v29 = i - 1;
    if (!i)
    {
      v29 = 0;
    }

    v30 = v29 + 4;
    for (j = v29[5]; j != v30; j = j[1])
    {
      v32 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(j, v26);
      v33 = EmitViewerSPI::emitNode(a2, v32);
      if (v33)
      {
        [v27 addObject:v33];
      }
    }
  }

  v34 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"then" returnType:0 nodes:v27];
  [v71 addObject:v34];

  v35 = 0;
  v36 = ((v75 + 16 * ((*(v75 + 11) >> 23) & 1) + ((*(v75 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v75 + 10);
  v37 = (v36 + 24);
  while (*v37 != v37)
  {
    v38 = *(v36 + 32);
    v39 = v38 ? v38 - 8 : 0;
    if (v35 >= ((*(v39 + 56) - *(v39 + 48)) >> 3))
    {
      break;
    }

    v40 = *(v36 + 32);
    if (v40)
    {
      v41 = v40 - 8;
    }

    else
    {
      v41 = 0;
    }

    v42 = *(v41 + 48);
    v43 = *(v42 + 8 * v35);
    if (v43)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(a2 + 29, *(v42 + 8 * v35)))
      {
        v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"else_arg%d", v35];
        EmitViewerSPI::emitNodeInputPort(a2, v44, v43);
      }

      else
      {
        v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"else_arg%d", v35];
        EmitViewerSPI::emitNodeOutputPort(a2, v44, v43);
      }
      v45 = ;

      if (v45)
      {
        [v9 addObject:v45];
      }
    }

    ++v35;
  }

  v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (k = *(v36 + 32); k != v37; k = k[1])
  {
    v49 = k - 1;
    if (!k)
    {
      v49 = 0;
    }

    v50 = v49 + 4;
    for (m = v49[5]; m != v50; m = m[1])
    {
      v52 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(m, v46);
      v53 = EmitViewerSPI::emitNode(a2, v52);
      if (v53)
      {
        [v47 addObject:v53];
      }
    }
  }

  v54 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"else" returnType:0 nodes:v47];
  [v71 addObject:v54];

  v55 = [MPSGraphViewerNodeSPI alloc];
  v56 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v57 = [MEMORY[0x1E695DEC8] arrayWithArray:v72];
  v58 = [MEMORY[0x1E695DEC8] arrayWithArray:v70];
  v59 = [MEMORY[0x1E695DEC8] arrayWithArray:v71];
  v60 = [(MPSGraphViewerNodeSPI *)v55 initWithType:v68 inputs:v56 outputs:v57 properties:v58 regions:v59];
  v61 = *(this + 3);
  *(this + 3) = v60;

  if (v74 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07191F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSExtractOpHandler *EmitterViewerSPI::MPSExtractOpHandler::MPSExtractOpHandler(EmitterViewerSPI::MPSExtractOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A670;
  v4 = *(*(a3 + 6) + 8);
  v42 = a3;
  v43 = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&v43);
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

  v41 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v41 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v38 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::serialization::ConditionOp::getODSOperandIndexAndLength(&v42, 0);
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"tensor", *(*(v42 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v11)
  {
    [v9 addObject:v11];
  }

  v12 = mlir::mps::serialization::ConditionOp::getODSOperandIndexAndLength(&v42, 1u);
  if ((*(v42 + 46) & 0x80) != 0)
  {
    v13 = *(v42 + 9);
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
    v31 = (HIDWORD(v12) + v12);
    v16 = v31 - v12;
    if (v31 == v12)
    {
      goto LABEL_14;
    }
  }

  v32 = 0;
  v33 = v13 + 32 * v14;
  v34 = 1;
  do
  {
    v35 = *(v33 + 32 * v32 + 24);
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"indices%d", v34 - 1];
    v37 = EmitViewerSPI::emitNodeInputPort(a2, v36, v35);

    if (v37)
    {
      [v9 addObject:v37];
    }

    v32 = v34++;
  }

  while (v16 > v32);
LABEL_14:

  v17 = [MEMORY[0x1E695DF70] array];
  if (*(v42 + 9))
  {
    v18 = v42 - 16;
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
  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v21];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v38 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v41 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0719734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSFromElementsOpHandler *EmitterViewerSPI::MPSFromElementsOpHandler::MPSFromElementsOpHandler(EmitterViewerSPI::MPSFromElementsOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A6A0;
  v4 = *(*(a3 + 6) + 8);
  v40 = a3;
  v41 = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&v41);
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

  v39 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v39 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v36 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v40, 0);
  if ((*(v40 + 46) & 0x80) != 0)
  {
    v11 = *(v40 + 9);
    v12 = ODSOperandIndexAndLength;
    v13 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v13 - ODSOperandIndexAndLength;
    if (v13 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
    v12 = ODSOperandIndexAndLength;
    v29 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v29 - ODSOperandIndexAndLength;
    if (v29 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v30 = 0;
  v31 = v11 + 32 * v12;
  v32 = 1;
  do
  {
    v33 = *(v31 + 32 * v30 + 24);
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"elements%d", v32 - 1];
    v35 = EmitViewerSPI::emitNodeInputPort(a2, v34, v33);

    if (v35)
    {
      [v9 addObject:v35];
    }

    v30 = v32++;
  }

  while (v14 > v30);
LABEL_12:
  v15 = [MEMORY[0x1E695DF70] array];
  if (*(v40 + 9))
  {
    v16 = v40 - 16;
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
  v20 = [MEMORY[0x1E695DF70] array];
  v21 = [MPSGraphViewerNodeSPI alloc];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v20];
  v26 = [(MPSGraphViewerNodeSPI *)v21 initWithType:v36 inputs:v22 outputs:v23 properties:v24 regions:v25];
  v27 = *(this + 3);
  *(this + 3) = v26;

  if (v39 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0719B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSFuncOpHandler *EmitterViewerSPI::MPSFuncOpHandler::MPSFuncOpHandler(EmitterViewerSPI::MPSFuncOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A6D0;
  v56 = a3;
  v51[0] = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v51);
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

  v55 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v55 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E695DF70] array];
  v49 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::func::FuncOp::getSymName(&v56);
  v14 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v13);
  if (v14)
  {
    [v49 addObject:v14];
  }

  v47 = this;
  v48 = v9;
  v15 = 0;
  FunctionType = mlir::func::FuncOp::getFunctionType(&v56);
  while (v15 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v16 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v15);
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v15];
    v18 = EmitViewerSPI::emitNodeOutputPort(v17, v16);

    if (v18)
    {
      [v11 addObject:v18];
    }

    ++v15;
  }

  mlir::mps::serialization::FuncOp::getSymVisibility(&v56, v51);
  if (v52 == 1)
  {
    v19 = EmitViewerSPI::emitStringProperty(@"sym_visibility", v51[0], v51[1]);
    if (v19)
    {
      [v49 addObject:v19];
    }
  }

  v50 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v56 + 16 * ((*(v56 + 11) >> 23) & 1) + ((*(v56 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v56 + 10));
  while (*v21 != v21)
  {
    v22 = v21[1];
    v23 = v22 ? v22 - 8 : 0;
    if (v20 >= ((*(v23 + 56) - *(v23 + 48)) >> 3))
    {
      break;
    }

    v24 = v21[1];
    if (v24)
    {
      v25 = v24 - 8;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v25 + 48);
    v27 = *(v26 + 8 * v20);
    if (v27)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(a2 + 29, *(v26 + 8 * v20)))
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeInputPort(a2, v28, v27);
      }

      else
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeOutputPort(a2, v28, v27);
      }
      v29 = ;

      if (v29)
      {
        [v10 addObject:v29];
      }
    }

    ++v20;
  }

  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v21[1]; i != v21; i = i[1])
  {
    v33 = i - 1;
    if (!i)
    {
      v33 = 0;
    }

    v34 = v33 + 4;
    for (j = v33[5]; j != v34; j = j[1])
    {
      v36 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(j, v30);
      v37 = EmitViewerSPI::emitNode(a2, v36);
      if (v37)
      {
        [v31 addObject:v37];
      }
    }
  }

  v38 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"mps.return" nodes:v31];
  [v50 addObject:v38];

  v39 = [MPSGraphViewerNodeSPI alloc];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v44 = [(MPSGraphViewerNodeSPI *)v39 initWithType:v48 inputs:v40 outputs:v41 properties:v42 regions:v43];
  v45 = *(v47 + 3);
  *(v47 + 3) = v44;

  if (v55 < 0)
  {
    operator delete(__dst);
  }

  return v47;
}

void sub_1E071A1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSModuleOpHandler *EmitterViewerSPI::MPSModuleOpHandler::MPSModuleOpHandler(EmitterViewerSPI::MPSModuleOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A700;
  v50 = a3;
  v46[0] = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v46);
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

  v49 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v49 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v41 = [MEMORY[0x1E695DF70] array];
  v42 = [MEMORY[0x1E695DF70] array];
  mlir::mps::serialization::ModuleOp::getSymName(&v50, v46);
  if (v47 == 1)
  {
    v11 = EmitViewerSPI::emitStringProperty(@"sym_name", v46[0], v46[1]);
    if (v11)
    {
      [v42 addObject:v11];
    }
  }

  mlir::pdl::OperationOp::getOpName(&v50, v44);
  if (v45 == 1)
  {
    v12 = EmitViewerSPI::emitStringProperty(@"sym_visibility", v44[0], v44[1]);
    if (v12)
    {
      [v42 addObject:v12];
    }
  }

  v40 = v9;
  v43 = [MEMORY[0x1E695DF70] array];
  v13 = 0;
  v14 = (((v50 + 16 * ((*(v50 + 11) >> 23) & 1) + ((*(v50 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v50 + 10));
  while (*v14 != v14)
  {
    v15 = v14[1];
    v16 = v15 ? v15 - 8 : 0;
    if (v13 >= ((*(v16 + 56) - *(v16 + 48)) >> 3))
    {
      break;
    }

    v17 = v14[1];
    if (v17)
    {
      v18 = v17 - 8;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v18 + 48);
    v20 = *(v19 + 8 * v13);
    if (v20)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(a2 + 29, *(v19 + 8 * v13)))
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v13];
        EmitViewerSPI::emitNodeInputPort(a2, v21, v20);
      }

      else
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v13];
        EmitViewerSPI::emitNodeOutputPort(a2, v21, v20);
      }
      v22 = ;

      if (v22)
      {
        [v10 addObject:v22];
      }
    }

    ++v13;
  }

  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v14[1]; i != v14; i = i[1])
  {
    v26 = i - 1;
    if (!i)
    {
      v26 = 0;
    }

    v27 = v26 + 4;
    for (j = v26[5]; j != v27; j = j[1])
    {
      v29 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(j, v23);
      v30 = EmitViewerSPI::emitNode(a2, v29);
      if (v30)
      {
        [v24 addObject:v30];
      }
    }
  }

  v31 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:0 nodes:v24];
  [v43 addObject:v31];

  v32 = [MPSGraphViewerNodeSPI alloc];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v41];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v42];
  v36 = [MEMORY[0x1E695DEC8] arrayWithArray:v43];
  v37 = [(MPSGraphViewerNodeSPI *)v32 initWithType:v40 inputs:v33 outputs:v34 properties:v35 regions:v36];
  v38 = *(this + 3);
  *(this + 3) = v37;

  if (v49 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071A7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReturnOpHandler *EmitterViewerSPI::MPSReturnOpHandler::MPSReturnOpHandler(EmitterViewerSPI::MPSReturnOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A730;
  v4 = *(*(a3 + 6) + 8);
  v37 = a3;
  v38 = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&v38);
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

  v33 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v37, 0);
  if ((*(v37 + 46) & 0x80) != 0)
  {
    v11 = *(v37 + 9);
    v12 = ODSOperandIndexAndLength;
    v13 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v13 - ODSOperandIndexAndLength;
    if (v13 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
    v12 = ODSOperandIndexAndLength;
    v26 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v26 - ODSOperandIndexAndLength;
    if (v26 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v27 = 0;
  v28 = v11 + 32 * v12;
  v29 = 1;
  do
  {
    v30 = *(v28 + 32 * v27 + 24);
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"operands%d", v29 - 1];
    v32 = EmitViewerSPI::emitNodeInputPort(a2, v31, v30);

    if (v32)
    {
      [v9 addObject:v32];
    }

    v27 = v29++;
  }

  while (v14 > v27);
LABEL_12:
  v15 = [MEMORY[0x1E695DF70] array];
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v33 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071AC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::WhileOpHandler *EmitterViewerSPI::WhileOpHandler::WhileOpHandler(EmitterViewerSPI::WhileOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A760;
  v4 = *(*(a3 + 6) + 8);
  v86 = a3;
  v87 = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&v87);
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

  v85 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v85 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v79 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v86, 0);
  if ((*(v86 + 46) & 0x80) != 0)
  {
    v11 = *(v86 + 9);
    v12 = ODSOperandIndexAndLength;
    v13 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v13 - ODSOperandIndexAndLength;
    if (v13 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
    v12 = ODSOperandIndexAndLength;
    v72 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v72 - ODSOperandIndexAndLength;
    if (v72 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v73 = 0;
  v74 = v11 + 32 * v12;
  v75 = 1;
  do
  {
    v76 = *(v74 + 32 * v73 + 24);
    v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inits%d", v75 - 1];
    v78 = EmitViewerSPI::emitNodeInputPort(a2, v77, v76);

    if (v78)
    {
      [v9 addObject:v78];
    }

    v73 = v75++;
  }

  while (v14 > v73);
LABEL_12:
  v83 = [MEMORY[0x1E695DF70] array];
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v86, 0);
  v16 = ODSResultIndexAndLength;
  if (*(v86 + 9))
  {
    NextResultAtOffset = v86 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v18 = (HIDWORD(v16) + v16);
  v19 = v18 - v16;
  if (v18 != v16)
  {
    v67 = 0;
    v68 = 1;
    do
    {
      v69 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v67);
      v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results%d", v68 - 1];
      v71 = EmitViewerSPI::emitNodeOutputPort(a2, v70, v69);

      if (v71)
      {
        [v83 addObject:v71];
      }

      v67 = v68++;
    }

    while (v19 > v67);
  }

  v81 = [MEMORY[0x1E695DF70] array];
  v82 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v86 + 16 * ((*(v86 + 11) >> 23) & 1) + ((*(v86 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v86 + 10));
  while (*v21 != v21)
  {
    v22 = v21[1];
    v23 = v22 ? v22 - 8 : 0;
    if (v20 >= ((*(v23 + 56) - *(v23 + 48)) >> 3))
    {
      break;
    }

    v24 = v21[1];
    if (v24)
    {
      v25 = v24 - 8;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v25 + 48);
    v27 = *(v26 + 8 * v20);
    if (v27)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(a2 + 29, *(v26 + 8 * v20)))
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"before_arg%d", v20];
        EmitViewerSPI::emitNodeInputPort(a2, v28, v27);
      }

      else
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"before_arg%d", v20];
        EmitViewerSPI::emitNodeOutputPort(a2, v28, v27);
      }
      v29 = ;

      if (v29)
      {
        [v9 addObject:v29];
      }
    }

    ++v20;
  }

  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v21[1]; i != v21; i = i[1])
  {
    v33 = i - 1;
    if (!i)
    {
      v33 = 0;
    }

    v34 = v33 + 4;
    for (j = v33[5]; j != v34; j = j[1])
    {
      v36 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(j, v30);
      v37 = EmitViewerSPI::emitNode(a2, v36);
      if (v37)
      {
        [v31 addObject:v37];
      }
    }
  }

  v38 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"before" returnType:0 nodes:v31];
  [v82 addObject:v38];

  v39 = 0;
  v40 = ((v86 + 16 * ((*(v86 + 11) >> 23) & 1) + ((*(v86 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v86 + 10);
  v41 = (v40 + 24);
  while (*v41 != v41)
  {
    v42 = *(v40 + 32);
    v43 = v42 ? v42 - 8 : 0;
    if (v39 >= ((*(v43 + 56) - *(v43 + 48)) >> 3))
    {
      break;
    }

    v44 = *(v40 + 32);
    if (v44)
    {
      v45 = v44 - 8;
    }

    else
    {
      v45 = 0;
    }

    v46 = *(v45 + 48);
    v47 = *(v46 + 8 * v39);
    if (v47)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(a2 + 29, *(v46 + 8 * v39)))
      {
        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"after_arg%d", v39];
        EmitViewerSPI::emitNodeInputPort(a2, v48, v47);
      }

      else
      {
        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"after_arg%d", v39];
        EmitViewerSPI::emitNodeOutputPort(a2, v48, v47);
      }
      v49 = ;

      if (v49)
      {
        [v9 addObject:v49];
      }
    }

    ++v39;
  }

  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (k = *(v40 + 32); k != v41; k = k[1])
  {
    v53 = k - 1;
    if (!k)
    {
      v53 = 0;
    }

    v54 = v53 + 4;
    for (m = v53[5]; m != v54; m = m[1])
    {
      v56 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(m, v50);
      v57 = EmitViewerSPI::emitNode(a2, v56);
      if (v57)
      {
        [v51 addObject:v57];
      }
    }
  }

  v58 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"after" returnType:0 nodes:v51];
  [v82 addObject:v58];

  v59 = [MPSGraphViewerNodeSPI alloc];
  v60 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v61 = [MEMORY[0x1E695DEC8] arrayWithArray:v83];
  v62 = [MEMORY[0x1E695DEC8] arrayWithArray:v81];
  v63 = [MEMORY[0x1E695DEC8] arrayWithArray:v82];
  v64 = [(MPSGraphViewerNodeSPI *)v59 initWithType:v79 inputs:v60 outputs:v61 properties:v62 regions:v63];
  v65 = *(this + 3);
  *(this + 3) = v64;

  if (v85 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071B4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::YieldOpHandler *EmitterViewerSPI::YieldOpHandler::YieldOpHandler(EmitterViewerSPI::YieldOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A790;
  v4 = *(*(a3 + 6) + 8);
  v37 = a3;
  v38 = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&v38);
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

  v33 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v37, 0);
  if ((*(v37 + 46) & 0x80) != 0)
  {
    v11 = *(v37 + 9);
    v12 = ODSOperandIndexAndLength;
    v13 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v13 - ODSOperandIndexAndLength;
    if (v13 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
    v12 = ODSOperandIndexAndLength;
    v26 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v26 - ODSOperandIndexAndLength;
    if (v26 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v27 = 0;
  v28 = v11 + 32 * v12;
  v29 = 1;
  do
  {
    v30 = *(v28 + 32 * v27 + 24);
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results%d", v29 - 1];
    v32 = EmitViewerSPI::emitNodeInputPort(a2, v31, v30);

    if (v32)
    {
      [v9 addObject:v32];
    }

    v27 = v29++;
  }

  while (v14 > v27);
LABEL_12:
  v15 = [MEMORY[0x1E695DF70] array];
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v33 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071B960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXANEOpHandler *EmitterViewerSPI::MPSXANEOpHandler::MPSXANEOpHandler(EmitterViewerSPI::MPSXANEOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A7C0;
  v4 = *(*(a3 + 6) + 8);
  v54 = a3;
  FunctionType = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
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

  v53 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v53 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v47 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DF70] array];
  v50 = [MEMORY[0x1E695DF70] array];
  v11 = 0;
  FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v54);
  while (v11 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v12 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v11);
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v11];
    v14 = EmitViewerSPI::emitNodeOutputPort(v13, v12);

    if (v14)
    {
      [v10 addObject:v14];
    }

    ++v11;
  }

  AneFamily = mlir::mpsx::ANEOp::getAneFamily(&v54);
  v17 = EmitViewerSPI::emitStringProperty(@"ane_family", AneFamily, v16);
  if (v17)
  {
    [v50 addObject:v17];
  }

  IsExternal = mlir::mpsx::ANEOp::getIsExternal(&v54);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"is_external" dataType:2147483656 shape:&unk_1F5B76D90];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&IsExternal length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v50 addObject:v18];
  }

  mlir::mpsx::ANEOp::getReadDataFromFileInfos(&v54);

  v49 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v54 + 16 * ((*(v54 + 11) >> 23) & 1) + ((*(v54 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v54 + 10));
  while (*v21 != v21)
  {
    v22 = v21[1];
    v23 = v22 ? v22 - 8 : 0;
    if (v20 >= ((*(v23 + 56) - *(v23 + 48)) >> 3))
    {
      break;
    }

    v24 = v21[1];
    if (v24)
    {
      v25 = v24 - 8;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v25 + 48);
    v27 = *(v26 + 8 * v20);
    if (v27)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(a2 + 29, *(v26 + 8 * v20)))
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeInputPort(a2, v28, v27);
      }

      else
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeOutputPort(a2, v28, v27);
      }
      v29 = ;

      if (v29)
      {
        [v9 addObject:v29];
      }
    }

    ++v20;
  }

  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v21[1]; i != v21; i = i[1])
  {
    v33 = i - 1;
    if (!i)
    {
      v33 = 0;
    }

    v34 = v33 + 4;
    for (j = v33[5]; j != v34; j = j[1])
    {
      v36 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(j, v30);
      v37 = EmitViewerSPI::emitNode(a2, v36);
      if (v37)
      {
        [v31 addObject:v37];
      }
    }
  }

  v38 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:0 nodes:v31];
  [v49 addObject:v38];

  v39 = [MPSGraphViewerNodeSPI alloc];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v44 = [(MPSGraphViewerNodeSPI *)v39 initWithType:v47 inputs:v40 outputs:v41 properties:v42 regions:v43];
  v45 = *(this + 3);
  *(this + 3) = v44;

  if (v53 < 0)
  {
    operator delete(__dst);
  }

  return this;
}