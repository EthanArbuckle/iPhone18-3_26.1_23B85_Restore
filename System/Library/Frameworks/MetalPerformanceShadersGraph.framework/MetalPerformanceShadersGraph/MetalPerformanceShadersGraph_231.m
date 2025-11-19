void ___ZN3GPU13BaseOpHandler16encodeConstantOpEPNS_16EncodeDescriptorERKN4mlir3mps10CPUNDArrayEb_block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    free(a2);
  }
}

uint64_t GPU::BaseOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  v6 = *(*(*(this + 3) + 72) + 32 * a4 + 24);
  v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8))
  {
    StaticType = 0;
    v16 = 0;
    return v6;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  StaticType = v7;
  v16 = v8;
  if (!v7)
  {
    return v6;
  }

  if (mlir::CallOpInterface::getArgOperands(&StaticType))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&StaticType);
    if (!v11)
    {
      return v6;
    }

    v12 = 8 * v11;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v12 -= 8;
      if (!v12)
      {
        return v6;
      }
    }
  }

  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v6);
  UnknownLoc = mlir::Builder::getUnknownLoc(a3, v13);
  return mlir::OpBuilder::create<mlir::mps::PlaceholderOp,mlir::Type &>(a3, UnknownLoc, &StaticType) - 16;
}

uint64_t GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  v6 = *(*(*(this + 3) + 72) + 32 * a4 + 24);
  v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8))
  {
    StaticType = 0;
    v16 = 0;
    return v6;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  StaticType = v7;
  v16 = v8;
  if (!v7)
  {
    return v6;
  }

  if (mlir::CallOpInterface::getArgOperands(&StaticType))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&StaticType);
    if (!v11)
    {
      return v6;
    }

    v12 = 8 * v11;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v12 -= 8;
      if (!v12)
      {
        return v6;
      }
    }
  }

  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v6);
  UnknownLoc = mlir::Builder::getUnknownLoc(a3, v13);
  return mlir::OpBuilder::create<mlir::mps::PlaceholderOp,mlir::Type &>(a3, UnknownLoc, &StaticType) - 16;
}

unint64_t GPU::BaseOpHandler::_getJITStaticOperandReprConstant(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  v7 = *(*(*(this + 3) + 72) + 32 * a4 + 24);
  v48 = v7;
  __p[0] = v7;
  DefiningOp = mlir::Value::getDefiningOp(__p);
  if (DefiningOp)
  {
    v9 = DefiningOp;
    {
      v38 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v38, v39);
    }

    if ((*(**(v9 + 48) + 32))(*(v9 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      return v48;
    }

    v7 = v48;
  }

  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v7);
  RHS = mlir::AffineBinaryOpExpr::getRHS(&StaticType);
  if (*(*RHS + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v12 = RHS;
  }

  else
  {
    v12 = 0;
  }

  v46 = v12;
  if (v12)
  {
    v13 = *(this + 2);
    v51 = *(mlir::Value::getParentRegion(&v48) + 2);
    __p[0] = &v51;
    v14 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v13 + 328), &v51);
    v16 = v14;
    v17 = v14[4];
    if (v17)
    {
      v18 = 0x9DDFEA08EB382D69 * ((8 * (v48 & 0x1FFFFFFF) + 8) ^ HIDWORD(v48));
      v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v48) ^ (v18 >> 47) ^ v18);
      v20 = 0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47));
      v21 = vcnt_s8(v17);
      v21.i16[0] = vaddlv_u8(v21);
      if (v21.u32[0] > 1uLL)
      {
        v22 = v20;
        if (v20 >= *&v17)
        {
          v22 = v20 % *&v17;
        }
      }

      else
      {
        v22 = v20 & (*&v17 - 1);
      }

      v24 = *(v14[3] + 8 * v22);
      if (v24)
      {
        v25 = *v24;
        if (v25)
        {
          if (v21.u32[0] < 2uLL)
          {
            v26 = *&v17 - 1;
            while (1)
            {
              v28 = v25[1];
              if (v28 == v20)
              {
                if (v25[2] == v48)
                {
                  goto LABEL_44;
                }
              }

              else if ((v28 & v26) != v22)
              {
                goto LABEL_32;
              }

              v25 = *v25;
              if (!v25)
              {
                goto LABEL_32;
              }
            }
          }

          do
          {
            v27 = v25[1];
            if (v27 == v20)
            {
              if (v25[2] == v48)
              {
LABEL_44:
                *__p = *(v25 + 3);
                UnknownLoc = mlir::Builder::getUnknownLoc(a3, v15);
                return mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ElementsAttr>(a3, UnknownLoc, __p) - 16;
              }
            }

            else
            {
              if (v27 >= *&v17)
              {
                v27 %= *&v17;
              }

              if (v27 != v22)
              {
                break;
              }
            }

            v25 = *v25;
          }

          while (v25);
        }
      }
    }

LABEL_32:
    GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, v48, &v44);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v40 = v16;
    if (v45 != v44)
    {
      if (!(((v45 - v44) >> 3) >> 60))
      {
        v50 = &v41;
        operator new();
      }

      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v29 = StaticType;
    if (StaticType)
    {
      v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
    }

    else
    {
      v30 = 0;
    }

    v31 = mlir::DenseElementsAttr::get(v29, v30, v41, (v42 - v41) >> 4);
    v33 = v31;
    if (v31)
    {
      v34 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v31 + 8);
    }

    else
    {
      v34 = 0;
    }

    __p[0] = v33;
    __p[1] = v34;
    v35 = mlir::Builder::getUnknownLoc(a3, v32);
    v36 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ElementsAttr>(a3, v35, __p);
    v51 = v48;
    std::__hash_table<std::__hash_value_type<void *,mlir::ElementsAttr>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::ElementsAttr>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::ElementsAttr>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::ElementsAttr>>>::__emplace_unique_key_args<void *,void *,mlir::ElementsAttr&>(v40 + 3, &v51);
    result = v36 - 16;
    if (v44)
    {
      v45 = v44;
      operator delete(v44);
      return v36 - 16;
    }
  }

  else
  {
    v23 = MTLReportFailureTypeEnabled();
    result = 0;
    if (v23)
    {
      MTLReportFailure();
      return 0;
    }
  }

  return result;
}

void sub_1E0649E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  std::__split_buffer<llvm::APInt>::~__split_buffer(&a21);
  std::vector<llvm::APInt>::~vector[abi:ne200100](&a12);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  a16 = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

id **std::unique_ptr<GPU::EncodeCPUWorkHelper>::~unique_ptr[abi:ne200100](id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;

    MEMORY[0x1E12E5B90](v1, 0x1080C40CC6EE3FDLL);
    return v2;
  }

  return result;
}

void std::__function::__func<GPU::BaseOpHandler::encodeConstantOp(GPU::EncodeDescriptor *,mlir::mps::CPUNDArray const&,BOOL)::$_0,std::allocator<GPU::BaseOpHandler::encodeConstantOp(GPU::EncodeDescriptor *,mlir::mps::CPUNDArray const&,BOOL)::$_0>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E12E5B90);
}

id std::__function::__func<GPU::BaseOpHandler::encodeConstantOp(GPU::EncodeDescriptor *,mlir::mps::CPUNDArray const&,BOOL)::$_0,std::allocator<GPU::BaseOpHandler::encodeConstantOp(GPU::EncodeDescriptor *,mlir::mps::CPUNDArray const&,BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5B438F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  v5 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v5;
  *(a2 + 25) = 0;
  *(a2 + 28) = 0;
  return result;
}

void std::__function::__func<GPU::BaseOpHandler::encodeConstantOp(GPU::EncodeDescriptor *,mlir::mps::CPUNDArray const&,BOOL)::$_0,std::allocator<GPU::BaseOpHandler::encodeConstantOp(GPU::EncodeDescriptor *,mlir::mps::CPUNDArray const&,BOOL)::$_0>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<GPU::BaseOpHandler::encodeConstantOp(GPU::EncodeDescriptor *,mlir::mps::CPUNDArray const&,BOOL)::$_0,std::allocator<GPU::BaseOpHandler::encodeConstantOp(GPU::EncodeDescriptor *,mlir::mps::CPUNDArray const&,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  [*(a1 + 8) writeBytes:*(a1 + 16) strideBytes:0];
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 16);

    free(v2);
  }
}

uint64_t std::__function::__func<GPU::BaseOpHandler::encodeConstantOp(GPU::EncodeDescriptor *,mlir::mps::CPUNDArray const&,BOOL)::$_0,std::allocator<GPU::BaseOpHandler::encodeConstantOp(GPU::EncodeDescriptor *,mlir::mps::CPUNDArray const&,BOOL)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3GPU13BaseOpHandler16encodeConstantOpEPNS_16EncodeDescriptorERKN4mlir3mps10CPUNDArrayEbE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3GPU13BaseOpHandler16encodeConstantOpEPNS_16EncodeDescriptorERKN4mlir3mps10CPUNDArrayEbE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3GPU13BaseOpHandler16encodeConstantOpEPNS_16EncodeDescriptorERKN4mlir3mps10CPUNDArrayEbE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3GPU13BaseOpHandler16encodeConstantOpEPNS_16EncodeDescriptorERKN4mlir3mps10CPUNDArrayEbE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::vector<llvm::APInt>::~vector[abi:ne200100](void *a1)
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
        v5 = *(v3 - 2);
        v3 -= 2;
        if (v5 >= 0x41 && *v3)
        {
          MEMORY[0x1E12E5B60](*v3, 0x1000C8000313F17);
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

uint64_t *std::vector<llvm::APInt>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = (v4 + *result - v6);
  v13 = v7;
  if (*result != v6)
  {
    result = (v4 + v5 - v6);
    v8 = v5;
    do
    {
      while (1)
      {
        v10 = *(v8 + 8);
        *(result + 2) = v10;
        if (v10 > 0x40)
        {
          break;
        }

        v9 = *v8;
        v8 += 16;
        *result = v9;
        result += 2;
        v13 = result;
        if (v8 == v6)
        {
          goto LABEL_8;
        }
      }

      llvm::APInt::initSlowCase(result, v8);
      v8 += 16;
      result = v13 + 2;
      v13 += 2;
    }

    while (v8 != v6);
    do
    {
LABEL_8:
      if (*(v5 + 8) >= 0x41u)
      {
        result = *v5;
        if (*v5)
        {
          result = MEMORY[0x1E12E5B60](result, 0x1000C8000313F17);
        }
      }

      v5 += 16;
    }

    while (v5 != v6);
    v5 = *v3;
  }

  a2[1] = v7;
  v3[1] = v5;
  *v3 = a2[1];
  a2[1] = v5;
  v11 = v3[1];
  v3[1] = a2[2];
  a2[2] = v11;
  v12 = v3[2];
  v3[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<llvm::APInt>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 2);
    v2 -= 2;
    *(a1 + 16) = v2;
    if (v4 >= 0x41 && *v2)
    {
      MEMORY[0x1E12E5B60](*v2, 0x1000C8000313F17);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<llvm::APInt>,llvm::APInt*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    while (v4 != v5)
    {
      v6 = *(v4 - 2);
      v4 -= 2;
      if (v6 >= 0x41 && *v4)
      {
        MEMORY[0x1E12E5B60](*v4, 0x1000C8000313F17);
      }
    }
  }

  return a1;
}

void GPU::DepthwiseConv2DOpHandler::encodeNDArrayOp(GPU::DepthwiseConv2DOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v112[2] = *MEMORY[0x1E69E9840];
  v95 = a3;
  v5 = *(this + 2);
  v6 = *(this + 3);
  v100 = v6;
  v7 = *(v6 + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  v10 = (*(*v5 + 48))(v5, v8, 0);
  v99 = [v10 mpsndarray];

  v11 = (*(**(this + 2) + 48))(*(this + 2), v9, 0);
  v98 = [v11 mpsndarray];

  v93 = [(NSArray *)v95 objectAtIndexedSubscript:0];
  v12 = [v93 mpsndarray];
  if (v99)
  {
    v13 = v98 == 0;
  }

  else
  {
    v13 = 1;
  }

  v97 = v12;
  v14 = v13 || v12 == 0;
  if (v14 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(this + 4) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v9);
  Value = mlir::ArrayAttr::getValue(&StaticType);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v8);
  v15 = mlir::ArrayAttr::getValue(&StaticType);
  v16 = [*(*(this + 2) + 48) metalDevice];
  v111 = v6;
  v96 = v16;
  Strides = mlir::mps::ColToImOp::getStrides(&v111);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v111);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v111);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v111);
  if (StorageType)
  {
    if (StorageType != 1)
    {
      v33 = 0;
      v32 = 0;
      v94 = 0;
      v90 = 0;
      v91 = 0;
      v23 = 1;
      v24 = 1;
      v27 = 1;
      v28 = 1;
      goto LABEL_39;
    }

    v19 = v15[1];
    v18 = v15[2];
    v20 = v15[3];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&StaticType, Strides, 0);
    v21 = Strides;
    NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v103, v21, NumElements);
    v94 = v20;
    v90 = v19;
    v91 = v18;
    if (v107 == v104)
    {
      v23 = 1;
      v24 = 1;
LABEL_13:
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&StaticType, InputAttributeNames, 0);
      v25 = InputAttributeNames;
      v26 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v103, v25, v26);
      if (v107 == v104)
      {
        v27 = 1;
        v28 = 1;
LABEL_15:
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&StaticType, Rewriter, 0);
        v29 = Rewriter;
        v30 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v103, v29, v30);
        if (v107 != v104)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          do
          {
            mlir::DenseElementsAttr::IntElementIterator::operator*(&StaticType, &v101);
            v34 = v102;
            if (v102 >= 0x41)
            {
              if (v34 - llvm::APInt::countLeadingZerosSlowCase(&v101) <= 0x40)
              {
                v35 = *v101;
              }

              else
              {
                v35 = -1;
              }
            }

            else
            {
              v35 = v101;
            }

            if (v31 == 4)
            {
              v36 = v35;
            }

            else
            {
              v36 = v33;
            }

            if (v31 == 2)
            {
              v32 = v35;
            }

            else
            {
              v33 = v36;
            }

            if (v34 >= 0x41 && v101)
            {
              MEMORY[0x1E12E5B60](v101, 0x1000C8000313F17);
            }

            ++v107;
            ++v31;
          }

          while (v107 != v104);
          goto LABEL_39;
        }

LABEL_37:
        v33 = 0;
        v32 = 0;
        goto LABEL_39;
      }

      v80 = 0;
      v28 = 1;
      v27 = 1;
      while (1)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&StaticType, &v101);
        v81 = v102;
        if (v102 >= 0x41)
        {
          if (v81 - llvm::APInt::countLeadingZerosSlowCase(&v101) <= 0x40)
          {
            v82 = *v101;
            if (v80 <= 1)
            {
LABEL_119:
              if (!v80)
              {
                if (v82 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
                {
                  goto LABEL_137;
                }

                goto LABEL_132;
              }

              if (v80 == 1)
              {
                v27 = v82;
                goto LABEL_137;
              }

LABEL_131:
              if (!MTLReportFailureTypeEnabled())
              {
                goto LABEL_137;
              }

              goto LABEL_132;
            }
          }

          else
          {
            v82 = -1;
            if (v80 <= 1)
            {
              goto LABEL_119;
            }
          }
        }

        else
        {
          v82 = v101;
          if (v80 <= 1)
          {
            goto LABEL_119;
          }
        }

        if (v80 != 2)
        {
          if (v80 == 3)
          {
            if (v82 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_137;
            }

LABEL_132:
            MTLReportFailure();
            goto LABEL_137;
          }

          goto LABEL_131;
        }

        v28 = v82;
LABEL_137:
        if (v102 >= 0x41 && v101)
        {
          MEMORY[0x1E12E5B60](v101, 0x1000C8000313F17);
        }

        ++v107;
        ++v80;
        if (v107 == v104)
        {
          goto LABEL_15;
        }
      }
    }

    v74 = 0;
    v24 = 1;
    v23 = 1;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&StaticType, &v101);
      v75 = v102;
      if (v102 >= 0x41)
      {
        if (v75 - llvm::APInt::countLeadingZerosSlowCase(&v101) <= 0x40)
        {
          v76 = *v101;
          if (v74 <= 1)
          {
LABEL_69:
            if (!v74)
            {
              if (v76 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_87;
              }

              goto LABEL_82;
            }

            if (v74 == 1)
            {
              v23 = v76;
              goto LABEL_87;
            }

LABEL_81:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_87;
            }

            goto LABEL_82;
          }
        }

        else
        {
          v76 = -1;
          if (v74 <= 1)
          {
            goto LABEL_69;
          }
        }
      }

      else
      {
        v76 = v101;
        if (v74 <= 1)
        {
          goto LABEL_69;
        }
      }

      if (v74 != 2)
      {
        if (v74 == 3)
        {
          if (v76 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
          {
            goto LABEL_87;
          }

LABEL_82:
          MTLReportFailure();
          goto LABEL_87;
        }

        goto LABEL_81;
      }

      v24 = v76;
LABEL_87:
      if (v102 >= 0x41 && v101)
      {
        MEMORY[0x1E12E5B60](v101, 0x1000C8000313F17);
      }

      ++v107;
      ++v74;
      if (v107 == v104)
      {
        goto LABEL_13;
      }
    }
  }

  v38 = v15[2];
  v37 = v15[3];
  v39 = v15[1];
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&StaticType, Strides, 0);
  v40 = Strides;
  v41 = mlir::DenseElementsAttr::getNumElements(&Strides);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v103, v40, v41);
  v94 = v39;
  v90 = v38;
  v91 = v37;
  if (v107 != v104)
  {
    v77 = 0;
    v24 = 1;
    v23 = 1;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&StaticType, &v101);
      v78 = v102;
      if (v102 >= 0x41)
      {
        if (v78 - llvm::APInt::countLeadingZerosSlowCase(&v101) <= 0x40)
        {
          v79 = *v101;
          if (v77 <= 1)
          {
LABEL_94:
            if (v77)
            {
              if (v77 == 1)
              {
                if (v79 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
                {
                  goto LABEL_112;
                }
              }

              else
              {
LABEL_106:
                if (!MTLReportFailureTypeEnabled())
                {
                  goto LABEL_112;
                }
              }
            }

            else if (v79 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_112;
            }

            MTLReportFailure();
            goto LABEL_112;
          }
        }

        else
        {
          v79 = -1;
          if (v77 <= 1)
          {
            goto LABEL_94;
          }
        }
      }

      else
      {
        v79 = v101;
        if (v77 <= 1)
        {
          goto LABEL_94;
        }
      }

      if (v77 != 2)
      {
        if (v77 == 3)
        {
          v24 = v79;
          goto LABEL_112;
        }

        goto LABEL_106;
      }

      v23 = v79;
LABEL_112:
      if (v102 >= 0x41 && v101)
      {
        MEMORY[0x1E12E5B60](v101, 0x1000C8000313F17);
      }

      ++v107;
      ++v77;
      if (v107 == v104)
      {
        goto LABEL_34;
      }
    }
  }

  v23 = 1;
  v24 = 1;
LABEL_34:
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&StaticType, InputAttributeNames, 0);
  v42 = InputAttributeNames;
  v43 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v103, v42, v43);
  if (v107 != v104)
  {
    v83 = 0;
    v28 = 1;
    v27 = 1;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&StaticType, &v101);
      v84 = v102;
      if (v102 >= 0x41)
      {
        if (v84 - llvm::APInt::countLeadingZerosSlowCase(&v101) <= 0x40)
        {
          v85 = *v101;
          if (v83 <= 1)
          {
LABEL_144:
            if (v83)
            {
              if (v83 == 1)
              {
                if (v85 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
                {
                  goto LABEL_162;
                }
              }

              else
              {
LABEL_156:
                if (!MTLReportFailureTypeEnabled())
                {
                  goto LABEL_162;
                }
              }
            }

            else if (v85 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_162;
            }

            MTLReportFailure();
            goto LABEL_162;
          }
        }

        else
        {
          v85 = -1;
          if (v83 <= 1)
          {
            goto LABEL_144;
          }
        }
      }

      else
      {
        v85 = v101;
        if (v83 <= 1)
        {
          goto LABEL_144;
        }
      }

      if (v83 != 2)
      {
        if (v83 == 3)
        {
          v28 = v85;
          goto LABEL_162;
        }

        goto LABEL_156;
      }

      v27 = v85;
LABEL_162:
      if (v102 >= 0x41 && v101)
      {
        MEMORY[0x1E12E5B60](v101, 0x1000C8000313F17);
      }

      ++v107;
      ++v83;
      if (v107 == v104)
      {
        goto LABEL_36;
      }
    }
  }

  v27 = 1;
  v28 = 1;
LABEL_36:
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&StaticType, Rewriter, 0);
  v44 = Rewriter;
  v45 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v103, v44, v45);
  if (v107 == v104)
  {
    goto LABEL_37;
  }

  v86 = 0;
  v32 = 0;
  v33 = 0;
  do
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&StaticType, &v101);
    v87 = v102;
    if (v102 >= 0x41)
    {
      if (v87 - llvm::APInt::countLeadingZerosSlowCase(&v101) <= 0x40)
      {
        v88 = *v101;
      }

      else
      {
        v88 = -1;
      }
    }

    else
    {
      v88 = v101;
    }

    if (v86 == 6)
    {
      v89 = v88;
    }

    else
    {
      v89 = v33;
    }

    if (v86 == 4)
    {
      v32 = v88;
    }

    else
    {
      v33 = v89;
    }

    if (v87 >= 0x41 && v101)
    {
      MEMORY[0x1E12E5B60](v101, 0x1000C8000313F17);
    }

    ++v107;
    ++v86;
  }

  while (v107 != v104);
LABEL_39:
  PaddingStyle = mlir::mps::StencilOp::getPaddingStyle(&v111);
  if (PaddingStyle == 2)
  {
    v47 = Value;
    v48 = (Value + 24);
    v50 = (Value + 16);
    v49 = 8;
  }

  else
  {
    if (PaddingStyle != 3)
    {
      v52 = 0;
      v51 = 0;
      if (!v94)
      {
        goto LABEL_46;
      }

      goto LABEL_185;
    }

    v47 = Value;
    v48 = (Value + 8);
    v49 = 16;
    v50 = Value;
  }

  v51 = *v48 - 1;
  v52 = *v50 - 1;
  if (v94 == *(v47 + v49))
  {
    goto LABEL_46;
  }

LABEL_185:
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_46:
  v53 = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v111);
  v54 = v51 * v28 + 1;
  v55 = v52 * v27 + 1;
  if (v53 == 1)
  {
    v33 = 0;
    v32 = 0;
  }

  else if (v53 == 2 || v53 == 4)
  {
    v56 = v90 % v23;
    if (!(v90 % v23))
    {
      v56 = v23;
    }

    v57 = (v55 - v56) & ~((v55 - v56) >> 63);
    v58 = v91 % v24;
    if (!(v91 % v24))
    {
      v58 = v24;
    }

    v59 = (v54 - v58) & ~((v54 - v58) >> 63);
    v60 = v57 >> 1;
    v61 = v57 - (v57 >> 1);
    v62 = v59 >> 1;
    v63 = v59 - (v59 >> 1);
    if (v53 == 4)
    {
      v33 = v63;
    }

    else
    {
      v33 = v62;
    }

    if (v53 == 4)
    {
      v32 = v61;
    }

    else
    {
      v32 = v60;
    }
  }

  v64 = [objc_alloc(MEMORY[0x1E69746F8]) initWithDevice:v96];
  StaticType = (v54 / 2 - v33);
  v106 = (v55 / 2 - v32);
  v107 = 0;
  [v64 setWindowOffsets:&StaticType];
  StaticType = v24;
  v106 = v23;
  v107 = 1;
  [v64 setConvStrides:&StaticType];
  StaticType = v28;
  v106 = v27;
  v107 = 1;
  [v64 setConvDilationRates:&StaticType];
  [v64 setOptions:{objc_msgSend(v64, "options") | 1}];

  v65 = MEMORY[0x1E69744E8];
  if (*(v97 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v97 setReadCount:{objc_msgSend(v97, "readCount") + 1}];
  }

  v66 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v100);
  v67 = StaticType;
  v68 = v106;
  v69 = mlir::mps::StencilOp::getPaddingStyle(&v100);
  v70 = v103[0];
  v71 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v72 = *(a2 + 1);
  v112[0] = v67;
  v112[1] = v70;
  v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:2];
  [v64 encodeToMPSCommandEncoder:v71 commandBuffer:v72 sourceArrays:v73 destinationArray:v68];

  if (*(v68 + *v65) == 1)
  {
    [v68 setReadCount:{objc_msgSend(v68, "readCount") - 1}];
  }
}

