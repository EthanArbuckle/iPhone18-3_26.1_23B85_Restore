void sub_1E06AB52C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1E06AB080);
}

MPSGraphViewerNodePortSPI *EmitViewerSPI::emitNodeInputPort(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    MPSDataType = getMPSDataType((*(a3 + 8) & 0xFFFFFFFFFFFFFFF8));
    v7 = getMPSShapeFromMLIR(*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
    v8 = [MPSGraphViewerNodePortSPI alloc];
    v9 = std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>((a1 + 232), a3);
    if (v9)
    {
      v10 = v9[3];
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v13 = a3;
        MTLReportFailure();
      }

      v10 = -1;
    }

    v11 = [(MPSGraphViewerNodePortSPI *)v8 initWithName:v5 dataType:MPSDataType shape:v7 valueRef:v10, v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

MPSGraphViewerSPI *EmitViewerSPI::emitGraph(EmitViewerSPI *this)
{
  v2 = [MPSGraphViewerSPI alloc];
  v3 = [MEMORY[0x1E695DEC8] arrayWithArray:*(this + 22)];
  v4 = [(MPSGraphViewerSPI *)v2 initWithName:&stru_1F5B58250 nodes:v3];

  return v4;
}

void EmitViewerSPI::emitJSONDump(id *this, NSString *a2)
{
  v3 = a2;
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained(this + 8);
    v3 = WeakRetained[115];
  }

  v5 = objc_loadWeakRetained(this + 8);
  [v5[101] createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/model.mpsasteria", v3];
  v7 = [MPSGraphViewerSPI alloc];
  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:this[22]];
  v9 = [(MPSGraphViewerSPI *)v7 initWithName:&stru_1F5B58250 nodes:v8];

  v10 = MEMORY[0x1E696ACB0];
  v11 = [(MPSGraphViewerSPI *)v9 jsonDictionary];
  v21 = 0;
  v12 = [v10 dataWithJSONObject:v11 options:1 error:&v21];
  v13 = v21;

  if (v12)
  {
    v20 = v13;
    v14 = [v12 writeToFile:v6 options:1 error:&v20];
    v15 = v20;

    if ((v14 & 1) == 0)
    {
      v16 = v6;
      if (!v15)
      {
        printf("EmitViewerSPI : unable to write model to %s", [v6 UTF8String]);
        v13 = 0;
        goto LABEL_12;
      }

      v17 = [v6 UTF8String];
      v18 = [v15 description];
      printf("EmitViewerSPI : unable to write model to %s: %s\n", v17, [v18 UTF8String]);
    }

    v13 = v15;
  }

  else if (v13)
  {
    v19 = [v13 description];
    printf("EmitViewerSPI : unable to serialize model: %s\n", [v19 UTF8String]);
  }

  else
  {
    printf("EmitViewerSPI : unable to serialize model");
  }

LABEL_12:
}

void sub_1E06AB9F8(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

MPSGraphViewerNodePortSPI *EmitViewerSPI::emitNodeOutputPort(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    MPSDataType = getMPSDataType(a2);
    v5 = getMPSShapeFromMLIR(a2);
    v6 = [[MPSGraphViewerNodePortSPI alloc] initWithName:v3 dataType:MPSDataType shape:v5 valueRef:-1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

MPSGraphViewerNodePropertyStringSPI *EmitViewerSPI::emitStringProperty(void *a1, const void *a2, size_t a3)
{
  v5 = a1;
  v6 = MEMORY[0x1E696AEC0];
  if (a2)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (a3 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v12) = a3;
    if (a3)
    {
      memmove(__dst, a2, a3);
    }

    *(__dst + a3) = 0;
    if (v12 >= 0)
    {
      v7 = __dst;
    }

    else
    {
      v7 = __dst[0];
    }
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v7 = __dst;
    v12 = 0;
  }

  v8 = [v6 stringWithCString:v7 encoding:4];
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__dst[0]);
  }

  v9 = [[MPSGraphViewerNodePropertyStringSPI alloc] initWithName:v5 value:v8];

  return v9;
}

void sub_1E06ABCAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

MPSGraphViewerNodePropertyDataSPI *EmitViewerSPI::emitElementsAttrProperty(void *a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a2;
  v19[1] = a3;
  v5 = a1;
  mlir::mps::CPUNDArray::CPUNDArray(v17, a2, a3);
  NumElements = mlir::mps::CPUNDArray::getNumElements(v17);
  Type = mlir::ElementsAttr::getType(v19);
  MPSDataType = getMPSDataType(Type);
  v9 = mlir::ElementsAttr::getType(v19);
  v10 = getMPSShapeFromMLIR(v9);
  v11 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:v5 dataType:MPSDataType shape:v10];
  if (v11)
  {
    if (!mlir::ElementsAttr::isSplat(v19))
    {
      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:v18 length:(NumElements * MPSDataType + 7) >> 3];
      [(MPSGraphViewerNodePropertyDataSPI *)v11 setValue:v13];
      goto LABEL_6;
    }

    if (mlir::mps::CPUNDArray::isComplexType(v17))
    {
      LODWORD(SplatIntegerValue) = mlir::mps::CPUNDArray::getSplatComplexValue(v17).u32[0];
      HIDWORD(SplatIntegerValue) = v12;
      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:&SplatIntegerValue length:8];
      [(MPSGraphViewerNodePropertyDataSPI *)v11 setSplatValue:v13];
LABEL_6:

      v14 = v11;
      goto LABEL_14;
    }

    if (mlir::mps::CPUNDArray::isFloatType(v17))
    {
      LODWORD(SplatIntegerValue) = mlir::mps::CPUNDArray::getSplatFloatValue(v17);
      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:&SplatIntegerValue length:4];
      [(MPSGraphViewerNodePropertyDataSPI *)v11 setSplatValue:v13];
      goto LABEL_6;
    }

    if (mlir::mps::CPUNDArray::isIntegerType(v17))
    {
      SplatIntegerValue = mlir::mps::CPUNDArray::getSplatIntegerValue(v17);
      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:&SplatIntegerValue length:8];
      [(MPSGraphViewerNodePropertyDataSPI *)v11 setSplatValue:v13];
      goto LABEL_6;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v14 = 0;
LABEL_14:

  mlir::mps::CPUNDArray::~CPUNDArray(v17);

  return v14;
}

void sub_1E06ABEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  mlir::mps::CPUNDArray::~CPUNDArray(va);
  _Unwind_Resume(a1);
}

void sub_1E06ABF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  mlir::mps::CPUNDArray::~CPUNDArray(va);
  _Unwind_Resume(a1);
}

void sub_1E06ABFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlir::mps::CPUNDArray::~CPUNDArray(va);

  _Unwind_Resume(a1);
}

void sub_1E06ABFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  mlir::mps::CPUNDArray::~CPUNDArray(va);
  _Unwind_Resume(a1);
}

void sub_1E06ABFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  mlir::mps::CPUNDArray::~CPUNDArray(va);
  _Unwind_Resume(a1);
}

void sub_1E06AC010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlir::mps::CPUNDArray::~CPUNDArray(va);

  _Unwind_Resume(a1);
}

void sub_1E06AC028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlir::mps::CPUNDArray::~CPUNDArray(va);

  _Unwind_Resume(a1);
}

void EmitViewerSPI::~EmitViewerSPI(EmitViewerSPI *this)
{
  EmitViewerSPI::~EmitViewerSPI(this);

  JUMPOUT(0x1E12E5B90);
}

{
  *this = &unk_1F5B4AF60;
  v2 = *(this + 31);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 29);
  *(this + 29) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 25);
  if (v5)
  {
    do
    {
      v7 = *v5;
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      operator delete(v5);
      v5 = v7;
    }

    while (v7);
  }

  v6 = *(this + 23);
  *(this + 23) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  EmitBase::~EmitBase(this);
}

