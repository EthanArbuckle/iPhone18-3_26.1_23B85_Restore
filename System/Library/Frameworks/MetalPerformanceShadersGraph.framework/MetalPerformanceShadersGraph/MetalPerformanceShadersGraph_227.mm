id GPURegionRuntime::allocateTensorDataForTargets(GPURegionRuntime *this, mlir::Operation *a2)
{
  v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 17);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v20 = *(*(a2 + 9) + 32 * i + 24);
        v7 = (*(*this + 48))(this);
        if (v7)
        {
          [v4 addObject:v7];
        }

        else
        {
          v8 = (*(v20 + 8) & 0xFFFFFFFFFFFFFFF8);
          if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8))
          {
            v21 = 0;
            v22 = 0;
LABEL_16:
            DefiningOp = mlir::Value::getDefiningOp(&v20);
            if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
            {
              if (*(*(*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
              {
                v15 = (*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
              }

              else
              {
                v15 = 0;
              }

              if ((getMemRefRowBytes(v15) & 0x3F) != 0)
              {
                v14 = 16;
              }

              else
              {
                v14 = 64;
              }
            }

            else
            {
              v14 = 16;
            }

            v16 = [MPSGraphTensorData alloc];
            v17 = *(this + 6);
            v18 = getMPSShapeFromMLIR(v20);
            v7 = [(MPSGraphTensorData *)v16 initWithDevice:v17 rowBytesAlignment:v14 shape:v18 dataType:getMPSDataType((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8))];

            BaseRuntime::setTensorDataToDataMap(this, v20, v7);
            [v4 addObject:v7];
            goto LABEL_5;
          }

          v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
          v21 = v8;
          v22 = v9;
          if (!v8)
          {
            goto LABEL_16;
          }

          if (mlir::CallOpInterface::getArgOperands(&v21))
          {
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v21);
            if (!v11)
            {
              goto LABEL_16;
            }

            v12 = 8 * v11;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v12 -= 8;
              if (!v12)
              {
                goto LABEL_16;
              }
            }
          }

          v7 = [MEMORY[0x1E695DFB0] null];
          [v4 addObject:v7];
        }

LABEL_5:
      }
    }
  }

  return v4;
}

void GPURegionRuntime::copyNDArrayToTarget(void *a1, void *a2, void *a3, id *a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v34 = a2;
  v35 = a3;
  v15 = a5;
  v16 = a6;
  v17 = MEMORY[0x1E69744E8];
  if (v16 || *(v15 + *MEMORY[0x1E69744E8]) == 1 && (valueCanBeTemporary(a7) & 1) == 0 && ((*(*a1 + 80))(a1, a7, v35, 1, 0, 1), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = [v16 mpsndarray];
    if (!*a4)
    {
      v19 = objc_alloc(MEMORY[0x1E6974740]);
      v20 = [v18 device];
      v21 = [v19 initWithDevice:v20];
      v22 = *a4;
      *a4 = v21;

      [*a4 setOptions:{objc_msgSend(*a4, "options") | 1}];
    }

    v23 = [v18 buffer];
    v24 = [v15 buffer];

    if (v23 != v24)
    {
      v25 = *a4;
      v36[0] = v15;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      [v25 encodeToMPSCommandEncoder:v34 commandBuffer:v35 sourceArrays:v26 destinationArray:v18];
    }

    if (*(v18 + *v17) == 1)
    {
      NumberOfUniqueUses = getNumberOfUniqueUses(a7);
      v28 = [v18 buffer];
      v29 = [v15 buffer];
      v30 = v28 == v29;

      v31 = NumberOfUniqueUses + a8;
      if (v30)
      {
        v31 = v31 + [v18 readCount] - 1;
      }

      [v18 setReadCount:v31];
    }

    v32 = v16;

    v33 = v32;
  }

  else
  {
    if (*(v15 + *v17) == 1)
    {
      [v15 setReadCount:{a8 + getNumberOfUniqueUses(a7) + objc_msgSend(v15, "readCount") - 1}];
    }

    v32 = 0;
    v33 = [[MPSGraphTensorData alloc] initWithMPSNDArray:v15 device:a1[6]];
  }

  BaseRuntime::setTensorDataToDataMap(a1, a7, v33);
}

void GPURegionRuntime::readIntTensorData(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  v37[4] = *MEMORY[0x1E69E9840];
  v35 = v37;
  v36 = 0x400000000;
  if ((mlir::matchConstantWithIntVector<long long>(a2, &v35) & 1) == 0)
  {
    v24 = (*(*a1 + 48))(a1, a2, 0);
    StaticType = GPURegionRuntime::getStaticType(a1, a2);
    v25 = getMPSShapeFromMLIR(StaticType);
    MPSDataType = getMPSDataType(StaticType);
    v23 = a3;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v25;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v34 count:16];
    v14 = MPSDataType >> 3;
    if (v13)
    {
      v15 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          v18 = [v17 unsignedLongValue];

          v14 *= v18;
        }

        v13 = [v12 countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v13);
    }

    if (v14)
    {
      v19 = (*(**(a1[74] + 32) + 64))(*(a1[74] + 32), a2);
      if (v19)
      {
        v31 = v33;
        v32 = 0x400000000;
        mlir::getIntValues<long long>(v19, v20, &v31, 1);
        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
        v21 = v31;
        if (v32)
        {
          v22 = 8 * v32;
          do
          {
            v26 = *v21;
            std::vector<long long>::push_back[abi:ne200100](a4, &v26);
            ++v21;
            v22 -= 8;
          }

          while (v22);
          v21 = v31;
        }

        *v23 = 1;
        if (v21 != v33)
        {
          free(v21);
        }

        goto LABEL_24;
      }

      *v23 = 0;
    }

    else
    {
      *v23 = 1;
    }

    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
LABEL_24:

    goto LABEL_25;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v36)
  {
    v8 = v35;
    v9 = 8 * v36;
    do
    {
      v31 = *v8;
      std::vector<long long>::push_back[abi:ne200100](a4, &v31);
      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  *a3 = 1;
LABEL_25:
  if (v35 != v37)
  {
    free(v35);
  }
}

void sub_1E0600550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a23 != v23)
  {
    free(a23);
  }

  v26 = *(v24 - 160);
  if (v26 != a13)
  {
    free(v26);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void std::vector<long long>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void GPURegionRuntime::waitAndReadIntTensorData(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v64 = 0;
  GPURegionRuntime::readIntTensorData(a1, a3, &v64, __p);
  if (v64 == 1)
  {
    *a4 = *__p;
    *(a4 + 16) = v63;
    return;
  }

  if (!a2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v55 = (*(*a1 + 48))(a1, a3, 0);
  StaticType = GPURegionRuntime::getStaticType(a1, a3);
  v53 = getMPSShapeFromMLIR(StaticType);
  MPSDataType = getMPSDataType(StaticType);
  v9 = MPSDataType >> 3;
  v61 = v9;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v10 = v53;
  v11 = [v10 countByEnumeratingWithState:&v57 objects:v65 count:16];
  v54 = v9;
  if (v11)
  {
    v12 = *v58;
    v9 = MPSDataType >> 3;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v58 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v57 + 1) + 8 * i);
        v15 = [v14 unsignedLongValue];

        v9 *= v15;
      }

      v11 = [v10 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v11);
    v61 = v9;
  }

  v16 = *(a1 + 376);
  if (!*&v16)
  {
    goto LABEL_32;
  }

  v17 = vcnt_s8(v16);
  v17.i16[0] = vaddlv_u8(v17);
  if (v17.u32[0] > 1uLL)
  {
    v18 = v9;
    if (v9 >= *&v16)
    {
      v18 = v9 % *&v16;
    }
  }

  else
  {
    v18 = (*&v16 - 1) & v9;
  }

  v19 = *(*(a1 + 368) + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_32:
    v24 = [*(a1 + 48) metalDevice];
    v25 = [v24 newBufferWithLength:v9 options:0];

    std::__hash_table<std::__hash_value_type<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong}>,std::__unordered_map_hasher<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong},std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}* {__strong}>>::__emplace_unique_key_args<unsigned long,unsigned long &,objc_object  {objcproto9MTLBuffer}*&>((a1 + 368), v9);
    goto LABEL_33;
  }

  if (v17.u32[0] < 2uLL)
  {
    v21 = *&v16 - 1;
    while (1)
    {
      v23 = v20[1];
      if (v23 == v9)
      {
        if (v20[2] == v9)
        {
          goto LABEL_57;
        }
      }

      else if ((v23 & v21) != v18)
      {
        goto LABEL_32;
      }

      v20 = *v20;
      if (!v20)
      {
        goto LABEL_32;
      }
    }
  }

  while (1)
  {
    v22 = v20[1];
    if (v22 == v9)
    {
      break;
    }

    if (v22 >= *&v16)
    {
      v22 %= *&v16;
    }

    if (v22 != v18)
    {
      goto LABEL_32;
    }

LABEL_22:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_32;
    }
  }

  if (v20[2] != v9)
  {
    goto LABEL_22;
  }

LABEL_57:
  v25 = v20[3];
LABEL_33:
  v26 = [MEMORY[0x1E6974490] descriptorWithDataType:MPSDataType shape:v10];
  [v26 setPreferPackedRows:1];
  v27 = *(a2 + 72);
  if (v27)
  {
    [v27 endEncoding];
    v28 = *(a2 + 72);
    *(a2 + 72) = 0;
  }

  v29 = [v55 mpsndarray];
  [v29 exportDataWithCommandBuffer:*(a2 + 8) toBuffer:v25 destinationDataType:MPSDataType offset:0 rowStrides:0];

  v30 = [*(a2 + 8) rootCommandBuffer];
  (**a2)(a2);
  [v30 waitUntilCompleted];
  v31 = *(a1 + 408);
  if (v31)
  {
    ++*(v31 + 192);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v9 >= v54)
  {
    std::vector<mlir::Value>::__append(a4, v9 / v54);
  }

  if ((MPSDataType & 0xDFFFFFFF) == 0x40)
  {
    v39 = *a4;
    v40 = v25;
    memcpy(v39, [v25 contents], v9);
  }

  else if ((MPSDataType & 0xDFFFFFFF) == 0x20)
  {
    v32 = malloc_type_malloc(v9, 0x100004052888210uLL);
    v33 = v25;
    memcpy(v32, [v25 contents], v9);
    v34 = *a4;
    v35 = *(a4 + 8) - *a4;
    if (v35)
    {
      v36 = v35 >> 3;
      if ((v35 >> 3) <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v35 >> 3;
      }

      if (v36 <= 7)
      {
        v38 = 0;
        goto LABEL_51;
      }

      v38 = v37 & 0xFFFFFFFFFFFFFFF8;
      v41 = v32 + 16;
      v42 = v34 + 32;
      v43 = v37 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v44 = *(v41 - 1);
        *&v45 = v44;
        *(&v45 + 1) = SDWORD1(v44);
        v46 = v45;
        *&v45 = SDWORD2(v44);
        *(&v45 + 1) = SHIDWORD(v44);
        v47 = v45;
        *&v45 = *v41;
        *(&v45 + 1) = HIDWORD(*v41);
        v48 = v45;
        *&v45 = *(v41 + 1);
        *(&v45 + 1) = HIDWORD(*v41);
        *(v42 - 2) = v46;
        *(v42 - 1) = v47;
        *v42 = v48;
        v42[1] = v45;
        v42 += 4;
        v41 += 32;
        v43 -= 8;
      }

      while (v43);
      if (v36 != v38)
      {
LABEL_51:
        v49 = v37 - v38;
        v50 = &v34[8 * v38];
        v51 = &v32[4 * v38];
        do
        {
          v52 = *v51;
          v51 += 4;
          *v50 = v52;
          v50 += 8;
          --v49;
        }

        while (v49);
      }
    }

    free(v32);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1E0600C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void GPURegionRuntime::waitAndReadFPTensorData(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v163[5] = *MEMORY[0x1E69E9840];
  v158 = v160;
  v159 = 0x400000000;
  if (mlir::matchConstantWithFloatVector<float>(a3, &v158))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if (v159)
    {
      v7 = 0;
      v8 = v158;
      v9 = 4 * v159;
      do
      {
        v10 = v7;
        v11 = v7 >> 2;
        if (((v7 >> 2) + 1) >> 62)
        {
          a4[1] = v7;
          a4[2] = 0;
          *a4 = 0;
          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        if (v7 >> 2 != -1)
        {
          if (!(((v7 >> 2) + 1) >> 62))
          {
            operator new();
          }

          a4[1] = v7;
          a4[2] = 0;
          *a4 = 0;
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(4 * v11) = *v8;
        v7 = 4 * v11 + 4;
        memcpy(0, 0, v10);
        ++v8;
        v9 -= 4;
      }

      while (v9);
      a4[1] = v7;
      a4[2] = 0;
      *a4 = 0;
    }

    goto LABEL_119;
  }

  v155 = v157;
  v156 = 0x400000000;
  v148 = 0uLL;
  if (a3)
  {
    *&v153 = &v148;
    ArgOperands = a3;
    DefiningOp = mlir::Value::getDefiningOp(&ArgOperands);
    if (DefiningOp)
    {
      if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v153, DefiningOp))
      {
        ArgOperands = mlir::CallOpInterface::getArgOperands(&v148);
        v162 = v13;
        isSplat = mlir::ElementsAttr::isSplat(&ArgOperands);
        v15 = *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id ? isSplat : 0;
        v147 = v15;
        if (v15)
        {
          v16 = *(*mlir::AffineMapAttr::getValue(&v147) + 136);
          if (v16 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
          {
            v149 = v148;
            ArgOperands = mlir::CallOpInterface::getArgOperands(&v149);
            v162 = v47;
            mlir::ElementsAttr::isSplat(&ArgOperands);
            mlir::ElementsAttr::isSplat(&v149);
            NumElements = mlir::ElementsAttr::getNumElements(v149, *(&v149 + 1));
            v49 = v156;
            if (NumElements != v156)
            {
              if (NumElements >= v156)
              {
                if (NumElements > HIDWORD(v156))
                {
                  v50 = NumElements;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v155, v157, NumElements, 8);
                  NumElements = v50;
                  v49 = v156;
                }

                if (NumElements != v49)
                {
                  v51 = NumElements;
                  bzero(&v155[8 * v49], 8 * (NumElements - v49));
                  LODWORD(NumElements) = v51;
                }
              }

              LODWORD(v156) = NumElements;
            }

            v52 = v155;
            v153 = v149;
            Type = mlir::ElementsAttr::getType(&v153);
            v54 = Type;
            if (Type)
            {
              v55 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
            }

            else
            {
              v55 = 0;
            }

            v152[0] = v54;
            v152[1] = v55;
            v151 = mlir::ElementsAttr::isSplat(v152);
            v56 = mlir::ElementsAttr::isSplat(&v153);
            ElementsAttrRawData = mlir::getElementsAttrRawData(v153);
            v59 = v58;
            v60 = mlir::ElementsAttr::getNumElements(v153, *(&v153 + 1));
            if (mlir::Type::isUnsignedInteger(&v151, 8))
            {
              if (v60 >= 1)
              {
                v62 = 0;
                v63 = (v52 + 4);
                do
                {
                  if (v56)
                  {
                    v64 = 0;
                  }

                  else
                  {
                    v64 = v62;
                  }

                  LOBYTE(v61) = ElementsAttrRawData[v64];
                  v61 = LODWORD(v61);
                  *(v63 - 1) = v61;
                  *v63 = 0.0;
                  v63 += 2;
                  ++v62;
                }

                while (v60 != v62);
              }

              goto LABEL_245;
            }

            if (mlir::Type::isInteger(&v151, 8))
            {
              if (v60 >= 1)
              {
                v66 = 0;
                v67 = v52 + 4;
                do
                {
                  if (v56)
                  {
                    v68 = 0;
                  }

                  else
                  {
                    v68 = v66;
                  }

                  v65.i8[0] = ElementsAttrRawData[v68];
                  v65 = vmovl_s16(*&vmovl_s8(v65)).u64[0];
                  *v65.i32 = v65.i32[0];
                  *(v67 - 1) = v65.i32[0];
                  *v67 = 0;
                  v67 += 2;
                  ++v66;
                }

                while (v60 != v66);
              }

              goto LABEL_245;
            }

            if (mlir::Type::isUnsignedInteger(&v151, 16))
            {
              if (v60 >= 1)
              {
                v70 = 0;
                v71 = (v52 + 4);
                do
                {
                  if (v56)
                  {
                    v72 = 0;
                  }

                  else
                  {
                    v72 = v70;
                  }

                  LOWORD(v69) = *&ElementsAttrRawData[2 * v72];
                  v69 = LODWORD(v69);
                  *(v71 - 1) = v69;
                  *v71 = 0.0;
                  v71 += 2;
                  ++v70;
                }

                while (v60 != v70);
              }

              goto LABEL_245;
            }

            if (mlir::Type::isInteger(&v151, 16))
            {
              if (v60 >= 1)
              {
                v74 = 0;
                v75 = v52 + 4;
                do
                {
                  if (v56)
                  {
                    v76 = 0;
                  }

                  else
                  {
                    v76 = v74;
                  }

                  v73.i16[0] = *&ElementsAttrRawData[2 * v76];
                  v73 = vmovl_s16(v73).u64[0];
                  *v73.i32 = v73.i32[0];
                  *(v75 - 1) = v73.i32[0];
                  *v75 = 0;
                  v75 += 2;
                  ++v74;
                }

                while (v60 != v74);
              }

              goto LABEL_245;
            }

            if (mlir::Type::isUnsignedInteger(&v151, 32))
            {
              if (v60 >= 1)
              {
                v77 = 0;
                v78 = (v52 + 4);
                do
                {
                  if (v56)
                  {
                    v79 = 0;
                  }

                  else
                  {
                    v79 = v77;
                  }

                  *(v78 - 1) = *&ElementsAttrRawData[4 * v79];
                  *v78 = 0.0;
                  v78 += 2;
                  ++v77;
                }

                while (v60 != v77);
              }

              goto LABEL_245;
            }

            if (mlir::Type::isInteger(&v151, 32))
            {
              if (v60 >= 1)
              {
                v80 = 0;
                v81 = (v52 + 4);
                do
                {
                  if (v56)
                  {
                    v82 = 0;
                  }

                  else
                  {
                    v82 = v80;
                  }

                  *(v81 - 1) = *&ElementsAttrRawData[4 * v82];
                  *v81 = 0.0;
                  v81 += 2;
                  ++v80;
                }

                while (v60 != v80);
              }

              goto LABEL_245;
            }

            if (mlir::Type::isUnsignedInteger(&v151, 64))
            {
              if (v60 >= 1)
              {
                v83 = 0;
                v84 = (v52 + 4);
                do
                {
                  if (v56)
                  {
                    v85 = 0;
                  }

                  else
                  {
                    v85 = v83;
                  }

                  *(v84 - 1) = *&ElementsAttrRawData[8 * v85];
                  *v84 = 0.0;
                  v84 += 2;
                  ++v83;
                }

                while (v60 != v83);
              }

              goto LABEL_245;
            }

            if (mlir::Type::isInteger(&v151, 64))
            {
              if (v60 >= 1)
              {
                v86 = 0;
                v87 = (v52 + 4);
                do
                {
                  if (v56)
                  {
                    v88 = 0;
                  }

                  else
                  {
                    v88 = v86;
                  }

                  *(v87 - 1) = *&ElementsAttrRawData[8 * v88];
                  *v87 = 0.0;
                  v87 += 2;
                  ++v86;
                }

                while (v60 != v86);
              }

              goto LABEL_245;
            }

            if (mlir::Type::isF16(&v151))
            {
              if (v60 >= 1)
              {
                v89 = 0;
                v90 = v52 + 4;
                do
                {
                  if (v56)
                  {
                    v91 = 0;
                  }

                  else
                  {
                    v91 = v89;
                  }

                  _H0 = *&ElementsAttrRawData[2 * v91];
                  __asm { FCVT            S0, H0 }

                  *(v90 - 1) = _S0;
                  *v90 = 0;
                  v90 += 2;
                  ++v89;
                }

                while (v60 != v89);
              }

              goto LABEL_245;
            }

            if (!mlir::Type::isF32(&v151))
            {
              if (mlir::Type::isF64(&v151))
              {
                if (v60 >= 1)
                {
                  v101 = 0;
                  v102 = (v52 + 4);
                  do
                  {
                    if (v56)
                    {
                      v103 = 0;
                    }

                    else
                    {
                      v103 = v101;
                    }

                    v104 = *&ElementsAttrRawData[8 * v103];
                    *(v102 - 1) = v104;
                    *v102 = 0.0;
                    v102 += 2;
                    ++v101;
                  }

                  while (v60 != v101);
                }
              }

              else if (mlir::Type::isBF16(&v151))
              {
                if (v60 >= 1)
                {
                  v105 = 0;
                  v106 = (v52 + 4);
                  do
                  {
                    if (v56)
                    {
                      v107 = 0;
                    }

                    else
                    {
                      v107 = v105;
                    }

                    *(v106 - 4) = *&ElementsAttrRawData[2 * v107] << 16;
                    ++v105;
                    v106 += 8;
                  }

                  while (v60 != v105);
                }
              }

              else if (mlir::Type::isInteger(&v151, 1))
              {
                if (v56)
                {
                  v113 = 1;
                }

                else
                {
                  v113 = v60;
                }

                llvm::SmallVector<char,40u>::SmallVector(&ArgOperands, v113);
                mlir::detail::unpackBooleanData(ElementsAttrRawData, v59, ArgOperands, v162);
                v115 = ArgOperands;
                if (v60 >= 1)
                {
                  v116 = 0;
                  v117 = v52 + 4;
                  do
                  {
                    if (v56)
                    {
                      v118 = 0;
                    }

                    else
                    {
                      v118 = v116;
                    }

                    v114.i8[0] = v115[v118];
                    v114 = vmovl_s16(*&vmovl_s8(v114)).u64[0];
                    *v114.i32 = v114.i32[0];
                    *(v117 - 1) = v114.i32[0];
                    *v117 = 0;
                    v117 += 2;
                    ++v116;
                  }

                  while (v60 != v116);
                }

                if (v115 != v163)
                {
                  free(v115);
                }
              }

              else
              {
                v119 = v151;
                v120 = *(*v151 + 136);
                if (v120 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
                {
                  v119 = 0;
                }

                ArgOperands = v119;
                if (v120 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
                {
                  Value = mlir::AffineMapAttr::getValue(&ArgOperands);
                  if (mlir::Type::isF32(&Value))
                  {
                    if (v60 >= 1)
                    {
                      for (i = 0; i != v60; ++i)
                      {
                        if (v56)
                        {
                          v132 = 0;
                        }

                        else
                        {
                          v132 = i;
                        }

                        *&v52[8 * i] = *&ElementsAttrRawData[8 * v132];
                      }
                    }
                  }

                  else
                  {
                    Value = mlir::AffineMapAttr::getValue(&ArgOperands);
                    mlir::Type::isF16(&Value);
                    if (v60 >= 1)
                    {
                      for (j = 0; j != v60; ++j)
                      {
                        if (v56)
                        {
                          v135 = 0;
                        }

                        else
                        {
                          v135 = j;
                        }

                        v133.i32[0] = *&ElementsAttrRawData[4 * v135];
                        v133 = vcvtq_f32_f16(v133).u64[0];
                        *&v52[8 * j] = v133;
                      }
                    }
                  }
                }

                else
                {
                  mlir::Type::getIntOrFloatBitWidth(&v151);
                  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v151);
                  mlir::detail::unpackQuantizedData<std::complex<float>>(ElementsAttrRawData, v59, v52, v60, IntOrFloatBitWidth);
                }
              }

              goto LABEL_245;
            }

            if (v60 >= 1)
            {
              if ((v56 & 1) == 0)
              {
                if (v60 > 7 && (v52 >= &ElementsAttrRawData[4 * v60] || &v52[8 * v60] <= ElementsAttrRawData))
                {
                  v108 = v60 & 0x7FFFFFFFFFFFFFF8;
                  v125 = (v52 + 32);
                  v126 = (ElementsAttrRawData + 16);
                  v127 = 0uLL;
                  v128 = v60 & 0x7FFFFFFFFFFFFFF8;
                  do
                  {
                    v129 = v126[-1];
                    v164.val[0] = *v126;
                    v130 = v125 - 8;
                    vst2q_f32(v130, *(&v127 - 1));
                    v164.val[1] = 0uLL;
                    vst2q_f32(v125, v164);
                    v125 += 16;
                    v126 += 2;
                    v128 -= 8;
                  }

                  while (v128);
                  if (v60 == v108)
                  {
                    goto LABEL_245;
                  }
                }

                else
                {
                  v108 = 0;
                }

                v109 = v60 - v108;
                v110 = &v52[8 * v108 + 4];
                v111 = &ElementsAttrRawData[4 * v108];
                do
                {
                  v112 = *v111;
                  v111 += 4;
                  *(v110 - 4) = v112;
                  v110 += 8;
                  --v109;
                }

                while (v109);
                goto LABEL_245;
              }

              if (v60 < 8 || v52 < ElementsAttrRawData + 4 && &v52[8 * v60] > ElementsAttrRawData)
              {
                v98 = 0;
LABEL_179:
                v99 = v60 - v98;
                v100 = &v52[8 * v98 + 4];
                do
                {
                  *(v100 - 4) = *ElementsAttrRawData;
                  v100 += 8;
                  --v99;
                }

                while (v99);
                goto LABEL_245;
              }

              v98 = v60 & 0x7FFFFFFFFFFFFFF8;
              v122 = v52 + 32;
              v123 = v60 & 0x7FFFFFFFFFFFFFF8;
              do
              {
                *&v124 = *ElementsAttrRawData;
                *(&v124 + 1) = v124;
                *(v122 - 2) = v124;
                *(v122 - 1) = v124;
                *v122 = v124;
                v122[1] = v124;
                v122 += 4;
                v123 -= 8;
              }

              while (v123);
              if (v60 != v98)
              {
                goto LABEL_179;
              }
            }

LABEL_245:
            *a4 = 0;
            a4[1] = 0;
            a4[2] = 0;
            if (v156)
            {
              v136 = v155;
              v137 = &v155[8 * v156];
              do
              {
                v138 = *(v136 + 1);
                LODWORD(ArgOperands) = *v136;
                std::vector<float>::push_back[abi:ne200100](a4, &ArgOperands);
                LODWORD(ArgOperands) = v138;
                std::vector<float>::push_back[abi:ne200100](a4, &ArgOperands);
                v136 += 8;
              }

              while (v136 != v137);
            }

            goto LABEL_117;
          }
        }
      }
    }
  }

  if (!a2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v140 = (*(*a1 + 48))(a1, a3, 0);
  StaticType = GPURegionRuntime::getStaticType(a1, a3);
  v139 = getMPSShapeFromMLIR(StaticType);
  MPSDataType = getMPSDataType(StaticType);
  v18 = MPSDataType >> 3;
  ArgOperands = v18;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v19 = v139;
  v20 = [v19 countByEnumeratingWithState:&v143 objects:v154 count:16];
  v21 = v18;
  if (v20)
  {
    v22 = *v144;
    v21 = MPSDataType >> 3;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v144 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v143 + 1) + 8 * k);
        v25 = [v24 unsignedLongValue];

        v21 *= v25;
      }

      v20 = [v19 countByEnumeratingWithState:&v143 objects:v154 count:16];
    }

    while (v20);
    ArgOperands = v21;
  }

  if (!v21)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_116;
  }

  *&v153 = 0;
  v26 = *(a1 + 376);
  if (!*&v26)
  {
    goto LABEL_65;
  }

  v27 = vcnt_s8(v26);
  v27.i16[0] = vaddlv_u8(v27);
  if (v27.u32[0] > 1uLL)
  {
    v28 = v21;
    if (v21 >= *&v26)
    {
      v28 = v21 % *&v26;
    }
  }

  else
  {
    v28 = (*&v26 - 1) & v21;
  }

  v29 = *(*(a1 + 368) + 8 * v28);
  if (!v29 || (v30 = *v29) == 0)
  {
LABEL_65:
    v34 = [*(a1 + 48) metalDevice];
    v35 = [v34 newBufferWithLength:v21 options:0];
    *&v153 = v35;

    std::__hash_table<std::__hash_value_type<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong}>,std::__unordered_map_hasher<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong},std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}* {__strong}>>::__emplace_unique_key_args<unsigned long,unsigned long &,objc_object  {objcproto9MTLBuffer}*&>((a1 + 368), v21);
    goto LABEL_66;
  }

  if (v27.u32[0] < 2uLL)
  {
    v31 = *&v26 - 1;
    while (1)
    {
      v33 = v30[1];
      if (v33 == v21)
      {
        if (v30[2] == v21)
        {
          goto LABEL_105;
        }
      }

      else if ((v33 & v31) != v28)
      {
        goto LABEL_65;
      }

      v30 = *v30;
      if (!v30)
      {
        goto LABEL_65;
      }
    }
  }

  while (1)
  {
    v32 = v30[1];
    if (v32 == v21)
    {
      break;
    }

    if (v32 >= *&v26)
    {
      v32 %= *&v26;
    }

    if (v32 != v28)
    {
      goto LABEL_65;
    }

LABEL_55:
    v30 = *v30;
    if (!v30)
    {
      goto LABEL_65;
    }
  }

  if (v30[2] != v21)
  {
    goto LABEL_55;
  }