void GPU::anonymous namespace::permuteImage(uint64_t *a1, GPU::EncodeDescriptor *a2, void *a3, void *a4, int a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v9 descriptor];
  v12 = [v10 descriptor];
  [v11 numberOfDimensions];
  if ([v11 numberOfDimensions] <= 3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (a5 == 1)
  {
    v19[4] = xmmword_1E09A0D60;
    v19[5] = unk_1E09A0D70;
    v19[6] = xmmword_1E09A0D80;
    v19[7] = unk_1E09A0D90;
    v19[0] = xmmword_1E09A0D20;
    v19[1] = unk_1E09A0D30;
    v19[2] = xmmword_1E09A0D40;
    v19[3] = unk_1E09A0D50;
    [v11 permuteWithDimensionOrder:v19];
    [v12 permuteWithDimensionOrder:v19];
  }

  else if (a5)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else
  {
    [v11 transposeDimension:2 withDimension:3];
    [v12 transposeDimension:2 withDimension:3];
  }

  v13 = *(a2 + 1);
  v14 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v15 = [v9 safeArrayViewWithCommandBuffer:v13 computeEncoder:v14 descriptor:v11 aliasing:0];

  v16 = *(a2 + 1);
  v17 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v18 = [v10 safeArrayViewWithCommandBuffer:v16 computeEncoder:v17 descriptor:v12 aliasing:1];

  *a1 = v15;
  a1[1] = v18;
}

void GPU::anonymous namespace::permuteWeights(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3, int a4, uint64_t a5)
{
  v47[4] = *MEMORY[0x1E69E9840];
  v41 = a3;
  v42 = [v41 descriptor];
  v40 = a1;
  if (a4 == 2)
  {
    v9 = [v42 getShape];
    v22 = [v9 objectAtIndexedSubscript:0];
    v23 = [v22 unsignedIntegerValue];

    v24 = [v9 objectAtIndexedSubscript:1];
    v25 = v23;
    v26 = [v24 unsignedIntegerValue] * v23;

    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v26];
    v44[0] = v27;
    v44[1] = &unk_1F5B75728;
    v28 = [v9 objectAtIndexedSubscript:2];
    v44[2] = v28;
    v29 = [v9 objectAtIndexedSubscript:3];
    v44[3] = v29;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];

    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v26];
    v43[0] = v30;
    v43[1] = &unk_1F5B75728;
    v31 = [v9 objectAtIndexedSubscript:2];
    v43[2] = v31;
    v32 = [v9 objectAtIndexedSubscript:3];
    v43[3] = v32;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];

    [v42 transposeDimension:2 withDimension:3];
    if (v25 >= 2)
    {
      [v42 reshapeWithShape:v39];
    }

    goto LABEL_8;
  }

  if (a4 == 3)
  {
    v9 = [v42 getShape];
    v10 = [v9 objectAtIndexedSubscript:3];
    v11 = [v10 unsignedIntegerValue];

    v12 = [v9 objectAtIndexedSubscript:2];
    v13 = [v12 unsignedIntegerValue];

    v14 = [v9 objectAtIndexedSubscript:0];
    v47[0] = v14;
    v15 = [v9 objectAtIndexedSubscript:1];
    v16 = v13 * v11;
    v47[1] = v15;
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13 * v11];
    v47[2] = v17;
    v47[3] = &unk_1F5B75728;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
    v46[0] = v18;
    v46[1] = &unk_1F5B75728;
    v19 = [v9 objectAtIndexedSubscript:0];
    v46[2] = v19;
    v20 = [v9 objectAtIndexedSubscript:1];
    v46[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];

    if (v11 >= 2)
    {
      [v42 reshapeWithShape:v39];
    }

    v45[4] = xmmword_1E09A0DE0;
    v45[5] = unk_1E09A0DF0;
    v45[6] = xmmword_1E09A0E00;
    v45[7] = unk_1E09A0E10;
    v45[0] = xmmword_1E09A0DA0;
    v45[1] = unk_1E09A0DB0;
    v45[2] = xmmword_1E09A0DC0;
    v45[3] = unk_1E09A0DD0;
    [v42 permuteWithDimensionOrder:v45];
LABEL_8:

    goto LABEL_12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v21 = 0;
LABEL_12:
  v33 = *(a2 + 1);
  v34 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v35 = [v41 safeArrayViewWithCommandBuffer:v33 computeEncoder:v34 descriptor:v42 aliasing:a5];

  if (v35)
  {
    v36 = v35;
    *v40 = v36;
    *(v40 + 8) = 0;
  }

  else
  {
    v37 = [MEMORY[0x1E6974490] descriptorWithDataType:objc_msgSend(v42 shape:{"dataType"), v21}];
    [v37 setPreferPackedRows:1];
    v38 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:*(a2 + 1) descriptor:v37];
    *v40 = v38;
    *(v40 + 8) = 1;

    v36 = v38;
  }
}

void GPU::DepthwiseConv2DDataGradientOpHandler::encodeNDArrayOp(GPU::DepthwiseConv2DDataGradientOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v117[2] = *MEMORY[0x1E69E9840];
  v98 = a3;
  v5 = *(this + 2);
  v103 = *(this + 3);
  v6 = *(v103 + 72);
  v7 = *(v6 + 56);
  v8 = (*(*v5 + 48))(v5, *(v6 + 24), 0);
  v102 = [v8 mpsndarray];

  v9 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v101 = [v9 mpsndarray];

  v96 = [(NSArray *)v98 objectAtIndexedSubscript:0];
  v10 = [v96 mpsndarray];
  if (v102)
  {
    v11 = v101 == 0;
  }

  else
  {
    v11 = 1;
  }

  v100 = v10;
  v12 = v11 || v10 == 0;
  if (v12 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(this + 4) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  StaticType = GPURegionRuntime::getStaticType(*(this + 2), *(*(v103 + 72) + 56));
  Value = mlir::ArrayAttr::getValue(&StaticType);
  if (*(v103 + 36))
  {
    v13 = v103 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), NextResultAtOffset);
  v15 = mlir::ArrayAttr::getValue(&StaticType);
  v16 = [*(*(this + 2) + 48) metalDevice];
  v114 = v103;
  v99 = v16;
  Strides = mlir::mps::ColToImOp::getStrides(&v114);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v114);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v114);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v114);
  if (StorageType)
  {
    if (StorageType != 1)
    {
      v33 = 0;
      v32 = 0;
      v97 = 0;
      v93 = 0;
      v94 = 0;
      v23 = 1;
      v24 = 1;
      v27 = 1;
      v28 = 1;
      goto LABEL_42;
    }

    v19 = v15[1];
    v18 = v15[2];
    v20 = v15[3];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&StaticType, Strides, 0);
    v21 = Strides;
    NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v106, v21, NumElements);
    v97 = v20;
    v93 = v19;
    v94 = v18;
    if (v110 == v107)
    {
      v23 = 1;
      v24 = 1;
LABEL_16:
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&StaticType, InputAttributeNames, 0);
      v25 = InputAttributeNames;
      v26 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v106, v25, v26);
      if (v110 == v107)
      {
        v27 = 1;
        v28 = 1;
LABEL_18:
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&StaticType, Rewriter, 0);
        v29 = Rewriter;
        v30 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v106, v29, v30);
        if (v110 != v107)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          do
          {
            mlir::DenseElementsAttr::IntElementIterator::operator*(&StaticType, &v104);
            v34 = v105;
            if (v105 >= 0x41)
            {
              if (v34 - llvm::APInt::countLeadingZerosSlowCase(&v104) <= 0x40)
              {
                v35 = *v104;
              }

              else
              {
                v35 = -1;
              }
            }

            else
            {
              v35 = v104;
            }

            if (v31 == 4)
            {
              v36 = v35;
            }

            else
            {
              v36 = v33;
            }

            if (v31 == 2)
            {
              v32 = v35;
            }

            else
            {
              v33 = v36;
            }

            if (v34 >= 0x41 && v104)
            {
              MEMORY[0x1E12E5B60](v104, 0x1000C8000313F17);
            }

            ++v110;
            ++v31;
          }

          while (v110 != v107);
          goto LABEL_42;
        }

LABEL_40:
        v33 = 0;
        v32 = 0;
        goto LABEL_42;
      }

      v83 = 0;
      v28 = 1;
      v27 = 1;
      while (1)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&StaticType, &v104);
        v84 = v105;
        if (v105 >= 0x41)
        {
          if (v84 - llvm::APInt::countLeadingZerosSlowCase(&v104) <= 0x40)
          {
            v85 = *v104;
            if (v83 <= 1)
            {
LABEL_124:
              if (!v83)
              {
                if (v85 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
                {
                  goto LABEL_142;
                }

                goto LABEL_137;
              }

              if (v83 == 1)
              {
                v27 = v85;
                goto LABEL_142;
              }

LABEL_136:
              if (!MTLReportFailureTypeEnabled())
              {
                goto LABEL_142;
              }

              goto LABEL_137;
            }
          }

          else
          {
            v85 = -1;
            if (v83 <= 1)
            {
              goto LABEL_124;
            }
          }
        }

        else
        {
          v85 = v104;
          if (v83 <= 1)
          {
            goto LABEL_124;
          }
        }

        if (v83 != 2)
        {
          if (v83 == 3)
          {
            if (v85 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_142;
            }

LABEL_137:
            MTLReportFailure();
            goto LABEL_142;
          }

          goto LABEL_136;
        }

        v28 = v85;
LABEL_142:
        if (v105 >= 0x41 && v104)
        {
          MEMORY[0x1E12E5B60](v104, 0x1000C8000313F17);
        }

        ++v110;
        ++v83;
        if (v110 == v107)
        {
          goto LABEL_18;
        }
      }
    }

    v77 = 0;
    v24 = 1;
    v23 = 1;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&StaticType, &v104);
      v78 = v105;
      if (v105 >= 0x41)
      {
        if (v78 - llvm::APInt::countLeadingZerosSlowCase(&v104) <= 0x40)
        {
          v79 = *v104;
          if (v77 <= 1)
          {
LABEL_74:
            if (!v77)
            {
              if (v79 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_92;
              }

              goto LABEL_87;
            }

            if (v77 == 1)
            {
              v23 = v79;
              goto LABEL_92;
            }

LABEL_86:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_92;
            }

            goto LABEL_87;
          }
        }

        else
        {
          v79 = -1;
          if (v77 <= 1)
          {
            goto LABEL_74;
          }
        }
      }

      else
      {
        v79 = v104;
        if (v77 <= 1)
        {
          goto LABEL_74;
        }
      }

      if (v77 != 2)
      {
        if (v77 == 3)
        {
          if (v79 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
          {
            goto LABEL_92;
          }

LABEL_87:
          MTLReportFailure();
          goto LABEL_92;
        }

        goto LABEL_86;
      }

      v24 = v79;
LABEL_92:
      if (v105 >= 0x41 && v104)
      {
        MEMORY[0x1E12E5B60](v104, 0x1000C8000313F17);
      }

      ++v110;
      ++v77;
      if (v110 == v107)
      {
        goto LABEL_16;
      }
    }
  }

  v38 = v15[2];
  v37 = v15[3];
  v39 = v15[1];
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&StaticType, Strides, 0);
  v40 = Strides;
  v41 = mlir::DenseElementsAttr::getNumElements(&Strides);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v106, v40, v41);
  v97 = v39;
  v93 = v38;
  v94 = v37;
  if (v110 != v107)
  {
    v80 = 0;
    v24 = 1;
    v23 = 1;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&StaticType, &v104);
      v81 = v105;
      if (v105 >= 0x41)
      {
        if (v81 - llvm::APInt::countLeadingZerosSlowCase(&v104) <= 0x40)
        {
          v82 = *v104;
          if (v80 <= 1)
          {
LABEL_99:
            if (v80)
            {
              if (v80 == 1)
              {
                if (v82 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
                {
                  goto LABEL_117;
                }
              }

              else
              {
LABEL_111:
                if (!MTLReportFailureTypeEnabled())
                {
                  goto LABEL_117;
                }
              }
            }

            else if (v82 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_117;
            }

            MTLReportFailure();
            goto LABEL_117;
          }
        }

        else
        {
          v82 = -1;
          if (v80 <= 1)
          {
            goto LABEL_99;
          }
        }
      }

      else
      {
        v82 = v104;
        if (v80 <= 1)
        {
          goto LABEL_99;
        }
      }

      if (v80 != 2)
      {
        if (v80 == 3)
        {
          v24 = v82;
          goto LABEL_117;
        }

        goto LABEL_111;
      }

      v23 = v82;
LABEL_117:
      if (v105 >= 0x41 && v104)
      {
        MEMORY[0x1E12E5B60](v104, 0x1000C8000313F17);
      }

      ++v110;
      ++v80;
      if (v110 == v107)
      {
        goto LABEL_37;
      }
    }
  }

  v23 = 1;
  v24 = 1;
LABEL_37:
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&StaticType, InputAttributeNames, 0);
  v42 = InputAttributeNames;
  v43 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v106, v42, v43);
  if (v110 != v107)
  {
    v86 = 0;
    v28 = 1;
    v27 = 1;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&StaticType, &v104);
      v87 = v105;
      if (v105 >= 0x41)
      {
        if (v87 - llvm::APInt::countLeadingZerosSlowCase(&v104) <= 0x40)
        {
          v88 = *v104;
          if (v86 <= 1)
          {
LABEL_149:
            if (v86)
            {
              if (v86 == 1)
              {
                if (v88 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
                {
                  goto LABEL_167;
                }
              }

              else
              {
LABEL_161:
                if (!MTLReportFailureTypeEnabled())
                {
                  goto LABEL_167;
                }
              }
            }

            else if (v88 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_167;
            }

            MTLReportFailure();
            goto LABEL_167;
          }
        }

        else
        {
          v88 = -1;
          if (v86 <= 1)
          {
            goto LABEL_149;
          }
        }
      }

      else
      {
        v88 = v104;
        if (v86 <= 1)
        {
          goto LABEL_149;
        }
      }

      if (v86 != 2)
      {
        if (v86 == 3)
        {
          v28 = v88;
          goto LABEL_167;
        }

        goto LABEL_161;
      }

      v27 = v88;
LABEL_167:
      if (v105 >= 0x41 && v104)
      {
        MEMORY[0x1E12E5B60](v104, 0x1000C8000313F17);
      }

      ++v110;
      ++v86;
      if (v110 == v107)
      {
        goto LABEL_39;
      }
    }
  }

  v27 = 1;
  v28 = 1;
LABEL_39:
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&StaticType, Rewriter, 0);
  v44 = Rewriter;
  v45 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v106, v44, v45);
  if (v110 == v107)
  {
    goto LABEL_40;
  }

  v89 = 0;
  v32 = 0;
  v33 = 0;
  do
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&StaticType, &v104);
    v90 = v105;
    if (v105 >= 0x41)
    {
      if (v90 - llvm::APInt::countLeadingZerosSlowCase(&v104) <= 0x40)
      {
        v91 = *v104;
      }

      else
      {
        v91 = -1;
      }
    }

    else
    {
      v91 = v104;
    }

    if (v89 == 6)
    {
      v92 = v91;
    }

    else
    {
      v92 = v33;
    }

    if (v89 == 4)
    {
      v32 = v91;
    }

    else
    {
      v33 = v92;
    }

    if (v90 >= 0x41 && v104)
    {
      MEMORY[0x1E12E5B60](v104, 0x1000C8000313F17);
    }

    ++v110;
    ++v89;
  }

  while (v110 != v107);
LABEL_42:
  PaddingStyle = mlir::mps::StencilOp::getPaddingStyle(&v114);
  if (PaddingStyle == 2)
  {
    v47 = Value;
    v48 = (Value + 24);
    v50 = (Value + 16);
    v49 = 8;
  }

  else
  {
    if (PaddingStyle != 3)
    {
      v52 = 0;
      v51 = 0;
      if (!v97)
      {
        goto LABEL_49;
      }

      goto LABEL_190;
    }

    v47 = Value;
    v48 = (Value + 8);
    v49 = 16;
    v50 = Value;
  }

  v51 = *v48 - 1;
  v52 = *v50 - 1;
  if (v97 == *(v47 + v49))
  {
    goto LABEL_49;
  }

LABEL_190:
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_49:
  v53 = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v114);
  v54 = v51 * v28 + 1;
  v55 = v52 * v27 + 1;
  if (v53 == 1)
  {
    v33 = 0;
    v32 = 0;
  }

  else if (v53 == 2 || v53 == 4)
  {
    v56 = v93 % v23;
    if (!(v93 % v23))
    {
      v56 = v23;
    }

    v57 = (v55 - v56) & ~((v55 - v56) >> 63);
    v58 = v94 % v24;
    if (!(v94 % v24))
    {
      v58 = v24;
    }

    v59 = (v54 - v58) & ~((v54 - v58) >> 63);
    v60 = v57 >> 1;
    v61 = v57 - (v57 >> 1);
    v62 = v59 >> 1;
    v63 = v59 - (v59 >> 1);
    if (v53 == 4)
    {
      v33 = v63;
    }

    else
    {
      v33 = v62;
    }

    if (v53 == 4)
    {
      v32 = v61;
    }

    else
    {
      v32 = v60;
    }
  }

  v64 = [objc_alloc(MEMORY[0x1E69746F8]) initWithDevice:v99];
  StaticType = (v54 / 2 - v33);
  v109 = (v55 / 2 - v32);
  v110 = 0;
  [v64 setWindowOffsets:&StaticType];
  StaticType = v24;
  v109 = v23;
  v110 = 1;
  [v64 setConvStrides:&StaticType];
  StaticType = v28;
  v109 = v27;
  v110 = 1;
  [v64 setConvDilationRates:&StaticType];
  [v64 setOptions:{objc_msgSend(v64, "options") | 1}];

  if (*(v100 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v100 setReadCount:{objc_msgSend(v100, "readCount") + 1}];
  }

  v65 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v103);
  v66 = StaticType;
  v67 = v109;
  v68 = mlir::mps::StencilOp::getPaddingStyle(&v103);
  v69 = v106[0];
  if (*(v67 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v67 setReadCount:{objc_msgSend(v67, "readCount") + 1}];
  }

  v117[0] = v67;
  v117[1] = v69;
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:2];
  v71 = [v64 resultStateForSourceArrays:v70 sourceStates:0 destinationArray:v67];

  v72 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v73 = *(a2 + 1);
  v116[0] = v67;
  v116[1] = v69;
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:2];
  v115[0] = v67;
  v75 = [MEMORY[0x1E695DFB0] null];
  v115[1] = v75;
  v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:2];
  [v64 encodeGradientsToCommandEncoder:v72 commandBuffer:v73 sourceArrays:v74 sourceGradient:v66 gradientState:v71 destinationGradients:v76 kernelDAGObject:0];

  if (*(v67 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v67 setReadCount:{objc_msgSend(v67, "readCount") - 1}];
  }
}

unint64_t GPU::DepthwiseConv2DDataGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::DepthwiseConv2DWeightsGradientOpHandler::encodeNDArrayOp(GPU::DepthwiseConv2DWeightsGradientOpHandler *this, id *a2, NSArray *a3)
{
  v156 = *MEMORY[0x1E69E9840];
  v125 = a3;
  v4 = *(this + 2);
  v136 = *(this + 3);
  v5 = *(v136 + 72);
  v6 = *(v5 + 56);
  v7 = (*(*v4 + 48))(v4, *(v5 + 24), 0);
  v128 = [v7 mpsndarray];

  v8 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v129 = [v8 mpsndarray];

  v122 = [(NSArray *)v125 objectAtIndexedSubscript:0];
  v9 = [v122 mpsndarray];
  if (v128)
  {
    v10 = v129 == 0;
  }

  else
  {
    v10 = 1;
  }

  v130 = v9;
  v11 = v10 || v9 == 0;
  if (v11 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(this + 4) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v136 + 36))
  {
    v12 = v136 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  *&v145 = GPURegionRuntime::getStaticType(*(this + 2), NextResultAtOffset);
  Value = mlir::ArrayAttr::getValue(&v145);
  *&v145 = GPURegionRuntime::getStaticType(*(this + 2), v6);
  v14 = mlir::ArrayAttr::getValue(&v145);
  v121 = this;
  [*(*(this + 2) + 48) metalDevice];
  v15 = v134 = v136;
  Strides = mlir::mps::ColToImOp::getStrides(&v134);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v134);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v134);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v134);
  if (StorageType)
  {
    if (StorageType != 1)
    {
      v32 = 0;
      v31 = 0;
      v131 = 0;
      v123 = 0;
      v119 = 0;
      v22 = 1;
      v23 = 1;
      v26 = 1;
      v27 = 1;
      goto LABEL_42;
    }

    v18 = v14[1];
    v17 = v14[2];
    v19 = v14[3];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v145, Strides, 0);
    v20 = Strides;
    NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v153, v20, NumElements);
    v131 = v19;
    v119 = v18;
    v123 = v17;
    if (v146 == v154)
    {
      v22 = 1;
      v23 = 1;
LABEL_16:
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v145, InputAttributeNames, 0);
      v24 = InputAttributeNames;
      v25 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v153, v24, v25);
      if (v146 == v154)
      {
        v26 = 1;
        v27 = 1;
LABEL_18:
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v145, Rewriter, 0);
        v28 = Rewriter;
        v29 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v153, v28, v29);
        if (v146 != v154)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          do
          {
            mlir::DenseElementsAttr::IntElementIterator::operator*(&v145, &v137);
            v33 = v138;
            if (v138 >= 0x41)
            {
              if (v33 - llvm::APInt::countLeadingZerosSlowCase(&v137) <= 0x40)
              {
                v34 = *v137;
              }

              else
              {
                v34 = -1;
              }
            }

            else
            {
              v34 = v137;
            }

            if (v30 == 4)
            {
              v35 = v34;
            }

            else
            {
              v35 = v32;
            }

            if (v30 == 2)
            {
              v31 = v34;
            }

            else
            {
              v32 = v35;
            }

            if (v33 >= 0x41 && v137)
            {
              MEMORY[0x1E12E5B60](v137, 0x1000C8000313F17);
            }

            *&v146 = v146 + 1;
            ++v30;
          }

          while (v146 != v154);
          goto LABEL_42;
        }