uint64_t EmitViewerSPI::getNewTensorNameForValue(void *a1, unint64_t a2)
{
  v2 = a1[28];
  a1[28] = v2 + 1;
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[30];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(a1[29] + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        if (v10[2] == a2)
        {
          goto LABEL_23;
        }
      }

      else if ((v11 & (*&v6 - 1)) != v8)
      {
        goto LABEL_22;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v12 = v10[1];
    if (v12 == v5)
    {
      break;
    }

    if (v12 >= *&v6)
    {
      v12 %= *&v6;
    }

    if (v12 != v8)
    {
      goto LABEL_22;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

LABEL_23:
  v10[3] = v2;
  return v2;
}

EmitterViewerSPI::ANECA11LegacyOpHandler *EmitterViewerSPI::ANECA11LegacyOpHandler::ANECA11LegacyOpHandler(EmitterViewerSPI::ANECA11LegacyOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B468F0;
  v5 = *(*(a3 + 6) + 8);
  v53 = a3;
  FunctionType = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
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

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v49 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::anec::A11Legacy::getSymName(&v53);
  v15 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v14);
  if (v15)
  {
    [v49 addObject:v15];
  }

  v47 = this;
  v48 = v10;
  v16 = 0;
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v53);
  while (v16 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v17 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v16);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v16];
    v19 = EmitViewerSPI::emitNodeOutputPort(v18, v17);

    if (v19)
    {
      [v12 addObject:v19];
    }

    ++v16;
  }

  v50 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v53 + 16 * ((*(v53 + 11) >> 23) & 1) + ((*(v53 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v53 + 10));
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
        [v11 addObject:v29];
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

  v38 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"anec.region_return" nodes:v31];
  [v50 addObject:v38];

  v39 = [MPSGraphViewerNodeSPI alloc];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v44 = [(MPSGraphViewerNodeSPI *)v39 initWithType:v48 inputs:v40 outputs:v41 properties:v42 regions:v43];
  v45 = *(v47 + 3);
  *(v47 + 3) = v44;

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return v47;
}

void sub_1E06ACA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v11 = result[1];
        if (v11 == v5)
        {
          if (result[2] == a2)
          {
            return result;
          }
        }

        else if ((v11 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v12 = result[1];
      if (v12 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v12 >= *&v2)
        {
          v12 %= *&v2;
        }

        if (v12 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

EmitterViewerSPI::ANECA12OpHandler *EmitterViewerSPI::ANECA12OpHandler::ANECA12OpHandler(EmitterViewerSPI::ANECA12OpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46920;
  v5 = *(*(a3 + 6) + 8);
  v53 = a3;
  FunctionType = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
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

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v49 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::anec::A11Legacy::getSymName(&v53);
  v15 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v14);
  if (v15)
  {
    [v49 addObject:v15];
  }

  v47 = this;
  v48 = v10;
  v16 = 0;
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v53);
  while (v16 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v17 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v16);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v16];
    v19 = EmitViewerSPI::emitNodeOutputPort(v18, v17);

    if (v19)
    {
      [v12 addObject:v19];
    }

    ++v16;
  }

  v50 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v53 + 16 * ((*(v53 + 11) >> 23) & 1) + ((*(v53 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v53 + 10));
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
        [v11 addObject:v29];
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

  v38 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"anec.region_return" nodes:v31];
  [v50 addObject:v38];

  v39 = [MPSGraphViewerNodeSPI alloc];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v44 = [(MPSGraphViewerNodeSPI *)v39 initWithType:v48 inputs:v40 outputs:v41 properties:v42 regions:v43];
  v45 = *(v47 + 3);
  *(v47 + 3) = v44;

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return v47;
}

void sub_1E06AD1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECA13OpHandler *EmitterViewerSPI::ANECA13OpHandler::ANECA13OpHandler(EmitterViewerSPI::ANECA13OpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46950;
  v5 = *(*(a3 + 6) + 8);
  v53 = a3;
  FunctionType = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
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

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v49 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::anec::A11Legacy::getSymName(&v53);
  v15 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v14);
  if (v15)
  {
    [v49 addObject:v15];
  }

  v47 = this;
  v48 = v10;
  v16 = 0;
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v53);
  while (v16 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v17 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v16);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v16];
    v19 = EmitViewerSPI::emitNodeOutputPort(v18, v17);

    if (v19)
    {
      [v12 addObject:v19];
    }

    ++v16;
  }

  v50 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v53 + 16 * ((*(v53 + 11) >> 23) & 1) + ((*(v53 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v53 + 10));
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
        [v11 addObject:v29];
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

  v38 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"anec.region_return" nodes:v31];
  [v50 addObject:v38];

  v39 = [MPSGraphViewerNodeSPI alloc];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v44 = [(MPSGraphViewerNodeSPI *)v39 initWithType:v48 inputs:v40 outputs:v41 properties:v42 regions:v43];
  v45 = *(v47 + 3);
  *(v47 + 3) = v44;

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return v47;
}

void sub_1E06AD7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECA14OpHandler *EmitterViewerSPI::ANECA14OpHandler::ANECA14OpHandler(EmitterViewerSPI::ANECA14OpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46980;
  v5 = *(*(a3 + 6) + 8);
  v53 = a3;
  FunctionType = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
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

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v49 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::anec::A11Legacy::getSymName(&v53);
  v15 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v14);
  if (v15)
  {
    [v49 addObject:v15];
  }

  v47 = this;
  v48 = v10;
  v16 = 0;
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v53);
  while (v16 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v17 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v16);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v16];
    v19 = EmitViewerSPI::emitNodeOutputPort(v18, v17);

    if (v19)
    {
      [v12 addObject:v19];
    }

    ++v16;
  }

  v50 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v53 + 16 * ((*(v53 + 11) >> 23) & 1) + ((*(v53 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v53 + 10));
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
        [v11 addObject:v29];
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

  v38 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"anec.region_return" nodes:v31];
  [v50 addObject:v38];

  v39 = [MPSGraphViewerNodeSPI alloc];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v44 = [(MPSGraphViewerNodeSPI *)v39 initWithType:v48 inputs:v40 outputs:v41 properties:v42 regions:v43];
  v45 = *(v47 + 3);
  *(v47 + 3) = v44;

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return v47;
}

void sub_1E06ADE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECA15OpHandler *EmitterViewerSPI::ANECA15OpHandler::ANECA15OpHandler(EmitterViewerSPI::ANECA15OpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B469B0;
  v5 = *(*(a3 + 6) + 8);
  v53 = a3;
  FunctionType = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
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

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v49 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::anec::A11Legacy::getSymName(&v53);
  v15 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v14);
  if (v15)
  {
    [v49 addObject:v15];
  }

  v47 = this;
  v48 = v10;
  v16 = 0;
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v53);
  while (v16 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v17 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v16);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v16];
    v19 = EmitViewerSPI::emitNodeOutputPort(v18, v17);

    if (v19)
    {
      [v12 addObject:v19];
    }

    ++v16;
  }

  v50 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v53 + 16 * ((*(v53 + 11) >> 23) & 1) + ((*(v53 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v53 + 10));
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
        [v11 addObject:v29];
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

  v38 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"anec.region_return" nodes:v31];
  [v50 addObject:v38];

  v39 = [MPSGraphViewerNodeSPI alloc];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v44 = [(MPSGraphViewerNodeSPI *)v39 initWithType:v48 inputs:v40 outputs:v41 properties:v42 regions:v43];
  v45 = *(v47 + 3);
  *(v47 + 3) = v44;

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return v47;
}

void sub_1E06AE47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECA16OpHandler *EmitterViewerSPI::ANECA16OpHandler::ANECA16OpHandler(EmitterViewerSPI::ANECA16OpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B469E0;
  v5 = *(*(a3 + 6) + 8);
  v53 = a3;
  FunctionType = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
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

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v49 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::anec::A11Legacy::getSymName(&v53);
  v15 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v14);
  if (v15)
  {
    [v49 addObject:v15];
  }

  v47 = this;
  v48 = v10;
  v16 = 0;
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v53);
  while (v16 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v17 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v16);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v16];
    v19 = EmitViewerSPI::emitNodeOutputPort(v18, v17);

    if (v19)
    {
      [v12 addObject:v19];
    }

    ++v16;
  }

  v50 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v53 + 16 * ((*(v53 + 11) >> 23) & 1) + ((*(v53 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v53 + 10));
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
        [v11 addObject:v29];
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

  v38 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"anec.region_return" nodes:v31];
  [v50 addObject:v38];

  v39 = [MPSGraphViewerNodeSPI alloc];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v44 = [(MPSGraphViewerNodeSPI *)v39 initWithType:v48 inputs:v40 outputs:v41 properties:v42 regions:v43];
  v45 = *(v47 + 3);
  *(v47 + 3) = v44;

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return v47;
}