LABEL_105:
  v35 = v30[3];
  *&v153 = v35;
LABEL_66:
  v36 = [MEMORY[0x1E6974490] descriptorWithDataType:MPSDataType shape:{v19, v139}];
  [v36 setPreferPackedRows:1];
  v37 = *(a2 + 72);
  if (v37)
  {
    [v37 endEncoding];
    v38 = *(a2 + 72);
    *(a2 + 72) = 0;
  }

  v39 = [v140 mpsndarray];
  [v39 exportDataWithCommandBuffer:*(a2 + 8) toBuffer:v35 destinationDataType:MPSDataType offset:0 rowStrides:0];

  v40 = [*(a2 + 8) rootCommandBuffer];
  (**a2)(a2);
  [v40 waitUntilCompleted];
  v41 = *(a1 + 408);
  if (v41)
  {
    ++*(v41 + 192);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v21 >= v18)
  {
    if (!((v21 / v18) >> 62))
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  switch(MPSDataType)
  {
    case 0x90000010:
      v45 = v35;
      [v35 contents];
      v46 = v35;
      [v35 contents];
      break;
    case 0x10000010u:
      v42 = malloc_type_malloc(v21, 0x1000040BDFB0063uLL);
      v44 = v35;
      memcpy(v42, [v35 contents], v21);
LABEL_114:
      free(v42);
      break;
    case 0x10000020u:
      v42 = malloc_type_malloc(v21, 0x100004052888210uLL);
      v43 = v35;
      memcpy(v42, [v35 contents], v21);
      goto LABEL_114;
  }

LABEL_116:
LABEL_117:
  if (v155 != v157)
  {
    free(v155);
  }

LABEL_119:
  if (v158 != v160)
  {
    free(v158);
  }
}

void sub_1E0601DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = *(v33 - 176);
  if (v35 != (v33 - 152))
  {
    free(v35);
  }

  v36 = *(v33 - 256);
  if (v36 != a10)
  {
    free(v36);
  }

  v37 = *(v33 - 208);
  if (v37 != a13)
  {
    free(v37);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void GPURegionRuntime::writeIntTensorData(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v44 = a3;
  if (!a5)
  {
    return;
  }

  v43 = *(mlir::Value::getParentRegion(&v44) + 2);
  v9 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((a1 + 328), &v43);
  v42[0] = GPURegionRuntime::getStaticType(a1, v44);
  Value = mlir::ArrayAttr::getValue(v42);
  v12 = v11;
  Context = mlir::Attribute::getContext((*(a1 + 64) + 24));
  v14 = mlir::IntegerType::get(Context, 64, 1u);
  v15 = mlir::RankedTensorType::get(Value, v12, v14, 0);
  v42[0] = mlir::createRawElementsAttr(v15, a4, 8 * a5);
  v42[1] = v16;
  v43 = v44;
  std::__hash_table<std::__hash_value_type<void *,mlir::ElementsAttr>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::ElementsAttr>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::ElementsAttr>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::ElementsAttr>>>::__emplace_unique_key_args<void *,void *,mlir::ElementsAttr&>(v9 + 3, &v43);
  v17 = (*(*a1 + 80))(a1, v44, *(a2 + 8), 0, 0, 1);
  v18 = [v17 mpsndarray];
  v19 = [v18 dataType];
  v20 = a5 * (v19 >> 3);
  v21 = malloc_type_malloc(v20, 0x100004077774924uLL);
  v22 = v21;
  if ((v19 & 0xDFFFFFFF) == 0x20)
  {
    if (a5 <= 7)
    {
      v23 = 0;
LABEL_8:
      v31 = a5 - v23;
      v32 = &v21->i32[v23];
      v33 = &a4[8 * v23];
      do
      {
        v34 = *v33;
        v33 += 8;
        *v32++ = v34;
        --v31;
      }

      while (v31);
      goto LABEL_10;
    }

    v23 = a5 & 0xFFFFFFFFFFFFFFF8;
    v24 = (a4 + 32);
    v25 = v21 + 1;
    v26 = a5 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v28 = v24[-2];
      v27 = v24[-1];
      v30 = *v24;
      v29 = v24[1];
      v24 += 4;
      v25[-1] = vuzp1q_s32(v28, v27);
      *v25 = vuzp1q_s32(v30, v29);
      v25 += 2;
      v26 -= 8;
    }

    while (v26);
    if (a5 != v23)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v35 = [*(a1 + 48) metalDevice];
  v36 = [v35 newBufferWithLength:v20 options:0];

  v37 = [v18 descriptor];
  [v37 setPreferPackedRows:1];
  v38 = [objc_alloc(MEMORY[0x1E6974488]) initWithBuffer:v36 descriptor:v37];
  memcpy([v36 contents], v22, v20);
  v39 = *(a2 + 72);
  if (v39)
  {
    [v39 endEncoding];
    v40 = *(a2 + 72);
    *(a2 + 72) = 0;
  }

  [v18 importDataWithCommandBuffer:*(a2 + 8) fromBuffer:v36 sourceDataType:536870944 offset:0 rowStrides:0];
  v41 = [*(a2 + 8) rootCommandBuffer];
  (**a2)(a2);
  [v41 waitUntilCompleted];
  free(v22);
}

void GPURegionRuntime::postEvalCleanUp(GPURegionRuntime *this)
{
  if (*(this + 79))
  {
    v2 = *(this + 78);
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

    *(this + 78) = 0;
    v4 = *(this + 77);
    if (v4)
    {
      bzero(*(this + 76), 8 * v4);
    }

    *(this + 79) = 0;
  }

  if (*(this + 14))
  {
    v5 = *(this + 13);
    if (v5)
    {
      do
      {
        v17 = *v5;
        v18 = v5[5];
        if (v18)
        {
          do
          {
            v19 = *v18;

            operator delete(v18);
            v18 = v19;
          }

          while (v19);
        }

        v20 = v5[3];
        v5[3] = 0;
        if (v20)
        {
          operator delete(v20);
        }

        operator delete(v5);
        v5 = v17;
      }

      while (v17);
    }

    *(this + 13) = 0;
    v6 = *(this + 12);
    if (v6)
    {
      bzero(*(this + 11), 8 * v6);
    }

    *(this + 14) = 0;
  }

  if (*(this + 39))
  {
    v7 = *(this + 38);
    if (v7)
    {
      do
      {
        v21 = *v7;
        v22 = v7[5];
        if (v22)
        {
          do
          {
            v23 = *v22;
            operator delete(v22);
            v22 = v23;
          }

          while (v23);
        }

        v24 = v7[3];
        v7[3] = 0;
        if (v24)
        {
          operator delete(v24);
        }

        operator delete(v7);
        v7 = v21;
      }

      while (v21);
    }

    *(this + 38) = 0;
    v8 = *(this + 37);
    if (v8)
    {
      bzero(*(this + 36), 8 * v8);
    }

    *(this + 39) = 0;
  }

  if (*(this + 44))
  {
    v9 = *(this + 43);
    if (v9)
    {
      do
      {
        v25 = *v9;
        v26 = v9[5];
        if (v26)
        {
          do
          {
            v27 = *v26;
            operator delete(v26);
            v26 = v27;
          }

          while (v27);
        }

        v28 = v9[3];
        v9[3] = 0;
        if (v28)
        {
          operator delete(v28);
        }

        operator delete(v9);
        v9 = v25;
      }

      while (v25);
    }

    *(this + 43) = 0;
    v10 = *(this + 42);
    if (v10)
    {
      bzero(*(this + 41), 8 * v10);
    }

    *(this + 44) = 0;
  }

  [*(this + 16) removeAllObjects];
  [*(this + 17) removeAllObjects];
  v11 = *(this + 108);
  if (v11)
  {
    v12 = *(this + 53);
    v13 = 8 * v11;
    do
    {
      v14 = *v12++;
      v15 = *(v14 + 48);
      *(v14 + 48) = 0;

      v13 -= 8;
    }

    while (v13);
  }

  *(this + 108) = 0;
  (*(**(*(this + 74) + 32) + 72))(*(*(this + 74) + 32));
  v16 = *(this + 81);
  if (*v16)
  {

    GPU::MemrefBufferizer::freeActiveBuffers(v16);
  }
}

void MPSRuntime::postEvalCleanUp(MPSRuntime *this)
{
  GPURegionRuntime::postEvalCleanUp(this);
  *(this + 74) = 0;
  *(this + 86) = 0;
}

unint64_t GPU::calculateNDArrayAllocationSize(GPU *this, MPSNDArrayDescriptor *a2)
{
  v2 = this;
  v3 = (v2 + *MEMORY[0x1E6974528]);
  v17 = v3[2];
  v19 = v3[3];
  v15 = v3[1];
  v4.i64[0] = 0x100000001;
  v4.i64[1] = 0x100000001;
  v21 = vorrq_s8(*v3, vandq_s8(vceqzq_s32(*v3), v4));
  v5 = *(v2 + *MEMORY[0x1E6974520]) * v21.u32[0];
  v6 = *(v2 + *MEMORY[0x1E6974548]);
  if (!*(v2 + *MEMORY[0x1E6974540]))
  {
    v5 = (v5 + 127) & 0x1FFFFFFFFFF80;
  }

  if (v6)
  {
    v7 = 8 * v6;
  }

  else
  {
    v7 = v5;
  }

  if ((v7 / *(v2 + *MEMORY[0x1E6974520])) >> 31 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8.i64[0] = 0x100000001;
  v8.i64[1] = 0x100000001;
  v16 = vorrq_s8(v19, vandq_s8(vceqzq_s32(v19), v8));
  v18 = vorrq_s8(v17, vandq_s8(vceqzq_s32(v17), v8));
  v20 = vorrq_s8(v15, vandq_s8(vceqzq_s32(v15), v8));
  v9 = MEMORY[0x1E6974538];
  if (*(v2 + *MEMORY[0x1E6974538]) >= 2uLL)
  {
    v10 = 1;
    do
    {
      v22[0] = v21;
      v22[1] = v20;
      v22[2] = v18;
      v22[3] = v16;
      if ((*(v22 + (v10 & 0xF)) & 0x80000000) != 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      ++v10;
    }

    while (v10 < *(v2 + *v9));
  }

  v11 = v7 * v21.u32[1];
  if (is_mul_ok(v7, v21.u32[1]) && v11 <= 0x2000000000)
  {
    v12 = v11 * v21.u32[2];
    if (!is_mul_ok(v11, v21.u32[2]))
    {
      goto LABEL_43;
    }

    v11 *= v21.u32[2];
    if (v12 > 0x2000000000)
    {
      goto LABEL_44;
    }

    v11 = v12 * v21.u32[3];
    if (!is_mul_ok(v12, v21.u32[3]) || v11 > 0x2000000000)
    {
      goto LABEL_44;
    }

    v12 = v11 * v20.u32[0];
    if (!is_mul_ok(v11, v20.u32[0]))
    {
      goto LABEL_43;
    }

    v11 *= v20.u32[0];
    if (v12 > 0x2000000000)
    {
      goto LABEL_44;
    }

    v11 = v12 * v20.u32[1];
    if (!is_mul_ok(v12, v20.u32[1]) || v11 > 0x2000000000)
    {
      goto LABEL_44;
    }

    v12 = v11 * v20.u32[2];
    if (!is_mul_ok(v11, v20.u32[2]))
    {
      goto LABEL_43;
    }

    v11 *= v20.u32[2];
    if (v12 > 0x2000000000)
    {
      goto LABEL_44;
    }

    v11 = v12 * v20.u32[3];
    if (!is_mul_ok(v12, v20.u32[3]) || v11 > 0x2000000000)
    {
      goto LABEL_44;
    }

    v12 = v11 * v18.u32[0];
    if (!is_mul_ok(v11, v18.u32[0]))
    {
      goto LABEL_43;
    }

    v11 *= v18.u32[0];
    if (v12 > 0x2000000000)
    {
      goto LABEL_44;
    }

    v11 = v12 * v18.u32[1];
    if (!is_mul_ok(v12, v18.u32[1]) || v11 > 0x2000000000)
    {
      goto LABEL_44;
    }

    v12 = v11 * v18.u32[2];
    if (!is_mul_ok(v11, v18.u32[2]))
    {
      goto LABEL_43;
    }

    v11 *= v18.u32[2];
    if (v12 > 0x2000000000)
    {
      goto LABEL_44;
    }

    v11 = v12 * v18.u32[3];
    if (!is_mul_ok(v12, v18.u32[3]) || v11 > 0x2000000000)
    {
      goto LABEL_44;
    }

    v12 = v11 * v16.u32[0];
    if (!is_mul_ok(v11, v16.u32[0]))
    {
      goto LABEL_43;
    }

    v11 *= v16.u32[0];
    if (v12 > 0x2000000000)
    {
      goto LABEL_44;
    }

    v11 = v12 * v16.u32[1];
    if (!is_mul_ok(v12, v16.u32[1]) || v11 > 0x2000000000)
    {
      goto LABEL_44;
    }

    v12 = v11 * v16.u32[2];
    if (!is_mul_ok(v11, v16.u32[2]))
    {
LABEL_43:
      v11 = v12;
      goto LABEL_44;
    }

    v11 *= v16.u32[2];
    if (v12 <= 0x2000000000)
    {
      v11 = v12 * v16.u32[3];
    }
  }

LABEL_44:
  v13 = (v11 + 7) >> 3;

  return v13;
}

void GPU::MPSGraphKernelDAG::MPSGraphKernelDAG(GPU::MPSGraphKernelDAG *this, GPURegionRuntime *a2, mlir::Operation *a3)
{
  *this = &unk_1F5B42758;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 14) = a3;
  *(this + 15) = 0;
  *(this + 16) = a2;
  *(this + 17) = 0;
  operator new();
}

void sub_1E0602CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v14 = *(v11 + 136);
  *(v11 + 136) = 0;
  if (v14)
  {
    (*(*v14 + 24))(v14);

    std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v11 + 80);
    v12 = *(v11 + 56);
    if (v12)
    {
LABEL_6:
      *(v11 + 64) = v12;
      operator delete(v12);
      std::unordered_set<mlir::Operation *>::~unordered_set[abi:ne200100](v11 + 16);
      _Unwind_Resume(a1);
    }
  }

  else
  {

    std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v11 + 80);
    v12 = *(v11 + 56);
    if (v12)
    {
      goto LABEL_6;
    }
  }

  std::unordered_set<mlir::Operation *>::~unordered_set[abi:ne200100](v11 + 16);
  _Unwind_Resume(a1);
}