LABEL_40:
        v32 = 0;
        v31 = 0;
        goto LABEL_42;
      }

      v91 = 0;
      v27 = 1;
      v26 = 1;
      while (1)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v145, &v137);
        v92 = v138;
        if (v138 >= 0x41)
        {
          if (v92 - llvm::APInt::countLeadingZerosSlowCase(&v137) <= 0x40)
          {
            v93 = *v137;
            if (v91 <= 1)
            {
LABEL_127:
              if (!v91)
              {
                if (v93 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
                {
                  goto LABEL_145;
                }

                goto LABEL_140;
              }

              if (v91 == 1)
              {
                v26 = v93;
                goto LABEL_145;
              }

LABEL_139:
              if (!MTLReportFailureTypeEnabled())
              {
                goto LABEL_145;
              }

              goto LABEL_140;
            }
          }

          else
          {
            v93 = -1;
            if (v91 <= 1)
            {
              goto LABEL_127;
            }
          }
        }

        else
        {
          v93 = v137;
          if (v91 <= 1)
          {
            goto LABEL_127;
          }
        }

        if (v91 != 2)
        {
          if (v91 == 3)
          {
            if (v93 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_145;
            }

LABEL_140:
            MTLReportFailure();
            goto LABEL_145;
          }

          goto LABEL_139;
        }

        v27 = v93;
LABEL_145:
        if (v138 >= 0x41 && v137)
        {
          MEMORY[0x1E12E5B60](v137, 0x1000C8000313F17);
        }

        *&v146 = v146 + 1;
        ++v91;
        if (v146 == v154)
        {
          goto LABEL_18;
        }
      }
    }

    v85 = 0;
    v23 = 1;
    v22 = 1;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v145, &v137);
      v86 = v138;
      if (v138 >= 0x41)
      {
        if (v86 - llvm::APInt::countLeadingZerosSlowCase(&v137) <= 0x40)
        {
          v87 = *v137;
          if (v85 <= 1)
          {
LABEL_77:
            if (!v85)
            {
              if (v87 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_95;
              }

              goto LABEL_90;
            }

            if (v85 == 1)
            {
              v22 = v87;
              goto LABEL_95;
            }

LABEL_89:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_95;
            }

            goto LABEL_90;
          }
        }

        else
        {
          v87 = -1;
          if (v85 <= 1)
          {
            goto LABEL_77;
          }
        }
      }

      else
      {
        v87 = v137;
        if (v85 <= 1)
        {
          goto LABEL_77;
        }
      }

      if (v85 != 2)
      {
        if (v85 == 3)
        {
          if (v87 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
          {
            goto LABEL_95;
          }

LABEL_90:
          MTLReportFailure();
          goto LABEL_95;
        }

        goto LABEL_89;
      }

      v23 = v87;
LABEL_95:
      if (v138 >= 0x41 && v137)
      {
        MEMORY[0x1E12E5B60](v137, 0x1000C8000313F17);
      }

      *&v146 = v146 + 1;
      ++v85;
      if (v146 == v154)
      {
        goto LABEL_16;
      }
    }
  }

  v37 = v14[2];
  v36 = v14[3];
  v38 = v14[1];
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v145, Strides, 0);
  v39 = Strides;
  v40 = mlir::DenseElementsAttr::getNumElements(&Strides);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v153, v39, v40);
  v131 = v38;
  v119 = v37;
  v123 = v36;
  if (v146 != v154)
  {
    v88 = 0;
    v23 = 1;
    v22 = 1;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v145, &v137);
      v89 = v138;
      if (v138 >= 0x41)
      {
        if (v89 - llvm::APInt::countLeadingZerosSlowCase(&v137) <= 0x40)
        {
          v90 = *v137;
          if (v88 <= 1)
          {
LABEL_102:
            if (v88)
            {
              if (v88 == 1)
              {
                if (v90 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
                {
                  goto LABEL_120;
                }
              }

              else
              {
LABEL_114:
                if (!MTLReportFailureTypeEnabled())
                {
                  goto LABEL_120;
                }
              }
            }

            else if (v90 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_120;
            }

            MTLReportFailure();
            goto LABEL_120;
          }
        }

        else
        {
          v90 = -1;
          if (v88 <= 1)
          {
            goto LABEL_102;
          }
        }
      }

      else
      {
        v90 = v137;
        if (v88 <= 1)
        {
          goto LABEL_102;
        }
      }

      if (v88 != 2)
      {
        if (v88 == 3)
        {
          v23 = v90;
          goto LABEL_120;
        }

        goto LABEL_114;
      }

      v22 = v90;
LABEL_120:
      if (v138 >= 0x41 && v137)
      {
        MEMORY[0x1E12E5B60](v137, 0x1000C8000313F17);
      }

      *&v146 = v146 + 1;
      ++v88;
      if (v146 == v154)
      {
        goto LABEL_37;
      }
    }
  }

  v22 = 1;
  v23 = 1;
LABEL_37:
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v145, InputAttributeNames, 0);
  v41 = InputAttributeNames;
  v42 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v153, v41, v42);
  if (v146 != v154)
  {
    v94 = 0;
    v27 = 1;
    v26 = 1;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v145, &v137);
      v95 = v138;
      if (v138 >= 0x41)
      {
        if (v95 - llvm::APInt::countLeadingZerosSlowCase(&v137) <= 0x40)
        {
          v96 = *v137;
          if (v94 <= 1)
          {
LABEL_152:
            if (v94)
            {
              if (v94 == 1)
              {
                if (v96 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
                {
                  goto LABEL_170;
                }
              }

              else
              {
LABEL_164:
                if (!MTLReportFailureTypeEnabled())
                {
                  goto LABEL_170;
                }
              }
            }

            else if (v96 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_170;
            }

            MTLReportFailure();
            goto LABEL_170;
          }
        }

        else
        {
          v96 = -1;
          if (v94 <= 1)
          {
            goto LABEL_152;
          }
        }
      }

      else
      {
        v96 = v137;
        if (v94 <= 1)
        {
          goto LABEL_152;
        }
      }

      if (v94 != 2)
      {
        if (v94 == 3)
        {
          v27 = v96;
          goto LABEL_170;
        }

        goto LABEL_164;
      }

      v26 = v96;
LABEL_170:
      if (v138 >= 0x41 && v137)
      {
        MEMORY[0x1E12E5B60](v137, 0x1000C8000313F17);
      }

      *&v146 = v146 + 1;
      ++v94;
      if (v146 == v154)
      {
        goto LABEL_39;
      }
    }
  }

  v26 = 1;
  v27 = 1;
LABEL_39:
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v145, Rewriter, 0);
  v43 = Rewriter;
  v44 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v153, v43, v44);
  if (v146 == v154)
  {
    goto LABEL_40;
  }

  v97 = 0;
  v31 = 0;
  v32 = 0;
  do
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v145, &v137);
    v98 = v138;
    if (v138 >= 0x41)
    {
      if (v98 - llvm::APInt::countLeadingZerosSlowCase(&v137) <= 0x40)
      {
        v99 = *v137;
      }

      else
      {
        v99 = -1;
      }
    }

    else
    {
      v99 = v137;
    }

    if (v97 == 6)
    {
      v100 = v99;
    }

    else
    {
      v100 = v32;
    }

    if (v97 == 4)
    {
      v31 = v99;
    }

    else
    {
      v32 = v100;
    }

    if (v98 >= 0x41 && v137)
    {
      MEMORY[0x1E12E5B60](v137, 0x1000C8000313F17);
    }

    *&v146 = v146 + 1;
    ++v97;
  }

  while (v146 != v154);
LABEL_42:
  PaddingStyle = mlir::mps::StencilOp::getPaddingStyle(&v134);
  if (PaddingStyle == 2)
  {
    v46 = Value;
    v47 = (Value + 24);
    v49 = (Value + 16);
    v48 = 8;
  }

  else
  {
    if (PaddingStyle != 3)
    {
      v51 = 0;
      v50 = 0;
      if (!v131)
      {
        goto LABEL_49;
      }

      goto LABEL_201;
    }

    v46 = Value;
    v47 = (Value + 8);
    v48 = 16;
    v49 = Value;
  }

  v50 = *v47 - 1;
  v51 = *v49 - 1;
  if (v131 == *(v46 + v48))
  {
    goto LABEL_49;
  }

LABEL_201:
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_49:
  v52 = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v134);
  v53 = v50 * v27 + 1;
  v54 = v51 * v26 + 1;
  if (v52 == 1)
  {
    v32 = 0;
    v31 = 0;
  }

  else if (v52 == 2 || v52 == 4)
  {
    v55 = v119 % v22;
    if (!(v119 % v22))
    {
      v55 = v22;
    }

    v56 = (v54 - v55) & ~((v54 - v55) >> 63);
    v57 = v123 % v23;
    if (!(v123 % v23))
    {
      v57 = v23;
    }

    v58 = (v53 - v57) & ~((v53 - v57) >> 63);
    v59 = v56 >> 1;
    v60 = v56 - (v56 >> 1);
    v61 = v58 >> 1;
    v62 = v58 - (v58 >> 1);
    if (v52 == 4)
    {
      v32 = v62;
    }

    else
    {
      v32 = v61;
    }

    if (v52 == 4)
    {
      v31 = v60;
    }

    else
    {
      v31 = v59;
    }
  }

  v63 = [objc_alloc(MEMORY[0x1E69746F8]) initWithDevice:v15];
  *&v145 = v53 / 2 - v32;
  *(&v145 + 1) = v54 / 2 - v31;
  *&v146 = 0;
  [v63 setWindowOffsets:&v145];
  *&v145 = v23;
  *(&v145 + 1) = v22;
  *&v146 = 1;
  [v63 setConvStrides:&v145];
  *&v145 = v27;
  *(&v145 + 1) = v26;
  *&v146 = 1;
  [v63 setConvDilationRates:&v145];
  [v63 setOptions:{objc_msgSend(v63, "options") | 1}];

  v64 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v136);
  v132 = v137;
  v127 = v138;
  v65 = MEMORY[0x1E69744E8];
  if (*(v130 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v130 setReadCount:{objc_msgSend(v130, "readCount") + 1}];
  }

  v66 = mlir::mps::StencilOp::getPaddingStyle(&v136);
  v67 = v134;
  v68 = v67;
  v69 = v135;
  if (*(v67 + *v65) == 1)
  {
    [v67 setReadCount:{objc_msgSend(v67, "readCount") + 1}];
  }

  v143[0] = v132;
  v143[1] = v68;
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:2];
  v124 = [v63 resultStateForSourceArrays:v70 sourceStates:0 destinationArray:v68];

  v71 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v72 = a2[1];
  v142[0] = v132;
  v142[1] = v68;
  v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:2];
  v74 = [MEMORY[0x1E695DFB0] null];
  v141[0] = v74;
  v141[1] = v68;
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v141 count:2];
  [v63 encodeGradientsToCommandEncoder:v71 commandBuffer:v72 sourceArrays:v73 sourceGradient:v127 gradientState:v124 destinationGradients:v75 kernelDAGObject:0];

  if (v69)
  {
    v76 = mlir::mps::StencilOp::getPaddingStyle(&v136);
    v77 = v68;
    v117 = v130;
    v118 = v77;
    v120 = [v77 descriptor];
    v116 = [v117 descriptor];
    v78 = [v116 getShape];
    v79 = v78;
    if (v76 == 2)
    {
      v101 = [v78 objectAtIndexedSubscript:1];
      *&v145 = v101;
      v102 = [v79 objectAtIndexedSubscript:0];
      *(&v145 + 1) = v102;
      v103 = [v79 objectAtIndexedSubscript:2];
      *&v146 = v103;
      v104 = [v79 objectAtIndexedSubscript:3];
      *(&v146 + 1) = v104;
      v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:4];

      [v120 reshapeWithShape:v84];
      [v120 transposeDimension:2 withDimension:3];
    }

    else
    {
      if (v76 != 3)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_193;
      }

      v80 = [v78 objectAtIndexedSubscript:2];
      v153[0] = v80;
      v81 = [v79 objectAtIndexedSubscript:3];
      v153[1] = v81;
      v82 = [v79 objectAtIndexedSubscript:0];
      v154 = v82;
      v83 = [v79 objectAtIndexedSubscript:1];
      v155 = v83;
      v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:4];

      v149 = xmmword_1E09A0DE0;
      v150 = unk_1E09A0DF0;
      v151 = xmmword_1E09A0E00;
      v152 = unk_1E09A0E10;
      v145 = xmmword_1E09A0DA0;
      v146 = unk_1E09A0DB0;
      v147 = xmmword_1E09A0DC0;
      v148 = unk_1E09A0DD0;
      [v120 reshapeWithShape:v84];
      [v120 permuteWithDimensionOrder:&v145];
    }

LABEL_193:
    v105 = a2[1];
    v106 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v107 = [v118 safeArrayViewWithCommandBuffer:v105 computeEncoder:v106 descriptor:v120 aliasing:1];

    v108 = *(v121 + 1);
    if (!v108)
    {
      v109 = objc_alloc(MEMORY[0x1E6974740]);
      v110 = [a2[1] device];
      v111 = [v109 initWithDevice:v110];
      v112 = *(v121 + 1);
      *(v121 + 1) = v111;

      [*(v121 + 1) setOptions:{objc_msgSend(*(v121 + 1), "options") | 1}];
      v108 = *(v121 + 1);
    }

    v113 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v114 = a2[1];
    Strides = v107;
    v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:&Strides count:1];
    [v108 encodeToMPSCommandEncoder:v113 commandBuffer:v114 sourceArrays:v115 destinationArray:v117];

    goto LABEL_196;
  }

  if (*(v68 + *v65) == 1)
  {
    [v68 setReadCount:{objc_msgSend(v68, "readCount") - 1}];
  }

LABEL_196:
}

unint64_t GPU::DepthwiseConv2DWeightsGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::DepthwiseConv3DOpHandler::_createKernel(GPU::DepthwiseConv3DOpHandler *this)
{
  v92 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  v3 = (this + 16);
  *&v89 = GPURegionRuntime::getStaticType(*(this + 2), *(*(v2 + 72) + 56));
  Value = mlir::ArrayAttr::getValue(&v89);
  v6 = v5;
  *&v89 = GPURegionRuntime::getStaticType(*v3, *(*(v2 + 72) + 24));
  v7 = mlir::ArrayAttr::getValue(&v89);
  v9 = v8;
  [*(*v3 + 48) metalDevice];
  v74 = v88 = v2;
  Strides = mlir::mps::ColToImOp::getStrides(&v88);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v88);
  v90 = 0u;
  v91 = 0u;
  v89 = 0u;
  v73 = v6;
  v69 = Value;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v88);
  ChannelAxis = mlir::mps::DepthwiseConv3DDataGradientOp::getChannelAxis(&v88);
  if (ChannelAxis >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v71 = v11;
  v72 = ChannelAxis;
  if (ChannelAxis >= 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  v83 = xmmword_1E09A0E20;
  v13 = 1;
  v84 = 1;
  v14 = v12 + ChannelAxis;
  v81 = xmmword_1E09A0E20;
  v82 = 1;
  v70 = 1;
  v15 = 1;
  if (v9 >= 3)
  {
    v16 = vaddq_s64(vdupq_n_s64(v9), xmmword_1E09A0C10);
    v17 = vshrq_n_s64(vshlq_n_s64(vaddq_s64(v16, vcgeq_s64(vdupq_n_s64(v14), vshrq_n_s64(vshlq_n_s64(v16, 0x20uLL), 0x20uLL))), 0x20uLL), 0x1DuLL);
    v15 = *(v7 + v17.i64[0]);
    v70 = *(v7 + v17.i64[1]);
    v13 = *(v7 + 8 * (v9 - 3 - (v14 >= v9 - 3)));
  }

  if (Strides)
  {
    if (mlir::DenseElementsAttr::getNumElements(&Strides) == 3)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v79, Strides, 0);
      v18 = Strides;
      NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v77, v18, NumElements);
      if (v80 != v78)
      {
        v55 = 2;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v79, &v75);
          v56 = v76;
          if (v76 < 0x41)
          {
            *(&v83 + v55--) = v75;
          }

          else
          {
            v57 = v56 - llvm::APInt::countLeadingZerosSlowCase(&v75);
            v58 = v75;
            if (v57 <= 0x40)
            {
              *(&v83 + v55--) = *v75;
            }

            else
            {
              *(&v83 + v55--) = -1;
              if (!v58)
              {
                goto LABEL_56;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_56:
          ++v80;
        }

        while (v80 != v78);
      }
    }
  }

  if (InputAttributeNames)
  {
    if (mlir::DenseElementsAttr::getNumElements(&InputAttributeNames) == 3)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v79, InputAttributeNames, 0);
      v20 = InputAttributeNames;
      v21 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v77, v20, v21);
      if (v80 != v78)
      {
        v59 = 2;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v79, &v75);
          v60 = v76;
          if (v76 < 0x41)
          {
            *(&v81 + v59--) = v75;
          }

          else
          {
            v61 = v60 - llvm::APInt::countLeadingZerosSlowCase(&v75);
            v62 = v75;
            if (v61 <= 0x40)
            {
              *(&v81 + v59--) = *v75;
            }

            else
            {
              *(&v81 + v59--) = -1;
              if (!v62)
              {
                goto LABEL_65;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_65:
          ++v80;
        }

        while (v80 != v78);
      }
    }
  }

  if (Rewriter)
  {
    if (mlir::DenseElementsAttr::getNumElements(&Rewriter) == 6)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v79, Rewriter, 0);
      v22 = Rewriter;
      v23 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v77, v22, v23);
      if (v80 != v78)
      {
        v63 = 5;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v79, &v75);
          v64 = v76;
          if (v76 < 0x41)
          {
            *(&v89 + v63--) = v75;
          }

          else
          {
            v65 = v64 - llvm::APInt::countLeadingZerosSlowCase(&v75);
            v66 = v75;
            if (v65 <= 0x40)
            {
              *(&v89 + v63--) = *v75;
            }

            else
            {
              *(&v89 + v63--) = -1;
              if (!v66)
              {
                goto LABEL_74;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_74:
          ++v80;
        }

        while (v80 != v78);
      }
    }
  }

  if (v73 == 4)
  {
    v24 = v14 - v9 + 4;
    v25 = 24;
    if (v24 > 2)
    {
      v25 = 16;
    }

    v26 = *(v69 + v25);
    v28 = __OFSUB__(v24, 1);
    v27 = v24 == 1;
    v29 = 8;
    if (((v14 - v9 + 3) < 0) ^ v28 | v27)
    {
      v29 = 16;
    }

    v30 = *(v69 + v29);
    v31 = (v14 - v9 + 3) < 0 != v28;
    v32 = v26 - 1;
    v33 = v30 - 1;
    v34 = *(v69 + 8 * v31) - 1;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
  }

  PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v88);
  v36 = v81 * v32 + 1;
  if (PaddingStyle)
  {
    if (PaddingStyle == 2 || PaddingStyle == 4)
    {
      v37 = v83;
      if (v15 % v83)
      {
        v37 = v15 % v83;
      }

      v38 = (v36 - v37) & ~((v36 - v37) >> 63);
      v39 = v38 >> 1;
      v40 = v38 - (v38 >> 1);
      if (PaddingStyle != 4)
      {
        v40 = v39;
      }
    }

    else
    {
      v40 = 0;
    }

    v41 = v36 / 2 - v40;
    v43 = *(&v81 + 1) * v33 + 1;
    v42 = v74;
    if (PaddingStyle == 4 || PaddingStyle == 2)
    {
      v44 = *(&v83 + 1);
      if (v70 % *(&v83 + 1))
      {
        v44 = v70 % *(&v83 + 1);
      }

      v45 = (v43 - v44) & ~((v43 - v44) >> 63);
      v46 = v45 >> 1;
      v47 = v45 - (v45 >> 1);
      if (PaddingStyle != 4)
      {
        v47 = v46;
      }

      v48 = v43 / 2 - v47;
      v49 = v82 * v34 + 1;
    }

    else
    {
      v48 = v43 / 2;
      v49 = v82 * v34 + 1;
    }

    if (PaddingStyle == 4 || PaddingStyle == 2)
    {
      v51 = v84;
      if (v13 % v84)
      {
        v51 = v13 % v84;
      }

      v52 = (v49 - v51) & ~((v49 - v51) >> 63);
      v53 = v52 >> 1;
      v54 = v52 - (v52 >> 1);
      if (PaddingStyle == 4)
      {
        v50 = v54;
      }

      else
      {
        v50 = v53;
      }
    }

    else
    {
      v50 = 0;
    }
  }

  else
  {
    v41 = v36 / 2 - *(&v89 + 1);
    v42 = v74;
    v48 = (*(&v81 + 1) * v33 + 1) / 2 - *(&v90 + 1);
    v49 = v82 * v34 + 1;
    v50 = *(&v91 + 1);
  }

  v67 = [objc_alloc(MEMORY[0x1E69746F8]) initWithDevice:v42];
  *&v79 = v41;
  *(&v79 + 1) = v48;
  v80 = v49 / 2 - v50;
  [v67 setWindowOffsets:&v79];
  v79 = v83;
  v80 = v84;
  [v67 setConvStrides:&v79];
  v79 = v81;
  v80 = v82;
  [v67 setConvDilationRates:&v79];
  [v67 setChannelAxis:v71 + ~v72];
  [v67 setOptions:{objc_msgSend(v67, "options") | 1}];

  v68 = *(this + 1);
  *(this + 1) = v67;
}

GPU::DepthwiseConv3DOpHandler **GPU::DepthwiseConv3DOpHandler::postInitializeHook(GPU::DepthwiseConv3DOpHandler **this)
{
  if (*(this + 40) == 1 && !this[4])
  {
    v6 = v1;
    v7 = v2;
    v3 = this;
    this = GPU::DepthwiseConv3DOpHandler::getQuantizationParameters(this[3], v5, &v4);
    if (this)
    {
      return GPU::DepthwiseConv3DOpHandler::_getQuantKernelDAGObject(v3);
    }
  }

  return this;
}

uint64_t GPU::DepthwiseConv3DOpHandler::getQuantizationParameters(GPU::DepthwiseConv3DOpHandler *this, mlir::Value *a2, mlir::Value *a3)
{
  v25 = *(*(this + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v25);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
    {
      v7 = DefiningOp;
    }

    else
    {
      v7 = 0;
    }

    v25 = *(*(this + 9) + 56);
    v8 = mlir::Value::getDefiningOp(&v25);
    if (v8)
    {
LABEL_6:
      if (*(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if ((v7 == 0) == (v9 == 0))
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v7 = 0;
    v25 = *(*(this + 9) + 56);
    v8 = mlir::Value::getDefiningOp(&v25);
    if (v8)
    {
      goto LABEL_6;
    }
  }

  if (!v7)
  {
    return 0;
  }

  v9 = 0;
LABEL_32:
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_10:
  if (!v7)
  {
    return 0;
  }

  v10 = *(v7 + 72);
  *a2 = *(v10 + 24);
  *a3 = *(*(v9 + 72) + 24);
  v11 = *(v10 + 56);
  v24 = mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  v25 = v11;
  v12 = mlir::Value::getDefiningOp(&v25);
  if (v12 && mlir::detail::constant_float_predicate_matcher::match(&v24, v12))
  {
    v13 = *(*(v7 + 72) + 88);
    v25 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
    mlir::matchPattern<mlir::detail::constant_int_predicate_matcher>(v13, &v25);
  }

  v14 = *(*(v7 + 72) + 56);
  v24 = mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  v25 = v14;
  v15 = mlir::Value::getDefiningOp(&v25);
  if (!v15 || !mlir::detail::constant_float_predicate_matcher::match(&v24, v15) || (v16 = *(*(v7 + 72) + 88), v25 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke, (mlir::matchPattern<mlir::detail::constant_int_predicate_matcher>(v16, &v25) & 1) == 0))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v17 = *(*(v9 + 72) + 56);
  v24 = mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  v25 = v17;
  v18 = mlir::Value::getDefiningOp(&v25);
  if (v18 && mlir::detail::constant_float_predicate_matcher::match(&v24, v18))
  {
    v19 = *(*(v9 + 72) + 88);
    v25 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
    mlir::matchPattern<mlir::detail::constant_int_predicate_matcher>(v19, &v25);
  }

  v20 = *(*(v9 + 72) + 56);
  v24 = mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  v25 = v20;
  v21 = mlir::Value::getDefiningOp(&v25);
  if (!v21 || !mlir::detail::constant_float_predicate_matcher::match(&v24, v21) || (v22 = *(*(v9 + 72) + 88), v25 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke, (mlir::matchPattern<mlir::detail::constant_int_predicate_matcher>(v22, &v25) & 1) == 0))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  return 1;
}

id GPU::DepthwiseConv3DOpHandler::_getQuantKernelDAGObject(GPU::DepthwiseConv3DOpHandler *this)
{
  v2 = *(this + 15);
  if (!v2 || *(this + 40) != 1)
  {
    operator new();
  }

  if (!*(v2 + 120) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v3 = *(*(this + 15) + 120);

  return v3;
}

id GPU::MPSGraphKernelDAG::getKernelDAGObject(GPU::MPSGraphKernelDAG *this)
{
  v1 = *(this + 15);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    if (!*(this + 12) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v5 = [objc_alloc(MEMORY[0x1E6974470]) initWithKernelDAG:this + 80 finalOp:*(*(this + 12) + 32)];
    v6 = *(this + 15);
    *(this + 15) = v5;

    v2 = *(this + 15);
  }

  return v2;
}

void GPU::DepthwiseConv3DOpHandler::encodeNDArrayOp(GPU::DepthwiseConv3DOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((*(this + 40) & 1) == 0)
  {
    GPU::DepthwiseConv3DOpHandler::_createKernel(this);
  }

  if (GPU::DepthwiseConv3DOpHandler::getQuantizationParameters(*(this + 3), v29, v28))
  {
    v6 = GPU::DepthwiseConv3DOpHandler::_getQuantKernelDAGObject(this);
  }

  v7 = *(this + 3);
  v8 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v9 = [v8 mpsndarray];
  v10 = *(this + 1);
  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v11 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v12 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v13 = *(a2 + 1);
    v14 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v10 encodeToMPSCommandEncoder:v12 commandBuffer:v13 sourceArrays:v11 resultState:0 destinationArray:v9 kernelDAGObject:v14];
    goto LABEL_10;
  }

  v15 = *(this + 15);
  if (v15)
  {
    v11 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(v15, *(this + 2));
    v12 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v16 = *(a2 + 1);
    v14 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 15));
    [v10 encodeToMPSCommandEncoder:v12 commandBuffer:v16 sourceArrays:v11 resultState:0 destinationArray:v9 kernelDAGObject:v14];
LABEL_10:

    goto LABEL_11;
  }

  v17 = *(v7 + 72);
  v18 = *(v17 + 56);
  v27 = (*(**(this + 2) + 48))(*(this + 2), *(v17 + 24), 0);
  v19 = (*(**(this + 2) + 48))(*(this + 2), v18, 0);
  v20 = [v27 mpsndarray];
  v21 = [v19 mpsndarray];
  v22 = v21;
  if (!v9 || (v20 ? (v23 = v21 == 0) : (v23 = 1), v23))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v24 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v25 = *(a2 + 1);
  v30[0] = v20;
  v30[1] = v22;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  [v10 encodeToMPSCommandEncoder:v24 commandBuffer:v25 sourceArrays:v26 destinationArray:v9];

LABEL_11:
}