void sub_1E06AEAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECA17OpHandler *EmitterViewerSPI::ANECA17OpHandler::ANECA17OpHandler(EmitterViewerSPI::ANECA17OpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46A10;
  v5 = *(*(a3 + 6) + 8);
  v53 = a3;
  FunctionType = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
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

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v49 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::anec::A11Legacy::getSymName(&v53);
  v15 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v14);
  if (v15)
  {
    [v49 addObject:v15];
  }

  v47 = this;
  v48 = v10;
  v16 = 0;
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v53);
  while (v16 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v17 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v16);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v16];
    v19 = EmitViewerSPI::emitNodeOutputPort(v18, v17);

    if (v19)
    {
      [v12 addObject:v19];
    }

    ++v16;
  }

  v50 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v53 + 16 * ((*(v53 + 11) >> 23) & 1) + ((*(v53 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v53 + 10));
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
        [v11 addObject:v29];
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

  v38 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"anec.region_return" nodes:v31];
  [v50 addObject:v38];

  v39 = [MPSGraphViewerNodeSPI alloc];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v44 = [(MPSGraphViewerNodeSPI *)v39 initWithType:v48 inputs:v40 outputs:v41 properties:v42 regions:v43];
  v45 = *(v47 + 3);
  *(v47 + 3) = v44;

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return v47;
}

void sub_1E06AF104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECA18OpHandler *EmitterViewerSPI::ANECA18OpHandler::ANECA18OpHandler(EmitterViewerSPI::ANECA18OpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46A40;
  v5 = *(*(a3 + 6) + 8);
  v53 = a3;
  FunctionType = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
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

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v49 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::anec::A11Legacy::getSymName(&v53);
  v15 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v14);
  if (v15)
  {
    [v49 addObject:v15];
  }

  v47 = this;
  v48 = v10;
  v16 = 0;
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v53);
  while (v16 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v17 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v16);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v16];
    v19 = EmitViewerSPI::emitNodeOutputPort(v18, v17);

    if (v19)
    {
      [v12 addObject:v19];
    }

    ++v16;
  }

  v50 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v53 + 16 * ((*(v53 + 11) >> 23) & 1) + ((*(v53 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v53 + 10));
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
        [v11 addObject:v29];
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

  v38 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"anec.region_return" nodes:v31];
  [v50 addObject:v38];

  v39 = [MPSGraphViewerNodeSPI alloc];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v44 = [(MPSGraphViewerNodeSPI *)v39 initWithType:v48 inputs:v40 outputs:v41 properties:v42 regions:v43];
  v45 = *(v47 + 3);
  *(v47 + 3) = v44;

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return v47;
}