uint64_t GPU::MPSGraphKernelDAG::createDAGOp(GPU::MPSGraphKernelDAG *this, GPU::BaseOpHandler *a2)
{
  v2 = *(a2 + 3);
  if (!*(v2 + 36))
  {
    return 0;
  }

  v5 = v2 - 16;
  StaticType = GPURegionRuntime::getStaticType(*(this + 16), v2 - 16);
  MPSDataType = getMPSDataType(StaticType);
  if (MPSDataType == -2147483640)
  {
    v8 = 536870920;
  }

  else
  {
    v8 = MPSDataType;
  }

  getBaseTensorShape(StaticType, &v14);
  __p = 0;
  v12 = 0;
  v13 = 0;
  if (v15 != v14)
  {
    if (((v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v9 = (*(*a2 + 24))(a2, this, &__p, v8, 0);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v16[0] = v5;
    v16[1] = v9;
    std::__hash_table<std::__hash_value_type<void *,BaseTensor *>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,BaseTensor *>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,BaseTensor *>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,BaseTensor *>>>::__emplace_unique_key_args<void *,std::pair<void *,BaseTensor *>>(this + 2, v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  return v9;
}

void sub_1E0602F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getBaseTensorShape@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a1 + 8))
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
    v10 = v2;
    v11 = v4;
    if (v2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v2 = 0;
    v10 = 0;
    v11 = 0;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_5:
  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v10);
  if (!v5)
  {
    operator new();
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v10);
  v8 = ArgAttrsAttr + 8 * v7;
  result = mlir::CallableOpInterface::getArgAttrsAttr(&v10);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v8 != result)
  {
    if (((v8 - result) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

id GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(GPU::MPSGraphKernelDAG *this, GPURegionRuntime *a2)
{
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(this + 8) - *(this + 7)) >> 3];
  v5 = *(this + 7);
  for (i = *(this + 8); v5 != i; ++v5)
  {
    v7 = (*(*a2 + 48))(a2, *v5, 0);
    v8 = [v7 mpsndarray];

    if (!v8 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v4 addObject:v8];
  }

  return v4;
}

void *GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v50 = a2;
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
    v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
    v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
    v9 = vcnt_s8(v5);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = v8;
      if (v8 >= *&v5)
      {
        v10 = v8 % *&v5;
      }
    }

    else
    {
      v10 = (*&v5 - 1) & v8;
    }

    v11 = *(*(a1 + 16) + 8 * v10);
    if (v11)
    {
      v12 = *v11;
      if (v12)
      {
        if (v9.u32[0] < 2uLL)
        {
          v13 = *&v5 - 1;
          while (1)
          {
            v15 = v12[1];
            if (v15 == v8)
            {
              if (v12[2] == a2)
              {
                return v12[3];
              }
            }

            else if ((v15 & v13) != v10)
            {
              goto LABEL_21;
            }

            v12 = *v12;
            if (!v12)
            {
              goto LABEL_21;
            }
          }
        }

        do
        {
          v14 = v12[1];
          if (v14 == v8)
          {
            if (v12[2] == a2)
            {
              return v12[3];
            }
          }

          else
          {
            if (v14 >= *&v5)
            {
              v14 %= *&v5;
            }

            if (v14 != v10)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

LABEL_21:
  StaticType = GPURegionRuntime::getStaticType(*(a1 + 128), a2);
  getMPSDataType(StaticType);
  getBaseTensorShape(StaticType, &__p);
  if (a3)
  {
    v17 = *a3;
    v18 = (a3[1] - *a3) >> 2;
    if (v18 >= 2)
    {
      v27 = 0;
      v28 = __p;
      v29 = (v49 - __p) >> 3;
      do
      {
        if (v18 <= v27 + 1)
        {
          std::vector<std::pair<MPSGraphTensorData * {__strong},MPSGraphTensorData * {__strong}>>::__throw_out_of_range[abi:ne200100]();
        }

        v30 = *(v17 + 4 * v27);
        v31 = *(v17 + 4 * v27 + 4);
        if (v30 != v31 && v29 > v30 && v29 > v31)
        {
          v34 = v28[v30];
          v28[v30] = v28[v31];
          v28[v31] = v34;
        }

        v27 += 2;
      }

      while (v18 >> 1 > v27);
    }
  }

  v46 = 0;
  v47 = 0;
  v51[0] = &v46;
  v45[0] = v50;
  DefiningOp = mlir::Value::getDefiningOp(v45);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v51, DefiningOp))
  {
    v21 = *v50;
    if (*v50)
    {
      v22 = 0;
      do
      {
        v23 = v21[2];
        ParentOp = *(v23 + 16);
        if (ParentOp)
        {
          ParentOp = mlir::Block::getParentOp(ParentOp);
        }

        if (ParentOp != *(a1 + 112) || ((isStitchable = mlir::mps::isStitchable(v23, v20), v23 == v22) ? (v26 = 1) : (v26 = isStitchable), (v26 & 1) != 0))
        {
          v23 = v22;
        }

        else if (v22 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v21 = *v21;
        v22 = v23;
      }

      while (v21);
    }

    else
    {
      v23 = 0;
    }

    v35 = mlir::Value::getDefiningOp(&v50);
    v37 = mlir::mps::isStitchable(v35, v36);
    if (v23)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    if (v38 == 1)
    {
      v39 = 0;
      LOBYTE(v37) = 1;
      v40 = 24;
      while ((*(v23 + 46) & 0x80) != 0 && v39 < *(v23 + 68))
      {
        if (*(*(v23 + 72) + v40) == v50)
        {
          LOBYTE(v37) = (***(a1 + 136))(*(a1 + 136), v23, v39);
        }

        ++v39;
        v40 += 32;
      }
    }

    if (v37)
    {
      mlir::mps::CPUNDArray::CPUNDArray(v45, v46, v47);
      if (mlir::mps::CPUNDArray::isIntegerType(v45))
      {
        mlir::mps::CPUNDArray::getSplatIntegerValue(v45);
        Op = MPSKernelDAG::constantOp();
      }

      else if (mlir::mps::CPUNDArray::isFloatType(v45))
      {
        mlir::mps::CPUNDArray::getSplatFloatValue(v45);
        Op = MPSKernelDAG::constantOp();
      }

      else
      {
        if (!mlir::mps::CPUNDArray::isComplexType(v45))
        {
          v42 = 0;
LABEL_74:
          v51[0] = v50;
          v51[1] = v42;
          std::__hash_table<std::__hash_value_type<void *,BaseTensor *>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,BaseTensor *>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,BaseTensor *>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,BaseTensor *>>>::__emplace_unique_key_args<void *,std::pair<void *,BaseTensor *>>((a1 + 16), v51);
          mlir::mps::CPUNDArray::~CPUNDArray(v45);
          v43 = __p;
          if (!__p)
          {
            return v42;
          }

          goto LABEL_66;
        }

        mlir::mps::CPUNDArray::getSplatComplexValue(v45);
        MPSKernelDAG::constantOp();
        MPSKernelDAG::constantOp();
        Op = MPSKernelDAG::complexCreateOp();
      }

      v42 = Op;
      goto LABEL_74;
    }
  }

  v42 = MPSKernelDAG::placeholderOp();
  v45[0] = v50;
  v45[1] = v42;
  std::__hash_table<std::__hash_value_type<void *,BaseTensor *>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,BaseTensor *>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,BaseTensor *>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,BaseTensor *>>>::__emplace_unique_key_args<void *,std::pair<void *,BaseTensor *>>((a1 + 16), v45);
  std::vector<mlir::Value>::push_back[abi:ne200100](a1 + 56, &v50);
  v43 = __p;
  if (__p)
  {
LABEL_66:
    v49 = v43;
    operator delete(v43);
  }

  return v42;
}

void sub_1E0603800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  mlir::mps::CPUNDArray::~CPUNDArray(&a9);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mlir::mps::isStitchable(mlir::mps *this, mlir::Operation *a2)
{
  {
    v4 = llvm::getTypeName<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v4, v5);
  }

  result = (*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v7[0] = 0;
    v7[1] = 0;
    v6 = v7;
    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v6, this))
    {
      return mlir::ElementsAttr::isSplat(v7);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void std::vector<mlir::Value>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

id GPU::doReshapeWithFallBack(void *a1, void *a2, void *a3, void *a4, void *a5, _BYTE *a6, int a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = [v15 reshapeWithCommandEncoder:v16 commandBuffer:v17 sourceArray:v13 shape:v14 destinationArray:0];
  *a6 = 0;
  if (!v18 && a7)
  {
    v19 = [MEMORY[0x1E6974490] descriptorWithDataType:objc_msgSend(v13 shape:{"dataType"), v14}];
    [v19 setPreferPackedRows:1];
    v18 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v17 descriptor:v19];
    v20 = [v15 reshapeWithCommandEncoder:v16 commandBuffer:v17 sourceArray:v13 shape:v14 destinationArray:v18];
    *a6 = 1;
  }

  return v18;
}

mlir::Operation **mlir::OwningOpRef<mlir::func::FuncOp>::~OwningOpRef(mlir::Operation **a1)
{
  v2 = *a1;
  if (v2)
  {
    mlir::Operation::erase(v2);
  }

  return a1;
}

BOOL GPURegionRuntime::isSmallIntType(uint64_t a1, void *a2, uint64_t a3)
{
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8))
  {
    v13 = 0;
    v14 = 0;
    return 0;
  }

  v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
  v13 = a2;
  v14 = v5;
  if (!a2)
  {
    return 0;
  }

  if (*(*mlir::ElementsAttr::isSplat(&v13) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  isSplat = mlir::ElementsAttr::isSplat(&v13);
  if (mlir::Type::getIntOrFloatBitWidth(&isSplat) < 8)
  {
    return 0;
  }

  if (!mlir::CallOpInterface::getArgOperands(&v13))
  {
    return a3;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  if (v8)
  {
    v9 = 8 * v8;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    return a3;
  }

LABEL_14:
  v10 = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
  return mlir::ShapedType::getNumElements(v10, v11) < 17;
}

void GPURegionRuntime::TIAndFoldHelper::runOnRegion(GPURegionRuntime::TIAndFoldHelper *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = **(a1 + 2);
  mlir::FunctionOpInterface::getArgumentTypes(&v25);
  if (v10)
  {
    v11 = 0;
    v12 = (a4 + 8);
    do
    {
      v14 = *(((v25 + 16 * ((*(v25 + 44) >> 23) & 1) + ((*(v25 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v25 + 40) + 8);
      if (v14)
      {
        v15 = v14 - 8;
      }

      else
      {
        v15 = 0;
      }

      v16 = *(*(v15 + 48) + 8 * v11);
      if (*(a2 + 8 * v11))
      {
        (*(*a1 + 32))(a1, v16);
      }

      v17 = *(v12 - 1);
      if (v17)
      {
        (*(*a1 + 56))(a1, v16, v17, *v12);
      }

      ++v11;
      mlir::FunctionOpInterface::getArgumentTypes(&v25);
      v12 += 2;
    }

    while (v11 < v13);
  }

  mlir::FunctionOpInterface::getResultTypes(&v25);
  if (v18)
  {
    for (i = 0; i != v20; ++i)
    {
      if (*(a6 + 8 * i))
      {
        (*(*a1 + 32))(a1, *(*(*(*(a1 + 2) + 16) + 72) + 32 * i + 24));
      }

      mlir::FunctionOpInterface::getResultTypes(&v25);
    }
  }

  v21 = *(a1 + 20);
  if (v21)
  {
    v22 = *(a1 + 9);
    v23 = 8 * v21;
    do
    {
      v24 = *v22++;
      GPURegionRuntime::TIAndFoldHelper::runOnOp(a1, v24);
      v23 -= 8;
    }

    while (v23);
  }
}

void GPURegionRuntime::TIAndFoldHelper::runOnOp(GPURegionRuntime::TIAndFoldHelper *this, GPU::BaseOpHandler *a2)
{
  v157 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 3);
  v140 = v3;
  v141 = a2;
  v4 = *(*(v3 + 48) + 16);
  if (v3)
  {
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    ParentOp = *(v3 + 16);
    if (ParentOp)
    {
      ParentOp = mlir::Block::getParentOp(ParentOp);
    }

    v28 = 0;
    v29 = ParentOp - 16;
    v30 = ParentOp + 24;
    v31 = 24;
    while ((*(v3 + 46) & 0x80) != 0 && v28 < *(v3 + 68))
    {
      v32 = *(*(v3 + 72) + v31);
      if (v28 >= 6)
      {
        v33 = v30;
      }

      else
      {
        v33 = v29;
      }

      v34 = (*(*this + 40))(this, v32);
      if (v34)
      {
        (*(*this + 32))(this, v33, v34);
      }

      v35 = (*(*this + 64))(this, v32);
      if (v35)
      {
        (*(*this + 56))(this, v33, v35, v36);
      }

      ++v28;
      v31 += 32;
      v29 -= 16;
      v30 -= 24;
    }

    return;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v153 = v6;
  if (!v6 || (v3 = v140, mlir::placement::RegionCall::getRegionType(&v153)))
  {
    v139 = 0;
    v150 = &v139;
    v151 = this;
    v152[0] = &v140;
    v152[1] = &v141;
    v7 = *(v3 + 36);
    __dst = v149;
    v148 = 0x100000000;
    if (v7)
    {
      v8 = 0;
      if (v7 != 1)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v149, v7, 8);
        v8 = v148;
      }

      if (v7 != v8)
      {
        bzero(__dst + 8 * v8, 8 * (v7 - v8));
      }

      LODWORD(v148) = v7;
    }

    if (*(v141 + 56) == 1)
    {
      v153 = &v155;
      v154 = 0x100000000;
      v9 = v140;
      if (!*(v140 + 36))
      {
        goto LABEL_91;
      }

      v10 = 0;
      while (1)
      {
        v12 = v9 + 16 * ~v10;
        v13 = v9 + 24 * (5 - v10) - 96;
        v14 = v10 >= 6 ? v13 : v12;
        v15 = (*(v14 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8))
        {
          break;
        }

        v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
        __src = v15;
        v145 = v16;
        if (!v15)
        {
          goto LABEL_19;
        }

        if (!mlir::CallOpInterface::getArgOperands(&__src))
        {
          goto LABEL_34;
        }

        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__src);
        if (v18)
        {
          v19 = 8 * v18;
          while (*ArgAttrsAttr != 0x8000000000000000)
          {
            ++ArgAttrsAttr;
            v19 -= 8;
            if (!v19)
            {
              goto LABEL_19;
            }
          }

LABEL_34:
          v20 = *(this + 10);
          if (v20)
          {
            v21 = *(this + 3);
            v22 = (v20 - 1) & ((v14 >> 4) ^ (v14 >> 9));
            v23 = *(v21 + 16 * v22);
            if (v23 == v14)
            {
LABEL_36:
              if (v22 != v20)
              {
                v11 = *(v21 + 16 * v22 + 8);
                if (v11)
                {
                  goto LABEL_20;
                }
              }
            }

            else
            {
              v25 = 1;
              while (v23 != -4096)
              {
                v26 = v22 + v25++;
                v22 = v26 & (v20 - 1);
                v23 = *(v21 + 16 * v22);
                if (v23 == v14)
                {
                  goto LABEL_36;
                }
              }
            }
          }

          v24 = v154;
          if (v154 >= HIDWORD(v154))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v153, &v155, v154 + 1, 4);
            v24 = v154;
          }

          *(v153 + v24) = v10;
          LODWORD(v154) = v154 + 1;
          ++v10;
          v9 = v140;
          if (v10 >= *(v140 + 36))
          {
LABEL_70:
            if (v154)
            {
              v49 = GPURegionRuntime::TIAndFoldHelper::runOnOp(GPU::BaseOpHandler *)::$_0::operator()(&v150);
              if (v154)
              {
                v50 = v49;
                v51 = v153;
                v52 = (v153 + 4 * v154);
                v53 = v49 - 96;
                do
                {
                  v54 = *v51;
                  v55 = 16 * v54 + 16;
                  v56 = v140 - v55;
                  v57 = v50 - v55;
                  if (v54 <= 5)
                  {
                    v58 = v56;
                  }

                  else
                  {
                    v58 = v140 - 24 * (v54 - 5) - 96;
                  }

                  if (v54 <= 5)
                  {
                    v59 = v57;
                  }

                  else
                  {
                    v59 = &v53[-24 * (v54 - 5)];
                  }

                  v60 = (*(v59 + 1) & 0xFFFFFFFFFFFFFFF8);
                  *(__dst + v54) = v60;
                  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8))
                  {
                    v61 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
                    __src = v60;
                    v145 = v61;
                    if (v60)
                    {
                      if (!mlir::CallOpInterface::getArgOperands(&__src))
                      {
                        goto LABEL_74;
                      }

                      v62 = mlir::CallableOpInterface::getArgAttrsAttr(&__src);
                      if (v63)
                      {
                        v64 = 8 * v63;
                        while (*v62 != 0x8000000000000000)
                        {
                          ++v62;
                          v64 -= 8;
                          if (!v64)
                          {
                            goto LABEL_73;
                          }
                        }

                        goto LABEL_74;
                      }
                    }
                  }

                  else
                  {
                    __src = 0;
                    v145 = 0;
                  }

LABEL_73:
                  (*(*this + 32))(this, v58, v60);
LABEL_74:
                  v51 = (v51 + 4);
                }

                while (v51 != v52);
              }
            }

LABEL_91:
            v65 = v153;
            if (v153 == &v155)
            {
LABEL_103:
              v69 = v140;
              if (v140 && *(*(v140 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::IdentityOp,void>::id)
              {
                if (*(v140 + 36))
                {
                  v70 = v140 - 16;
                }

                else
                {
                  v70 = 0;
                }

                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v70, 0);
                v73 = (*(*this + 64))(this, *(*(v69 + 72) + 24));
                if (v73)
                {
                  (*(*this + 56))(this, NextResultAtOffset, v73, v72);
                }
              }

              else if (*(v141 + 57) == 1)
              {
                if (v148)
                {
                  v74 = __dst;
                  v75 = 8 * v148;
                  while (GPURegionRuntime::isSmallIntType(*(this + 1), *v74, 0))
                  {
                    ++v74;
                    v75 -= 8;
                    if (!v75)
                    {
                      goto LABEL_115;
                    }
                  }
                }

                else
                {
LABEL_115:
                  v76 = GPURegionRuntime::TIAndFoldHelper::runOnOp(GPU::BaseOpHandler *)::$_0::operator()(&v150);
                  __src = &v146;
                  v145 = 0x100000000;
                  if (mlir::Operation::fold(v76))
                  {
                    v77 = v145;
                    if (v145)
                    {
                      v78 = 0;
                      v79 = -16;
                      v80 = 24;
                      do
                      {
                        if (v78 >= 6)
                        {
                          v81 = v140 + v80;
                        }

                        else
                        {
                          v81 = v140 + v79;
                        }

                        v82 = *(__src + v78);
                        if ((v82 & 4) == 0)
                        {
                          v83 = (v82 & 0xFFFFFFFFFFFFFFF8);
                          if ((v82 & 0xFFFFFFFFFFFFFFF8) != 0)
                          {
                            v84 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v83 + 8);
                            v142 = v83;
                            v143 = v84;
                            Type = mlir::ElementsAttr::getType(&v142);
                            if (*(__dst + v78) != Type)
                            {
                              v87 = llvm::errs(Type);
                              v88 = v87;
                              v89 = *(v87 + 4);
                              if ((*(v87 + 3) - v89) > 0x13)
                              {
                                *(v89 + 16) = 540701295;
                                *v89 = *"folder failure for: ";
                                *(v87 + 4) += 20;
                              }

                              else
                              {
                                v88 = llvm::raw_ostream::write(v87, "folder failure for: ", 0x14uLL);
                              }

                              v90 = v140;
                              v91 = mlir::OpPrintingFlags::OpPrintingFlags(&v153);
                              v92 = mlir::OpPrintingFlags::useLocalScope(v91);
                              v93 = mlir::Operation::print(v90, v88, v92);
                              v94 = *(v88 + 4);
                              if (*(v88 + 3) - v94 > 1uLL)
                              {
                                *v94 = 2618;
                                *(v88 + 4) += 2;
                              }

                              else
                              {
                                v93 = llvm::raw_ostream::write(v88, ":\n", 2uLL);
                              }

                              v95 = llvm::errs(v93);
                              v96 = v95;
                              v97 = *(v95 + 4);
                              if (*(v95 + 3) - v97 > 0xEuLL)
                              {
                                *(v95 + 4) += 15;
                              }

                              else
                              {
                              }

                              v153 = *(__dst + v78);
                              mlir::Type::print(&v153, v96);
                              v98 = *(v96 + 4);
                              if (*(v96 + 3) - v98 > 0x17uLL)
                              {
                                *(v96 + 4) += 24;
                              }

                              else
                              {
                              }

                              v153 = v142;
                              v86.n128_f64[0] = mlir::Attribute::print(&v153, v96, 0);
                              v99 = *(v96 + 4);
                              if (*(v96 + 3) == v99)
                              {
                                llvm::raw_ostream::write(v96, "\n", 1uLL);
                              }

                              else
                              {
                                *v99 = 10;
                                ++*(v96 + 4);
                              }
                            }

                            (*(*this + 56))(this, v81, v142, v143, v86);
                            v77 = v145;
                          }
                        }

                        ++v78;
                        v80 -= 24;
                        v79 -= 16;
                      }

                      while (v78 < v77);
                    }
                  }

                  if (__src != &v146)
                  {
                    free(__src);
                  }
                }
              }

              v100 = __dst;
              if (__dst != v149)
              {
                goto LABEL_144;
              }

              return;
            }

LABEL_102:
            free(v65);
            goto LABEL_103;
          }
        }

        else
        {
LABEL_19:
          v11 = *(v14 + 8) & 0xFFFFFFFFFFFFFFF8;
LABEL_20:
          *(__dst + v10++) = v11;
          v9 = v140;
          if (v10 >= *(v140 + 36))
          {
            goto LABEL_70;
          }
        }
      }

      __src = 0;
      v145 = 0;
      goto LABEL_19;
    }

    v37 = *(v140 + 36);
    v38 = (v140 - 16);
    if (!v37)
    {
      v38 = 0;
    }

    v142 = v38;
    v143 = v37;
    mlir::OperandRange::getTypes(&v142, &v153);
    __src = &v146;
    v145 = 0x100000000;
    v39 = v153;
    v40 = v154;
    v41 = v156;
    v42 = v156 - v154;
    if ((v156 - v154) < 2)
    {
      v43 = 0;
      v45 = 0;
      v44 = &v146;
      if (v156 != v154)
      {
        goto LABEL_64;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v146, v156 - v154, 8);
      v43 = v145;
      v44 = __src;
      v45 = v145;
      if (v41 != v40)
      {
LABEL_64:
        v46 = &v44[v45];
        do
        {
          *v46++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v39, v40++) + 8) & 0xFFFFFFFFFFFFFFF8;
        }

        while (v41 != v40);
        v44 = __src;
        v47 = (v145 + v42);
        LODWORD(v145) = v47;
        if (__src == &v146)
        {
LABEL_67:
          v48 = v148;
          if (v148 >= v47)
          {
            if (v47)
            {
              memmove(__dst, v44, 8 * v47);
            }

LABEL_211:
            LODWORD(v148) = v47;
            LODWORD(v145) = 0;
            v65 = __src;
            if (__src == &v146)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          }

          if (HIDWORD(v148) >= v47)
          {
            if (v148)
            {
              memmove(__dst, v44, 8 * v148);
              goto LABEL_209;
            }
          }

          else
          {
            LODWORD(v148) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v149, v47, 8);
          }

          v48 = 0;
LABEL_209:
          if (v145 != v48)
          {
            memcpy(__dst + 8 * v48, __src + 8 * v48, 8 * (v145 - v48));
          }

          goto LABEL_211;
        }

LABEL_99:
        if (__dst != v149)
        {
          free(__dst);
          v44 = __src;
          LODWORD(v47) = v145;
        }

        __dst = v44;
        v148 = __PAIR64__(HIDWORD(v145), v47);
        __src = &v146;
        v145 = 0;
        goto LABEL_103;
      }
    }

    v47 = (v43 + v42);
    LODWORD(v145) = v47;
    if (v44 == &v146)
    {
      goto LABEL_67;
    }

    goto LABEL_99;
  }

  v66 = *(v140 + 44);
  if ((v66 & 0x800000) == 0)
  {
    v153 = &v155;
    v154 = 0x600000000;
LABEL_214:
    v150 = v152;
    v151 = 0x300000000;
    goto LABEL_158;
  }

  v67 = *(v140 + 68);
  v153 = &v155;
  v154 = 0x600000000;
  if (v67)
  {
    if (v67 < 7)
    {
      v68 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v153, &v155, v67, 8);
      v68 = v154;
    }

    if (v67 != v68)
    {
      bzero(v153 + 8 * v68, 8 * (v67 - v68));
    }

    LODWORD(v154) = v67;
    v3 = v140;
    v66 = *(v140 + 44);
  }

  if ((v66 & 0x800000) == 0)
  {
    goto LABEL_214;
  }

  v101 = *(v3 + 68);
  v150 = v152;
  v151 = 0x300000000;
  if (v101)
  {
    if (v101 < 4)
    {
      v102 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v152, v101, 16);
      v102 = v151;
    }

    if (v101 != v102)
    {
      bzero(v150 + 16 * v102, 16 * (v101 - v102));
    }

    LODWORD(v151) = v101;
    v3 = v140;
  }