void GPU::DepthwiseConv3DDataGradientOpHandler::encodeNDArrayOp(GPU::DepthwiseConv3DDataGradientOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v138 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v117 = *(this + 3);
  v113 = v5;
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v117, 0);
  v7 = *(*(v117 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v8 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v117, 1u);
  v9 = *(*(v117 + 72) + 32 * v8 + 24);
  *&v122 = *(this + 3);
  v10 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v122, 0);
  *&v135 = *(*(v122 + 72) + 32 * v10 + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v135);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
    {
      v12 = DefiningOp;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v122, 1u);
  *&v135 = *(*(v122 + 72) + 32 * v13 + 24);
  v14 = mlir::Value::getDefiningOp(&v135);
  if (!v14)
  {
    if (!v12)
    {
      goto LABEL_27;
    }

    v15 = 0;
    goto LABEL_125;
  }

  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if ((v12 == 0) != (v15 == 0))
  {
LABEL_125:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (v12)
  {
    v16 = *(v12 + 72);
    v7 = *(v16 + 24);
    v9 = *(*(v15 + 72) + 24);
    v17 = *(v16 + 56);
    v120[0] = mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
    *&v135 = v17;
    v18 = mlir::Value::getDefiningOp(&v135);
    if (v18 && mlir::detail::constant_float_predicate_matcher::match(v120, v18))
    {
      v19 = *(*(v12 + 72) + 88);
      *&v135 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
      mlir::matchPattern<mlir::detail::constant_int_predicate_matcher>(v19, &v135);
    }

    v20 = *(*(v12 + 72) + 56);
    v120[0] = mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
    *&v135 = v20;
    v21 = mlir::Value::getDefiningOp(&v135);
    if (!v21 || !mlir::detail::constant_float_predicate_matcher::match(v120, v21) || (v22 = *(*(v12 + 72) + 88), *&v135 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke, (mlir::matchPattern<mlir::detail::constant_int_predicate_matcher>(v22, &v135) & 1) == 0))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    v23 = *(*(v15 + 72) + 56);
    v120[0] = mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
    *&v135 = v23;
    v24 = mlir::Value::getDefiningOp(&v135);
    if (v24 && mlir::detail::constant_float_predicate_matcher::match(v120, v24))
    {
      v25 = *(*(v15 + 72) + 88);
      *&v135 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
      mlir::matchPattern<mlir::detail::constant_int_predicate_matcher>(v25, &v135);
    }

    v26 = *(*(v15 + 72) + 56);
    v120[0] = mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
    *&v135 = v26;
    v27 = mlir::Value::getDefiningOp(&v135);
    if (!v27 || !mlir::detail::constant_float_predicate_matcher::match(v120, v27) || (v28 = *(*(v15 + 72) + 88), *&v135 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke, (mlir::matchPattern<mlir::detail::constant_int_predicate_matcher>(v28, &v135) & 1) == 0))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

LABEL_27:
  v29 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v115 = [v29 mpsndarray];

  v30 = (*(**(this + 2) + 48))(*(this + 2), v9, 0);
  v116 = [v30 mpsndarray];

  v108 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v31 = [v108 mpsndarray];
  v32 = v31;
  if ((!v115 || !v116 || !v31) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(this + 4) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v112 = a2;
  *&v135 = GPURegionRuntime::getStaticType(*(this + 2), v9);
  Value = mlir::ArrayAttr::getValue(&v135);
  v35 = v34;
  if (*(v117 + 36))
  {
    v36 = v117 - 16;
  }

  else
  {
    v36 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v36, 0);
  *&v135 = GPURegionRuntime::getStaticType(*(this + 2), NextResultAtOffset);
  v38 = mlir::ArrayAttr::getValue(&v135);
  v40 = v39;
  v41 = v117;
  v42 = [*(*(this + 2) + 48) metalDevice];
  v131 = v41;
  v114 = v42;
  Strides = mlir::mps::ColToImOp::getStrides(&v131);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v131);
  v136 = 0u;
  v137 = 0u;
  v135 = 0u;
  v111 = v35;
  v106 = Value;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v131);
  ChannelAxis = mlir::mps::DepthwiseConv3DDataGradientOp::getChannelAxis(&v131);
  if (ChannelAxis >= 0)
  {
    v44 = v40;
  }

  else
  {
    v44 = 0;
  }

  v109 = v44;
  v110 = ChannelAxis;
  if (ChannelAxis >= 0)
  {
    v45 = 0;
  }

  else
  {
    v45 = v40;
  }

  v126 = xmmword_1E09A0E20;
  v46 = 1;
  v127 = 1;
  v47 = v45 + ChannelAxis;
  v124 = xmmword_1E09A0E20;
  v125 = 1;
  v107 = 1;
  v48 = 1;
  if (v40 >= 3)
  {
    v49 = vaddq_s64(vdupq_n_s64(v40), xmmword_1E09A0C10);
    v50 = vshrq_n_s64(vshlq_n_s64(vaddq_s64(v49, vcgeq_s64(vdupq_n_s64(v47), vshrq_n_s64(vshlq_n_s64(v49, 0x20uLL), 0x20uLL))), 0x20uLL), 0x1DuLL);
    v48 = *(v38 + v50.i64[0]);
    v107 = *(v38 + v50.i64[1]);
    v46 = *(v38 + 8 * (v40 - 3 - (v47 >= v40 - 3)));
  }

  if (Strides)
  {
    if (mlir::DenseElementsAttr::getNumElements(&Strides) == 3)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v122, Strides, 0);
      v51 = Strides;
      NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v120, v51, NumElements);
      if (v123 != v121)
      {
        v86 = 2;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v122, &v118);
          v87 = v119;
          if (v119 < 0x41)
          {
            *(&v126 + v86--) = v118;
          }

          else
          {
            v88 = v87 - llvm::APInt::countLeadingZerosSlowCase(&v118);
            v89 = v118;
            if (v88 <= 0x40)
            {
              *(&v126 + v86--) = *v118;
            }

            else
            {
              *(&v126 + v86--) = -1;
              if (!v89)
              {
                goto LABEL_89;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_89:
          ++v123;
        }

        while (v123 != v121);
      }
    }
  }

  if (InputAttributeNames)
  {
    if (mlir::DenseElementsAttr::getNumElements(&InputAttributeNames) == 3)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v122, InputAttributeNames, 0);
      v53 = InputAttributeNames;
      v54 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v120, v53, v54);
      if (v123 != v121)
      {
        v90 = 2;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v122, &v118);
          v91 = v119;
          if (v119 < 0x41)
          {
            *(&v124 + v90--) = v118;
          }

          else
          {
            v92 = v91 - llvm::APInt::countLeadingZerosSlowCase(&v118);
            v93 = v118;
            if (v92 <= 0x40)
            {
              *(&v124 + v90--) = *v118;
            }

            else
            {
              *(&v124 + v90--) = -1;
              if (!v93)
              {
                goto LABEL_98;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_98:
          ++v123;
        }

        while (v123 != v121);
      }
    }
  }

  if (Rewriter)
  {
    if (mlir::DenseElementsAttr::getNumElements(&Rewriter) == 6)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v122, Rewriter, 0);
      v55 = Rewriter;
      v56 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v120, v55, v56);
      if (v123 != v121)
      {
        v94 = 5;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v122, &v118);
          v95 = v119;
          if (v119 < 0x41)
          {
            *(&v135 + v94--) = v118;
          }

          else
          {
            v96 = v95 - llvm::APInt::countLeadingZerosSlowCase(&v118);
            v97 = v118;
            if (v96 <= 0x40)
            {
              *(&v135 + v94--) = *v118;
            }

            else
            {
              *(&v135 + v94--) = -1;
              if (!v97)
              {
                goto LABEL_107;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_107:
          ++v123;
        }

        while (v123 != v121);
      }
    }
  }

  if (v111 == 4)
  {
    v57 = v47 - v40 + 4;
    v58 = 24;
    if (v57 > 2)
    {
      v58 = 16;
    }

    v59 = *(v106 + v58);
    v60 = v57 <= 1;
    v61 = 8;
    if (v60)
    {
      v61 = 16;
    }

    v62 = *(v106 + v61);
    v63 = v60;
    v64 = v59 - 1;
    v65 = v62 - 1;
    v66 = *(v106 + 8 * v63) - 1;
  }

  else
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
  }

  PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v131);
  v68 = v124 * v64 + 1;
  if (PaddingStyle)
  {
    if (PaddingStyle == 2 || PaddingStyle == 4)
    {
      v69 = v126;
      if (v48 % v126)
      {
        v69 = v48 % v126;
      }

      v70 = (v68 - v69) & ~((v68 - v69) >> 63);
      v71 = v70 >> 1;
      v72 = v70 - (v70 >> 1);
      if (PaddingStyle != 4)
      {
        v72 = v71;
      }

      v73 = v68 / 2 - v72;
      v74 = *(&v124 + 1) * v65 + 1;
    }

    else
    {
      v73 = v68 / 2;
      v74 = *(&v124 + 1) * v65 + 1;
    }

    if (PaddingStyle == 4 || PaddingStyle == 2)
    {
      v78 = *(&v126 + 1);
      if (v107 % *(&v126 + 1))
      {
        v78 = v107 % *(&v126 + 1);
      }

      v79 = (v74 - v78) & ~((v74 - v78) >> 63);
      v80 = v79 >> 1;
      v81 = v79 - (v79 >> 1);
      if (PaddingStyle != 4)
      {
        v81 = v80;
      }

      v75 = v74 / 2 - v81;
      v76 = v125 * v66 + 1;
    }

    else
    {
      v75 = v74 / 2;
      v76 = v125 * v66 + 1;
    }

    if (PaddingStyle == 4 || PaddingStyle == 2)
    {
      v82 = v127;
      if (v46 % v127)
      {
        v82 = v46 % v127;
      }

      v83 = (v76 - v82) & ~((v76 - v82) >> 63);
      v84 = v83 >> 1;
      v85 = v83 - (v83 >> 1);
      if (PaddingStyle == 4)
      {
        v77 = v85;
      }

      else
      {
        v77 = v84;
      }
    }

    else
    {
      v77 = 0;
    }
  }

  else
  {
    v73 = v68 / 2 - *(&v135 + 1);
    v75 = (*(&v124 + 1) * v65 + 1) / 2 - *(&v136 + 1);
    v76 = v125 * v66 + 1;
    v77 = *(&v137 + 1);
  }

  v98 = [objc_alloc(MEMORY[0x1E69746F8]) initWithDevice:v114];
  *&v122 = v73;
  *(&v122 + 1) = v75;
  v123 = v76 / 2 - v77;
  [v98 setWindowOffsets:&v122];
  v122 = v126;
  v123 = v127;
  [v98 setConvStrides:&v122];
  v122 = v124;
  v123 = v125;
  [v98 setConvDilationRates:&v122];
  [v98 setChannelAxis:v109 + ~v110];
  [v98 setOptions:{objc_msgSend(v98, "options") | 1}];

  if (*(v32 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v32 setReadCount:{objc_msgSend(v32, "readCount") + 1}];
  }

  v134[0] = v32;
  v134[1] = v116;
  v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:2];
  v100 = [v98 resultStateForSourceArrays:v99 sourceStates:0 destinationArray:v32];

  v101 = GPU::EncodeDescriptor::getcomputeEncoder(v112);
  v102 = *(v112 + 1);
  v133[0] = v32;
  v133[1] = v116;
  v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:2];
  v132[0] = v32;
  v104 = [MEMORY[0x1E695DFB0] null];
  v132[1] = v104;
  v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:2];
  [v98 encodeGradientsToCommandEncoder:v101 commandBuffer:v102 sourceArrays:v103 sourceGradient:v115 gradientState:v100 destinationGradients:v105 kernelDAGObject:0];
}

unint64_t GPU::DepthwiseConv3DDataGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::DepthwiseConv3DWeightsGradientOpHandler::encodeNDArrayOp(GPU::DepthwiseConv3DWeightsGradientOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v118 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(this + 3);
  v7 = *(v6 + 72);
  v8 = *(v7 + 56);
  v94 = v5;
  v9 = (*(**(this + 2) + 48))(*(this + 2), *(v7 + 24), 0);
  v96 = [v9 mpsndarray];

  v10 = (*(**(this + 2) + 48))(*(this + 2), v8, 0);
  v97 = [v10 mpsndarray];

  v89 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v11 = [v89 mpsndarray];
  v12 = v11;
  if (v96)
  {
    v13 = v97 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 || v11 == 0;
  if (v14 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(this + 4) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v6 + 36))
  {
    v15 = v6 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  *&v115 = GPURegionRuntime::getStaticType(*(this + 2), NextResultAtOffset);
  Value = mlir::ArrayAttr::getValue(&v115);
  v19 = v18;
  *&v115 = GPURegionRuntime::getStaticType(*(this + 2), v8);
  v20 = mlir::ArrayAttr::getValue(&v115);
  v22 = v21;
  [*(*(this + 2) + 48) metalDevice];
  v95 = v111 = v6;
  Strides = mlir::mps::ColToImOp::getStrides(&v111);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v111);
  v116 = 0u;
  v117 = 0u;
  v115 = 0u;
  v92 = a2;
  v93 = v19;
  v87 = Value;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v111);
  ChannelAxis = mlir::mps::DepthwiseConv3DDataGradientOp::getChannelAxis(&v111);
  if (ChannelAxis >= 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v90 = v24;
  v91 = ChannelAxis;
  if (ChannelAxis >= 0)
  {
    v25 = 0;
  }

  else
  {
    v25 = v22;
  }

  v106 = xmmword_1E09A0E20;
  v26 = 1;
  v107 = 1;
  v27 = v25 + ChannelAxis;
  v104 = xmmword_1E09A0E20;
  v105 = 1;
  v88 = 1;
  v28 = 1;
  if (v22 >= 3)
  {
    v29 = vaddq_s64(vdupq_n_s64(v22), xmmword_1E09A0C10);
    v30 = vshrq_n_s64(vshlq_n_s64(vaddq_s64(v29, vcgeq_s64(vdupq_n_s64(v27), vshrq_n_s64(vshlq_n_s64(v29, 0x20uLL), 0x20uLL))), 0x20uLL), 0x1DuLL);
    v28 = *(v20 + v30.i64[0]);
    v88 = *(v20 + v30.i64[1]);
    v26 = *(v20 + 8 * (v22 - 3 - (v27 >= v22 - 3)));
  }

  if (Strides)
  {
    if (mlir::DenseElementsAttr::getNumElements(&Strides) == 3)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v102, Strides, 0);
      v31 = Strides;
      NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v100, v31, NumElements);
      if (v103 != v101)
      {
        v67 = 2;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v102, &v98);
          v68 = v99;
          if (v99 < 0x41)
          {
            *(&v106 + v67--) = v98;
          }

          else
          {
            v69 = v68 - llvm::APInt::countLeadingZerosSlowCase(&v98);
            v70 = v98;
            if (v69 <= 0x40)
            {
              *(&v106 + v67--) = *v98;
            }

            else
            {
              *(&v106 + v67--) = -1;
              if (!v70)
              {
                goto LABEL_67;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_67:
          ++v103;
        }

        while (v103 != v101);
      }
    }
  }

  if (InputAttributeNames)
  {
    if (mlir::DenseElementsAttr::getNumElements(&InputAttributeNames) == 3)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v102, InputAttributeNames, 0);
      v33 = InputAttributeNames;
      v34 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v100, v33, v34);
      if (v103 != v101)
      {
        v71 = 2;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v102, &v98);
          v72 = v99;
          if (v99 < 0x41)
          {
            *(&v104 + v71--) = v98;
          }

          else
          {
            v73 = v72 - llvm::APInt::countLeadingZerosSlowCase(&v98);
            v74 = v98;
            if (v73 <= 0x40)
            {
              *(&v104 + v71--) = *v98;
            }

            else
            {
              *(&v104 + v71--) = -1;
              if (!v74)
              {
                goto LABEL_76;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_76:
          ++v103;
        }

        while (v103 != v101);
      }
    }
  }

  if (Rewriter)
  {
    if (mlir::DenseElementsAttr::getNumElements(&Rewriter) == 6)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v102, Rewriter, 0);
      v35 = Rewriter;
      v36 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v100, v35, v36);
      if (v103 != v101)
      {
        v75 = 5;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v102, &v98);
          v76 = v99;
          if (v99 < 0x41)
          {
            *(&v115 + v75--) = v98;
          }

          else
          {
            v77 = v76 - llvm::APInt::countLeadingZerosSlowCase(&v98);
            v78 = v98;
            if (v77 <= 0x40)
            {
              *(&v115 + v75--) = *v98;
            }

            else
            {
              *(&v115 + v75--) = -1;
              if (!v78)
              {
                goto LABEL_85;
              }
            }

            MEMORY[0x1E12E5B60]();
          }

LABEL_85:
          ++v103;
        }

        while (v103 != v101);
      }
    }
  }

  if (v93 == 4)
  {
    v37 = v27 - v22 + 4;
    v38 = 24;
    if (v37 > 2)
    {
      v38 = 16;
    }

    v39 = *(v87 + v38);
    v40 = v37 <= 1;
    v41 = 8;
    if (v40)
    {
      v41 = 16;
    }

    v42 = *(v87 + v41);
    v43 = v40;
    v44 = v39 - 1;
    v45 = v42 - 1;
    v46 = *(v87 + 8 * v43) - 1;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
  }

  PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v111);
  v48 = v104 * v44 + 1;
  if (PaddingStyle)
  {
    if (PaddingStyle == 2 || PaddingStyle == 4)
    {
      v49 = v106;
      if (v28 % v106)
      {
        v49 = v28 % v106;
      }

      v50 = (v48 - v49) & ~((v48 - v49) >> 63);
      v51 = v50 >> 1;
      v52 = v50 - (v50 >> 1);
      if (PaddingStyle != 4)
      {
        v52 = v51;
      }

      v53 = v48 / 2 - v52;
      v54 = *(&v104 + 1) * v45 + 1;
    }

    else
    {
      v53 = v48 / 2;
      v54 = *(&v104 + 1) * v45 + 1;
    }

    if (PaddingStyle == 4 || PaddingStyle == 2)
    {
      v59 = *(&v106 + 1);
      if (v88 % *(&v106 + 1))
      {
        v59 = v88 % *(&v106 + 1);
      }

      v60 = (v54 - v59) & ~((v54 - v59) >> 63);
      v61 = v60 >> 1;
      v62 = v60 - (v60 >> 1);
      if (PaddingStyle != 4)
      {
        v62 = v61;
      }

      v55 = v54 / 2 - v62;
      v56 = v105 * v46 + 1;
    }

    else
    {
      v55 = v54 / 2;
      v56 = v105 * v46 + 1;
    }

    if (PaddingStyle == 4 || PaddingStyle == 2)
    {
      v63 = v107;
      if (v26 % v107)
      {
        v63 = v26 % v107;
      }

      v64 = (v56 - v63) & ~((v56 - v63) >> 63);
      v65 = v64 >> 1;
      v66 = v64 - (v64 >> 1);
      if (PaddingStyle == 4)
      {
        v58 = v66;
      }

      else
      {
        v58 = v65;
      }
    }

    else
    {
      v58 = 0;
    }

    v57 = v92;
  }

  else
  {
    v53 = v48 / 2 - *(&v115 + 1);
    v55 = (*(&v104 + 1) * v45 + 1) / 2 - *(&v116 + 1);
    v56 = v105 * v46 + 1;
    v57 = v92;
    v58 = *(&v117 + 1);
  }

  v79 = [objc_alloc(MEMORY[0x1E69746F8]) initWithDevice:v95];
  *&v102 = v53;
  *(&v102 + 1) = v55;
  v103 = v56 / 2 - v58;
  [v79 setWindowOffsets:&v102];
  v102 = v106;
  v103 = v107;
  [v79 setConvStrides:&v102];
  v102 = v104;
  v103 = v105;
  [v79 setConvDilationRates:&v102];
  [v79 setChannelAxis:v90 + ~v91];
  [v79 setOptions:{objc_msgSend(v79, "options") | 1}];

  if (*(v12 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v12 setReadCount:{objc_msgSend(v12, "readCount") + 1}];
  }

  v114[0] = v97;
  v114[1] = v12;
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:2];
  v81 = [v79 resultStateForSourceArrays:v80 sourceStates:0 destinationArray:v12];

  v82 = GPU::EncodeDescriptor::getcomputeEncoder(v57);
  v83 = *(v57 + 1);
  v113[0] = v97;
  v113[1] = v12;
  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:2];
  v85 = [MEMORY[0x1E695DFB0] null];
  v112[0] = v85;
  v112[1] = v12;
  v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:2];
  [v79 encodeGradientsToCommandEncoder:v82 commandBuffer:v83 sourceArrays:v84 sourceGradient:v96 gradientState:v81 destinationGradients:v86 kernelDAGObject:0];
}

unint64_t GPU::DepthwiseConv3DWeightsGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::DepthwiseConv2DOpHandler::~DepthwiseConv2DOpHandler(GPU::DepthwiseConv2DOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::DepthwiseConv2DDataGradientOpHandler::~DepthwiseConv2DDataGradientOpHandler(GPU::DepthwiseConv2DDataGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::DepthwiseConv2DWeightsGradientOpHandler::~DepthwiseConv2DWeightsGradientOpHandler(GPU::DepthwiseConv2DWeightsGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::DepthwiseConv3DOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v6 = 0;
  v7 = 0;
  if (GPU::DepthwiseConv3DOpHandler::getQuantizationParameters(v4, &v7, &v6))
  {
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v7, 0);
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v6, 0);
    MPSKernelDAG::binaryCoreOp();
    result = MPSKernelDAG::castOp();
  }

  else
  {
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v4 + 9) + 24), 0);
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v4 + 9) + 56), 0);
    result = MPSKernelDAG::binaryCoreOp();
  }

  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::DepthwiseConv3DOpHandler::~DepthwiseConv3DOpHandler(GPU::DepthwiseConv3DOpHandler *this)
{
  *this = &unk_1F5B43AC8;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B43AC8;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::DepthwiseConv3DDataGradientOpHandler::~DepthwiseConv3DDataGradientOpHandler(GPU::DepthwiseConv3DDataGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::DepthwiseConv3DWeightsGradientOpHandler::~DepthwiseConv3DWeightsGradientOpHandler(GPU::DepthwiseConv3DWeightsGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t mlir::detail::constant_float_predicate_matcher::match(mlir::detail::constant_float_predicate_matcher *this, mlir::Operation *a2)
{
  v31[3] = *MEMORY[0x1E69E9840];
  v4 = llvm::APFloatBase::Bogus(this);
  v5 = llvm::APFloatBase::PPCDoubleDouble(v4);
  if (v5 == v4)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v31, v4);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v31, v4);
  }

  v27 = v30;
  v28 = &v29;
  v29 = 0;
  if (!mlir::detail::constant_op_binder<mlir::Attribute>::match(&v28, a2) || ((v6 = *(*(*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 136), v6 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v7 = 1), !v7 ? (v8 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v8 = 1), !v8 ? (v9 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v9 = 1), !v9 ? (v10 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v10 = 1), !v10 ? (v11 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v11 = 1), !v11 ? (v12 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v12 = 1), !v12 ? (v13 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v13 = 1), !v13 ? (v14 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v14 = 1), !v14 ? (v15 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v15 = 1), !v15 ? (v16 = v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v16 = 1), !v16 ? (v17 = v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v17 = 1), !v17 ? (v18 = v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v18 = 1), !v18 ? (v19 = v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v19 = 1), !v19 ? (v20 = v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v20 = 1), !v20 ? (v21 = v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id) : (v21 = 1), !v21 ? (v22 = v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id) : (v22 = 1), !v22 ? (v23 = v6 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v23 = 1), !v23 ? (v24 = v6 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v24 = 1), !v24 || !mlir::detail::constant_float_value_binder::match(&v27, v29)))
  {
    v25 = 0;
    if (v5 == v31[0])
    {
      goto LABEL_63;
    }

LABEL_65:
    llvm::detail::IEEEFloat::~IEEEFloat(v31);
    return v25;
  }

  v25 = (*this)(v30);
  if (v5 != v31[0])
  {
    goto LABEL_65;
  }

LABEL_63:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v31);
  return v25;
}