void sub_1E06AF748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECArgMinMaxOpHandler *EmitterViewerSPI::ANECArgMinMaxOpHandler::ANECArgMinMaxOpHandler(EmitterViewerSPI::ANECArgMinMaxOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46A70;
  v5 = *(*(a3 + 6) + 8);
  v50 = a3;
  v51 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v51);
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

  v49 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v49 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v47 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v50 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v50 + 9))
  {
    v13 = v50 - 16;
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
  Axes = mlir::anec::ArgMinMax::getAxes(&v50);
  v18 = Axes;
  if (Axes)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(@"axes", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  Mode = mlir::anec::ArgMinMax::getMode(&v50);
  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Min" value:0];
  [v22 addObject:v23];

  v24 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Max" value:1];
  [v22 addObject:v24];

  v25 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"mode" type:@"ANECArgMinMaxMode" cases:v22 value:Mode];
  if (v25)
  {
    [v16 addObject:v25];
  }

  KernelSize = mlir::anec::ArgMinMax::getKernelSize(&v50);
  v27 = KernelSize;
  if (KernelSize)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelSize + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(@"kernel_size", v27, v28);
  if (v29)
  {
    [v16 addObject:v29];
  }

  StrideValues = mlir::anec::ArgMinMax::getStrideValues(&v50);
  v31 = StrideValues;
  if (StrideValues)
  {
    v32 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*StrideValues + 8);
  }

  else
  {
    v32 = 0;
  }

  v33 = EmitViewerSPI::emitElementsAttrProperty(@"stride_values", v31, v32);
  if (v33)
  {
    [v16 addObject:v33];
  }

  PadValues = mlir::anec::ArgMinMax::getPadValues(&v50);
  v35 = PadValues;
  if (PadValues)
  {
    v36 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*PadValues + 8);
  }

  else
  {
    v36 = 0;
  }

  v37 = EmitViewerSPI::emitElementsAttrProperty(@"pad_values", v35, v36);
  if (v37)
  {
    [v16 addObject:v37];
  }

  v38 = [MEMORY[0x1E695DF70] array];
  v39 = [MPSGraphViewerNodeSPI alloc];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v38];
  v44 = [(MPSGraphViewerNodeSPI *)v39 initWithType:v47 inputs:v40 outputs:v41 properties:v42 regions:v43];
  v45 = *(this + 3);
  *(this + 3) = v44;

  if (v49 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06AFD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECAveragePoolOpHandler *EmitterViewerSPI::ANECAveragePoolOpHandler::ANECAveragePoolOpHandler(EmitterViewerSPI::ANECAveragePoolOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46AA0;
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
  Stride = mlir::anec::AveragePool::getStride(&v43);
  v18 = Stride;
  if (Stride)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Stride + 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(@"stride", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  Padding = mlir::anec::AveragePool::getPadding(&v43);
  v22 = Padding;
  if (Padding)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Padding + 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(@"padding", v22, v23);
  if (v24)
  {
    [v16 addObject:v24];
  }

  Dilation = mlir::anec::Convolution::getDilation(&v43);
  v26 = Dilation;
  if (Dilation)
  {
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Dilation + 8);
  }

  else
  {
    v27 = 0;
  }

  v28 = EmitViewerSPI::emitElementsAttrProperty(@"ksize", v26, v27);
  if (v28)
  {
    [v16 addObject:v28];
  }

  LOBYTE(v44) = mlir::anec::AveragePool::getIncPad(&v43);
  v29 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"inc_pad" dataType:2147483656 shape:&unk_1F5B75E00];
  if (v29)
  {
    v30 = [MEMORY[0x1E695DEF0] dataWithBytes:&v44 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v29 setValue:v30];

    [v16 addObject:v29];
  }

  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [MPSGraphViewerNodeSPI alloc];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
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

void sub_1E06B02F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECBatchNormOpHandler *EmitterViewerSPI::ANECBatchNormOpHandler::ANECBatchNormOpHandler(EmitterViewerSPI::ANECBatchNormOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v39[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46AD0;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"mean", *(*(v37 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"variance", *(*(v37 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"gamma", *(*(v37 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"beta", *(*(v37 + 9) + 152));
  if (v15)
  {
    [v10 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  if (*(v37 + 9))
  {
    v17 = v37 - 16;
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
  mlir::anec::Rsqrt::getEpsilon(&v37, &v38);
  v21 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"epsilon" dataType:268435488 shape:&unk_1F5B75E18];
  if (v21)
  {
    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v20 addObject:v21];
  }

  v23 = v39[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v24) == v23)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v39);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v39);
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v20];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v34 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B088C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECBatchToSpaceOpHandler *EmitterViewerSPI::ANECBatchToSpaceOpHandler::ANECBatchToSpaceOpHandler(EmitterViewerSPI::ANECBatchToSpaceOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46B00;
  v5 = *(*(a3 + 6) + 8);
  v34 = a3;
  v35 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v35);
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

  v33 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v33 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v31 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
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
  Axes = mlir::anec::Softmax::getAxes(&v34);
  v19 = Axes;
  if (Axes)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(@"factors", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B0CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECBroadcastOpHandler *EmitterViewerSPI::ANECBroadcastOpHandler::ANECBroadcastOpHandler(EmitterViewerSPI::ANECBroadcastOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46B30;
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

void sub_1E06B10A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECCastOpHandler *EmitterViewerSPI::ANECCastOpHandler::ANECCastOpHandler(EmitterViewerSPI::ANECCastOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46B60;
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

void sub_1E06B1444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECCeilOpHandler *EmitterViewerSPI::ANECCeilOpHandler::ANECCeilOpHandler(EmitterViewerSPI::ANECCeilOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46B90;
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

void sub_1E06B17E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECChannelToSpaceOpHandler *EmitterViewerSPI::ANECChannelToSpaceOpHandler::ANECChannelToSpaceOpHandler(EmitterViewerSPI::ANECChannelToSpaceOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46BC0;
  v5 = *(*(a3 + 6) + 8);
  v34 = a3;
  v35 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v35);
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

  v33 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v33 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v31 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
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
  Axes = mlir::anec::Softmax::getAxes(&v34);
  v19 = Axes;
  if (Axes)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(@"factors", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B1BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECClampedReluOpHandler *EmitterViewerSPI::ANECClampedReluOpHandler::ANECClampedReluOpHandler(EmitterViewerSPI::ANECClampedReluOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v39[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46BF0;
  v35 = a3;
  v38 = *(*(a3 + 6) + 8);
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

  v34 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v34 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v32 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v35 + 9) + 24));
  if (v10)
  {
    [v9 addObject:v10];
  }

  v11 = [MEMORY[0x1E695DF70] array];
  if (*(v35 + 9))
  {
    v12 = v35 - 16;
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
  mlir::anec::InstanceNorm::getEpsilon(&v35, &v38);
  v16 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"min_value" dataType:268435488 shape:&unk_1F5B75E30];
  if (v16)
  {
    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v16 setValue:v17];

    [v15 addObject:v16];
  }

  mlir::anec::DeQuant::getScale(&v35, v36);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"max_value" dataType:268435488 shape:&unk_1F5B75E48];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:v36 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v15 addObject:v18];
  }

  v20 = v37[0];
  v22 = llvm::APFloatBase::PPCDoubleDouble(v21);
  if (v22 == v20)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v37);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v37);
  }

  if (v22 == v39[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v39);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v39);
  }

  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [MPSGraphViewerNodeSPI alloc];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
  v29 = [(MPSGraphViewerNodeSPI *)v24 initWithType:v32 inputs:v25 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;

  if (v34 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B20F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  llvm::APFloat::~APFloat(&a17);

  llvm::APFloat::~APFloat(&a21);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECConcatOpHandler *EmitterViewerSPI::ANECConcatOpHandler::ANECConcatOpHandler(EmitterViewerSPI::ANECConcatOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46C20;
  v5 = *(*(a3 + 6) + 8);
  v45 = a3;
  Axis = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&Axis);
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

  v41 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v45, 0);
  if ((*(v45 + 46) & 0x80) != 0)
  {
    v12 = *(v45 + 9);
    v13 = ODSOperandIndexAndLength;
    v14 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v15 = v14 - ODSOperandIndexAndLength;
    if (v14 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    v13 = ODSOperandIndexAndLength;
    v34 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v15 = v34 - ODSOperandIndexAndLength;
    if (v34 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v35 = 0;
  v36 = v12 + 32 * v13;
  v37 = 1;
  do
  {
    v38 = *(v36 + 32 * v35 + 24);
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputs%d", v37 - 1];
    v40 = EmitViewerSPI::emitNodeInputPort(a2, v39, v38);

    if (v40)
    {
      [v10 addObject:v40];
    }

    v35 = v37++;
  }

  while (v15 > v35);
LABEL_12:
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
  Axis = mlir::anec::Concat::getAxis(&v45);
  v21 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"axis" dataType:64 shape:&unk_1F5B75E60];
  if (v21)
  {
    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&Axis length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v20 addObject:v21];
  }

  SubtractMax = mlir::anec::Softmax::getSubtractMax(&v45);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"interleave" dataType:2147483656 shape:&unk_1F5B75E78];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&SubtractMax length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v20 addObject:v23];
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v20];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v41 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  if (v44 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B2668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECConvolutionOpHandler *EmitterViewerSPI::ANECConvolutionOpHandler::ANECConvolutionOpHandler(EmitterViewerSPI::ANECConvolutionOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46C50;
  v5 = *(*(a3 + 6) + 8);
  v70 = a3;
  Groups = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&Groups);
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

  v69 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v69 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v65 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v66 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v70 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"filter", *(*(v70 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v70 + 9))
  {
    v14 = v70 - 16;
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
  Stride = mlir::anec::Convolution::getStride(&v70);
  v19 = Stride;
  if (Stride)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Stride + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(@"stride", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  Dilation = mlir::anec::Convolution::getDilation(&v70);
  v23 = Dilation;
  if (Dilation)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Dilation + 8);
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(@"dilation", v23, v24);
  if (v25)
  {
    [v17 addObject:v25];
  }

  Padding = mlir::anec::Convolution::getPadding(&v70);
  v27 = Padding;
  if (Padding)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Padding + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(@"padding", v27, v28);
  if (v29)
  {
    [v17 addObject:v29];
  }

  PaddingMode = mlir::anec::Convolution::getPaddingMode(&v70);
  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Zero" value:0];
  [v31 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Negative" value:1];
  [v31 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Replication" value:2];
  [v31 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Positive" value:3];
  [v31 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Symmetric" value:4];
  [v31 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Reflective" value:5];
  [v31 addObject:v37];

  v38 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Background" value:6];
  [v31 addObject:v38];

  v39 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DontCare" value:7];
  [v31 addObject:v39];

  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"None" value:8];
  [v31 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_mode" type:@"ANECPaddingMode" cases:v31 value:PaddingMode];
  if (v41)
  {
    [v17 addObject:v41];
  }

  Groups = mlir::anec::Convolution::getGroups(&v70);
  v42 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_1F5B75E90];
  if (v42)
  {
    v43 = [MEMORY[0x1E695DEF0] dataWithBytes:&Groups length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v42 setValue:v43];

    [v17 addObject:v42];
  }

  IncPad = mlir::anec::AveragePool::getIncPad(&v70);
  v44 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"channel_wise" dataType:2147483656 shape:&unk_1F5B75EA8];
  if (v44)
  {
    v45 = [MEMORY[0x1E695DEF0] dataWithBytes:&IncPad length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v44 setValue:v45];

    [v17 addObject:v44];
  }

  KernelScale = mlir::anec::Convolution::getKernelScale(&v70);
  if (v47)
  {
    v48 = KernelScale;
    if (KernelScale)
    {
      v49 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelScale + 8);
    }

    else
    {
      v49 = 0;
    }

    v50 = EmitViewerSPI::emitElementsAttrProperty(@"kernel_scale", v48, v49);
    if (v50)
    {
      [v17 addObject:v50];
    }
  }

  KernelZeroPoint = mlir::anec::Convolution::getKernelZeroPoint(&v70);
  if (v52)
  {
    v53 = KernelZeroPoint;
    if (KernelZeroPoint)
    {
      v54 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelZeroPoint + 8);
    }

    else
    {
      v54 = 0;
    }

    v55 = EmitViewerSPI::emitElementsAttrProperty(@"kernel_zero_point", v53, v54);
    if (v55)
    {
      [v17 addObject:v55];
    }
  }

  mlir::anec::Convolution::getKernelPalettized_LUT(&v70);
  mlir::anec::Convolution::getKernelMutablePalettized_LUT(&v70);

  v56 = [MEMORY[0x1E695DF70] array];
  v57 = [MPSGraphViewerNodeSPI alloc];
  v58 = [MEMORY[0x1E695DEC8] arrayWithArray:v66];
  v59 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v60 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v61 = [MEMORY[0x1E695DEC8] arrayWithArray:v56];
  v62 = [(MPSGraphViewerNodeSPI *)v57 initWithType:v65 inputs:v58 outputs:v59 properties:v60 regions:v61];
  v63 = *(this + 3);
  *(this + 3) = v62;

  if (v69 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B2F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

EmitterViewerSPI::ANECCosOpHandler *EmitterViewerSPI::ANECCosOpHandler::ANECCosOpHandler(EmitterViewerSPI::ANECCosOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46C80;
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

void sub_1E06B3410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECCropResizeOpHandler *EmitterViewerSPI::ANECCropResizeOpHandler::ANECCropResizeOpHandler(EmitterViewerSPI::ANECCropResizeOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v65[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46CB0;
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

  v58 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v60 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v63 + 9) + 24));
  if (v10)
  {
    [v60 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"index", *(*(v63 + 9) + 56));
  if (v11)
  {
    [v60 addObject:v11];
  }

  v59 = [MEMORY[0x1E695DF70] array];
  if (*(v63 + 9))
  {
    v12 = v63 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v59 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  OutputDims = mlir::anec::CropResize::getOutputDims(&v63);
  v17 = OutputDims;
  if (OutputDims)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*OutputDims + 8);
  }

  else
  {
    v18 = 0;
  }

  v19 = EmitViewerSPI::emitElementsAttrProperty(@"output_dims", v17, v18);
  v57 = v19;
  if (v19)
  {
    [v15 addObject:v19];
  }

  CropDims = mlir::anec::CropResize::getCropDims(&v63);
  v21 = CropDims;
  if (CropDims)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*CropDims + 8);
  }

  else
  {
    v22 = 0;
  }

  v23 = EmitViewerSPI::emitElementsAttrProperty(@"crop_dims", v21, v22);
  if (v23)
  {
    [v15 addObject:v23];
  }

  mlir::anec::CropResize::getBoxCoordinateMode(&v63);
  CoordinateMode = mlir::anec::CropResize::getCoordinateMode(&v63);
  v25 = CoordinateMode;
  if (CoordinateMode)
  {
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*CoordinateMode + 8);
  }

  else
  {
    v26 = 0;
  }

  v27 = EmitViewerSPI::emitElementsAttrProperty(@"coordinate_mode", v25, v26);
  if (v27)
  {
    [v15 addObject:v27];
  }

  NormalizedRange = mlir::anec::CropResize::getNormalizedRange(&v63);
  v29 = NormalizedRange;
  if (NormalizedRange)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*NormalizedRange + 8);
  }

  else
  {
    v30 = 0;
  }

  v31 = EmitViewerSPI::emitElementsAttrProperty(@"normalized_range", v29, v30);
  if (v31)
  {
    [v15 addObject:v31];
  }

  SamplingMode = mlir::anec::CropResize::getSamplingMode(&v63);
  v33 = SamplingMode;
  if (SamplingMode)
  {
    v34 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SamplingMode + 8);
  }

  else
  {
    v34 = 0;
  }

  v35 = EmitViewerSPI::emitElementsAttrProperty(@"sampling_mode", v33, v34);
  if (v35)
  {
    [v15 addObject:v35];
  }

  SamplingMethod = mlir::anec::CropResize::getSamplingMethod(&v63);
  v37 = SamplingMethod;
  if (SamplingMethod)
  {
    v38 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SamplingMethod + 8);
  }

  else
  {
    v38 = 0;
  }

  v39 = EmitViewerSPI::emitElementsAttrProperty(@"sampling_method", v37, v38);
  if (v39)
  {
    [v15 addObject:v39];
  }

  PaddingModes = mlir::anec::CropResize::getPaddingModes(&v63);
  v41 = PaddingModes;
  if (PaddingModes)
  {
    v42 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*PaddingModes + 8);
  }

  else
  {
    v42 = 0;
  }

  v43 = EmitViewerSPI::emitElementsAttrProperty(@"padding_modes", v41, v42);
  if (v43)
  {
    [v15 addObject:v43];
  }

  mlir::anec::CropResize::getBackgroundValue(&v63, &v64);
  v44 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"background_value" dataType:268435488 shape:&unk_1F5B75EC0];
  if (v44)
  {
    v45 = [MEMORY[0x1E695DEF0] dataWithBytes:&v64 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v44 setValue:v45];

    [v15 addObject:v44];
  }

  v46 = v65[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v47) == v46)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v65);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v65);
  }

  v48 = [MEMORY[0x1E695DF70] array];
  v49 = [MPSGraphViewerNodeSPI alloc];
  v50 = [MEMORY[0x1E695DEC8] arrayWithArray:v60];
  v51 = [MEMORY[0x1E695DEC8] arrayWithArray:v59];
  v52 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v53 = [MEMORY[0x1E695DEC8] arrayWithArray:v48];
  v54 = [(MPSGraphViewerNodeSPI *)v49 initWithType:v58 inputs:v50 outputs:v51 properties:v52 regions:v53];
  v55 = *(this + 3);
  *(this + 3) = v54;

  if (v62 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B3B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  llvm::APFloat::~APFloat(&a21);

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECDeQuantOpHandler *EmitterViewerSPI::ANECDeQuantOpHandler::ANECDeQuantOpHandler(EmitterViewerSPI::ANECDeQuantOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v38[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46CE0;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v36 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v36 + 9))
  {
    v13 = v36 - 16;
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
  mlir::anec::DeQuant::getScale(&v36, &v37);
  v17 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"scale" dataType:268435488 shape:&unk_1F5B75ED8];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v37 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  ZeroPoint = mlir::anec::DeQuant::getZeroPoint(&v36);
  v19 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"zero_point" dataType:536870944 shape:&unk_1F5B75EF0];
  if (v19)
  {
    v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&ZeroPoint length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v16 addObject:v19];
  }

  v21 = v38[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v22) == v21)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v38);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v38);
  }

  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [MPSGraphViewerNodeSPI alloc];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
  v29 = [(MPSGraphViewerNodeSPI *)v24 initWithType:v32 inputs:v25 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B4108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  llvm::APFloat::~APFloat(&a19);

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECDeconvolutionOpHandler *EmitterViewerSPI::ANECDeconvolutionOpHandler::ANECDeconvolutionOpHandler(EmitterViewerSPI::ANECDeconvolutionOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46D10;
  v5 = *(*(a3 + 6) + 8);
  v70 = a3;
  Groups = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&Groups);
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

  v69 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v69 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v65 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v66 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v70 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"filter", *(*(v70 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v70 + 9))
  {
    v14 = v70 - 16;
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
  Stride = mlir::anec::Convolution::getStride(&v70);
  v19 = Stride;
  if (Stride)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Stride + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(@"stride", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  Dilation = mlir::anec::Convolution::getDilation(&v70);
  v23 = Dilation;
  if (Dilation)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Dilation + 8);
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(@"dilation", v23, v24);
  if (v25)
  {
    [v17 addObject:v25];
  }

  Padding = mlir::anec::Convolution::getPadding(&v70);
  v27 = Padding;
  if (Padding)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Padding + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(@"padding", v27, v28);
  if (v29)
  {
    [v17 addObject:v29];
  }

  PaddingMode = mlir::anec::Convolution::getPaddingMode(&v70);
  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Zero" value:0];
  [v31 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Negative" value:1];
  [v31 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Replication" value:2];
  [v31 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Positive" value:3];
  [v31 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Symmetric" value:4];
  [v31 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Reflective" value:5];
  [v31 addObject:v37];

  v38 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Background" value:6];
  [v31 addObject:v38];

  v39 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DontCare" value:7];
  [v31 addObject:v39];

  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"None" value:8];
  [v31 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_mode" type:@"ANECPaddingMode" cases:v31 value:PaddingMode];
  if (v41)
  {
    [v17 addObject:v41];
  }

  Groups = mlir::anec::Convolution::getGroups(&v70);
  v42 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_1F5B75F08];
  if (v42)
  {
    v43 = [MEMORY[0x1E695DEF0] dataWithBytes:&Groups length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v42 setValue:v43];

    [v17 addObject:v42];
  }

  IncPad = mlir::anec::AveragePool::getIncPad(&v70);
  v44 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"channel_wise" dataType:2147483656 shape:&unk_1F5B75F20];
  if (v44)
  {
    v45 = [MEMORY[0x1E695DEF0] dataWithBytes:&IncPad length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v44 setValue:v45];

    [v17 addObject:v44];
  }

  KernelScale = mlir::anec::Convolution::getKernelScale(&v70);
  if (v47)
  {
    v48 = KernelScale;
    if (KernelScale)
    {
      v49 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelScale + 8);
    }

    else
    {
      v49 = 0;
    }

    v50 = EmitViewerSPI::emitElementsAttrProperty(@"kernel_scale", v48, v49);
    if (v50)
    {
      [v17 addObject:v50];
    }
  }

  KernelZeroPoint = mlir::anec::Convolution::getKernelZeroPoint(&v70);
  if (v52)
  {
    v53 = KernelZeroPoint;
    if (KernelZeroPoint)
    {
      v54 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelZeroPoint + 8);
    }

    else
    {
      v54 = 0;
    }

    v55 = EmitViewerSPI::emitElementsAttrProperty(@"kernel_zero_point", v53, v54);
    if (v55)
    {
      [v17 addObject:v55];
    }
  }

  mlir::anec::Convolution::getKernelPalettized_LUT(&v70);
  mlir::anec::Convolution::getKernelMutablePalettized_LUT(&v70);

  v56 = [MEMORY[0x1E695DF70] array];
  v57 = [MPSGraphViewerNodeSPI alloc];
  v58 = [MEMORY[0x1E695DEC8] arrayWithArray:v66];
  v59 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v60 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v61 = [MEMORY[0x1E695DEC8] arrayWithArray:v56];
  v62 = [(MPSGraphViewerNodeSPI *)v57 initWithType:v65 inputs:v58 outputs:v59 properties:v60 regions:v61];
  v63 = *(this + 3);
  *(this + 3) = v62;

  if (v69 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B49C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECDegammaOpHandler *EmitterViewerSPI::ANECDegammaOpHandler::ANECDegammaOpHandler(EmitterViewerSPI::ANECDegammaOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46D40;
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

void sub_1E06B4E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECDiracOpHandler *EmitterViewerSPI::ANECDiracOpHandler::ANECDiracOpHandler(EmitterViewerSPI::ANECDiracOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46D70;
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

void sub_1E06B5200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseAbsOpHandler *EmitterViewerSPI::ANECElementwiseAbsOpHandler::ANECElementwiseAbsOpHandler(EmitterViewerSPI::ANECElementwiseAbsOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46DA0;
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

void sub_1E06B559C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseAddOpHandler *EmitterViewerSPI::ANECElementwiseAddOpHandler::ANECElementwiseAddOpHandler(EmitterViewerSPI::ANECElementwiseAddOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46DD0;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B596C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseDivOpHandler *EmitterViewerSPI::ANECElementwiseDivOpHandler::ANECElementwiseDivOpHandler(EmitterViewerSPI::ANECElementwiseDivOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46E00;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B5D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseEqualOpHandler *EmitterViewerSPI::ANECElementwiseEqualOpHandler::ANECElementwiseEqualOpHandler(EmitterViewerSPI::ANECElementwiseEqualOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46E30;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B611C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseEqualZeroOpHandler *EmitterViewerSPI::ANECElementwiseEqualZeroOpHandler::ANECElementwiseEqualZeroOpHandler(EmitterViewerSPI::ANECElementwiseEqualZeroOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46E60;
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

void sub_1E06B64C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseGreaterThanOpHandler *EmitterViewerSPI::ANECElementwiseGreaterThanOpHandler::ANECElementwiseGreaterThanOpHandler(EmitterViewerSPI::ANECElementwiseGreaterThanOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46E90;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B6890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseGreaterThanEqualOpHandler *EmitterViewerSPI::ANECElementwiseGreaterThanEqualOpHandler::ANECElementwiseGreaterThanEqualOpHandler(EmitterViewerSPI::ANECElementwiseGreaterThanEqualOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46EC0;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B6C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseGreaterThanEqualZeroOpHandler *EmitterViewerSPI::ANECElementwiseGreaterThanEqualZeroOpHandler::ANECElementwiseGreaterThanEqualZeroOpHandler(EmitterViewerSPI::ANECElementwiseGreaterThanEqualZeroOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46EF0;
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

void sub_1E06B700C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseGreaterThanZeroOpHandler *EmitterViewerSPI::ANECElementwiseGreaterThanZeroOpHandler::ANECElementwiseGreaterThanZeroOpHandler(EmitterViewerSPI::ANECElementwiseGreaterThanZeroOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46F20;
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

void sub_1E06B73A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseLessThanOpHandler *EmitterViewerSPI::ANECElementwiseLessThanOpHandler::ANECElementwiseLessThanOpHandler(EmitterViewerSPI::ANECElementwiseLessThanOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46F50;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B7778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseLessThanEqualOpHandler *EmitterViewerSPI::ANECElementwiseLessThanEqualOpHandler::ANECElementwiseLessThanEqualOpHandler(EmitterViewerSPI::ANECElementwiseLessThanEqualOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46F80;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B7B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseLessThanEqualZeroOpHandler *EmitterViewerSPI::ANECElementwiseLessThanEqualZeroOpHandler::ANECElementwiseLessThanEqualZeroOpHandler(EmitterViewerSPI::ANECElementwiseLessThanEqualZeroOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46FB0;
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

void sub_1E06B7EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseLessThanZeroOpHandler *EmitterViewerSPI::ANECElementwiseLessThanZeroOpHandler::ANECElementwiseLessThanZeroOpHandler(EmitterViewerSPI::ANECElementwiseLessThanZeroOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46FE0;
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

void sub_1E06B8290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseMaxOpHandler *EmitterViewerSPI::ANECElementwiseMaxOpHandler::ANECElementwiseMaxOpHandler(EmitterViewerSPI::ANECElementwiseMaxOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47010;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B8660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseMinOpHandler *EmitterViewerSPI::ANECElementwiseMinOpHandler::ANECElementwiseMinOpHandler(EmitterViewerSPI::ANECElementwiseMinOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47040;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B8A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseMultOpHandler *EmitterViewerSPI::ANECElementwiseMultOpHandler::ANECElementwiseMultOpHandler(EmitterViewerSPI::ANECElementwiseMultOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47070;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B8E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseNotEqualOpHandler *EmitterViewerSPI::ANECElementwiseNotEqualOpHandler::ANECElementwiseNotEqualOpHandler(EmitterViewerSPI::ANECElementwiseNotEqualOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B470A0;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B91E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseNotEqualZeroOpHandler *EmitterViewerSPI::ANECElementwiseNotEqualZeroOpHandler::ANECElementwiseNotEqualZeroOpHandler(EmitterViewerSPI::ANECElementwiseNotEqualZeroOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B470D0;
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

void sub_1E06B958C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwisePowerOpHandler *EmitterViewerSPI::ANECElementwisePowerOpHandler::ANECElementwisePowerOpHandler(EmitterViewerSPI::ANECElementwisePowerOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47100;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B995C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseSquareOpHandler *EmitterViewerSPI::ANECElementwiseSquareOpHandler::ANECElementwiseSquareOpHandler(EmitterViewerSPI::ANECElementwiseSquareOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47130;
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

void sub_1E06B9D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseSubOpHandler *EmitterViewerSPI::ANECElementwiseSubOpHandler::ANECElementwiseSubOpHandler(EmitterViewerSPI::ANECElementwiseSubOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47160;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BA0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECEluOpHandler *EmitterViewerSPI::ANECEluOpHandler::ANECEluOpHandler(EmitterViewerSPI::ANECEluOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v35[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47190;
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

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v33 + 9))
  {
    v13 = v33 - 16;
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
  mlir::anec::Rsqrt::getEpsilon(&v33, &v34);
  v17 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"alpha" dataType:268435488 shape:&unk_1F5B75F38];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v34 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  v19 = v35[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v20) == v19)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v35);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v35);
  }

  v21 = [MEMORY[0x1E695DF70] array];
  v22 = [MPSGraphViewerNodeSPI alloc];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v21];
  v27 = [(MPSGraphViewerNodeSPI *)v22 initWithType:v30 inputs:v23 outputs:v24 properties:v25 regions:v26];
  v28 = *(this + 3);
  *(this + 3) = v27;

  if (v32 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BA540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECErfOpHandler *EmitterViewerSPI::ANECErfOpHandler::ANECErfOpHandler(EmitterViewerSPI::ANECErfOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B471C0;
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

void sub_1E06BA908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECExp2OpHandler *EmitterViewerSPI::ANECExp2OpHandler::ANECExp2OpHandler(EmitterViewerSPI::ANECExp2OpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B471F0;
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

void sub_1E06BACA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECFlattenOpHandler *EmitterViewerSPI::ANECFlattenOpHandler::ANECFlattenOpHandler(EmitterViewerSPI::ANECFlattenOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47220;
  v5 = *(*(a3 + 6) + 8);
  v34 = a3;
  v35 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v35);
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

  v33 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v33 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v31 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v11)
  {
    [v31 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v34 + 9))
  {
    v13 = v34 - 16;
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
  FlattenMode = mlir::anec::Flatten::getFlattenMode(&v34);
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:1];
  [v18 addObject:v19];

  v20 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:2];
  [v18 addObject:v20];

  v21 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"flatten_mode" type:@"ANECFlattenMode" cases:v18 value:FlattenMode];
  if (v21)
  {
    [v16 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v31];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BB100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECFloorOpHandler *EmitterViewerSPI::ANECFloorOpHandler::ANECFloorOpHandler(EmitterViewerSPI::ANECFloorOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47250;
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

void sub_1E06BB4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECGOCOpHandler *EmitterViewerSPI::ANECGOCOpHandler::ANECGOCOpHandler(EmitterViewerSPI::ANECGOCOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47280;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"bias", *(*(a3 + 9) + 88));
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
  v25 = [(MPSGraphViewerNodeSPI *)v20 initWithType:v28 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BB8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECGatherNDOpHandler *EmitterViewerSPI::ANECGatherNDOpHandler::ANECGatherNDOpHandler(EmitterViewerSPI::ANECGatherNDOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B472B0;
  v5 = *(*(a3 + 6) + 8);
  v34 = a3;
  v35 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v35);
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

  v33 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v33 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v31 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"data", *(*(v34 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"index", *(*(v34 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
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
  Axes = mlir::anec::Softmax::getAxes(&v34);
  v19 = Axes;
  if (Axes)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(@"axes", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v31 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BBD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECGeluOpHandler *EmitterViewerSPI::ANECGeluOpHandler::ANECGeluOpHandler(EmitterViewerSPI::ANECGeluOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B472E0;
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

void sub_1E06BC0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECGlobalArgMinMaxOpHandler *EmitterViewerSPI::ANECGlobalArgMinMaxOpHandler::ANECGlobalArgMinMaxOpHandler(EmitterViewerSPI::ANECGlobalArgMinMaxOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47310;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v36 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v36 + 9))
  {
    v13 = v36 - 16;
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
  LODWORD(v37) = mlir::anec::GlobalArgMinMax::getAxis(&v36);
  v17 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"axis" dataType:32 shape:&unk_1F5B75F50];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v37 length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  FlattenMode = mlir::anec::Unflatten::getFlattenMode(&v36);
  v20 = [MEMORY[0x1E695DF70] array];
  v21 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Min" value:0];
  [v20 addObject:v21];

  v22 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Max" value:1];
  [v20 addObject:v22];

  v23 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"mode" type:@"ANECArgMinMaxMode" cases:v20 value:FlattenMode];
  if (v23)
  {
    [v16 addObject:v23];
  }

  v24 = [MEMORY[0x1E695DF70] array];
  v25 = [MPSGraphViewerNodeSPI alloc];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v24];
  v30 = [(MPSGraphViewerNodeSPI *)v25 initWithType:v33 inputs:v26 outputs:v27 properties:v28 regions:v29];
  v31 = *(this + 3);
  *(this + 3) = v30;

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BC5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECHighPrecisionSigmoidOpHandler *EmitterViewerSPI::ANECHighPrecisionSigmoidOpHandler::ANECHighPrecisionSigmoidOpHandler(EmitterViewerSPI::ANECHighPrecisionSigmoidOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47340;
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

void sub_1E06BC998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECInputViewOpHandler *EmitterViewerSPI::ANECInputViewOpHandler::ANECInputViewOpHandler(EmitterViewerSPI::ANECInputViewOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47370;
  v5 = *(*(a3 + 6) + 8);
  v40 = a3;
  Height = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&Height);
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

  v39 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v39 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v33 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v34 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v40 + 9) + 24));
  if (v10)
  {
    [v34 addObject:v10];
  }

  v11 = [MEMORY[0x1E695DF70] array];
  if (*(v40 + 9))
  {
    v12 = v40 - 16;
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
  Height = mlir::anec::Resize::getHeight(&v40);
  v16 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"dimension" dataType:64 shape:&unk_1F5B75F68];
  if (v16)
  {
    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:&Height length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v16 setValue:v17];

    [v15 addObject:v16];
  }

  Offset = mlir::anec::InputView::getOffset(&v40);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"offset" dataType:64 shape:&unk_1F5B75F80];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&Offset length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v15 addObject:v18];
  }

  Size = mlir::anec::InputView::getSize(&v40);
  v20 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"size" dataType:64 shape:&unk_1F5B75F98];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&Size length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v15 addObject:v20];
  }

  Step = mlir::anec::InputView::getStep(&v40);
  v22 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"step" dataType:536870976 shape:&unk_1F5B75FB0];
  if (v22)
  {
    v23 = [MEMORY[0x1E695DEF0] dataWithBytes:&Step length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v15 addObject:v22];
  }

  v24 = [MEMORY[0x1E695DF70] array];
  v25 = [MPSGraphViewerNodeSPI alloc];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v34];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v24];
  v30 = [(MPSGraphViewerNodeSPI *)v25 initWithType:v33 inputs:v26 outputs:v27 properties:v28 regions:v29];
  v31 = *(this + 3);
  *(this + 3) = v30;

  if (v39 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BCEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECInstanceNormOpHandler *EmitterViewerSPI::ANECInstanceNormOpHandler::ANECInstanceNormOpHandler(EmitterViewerSPI::ANECInstanceNormOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v39[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B473A0;
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
  DestinationSize = mlir::anec::Unflatten::getDestinationSize(&v37);
  v18 = DestinationSize;
  if (DestinationSize)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DestinationSize + 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(@"axes", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  mlir::anec::InstanceNorm::getEpsilon(&v37, &v38);
  v21 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"epsilon" dataType:268435488 shape:&unk_1F5B75FC8];
  if (v21)
  {
    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v16 addObject:v21];
  }

  v23 = v39[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v24) == v23)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v39);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v39);
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v34 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BD430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECInvertOpHandler *EmitterViewerSPI::ANECInvertOpHandler::ANECInvertOpHandler(EmitterViewerSPI::ANECInvertOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v35[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B473D0;
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

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v33 + 9))
  {
    v13 = v33 - 16;
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
  mlir::anec::Rsqrt::getEpsilon(&v33, &v34);
  v17 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"epsilon" dataType:268435488 shape:&unk_1F5B75FE0];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v34 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  v19 = v35[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v20) == v19)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v35);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v35);
  }

  v21 = [MEMORY[0x1E695DF70] array];
  v22 = [MPSGraphViewerNodeSPI alloc];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v21];
  v27 = [(MPSGraphViewerNodeSPI *)v22 initWithType:v30 inputs:v23 outputs:v24 properties:v25 regions:v26];
  v28 = *(this + 3);
  *(this + 3) = v27;

  if (v32 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BD8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECL2NormPoolOpHandler *EmitterViewerSPI::ANECL2NormPoolOpHandler::ANECL2NormPoolOpHandler(EmitterViewerSPI::ANECL2NormPoolOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47400;
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

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v41 + 9) + 24));
  if (v12)
  {
    [v11 addObject:v12];
  }

  v38 = [MEMORY[0x1E695DF70] array];
  if (*(v41 + 9))
  {
    v13 = v41 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v38 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  Stride = mlir::anec::MaxPool::getStride(&v41);
  v18 = Stride;
  if (Stride)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Stride + 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(@"stride", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  Padding = mlir::anec::MaxPool::getPadding(&v41);
  v22 = Padding;
  if (Padding)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Padding + 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(@"padding", v22, v23);
  if (v24)
  {
    [v16 addObject:v24];
  }

  Ksize = mlir::anec::MaxPool::getKsize(&v41);
  v26 = Ksize;
  if (Ksize)
  {
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Ksize + 8);
  }

  else
  {
    v27 = 0;
  }

  v28 = EmitViewerSPI::emitElementsAttrProperty(@"ksize", v26, v27);
  if (v28)
  {
    [v16 addObject:v28];
  }

  v29 = [MEMORY[0x1E695DF70] array];
  v30 = [MPSGraphViewerNodeSPI alloc];
  v31 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v38];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v29];
  v35 = [(MPSGraphViewerNodeSPI *)v30 initWithType:v10 inputs:v31 outputs:v32 properties:v33 regions:v34];
  v36 = *(this + 3);
  *(this + 3) = v35;

  if (v40 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BDDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECLayerNormOpHandler *EmitterViewerSPI::ANECLayerNormOpHandler::ANECLayerNormOpHandler(EmitterViewerSPI::ANECLayerNormOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v39[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47430;
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
  DestinationSize = mlir::anec::Unflatten::getDestinationSize(&v37);
  v18 = DestinationSize;
  if (DestinationSize)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DestinationSize + 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(@"axes", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  mlir::anec::InstanceNorm::getEpsilon(&v37, &v38);
  v21 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"epsilon" dataType:268435488 shape:&unk_1F5B75FF8];
  if (v21)
  {
    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v16 addObject:v21];
  }

  v23 = v39[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v24) == v23)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v39);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v39);
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v34 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BE298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECLeakyReluOpHandler *EmitterViewerSPI::ANECLeakyReluOpHandler::ANECLeakyReluOpHandler(EmitterViewerSPI::ANECLeakyReluOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v39[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47460;
  v35 = a3;
  v38 = *(*(a3 + 6) + 8);
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

  v34 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v34 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v32 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v35 + 9) + 24));
  if (v10)
  {
    [v9 addObject:v10];
  }

  v11 = [MEMORY[0x1E695DF70] array];
  if (*(v35 + 9))
  {
    v12 = v35 - 16;
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
  mlir::anec::DeQuant::getScale(&v35, &v38);
  v16 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"offset" dataType:268435488 shape:&unk_1F5B76010];
  if (v16)
  {
    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v16 setValue:v17];

    [v15 addObject:v16];
  }

  mlir::anec::InstanceNorm::getEpsilon(&v35, v36);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"slope" dataType:268435488 shape:&unk_1F5B76028];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:v36 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v15 addObject:v18];
  }

  v20 = v37[0];
  v22 = llvm::APFloatBase::PPCDoubleDouble(v21);
  if (v22 == v20)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v37);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v37);
  }

  if (v22 == v39[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v39);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v39);
  }

  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [MPSGraphViewerNodeSPI alloc];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
  v29 = [(MPSGraphViewerNodeSPI *)v24 initWithType:v32 inputs:v25 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;

  if (v34 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BE7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  llvm::APFloat::~APFloat(&a17);

  llvm::APFloat::~APFloat(&a21);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECLinearOpHandler *EmitterViewerSPI::ANECLinearOpHandler::ANECLinearOpHandler(EmitterViewerSPI::ANECLinearOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47490;
  v5 = *(*(a3 + 6) + 8);
  v42 = a3;
  v43 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v43);
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

  v41 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v41 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v39 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v42 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"kernel", *(*(v42 + 9) + 56));
  if (v13)
  {
    [v11 addObject:v13];
  }

  v14 = [MEMORY[0x1E695DF70] array];
  if (*(v42 + 9))
  {
    v15 = v42 - 16;
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
  KernelScale = mlir::anec::Linear::getKernelScale(&v42);
  if (v20)
  {
    v21 = KernelScale;
    if (KernelScale)
    {
      v22 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelScale + 8);
    }

    else
    {
      v22 = 0;
    }

    v23 = EmitViewerSPI::emitElementsAttrProperty(@"kernel_scale", v21, v22);
    if (v23)
    {
      [v18 addObject:v23];
    }
  }

  Shape = mlir::placement::MemrefToTensor::getShape(&v42);
  if (v25)
  {
    v26 = Shape;
    if (Shape)
    {
      v27 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Shape + 8);
    }

    else
    {
      v27 = 0;
    }

    v28 = EmitViewerSPI::emitElementsAttrProperty(@"kernel_zero_point", v26, v27);
    if (v28)
    {
      [v18 addObject:v28];
    }
  }

  mlir::anec::Linear::getKernelLut(&v42);
  v29 = [MEMORY[0x1E695DF70] array];
  v30 = [MPSGraphViewerNodeSPI alloc];
  v31 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v32 = v10;
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v14];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v29];
  v36 = [(MPSGraphViewerNodeSPI *)v30 initWithType:v32 inputs:v31 outputs:v33 properties:v34 regions:v35];
  v37 = *(this + 3);
  *(this + 3) = v36;

  if (v41 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BECD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECLog2OpHandler *EmitterViewerSPI::ANECLog2OpHandler::ANECLog2OpHandler(EmitterViewerSPI::ANECLog2OpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v35[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B474C0;
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

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v33 + 9))
  {
    v13 = v33 - 16;
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
  mlir::anec::Rsqrt::getEpsilon(&v33, &v34);
  v17 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"epsilon" dataType:268435488 shape:&unk_1F5B76040];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v34 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  v19 = v35[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v20) == v19)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v35);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v35);
  }

  v21 = [MEMORY[0x1E695DF70] array];
  v22 = [MPSGraphViewerNodeSPI alloc];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v21];
  v27 = [(MPSGraphViewerNodeSPI *)v22 initWithType:v30 inputs:v23 outputs:v24 properties:v25 regions:v26];
  v28 = *(this + 3);
  *(this + 3) = v27;

  if (v32 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BF170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECMatMulOpHandler *EmitterViewerSPI::ANECMatMulOpHandler::ANECMatMulOpHandler(EmitterViewerSPI::ANECMatMulOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B474F0;
  v5 = *(*(a3 + 6) + 8);
  v34 = a3;
  v35 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v35);
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

  v33 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v33 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v31 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(v34 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(v34 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
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
  mlir::anec::MatMul::getBias(&v34, &v35);
  if (v37 == 1)
  {
    v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"bias" dataType:268435488 shape:&unk_1F5B76058];
    if (v18)
    {
      if ((v37 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v35 length:40];
      [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

      [v17 addObject:v18];
    }

    if (v37)
    {
      v21 = v36[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v20) == v21)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v36);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v36);
      }
    }
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v31 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BF660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  std::optional<llvm::APFloat>::~optional(&a18);

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::optional<llvm::APFloat>::~optional(_BYTE *result)
{
  if (result[32] == 1)
  {
    v1 = result;
    v2 = (result + 8);
    v3 = *(result + 1);
    if (llvm::APFloatBase::PPCDoubleDouble(result) == v3)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v2);
    }

    return v1;
  }

  return result;
}