LABEL_158:
  v103 = *(v3 + 36);
  __dst = v149;
  v148 = 0x600000000;
  if (v103)
  {
    if (v103 < 7)
    {
      v104 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v149, v103, 8);
      v104 = v148;
    }

    if (v103 != v104)
    {
      bzero(__dst + 8 * v104, 8 * (v103 - v104));
    }

    LODWORD(v148) = v103;
  }

  v105 = 0;
  v106 = 0;
  for (i = 24; ; i += 32)
  {
    v108 = v140;
    if ((*(v140 + 46) & 0x80) == 0 || v106 >= *(v140 + 68))
    {
      break;
    }

    v109 = *(*(v140 + 72) + i);
    v110 = (*(*this + 40))(this, v109);
    if (v110)
    {
      *(v153 + v106) = v110;
    }

    v111 = (*(*this + 64))(this, v109);
    if (v111)
    {
      v113 = (v150 + v105);
      *v113 = v111;
      v113[1] = v112;
    }

    ++v106;
    v105 += 16;
  }

  v114 = *(v140 + 36);
  if (v114)
  {
    v115 = *(this + 10);
    if (v115)
    {
      v116 = 0;
      v117 = *(this + 3);
      v118 = v115 - 1;
      v119 = __dst;
      do
      {
        v120 = v108 - 96 + 24 * (5 - v116);
        if (v116 < 6)
        {
          v120 = v108 + 16 * ~v116;
        }

        v121 = ((v120 >> 4) ^ (v120 >> 9)) & v118;
        v122 = *(v117 + 16 * v121);
        if (v122 == v120)
        {
LABEL_180:
          if (v121 != v115)
          {
            v123 = *(v117 + 16 * v121 + 8);
            if (v123)
            {
              v119[v116] = v123;
            }
          }
        }

        else
        {
          v124 = 1;
          while (v122 != -4096)
          {
            v125 = v121 + v124++;
            v121 = v125 & v118;
            v122 = *(v117 + 16 * v121);
            if (v122 == v120)
            {
              goto LABEL_180;
            }
          }
        }

        ++v116;
      }

      while (v116 != v114);
    }
  }

  v126 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((*(this + 1) + 248), &v140);
  if (!v126)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v127 = *(*(v126[3] + 120) + 176);
  (*(**(*(v127 + 592) + 32) + 16))(*(*(v127 + 592) + 32), v153, v154, v150, v151, __dst, v148);
  v128 = v140;
  if (*(v140 + 36))
  {
    v129 = 0;
    v130 = -16;
    v131 = 24;
    v132 = 24;
    do
    {
      v133 = v128 + v130;
      v134 = v128 + v131;
      if (v129 >= 6)
      {
        v135 = v134;
      }

      else
      {
        v135 = v133;
      }

      v136 = (*(**(*(v127 + 592) + 32) + 40))(*(*(v127 + 592) + 32), *(*(*(*(v127 + 592) + 16) + 72) + v132));
      if (v136)
      {
        (*(*this + 32))(this, v135, v136);
      }

      v138 = (*(**(*(v127 + 592) + 32) + 64))(*(*(v127 + 592) + 32), *(*(*(*(v127 + 592) + 16) + 72) + v132), v136);
      if (v138)
      {
        (*(*this + 56))(this, v135, v138, v137);
      }

      ++v129;
      v128 = v140;
      v132 += 32;
      v131 -= 24;
      v130 -= 16;
    }

    while (v129 < *(v140 + 36));
  }

  if (__dst != v149)
  {
    free(__dst);
  }

  if (v150 != v152)
  {
    free(v150);
  }

  v100 = v153;
  if (v153 != &v155)
  {
LABEL_144:
    free(v100);
  }
}

void sub_1E0604F00(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1E0604FB0);
}