void sub_1E0651160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  llvm::APFloat::~APFloat(va);
  _Unwind_Resume(a1);
}

GPU::ANERegionCallOpHandler *GPU::ANERegionCallOpHandler::ANERegionCallOpHandler(GPU::ANERegionCallOpHandler *this, GPU::BaseOpHandler *a2)
{
  v77[5] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  v3 = *(a2 + 1);
  *(this + 1) = v3;
  *this = &unk_1F5B43C48;
  *(this + 3) = 0u;
  v4 = (this + 48);
  v5 = this + 104;
  *(this + 11) = this + 104;
  v70 = (this + 88);
  *(this + 4) = 0;
  *(this + 4) = 0u;
  *(this + 12) = 0x400000000;
  v6 = this + 152;
  *(this + 17) = this + 152;
  v7 = (this + 136);
  *(this + 18) = 0x400000000;
  v71 = (this + 136);
  if ((*(v3 + 240) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v9 = *(this + 2);
  v8 = *(this + 3);
  *(this + 4) = v8;
  BaseCompiledProduct = GPU::ANEHelper::getBaseCompiledProduct(*(v9 + 600), v8);
  v11 = *(this + 2);
  if (!BaseCompiledProduct)
  {
    *(v11 + 216) = 0;
    return this;
  }

  *(this + 45) = *(*(v11 + 600) + 80);
  if (qword_1EE17DDC8 != -1)
  {
    dispatch_once(&qword_1EE17DDC8, &__block_literal_global);
  }

  v12 = dispatch_queue_create("com.apple.MPSANEQueue", 0);
  v13 = *v4;
  *v4 = v12;

  v14 = [objc_alloc(MEMORY[0x1E6974178]) initWithDispatchQueue:*v4];
  v15 = *(this + 7);
  *(this + 7) = v14;

  v69 = [*(*(this + 2) + 48) metalDevice];
  v16 = objc_alloc_init(MEMORY[0x1E696CE00]);
  v17 = *(this + 8);
  *(this + 8) = v16;

  v18 = [v69 newSharedEventWithMachPort:{objc_msgSend(*(this + 8), "eventPort")}];
  v19 = *(this + 9);
  *(this + 9) = v18;

  *(this + 10) = 0;
  *(this + 41) = _MergedGlobals_65;
  *(this + 42) = byte_1EE17DDC1;
  *(this + 40) = byte_1EE17DDC2;
  *(this + 43) = byte_1EE17DDC3;
  *(this + 44) = byte_1EE17DDC4;
  v20 = *(this + 4);
  if ((*(v20 + 46) & 0x80) == 0)
  {
    LODWORD(v22) = 0;
    v36 = 0;
    v37 = v75;
    __src = v75;
    v74 = 0x400000000;
    goto LABEL_23;
  }

  v21 = *(v20 + 72);
  v22 = *(v20 + 68);
  __src = v75;
  v74 = 0x400000000;
  if (v22 < 5)
  {
    if (!v22)
    {
      v36 = 0;
      v37 = v75;
      goto LABEL_23;
    }

    v23 = v75;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v75, v22, 8);
    v23 = __src + 8 * v74;
    if (v22 >= 0xD && (v23 >= v21 + 32 * v22 || v21 + 24 >= __src + 8 * v74 + 8 * v22))
    {
      v25 = v22 & 3;
      if ((v22 & 3) == 0)
      {
        v25 = 4;
      }

      v24 = v22 - v25;
      v26 = &v23[v24];
      v27 = (v21 + 88);
      v28 = (v23 + 2);
      v29 = v24;
      do
      {
        v30 = v27 - 8;
        v31 = vld4q_f64(v30);
        v32 = vld4q_f64(v27);
        *(v28 - 1) = v31;
        *v28 = v32;
        v27 += 16;
        v28 += 2;
        v29 -= 4;
      }

      while (v29);
      v23 = v26;
      goto LABEL_20;
    }
  }

  v24 = 0;
LABEL_20:
  v33 = v22 - v24;
  v34 = (v21 + 32 * v24 + 24);
  do
  {
    v35 = *v34;
    v34 += 4;
    *v23++ = v35;
    --v33;
  }

  while (v33);
  v36 = v74;
  v37 = __src;
LABEL_23:
  v38 = (v36 + v22);
  LODWORD(v74) = v38;
  if (v70 != &__src)
  {
    if (v37 != v75)
    {
      if (*v70 != v5)
      {
        free(*v70);
        v37 = __src;
        LODWORD(v38) = v74;
      }

      *(this + 11) = v37;
      v39 = HIDWORD(v74);
      *(this + 24) = v38;
      *(this + 25) = v39;
      __src = v75;
      HIDWORD(v74) = 0;
      goto LABEL_40;
    }

    v40 = *(this + 24);
    if (v40 >= v38)
    {
      if (v38)
      {
        memmove(*v70, v37, 8 * v38);
      }

      goto LABEL_39;
    }

    if (*(this + 25) >= v38)
    {
      if (v40)
      {
        memmove(*v70, v37, 8 * v40);
        goto LABEL_37;
      }
    }

    else
    {
      *(this + 24) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v70, v5, v38, 8);
    }

    v40 = 0;
LABEL_37:
    if (v74 != v40)
    {
      memcpy(*v70 + 8 * v40, __src + 8 * v40, 8 * (v74 - v40));
    }

LABEL_39:
    *(this + 24) = v38;
LABEL_40:
    LODWORD(v74) = 0;
    v37 = __src;
  }

  if (v37 != v75)
  {
    free(v37);
  }

  v41 = *(this + 4);
  v42 = *(v41 + 36);
  if (*(this + 37) < v42)
  {
    __src = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow(v7, v6, v42, 88, &__src);
    v44 = v43;
    std::__uninitialized_move[abi:ne200100]<GPU::ANERegionCallOpHandler::ResultInfo,GPU::ANERegionCallOpHandler::ResultInfo*,GPU::ANERegionCallOpHandler::ResultInfo*,GPU::ANERegionCallOpHandler::ResultInfo*,std::__always_false,GPU::ANERegionCallOpHandler::ResultInfo* std::uninitialized_move[abi:ne200100]<GPU::ANERegionCallOpHandler::ResultInfo*,GPU::ANERegionCallOpHandler::ResultInfo*>(GPU::ANERegionCallOpHandler::ResultInfo*,GPU::ANERegionCallOpHandler::ResultInfo*,GPU::ANERegionCallOpHandler::ResultInfo*)::{lambda(GPU::ANERegionCallOpHandler::ResultInfo*&&)#1}>(*(this + 17), *(this + 17) + 88 * *(this + 36), v43);
    v45 = *(this + 17);
    v46 = *(this + 36);
    if (v46)
    {
      v47 = &v45[88 * v46 - 56];
      v48 = -88 * v46;
      do
      {
        if (v47 + 2 != *v47)
        {
          free(*v47);
        }

        v47 -= 11;
        v48 += 88;
      }

      while (v48);
      v45 = *v7;
    }

    v49 = __src;
    if (v45 != v6)
    {
      free(v45);
    }

    *(this + 17) = v44;
    *(this + 37) = v49;
    v41 = *(this + 4);
    LODWORD(v42) = *(v41 + 36);
  }

  v50 = v41 - 16;
  if (v42)
  {
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  if (v42)
  {
    v52 = 0;
    v53 = v42;
    do
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v51, v52);
      v55 = 0;
      v72 = 0;
      v56 = *NextResultAtOffset;
      do
      {
        v57 = v56[2];
        if (v55 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*(*(v57 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
        {
          v58 = v57;
        }

        else
        {
          v58 = 0;
        }

        v72 = v58;
        if (!v58 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v56 = *v56;
        v55 = v72;
      }

      while (v56);
      __src = NextResultAtOffset;
      if (*(v72 + 9))
      {
        v59 = v72 - 16;
      }

      else
      {
        v59 = 0;
      }

      v74 = mlir::detail::OpResultImpl::getNextResultAtOffset(v59, 0);
      v75[0] = getMemRefRowBytes((NextResultAtOffset[1] & 0xFFFFFFFFFFFFFFF8));
      if (*(v72 + 9))
      {
        v60 = v72 - 16;
      }

      else
      {
        v60 = 0;
      }

      v61 = mlir::detail::OpResultImpl::getNextResultAtOffset(v60, 0);
      v75[1] = mlir::getElementTypeOrSelf(v61);
      mlir::placement::MemrefToTensor::getInputShapeAfterInterleave(&v72, &v76);
      v62 = *(this + 36);
      v63 = *(this + 17);
      if (v62 >= *(this + 37))
      {
        if (v63 <= &__src && v63 + 88 * v62 > &__src)
        {
          llvm::SmallVectorTemplateBase<GPU::ANERegionCallOpHandler::ResultInfo,false>::grow(v71, v62 + 1);
          v67 = &__src - v63;
          v63 = *v71;
          p_src = &v67[*v71];
          goto LABEL_79;
        }

        llvm::SmallVectorTemplateBase<GPU::ANERegionCallOpHandler::ResultInfo,false>::grow(v71, v62 + 1);
        v63 = *v71;
      }

      p_src = &__src;
LABEL_79:
      v65 = v63 + 88 * *(this + 36);
      v66 = *(p_src + 1);
      *v65 = *p_src;
      *(v65 + 16) = v66;
      *(v65 + 32) = v65 + 48;
      *(v65 + 40) = 0x500000000;
      if (*(p_src + 10))
      {
        llvm::SmallVectorImpl<unsigned long long>::operator=(v65 + 32, p_src + 4);
      }

      ++*(this + 36);
      if (v76 != v77)
      {
        free(v76);
      }

      ++v52;
    }

    while (v52 != v53);
  }

  return this;
}

void sub_1E06518AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, char **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  llvm::SmallVector<GPU::ANERegionCallOpHandler::ResultInfo,4u>::~SmallVector(a12);
  if (*a11 != v19)
  {
    free(*a11);
  }

  _Unwind_Resume(a1);
}

void ___ZN3GPU22ANERegionCallOpHandlerC2EPNS_13BaseOpHandlerE_block_invoke()
{
  if (getenv("MPSGRAPH_DISABLE_ANE_SHARED_EVENTS"))
  {
    NSLog(&cfstr_MpsgraphDisabl_2.isa);
    _MergedGlobals_65 = 1;
  }

  if (getenv("MPSGRAPH_ENABLE_ANE_SHARED_EVENTS"))
  {
    NSLog(&cfstr_MpsgraphEnable_0.isa);
    byte_1EE17DDC1 = 1;
  }

  if (getenv("MPSGRAPH_ENABLE_ANE_SYNC_RUN"))
  {
    NSLog(&cfstr_MpsgraphEnable_2.isa);
    byte_1EE17DDC2 = 1;
  }

  if (getenv("MPS_GRAPH_ENABLE_ANE_ERRORS_AS_FAILURES"))
  {
    NSLog(&cfstr_MpsGraphEnable_0.isa);
    byte_1EE17DDC3 = 1;
  }

  if (getenv("MPS_GRAPH_ENABLE_ANE_OVERFLOW_AS_FAILURES"))
  {
    NSLog(&cfstr_MpsGraphEnable_2.isa);
    byte_1EE17DDC4 = 1;
  }
}

void GPU::ANERegionCallOpHandler::checkAndResetSharedEvents(GPU::ANERegionCallOpHandler *this)
{
  if ((*(this + 10) + 3) <= 1)
  {
    v6 = [*(*(this + 2) + 48) metalDevice];
    v2 = objc_alloc_init(MEMORY[0x1E696CE00]);
    v3 = *(this + 8);
    *(this + 8) = v2;

    v4 = [v6 newSharedEventWithMachPort:{objc_msgSend(*(this + 8), "eventPort")}];
    v5 = *(this + 9);
    *(this + 9) = v4;

    *(this + 10) = 0;
  }
}

uint64_t *GPU::ANERegionCallOpHandler::getCurrentProcedureInfo(GPU::ANERegionCallOpHandler *this)
{
  v2 = (*(**(this + 2) + 96))(*(this + 2));
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *(v2 + 32);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 48);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = *(this + 4);
  v6 = *(v3 + 32);
  v7 = 0x9DDFEA08EB382D69 * ((8 * v5 - 0xAE502812AA7333) ^ HIDWORD(v5));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v7 >> 47) ^ v7);
  LODWORD(v7) = -348639895 * ((v8 >> 47) ^ v8);
  v9 = v4 - 1;
  v10 = v7 & (v4 - 1);
  v11 = (v6 + 352 * v10);
  v12 = *v11;
  if (*v11 != v5)
  {
    v15 = 1;
    v16 = *v11;
    v17 = v10;
    while (v16 != -4096)
    {
      v18 = v17 + v15++;
      v17 = v18 & v9;
      v16 = *(v6 + 352 * v17);
      if (v16 == v5)
      {
        v19 = 1;
        while (v12 != -4096)
        {
          v20 = v10 + v19++;
          v10 = v20 & v9;
          v11 = (v6 + 352 * (v20 & v9));
          v12 = *v11;
          if (*v11 == v5)
          {
            goto LABEL_5;
          }
        }

        v11 = (v6 + 352 * v4);
        goto LABEL_5;
      }
    }

LABEL_14:
    BaseCompiledProduct = GPU::ANEHelper::getBaseCompiledProduct(*(*(this + 2) + 600), *(this + 4));
    v22 = *(BaseCompiledProduct + 4);
    v23 = *(BaseCompiledProduct + 12);
    if (v23)
    {
      v24 = *(this + 4);
      v25 = 0x9DDFEA08EB382D69 * ((8 * v24 - 0xAE502812AA7333) ^ HIDWORD(v24));
      v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v25 >> 47) ^ v25);
      LODWORD(v25) = -348639895 * ((v26 >> 47) ^ v26);
      v27 = v23 - 1;
      v28 = v25 & (v23 - 1);
      v11 = (v22 + 352 * v28);
      v29 = *v11;
      if (*v11 == v24)
      {
LABEL_21:
        v13 = (v22 + 352 * v23);
        if (v11 == v13)
        {
          v32 = MTLReportFailureTypeEnabled();
          v11 = v13;
          if (v32)
          {
            goto LABEL_25;
          }
        }

        return v11 + 1;
      }

      v30 = 1;
      while (v29 != -4096)
      {
        v31 = v28 + v30++;
        v28 = v31 & v27;
        v11 = (v22 + 352 * (v31 & v27));
        v29 = *v11;
        if (*v11 == v24)
        {
          goto LABEL_21;
        }
      }
    }

    v11 = (v22 + 352 * v23);
    goto LABEL_21;
  }

LABEL_5:
  v13 = (v6 + 352 * v4);
  if (v11 != v13)
  {
    return v11 + 1;
  }

  v33 = MTLReportFailureTypeEnabled();
  v11 = v13;
  if ((v33 & 1) == 0)
  {
    return v11 + 1;
  }

LABEL_25:
  MTLReportFailure();
  return v13 + 1;
}

void GPU::ANERegionCallOpHandler::encodeSynchronous(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, char a6)
{
  v16 = a4;
  v11 = a5;
  if ((a6 & 1) == 0)
  {
    v12 = [*(a2 + 8) rootCommandBuffer];
    (**a2)(a2);
    [v12 waitUntilCompleted];
  }

  v13 = *a3;
  v14 = [MEMORY[0x1E698CDA0] requestWithInputs:v16 inputIndices:a3[14] outputs:v11 outputIndices:a3[15] weightsBuffer:0 perfStats:0 procedureIndex:a3[1] sharedEvents:0];
  v15 = [*(v13 + 16) mutableCopy];
  [v15 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E698CDE8]];

  [*v13 programHandle];
  kdebug_trace();
}

void GPU::anonymous namespace::evaluateModel(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, NSError *a7, int a8)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  if (v15)
  {
    if (a6)
    {
      v24 = 0;
      v19 = &v24;
      v20 = [v16 evaluateRealTimeWithModel:v15 options:v17 request:v18 error:&v24];
    }

    else
    {
      v23 = 0;
      v19 = &v23;
      v20 = [v16 evaluateWithModel:v15 options:v17 request:v18 qos:a5 error:&v23];
    }

    v22 = v20;
    v21 = *v19;
  }

  else
  {
    v21 = 0;
    v22 = 1;
  }
}

void GPU::ANERegionCallOpHandler::encodeAsynchronousWithIOFences(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, int a6)
{
  v11 = a4;
  v12 = a5;
  v29 = v12;
  v30 = v11;
  GPU::ANERegionCallOpHandler::checkAndResetSharedEvents(a1);
  v13 = *(a1 + 80);
  v14 = *(a2 + 8);
  v28 = v14;
  if ((a6 & 1) == 0)
  {
    ++v13;
    v15 = *(a1 + 72);
    ++*(a1 + 80);
    [v14 encodeSignalEvent:v15 value:v13];
  }

  v16 = *(a1 + 80) + 1;
  *(a1 + 80) = v16;
  v17 = *a3;
  v18 = [MEMORY[0x1E698CDA0] requestWithInputs:v11 inputIndices:a3[14] outputs:v12 outputIndices:a3[15] weightsBuffer:0 perfStats:0 procedureIndex:a3[1] sharedEvents:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 16) + 56));

  v20 = *(a1 + 72);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = ___ZN3GPU22ANERegionCallOpHandler30encodeAsynchronousWithIOFencesEPNS_16EncodeDescriptorERKNS_9ANEHelper13ProcedureInfoEP7NSArrayIP19_ANEIOSurfaceObjectESB_b_block_invoke;
  v37[3] = &unk_1E86D4938;
  v39 = a1;
  v21 = v20;
  v38 = v21;
  v40 = v16;
  v41 = WeakRetained;
  v42 = v17;
  [v18 setCompletionHandler:v37];
  v22 = [*(v17 + 16) mutableCopy];
  [v22 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E698CDE8]];
  if (a6)
  {
    v23 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN3GPU22ANERegionCallOpHandler30encodeAsynchronousWithIOFencesEPNS_16EncodeDescriptorERKNS_9ANEHelper13ProcedureInfoEP7NSArrayIP19_ANEIOSurfaceObjectESB_b_block_invoke_2;
    block[3] = &unk_1E86D4960;
    v36[1] = a1;
    v36[2] = v17;
    v24 = &v35;
    v35 = v22;
    v25 = v36;
    v36[0] = v18;
    dispatch_async(v23, block);
  }

  else
  {
    v26 = *(a1 + 72);
    v27 = *(a1 + 56);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = ___ZN3GPU22ANERegionCallOpHandler30encodeAsynchronousWithIOFencesEPNS_16EncodeDescriptorERKNS_9ANEHelper13ProcedureInfoEP7NSArrayIP19_ANEIOSurfaceObjectESB_b_block_invoke_3;
    v31[3] = &unk_1E86D4988;
    v33[1] = a1;
    v33[2] = v17;
    v32 = v22;
    v33[0] = v18;
    [v26 notifyListener:v27 atValue:v13 block:v31];
    v24 = &v32;
    v25 = v33;
  }

  [v28 encodeWaitForEvent:*(a1 + 72) value:v16];
}

void ___ZN3GPU22ANERegionCallOpHandler30encodeAsynchronousWithIOFencesEPNS_16EncodeDescriptorERKNS_9ANEHelper13ProcedureInfoEP7NSArrayIP19_ANEIOSurfaceObjectESB_b_block_invoke(uint64_t a1, GPU::_anonymous_namespace_ *a2, void *a3)
{
  v6 = a3;
  v5 = *(a1 + 40);
  [*(a1 + 32) setSignaledValue:*(a1 + 48)];
  [**(a1 + 64) programHandle];
  kdebug_trace();
}

void GPU::anonymous namespace::checkANEEvaluationStatus(GPU::_anonymous_namespace_ *this, void *a2, NSError *a3, int a4)
{
  v5 = a3;
  v6 = this;
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (v6)
  {
    goto LABEL_2;
  }

  if ([v7 code] == 5)
  {
    if (v5)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_2;
      }

LABEL_9:
      v9 = [v8 debugDescription];
      MTLReportFailure();

      goto LABEL_2;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 debugDescription];
      *buf = 138412290;
      v13 = v10;
      _os_log_impl(&dword_1DF9BF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ANE Overflow Error = %@", buf, 0xCu);
    }
  }

  else
  {
    if (a4)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_2;
      }

      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 debugDescription];
      *buf = 138412290;
      v13 = v11;
      _os_log_impl(&dword_1DF9BF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ANE Evaluation Error = %@", buf, 0xCu);
    }
  }

LABEL_2:
}

void sub_1E06526A0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1E06526B8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void GPU::ANERegionCallOpHandler::encodeAsynchronousWithSharedEvents(uint64_t a1, int8x8_t *a2, uint64_t *a3, void *a4, void *a5)
{
  v66[1] = *MEMORY[0x1E69E9840];
  v57 = a4;
  v58 = a5;
  GPU::ANERegionCallOpHandler::checkAndResetSharedEvents(a1);
  v56 = [*(*(a1 + 16) + 48) metalDevice];
  v9 = *(a1 + 80) + 1;
  *(a1 + 80) = v9;
  v60 = *&a2[1];
  if ((a2[12].i8[0] & 1) != 0 || ![*(*&a2[2] + 8) count])
  {
    [v60 encodeSignalEvent:*(a1 + 72) value:v9];
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v59 = *(a1 + 80) + 1;
  *(a1 + 80) = v59;
  v62 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v11 = [*&a2[1] rootCommandBuffer];
  v12 = v11;
  v13 = a2 + 4;
  v14 = 0x9DDFEA08EB382D69 * ((8 * (v11 & 0x1FFFFFFF) + 8) ^ HIDWORD(v11));
  v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v14 >> 47) ^ v14);
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  v17 = a2[5];
  v55 = v10;
  if (!*&v17)
  {
    goto LABEL_26;
  }

  v18 = vcnt_s8(v17);
  v18.i16[0] = vaddlv_u8(v18);
  if (v18.u32[0] > 1uLL)
  {
    v19 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
    if (v16 >= *&v17)
    {
      v19 = v16 % *&v17;
    }
  }

  else
  {
    v19 = (*&v17 - 1) & v16;
  }

  v20 = *(*v13 + 8 * v19);
  if (!v20 || (v21 = *v20) == 0)
  {
LABEL_26:
    operator new();
  }

  if (v18.u32[0] < 2uLL)
  {
    while (1)
    {
      v22 = v21[1];
      if (v22 == v16)
      {
        if (v21[2] == v11)
        {
          goto LABEL_27;
        }
      }

      else if ((v22 & (*&v17 - 1)) != v19)
      {
        goto LABEL_26;
      }

      v21 = *v21;
      if (!v21)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v23 = v21[1];
    if (v23 == v16)
    {
      break;
    }

    if (v23 >= *&v17)
    {
      v23 %= *&v17;
    }

    if (v23 != v19)
    {
      goto LABEL_26;
    }

LABEL_21:
    v21 = *v21;
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  if (v21[2] != v11)
  {
    goto LABEL_21;
  }

LABEL_27:
  v24 = v9;
  v25 = v21[3];
  if (v25)
  {
    p_isa = v25;
    v26 = 0x1E698C000;
    v27 = "m_demangle10ModuleNameE";
    if (!v55)
    {
      goto LABEL_53;
    }

    goto LABEL_29;
  }

  v30 = [[GraphANESharedEventHandler alloc] initWithDevice:v56];
  v31 = a2[5];
  p_isa = &v30->super.isa;
  if (!*&v31)
  {
    goto LABEL_51;
  }

  v32 = vcnt_s8(v31);
  v32.i16[0] = vaddlv_u8(v32);
  if (v32.u32[0] > 1uLL)
  {
    v33 = v16;
    if (v16 >= *&v31)
    {
      v33 = v16 % *&v31;
    }
  }

  else
  {
    v33 = (*&v31 - 1) & v16;
  }

  v34 = *(*v13 + 8 * v33);
  if (!v34 || (v35 = *v34) == 0)
  {
LABEL_51:
    operator new();
  }

  if (v32.u32[0] < 2uLL)
  {
    while (1)
    {
      v37 = v35[1];
      if (v37 == v16)
      {
        if (v35[2] == v12)
        {
          goto LABEL_52;
        }
      }

      else if ((v37 & (*&v31 - 1)) != v33)
      {
        goto LABEL_51;
      }

      v35 = *v35;
      if (!v35)
      {
        goto LABEL_51;
      }
    }
  }

  while (2)
  {
    v36 = v35[1];
    if (v36 != v16)
    {
      if (v36 >= *&v31)
      {
        v36 %= *&v31;
      }

      if (v36 != v33)
      {
        goto LABEL_51;
      }

      goto LABEL_41;
    }

    if (v35[2] != v12)
    {
LABEL_41:
      v35 = *v35;
      if (!v35)
      {
        goto LABEL_51;
      }

      continue;
    }

    break;
  }

LABEL_52:
  [v12 encodeSignalEventScheduled:v30->_sharedEvent value:1];

  v26 = 0x1E698C000uLL;
  v27 = "N4llvm16itanium_demangle10ModuleNameE" + 14;
  if (v55)
  {
LABEL_29:
    v28 = *(*&a2[2] + 8);
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = *(v27 + 473);
    v64[2] = ___ZN3GPU22ANERegionCallOpHandler34encodeAsynchronousWithSharedEventsEPNS_16EncodeDescriptorERKNS_9ANEHelper13ProcedureInfoEP7NSArrayIP19_ANEIOSurfaceObjectESB__block_invoke;
    v64[3] = &unk_1E86D48F0;
    v65 = v62;
    v29 = v28;
    [v29 enumerateObjectsUsingBlock:v64];

    goto LABEL_54;
  }

LABEL_53:
  v29 = [*(v26 + 3512) waitEventWithValue:v24 sharedEvent:*(a1 + 64) eventType:0];
  [v62 addObject:v29];
LABEL_54:

  if ([*(*&a2[2] + 24) count])
  {
    v38 = [*(*&a2[2] + 24) objectAtIndexedSubscript:0];
    v39 = *(v38 + 8);
    v40 = [v39 newSharedEventHandle];
    v41 = [v40 eventPort];
    v42 = [objc_alloc(MEMORY[0x1E696CE00]) initWithMachPort:v41];
    v43 = [*(v26 + 3512) waitEventWithValue:*(v38 + 16) sharedEvent:v42 eventType:1];
    [v62 addObject:v43];
  }

  else
  {
    v42 = p_isa[1];
    v38 = [*(v26 + 3512) waitEventWithValue:1 sharedEvent:v42 eventType:1];
    [v62 addObject:v38];
  }

  v44 = p_isa[1];
  v45 = [*(v26 + 3512) waitEventWithValue:1 sharedEvent:v44 eventType:2];
  [v62 addObject:v45];
  v46 = [MEMORY[0x1E698CDB0] signalEventWithValue:v59 symbolIndex:0 eventType:0 sharedEvent:*(a1 + 64)];
  v47 = v46;
  if (*(a1 + 45) == 1)
  {
    [v46 setAgentMask:6];
  }

  v48 = MEMORY[0x1E698CDA8];
  v66[0] = v47;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
  v50 = [v48 sharedEventsWithSignalEvents:v49 waitEvents:v62];

  v51 = *a3;
  v52 = [MEMORY[0x1E698CDA0] requestWithInputs:v57 inputIndices:a3[14] outputs:v58 outputIndices:a3[15] weightsBuffer:0 perfStats:0 procedureIndex:a3[1] sharedEvents:v50];
  WeakRetained = objc_loadWeakRetained((*(a1 + 16) + 56));

  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = ___ZN3GPU22ANERegionCallOpHandler34encodeAsynchronousWithSharedEventsEPNS_16EncodeDescriptorERKNS_9ANEHelper13ProcedureInfoEP7NSArrayIP19_ANEIOSurfaceObjectESB__block_invoke_2;
  v63[3] = &__block_descriptor_56_e20_v20__0B8__NSError_12l;
  v63[4] = a1;
  v63[5] = WeakRetained;
  v63[6] = v51;
  [v52 setCompletionHandler:v63];
  [v60 encodeWaitForEvent:*(a1 + 72) value:v59];
  v54 = [*(v51 + 16) mutableCopy];
  [v54 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E698CDE8]];
}