EmitterViewerSPI::ANECMaxPoolOpHandler *EmitterViewerSPI::ANECMaxPoolOpHandler::ANECMaxPoolOpHandler(EmitterViewerSPI::ANECMaxPoolOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47520;
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

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v41 + 9) + 24));
  if (v12)
  {
    [v11 addObject:v12];
  }

  v38 = [MEMORY[0x1E695DF70] array];
  if (*(v41 + 9))
  {
    v13 = v41 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v38 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  Stride = mlir::anec::MaxPool::getStride(&v41);
  v18 = Stride;
  if (Stride)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Stride + 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(@"stride", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  Padding = mlir::anec::MaxPool::getPadding(&v41);
  v22 = Padding;
  if (Padding)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Padding + 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(@"padding", v22, v23);
  if (v24)
  {
    [v16 addObject:v24];
  }

  Ksize = mlir::anec::MaxPool::getKsize(&v41);
  v26 = Ksize;
  if (Ksize)
  {
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Ksize + 8);
  }

  else
  {
    v27 = 0;
  }

  v28 = EmitViewerSPI::emitElementsAttrProperty(@"ksize", v26, v27);
  if (v28)
  {
    [v16 addObject:v28];
  }

  v29 = [MEMORY[0x1E695DF70] array];
  v30 = [MPSGraphViewerNodeSPI alloc];
  v31 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v38];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v29];
  v35 = [(MPSGraphViewerNodeSPI *)v30 initWithType:v10 inputs:v31 outputs:v32 properties:v33 regions:v34];
  v36 = *(this + 3);
  *(this + 3) = v35;

  if (v40 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BFB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECNReluOpHandler *EmitterViewerSPI::ANECNReluOpHandler::ANECNReluOpHandler(EmitterViewerSPI::ANECNReluOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v39[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47550;
  v35 = a3;
  v38 = *(*(a3 + 6) + 8);
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

  v34 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v34 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v32 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v35 + 9) + 24));
  if (v10)
  {
    [v9 addObject:v10];
  }

  v11 = [MEMORY[0x1E695DF70] array];
  if (*(v35 + 9))
  {
    v12 = v35 - 16;
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
  mlir::anec::DeQuant::getScale(&v35, &v38);
  v16 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"max_value" dataType:268435488 shape:&unk_1F5B76070];
  if (v16)
  {
    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v16 setValue:v17];

    [v15 addObject:v16];
  }

  mlir::anec::InstanceNorm::getEpsilon(&v35, v36);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"slope" dataType:268435488 shape:&unk_1F5B76088];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:v36 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v15 addObject:v18];
  }

  v20 = v37[0];
  v22 = llvm::APFloatBase::PPCDoubleDouble(v21);
  if (v22 == v20)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v37);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v37);
  }

  if (v22 == v39[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v39);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v39);
  }

  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [MPSGraphViewerNodeSPI alloc];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
  v29 = [(MPSGraphViewerNodeSPI *)v24 initWithType:v32 inputs:v25 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;

  if (v34 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06C00D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  llvm::APFloat::~APFloat(&a17);

  llvm::APFloat::~APFloat(&a21);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECPaddingOpHandler *EmitterViewerSPI::ANECPaddingOpHandler::ANECPaddingOpHandler(EmitterViewerSPI::ANECPaddingOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v43[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47580;
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

  v38 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v41 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v41 + 9))
  {
    v13 = v41 - 16;
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
  Padding = mlir::anec::MaxPool::getPadding(&v41);
  v18 = Padding;
  if (Padding)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Padding + 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(@"padding_modes", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  Stride = mlir::anec::MaxPool::getStride(&v41);
  v22 = Stride;
  if (Stride)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Stride + 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(@"padding_sizes", v22, v23);
  if (v24)
  {
    [v16 addObject:v24];
  }

  mlir::anec::Padding::getBackgroundValue(&v41, &v42);
  v25 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"background_value" dataType:268435488 shape:&unk_1F5B760A0];
  if (v25)
  {
    v26 = [MEMORY[0x1E695DEF0] dataWithBytes:&v42 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v25 setValue:v26];

    [v16 addObject:v25];
  }

  v27 = v43[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v28) == v27)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v43);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v43);
  }

  v29 = [MEMORY[0x1E695DF70] array];
  v30 = [MPSGraphViewerNodeSPI alloc];
  v31 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v29];
  v35 = [(MPSGraphViewerNodeSPI *)v30 initWithType:v38 inputs:v31 outputs:v32 properties:v33 regions:v34];
  v36 = *(this + 3);
  *(this + 3) = v35;

  if (v40 < 0)
  {
    operator delete(__dst);
  }

  return this;
}