void sub_1E0604F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (a19 == v29)
  {
    v32 = a27;
    if (a27 == v28)
    {
      goto LABEL_3;
    }
  }

  else
  {
    free(a19);
    v32 = a27;
    if (a27 == v28)
    {
LABEL_3:
      v33 = *(v30 - 176);
      if (v33 != v27)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  free(v32);
  v33 = *(v30 - 176);
  if (v33 != v27)
  {
LABEL_4:
    free(v33);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

void sub_1E0604F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v22 = *(v21 - 176);
  if (v22 != v20)
  {
    free(v22);
  }

  if (a19 == v19)
  {
    JUMPOUT(0x1E0604FB0);
  }

  JUMPOUT(0x1E0604F44);
}

uint64_t GPURegionRuntime::TIAndFoldHelper::getType(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v5 = *(v3 + 16 * v4);
  if (v5 != a2)
  {
    v7 = 1;
    while (v5 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v2 - 1);
      v5 = *(v3 + 16 * v4);
      if (v5 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v4 == v2)
  {
    return 0;
  }

  return *(v3 + 16 * v4 + 8);
}

mlir *GPURegionRuntime::TIAndFoldHelper::runOnOp(GPU::BaseOpHandler *)::$_0::operator()(mlir ***a1)
{
  v46 = *MEMORY[0x1E69E9840];
  result = **a1;
  if (!result)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1[1];
    v5[28] = 0;
    v5[35] = 0;
    v41 = v43;
    v42 = 0x400000000;
    v6 = 24;
    v7 = *a1[2];
    if ((*(v7 + 46) & 0x80) != 0)
    {
      while (1)
      {
        if (v4 >= *(v7 + 68))
        {
          goto LABEL_20;
        }

        v44 = *(*(v7 + 72) + v6);
        DefiningOp = mlir::Value::getDefiningOp(&v44);
        if (!DefiningOp)
        {
          break;
        }

        v9 = *(*(DefiningOp + 48) + 16);
        v10 = v9 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id;
        if (v9 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
        {
          v11 = DefiningOp;
        }

        else
        {
          v11 = 0;
        }

        v40 = v11;
        if (!v10)
        {
          goto LABEL_12;
        }

        AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v40);
        EncodeTimeConstantOperand = GPURegionRuntime::TIAndFoldHelper::getEncodeTimeConstantOperand(v5, AsAttribute, v13);
LABEL_17:
        v18 = EncodeTimeConstantOperand;
        v19 = v42;
        if (v42 >= HIDWORD(v42))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, v42 + 1, 8);
          v19 = v42;
        }

        *(v41 + v19) = v18;
        v3 = v42 + 1;
        LODWORD(v42) = v42 + 1;
        ++v4;
        v6 += 32;
        v7 = *a1[2];
        if ((*(v7 + 46) & 0x80) == 0)
        {
          goto LABEL_20;
        }
      }

      v40 = 0;
LABEL_12:
      v16 = (*(*v5 + 8))(v5, v44);
      if (v16)
      {
        EncodeTimeConstantOperand = GPURegionRuntime::TIAndFoldHelper::getEncodeTimeConstantOperand(v5, v16, v15);
      }

      else
      {
        v17 = (*(*v5 + 5))(v5, v44);
        if (v17)
        {
          EncodeTimeConstantOperand = GPURegionRuntime::TIAndFoldHelper::getEncodeTimePlaceholderOperand(v5, v17);
        }

        else
        {
          EncodeTimeConstantOperand = GPURegionRuntime::TIAndFoldHelper::getEncodeTimePlaceholderOperand(v5, (*(v44 + 1) & 0xFFFFFFFFFFFFFFF8));
        }
      }

      goto LABEL_17;
    }

LABEL_20:
    v20 = *a1[3];
    mlir::ValueRange::ValueRange(&v44, v41, v3);
    v21 = *(v20 + 72);
    if (!v21)
    {
      EncodeTimeTmpIRBuilder = GPURegionRuntime::TIAndFoldHelper::getEncodeTimeTmpIRBuilder(*(*(*(v20 + 16) + 592) + 32), v44);
      mlir::OpBuilder::clone(EncodeTimeTmpIRBuilder, *(v20 + 24));
    }

    mlir::Operation::setOperands(v21, v44, v45);
    v23 = *(v20 + 72);
    **a1 = v23;
    v25 = mlir::mps::inferTypes(v23, v24);
    if ((v25 & 1) == 0)
    {
      v26 = llvm::errs(v25);
      v27 = v26;
      v28 = *(v26 + 4);
      if (*(v26 + 3) - v28 > 0xEuLL)
      {
        *(v26 + 4) += 15;
      }

      else
      {
      }

      v29 = **a1;
      mlir::OpPrintingFlags::OpPrintingFlags(&v44);
      v30 = mlir::OpPrintingFlags::useLocalScope(&v44);
      mlir::Operation::print(v29, v27, v30);
      v31 = *(v27 + 4);
      if ((*(v27 + 3) - v31) > 2)
      {
        *(v31 + 2) = 10;
        *v31 = 11872;
        *(v27 + 4) += 3;
      }

      else
      {
      }

      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    if ((*(v5[1] + 220) & 0x20) != 0)
    {
      v32 = mlir::verify(**a1, 1);
      if ((v32 & 1) == 0)
      {
        v33 = llvm::errs(v32);
        v34 = v33;
        v35 = *(v33 + 4);
        if (*(v33 + 3) - v35 > 0x14uLL)
        {
          *(v33 + 4) += 21;
        }

        else
        {
        }

        v36 = **a1;
        mlir::OpPrintingFlags::OpPrintingFlags(&v44);
        v37 = mlir::OpPrintingFlags::useLocalScope(&v44);
        mlir::Operation::print(v36, v34, v37);
        v38 = *(v34 + 4);
        if ((*(v34 + 3) - v38) > 2)
        {
          *(v38 + 2) = 10;
          *v38 = 11872;
          *(v34 + 4) += 3;
        }

        else
        {
        }

        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }

    result = **a1;
    if (v41 != v43)
    {
      v39 = **a1;
      free(v41);
      return v39;
    }
  }

  return result;
}

void sub_1E06054E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 != v10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

mlir::Operation **GPURegionRuntime::TIAndFoldHelper::getEncodeTimeTmpIRBuilder(GPURegionRuntime::TIAndFoldHelper *this, mlir::MLIRContext *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = (this + 136);
  if (!*(this + 17))
  {
    v4 = *(this + 18);
    v5 = mlir::UnknownLoc::get(v4, a2);
    mlir::ValueRange::ValueRange(v18, 0, 0);
    mlir::ValueRange::ValueRange(v17, 0, 0);
    v6 = mlir::FunctionType::get(v4, v18[0], v18[1], v17[0], v17[1]);
    v7 = mlir::func::FuncOp::create(v5, "pre_encode_ti_tmp", 17, v6, 0, 0);
    if (*v2)
    {
      mlir::Operation::erase(*v2);
    }

    *(this + 17) = v7;
    mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::addEntryBlock(v2);
    v8 = *(this + 17);
    v9 = *(((v8 + 16 * ((*(v8 + 44) >> 23) & 1) + ((*(v8 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40) + 8);
    if (v9)
    {
      v10 = v9 - 8;
    }

    else
    {
      v10 = 0;
    }

    *(this + 21) = *(v10 + 40);
    v11 = (this + 168);
    *(v11 - 1) = v10;
    v12 = mlir::OpBuilder::create<mlir::func::ReturnOp>((v2 + 1), *(v8 + 24));
    v13 = *(v12 + 16);
    v15 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v12, v14);
    *(v11 - 1) = v13;
    *v11 = v15;
  }

  return v2 + 1;
}

uint64_t GPURegionRuntime::TIAndFoldHelper::getEncodeTimePlaceholderOperand(uint64_t a1, mlir::MLIRContext *a2)
{
  v13 = a2;
  if (*(a1 + 224) == *(a1 + 184))
  {
    EncodeTimeTmpIRBuilder = GPURegionRuntime::TIAndFoldHelper::getEncodeTimeTmpIRBuilder(a1, a2);
    v4 = EncodeTimeTmpIRBuilder + 2;
    v12 = *(EncodeTimeTmpIRBuilder + 1);
    v5 = *(((*(a1 + 136) + 16 * ((*(*(a1 + 136) + 44) >> 23) & 1) + ((*(*(a1 + 136) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(a1 + 136) + 40) + 8);
    if (v5)
    {
      v6 = v5 - 8;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v6 + 40);
    *v4 = v6;
    EncodeTimeTmpIRBuilder[3] = v7;
    v8 = mlir::OpBuilder::create<mlir::mps::PlaceholderOp,mlir::Type &>(EncodeTimeTmpIRBuilder, *(*(a1 + 136) + 24), &v13) - 16;
    v9 = *(a1 + 184);
    if (v9 >= *(a1 + 188))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 176, a1 + 192, v9 + 1, 8);
      LODWORD(v9) = *(a1 + 184);
    }

    *(*(a1 + 176) + 8 * v9) = v8;
    ++*(a1 + 184);
    if (v12)
    {
      *v4 = v12;
    }

    else
    {
      *v4 = 0;
      v4[1] = 0;
    }
  }

  v10 = *(a1 + 224);
  *(a1 + 224) = v10 + 1;
  result = *(*(a1 + 176) + 8 * v10);
  *(result + 8) = *(result + 8) & 7 | v13;
  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PlaceholderOp,mlir::Type &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PlaceholderOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.placeholder";
    v15[3] = 15;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::PlaceholderOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PlaceholderOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

uint64_t GPURegionRuntime::TIAndFoldHelper::getEncodeTimeConstantOperand(uint64_t a1, void *a2, void *a3)
{
  v18[0] = a2;
  v18[1] = a3;
  if (*(a1 + 280) == *(a1 + 240))
  {
    EncodeTimeTmpIRBuilder = GPURegionRuntime::TIAndFoldHelper::getEncodeTimeTmpIRBuilder(a1, a2);
    v5 = EncodeTimeTmpIRBuilder + 2;
    v16 = *(EncodeTimeTmpIRBuilder + 1);
    v6 = *(((*(a1 + 136) + 16 * ((*(*(a1 + 136) + 44) >> 23) & 1) + ((*(*(a1 + 136) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(a1 + 136) + 40) + 8);
    if (v6)
    {
      v7 = v6 - 8;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v7 + 40);
    *v5 = v7;
    EncodeTimeTmpIRBuilder[3] = v8;
    v9 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ElementsAttr>(EncodeTimeTmpIRBuilder, *(*(a1 + 136) + 24), v18);
    v10 = *(a1 + 240);
    if (v10 >= *(a1 + 244))
    {
      v15 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 232, a1 + 248, v10 + 1, 8);
      v9 = v15;
      LODWORD(v10) = *(a1 + 240);
    }

    *(*(a1 + 232) + 8 * v10) = v9;
    ++*(a1 + 240);
    if (v16)
    {
      *v5 = v16;
    }

    else
    {
      *v5 = 0;
      v5[1] = 0;
    }
  }

  v11 = *(a1 + 280);
  *(a1 + 280) = v11 + 1;
  v17 = *(*(a1 + 232) + 8 * v11);
  mlir::mps::ConstantOp::setValueAttr(&v17, v18[0]);
  if (*(v17 + 36))
  {
    v12 = v17 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | mlir::ElementsAttr::getType(v18);
  return NextResultAtOffset;
}

uint64_t GPURegionRuntime::TIAndFoldHelper::reset(uint64_t this)
{
  v1 = this;
  if (!*(this + 32))
  {
LABEL_5:
    v3 = *(v1 + 56);
    if (v3)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v2 = *(this + 40);
  if (v2 > 4 * *(this + 32) && v2 >= 0x41)
  {
    this = llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::shrink_and_clear(this + 24);
    goto LABEL_5;
  }

  if (v2)
  {
    v4 = *(this + 24);
    v5 = (v2 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v5)
    {
      v6 = v5 + 1;
      v7 = (v5 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v8 = (v4 + 16 * v7);
      v9 = (v4 + 16);
      v10 = v7;
      do
      {
        *(v9 - 2) = -4096;
        *v9 = -4096;
        v9 += 4;
        v10 -= 2;
      }

      while (v10);
      if (v6 == v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v8 = *(this + 24);
    }

    v11 = (v4 + 16 * v2);
    do
    {
      *v8 = -4096;
      v8 += 2;
    }

    while (v8 != v11);
  }

LABEL_16:
  *(this + 32) = 0;
  v3 = *(this + 56);
  if (v3)
  {
    goto LABEL_18;
  }

LABEL_17:
  if (!*(v1 + 60))
  {
    return this;
  }

LABEL_18:
  v12 = *(v1 + 64);
  if (v12 <= 4 * v3 || v12 < 0x41)
  {
    if (v12)
    {
      v13 = *(v1 + 48);
      v14 = 24 * v12 - 24;
      if (v14 > 0x17)
      {
        v16 = v14 / 0x18 + 1;
        v15 = (v13 + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
        v17 = *(v1 + 48);
        v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
        do
        {
          *v17 = -4096;
          v17[3] = -4096;
          v17 += 6;
          v18 -= 2;
        }

        while (v18);
        if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
        {
          goto LABEL_31;
        }
      }

      else
      {
        v15 = *(v1 + 48);
      }

      v19 = (v13 + 24 * v12);
      do
      {
        *v15 = -4096;
        v15 += 3;
      }

      while (v15 != v19);
    }

LABEL_31:
    *(v1 + 56) = 0;
    return this;
  }

  return llvm::DenseMap<void *,mlir::ElementsAttr,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::ElementsAttr>>::shrink_and_clear(v1 + 48);
}

BOOL GPURegionRuntime::TIAndFoldHelper::hasType(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = v2 - 1;
  v5 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v3 + 16 * v5);
  if (v6 == a2)
  {
    return 1;
  }

  v8 = 1;
  do
  {
    result = v6 != -4096;
    if (v6 == -4096)
    {
      break;
    }

    v9 = v5 + v8++;
    v5 = v9 & v4;
    v6 = *(v3 + 16 * v5);
  }

  while (v6 != a2);
  return result;
}

uint64_t *GPURegionRuntime::TIAndFoldHelper::setType(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(*(a1 + 16) + 24);
  if (v6 && (Set = mlir::ShapeEquivalence::getSet(v6, a2)) != 0)
  {
    v8 = Set;
    if (a3)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a3 + 8);
      v30 = a3;
      v31 = v9;
      result = mlir::ElementsAttr::isSplat(&v30);
      v11 = *(v8 + 8);
      if (!v11)
      {
        return result;
      }

      goto LABEL_9;
    }

    v30 = 0;
    v31 = 0;
    result = mlir::ElementsAttr::isSplat(&v30);
    v11 = *(v8 + 8);
    if (v11)
    {
LABEL_9:
      v12 = result;
      v13 = *v8;
      v14 = *v8 + 8 * v11;
      do
      {
        v15 = *v13;
        v16 = *(a1 + 40);
        if (v16)
        {
          v17 = *(a1 + 24);
          v18 = v16 - 1;
          v19 = v18 & ((v15 >> 4) ^ (v15 >> 9));
          v20 = *(v17 + 16 * v19);
          if (v20 == v15)
          {
            goto LABEL_11;
          }

          v21 = 1;
          while (v20 != -4096)
          {
            v22 = v19 + v21++;
            v19 = v22 & v18;
            v20 = *(v17 + 16 * v19);
            if (v20 == v15)
            {
              goto LABEL_11;
            }
          }
        }

        v23 = (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v23)
        {
          v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
          v28 = v23;
          v29 = v24;
          v25 = a3;
          if (mlir::ElementsAttr::isSplat(&v28) != v12)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v25 = a3;
          if (mlir::ElementsAttr::isSplat(&v28) != v12)
          {
LABEL_22:
            *&v32 = mlir::CallableOpInterface::getArgAttrsAttr(&v30);
            *(&v32 + 1) = v26;
            v33 = 1;
            isSplat = mlir::ElementsAttr::isSplat(&v28);
            v25 = mlir::ShapedType::cloneWith(&v28, &v32, isSplat);
          }
        }

        *&v32 = v15;
        result = llvm::DenseMapBase<llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>,void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::operator[](a1 + 24, &v32);
        *result = v25;
LABEL_11:
        ++v13;
      }

      while (v13 != v14);
    }
  }

  else
  {
    *&v32 = a2;
    result = llvm::DenseMapBase<llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>,void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::operator[](a1 + 24, &v32);
    *result = a3;
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>,void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::operator[](uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 16 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>,void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::LookupBucketFor<void *>(*v14, *(v14 + 16), *v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

BOOL GPURegionRuntime::TIAndFoldHelper::hasConstant(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 48);
  v4 = v2 - 1;
  v5 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v3 + 24 * v5);
  if (v6 == a2)
  {
    return 1;
  }

  v8 = 1;
  do
  {
    result = v6 != -4096;
    if (v6 == -4096)
    {
      break;
    }

    v9 = v5 + v8++;
    v5 = v9 & v4;
    v6 = *(v3 + 24 * v5);
  }

  while (v6 != a2);
  return result;
}

uint64_t GPURegionRuntime::TIAndFoldHelper::setConstant(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 48);
  v5 = *(result + 64);
  if (v5)
  {
    v6 = v5 - 1;
    v7 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v8 = (v4 + 24 * v7);
    v9 = *v8;
    if (*v8 == a2)
    {
LABEL_3:
      v8[1] = a3;
      v8[2] = a4;
      return result;
    }

    v11 = 0;
    v12 = 1;
    while (v9 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v9 == -8192;
      }

      if (v13)
      {
        v11 = v8;
      }

      v14 = v7 + v12++;
      v7 = v14 & v6;
      v8 = (v4 + 24 * (v14 & v6));
      v9 = *v8;
      if (*v8 == a2)
      {
        goto LABEL_3;
      }
    }

    if (v11)
    {
      v8 = v11;
    }
  }

  else
  {
    v8 = 0;
  }

  v19 = v8;
  v10 = *(result + 56);
  if (4 * v10 + 4 >= 3 * v5)
  {
    v15 = result;
    v16 = a2;
    v17 = a3;
    v18 = a4;
    v5 *= 2;
    goto LABEL_24;
  }

  if (v5 + ~v10 - *(result + 60) <= v5 >> 3)
  {
    v15 = result;
    v16 = a2;
    v17 = a3;
    v18 = a4;
LABEL_24:
    llvm::DenseMap<void *,mlir::ElementsAttr,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::ElementsAttr>>::grow(result + 48, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>,llvm::DenseMapInfo<mlir::FunctionOpInterface,void>,llvm::detail::DenseMapPair<mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>>>,mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>,llvm::DenseMapInfo<mlir::FunctionOpInterface,void>,llvm::detail::DenseMapPair<mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>>>::LookupBucketFor<mlir::FunctionOpInterface>(*(v15 + 48), *(v15 + 64), v16, &v19);
    result = v15;
    a2 = v16;
    v8 = v19;
    a4 = v18;
    a3 = v17;
    ++*(v15 + 56);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(result + 56) = v10 + 1;
  if (*v8 != -4096)
  {
LABEL_8:
    --*(result + 60);
  }

LABEL_9:
  v8[1] = 0;
  v8[2] = 0;
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  return result;
}

uint64_t GPURegionRuntime::TIAndFoldHelper::getConstant(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v5 = (v2 + 24 * v4);
    v6 = *v5;
    if (*v5 == a2)
    {
      goto LABEL_8;
    }

    v7 = 1;
    while (v6 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v3 - 1);
      v5 = (v2 + 24 * v4);
      v6 = *v5;
      if (*v5 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = (v2 + 24 * v3);
LABEL_8:
  if (v5 == (v2 + 24 * v3))
  {
    return 0;
  }

  else
  {
    return v5[1];
  }
}

uint64_t GPURegionRuntime::TIAndFoldHelper::addOpHandler(uint64_t this, GPU::BaseOpHandler *a2)
{
  v2 = *(this + 80);
  if (v2 >= *(this + 84))
  {
    v3 = this;
    v4 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(this + 72, this + 88, v2 + 1, 8);
    a2 = v4;
    this = v3;
    LODWORD(v2) = *(v3 + 80);
  }

  *(*(this + 72) + 8 * v2) = a2;
  ++*(this + 80);
  return this;
}

void GPURegionRuntime::TIAndFoldHelper::~TIAndFoldHelper(GPURegionRuntime::TIAndFoldHelper *this)
{
  *this = &unk_1F5B42778;
  v2 = *(this + 29);
  if (v2 != this + 248)
  {
    free(v2);
  }

  v3 = *(this + 22);
  if (v3 != this + 192)
  {
    free(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    mlir::Operation::erase(v4);
  }

  v5 = *(this + 9);
  if (v5 != this + 88)
  {
    free(v5);
  }

  llvm::deallocate_buffer(*(this + 6), (24 * *(this + 16)));
}

{
  GPURegionRuntime::TIAndFoldHelper::~TIAndFoldHelper(this);
}

void GPURegionRuntime::ParallelTIAndFoldHelper::runOnRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 8) + 240) == 1)
  {
    v10 = qos_class_self();
    llvm::StdThreadPool::raiseQOSIfNeeded(*(a1 + 464), v10);
    v11 = *(a1 + 464);
    v12 = _os_activity_create(&dword_1DF9BF000, "ParallelTIAndFoldHelper", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    llvm::StdThreadPool::setActivity(v11, v12, 1);
  }

  v29 = **(a1 + 16);
  mlir::FunctionOpInterface::getArgumentTypes(&v29);
  if (v13)
  {
    v14 = 0;
    v15 = (a4 + 8);
    do
    {
      v16 = *(((v29 + 16 * ((*(v29 + 44) >> 23) & 1) + ((*(v29 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v29 + 40) + 8);
      if (v16)
      {
        v17 = v16 - 8;
      }

      else
      {
        v17 = 0;
      }

      v18 = *(*(v17 + 48) + 8 * v14);
      if (*(a2 + 8 * v14))
      {
        (*(*a1 + 32))(a1, v18);
      }

      v19 = *(v15 - 1);
      if (v19)
      {
        (*(*a1 + 56))(a1, v18, v19, *v15);
      }

      mlir::FunctionOpInterface::getArgumentTypes(&v29);
      ++v14;
      v15 += 2;
    }

    while (v14 < v20);
  }

  mlir::FunctionOpInterface::getResultTypes(&v29);
  if (v21)
  {
    for (i = 0; i != v23; ++i)
    {
      if (*(a6 + 8 * i))
      {
        (*(*a1 + 32))(a1, *(*(*(*(a1 + 16) + 16) + 72) + 32 * i + 24));
      }

      mlir::FunctionOpInterface::getResultTypes(&v29);
    }
  }

  std::mutex::lock((a1 + 320));
  ++*(a1 + 312);
  std::mutex::unlock((a1 + 320));
  std::condition_variable::notify_all((a1 + 384));
  if (*(*(a1 + 8) + 240))
  {
    v24 = *(a1 + 464);
    v30[0] = &unk_1F5B42950;
    v30[1] = a1;
    v31 = v30;
    llvm::ThreadPoolInterface::asyncImpl<void>(v24, v30, 0, &v28);
    if (v31 == v30)
    {
      (*(*v31 + 32))(v31);
    }

    else if (v31)
    {
      (*(*v31 + 40))();
    }

    std::shared_future<void>::~shared_future(&v28);
  }

  else
  {
    v25 = *(a1 + 80);
    if (v25)
    {
      v26 = *(a1 + 72);
      v27 = 8 * v25;
      do
      {
        GPURegionRuntime::TIAndFoldHelper::runOnOp(a1, *v26);
        std::mutex::lock((a1 + 320));
        ++*(a1 + 312);
        std::mutex::unlock((a1 + 320));
        std::condition_variable::notify_all((a1 + 384));
        ++v26;
        v27 -= 8;
      }

      while (v27);
    }
  }
}

void sub_1E0606698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::function<void ()(void)>::~function(va);
  _Unwind_Resume(a1);
}

BOOL GPURegionRuntime::ParallelTIAndFoldHelper::hasType(uint64_t a1, uint64_t a2)
{
  GPURegionRuntime::ParallelTIAndFoldHelper::waitForValueProcessed(a1, a2);
  llvm::sys::RWMutexImpl::lock_shared((a1 + 432));
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = v4 - 1;
    v7 = v6 & ((a2 >> 4) ^ (a2 >> 9));
    v8 = *(v5 + 16 * v7);
    if (v8 == a2)
    {
      v9 = 1;
    }

    else
    {
      v11 = 1;
      do
      {
        v9 = v8 != -4096;
        if (v8 == -4096)
        {
          break;
        }

        v12 = v7 + v11++;
        v7 = v12 & v6;
        v8 = *(v5 + 16 * v7);
      }

      while (v8 != a2);
    }
  }

  else
  {
    v9 = 0;
  }

  llvm::sys::RWMutexImpl::unlock_shared((a1 + 432));
  return v9;
}

void GPURegionRuntime::ParallelTIAndFoldHelper::waitForValueProcessed(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  if (!*(a1 + 296))
  {
    return;
  }

  DefiningOp = mlir::Value::getDefiningOp(&v13);
  if (DefiningOp)
  {
    if (*(a1 + 296))
    {
      v4 = *(a1 + 304);
      if (v4)
      {
        v5 = *(a1 + 288);
        v6 = (v4 - 1) & ((DefiningOp >> 4) ^ (DefiningOp >> 9));
        v7 = *(v5 + 16 * v6);
        if (v7 == DefiningOp)
        {
LABEL_6:
          if (v6 != v4)
          {
            v8 = *(v5 + 16 * v6 + 8);
            goto LABEL_8;
          }
        }

        else
        {
          v10 = 1;
          while (v7 != -4096)
          {
            v11 = v6 + v10++;
            v6 = v11 & (v4 - 1);
            v7 = *(v5 + 16 * v6);
            if (v7 == DefiningOp)
            {
              goto LABEL_6;
            }
          }
        }
      }
    }
  }

  v8 = 0;
LABEL_8:
  m = (a1 + 320);
  __lk.__m_ = (a1 + 320);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 320));
  if (*(a1 + 312) > v8)
  {
LABEL_12:
    std::mutex::unlock(m);
    return;
  }

  do
  {
    std::condition_variable::wait((a1 + 384), &__lk);
  }

  while (*(a1 + 312) <= v8);
  if (__lk.__owns_)
  {
    m = __lk.__m_;
    goto LABEL_12;
  }
}

uint64_t GPURegionRuntime::ParallelTIAndFoldHelper::getType(uint64_t a1, uint64_t a2)
{
  GPURegionRuntime::ParallelTIAndFoldHelper::waitForValueProcessed(a1, a2);
  llvm::sys::RWMutexImpl::lock_shared((a1 + 432));
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *(v5 + 16 * v6);
    if (v7 == a2)
    {
LABEL_3:
      if (v6 != v4)
      {
        v8 = *(v5 + 16 * v6 + 8);
        goto LABEL_6;
      }
    }

    else
    {
      v10 = 1;
      while (v7 != -4096)
      {
        v11 = v6 + v10++;
        v6 = v11 & (v4 - 1);
        v7 = *(v5 + 16 * v6);
        if (v7 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v8 = 0;
LABEL_6:
  llvm::sys::RWMutexImpl::unlock_shared((a1 + 432));
  return v8;
}

BOOL GPURegionRuntime::ParallelTIAndFoldHelper::setType(uint64_t a1, unint64_t a2, void *a3)
{
  llvm::sys::RWMutexImpl::lock((a1 + 432));
  GPURegionRuntime::TIAndFoldHelper::setType(a1, a2, a3);
  return llvm::sys::RWMutexImpl::unlock_shared((a1 + 432));
}

BOOL GPURegionRuntime::ParallelTIAndFoldHelper::hasConstant(uint64_t a1, uint64_t a2)
{
  GPURegionRuntime::ParallelTIAndFoldHelper::waitForValueProcessed(a1, a2);
  llvm::sys::RWMutexImpl::lock_shared((a1 + 448));
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = v4 - 1;
    v7 = v6 & ((a2 >> 4) ^ (a2 >> 9));
    v8 = *(v5 + 24 * v7);
    if (v8 == a2)
    {
      v9 = 1;
    }

    else
    {
      v11 = 1;
      do
      {
        v9 = v8 != -4096;
        if (v8 == -4096)
        {
          break;
        }

        v12 = v7 + v11++;
        v7 = v12 & v6;
        v8 = *(v5 + 24 * v7);
      }

      while (v8 != a2);
    }
  }

  else
  {
    v9 = 0;
  }

  llvm::sys::RWMutexImpl::unlock_shared((a1 + 448));
  return v9;
}

uint64_t GPURegionRuntime::ParallelTIAndFoldHelper::getConstant(uint64_t a1, uint64_t a2)
{
  GPURegionRuntime::ParallelTIAndFoldHelper::waitForValueProcessed(a1, a2);
  llvm::sys::RWMutexImpl::lock_shared((a1 + 448));
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = (v4 + 24 * v6);
    v8 = *v7;
    if (*v7 == a2)
    {
      goto LABEL_8;
    }

    v9 = 1;
    while (v8 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & (v5 - 1);
      v7 = (v4 + 24 * v6);
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v7 = (v4 + 24 * v5);
LABEL_8:
  if (v7 == (v4 + 24 * v5))
  {
    v11 = 0;
  }

  else
  {
    v11 = v7[1];
  }

  llvm::sys::RWMutexImpl::unlock_shared((a1 + 448));
  return v11;
}

BOOL GPURegionRuntime::ParallelTIAndFoldHelper::setConstant(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  llvm::sys::RWMutexImpl::lock((a1 + 448));
  GPURegionRuntime::TIAndFoldHelper::setConstant(a1, a2, a3, a4);
  return llvm::sys::RWMutexImpl::unlock_shared((a1 + 448));
}

uint64_t GPURegionRuntime::ParallelTIAndFoldHelper::reset(uint64_t this)
{
  v1 = this;
  if (!*(this + 32))
  {
LABEL_5:
    v3 = *(v1 + 56);
    if (v3)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v2 = *(this + 40);
  if (v2 > 4 * *(this + 32) && v2 >= 0x41)
  {
    this = llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::shrink_and_clear(this + 24);
    goto LABEL_5;
  }

  if (v2)
  {
    v4 = *(this + 24);
    v5 = (v2 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v5)
    {
      v6 = v5 + 1;
      v7 = (v5 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v8 = (v4 + 16 * v7);
      v9 = (v4 + 16);
      v10 = v7;
      do
      {
        *(v9 - 2) = -4096;
        *v9 = -4096;
        v9 += 4;
        v10 -= 2;
      }

      while (v10);
      if (v6 == v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v8 = *(this + 24);
    }

    v11 = (v4 + 16 * v2);
    do
    {
      *v8 = -4096;
      v8 += 2;
    }

    while (v8 != v11);
  }

LABEL_16:
  *(this + 32) = 0;
  v3 = *(this + 56);
  if (v3)
  {
    goto LABEL_18;
  }

LABEL_17:
  if (!*(v1 + 60))
  {
LABEL_21:
    *(v1 + 312) = 0;
    return this;
  }

LABEL_18:
  v12 = *(v1 + 64);
  if (v12 > 4 * v3 && v12 >= 0x41)
  {
    this = llvm::DenseMap<void *,mlir::ElementsAttr,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::ElementsAttr>>::shrink_and_clear(v1 + 48);
    goto LABEL_21;
  }

  if (v12)
  {
    v13 = *(v1 + 48);
    v14 = 24 * v12 - 24;
    if (v14 > 0x17)
    {
      v16 = v14 / 0x18 + 1;
      v15 = (v13 + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = *(v1 + 48);
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -4096;
        v17[3] = -4096;
        v17 += 6;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v15 = *(v1 + 48);
    }

    v19 = (v13 + 24 * v12);
    do
    {
      *v15 = -4096;
      v15 += 3;
    }

    while (v15 != v19);
  }

LABEL_30:
  *(v1 + 56) = 0;
  *(v1 + 312) = 0;
  return this;
}

uint64_t GPURegionRuntime::ParallelTIAndFoldHelper::addOpHandler(uint64_t this, GPU::BaseOpHandler *a2)
{
  v2 = *(this + 296);
  v3 = (v2 + 1);
  v4 = *(this + 304);
  if (!v4)
  {
    v20 = 0;
LABEL_24:
    v18 = a2;
    v4 *= 2;
LABEL_25:
    v19 = this;
    llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(this + 288, v4);
    llvm::DenseMapBase<llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>,void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::LookupBucketFor<void *>(*(v19 + 288), *(v19 + 304), v18[3], &v20);
    a2 = v18;
    this = v19;
    v9 = v20;
    ++*(v19 + 296);
    if (*v9 == -4096)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v5 = *(this + 288);
  v6 = *(a2 + 3);
  v7 = v4 - 1;
  v8 = ((v6 >> 4) ^ (v6 >> 9)) & (v4 - 1);
  v9 = (v5 + 16 * v8);
  v10 = *v9;
  if (v6 == *v9)
  {
    goto LABEL_18;
  }

  v11 = 0;
  v12 = 1;
  while (v10 != -4096)
  {
    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10 == -8192;
    }

    if (v13)
    {
      v11 = v9;
    }

    v14 = v8 + v12++;
    v8 = v14 & v7;
    v9 = (v5 + 16 * (v14 & v7));
    v10 = *v9;
    if (v6 == *v9)
    {
      goto LABEL_18;
    }
  }

  if (v11)
  {
    v9 = v11;
  }

  v20 = v9;
  if (4 * v2 + 4 >= 3 * v4)
  {
    goto LABEL_24;
  }

  if (v4 + ~v2 - *(this + 300) <= v4 >> 3)
  {
    v18 = a2;
    goto LABEL_25;
  }

  *(this + 296) = v3;
  if (*v9 != -4096)
  {
LABEL_16:
    --*(this + 300);
  }

LABEL_17:
  *v9 = *(a2 + 3);
  v9[1] = 0;
LABEL_18:
  v9[1] = v3;
  v15 = *(this + 80);
  if (v15 >= *(this + 84))
  {
    v16 = this;
    v17 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(this + 72, this + 88, v15 + 1, 8);
    a2 = v17;
    this = v16;
    LODWORD(v15) = *(v16 + 80);
  }

  *(*(this + 72) + 8 * v15) = a2;
  ++*(this + 80);
  return this;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = (*a1 + 16 * (v14 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::LookupBucketFor<mlir::func::FuncOp>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  v7[1] = 0;
  return v7 + 1;
}

uint64_t OriginalModuleRef::get(void *a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if (!a2 || (MPSGraphReportFailure(&cfstr_OriginalModule.isa), v5 = objc_claimAutoreleasedReturnValue(), v6 = MEMORY[0x1E696ABC0], v15 = *MEMORY[0x1E696A578], [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d:: %@ ", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Headers/Project/MPSGraphExecutable_Project.h", 449, v5], v7 = objc_claimAutoreleasedReturnValue(), v16[0] = v7, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v16, &v15, 1), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "errorWithDomain:code:userInfo:", @"MPSGraph", -1, v8), *a2 = objc_claimAutoreleasedReturnValue(), v8, v7, v5, !*a1))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  if ((*(**a1 + 16))() != 2)
  {
    if (a2)
    {
      v9 = MPSGraphReportFailure(&cfstr_OriginalModule_0.isa);
      v10 = MEMORY[0x1E696ABC0];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d:: %@ ", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Headers/Project/MPSGraphExecutable_Project.h", 450, v9, *MEMORY[0x1E696A578]];
      v14 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *a2 = [v10 errorWithDomain:@"MPSGraph" code:-1 userInfo:v12];
    }

    (*(**a1 + 16))();
    if ((*(**a1 + 16))() != 2 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  return (*(**a1 + 24))(*a1, 0);
}

void RuntimeSpecialization::~RuntimeSpecialization(RuntimeSpecialization *this)
{
  v3 = (this + 32);
  v2 = *(this + 4);
  if (v2)
  {
    GPU::ANEHelper::unloadModel(v2);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    GPU::detail::SpecializationGPUDataLoader::~SpecializationGPUDataLoader(v4);
  }

  v5 = *v3;
  *v3 = 0;
  if (v5)
  {
    std::default_delete<GPU::ANEHelper::CompiledProduct>::operator()[abi:ne200100](v3, v5);
  }

  v6 = *(this + 4);
  v7 = *this;
  if (v6)
  {
    v8 = 16 * v6;
    v9 = (v7 + 8);
    do
    {
      if ((*(v9 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
      }

      v9 += 2;
      v8 -= 16;
    }

    while (v8);
    v7 = *this;
    v10 = (16 * *(this + 4));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v7, v10);
}

void RuntimeSpecializationsCache::RuntimeSpecializationsCache(RuntimeSpecializationsCache *this, ModuleOp a2)
{
  *this = 850045863;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 24) = 1065353216;
  *(this + 14) = 0;
  v3 = (this + 112);
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 13) = a2;
  mlir::mpsx::getPerFuncOpANEFileSymbols(*(a2.state + 8), a2, &v4);
  llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>>>,mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>>>::destroyAll(v3);
  llvm::deallocate_buffer(*(this + 14), (32 * *(this + 32)));
}

void sub_1E060760C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  *(v12 + 136) = a10;
  *(v12 + 144) = a11;
  *(v12 + 152) = a12;
  llvm::deallocate_buffer(0, 0);
}

void sub_1E0607698()
{
  std::unordered_map<ObjCMapKeyWrapper,std::unique_ptr<RuntimeSpecialization>>::~unordered_map[abi:ne200100](&v0[1]);
  std::mutex::~mutex(v0);
  _Unwind_Resume(v1);
}

void llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::mps::ReadDataFromFileOp,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::mps::ReadDataFromFileOp,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>>>>::~DenseMap(uint64_t *a1)
{
  v1 = *(a1 + 4);
  v2 = *a1;
  if (v1)
  {
    v3 = 32 * v1;
    do
    {
      if ((*v2 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        llvm::deallocate_buffer(*(v2 + 8), (8 * *(v2 + 24)));
      }

      v2 += 32;
      v3 -= 32;
    }

    while (v3);
    v2 = *a1;
    v4 = (32 * *(a1 + 4));
  }

  else
  {
    v4 = 0;
  }

  llvm::deallocate_buffer(v2, v4);
}

void RuntimeSpecializationsCache::removeSpecialization(std::mutex *this, MPSGraphExecutableEntryPointToSymbolAndFileNameMap *a2)
{
  v3 = a2;
  std::mutex::lock(this);
  v25 = v3;
  v4 = [(MPSGraphExecutableEntryPointToSymbolAndFileNameMap *)v25 hash];
  v5 = *this[1].__m_.__opaque;
  if (v5)
  {
    v6 = v4;
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = v4;
      if (v4 >= *&v5)
      {
        v8 = v4 % *&v5;
      }
    }

    else
    {
      v8 = (*&v5 - 1) & v4;
    }

    v9 = *(this[1].__m_.__sig + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          v11 = *&v5 - 1;
          while (1)
          {
            v13 = v10[1];
            if (v13 == v6)
            {
              if ([v10[2] isEqual:v25])
              {
                goto LABEL_21;
              }
            }

            else if ((v13 & v11) != v8)
            {
              goto LABEL_50;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_50;
            }
          }
        }

        do
        {
          v12 = v10[1];
          if (v12 == v6)
          {
            if ([v10[2] isEqual:v25])
            {
LABEL_21:
              v14 = *this[1].__m_.__opaque;
              v15 = v10[1];
              v16 = vcnt_s8(v14);
              v16.i16[0] = vaddlv_u8(v16);
              if (v16.u32[0] > 1uLL)
              {
                if (v15 >= *&v14)
                {
                  v15 %= *&v14;
                }
              }

              else
              {
                v15 &= *&v14 - 1;
              }

              sig = this[1].__m_.__sig;
              v18 = *(sig + 8 * v15);
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18 != v10);
              if (v19 == &this[1].__m_.__opaque[8])
              {
                goto LABEL_38;
              }

              v20 = *(v19 + 1);
              if (v16.u32[0] > 1uLL)
              {
                if (v20 >= *&v14)
                {
                  v20 %= *&v14;
                }
              }

              else
              {
                v20 &= *&v14 - 1;
              }

              if (v20 != v15)
              {
LABEL_38:
                if (!*v10)
                {
                  goto LABEL_39;
                }

                v21 = *(*v10 + 1);
                if (v16.u32[0] > 1uLL)
                {
                  if (v21 >= *&v14)
                  {
                    v21 %= *&v14;
                  }
                }

                else
                {
                  v21 &= *&v14 - 1;
                }

                if (v21 != v15)
                {
LABEL_39:
                  *(sig + 8 * v15) = 0;
                }
              }

              v22 = *v10;
              if (*v10)
              {
                v23 = v22[1];
                if (v16.u32[0] > 1uLL)
                {
                  if (v23 >= *&v14)
                  {
                    v23 %= *&v14;
                  }
                }

                else
                {
                  v23 &= *&v14 - 1;
                }

                if (v23 != v15)
                {
                  *(sig + 8 * v23) = v19;
                  v22 = *v10;
                }
              }

              *v19 = v22;
              *v10 = 0;
              --*&this[1].__m_.__opaque[16];
              v24 = v10[3];
              v10[3] = 0;
              if (v24)
              {
                RuntimeSpecialization::~RuntimeSpecialization(v24);
              }

              operator delete(v10);
              break;
            }
          }

          else
          {
            if (v12 >= *&v5)
            {
              v12 %= *&v5;
            }

            if (v12 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

LABEL_50:

  std::mutex::unlock(this);
}

void sub_1E0607A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::mutex::unlock(v10);

  _Unwind_Resume(a1);
}

uint64_t *RuntimeSpecializationsCache::getSpecializationOrNil(std::mutex *this, MPSGraphExecutableEntryPointToSymbolAndFileNameMap *a2)
{
  v3 = a2;
  std::mutex::lock(this);
  v4 = v3;
  v5 = [(MPSGraphExecutableEntryPointToSymbolAndFileNameMap *)v4 hash];
  v6 = *this[1].__m_.__opaque;
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = v5;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v5;
  }

  v10 = *(this[1].__m_.__sig + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_22:

    v15 = 0;
    goto LABEL_23;
  }

  if (v8.u32[0] < 2uLL)
  {
    v12 = *&v6 - 1;
    while (1)
    {
      v14 = v11[1];
      if (v14 == v7)
      {
        if ([v11[2] isEqual:v4])
        {
          goto LABEL_21;
        }
      }

      else if ((v14 & v12) != v9)
      {
        goto LABEL_22;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v13 = v11[1];
    if (v13 == v7)
    {
      break;
    }

    if (v13 >= *&v6)
    {
      v13 %= *&v6;
    }

    if (v13 != v9)
    {
      goto LABEL_22;
    }

LABEL_11:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  if (([v11[2] isEqual:v4] & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_21:

  v15 = v11[3];
LABEL_23:
  std::mutex::unlock(this);

  return v15;
}

void sub_1E0607BC4(_Unwind_Exception *a1)
{
  std::mutex::unlock(v1);

  _Unwind_Resume(a1);
}

uint64_t *RuntimeSpecializationsCache::getOrCreateSpecialization(uint64_t a1, void *a2)
{
  v15 = a2;
  std::mutex::lock(a1);
  v16 = v15;
  v3 = [v16 hash];
  v4 = *(a1 + 72);
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = v3;
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3;
    if (v3 >= *&v4)
    {
      v7 = v3 % *&v4;
    }
  }

  else
  {
    v7 = (*&v4 - 1) & v3;
  }

  v8 = *(*(a1 + 64) + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    v10 = *&v4 - 1;
    while (1)
    {
      v12 = v9[1];
      if (v12 == v5)
      {
        if ([v9[2] isEqual:v16])
        {
          goto LABEL_23;
        }
      }

      else if ((v12 & v10) != v7)
      {
        goto LABEL_22;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v11 = v9[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v4)
    {
      v11 %= *&v4;
    }

    if (v11 != v7)
    {
      goto LABEL_22;
    }

LABEL_11:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (([v9[2] isEqual:v16] & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_23:
  v13 = v9[3];

  std::mutex::unlock(a1);
  return v13;
}

void sub_1E0608AC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, GPU::detail::SpecializationGPUDataLoader **a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  std::unique_ptr<GPU::detail::SpecializationGPUDataLoader>::~unique_ptr[abi:ne200100](a15);
  v34 = *a12;
  *a12 = 0;
  if (v34)
  {
    std::default_delete<GPU::ANEHelper::CompiledProduct>::operator()[abi:ne200100](a12, v34);
  }

  llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::~DenseMap(v33);
}

uint64_t MPSRuntime::aneStreamingSessionSignal(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v30 = a4;
  v31 = a2;
  v8 = a5;
  v29 = v8;
  if (!*(a1 + 600))
  {
    v17 = 0;
    goto LABEL_23;
  }

  v28 = 1;
  std::mutex::lock((a1 + 144));
  if (a3)
  {
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
  }

  v10 = *(a1 + 568);
  v11 = *(a1 + 584);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = (v11 - 1) & ((a3 >> 4) ^ (a3 >> 9));
  v13 = (v10 + 24 * v12);
  v14 = *v13;
  if (*v13 != a3)
  {
    v15 = 1;
    while (v14 != -4096)
    {
      v16 = v12 + v15++;
      v12 = v16 & (v11 - 1);
      v13 = (v10 + 24 * v12);
      v14 = *v13;
      if (*v13 == a3)
      {
        goto LABEL_12;
      }
    }

LABEL_11:
    v13 = (v10 + 24 * v11);
  }

LABEL_12:
  *(a1 + 592) = v13[2];
  v18 = ((a3 + 16 * ((*(a3 + 44) >> 23) & 1) + ((*(a3 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a3 + 40);
  v26[0] = a1;
  v26[1] = &v27;
  v26[2] = &v28;
  v26[3] = &v31;
  v26[4] = &v29;
  v26[5] = &v30;
  v27 = 0;
  v19 = *(v18 + 8);
  if (v19 == v18)
  {
    v17 = 1;
  }

  else
  {
    do
    {
      v20 = v19 - 8;
      if (!v19)
      {
        v20 = 0;
      }

      v21 = *(v20 + 40);
      v22 = v20 + 32;
      if (v21 != v20 + 32)
      {
        do
        {
          v23 = *(v21 + 8);
          v24 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v21, v9);
          v32 = v26;
          mlir::detail::walk<mlir::ForwardIterator>(v24, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN10MPSRuntime25aneStreamingSessionSignalEP28MPSGraphAneSessionDescriptorNS1_4func6FuncOpEP21RuntimeSpecializationP19NSMutableDictionaryE3__0NS1_9placement10RegionCallEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESV_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v32, 1);
          v21 = v23;
        }

        while (v23 != v22);
      }

      v19 = *(v19 + 8);
    }

    while (v19 != v18);
    v17 = v28;
  }

  *(a1 + 592) = 0;
  *(a1 + 688) = 0;
  std::mutex::unlock((a1 + 144));
  v8 = v29;
LABEL_23:

  return v17 & 1;
}

void sub_1E0608EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19)
{
  std::mutex::unlock((v19 + 144));

  _Unwind_Resume(a1);
}

void GPURegionRuntime::~GPURegionRuntime(GPURegionRuntime *this)
{
  GPURegionRuntime::~GPURegionRuntime(this);
}

{
  *this = &unk_1F5B42AA0;
  v2 = *(this + 81);
  *(this + 81) = 0;
  if (v2)
  {
    GPU::MemrefBufferizer::~MemrefBufferizer(v2);
  }

  v3 = *(this + 78);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(this + 76);
  *(this + 76) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 146);
  v7 = *(this + 71);
  if (v6)
  {
    v8 = 24 * v6;
    v9 = (v7 + 16);
    do
    {
      if ((*(v9 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v10 = *v9;
        *v9 = 0;
        if (v10)
        {
          std::default_delete<GPURegionRuntime::MPSRuntimeEntryInfo>::operator()[abi:ne200100](v10);
        }
      }

      v9 += 3;
      v8 -= 24;
    }

    while (v8);
    v7 = *(this + 71);
    v11 = 24 * *(this + 146);
  }

  else
  {
    v11 = 0;
  }

  llvm::deallocate_buffer(v7, v11);
}

void sub_1E06090D8()
{

  JUMPOUT(0x1E12E5B90);
}

void MPSRuntime::~MPSRuntime(MPSRuntime *this)
{
  *this = &unk_1F5B42A20;
  v1 = *(this + 85);
  *(this + 85) = 0;
  if (v1)
  {
    RuntimeSpecializationsCache::~RuntimeSpecializationsCache(v1);
  }

  GPURegionRuntime::~GPURegionRuntime(this);
}

{
  *this = &unk_1F5B42A20;
  v2 = *(this + 85);
  *(this + 85) = 0;
  if (v2)
  {
    RuntimeSpecializationsCache::~RuntimeSpecializationsCache(v2);
  }

  GPURegionRuntime::~GPURegionRuntime(this);
}

void GPURegionRuntime::ParallelTIAndFoldHelper::~ParallelTIAndFoldHelper(GPURegionRuntime::ParallelTIAndFoldHelper *this)
{
  *this = &unk_1F5B427E0;
  v2 = *(this + 58);
  *(this + 58) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  llvm::sys::RWMutexImpl::~RWMutexImpl(this + 56);
  llvm::sys::RWMutexImpl::~RWMutexImpl(this + 54);
  std::condition_variable::~condition_variable(this + 8);
  std::mutex::~mutex(this + 5);
  llvm::deallocate_buffer(*(this + 36), (16 * *(this + 76)));
}

{
  *this = &unk_1F5B427E0;
  v2 = *(this + 58);
  *(this + 58) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  llvm::sys::RWMutexImpl::~RWMutexImpl(this + 56);
  llvm::sys::RWMutexImpl::~RWMutexImpl(this + 54);
  std::condition_variable::~condition_variable(this + 8);
  std::mutex::~mutex(this + 5);
  llvm::deallocate_buffer(*(this + 36), (16 * *(this + 76)));
}

void sub_1E06092A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  GPURegionRuntime::TIAndFoldHelper::~TIAndFoldHelper(v12);
}

void sub_1E0609368()
{

  JUMPOUT(0x1E12E5B90);
}

void GPU::MPSGraphKernelDAG::~MPSGraphKernelDAG(GPU::MPSGraphKernelDAG *this)
{
  GPU::MPSGraphKernelDAG::~MPSGraphKernelDAG(this);

  JUMPOUT(0x1E12E5B90);
}

{
  *this = &unk_1F5B42758;
  v2 = *(this + 17);
  *(this + 17) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 11);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    operator delete(v7);
  }
}

void *std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_1E0609744(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[5];
      if (v3)
      {
        do
        {
          v4 = *v3;

          operator delete(v3);
          v3 = v4;
        }

        while (v4);
      }

      v5 = v1[3];
      v1[3] = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v23 + v26 + v32;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v32 + v24 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v25 + v27 + v38;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v50 + v48 + v59 + v49;
        v41 = __ROR8__(v50 + v48 + v59, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>>>::__emplace_unique_key_args<void *,void *,MPSGraphTensorData * {__strong}&>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_1E060A128(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t GPU::EncodeDescriptor::commitAndContinue(GPU::EncodeDescriptor *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    [v2 endEncoding];
    v3 = *(this + 9);
    *(this + 9) = 0;
  }

  v4 = *(this + 1);

  return [v4 commitAndContinue];
}

void GPU::EncodeDescriptor::~EncodeDescriptor(GPU::EncodeDescriptor *this)
{
  *this = &unk_1F5B428B0;
  v2 = *(this + 9);
  if (v2)
  {
    [v2 endEncoding];
    v3 = *(this + 9);
    *(this + 9) = 0;
  }

  v4 = *(this + 10);
  *(this + 10) = 0;

  v5 = *(this + 6);
  if (v5)
  {
    do
    {
      v6 = *v5;

      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    operator delete(v7);
  }
}

void *std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_1E060A61C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[5];
      if (v3)
      {
        do
        {
          v4 = *v3;
          operator delete(v3);
          v3 = v4;
        }

        while (v4);
      }

      v5 = v1[3];
      v1[3] = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPURegionRuntime::evaluateOps(GPU::EncodeDescriptor *,NSArray<MPSGraphTensorData *> *,NSArray<MPSGraphTensorData *> *)::$_1::operator() const(mlir::FunctionOpInterface)::{lambda(mlir::Operation *)#1}>(void **a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = *(a2 + 16);
  if (!v5)
  {
    v7 = 0;
LABEL_7:
    if (v7 != **a1)
    {
      return;
    }

    goto LABEL_8;
  }

  ParentOp = mlir::Block::getParentOp(v5);
  v7 = ParentOp;
  if (!ParentOp)
  {
    goto LABEL_7;
  }

  if (mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
  {
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v7);
    if (v7 != **a1)
    {
      return;
    }
  }

  else if (**a1)
  {
    return;
  }

LABEL_8:
  v8 = 1;
  if (!*a1[3])
  {
    v8 = 4;
  }

  v9 = 2;
  if (!*a1[3])
  {
    v9 = 5;
  }

  v23 = *a1[v9];
  v10 = *a1[v8];
  v11 = v4[82];
  v12 = *a1[7];
  v13 = *a1[8];
  v14 = *a1[9];
  v15 = (*(*v12 + 8))(v12);
  GPURegionRuntime::encodeOp(v4, a2, v12);
  if (*(v12 + 25) == 1)
  {
    v16 = *(v12 + 72);
    if (v16)
    {
      [v16 endEncoding];
      v17 = *(v12 + 72);
      *(v12 + 72) = 0;
    }
  }

  v18 = v4 + 82;
  if (((*(v12 + 24) | v15) & 1) == 0)
  {
    goto LABEL_32;
  }

  v19 = computeProducedValues(a2, v4, 0, 0, 0);
  if (!v19)
  {
    goto LABEL_32;
  }

  v20 = v4[82] + 1;
  v4[82] = v20;
  v21 = v4[83] + v19;
  v4[83] = v21;
  if (v21 < v14 && v20 < v13 && (v20 < v10 || v21 < v23))
  {
    goto LABEL_32;
  }

  if (*(v12 + 24) & 1) != 0 || ((v15 ^ 1))
  {
    if (!*(v12 + 24))
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  (*(*v12 + 16))(v12);
  if (*(v12 + 24))
  {
LABEL_31:
    (**v12)(v12);
    *v18 = 0;
    v4[83] = 0;
  }

LABEL_32:
  if (*v18 < v11)
  {
    ++*a1[3];
  }
}

uint64_t mlir::mps::ConcatOp::getODSOperands(mlir::mps::ConcatOp *this)
{
  ODSOperandIndexAndLength = mlir::mps::ConcatOp::getODSOperandIndexAndLength(this, 0);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v3 = *(*this + 72);
  }

  else
  {
    v3 = 0;
  }

  return v3 + 32 * ODSOperandIndexAndLength;
}

void *std::__hash_table<mlir::Operation *,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,std::allocator<mlir::Operation *>>::__emplace_unique_key_args<mlir::Operation *,mlir::Operation * const&>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

uint64_t std::unordered_set<mlir::Operation *>::~unordered_set[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v12 == v6)
        {
          if (result[2] == v3)
          {
            return result;
          }
        }

        else if ((v12 & v11) != v8)
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
      v13 = result[1];
      if (v13 == v6)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v13 >= *&v2)
        {
          v13 %= *&v2;
        }

        if (v13 != v8)
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

uint64_t *std::__hash_table<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>>>::remove@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *result;
  v7 = *(*result + 8 * v4);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != a2);
  if (v8 == result + 2)
  {
    goto LABEL_18;
  }

  v9 = v8[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }
  }

  else
  {
    v9 &= *&v3 - 1;
  }

  if (v9 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v10 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v4)
    {
LABEL_19:
      *(v6 + 8 * v4) = 0;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    v12 = *(v11 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v4)
    {
      *(v6 + 8 * v12) = v8;
      v11 = *a2;
    }
  }

  *v8 = v11;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t ___ZZN16GPURegionRuntime21canEvaluateFullyOnANEEPNS_14FullyOnANEInfoEP7NSArrayIP18MPSGraphTensorDataES6_P37MPSGraphExecutableExecutionDescriptorENK3__0clEv_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (!v7 || (v9 = v7, [(MPSGraphTensorData *)v7 tensorDataType]) || GPU::TensorToMemrefOpHandler::inputRequiresCopy(*(*(**(a1 + 40) + 128) + 8 * a3), v9, 0))
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ___ZZN16GPURegionRuntime21canEvaluateFullyOnANEEPNS_14FullyOnANEInfoEP7NSArrayIP18MPSGraphTensorDataES6_P37MPSGraphExecutableExecutionDescriptorENK3__0clEv_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (!v7)
  {
    goto LABEL_3;
  }

  v14 = v7;
  if ([v7 tensorDataType])
  {
    goto LABEL_3;
  }

  v8 = *(*(**(a1 + 40) + 192) + 8 * a3);
  v9 = v14;
  if (![v9 iosurface])
  {

    goto LABEL_3;
  }

  v10 = [v9 mpsndarray];
  v11 = *&v10[*MEMORY[0x1E6974500]];
  v12 = *(v8 + 120);

  if (v11 != v12)
  {
LABEL_3:
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return MEMORY[0x1EEE66BB8]();
}

void *std::__hash_table<std::__hash_value_type<void *,BaseTensor *>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,BaseTensor *>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,BaseTensor *>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,BaseTensor *>>>::__emplace_unique_key_args<void *,std::pair<void *,BaseTensor *>>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void LazyCopyFile::load(LazyCopyFile *this, Location a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(this);
  if ((v2 & 1) == 0)
  {
    std::mutex::lock((this + 8));
    v5 = atomic_load(this);
    if ((v5 & 1) == 0)
    {
      if (!*(this + 10) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (!*(this + 9) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v6 = [*(this + 10) UTF8String];
      v7 = v6;
      if (v6)
      {
        v8 = strlen(v6);
      }

      else
      {
        v8 = 0;
      }

      v9 = [*(this + 9) UTF8String];
      v10 = v9;
      if (v9)
      {
        v11 = strlen(v9);
      }

      else
      {
        v11 = 0;
      }

      v12 = [*(this + 11) UTF8String];
      v13 = strlen(v12);
      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        operator new();
      }

      v18 = v13;
      if (v13)
      {
        memmove(__p, v12, v13);
      }

      *(__p + v14) = 0;
      v15 = mlir::mps::copyFilesToNewBasePath(a2.var0.var0, v7, v8, v10, v11, __p, 1);
      if (v18 < 0)
      {
        v16 = v15;
        operator delete(__p[0]);
        v15 = v16;
      }

      if ((v15 & 1) == 0)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      atomic_store(1u, this);
    }

    std::mutex::unlock((this + 8));
  }
}

void BaseRuntime::~BaseRuntime(BaseRuntime *this)
{
  *this = &unk_1F5B50340;

  std::mutex::~mutex((this + 144));
  v2 = *(this + 13);
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[5];
      if (v7)
      {
        do
        {
          v8 = *v7;

          operator delete(v7);
          v7 = v8;
        }

        while (v8);
      }

      v9 = v2[3];
      v2[3] = 0;
      if (v9)
      {
        operator delete(v9);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  objc_destroyWeak(this + 9);
  objc_destroyWeak(this + 7);

  v4 = *(this + 3);
  if (v4)
  {
    do
    {
      v10 = *v4;
      if (*(v4 + 39) < 0)
      {
        operator delete(v4[2]);
      }

      operator delete(v4);
      v4 = v10;
    }

    while (v10);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    operator delete(v5);
  }
}

void GPU::MemrefBufferizer::~MemrefBufferizer(GPU::MemrefBufferizer *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    do
    {
      v8 = *v2;
      v9 = v2[3];
      v2[3] = 0;
      if (v9)
      {
        std::default_delete<GPU::MemrefBufferPool>::operator()[abi:ne200100]((v2 + 3), v9);
      }

      operator delete(v2);
      v2 = v8;
    }

    while (v8);
  }

  v3 = *(this + 27);
  *(this + 27) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 52);
  v5 = *(this + 24);
  if (v4)
  {
    v6 = 16 * v4;
    v7 = (v5 + 8);
    do
    {
      if ((*(v7 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
      }

      v7 += 2;
      v6 -= 16;
    }

    while (v6);
    v5 = *(this + 24);
    v10 = (16 * *(this + 52));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v5, v10);
}

uint64_t sub_1E060C234()
{
  std::recursive_mutex::~recursive_mutex((v0 + 24));

  return v0;
}

void std::default_delete<GPU::MemrefBufferPool>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 112);
    while (v3)
    {
      v4 = v3;
      v3 = *v3;
      v5 = v4[3];
      if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v4 = v6;
      }

      operator delete(v4);
    }

    v7 = *(a2 + 96);
    *(a2 + 96) = 0;
    if (v7)
    {
      operator delete(v7);
    }

    std::__tree<std::shared_ptr<GPU::MemrefBuffer>,BOOL (*)(std::shared_ptr<GPU::MemrefBuffer>,std::shared_ptr<GPU::MemrefBuffer>),std::allocator<std::shared_ptr<GPU::MemrefBuffer>>>::destroy(a2 + 64, *(a2 + 72));
    std::__tree<std::shared_ptr<GPU::MemrefBuffer>,BOOL (*)(std::shared_ptr<GPU::MemrefBuffer>,std::shared_ptr<GPU::MemrefBuffer>),std::allocator<std::shared_ptr<GPU::MemrefBuffer>>>::destroy(a2 + 32, *(a2 + 40));

    JUMPOUT(0x1E12E5B90);
  }
}

void std::__tree<std::shared_ptr<GPU::MemrefBuffer>,BOOL (*)(std::shared_ptr<GPU::MemrefBuffer>,std::shared_ptr<GPU::MemrefBuffer>),std::allocator<std::shared_ptr<GPU::MemrefBuffer>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::shared_ptr<GPU::MemrefBuffer>,BOOL (*)(std::shared_ptr<GPU::MemrefBuffer>,std::shared_ptr<GPU::MemrefBuffer>),std::allocator<std::shared_ptr<GPU::MemrefBuffer>>>::destroy(a1, *a2);
    std::__tree<std::shared_ptr<GPU::MemrefBuffer>,BOOL (*)(std::shared_ptr<GPU::MemrefBuffer>,std::shared_ptr<GPU::MemrefBuffer>),std::allocator<std::shared_ptr<GPU::MemrefBuffer>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

void std::default_delete<GPU::RuntimeExecutionReport>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 128);
    if (v3 != (a2 + 144))
    {
      free(v3);
    }

    v4 = *(a2 + 120);
    v5 = *(a2 + 104);
    if (v4)
    {
      v6 = 80 * v4;
      v7 = v5 + 32;
      do
      {
        if (*(v7 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v8 = *(v7 - 2);
          if (v7 != v8)
          {
            free(v8);
          }
        }

        v7 += 80;
        v6 -= 80;
      }

      while (v6);
      v5 = *(a2 + 104);
      v9 = 80 * *(a2 + 120);
    }

    else
    {
      v9 = 0;
    }

    llvm::deallocate_buffer(v5, v9);
  }
}

void sub_1E060C4DC()
{
  v1 = *(v0 + 40);
  if (v1 != (v0 + 56))
  {
    free(v1);
  }

  JUMPOUT(0x1E12E5B90);
}

void RuntimeSpecializationsCache::~RuntimeSpecializationsCache(RuntimeSpecializationsCache *this)
{
  v1 = *(this + 38);
  v2 = *(this + 17);
  if (v1)
  {
    v3 = 32 * v1;
    do
    {
      if ((*v2 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        llvm::deallocate_buffer(*(v2 + 8), (8 * *(v2 + 24)));
      }

      v2 += 32;
      v3 -= 32;
    }

    while (v3);
    v2 = *(this + 17);
    v4 = (32 * *(this + 38));
  }

  else
  {
    v4 = 0;
  }

  llvm::deallocate_buffer(v2, v4);
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::~DenseMap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = 80 * v2;
    v5 = v3 + 32;
    do
    {
      if (*(v5 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = *(v5 - 2);
        if (v5 != v6)
        {
          free(v6);
        }
      }

      v5 += 80;
      v4 -= 80;
    }

    while (v4);
    v3 = *a1;
    v7 = 80 * *(a1 + 16);
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7);
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::RuntimeExecutionReport::RuntimeExecutionReport(mlir::ModuleOp)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  if (v4)
  {
    ParentOp = mlir::Block::getParentOp(v4);
    v6 = ParentOp;
    if (ParentOp && mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
    {
      ++*(v3 + 24);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  *&v29 = v7;
  if (v7 && mlir::placement::RegionCall::getRegionType(&v29) == 1)
  {
    v8 = *(v3 + 48);
    if (v8 >= *(v3 + 52))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v3 + 40, v3 + 56, v8 + 1, 8);
      LODWORD(v8) = *(v3 + 48);
    }

    *(*(v3 + 40) + 8 * v8) = a2;
    ++*(v3 + 48);
  }

  v9 = *(a2 + 48);
  if (*(v9 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    *&v29 = *(v9 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v29);
    if (*(Values + 16) != 3)
    {
      return;
    }
  }

  else
  {
    Values = *(v9 + 24);
    if (*(Values + 16) != 3)
    {
      return;
    }
  }

  v11 = *(Values + 8);
  v12 = *v11;
  v13 = *(v11 + 2);
  if (v12 == 28781 && v13 == 115)
  {
    v15 = *(a2 + 48);
    v16 = *(v15 + 16);
    if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
    {
      if (v16 == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
      {
        return;
      }

      if (v16 != &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
      {
        ++*(v3 + 32);
      }
    }

    if (v16 != &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
    {
      *&v29 = *(v15 + 8);
      *&v29 = mlir::OpaqueAttr::getAttrData(&v29);
      *(&v29 + 1) = v17;
      v30 = 0;
      v18 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::LookupBucketFor<llvm::StringRef>((v3 + 104), &v29, &v30);
      v19 = v30;
      if (v18)
      {
        v20 = *(v30 + 6);
        v21 = v30 + 3;
        v22 = v30 + 2;
        if (v20 >= *(v30 + 7))
        {
          v23 = v30;
          v28 = v30 + 3;
          llvm::SmallVectorBase<unsigned int>::grow_pod((v30 + 2), (v30 + 4), v20 + 1, 8);
          v21 = v28;
          LODWORD(v20) = *(v23 + 6);
        }

        goto LABEL_40;
      }

      v31 = v30;
      v24 = *(v3 + 112);
      v25 = *(v3 + 120);
      if (4 * v24 + 4 >= 3 * v25)
      {
        v25 *= 2;
      }

      else if (v25 + ~v24 - *(v3 + 116) > v25 >> 3)
      {
        *(v3 + 112) = v24 + 1;
        if (*v19 == -1)
        {
LABEL_39:
          LODWORD(v20) = 0;
          v26 = v29;
          v19[2] = (v19 + 4);
          v22 = v19 + 2;
          *v19 = v26;
          v19[3] = 0x600000000;
          v21 = v19 + 3;
LABEL_40:
          *&(*v22)[8 * v20] = a2;
          ++*v21;
          ++*(v3 + 8);
          v27 = *(*(a2 + 48) + 16);
          if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id || v27 == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id || v27 == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
          {
            ++*(v3 + 16);
          }

          return;
        }

LABEL_38:
        --*(v3 + 116);
        goto LABEL_39;
      }

      llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::grow(v3 + 104, v25);
      llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::LookupBucketFor<llvm::StringRef>((v3 + 104), &v29, &v31);
      v19 = v31;
      ++*(v3 + 112);
      if (*v19 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }
}

uint64_t std::default_delete<GPURegionRuntime::MPSRuntimeEntryInfo>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 48);
    *(result + 48) = 0;
    if (v2)
    {
      v3 = *(v2 + 192);
      if (v3 != (v2 + 208))
      {
        free(v3);
      }

      v4 = *(v2 + 128);
      if (v4 != (v2 + 144))
      {
        free(v4);
      }

      v5 = *(v2 + 64);
      if (v5 != (v2 + 80))
      {
        free(v5);
      }

      if (*v2 != v2 + 16)
      {
        free(*v2);
      }

      MEMORY[0x1E12E5B90](v2, 0x10A0C404A37C4BFLL);
    }

    v6 = *(v1 + 32);
    *(v1 + 32) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    std::unique_ptr<mlir::ShapeEquivalence>::reset[abi:ne200100]((v1 + 24), 0);

    JUMPOUT(0x1E12E5B90);
  }

  return result;
}

uint64_t *std::unique_ptr<mlir::ShapeEquivalence>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    llvm::deallocate_buffer(*(v2 + 208), (16 * *(v2 + 224)));
  }

  return result;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<GPURegionRuntime::createEntryInfos(llvm::ArrayRef<mlir::FunctionOpInterface>)::$_0 &&>>()
{
  if (getenv("MPSGRAPH_DISABLE_PARALLEL_TI"))
  {
    _MergedGlobals_64 = 1;
    NSLog(&cfstr_MpsgraphDisabl_0.isa);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>,llvm::DenseMapInfo<mlir::FunctionOpInterface,void>,llvm::detail::DenseMapPair<mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>>>,mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>,llvm::DenseMapInfo<mlir::FunctionOpInterface,void>,llvm::detail::DenseMapPair<mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>>>::LookupBucketFor<mlir::FunctionOpInterface>(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (result + 24 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
LABEL_3:
      *a4 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      while (v7 != -4096)
      {
        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v7 == -8192;
        }

        if (v10)
        {
          v8 = v6;
        }

        v11 = v5 + v9++;
        v5 = v11 & v4;
        v6 = (result + 24 * (v11 & v4));
        v7 = *v6;
        if (*v6 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v8)
      {
        v6 = v8;
      }

      *a4 = v6;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

_OWORD *llvm::DenseMap<mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>,llvm::DenseMapInfo<mlir::FunctionOpInterface,void>,llvm::detail::DenseMapPair<mlir::FunctionOpInterface,std::unique_ptr<GPURegionRuntime::MPSRuntimeEntryInfo>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_1E0970190;
        *(v17 + 24) = xmmword_1E0970190;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v21 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v22 = *(a1 + 16) - 1;
              v23 = v22 & ((v21 >> 4) ^ (v21 >> 9));
              v24 = (*a1 + 24 * v23);
              v25 = *v24;
              if (v21 != *v24)
              {
                v28 = 0;
                v29 = 1;
                while (v25 != -4096)
                {
                  if (v28)
                  {
                    v30 = 0;
                  }

                  else
                  {
                    v30 = v25 == -8192;
                  }

                  if (v30)
                  {
                    v28 = v24;
                  }

                  v31 = v23 + v29++;
                  v23 = v31 & v22;
                  v24 = (*a1 + 24 * (v31 & v22));
                  v25 = *v24;
                  if (v21 == *v24)
                  {
                    goto LABEL_21;
                  }
                }

                if (v28)
                {
                  v24 = v28;
                }
              }

LABEL_21:
              *v24 = *v20;
              v26 = *(v20 + 2);
              *(v20 + 2) = 0;
              v24[2] = v26;
              ++*(a1 + 8);
              v27 = *(v20 + 2);
              *(v20 + 2) = 0;
              if (v27)
              {
                std::default_delete<GPURegionRuntime::MPSRuntimeEntryInfo>::operator()[abi:ne200100](v27);
              }
            }

            v20 = (v20 + 24);
          }

          while (v20 != (v4 + 24 * v3));
        }

        llvm::deallocate_buffer(v4, (24 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = (result + 24 * v10);
    do
    {
      *v12 = xmmword_1E0970190;
      v12 = (v12 + 24);
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_41:
      v35 = (result + 24 * v13);
      do
      {
        *v15 = xmmword_1E0970190;
        v15 = (v15 + 24);
      }

      while (v15 != v35);
      return result;
    }

    v32 = v14 / 0x18 + 1;
    v15 = (result + 24 * (v32 & 0x1FFFFFFFFFFFFFFELL));
    v33 = result;
    v34 = v32 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v33 = xmmword_1E0970190;
      *(v33 + 24) = xmmword_1E0970190;
      v33 += 3;
      v34 -= 2;
    }

    while (v34);
    if (v32 != (v32 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_41;
    }
  }

  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E86D1D60, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

uint64_t **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPURegionRuntime::MPSRuntimeEntryInfo::postHandlerCreationInit(GPURegionRuntime*)::$_0>(uint64_t **result, uint64_t a2)
{
  v36 = a2;
  if (a2)
  {
    v2 = result;
    v3 = result[1];
    v4 = *(*(a2 + 48) + 16);
    if (v4 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }

    v35 = v5;
    if (v4 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
    {
      v17 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((**result + 248), &v36);
      if (!v17)
      {
        goto LABEL_56;
      }

      *(v3[6] + 256) = *(v17[3] + 120);
      result = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v35, 0);
      v18 = result;
      if (*(v35 + 36))
      {
        v19 = v35 - 16;
      }

      else
      {
        v19 = 0;
      }

      if (result)
      {
        result = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, result);
        v19 = result;
      }

      v20 = (HIDWORD(v18) + v18);
      v21 = v18 - v20;
      if (v18 != v20)
      {
        v22 = 0;
        v23 = 1;
        while (1)
        {
          v24 = v23 - 1;
          v25 = *(*mlir::detail::OpResultImpl::getNextResultAtOffset(v19, v23 - 1) + 16);
          v26 = *(v25 + 36);
          v27 = v25 - 16;
          if (v26)
          {
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }

          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0);
          v29 = v3[6];
          v30 = *(v29 + 72);
          if (v24 >= v30)
          {
            v31 = *(v29 + 200);
            if (v23 != v31)
            {
              if (v23 >= v31)
              {
                if (v24 >= *(v29 + 204))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v29 + 192, v29 + 208, v23, 8);
                  v31 = *(v29 + 200);
                }

                if (v23 != v31)
                {
                  bzero((*(v29 + 192) + 8 * v31), v22 - 8 * v31 + 8);
                }
              }

              *(v29 + 200) = v23;
              v29 = v3[6];
              v30 = *(v29 + 72);
            }

            if (v23 != v30)
            {
              if (v23 >= v30)
              {
                if (v24 >= *(v29 + 76))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v29 + 64, v29 + 80, v23, 8);
                  v30 = *(v29 + 72);
                }

                if (v23 != v30)
                {
                  bzero((*(v29 + 64) + 8 * v30), v22 - 8 * v30 + 8);
                }
              }

              *(v29 + 72) = v23;
            }
          }

          *(*(v3[6] + 64) + v22) = mlir::OpOperand::getOperandNumber(*NextResultAtOffset);
          v32 = **v2;
          DefiningOp = mlir::Value::getDefiningOp(&NextResultAtOffset);
          result = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((v32 + 248), &DefiningOp);
          if (!result)
          {
            break;
          }

          *(*(v3[6] + 192) + v22) = result[3];
          v22 += 8;
          ++v23;
          if (v21 + v23 == 1)
          {
            return result;
          }
        }

        goto LABEL_56;
      }
    }

    else if (v4 == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
    {
      if (*(a2 + 36))
      {
        v6 = a2 - 16;
      }

      else
      {
        v6 = 0;
      }

      v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
      OperandNumber = mlir::OpOperand::getOperandNumber(*v8);
      v10 = *(*(a2 + 72) + 24);
      v11 = OperandNumber;
      v12 = v3[6];
      v13 = *(v12 + 8);
      if (v13 <= OperandNumber)
      {
        v14 = OperandNumber + 1;
        v15 = *(v12 + 136);
        if (v15 != v14)
        {
          if (v15 <= v14)
          {
            if (*(v12 + 140) < v14)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v12 + 128, v12 + 144, OperandNumber + 1, 8);
              v15 = *(v12 + 136);
            }

            if (v15 != v14)
            {
              bzero((*(v12 + 128) + 8 * v15), 8 * (v14 - v15));
            }
          }

          *(v12 + 136) = v14;
          v12 = v3[6];
          v13 = *(v12 + 8);
        }

        if (v13 != v14)
        {
          if (v13 <= v14)
          {
            if (*(v12 + 12) < v14)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v12, v12 + 16, (v11 + 1), 8);
              v13 = *(v12 + 8);
            }

            if (v13 != v14)
            {
              bzero((*v12 + 8 * v13), 8 * (v14 - v13));
            }
          }

          *(v12 + 8) = v14;
        }
      }

      result = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((**v2 + 248), &v36);
      if (result)
      {
        v16 = v3[6];
        *(v16[16] + 8 * v11) = result[3];
        *(*v16 + 8 * v11) = *(v10 + 24);
        return result;
      }

LABEL_56:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }
  }

  return result;
}

mlir::Block *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPURegionRuntime::initializeOps(void)::$_0>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = *(a2 + 16);
  if (!result)
  {
    v6 = 0;
LABEL_7:
    if (v6 != **a1)
    {
      return result;
    }

    goto LABEL_8;
  }

  result = mlir::Block::getParentOp(result);
  v6 = result;
  if (!result)
  {
    goto LABEL_7;
  }

  result = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(result);
  if (result)
  {
    result = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v6);
    if (v6 != **a1)
    {
      return result;
    }
  }

  else if (**a1)
  {
    return result;
  }

LABEL_8:
  v7 = *(*v4 + 72);

  return v7(v4, a2, 0);
}

void *std::__hash_table<std::__hash_value_type<void *,void *>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void *>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void *>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void *>>>::__emplace_unique_key_args<void *,std::pair<void *,void *> &>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = 0x9DDFEA08EB382D69 * v4;
  v6 = result[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * v4;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*result + 8 * v8);
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
          return result;
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

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::find<std::string>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::BaseOpHandler * GPURegionRuntime::createOp<GPU::AbsoluteOpHandler>(mlir::Operation *,GPU::MPSGraphKernelDAG *)::{lambda(mlir::Operation *)#1}>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 36))
  {
    return;
  }

  if (**a1)
  {
LABEL_8:
    v7 = *(a1 + 8);
    v10 = *(a2 + 24);
    std::vector<mlir::Value>::push_back[abi:ne200100](v7, &v10);
    return;
  }

  v2 = a1;
  v3 = a2;
  v10 = a2 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp)
  {
    a2 = v3;
    a1 = v2;
    goto LABEL_8;
  }

  v5 = DefiningOp;
  {
    {
      v8 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    }
  }

  v6 = (*(**(v5 + 48) + 32))(*(v5 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  a2 = v3;
  a1 = v2;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }
}

void *std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unique_ptr<GPU::BaseOpHandler>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unique_ptr<GPU::BaseOpHandler>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unique_ptr<GPU::BaseOpHandler>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unique_ptr<GPU::BaseOpHandler>>>>::__emplace_unique_key_args<mlir::Operation *,std::pair<mlir::Operation * const,std::unique_ptr<GPU::BaseOpHandler>>>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = 0x9DDFEA08EB382D69 * v4;
  v6 = result[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * v4;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*result + 8 * v8);
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
          return result;
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

  return result;
}

void sub_1E060E060(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<GPU::BaseOpHandler>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<GPU::BaseOpHandler>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<GPU::BaseOpHandler>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<GPU::BaseOpHandler>>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        v5 = v2;
        (*(*v4 + 40))(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::BaseOpHandler * GPURegionRuntime::createOp<GPU::AbsoluteSquareOpHandler>(mlir::Operation *,GPU::MPSGraphKernelDAG *)::{lambda(mlir::Operation *)#1}>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 36))
  {
    return;
  }

  if (**a1)
  {
LABEL_8:
    v7 = *(a1 + 8);
    v10 = *(a2 + 24);
    std::vector<mlir::Value>::push_back[abi:ne200100](v7, &v10);
    return;
  }

  v2 = a1;
  v3 = a2;
  v10 = a2 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp)
  {
    a2 = v3;
    a1 = v2;
    goto LABEL_8;
  }

  v5 = DefiningOp;
  {
    {
      v8 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    }
  }

  v6 = (*(**(v5 + 48) + 32))(*(v5 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  a2 = v3;
  a1 = v2;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::BaseOpHandler * GPURegionRuntime::createOp<GPU::ACosOpHandler>(mlir::Operation *,GPU::MPSGraphKernelDAG *)::{lambda(mlir::Operation *)#1}>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 36))
  {
    return;
  }

  if (**a1)
  {
LABEL_8:
    v7 = *(a1 + 8);
    v10 = *(a2 + 24);
    std::vector<mlir::Value>::push_back[abi:ne200100](v7, &v10);
    return;
  }

  v2 = a1;
  v3 = a2;
  v10 = a2 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp)
  {
    a2 = v3;
    a1 = v2;
    goto LABEL_8;
  }

  v5 = DefiningOp;
  {
    {
      v8 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    }
  }

  v6 = (*(**(v5 + 48) + 32))(*(v5 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  a2 = v3;
  a1 = v2;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::BaseOpHandler * GPURegionRuntime::createOp<GPU::ACoshOpHandler>(mlir::Operation *,GPU::MPSGraphKernelDAG *)::{lambda(mlir::Operation *)#1}>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 36))
  {
    return;
  }

  if (**a1)
  {
LABEL_8:
    v7 = *(a1 + 8);
    v10 = *(a2 + 24);
    std::vector<mlir::Value>::push_back[abi:ne200100](v7, &v10);
    return;
  }

  v2 = a1;
  v3 = a2;
  v10 = a2 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp)
  {
    a2 = v3;
    a1 = v2;
    goto LABEL_8;
  }

  v5 = DefiningOp;
  {
    {
      v8 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    }
  }

  v6 = (*(**(v5 + 48) + 32))(*(v5 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  a2 = v3;
  a1 = v2;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::BaseOpHandler * GPURegionRuntime::createOp<GPU::AddOpHandler>(mlir::Operation *,GPU::MPSGraphKernelDAG *)::{lambda(mlir::Operation *)#1}>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 36))
  {
    return;
  }

  if (**a1)
  {
LABEL_8:
    v7 = *(a1 + 8);
    v10 = *(a2 + 24);
    std::vector<mlir::Value>::push_back[abi:ne200100](v7, &v10);
    return;
  }

  v2 = a1;
  v3 = a2;
  v10 = a2 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp)
  {
    a2 = v3;
    a1 = v2;
    goto LABEL_8;
  }

  v5 = DefiningOp;
  {
    {
      v8 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    }
  }

  v6 = (*(**(v5 + 48) + 32))(*(v5 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  a2 = v3;
  a1 = v2;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::BaseOpHandler * GPURegionRuntime::createOp<GPU::AllocOpHandler>(mlir::Operation *,GPU::MPSGraphKernelDAG *)::{lambda(mlir::Operation *)#1}>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 36))
  {
    return;
  }

  if (**a1)
  {
LABEL_8:
    v7 = *(a1 + 8);
    v10 = *(a2 + 24);
    std::vector<mlir::Value>::push_back[abi:ne200100](v7, &v10);
    return;
  }

  v2 = a1;
  v3 = a2;
  v10 = a2 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp)
  {
    a2 = v3;
    a1 = v2;
    goto LABEL_8;
  }

  v5 = DefiningOp;
  {
    {
      v8 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    }
  }

  v6 = (*(**(v5 + 48) + 32))(*(v5 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  a2 = v3;
  a1 = v2;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::BaseOpHandler * GPURegionRuntime::createOp<GPU::AndOpHandler>(mlir::Operation *,GPU::MPSGraphKernelDAG *)::{lambda(mlir::Operation *)#1}>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 36))
  {
    return;
  }

  if (**a1)
  {
LABEL_8:
    v7 = *(a1 + 8);
    v10 = *(a2 + 24);
    std::vector<mlir::Value>::push_back[abi:ne200100](v7, &v10);
    return;
  }

  v2 = a1;
  v3 = a2;
  v10 = a2 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp)
  {
    a2 = v3;
    a1 = v2;
    goto LABEL_8;
  }

  v5 = DefiningOp;
  {
    {
      v8 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    }
  }

  v6 = (*(**(v5 + 48) + 32))(*(v5 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  a2 = v3;
  a1 = v2;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::BaseOpHandler * GPURegionRuntime::createOp<GPU::ASinOpHandler>(mlir::Operation *,GPU::MPSGraphKernelDAG *)::{lambda(mlir::Operation *)#1}>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 36))
  {
    return;
  }

  if (**a1)
  {
LABEL_8:
    v7 = *(a1 + 8);
    v10 = *(a2 + 24);
    std::vector<mlir::Value>::push_back[abi:ne200100](v7, &v10);
    return;
  }

  v2 = a1;
  v3 = a2;
  v10 = a2 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp)
  {
    a2 = v3;
    a1 = v2;
    goto LABEL_8;
  }

  v5 = DefiningOp;
  {
    {
      v8 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    }
  }

  v6 = (*(**(v5 + 48) + 32))(*(v5 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  a2 = v3;
  a1 = v2;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }
}