void sub_1E0653270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](v19 - 128);

  _Unwind_Resume(a1);
}

void ___ZN3GPU22ANERegionCallOpHandler34encodeAsynchronousWithSharedEventsEPNS_16EncodeDescriptorERKNS_9ANEHelper13ProcedureInfoEP7NSArrayIP19_ANEIOSurfaceObjectESB__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5[1] IOSurfaceSharedEvent];
  v4 = [MEMORY[0x1E698CDB8] waitEventWithValue:v5[2] sharedEvent:v3 eventType:0];
  [*(a1 + 32) addObject:v4];
}

void ___ZN3GPU22ANERegionCallOpHandler34encodeAsynchronousWithSharedEventsEPNS_16EncodeDescriptorERKNS_9ANEHelper13ProcedureInfoEP7NSArrayIP19_ANEIOSurfaceObjectESB__block_invoke_2(uint64_t a1, GPU::_anonymous_namespace_ *a2, void *a3)
{
  v5 = a3;
  [**(a1 + 48) programHandle];
  kdebug_trace();
}

void GPU::ANERegionCallOpHandler::encodeOpWithInputsAndOutputs(uint64_t a1, int8x8_t *a2, uint64_t *a3, void *a4, void *a5, int a6, int a7)
{
  v14 = a4;
  v13 = a5;
  if (([*&a2[2] compilationOnly] & 1) == 0)
  {
    if (a6 == 2)
    {
      GPU::ANERegionCallOpHandler::encodeAsynchronousWithSharedEvents(a1, a2, a3, v14, v13);
    }

    else if (a6 == 1)
    {
      GPU::ANERegionCallOpHandler::encodeAsynchronousWithIOFences(a1, a2, a3, v14, v13, a7);
    }

    else
    {
      GPU::ANERegionCallOpHandler::encodeSynchronous(a1, a2, a3, v14, v13, a7);
    }
  }
}

void GPU::ANERegionCallOpHandler::encodeOp(GPU::ANERegionCallOpHandler *this, int8x8_t *a2)
{
  CurrentProcedureInfo = GPU::ANERegionCallOpHandler::getCurrentProcedureInfo(this);
  WeakRetained = objc_loadWeakRetained((*(this + 2) + 56));
  v48 = CurrentProcedureInfo;
  v6 = **CurrentProcedureInfo;
  if (v6)
  {
    [v6 programHandle];
  }

  kdebug_trace();

  v7 = a2[9];
  if (v7)
  {
    [v7 endEncoding];
    v8 = a2[9];
    a2[9] = 0;
  }

  v45 = a2;
  v47 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(CurrentProcedureInfo[14], "count")}];
  v9 = *(CurrentProcedureInfo + 6);
  if (v9)
  {
    v10 = CurrentProcedureInfo[2];
    v11 = 8 * v9;
    do
    {
      v12 = (*(**(this + 2) + 48))(*(this + 2), *(*(this + 11) + 8 * *v10), 0);
      v13 = [MEMORY[0x1E698CD60] objectWithIOSurface:{objc_msgSend(v12, "iosurface")}];
      if (!v13 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      [v47 addObject:v13];

      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  v46 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v48[15], "count")}];
  v14 = *(v48 + 18);
  if (v14)
  {
    v15 = 0;
    v16 = v48[8];
    for (i = 8 * v14; i; i -= 8)
    {
      v18 = *(v16 + 8 * v15);
      v19 = *(this + 17);
      v20 = [v48[24] objectAtIndexedSubscript:v15];
      v21 = [v20 isEqual:MEMORY[0x1E695E118]];
      v22 = v19 + 88 * v18;

      v23 = (*(**(this + 2) + 80))(*(this + 2), *(v22 + 8), *&v45[1], 1, 0, 64);
      v24 = [v23 mpsndarray];
      v25 = v24;
      v26 = *(v24 + *MEMORY[0x1E6974500]) & 0x3FLL;
      if (((v26 == 0) & v21) == 1)
      {
        v27 = [v23[13] buffer];
        v28 = [v27 gpuAddress] & 0x3FFF;

        if (v28)
        {
          goto LABEL_18;
        }
      }

      else
      {

        if (v26)
        {
LABEL_18:
          v30 = MEMORY[0x1E6974490];
          MPSDataType = getMPSDataType(*(v22 + 24));
          v32 = getMPSShapeFromMLIR(*(v22 + 32), *(v22 + 40));
          v33 = [v30 descriptorWithDataType:MPSDataType shape:v32];

          *(v33 + *MEMORY[0x1E6974548]) = *(v22 + 16);
          if (v21)
          {
            memptr = 0;
            v35 = GPU::calculateNDArrayAllocationSize(v33, v34);
            if (malloc_type_posix_memalign(&memptr, 0x4000uLL, v35, 0x44928E4FuLL))
            {
              v36 = 1;
            }

            else
            {
              v36 = memptr == 0;
            }

            if (v36 && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            v37 = [*(*(this + 2) + 48) metalDevice];
            v38 = [v37 newBufferWithBytesNoCopy:memptr length:v35 options:0 deallocator:&__block_literal_global_150];

            v39 = [objc_alloc(MEMORY[0x1E6974488]) initWithBuffer:v38 descriptor:v33];
          }

          else
          {
            v40 = objc_alloc(MEMORY[0x1E6974488]);
            v38 = [*(*(this + 2) + 48) metalDevice];
            v39 = [v40 initWithDevice:v38 descriptor:v33];
          }

          v41 = v39;

          v42 = [[MPSGraphTensorData alloc] initWithMPSNDArray:v41 device:*(*(this + 2) + 48)];
          BaseRuntime::setTensorDataToDataMap(*(this + 2), *v22, v42);
          v29 = [MEMORY[0x1E698CD60] objectWithIOSurface:{-[MPSGraphTensorData iosurface](v42, "iosurface")}];

          goto LABEL_26;
        }
      }

      v29 = [MEMORY[0x1E698CD60] objectWithIOSurface:{objc_msgSend(v23, "iosurface")}];
LABEL_26:
      if (!v29 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      [v46 addObject:v29];

      ++v15;
    }
  }

  if ([*&v45[2] encodeANESync])
  {
    v43 = 0;
    if (*(this + 42))
    {
LABEL_35:
      v44 = 2;
      goto LABEL_45;
    }
  }

  else
  {
    if ([*&v45[2] encodeANEDisableSharedEvents])
    {
      v43 = 1;
    }

    else
    {
      v43 = 2;
    }

    if (*(this + 42))
    {
      goto LABEL_35;
    }
  }

  if (*(this + 40))
  {
    v44 = 0;
  }

  else if (*(this + 41))
  {
    v44 = 1;
  }

  else
  {
    v44 = v43;
  }

LABEL_45:
  GPU::ANERegionCallOpHandler::encodeOpWithInputsAndOutputs(this, v45, v48, v47, v46, v44, 0);
}

void GPU::ANERegionCallOpHandler::~ANERegionCallOpHandler(GPU::ANERegionCallOpHandler *this)
{
  GPU::ANERegionCallOpHandler::~ANERegionCallOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

{
  *this = &unk_1F5B43C48;
  v2 = *(this + 17);
  v3 = *(this + 36);
  if (v3)
  {
    v4 = &v2[88 * v3 - 56];
    v5 = -88 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 11;
      v5 += 88;
    }

    while (v5);
    v2 = *(this + 17);
  }

  if (v2 != this + 152)
  {
    free(v2);
  }

  v6 = *(this + 11);
  if (v6 != this + 104)
  {
    free(v6);
  }
}

char **llvm::SmallVector<GPU::ANERegionCallOpHandler::ResultInfo,4u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[88 * v3 - 56];
    v5 = -88 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 11;
      v5 += 88;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<GPU::ANERegionCallOpHandler::ResultInfo,false>::grow(uint64_t a1, unint64_t a2)
{
  v11 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 88, &v11);
  v5 = v4;
  std::__uninitialized_move[abi:ne200100]<GPU::ANERegionCallOpHandler::ResultInfo,GPU::ANERegionCallOpHandler::ResultInfo*,GPU::ANERegionCallOpHandler::ResultInfo*,GPU::ANERegionCallOpHandler::ResultInfo*,std::__always_false,GPU::ANERegionCallOpHandler::ResultInfo* std::uninitialized_move[abi:ne200100]<GPU::ANERegionCallOpHandler::ResultInfo*,GPU::ANERegionCallOpHandler::ResultInfo*>(GPU::ANERegionCallOpHandler::ResultInfo*,GPU::ANERegionCallOpHandler::ResultInfo*,GPU::ANERegionCallOpHandler::ResultInfo*)::{lambda(GPU::ANERegionCallOpHandler::ResultInfo*&&)#1}>(*a1, *a1 + 88 * *(a1 + 8), v4);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = &v6[88 * v7 - 56];
    v9 = -88 * v7;
    do
    {
      if (v8 + 2 != *v8)
      {
        free(*v8);
      }

      v8 -= 11;
      v9 += 88;
    }

    while (v9);
    v6 = *a1;
  }

  v10 = v11;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v10;
}

uint64_t std::__uninitialized_move[abi:ne200100]<GPU::ANERegionCallOpHandler::ResultInfo,GPU::ANERegionCallOpHandler::ResultInfo*,GPU::ANERegionCallOpHandler::ResultInfo*,GPU::ANERegionCallOpHandler::ResultInfo*,std::__always_false,GPU::ANERegionCallOpHandler::ResultInfo* std::uninitialized_move[abi:ne200100]<GPU::ANERegionCallOpHandler::ResultInfo*,GPU::ANERegionCallOpHandler::ResultInfo*>(GPU::ANERegionCallOpHandler::ResultInfo*,GPU::ANERegionCallOpHandler::ResultInfo*,GPU::ANERegionCallOpHandler::ResultInfo*)::{lambda(GPU::ANERegionCallOpHandler::ResultInfo*&&)#1}>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = v5 + v6;
      v8 = a3 + v6;
      v9 = *(v5 + v6 + 16);
      *v8 = *(v5 + v6);
      *(v8 + 16) = v9;
      *(v8 + 40) = 0x500000000;
      *(v8 + 32) = a3 + v6 + 48;
      result = a3 + v6 + 32;
      if (*(v5 + v6 + 40))
      {
        result = llvm::SmallVectorImpl<unsigned long long>::operator=(result, (v7 + 32));
      }

      v6 += 88;
    }

    while (v7 + 88 != a2);
  }

  return result;
}

void sub_1E06540A4(void *a1)
{
  v4 = *(v1 + v2 + 32);
  if ((v1 + v2 + 48) != v4)
  {
    free(v4);
  }

  __cxa_begin_catch(a1);
  if (v2)
  {
    v5 = (v1 + 48);
    do
    {
      v6 = *(v5 - 2);
      if (v5 != v6)
      {
        free(v6);
      }

      v5 += 11;
      v2 -= 88;
    }

    while (v2);
  }

  __cxa_rethrow();
}

void sub_1E0654E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  ScopedMPSSignpost::~ScopedMPSSignpost(&a27);
  _Unwind_Resume(a1);
}

BOOL validateLayout(MPSGraphTensor *a1, MPSGraphTensorNamedDataLayout a2, MPSGraphTensorNamedDataLayout *a3, int a4)
{
  v7 = [(MPSGraphTensor *)a1 shape];
  v8 = [v7 count];

  if (a4 < 1)
  {
    return 0;
  }

  v9 = a4;
  while (1)
  {
    v10 = *a3++;
    if (v10 == a2)
    {
      break;
    }

    if (!--v9)
    {
      return 0;
    }
  }

  if (!v8)
  {
    return 1;
  }

  if (a2 >= MPSGraphTensorNamedDataLayoutNCDHW)
  {
    v13 = MTLReportFailureTypeEnabled();
    v12 = 0;
    if (v13)
    {
      MTLReportFailure();
      v12 = 0;
    }
  }

  else
  {
    v12 = qword_1E09A0E88[a2];
  }

  return v8 == v12;
}

void ScopedMPSSignpost::~ScopedMPSSignpost(ScopedMPSSignpost *this)
{
  kdebug_trace();
}

{
  kdebug_trace();
}

void *EmitterObjC::QuantizationGenericOpHandler<mlir::mps::QuantizeOp,true>::QuantizationGenericOpHandler(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = a2;
  a1[2] = a3;
  *a1 = &unk_1F5B43D80;
  v44 = a3;
  v6 = *(*(a3 + 72) + 24);
  if (*(a3 + 36))
  {
    v7 = a3 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(a3 + 72);
  v10 = *(v9 + 56);
  v11 = *(v9 + 88);
  FunctionType = mlir::func::FuncOp::getFunctionType(&v44);
  MPSDataType = getMPSDataType(FunctionType);
  EmitterObjC::emitMPSDataType(MPSDataType, v42);
  Axis = mlir::mps::DequantizeLUTOp::getAxis(&v44);
  if ((Axis & 0x100000000) != 0)
  {
    v15 = Axis;
  }

  else
  {
    v15 = 0;
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = v40;
  (*(*a2 + 32))(v40, a2, NextResultAtOffset);
  if (v41 < 0)
  {
    v17 = v40[0];
  }

  v39 = v6;
  __p.__r_.__value_.__r.__words[0] = &v39;
  v18 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a2 + 256), &v39);
  v19 = v18 + 3;
  if (*(v18 + 47) < 0)
  {
    v19 = *v19;
  }

  v38 = v10;
  __p.__r_.__value_.__r.__words[0] = &v38;
  v20 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a2 + 256), &v38);
  v21 = v20 + 3;
  if (*(v20 + 47) < 0)
  {
    v21 = *v21;
  }

  v37 = v11;
  __p.__r_.__value_.__r.__words[0] = &v37;
  v22 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a2 + 256), &v37);
  v23 = v22 + 3;
  v33 = a1;
  v24 = v17;
  if (*(v22 + 47) < 0)
  {
    v23 = *v23;
  }

  v25 = v43;
  v26 = v42[0];
  v35 = 0;
  LOBYTE(v34) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v34, &__p);
  v27 = v42;
  if (v25 < 0)
  {
    v27 = v26;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v29 = [v16 stringWithFormat:@"\n        MPSGraphTensor *%s = \n        [graph               %s:%s\n                    scaleTensor:%s\n                zeroPointTensor:%s\n                    dataType:%s\n                        axis:%d\n                        name:%s]\n        ", v24, "quantizeTensor", v19, v21, v23, v27, v15, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_27:
    operator delete(v34);
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_28;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v35 < 0)
  {
    goto LABEL_27;
  }

LABEL_22:
  if ((v41 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

LABEL_28:
  operator delete(v40[0]);
LABEL_23:
  v30 = [*(a2 + 216) stringByAppendingString:v29];
  v31 = *(a2 + 216);
  *(a2 + 216) = v30;

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  return v33;
}

void sub_1E0655998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if ((*(v40 - 105) & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(*(v40 - 128));
  _Unwind_Resume(a1);
}

void *EmitterObjC::QuantizationGenericOpHandler<mlir::mps::DequantizeOp,false>::QuantizationGenericOpHandler(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  a1[1] = a2;
  a1[2] = a3;
  *a1 = &unk_1F5B43D98;
  v72 = a3;
  v6 = *(*(a3 + 72) + 24);
  if (*(a3 + 36))
  {
    v7 = a3 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(*(a3 + 72) + 56);
  v10 = getMPSShapeFromMLIR(v9);
  v11 = *(*(a3 + 72) + 88);
  v58 = v10;
  FunctionType = mlir::func::FuncOp::getFunctionType(&v72);
  MPSDataType = getMPSDataType(FunctionType);
  v14 = MPSDataType;
  EmitterObjC::emitMPSDataType(MPSDataType, v70);
  Axis = mlir::mps::DequantizeLUTOp::getAxis(&v72);
  if ((Axis & 0x100000000) != 0)
  {
    v16 = Axis;
  }

  else
  {
    v16 = 0;
  }

  if ((v14 & 0xDFFFFFFF) == 4)
  {
    **(a2 + 312) = 1;
  }

  if ([v10 count] < 2)
  {
    v57 = v16;
    v32 = MEMORY[0x1E696AEC0];
    v33 = v68;
    (*(*a2 + 32))(v68, a2, NextResultAtOffset);
    if (v69 < 0)
    {
      v33 = v68[0];
    }

    v67 = v6;
    __p.__r_.__value_.__r.__words[0] = &v67;
    v34 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a2 + 256), &v67);
    v35 = v34 + 3;
    if (*(v34 + 47) < 0)
    {
      v35 = *v35;
    }

    v66 = v9;
    __p.__r_.__value_.__r.__words[0] = &v66;
    v36 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a2 + 256), &v66);
    v37 = v36 + 3;
    if (*(v36 + 47) < 0)
    {
      v37 = *v37;
    }

    v65 = v11;
    __p.__r_.__value_.__r.__words[0] = &v65;
    v38 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a2 + 256), &v65);
    v39 = NextResultAtOffset;
    v40 = v38 + 3;
    v41 = v35;
    v42 = v33;
    if (*(v38 + 47) < 0)
    {
      v40 = *v40;
    }

    v43 = v71;
    v44 = v70[0];
    v60 = 0;
    LOBYTE(v59) = 0;
    EmitObjC::emitTensorName(a2, v39, &v59, &__p);
    v45 = v70;
    if (v43 < 0)
    {
      v45 = v44;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v47 = [v32 stringWithFormat:@"\n            MPSGraphTensor *%s = \n            [graph               %s:%s\n                        scaleTensor:%s\n                    zeroPointTensor:%s\n                        dataType:%s\n                            axis:%d\n                            name:%s]\n            ", v42, "dequantizeTensor", v41, v37, v40, v45, v57, p_p];;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v60 & 0x80000000) == 0)
      {
        goto LABEL_49;
      }
    }

    else if ((v60 & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    v52 = v59;
  }

  else
  {
    v17 = *(*(v72 + 72) + 120);
    v18 = NextResultAtOffset;
    v19 = MEMORY[0x1E696AEC0];
    v20 = v68;
    v56 = v18;
    (*(*a2 + 32))(v68, a2);
    if (v69 < 0)
    {
      v20 = v68[0];
    }

    v67 = v6;
    __p.__r_.__value_.__r.__words[0] = &v67;
    v21 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a2 + 256), &v67);
    v22 = v21 + 3;
    if (*(v21 + 47) < 0)
    {
      v22 = *v22;
    }

    v66 = v9;
    __p.__r_.__value_.__r.__words[0] = &v66;
    v23 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a2 + 256), &v66);
    v24 = v23 + 3;
    if (*(v23 + 47) < 0)
    {
      v24 = *v24;
    }

    v65 = v11;
    __p.__r_.__value_.__r.__words[0] = &v65;
    v25 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a2 + 256), &v65);
    v26 = v25 + 3;
    if (*(v25 + 47) < 0)
    {
      v26 = *v26;
    }

    v64 = v17;
    __p.__r_.__value_.__r.__words[0] = &v64;
    v27 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a2 + 256), &v64);
    v28 = v5;
    v29 = v27 + 3;
    v30 = v22;
    v31 = v20;
    if (*(v27 + 47) < 0)
    {
      v29 = *v29;
    }

    v48 = v71;
    v49 = v70[0];
    v62 = 0;
    LOBYTE(v61) = 0;
    EmitObjC::emitTensorName(a2, v56, &v61, &__p);
    v50 = v70;
    if (v48 < 0)
    {
      v50 = v49;
    }

    v51 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v51 = __p.__r_.__value_.__r.__words[0];
    }

    v47 = [v19 stringWithFormat:@"\n            MPSGraphTensor *%s = \n            [graph               %s:%s\n                        scaleTensor:%s\n                    zeroPointTensor:%s\n                        minTensor:%s\n                        dataType:%s\n                            name:%s]\n            ", v31, "dequantizeTensor", v30, v24, v26, v29, v50, v51];;
    v10 = v58;
    v5 = v28;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v62 & 0x80000000) == 0)
      {
        goto LABEL_49;
      }
    }

    else if ((v62 & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    v52 = v61;
  }

  operator delete(v52);
LABEL_49:
  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  v53 = [*(a2 + 216) stringByAppendingString:v47];
  v54 = *(a2 + 216);
  *(a2 + 216) = v53;

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  return v5;
}

void sub_1E0655F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v36 - 129) < 0)
  {
    operator delete(*(v36 - 152));
    if ((*(v36 - 105) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v36 - 105) & 0x80000000) == 0)
  {
LABEL_7:

    _Unwind_Resume(a1);
  }

  operator delete(*(v36 - 128));

  _Unwind_Resume(a1);
}

void sub_1E0656040()
{
  if (*(v0 - 105) < 0)
  {
    JUMPOUT(0x1E0656028);
  }

  JUMPOUT(0x1E0656010);
}

void sub_1E065606C()
{
  if (*(v1 - 105) < 0)
  {
    JUMPOUT(0x1E0656028);
  }

  JUMPOUT(0x1E0656010);
}

void EmitObjC::emitTensorName(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  *(&v24.__r_.__value_.__s + 23) = 2;
  strcpy(&v24, "@");
  v23 = a2;
  *__s = &v23;
  v6 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a1 + 256), &v23);
  v9 = v6[3];
  v7 = (v6 + 3);
  v8 = v9;
  v10 = v7[23];
  if (v10 >= 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  if (v10 >= 0)
  {
    v12 = *(v7 + 23);
  }

  else
  {
    v12 = *(v7 + 1);
  }

  v13 = std::string::append(&v24, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *a3;
  }

  if (v15 >= 0)
  {
    v17 = *(a3 + 23);
  }

  else
  {
    v17 = *(a3 + 8);
  }

  v18 = std::string::append(&v25, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v22 = 1;
  strcpy(__s, "");
  v20 = std::string::append(&v26, __s, 1uLL);
  *a4 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v22 < 0)
  {
    operator delete(*__s);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v26.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v24.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(v25.__r_.__value_.__l.__data_);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_1E0656214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((*(v28 - 25) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v28 - 25) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v28 - 48));
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a22 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a23);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(a17);
  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(void *a1, uint64_t *a2)
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

void sub_1E0656600(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<void *,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void *,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<std::__hash_node<std::__hash_value_type<void *,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void *,std::string>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 47) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 24));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t MILToMLIR::PoolingPattern::matchAndRewrite(MILToMLIR::PoolingPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  MILToMLIRRewriter::getLocationForOp(a3, a2);
  v37[2] = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) != 1)
  {
    operator new();
  }

  v5 = (*(*a2 + 160))(a2);
  v37[0] = 0;
  v37[1] = 0;
  v36 = v37;
  v6 = v5 + 1;
  v7 = *v5;
  if (*v5 == (v5 + 1))
  {
    goto LABEL_44;
  }

  do
  {
    if (!*std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__find_equal<std::string>(&v36, v37, &__s1, v34, v7 + 4))
    {
      std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__construct_node<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>> const&>();
    }

    v8 = v7[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = v7[2];
        v10 = *v9 == v7;
        v7 = v9;
      }

      while (!v10);
    }

    v7 = v9;
  }

  while (v9 != v6);
  v11 = v37[0];
  v39 = 1;
  LOWORD(__s2) = 120;
  if (!v37[0])
  {
    goto LABEL_44;
  }

  v12 = v37;
  do
  {
    v13 = v12;
    v14 = (v11 + 32);
    v15 = v11[55];
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v11 + 5);
    }

    if (v16 >= 0)
    {
      v17 = v11 + 32;
    }

    else
    {
      v17 = *(v11 + 4);
    }

    v18 = v15 == 0;
    v19 = memcmp(v17, &__s2, v15 != 0);
    v20 = v19 < 0;
    if (!v19)
    {
      v20 = v18;
    }

    if (v20)
    {
      v21 = 8;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v12 = v13;
    }

    else
    {
      v12 = v11;
    }

    v11 = *&v11[v21];
  }

  while (v11);
  if (v12 == v37)
  {
    goto LABEL_44;
  }

  if (v20)
  {
    v22 = (v13 + 4);
  }

  else
  {
    v22 = v14;
  }

  v23 = *(v12 + 55);
  if (v23 >= 0)
  {
    v24 = *(v12 + 55);
  }

  else
  {
    v24 = v12[5];
  }

  if (v23 >= 0)
  {
    v25 = v22;
  }

  else
  {
    v25 = *v22;
  }

  v26 = memcmp(&__s2, v25, v24 != 0);
  v27 = v24 > 1;
  if (v26)
  {
    v27 = v26 < 0;
  }

  if (v27)
  {
LABEL_44:
    operator new();
  }

  if (v12[8] - v12[7] != 16)
  {
    operator new();
  }

  v39 = 1;
  LOWORD(__s2) = 120;
  ParameterType = MIL::IROperation::GetParameterType();
  if (v39 < 0)
  {
    v31 = ParameterType;
    operator delete(__s2);
    ParameterType = v31;
  }

  v32 = MIL::IRValueType::AsTensorType(ParameterType);
  v33 = MIL::IRTensorValueType::Rank(v32);
  if (v33 <= 2)
  {
    operator new();
  }

  if ((v33 - 3) < 3)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__s2, "Pooling is only supported for inputs of rank 3, 4, or 5");
  v28 = MILToMLIRRewriter::notifyFailure(a3, a2, &__s2);
  if (v39 < 0)
  {
    operator delete(__s2);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&v36, v37[0]);
  return v28;
}

void sub_1E0657BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  operator delete(a20);
  operator delete(v45);
  if (*(v46 - 177) < 0)
  {
    operator delete(*(v46 - 200));
  }

  v48 = *(v46 - 120);
  operator delete(v44);
  if (v48)
  {
    operator delete(v48);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(v46 - 152, *(v46 - 144));
  _Unwind_Resume(a1);
}

void MILToMLIR::PoolingPattern::~PoolingPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::string::find[abi:ne200100](char **a1, char *__s)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v3 = *a1;
    v4 = a1[1];
  }

  result = strlen(__s);
  if (result)
  {
    v6 = result;
    v7 = &v3[v4];
    if (v4 >= result)
    {
      v9 = *__s;
      v10 = v3;
      do
      {
        if (v4 - v6 == -1)
        {
          break;
        }

        v11 = memchr(v10, v9, v4 - v6 + 1);
        if (!v11)
        {
          break;
        }

        v8 = v11;
        if (!memcmp(v11, __s, v6))
        {
          goto LABEL_6;
        }

        v10 = v8 + 1;
        v4 = v7 - (v8 + 1);
      }

      while (v4 >= v6);
    }

    v8 = v7;
LABEL_6:
    if (v8 == v7)
    {
      return -1;
    }

    else
    {
      return v8 - v3;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PoolAvgOp,mlir::Value &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyle &,mlir::DenseIntElementsAttr,BOOL &,BOOL &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned int *a7, uint64_t *a8, char *a9, char *a10)
{
  v30[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolAvgOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    v28 = 1283;
    v27[2] = "mps.pooling_average";
    v27[3] = 19;
    v26 = 259;
    llvm::operator+(v27, &v25, v29);
    llvm::report_fatal_error(v29, 1);
  }

  mlir::OperationState::OperationState(v30, a2, v19);
  mlir::mps::PoolAvgOp::build(a1, v30, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10);
  v21 = mlir::OpBuilder::create(a1, v30);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PoolAvgOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v30);
  return v22;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PoolMaxOp,mlir::Value &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyle &,mlir::DenseIntElementsAttr,BOOL &,BOOL &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned int *a7, uint64_t *a8, char *a9, char *a10)
{
  v30[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolMaxOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    v28 = 1283;
    v27[2] = "mps.pooling_max";
    v27[3] = 15;
    v26 = 259;
    llvm::operator+(v27, &v25, v29);
    llvm::report_fatal_error(v29, 1);
  }

  mlir::OperationState::OperationState(v30, a2, v19);
  mlir::mps::PoolMaxOp::build(a1, v30, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10);
  v21 = mlir::OpBuilder::create(a1, v30);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PoolMaxOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v30);
  return v22;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PoolL2NormOp,mlir::Value &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyle &,mlir::DenseIntElementsAttr,BOOL &,BOOL &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned int *a7, uint64_t *a8, char *a9, char *a10)
{
  v30[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolL2NormOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    v28 = 1283;
    v27[2] = "mps.pooling_l2_norm";
    v27[3] = 19;
    v26 = 259;
    llvm::operator+(v27, &v25, v29);
    llvm::report_fatal_error(v29, 1);
  }

  mlir::OperationState::OperationState(v30, a2, v19);
  mlir::mps::PoolL2NormOp::build(a1, v30, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10);
  v21 = mlir::OpBuilder::create(a1, v30);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PoolL2NormOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v30);
  return v22;
}

void GPU::StencilOpHandler::_createNDArrayMultiaryKernel(GPU::StencilOpHandler *this)
{
  v87 = *MEMORY[0x1E69E9840];
  v82 = *(this + 3);
  v2 = (this + 16);
  *&v83 = GPURegionRuntime::getStaticType(*(this + 2), *(*(v82 + 72) + 24));
  Value = mlir::ArrayAttr::getValue(&v83);
  v60 = v4;
  v61 = Value;
  *&v83 = GPURegionRuntime::getStaticType(*v2, *(*(v82 + 72) + 56));
  v5 = mlir::ArrayAttr::getValue(&v83);
  Offsets = mlir::mps::StencilOp::getOffsets(&v82);
  v81 = v6;
  Strides = mlir::mps::PoolMaxGradientOp::getStrides(&v82);
  v79 = Strides;
  AttributeValueNames = mlir::pdl::OperationOp::getAttributeValueNames(&v82);
  v78 = AttributeValueNames;
  ExplicitPadding = mlir::mps::StencilOp::getExplicitPadding(&v82);
  v77 = v9;
  v74 = 0u;
  v75 = 0u;
  v72 = xmmword_1E09A1000;
  v73 = unk_1E09A1010;
  v70 = xmmword_1E09A1000;
  v71 = unk_1E09A1010;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v83, Strides, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v79);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v68, Strides, NumElements);
  if (v84 != v69)
  {
    v11 = 0;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v83, &v65);
      if (v11 == 4 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v12 = v66;
      if (v66 < 0x41)
      {
        *(&v72 + 3 - v11++) = v65;
      }

      else
      {
        v13 = v12 - llvm::APInt::countLeadingZerosSlowCase(&v65);
        v14 = v65;
        if (v13 <= 0x40)
        {
          *(&v72 + 3 - v11++) = *v65;
        }

        else
        {
          *(&v72 + 3 - v11++) = -1;
          if (!v14)
          {
            goto LABEL_4;
          }
        }

        MEMORY[0x1E12E5B60]();
      }

LABEL_4:
      *&v84 = v84 + 1;
      if (v84 == v69)
      {
        AttributeValueNames = v78;
        break;
      }
    }
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v83, AttributeValueNames, 0);
  v15 = v78;
  v16 = mlir::DenseElementsAttr::getNumElements(&v78);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v68, v15, v16);
  if (v84 == v69)
  {
    v17 = 1;
    v18 = 1;
    v19 = 1;
    v20 = 1;
    goto LABEL_30;
  }

  v21 = 0;
  do
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v83, &v65);
    if (v21 == 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v22 = v66;
    if (v66 < 0x41)
    {
      *(&v70 + 3 - v21++) = v65;
      goto LABEL_19;
    }

    v23 = v22 - llvm::APInt::countLeadingZerosSlowCase(&v65);
    v24 = v65;
    if (v23 <= 0x40)
    {
      *(&v70 + 3 - v21++) = *v65;
LABEL_28:
      MEMORY[0x1E12E5B60]();
      goto LABEL_19;
    }

    *(&v70 + 3 - v21++) = -1;
    if (v24)
    {
      goto LABEL_28;
    }

LABEL_19:
    *&v84 = v84 + 1;
  }

  while (v84 != v69);
  v20 = *(&v71 + 1);
  v19 = v71;
  v18 = *(&v70 + 1);
  v17 = v70;
LABEL_30:
  v25 = *v5;
  v26 = v5[1];
  v28 = v5[2];
  v27 = v5[3];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  PaddingStyle = mlir::mps::StencilOp::getPaddingStyle(&v82);
  v30 = (v25 - 1) * v20 + 1;
  v31 = (v26 - 1) * v19 + 1;
  v32 = (v28 - 1) * v18 + 1;
  v62 = (v27 - 1) * v17 + 1;
  if (PaddingStyle > 2)
  {
    if (PaddingStyle != 3)
    {
      if (PaddingStyle != 4)
      {
        goto LABEL_60;
      }

      goto LABEL_36;
    }

    if ((v81 & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v68, Offsets, 0);
    v42 = Offsets;
    v43 = mlir::DenseElementsAttr::getNumElements(&Offsets);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v65, v42, v43);
    if (v69 == v67)
    {
      goto LABEL_56;
    }

    v56 = 0;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v68, &v63);
      if (v56 == 4 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v57 = v64;
      if (v64 < 0x41)
      {
        *(&v74 + 3 - v56++) = v63;
      }

      else
      {
        v58 = v57 - llvm::APInt::countLeadingZerosSlowCase(&v63);
        v59 = v63;
        if (v58 <= 0x40)
        {
          *(&v74 + 3 - v56++) = *v63;
        }

        else
        {
          *(&v74 + 3 - v56++) = -1;
          if (!v59)
          {
            goto LABEL_81;
          }
        }

        MEMORY[0x1E12E5B60]();
      }

LABEL_81:
      *&v69 = v69 + 1;
      if (v69 == v67)
      {
        goto LABEL_56;
      }
    }
  }

  if (!PaddingStyle)
  {
LABEL_56:
    if ((v77 & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v68, ExplicitPadding, 0);
    v44 = ExplicitPadding;
    v45 = mlir::DenseElementsAttr::getNumElements(&ExplicitPadding);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v65, v44, v45);
    if (v69 != v67)
    {
      v54 = 0;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v68, &v63);
        if (v54 == 8 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (v64 > 0x40)
        {
          v55 = *v63;
          MEMORY[0x1E12E5B60]();
        }

        else if (v64)
        {
          v55 = (v63 << -v64) >> -v64;
        }

        else
        {
          v55 = 0;
        }

        *(&v83 + v54++) = v55;
        *&v69 = v69 + 1;
      }

      while (v69 != v67);
    }

    goto LABEL_60;
  }

  if (PaddingStyle != 2)
  {
    goto LABEL_60;
  }

LABEL_36:
  v33 = v61 + 8 * v60;
  v34 = *(v33 - 32) % *(&v73 + 1);
  if (!v34)
  {
    v34 = *(&v73 + 1);
  }

  v35 = (v30 - v34) & ~((v30 - v34) >> 63);
  *&v83 = v35 >> 1;
  if (mlir::mps::StencilOp::getPaddingStyle(&v82) == 4)
  {
    *&v83 = v35 - (v35 >> 1);
  }

  v36 = *(v33 - 24) % v73;
  if (!v36)
  {
    v36 = v73;
  }

  v37 = (v31 - v36) & ~((v31 - v36) >> 63);
  *&v84 = v37 >> 1;
  if (mlir::mps::StencilOp::getPaddingStyle(&v82) == 4)
  {
    *&v84 = v37 - (v37 >> 1);
  }

  v38 = *(v33 - 16) % *(&v72 + 1);
  if (!v38)
  {
    v38 = *(&v72 + 1);
  }

  v39 = (v32 - v38) & ~((v32 - v38) >> 63);
  *&v85 = v39 >> 1;
  if (mlir::mps::StencilOp::getPaddingStyle(&v82) == 4)
  {
    *&v85 = v39 - (v39 >> 1);
  }

  v40 = *(v33 - 8) % v72;
  if (!v40)
  {
    v40 = v72;
  }

  v41 = (v62 - v40) & ~((v62 - v40) >> 63);
  *&v86 = v41 >> 1;
  if (mlir::mps::StencilOp::getPaddingStyle(&v82) == 4)
  {
    *&v86 = v41 - (v41 >> 1);
  }

LABEL_60:
  if (mlir::mps::StencilOp::getPaddingStyle(&v82) != 3)
  {
    *&v75 = v31 / 2 - v84;
    *(&v75 + 1) = v30 / 2 - v83;
    *&v74 = v62 / 2 - v86;
    *(&v74 + 1) = v32 / 2 - v85;
  }

  v46 = objc_alloc(MEMORY[0x1E6974888]);
  v47 = [*(*(this + 2) + 48) metalDevice];
  v48 = [v46 initWithDevice:v47];

  v68 = v74;
  v69 = v75;
  [v48 setStencilOffsets:&v68];
  v68 = v72;
  v69 = v73;
  [v48 setStencilStrides:&v68];
  v68 = v70;
  v69 = v71;
  [v48 setStencilDilationRates:&v68];
  v49 = mlir::mps::Conv3DOp::getWeightsLayout(&v82) - 1;
  if (v49 > 4)
  {
    v50 = 0;
  }

  else
  {
    v50 = dword_1E09A10A4[v49];
  }

  [v48 setReductionMode:v50];
  v51 = mlir::mps::Conv3DOp::getPaddingStyle(&v82);
  if (v51 > 6)
  {
    v52 = 0;
  }

  else
  {
    v52 = dword_1E09A10B8[v51];
  }

  [v48 setPaddingMode:v52];
  *&v68 = *(v82 + 16 * ((*(v82 + 44) >> 23) & 1) + 88);
  ValueAsDouble = mlir::FloatAttr::getValueAsDouble(&v68);
  *&ValueAsDouble = ValueAsDouble;
  [v48 setPaddingConstant:ValueAsDouble];
  objc_storeStrong(this + 1, v48);
  [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
}

void GPU::MultiaryKernelOpHandler<GPU::StencilOpHandler,mlir::mps::StencilOp,MPSNDArrayStencilKernel,2ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v17 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::StencilOpHandler::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v17 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(v8 + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v10 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v11 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 24), 0);
    v12 = [v11 mpsndarray];

    if (!v12 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v12];

    v13 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 56), 0);
    v14 = [v13 mpsndarray];

    if (!v14 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v14];

    v10 = 0;
  }

  v15 = *(a1 + 8);
  v16 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v15 encodeToMPSCommandEncoder:v16 commandBuffer:*(a2 + 1) sourceArrays:v9 resultState:0 destinationArray:v7 kernelDAGObject:v10];
}

uint64_t GPU::StencilOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v4 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v4 + 72) + 56), 0);
  result = MPSKernelDAG::binaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::StencilOpHandler::~StencilOpHandler(GPU::StencilOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::StencilOpHandler,mlir::mps::StencilOp,MPSNDArrayStencilKernel,2ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::SampleGridOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, uint64_t a3, unsigned int a4, void *a5)
{
  v9 = a5;
  v27 = 260;
  v26[0] = a3;
  StringAttr = mlir::Builder::getStringAttr(a2, v26);
  v12 = mlir::FileLineColLoc::get(StringAttr, a4, 0);
  if (v9)
  {
    v13 = [v9 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v25 = v14;
    if (v14)
    {
      memmove(__dst, v13, v14);
    }

    v16 = &__dst[v15];
  }

  else
  {
    v25 = 15;
    qmemcpy(__dst, "mps.sample_grid", sizeof(__dst));
    v16 = &v24;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, __dst, v11, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v27) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v26[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v27) = v18;
  v19 = mlir::Builder::getStringAttr(a2, v26);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    operator delete(*__dst);
    goto LABEL_16;
  }

  if (v25 < 0)
  {
    goto LABEL_18;
  }

LABEL_16:

  return v20;
}

void sub_1E0659B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

EmitterObjC::Conv2DOpHandler *EmitterObjC::Conv2DOpHandler::Conv2DOpHandler(EmitterObjC::Conv2DOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B43EC0;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v101[0] = v5;
  v6 = *(v5 + 9);
  v82 = *(v6 + 24);
  v7 = *(v6 + 56);
  LODWORD(v6) = *(v5 + 9);
  v8 = v5 - 16;
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  Strides = mlir::mps::Conv3DOp::getStrides(v101);
  v100 = Strides;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v101);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(v101);
  Groups = mlir::mps::Conv3DOp::getGroups(v101);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(v101);
  v83 = Groups;
  v84 = NextResultAtOffset;
  v81 = v7;
  if (StorageType == 1)
  {
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v96, Strides, 0);
    v26 = v100;
    NumElements = mlir::DenseElementsAttr::getNumElements(&v100);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v94, v26, NumElements);
    if (v97 == v95)
    {
      v86 = -1;
      v87 = -1;
LABEL_17:
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v96, InputAttributeNames, 0);
      v28 = InputAttributeNames;
      v29 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v94, v28, v29);
      if (v97 == v95)
      {
        v30 = -1;
        v85 = -1;
LABEL_19:
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v96, Rewriter, 0);
        v31 = Rewriter;
        v32 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v94, v31, v32);
        v80 = v30;
        if (v97 != v95)
        {
          v33 = 0;
          v24 = -1;
          v23 = -1;
          v22 = -1;
          v21 = -1;
          do
          {
            mlir::DenseElementsAttr::IntElementIterator::operator*(v96, &__p);
            v34 = __p.__r_.__value_.__r.__words[1];
            if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41)
            {
              if (v34 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
              {
                v35 = *__p.__r_.__value_.__l.__data_;
              }

              else
              {
                v35 = -1;
              }
            }

            else
            {
              v35 = __p.__r_.__value_.__r.__words[0];
            }

            if (v33 == 5)
            {
              v36 = v35;
            }

            else
            {
              v36 = v23;
            }

            if (v33 == 4)
            {
              v36 = v23;
              v37 = v35;
            }

            else
            {
              v37 = v24;
            }

            if (v33 == 3)
            {
              v38 = v35;
            }

            else
            {
              v38 = v21;
            }

            if (v33 == 2)
            {
              v38 = v21;
            }

            else
            {
              v35 = v22;
            }

            if (v33 > 3)
            {
              v23 = v36;
              v24 = v37;
            }

            else
            {
              v21 = v38;
              v22 = v35;
            }

            if (v34 >= 0x41 && __p.__r_.__value_.__r.__words[0])
            {
              MEMORY[0x1E12E5B60](__p.__r_.__value_.__r.__words[0], 0x1000C8000313F17);
            }

            ++v97;
            ++v33;
          }

          while (v97 != v95);
          goto LABEL_49;
        }

LABEL_48:
        v21 = -1;
        v22 = -1;
        v23 = -1;
        v24 = -1;
LABEL_49:
        v25 = "MPSGraphTensorNamedDataLayoutNHWC";
        goto LABEL_50;
      }

      v71 = 0;
      v85 = -1;
      v30 = -1;
      while (1)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v96, &__p);
        v72 = __p.__r_.__value_.__r.__words[1];
        if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41)
        {
          if (v72 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
          {
            v73 = *__p.__r_.__value_.__l.__data_;
            if (v71 <= 1)
            {
LABEL_165:
              if (!v71)
              {
                if (v73 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
                {
                  goto LABEL_183;
                }

                goto LABEL_178;
              }

              if (v71 == 1)
              {
                v30 = v73;
                goto LABEL_183;
              }

LABEL_177:
              if (!MTLReportFailureTypeEnabled())
              {
                goto LABEL_183;
              }

              goto LABEL_178;
            }
          }

          else
          {
            v73 = -1;
            if (v71 <= 1)
            {
              goto LABEL_165;
            }
          }
        }

        else
        {
          v73 = __p.__r_.__value_.__r.__words[0];
          if (v71 <= 1)
          {
            goto LABEL_165;
          }
        }

        if (v71 != 2)
        {
          if (v71 == 3)
          {
            if (v73 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_183;
            }

LABEL_178:
            MTLReportFailure();
            goto LABEL_183;
          }

          goto LABEL_177;
        }

        v85 = v73;
LABEL_183:
        if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41 && __p.__r_.__value_.__r.__words[0])
        {
          MEMORY[0x1E12E5B60](__p.__r_.__value_.__r.__words[0], 0x1000C8000313F17);
        }

        ++v97;
        ++v71;
        if (v97 == v95)
        {
          goto LABEL_19;
        }
      }
    }

    v65 = 0;
    v86 = -1;
    v87 = -1;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v96, &__p);
      v66 = __p.__r_.__value_.__r.__words[1];
      if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41)
      {
        if (v66 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
        {
          v67 = *__p.__r_.__value_.__l.__data_;
          if (v65 <= 1)
          {
LABEL_115:
            if (!v65)
            {
              if (v67 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_133;
              }

              goto LABEL_128;
            }

            if (v65 == 1)
            {
              v87 = v67;
              goto LABEL_133;
            }

LABEL_127:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_133;
            }

            goto LABEL_128;
          }
        }

        else
        {
          v67 = -1;
          if (v65 <= 1)
          {
            goto LABEL_115;
          }
        }
      }

      else
      {
        v67 = __p.__r_.__value_.__r.__words[0];
        if (v65 <= 1)
        {
          goto LABEL_115;
        }
      }

      if (v65 != 2)
      {
        if (v65 == 3)
        {
          if (v67 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
          {
            goto LABEL_133;
          }

LABEL_128:
          MTLReportFailure();
          goto LABEL_133;
        }

        goto LABEL_127;
      }

      v86 = v67;
LABEL_133:
      if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41 && __p.__r_.__value_.__r.__words[0])
      {
        MEMORY[0x1E12E5B60](__p.__r_.__value_.__r.__words[0], 0x1000C8000313F17);
      }

      ++v97;
      ++v65;
      if (v97 == v95)
      {
        goto LABEL_17;
      }
    }
  }

  if (StorageType)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v86 = -1;
    v87 = -1;
    v80 = -1;
    v85 = -1;
    goto LABEL_48;
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v96, Strides, 0);
  v14 = v100;
  v15 = mlir::DenseElementsAttr::getNumElements(&v100);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v94, v14, v15);
  if (v97 != v95)
  {
    v62 = 0;
    v86 = -1;
    v87 = -1;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v96, &__p);
      v63 = __p.__r_.__value_.__r.__words[1];
      if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41)
      {
        if (v63 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
        {
          v64 = *__p.__r_.__value_.__l.__data_;
          if (v62 <= 1)
          {
LABEL_90:
            if (v62)
            {
              if (v62 == 1)
              {
                if (v64 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
                {
                  goto LABEL_108;
                }
              }

              else
              {
LABEL_102:
                if (!MTLReportFailureTypeEnabled())
                {
                  goto LABEL_108;
                }
              }
            }

            else if (v64 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_108;
            }

            MTLReportFailure();
            goto LABEL_108;
          }
        }

        else
        {
          v64 = -1;
          if (v62 <= 1)
          {
            goto LABEL_90;
          }
        }
      }

      else
      {
        v64 = __p.__r_.__value_.__r.__words[0];
        if (v62 <= 1)
        {
          goto LABEL_90;
        }
      }

      if (v62 != 2)
      {
        if (v62 == 3)
        {
          v86 = v64;
          goto LABEL_108;
        }

        goto LABEL_102;
      }

      v87 = v64;
LABEL_108:
      if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41 && __p.__r_.__value_.__r.__words[0])
      {
        MEMORY[0x1E12E5B60](__p.__r_.__value_.__r.__words[0], 0x1000C8000313F17);
      }

      ++v97;
      ++v62;
      if (v97 == v95)
      {
        goto LABEL_11;
      }
    }
  }

  v86 = -1;
  v87 = -1;
LABEL_11:
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v96, InputAttributeNames, 0);
  v16 = InputAttributeNames;
  v17 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v94, v16, v17);
  if (v97 != v95)
  {
    v68 = 0;
    v85 = -1;
    v18 = -1;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v96, &__p);
      v69 = __p.__r_.__value_.__r.__words[1];
      if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41)
      {
        if (v69 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
        {
          v70 = *__p.__r_.__value_.__l.__data_;
          if (v68 <= 1)
          {
LABEL_140:
            if (v68)
            {
              if (v68 == 1)
              {
                if (v70 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
                {
                  goto LABEL_158;
                }
              }

              else
              {
LABEL_152:
                if (!MTLReportFailureTypeEnabled())
                {
                  goto LABEL_158;
                }
              }
            }

            else if (v70 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_158;
            }

            MTLReportFailure();
            goto LABEL_158;
          }
        }

        else
        {
          v70 = -1;
          if (v68 <= 1)
          {
            goto LABEL_140;
          }
        }
      }

      else
      {
        v70 = __p.__r_.__value_.__r.__words[0];
        if (v68 <= 1)
        {
          goto LABEL_140;
        }
      }

      if (v68 != 2)
      {
        if (v68 == 3)
        {
          v85 = v70;
          goto LABEL_158;
        }

        goto LABEL_152;
      }

      v18 = v70;
LABEL_158:
      if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41 && __p.__r_.__value_.__r.__words[0])
      {
        MEMORY[0x1E12E5B60](__p.__r_.__value_.__r.__words[0], 0x1000C8000313F17);
      }

      ++v97;
      ++v68;
      if (v97 == v95)
      {
        goto LABEL_13;
      }
    }
  }

  v18 = -1;
  v85 = -1;
LABEL_13:
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v96, Rewriter, 0);
  v19 = Rewriter;
  v20 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v94, v19, v20);
  v80 = v18;
  if (v97 == v95)
  {
    v21 = -1;
    v22 = -1;
    v23 = -1;
    v24 = -1;
    v25 = "MPSGraphTensorNamedDataLayoutNCHW";
  }

  else
  {
    v74 = 0;
    v24 = -1;
    v23 = -1;
    v22 = -1;
    v21 = -1;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v96, &__p);
      v75 = __p.__r_.__value_.__r.__words[1];
      if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41)
      {
        if (v75 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
        {
          v76 = *__p.__r_.__value_.__l.__data_;
        }

        else
        {
          v76 = -1;
        }
      }

      else
      {
        v76 = __p.__r_.__value_.__r.__words[0];
      }

      if (v74 == 7)
      {
        v77 = v76;
      }

      else
      {
        v77 = v23;
      }

      if (v74 == 6)
      {
        v77 = v23;
        v78 = v76;
      }

      else
      {
        v78 = v24;
      }

      if (v74 == 5)
      {
        v79 = v76;
      }

      else
      {
        v79 = v21;
      }

      if (v74 == 4)
      {
        v79 = v21;
      }

      else
      {
        v76 = v22;
      }

      if (v74 > 5)
      {
        v23 = v77;
        v24 = v78;
      }

      else
      {
        v21 = v79;
        v22 = v76;
      }

      if (v75 >= 0x41 && __p.__r_.__value_.__r.__words[0])
      {
        MEMORY[0x1E12E5B60](__p.__r_.__value_.__r.__words[0], 0x1000C8000313F17);
      }

      ++v97;
      ++v74;
    }

    while (v97 != v95);
    v25 = "MPSGraphTensorNamedDataLayoutNCHW";
  }

LABEL_50:
  v39 = MEMORY[0x1E696AEC0];
  v40 = v96;
  (*(*a2 + 4))(v96, a2, v84);
  if (v97 < 0)
  {
    v40 = v96[0];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(v101);
  if (PaddingStyle >= 5)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v42 = 0;
  }

  else
  {
    v42 = off_1E86D4A08[PaddingStyle];
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(v101);
  if (WeightsLayout == 2)
  {
    v44 = "MPSGraphTensorNamedDataLayoutOIHW";
  }

  else if (WeightsLayout == 3)
  {
    v44 = "MPSGraphTensorNamedDataLayoutHWIO";
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v44 = 0;
  }

  v45 = [v39 stringWithFormat:@"\n    MPSGraphConvolution2DOpDescriptor *%sConvDescriptor = \n    [MPSGraphConvolution2DOpDescriptor descriptorWithStrideInX:%ld\n                                                     strideInY:%ld\n                                               dilationRateInX:%ld\n                                               dilationRateInY:%ld\n                                                        groups:%ld\n                                                   paddingLeft:%ld\n                                                  paddingRight:%ld\n                                                    paddingTop:%ld\n                                                 paddingBottom:%ld\n                                                  paddingStyle:%s\n                                                    dataLayout:%s\n                                                 weightsLayout:%s]\n    ", v40, v86, v87, v85, v80, v83, v24, v23, v22, v21, v42, v25, v44];;
  if (SHIBYTE(v97) < 0)
  {
    operator delete(v96[0]);
  }

  v88 = v45;
  v46 = [a2[27] stringByAppendingString:v45];
  v47 = a2[27];
  a2[27] = v46;

  v48 = MEMORY[0x1E696AEC0];
  v49 = v96;
  (*(*a2 + 4))(v96, a2, v84);
  if (v97 < 0)
  {
    v49 = v96[0];
  }

  v93 = v82;
  v94[0] = &v93;
  v50 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v93);
  v51 = v50 + 3;
  if (*(v50 + 47) < 0)
  {
    v51 = *v51;
  }

  v92 = v81;
  v94[0] = &v92;
  v52 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v92);
  v53 = v52 + 3;
  if (*(v52 + 47) < 0)
  {
    v53 = *v53;
  }

  (*(*a2 + 4))(v94, a2, v84);
  v54 = SHIBYTE(v95);
  v55 = v94[0];
  v90 = 0;
  LOBYTE(v89) = 0;
  EmitObjC::emitTensorName(a2, v84, &v89, &__p);
  v56 = v94;
  if (v54 < 0)
  {
    v56 = v55;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v58 = [v48 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph convolution2DWithSourceTensor:%s\n                           weightsTensor:%s\n                              descriptor:%sConvDescriptor\n                                    name:%s]\n    ", v49, v51, v53, v56, p_p];;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v90 & 0x80000000) == 0)
    {
LABEL_79:
      if ((SHIBYTE(v95) & 0x80000000) == 0)
      {
        goto LABEL_80;
      }

LABEL_84:
      operator delete(v94[0]);
      if ((SHIBYTE(v97) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

LABEL_85:
      operator delete(v96[0]);
      goto LABEL_81;
    }
  }

  else if ((v90 & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

  operator delete(v89);
  if (SHIBYTE(v95) < 0)
  {
    goto LABEL_84;
  }

LABEL_80:
  if (SHIBYTE(v97) < 0)
  {
    goto LABEL_85;
  }

LABEL_81:
  v59 = [a2[27] stringByAppendingString:v58];
  v60 = a2[27];
  a2[27] = v59;

  return this;
}

void sub_1E065B354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned int a36)
{
  if (a36 >= 0x41)
  {
    if (a35)
    {
      MEMORY[0x1E12E5B60](a35, v36);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

EmitterObjC::Conv2DDataGradientOpHandler *EmitterObjC::Conv2DDataGradientOpHandler::Conv2DDataGradientOpHandler(EmitterObjC::Conv2DDataGradientOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B43ED8;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v108[0] = v5;
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(v108, 0);
  v88 = *(*(v108[0] + 72) + 32 * ODSOperandIndexAndLength + 24);
  v7 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(v108, 2u);
  if ((*(v108[0] + 46) & 0x80) != 0)
  {
    v8 = *(v108[0] + 72);
    v9 = v7;
    if (HIDWORD(v7) + v7 == v7)
    {
LABEL_6:
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    v9 = v7;
    if (HIDWORD(v7) + v7 == v7)
    {
      goto LABEL_6;
    }
  }

  v10 = *(v8 + 32 * v9 + 24);
LABEL_9:
  v11 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(v108, 1u);
  v12 = *(*(v108[0] + 72) + 32 * v11 + 24);
  if (*(v108[0] + 36))
  {
    v13 = v108[0] - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  Strides = mlir::mps::Conv3DOp::getStrides(v108);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v108);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(v108);
  Groups = mlir::mps::Conv3DOp::getGroups(v108);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(v108);
  v85 = this;
  v86 = v10;
  v87 = v12;
  v89 = Groups;
  if (StorageType == 1)
  {
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v103, Strides, 0);
    v28 = Strides;
    NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v101, v28, NumElements);
    if (v104 == v102)
    {
      v92 = -1;
      v93 = -1;
LABEL_23:
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v103, InputAttributeNames, 0);
      v30 = InputAttributeNames;
      v31 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v101, v30, v31);
      if (v104 == v102)
      {
        v32 = -1;
        v91 = -1;
LABEL_25:
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v103, Rewriter, 0);
        v33 = Rewriter;
        v34 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v101, v33, v34);
        if (v104 == v102)
        {
          v23 = -1;
          v24 = -1;
          v25 = -1;
          v26 = -1;
        }

        else
        {
          v78 = 0;
          v26 = -1;
          v25 = -1;
          v24 = -1;
          v23 = -1;
          do
          {
            mlir::DenseElementsAttr::IntElementIterator::operator*(v103, &__p);
            v79 = __p.__r_.__value_.__r.__words[1];
            if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41)
            {
              if (v79 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
              {
                v80 = *__p.__r_.__value_.__l.__data_;
              }

              else
              {
                v80 = -1;
              }
            }

            else
            {
              v80 = __p.__r_.__value_.__r.__words[0];
            }

            if (v78 == 5)
            {
              v81 = v80;
            }

            else
            {
              v81 = v25;
            }

            if (v78 == 4)
            {
              v81 = v25;
              v82 = v80;
            }

            else
            {
              v82 = v26;
            }

            if (v78 == 3)
            {
              v83 = v80;
            }

            else
            {
              v83 = v23;
            }

            if (v78 == 2)
            {
              v83 = v23;
            }

            else
            {
              v80 = v24;
            }

            if (v78 > 3)
            {
              v25 = v81;
              v26 = v82;
            }

            else
            {
              v23 = v83;
              v24 = v80;
            }

            if (v79 >= 0x41 && __p.__r_.__value_.__r.__words[0])
            {
              MEMORY[0x1E12E5B60](__p.__r_.__value_.__r.__words[0], 0x1000C8000313F17);
            }

            ++v104;
            ++v78;
          }

          while (v104 != v102);
        }

        v84 = v32;
        goto LABEL_31;
      }

      v69 = 0;
      v91 = -1;
      v32 = -1;
      while (1)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v103, &__p);
        v70 = __p.__r_.__value_.__r.__words[1];
        if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41)
        {
          if (v70 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
          {
            v71 = *__p.__r_.__value_.__l.__data_;
            if (v69 <= 1)
            {
LABEL_149:
              if (!v69)
              {
                if (v71 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
                {
                  goto LABEL_167;
                }

                goto LABEL_162;
              }

              if (v69 == 1)
              {
                v32 = v71;
                goto LABEL_167;
              }

LABEL_161:
              if (!MTLReportFailureTypeEnabled())
              {
                goto LABEL_167;
              }

              goto LABEL_162;
            }
          }

          else
          {
            v71 = -1;
            if (v69 <= 1)
            {
              goto LABEL_149;
            }
          }
        }

        else
        {
          v71 = __p.__r_.__value_.__r.__words[0];
          if (v69 <= 1)
          {
            goto LABEL_149;
          }
        }

        if (v69 != 2)
        {
          if (v69 == 3)
          {
            if (v71 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_167;
            }

LABEL_162:
            MTLReportFailure();
            goto LABEL_167;
          }

          goto LABEL_161;
        }

        v91 = v71;
LABEL_167:
        if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41 && __p.__r_.__value_.__r.__words[0])
        {
          MEMORY[0x1E12E5B60](__p.__r_.__value_.__r.__words[0], 0x1000C8000313F17);
        }

        ++v104;
        ++v69;
        if (v104 == v102)
        {
          goto LABEL_25;
        }
      }
    }

    v63 = 0;
    v92 = -1;
    v93 = -1;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v103, &__p);
      v64 = __p.__r_.__value_.__r.__words[1];
      if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41)
      {
        if (v64 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
        {
          v65 = *__p.__r_.__value_.__l.__data_;
          if (v63 <= 1)
          {
LABEL_99:
            if (!v63)
            {
              if (v65 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_117;
              }

              goto LABEL_112;
            }

            if (v63 == 1)
            {
              v93 = v65;
              goto LABEL_117;
            }

LABEL_111:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_117;
            }

            goto LABEL_112;
          }
        }

        else
        {
          v65 = -1;
          if (v63 <= 1)
          {
            goto LABEL_99;
          }
        }
      }

      else
      {
        v65 = __p.__r_.__value_.__r.__words[0];
        if (v63 <= 1)
        {
          goto LABEL_99;
        }
      }

      if (v63 != 2)
      {
        if (v63 == 3)
        {
          if (v65 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
          {
            goto LABEL_117;
          }

LABEL_112:
          MTLReportFailure();
          goto LABEL_117;
        }

        goto LABEL_111;
      }

      v92 = v65;
LABEL_117:
      if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41 && __p.__r_.__value_.__r.__words[0])
      {
        MEMORY[0x1E12E5B60](__p.__r_.__value_.__r.__words[0], 0x1000C8000313F17);
      }

      ++v104;
      ++v63;
      if (v104 == v102)
      {
        goto LABEL_23;
      }
    }
  }

  if (StorageType)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v92 = -1;
    v93 = -1;
    v84 = -1;
    v91 = -1;
    v23 = -1;
    v24 = -1;
    v25 = -1;
    v26 = -1;
LABEL_31:
    v27 = "MPSGraphTensorNamedDataLayoutNHWC";
    goto LABEL_32;
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v103, Strides, 0);
  v16 = Strides;
  v17 = mlir::DenseElementsAttr::getNumElements(&Strides);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v101, v16, v17);
  if (v104 != v102)
  {
    v60 = 0;
    v92 = -1;
    v93 = -1;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v103, &__p);
      v61 = __p.__r_.__value_.__r.__words[1];
      if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41)
      {
        if (v61 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
        {
          v62 = *__p.__r_.__value_.__l.__data_;
          if (v60 <= 1)
          {
LABEL_74:
            if (v60)
            {
              if (v60 == 1)
              {
                if (v62 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
                {
                  goto LABEL_92;
                }
              }

              else
              {
LABEL_86:
                if (!MTLReportFailureTypeEnabled())
                {
                  goto LABEL_92;
                }
              }
            }

            else if (v62 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_92;
            }

            MTLReportFailure();
            goto LABEL_92;
          }
        }

        else
        {
          v62 = -1;
          if (v60 <= 1)
          {
            goto LABEL_74;
          }
        }
      }

      else
      {
        v62 = __p.__r_.__value_.__r.__words[0];
        if (v60 <= 1)
        {
          goto LABEL_74;
        }
      }

      if (v60 != 2)
      {
        if (v60 == 3)
        {
          v92 = v62;
          goto LABEL_92;
        }

        goto LABEL_86;
      }

      v93 = v62;
LABEL_92:
      if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41 && __p.__r_.__value_.__r.__words[0])
      {
        MEMORY[0x1E12E5B60](__p.__r_.__value_.__r.__words[0], 0x1000C8000313F17);
      }

      ++v104;
      ++v60;
      if (v104 == v102)
      {
        goto LABEL_16;
      }
    }
  }

  v92 = -1;
  v93 = -1;
LABEL_16:
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v103, InputAttributeNames, 0);
  v18 = InputAttributeNames;
  v19 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v101, v18, v19);
  if (v104 != v102)
  {
    v66 = 0;
    v91 = -1;
    v20 = -1;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v103, &__p);
      v67 = __p.__r_.__value_.__r.__words[1];
      if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41)
      {
        if (v67 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
        {
          v68 = *__p.__r_.__value_.__l.__data_;
          if (v66 <= 1)
          {
LABEL_124:
            if (v66)
            {
              if (v66 == 1)
              {
                if (v68 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
                {
                  goto LABEL_142;
                }
              }

              else
              {
LABEL_136:
                if (!MTLReportFailureTypeEnabled())
                {
                  goto LABEL_142;
                }
              }
            }

            else if (v68 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_142;
            }

            MTLReportFailure();
            goto LABEL_142;
          }
        }

        else
        {
          v68 = -1;
          if (v66 <= 1)
          {
            goto LABEL_124;
          }
        }
      }

      else
      {
        v68 = __p.__r_.__value_.__r.__words[0];
        if (v66 <= 1)
        {
          goto LABEL_124;
        }
      }

      if (v66 != 2)
      {
        if (v66 == 3)
        {
          v91 = v68;
          goto LABEL_142;
        }

        goto LABEL_136;
      }

      v20 = v68;
LABEL_142:
      if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41 && __p.__r_.__value_.__r.__words[0])
      {
        MEMORY[0x1E12E5B60](__p.__r_.__value_.__r.__words[0], 0x1000C8000313F17);
      }

      ++v104;
      ++v66;
      if (v104 == v102)
      {
        goto LABEL_18;
      }
    }
  }

  v20 = -1;
  v91 = -1;
LABEL_18:
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v103, Rewriter, 0);
  v21 = Rewriter;
  v22 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v101, v21, v22);
  v84 = v20;
  if (v104 == v102)
  {
    v23 = -1;
    v24 = -1;
    v25 = -1;
    v26 = -1;
  }

  else
  {
    v72 = 0;
    v26 = -1;
    v25 = -1;
    v24 = -1;
    v23 = -1;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v103, &__p);
      v73 = __p.__r_.__value_.__r.__words[1];
      if (LODWORD(__p.__r_.__value_.__r.__words[1]) >= 0x41)
      {
        if (v73 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
        {
          v74 = *__p.__r_.__value_.__l.__data_;
        }

        else
        {
          v74 = -1;
        }
      }

      else
      {
        v74 = __p.__r_.__value_.__r.__words[0];
      }

      if (v72 == 7)
      {
        v75 = v74;
      }

      else
      {
        v75 = v25;
      }

      if (v72 == 6)
      {
        v75 = v25;
        v76 = v74;
      }

      else
      {
        v76 = v26;
      }

      if (v72 == 5)
      {
        v77 = v74;
      }

      else
      {
        v77 = v23;
      }

      if (v72 == 4)
      {
        v77 = v23;
      }

      else
      {
        v74 = v24;
      }

      if (v72 > 5)
      {
        v25 = v75;
        v26 = v76;
      }

      else
      {
        v23 = v77;
        v24 = v74;
      }

      if (v73 >= 0x41 && __p.__r_.__value_.__r.__words[0])
      {
        MEMORY[0x1E12E5B60](__p.__r_.__value_.__r.__words[0], 0x1000C8000313F17);
      }

      ++v104;
      ++v72;
    }

    while (v104 != v102);
  }

  v27 = "MPSGraphTensorNamedDataLayoutNCHW";
LABEL_32:
  v35 = MEMORY[0x1E696AEC0];
  v36 = v103;
  (*(*a2 + 4))(v103, a2, NextResultAtOffset);
  if (v104 < 0)
  {
    v36 = v103[0];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(v108);
  if (PaddingStyle >= 5)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v38 = 0;
  }

  else
  {
    v38 = off_1E86D4A08[PaddingStyle];
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(v108);
  if (WeightsLayout == 2)
  {
    v40 = "MPSGraphTensorNamedDataLayoutOIHW";
  }

  else if (WeightsLayout == 3)
  {
    v40 = "MPSGraphTensorNamedDataLayoutHWIO";
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v40 = 0;
  }

  v41 = [v35 stringWithFormat:@"\n    MPSGraphConvolution2DOpDescriptor *%sConvDescriptor = \n    [MPSGraphConvolution2DOpDescriptor descriptorWithStrideInX:%ld\n                                                     strideInY:%ld\n                                               dilationRateInX:%ld\n                                               dilationRateInY:%ld\n                                                        groups:%ld\n                                                   paddingLeft:%ld\n                                                  paddingRight:%ld\n                                                    paddingTop:%ld\n                                                 paddingBottom:%ld\n                                                  paddingStyle:%s\n                                                    dataLayout:%s\n                                                 weightsLayout:%s]\n    ", v36, v92, v93, v91, v84, v89, v26, v25, v24, v23, v38, v27, v40];;
  if (SHIBYTE(v104) < 0)
  {
    operator delete(v103[0]);
  }

  v94 = v41;
  v42 = [a2[27] stringByAppendingString:v41];
  v43 = a2[27];
  a2[27] = v42;

  v44 = MEMORY[0x1E696AEC0];
  v45 = v103;
  (*(*a2 + 4))(v103, a2, NextResultAtOffset);
  if (v104 < 0)
  {
    v45 = v103[0];
  }

  v100 = v88;
  v101[0] = &v100;
  v46 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v100);
  v47 = v46 + 3;
  if (*(v46 + 47) < 0)
  {
    v47 = *v47;
  }

  v99 = v87;
  v101[0] = &v99;
  v48 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v99);
  v49 = v48 + 3;
  if (*(v48 + 47) < 0)
  {
    v49 = *v49;
  }

  v98 = v86;
  v101[0] = &v98;
  v50 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v98);
  v51 = v50 + 3;
  if (*(v50 + 47) < 0)
  {
    v51 = *v51;
  }

  (*(*a2 + 4))(v101, a2, NextResultAtOffset);
  v52 = SHIBYTE(v102);
  v53 = v101[0];
  v96 = 0;
  LOBYTE(v95) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v95, &__p);
  v54 = v101;
  if (v52 < 0)
  {
    v54 = v53;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v56 = [v44 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph convolutionTranspose2DWithSourceTensor:%s\n                                    weightsTensor:%s\n                                outputShapeTensor:%s\n                                       descriptor:%sConvDescriptor\n                                             name:%s]\n    ", v45, v47, v49, v51, v54, p_p];;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v96 & 0x80000000) == 0)
    {
LABEL_63:
      if ((SHIBYTE(v102) & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

LABEL_68:
      operator delete(v101[0]);
      if ((SHIBYTE(v104) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

LABEL_69:
      operator delete(v103[0]);
      goto LABEL_65;
    }
  }

  else if ((v96 & 0x80000000) == 0)
  {
    goto LABEL_63;
  }

  operator delete(v95);
  if (SHIBYTE(v102) < 0)
  {
    goto LABEL_68;
  }

LABEL_64:
  if (SHIBYTE(v104) < 0)
  {
    goto LABEL_69;
  }

LABEL_65:
  v57 = [a2[27] stringByAppendingString:v56];
  v58 = a2[27];
  a2[27] = v57;

  return v85;
}