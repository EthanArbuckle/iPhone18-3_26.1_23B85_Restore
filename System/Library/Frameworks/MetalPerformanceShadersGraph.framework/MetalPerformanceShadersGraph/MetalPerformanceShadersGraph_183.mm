uint64_t mlir::anec::Deconvolution::getExecutionCost(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *a1;
  v14 = *(*a1 + 72);
  v15 = (*(*(v14 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
    v13 = *a1;
    v14 = *(*a1 + 72);
  }

  else
  {
    v16 = 0;
  }

  v47[0] = v15;
  v47[1] = v16;
  v17 = (*(*(v14 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    v13 = *a1;
  }

  else
  {
    v18 = 0;
  }

  v46[0] = v17;
  v46[1] = v18;
  v19 = *(v13 + 36);
  v20 = v13 - 16;
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0);
  v23 = 0;
  v24 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v24)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
  }

  v45[0] = v24;
  v45[1] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(v47);
  mlir::CallableOpInterface::getArgAttrsAttr(v46);
  mlir::CallableOpInterface::getArgAttrsAttr(v45);
  mlir::CallableOpInterface::getArgAttrsAttr(v47);
  mlir::anec::getIndexFromDim(0, v25);
  if (v26 & 1) != 0 && (mlir::CallableOpInterface::getArgAttrsAttr(v47), mlir::anec::getIndexFromDim(1, v27), (v28) && (mlir::CallableOpInterface::getArgAttrsAttr(v47), mlir::anec::getIndexFromDim(3, v29), (v30) && (mlir::CallableOpInterface::getArgAttrsAttr(v47), mlir::anec::getIndexFromDim(4, v31), (v32))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v47);
    mlir::anec::getIndexFromDim(2, v33);
    v34 = *a1;
    isSplat = mlir::ElementsAttr::isSplat(v47);
  }

  else
  {
    v37 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::inferElementwiseReturnTypes(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11);
  }
}

uint64_t mlir::anec::inferElementwiseReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v47[4] = *MEMORY[0x1E69E9840];
  v13 = mlir::TypeRange::dereference_iterator(a9, 0);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  __src = v14;
  v46 = v13;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__src);
  v17 = v15;
  __src = v47;
  v46 = 0x400000000;
  v18 = (8 * v15) >> 3;
  if (v18 < 5)
  {
    v19 = 0;
    v20 = 8 * v15;
    if (!v15)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v47, v18, 8);
  v19 = v46;
  v20 = 8 * v17;
  if (v17)
  {
LABEL_7:
    memcpy(__src + 8 * v19, ArgAttrsAttr, v20);
    v19 = v46;
  }

LABEL_8:
  v42 = v44;
  v43 = 0x400000000;
  v21 = v19 + (v20 >> 3);
  LODWORD(v46) = v21;
  if (!v21)
  {
    goto LABEL_15;
  }

  if (v21 < 5)
  {
    v23 = v44;
    v22 = v21;
    goto LABEL_13;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v21, 8);
  v22 = v46;
  if (v46)
  {
    v23 = v42;
LABEL_13:
    memcpy(v23, __src, 8 * v22);
  }

  LODWORD(v43) = v21;
LABEL_15:
  if (a10 != 1)
  {
    v40 = a5;
    v24 = 1;
    while (1)
    {
      v25 = mlir::TypeRange::dereference_iterator(a9, v24);
      v26 = v25;
      v27 = __src;
      v28 = v46;
      if (v25)
      {
        v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
      }

      v41[0] = v26;
      v41[1] = v25;
      v29 = mlir::CallableOpInterface::getArgAttrsAttr(v41);
      if ((mlir::OpTrait::util::getBroadcastedShape(v27, v28, v29, v30, &v42) & 1) == 0)
      {
        MostDefinedTypeForANE = mlir::getMostDefinedTypeForANE(a4, v40);
        goto LABEL_34;
      }

      v31 = v43;
      v32 = v46;
      if (v46 >= v43)
      {
        if (v43)
        {
          memmove(__src, v42, 8 * v43);
        }

        goto LABEL_17;
      }

      if (HIDWORD(v46) >= v43)
      {
        if (v46)
        {
          memmove(__src, v42, 8 * v46);
          goto LABEL_29;
        }
      }

      else
      {
        LODWORD(v46) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v47, v43, 8);
      }

      v32 = 0;
LABEL_29:
      if (v43 != v32)
      {
        memcpy(__src + 8 * v32, v42 + 8 * v32, 8 * (v43 - v32));
      }

LABEL_17:
      LODWORD(v46) = v31;
      if (a10 == ++v24)
      {
        LODWORD(v21) = v43;
        break;
      }
    }
  }

  v34 = v42;
  v35 = mlir::TypeRange::dereference_iterator(a9, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v35);
  MostDefinedTypeForANE = mlir::MemRefType::get(v34, v21, ElementTypeOrSelf, 0, 0, 0);
LABEL_34:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v39 = MostDefinedTypeForANE;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v37 + 1, 8);
    MostDefinedTypeForANE = v39;
    v37 = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = MostDefinedTypeForANE;
  ++*(a11 + 8);
  if (v42 != v44)
  {
    free(v42);
  }

  if (__src != v47)
  {
    free(__src);
  }

  return 1;
}

uint64_t mlir::anec::inferElementwiseCompareReturnTypes(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48[4] = *MEMORY[0x1E69E9840];
  v14 = mlir::TypeRange::dereference_iterator(a9, 0);
  v15 = v14;
  if (v14)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  __src = v15;
  v47 = v14;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__src);
  v18 = v16;
  __src = v48;
  v47 = 0x400000000;
  v19 = (8 * v16) >> 3;
  if (v19 < 5)
  {
    v20 = 0;
    v21 = 8 * v16;
    if (!v16)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v48, v19, 8);
  v20 = v47;
  v21 = 8 * v18;
  if (v18)
  {
LABEL_7:
    memcpy(__src + 8 * v20, ArgAttrsAttr, v21);
    v20 = v47;
  }

LABEL_8:
  v43 = v45;
  v44 = 0x400000000;
  v22 = v20 + (v21 >> 3);
  LODWORD(v47) = v22;
  if (!v22)
  {
    goto LABEL_15;
  }

  if (v22 < 5)
  {
    v24 = v45;
    v23 = v22;
    goto LABEL_13;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v22, 8);
  v23 = v47;
  if (v47)
  {
    v24 = v43;
LABEL_13:
    memcpy(v24, __src, 8 * v23);
  }

  LODWORD(v44) = v22;
LABEL_15:
  if (a10 != 1)
  {
    v40 = a4;
    v41 = a5;
    v25 = 1;
    while (1)
    {
      v26 = mlir::TypeRange::dereference_iterator(a9, v25);
      v27 = v26;
      v28 = __src;
      v29 = v47;
      if (v26)
      {
        v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v26 + 8);
      }

      v42[0] = v27;
      v42[1] = v26;
      v30 = mlir::CallableOpInterface::getArgAttrsAttr(v42);
      if ((mlir::OpTrait::util::getBroadcastedShape(v28, v29, v30, v31, &v43) & 1) == 0)
      {
        MostDefinedTypeForANE = mlir::getMostDefinedTypeForANE(v40, v41);
        goto LABEL_34;
      }

      v32 = v44;
      v33 = v47;
      if (v47 >= v44)
      {
        if (v44)
        {
          memmove(__src, v43, 8 * v44);
        }

        goto LABEL_17;
      }

      if (HIDWORD(v47) >= v44)
      {
        if (v47)
        {
          memmove(__src, v43, 8 * v47);
          goto LABEL_29;
        }
      }

      else
      {
        LODWORD(v47) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v48, v44, 8);
      }

      v33 = 0;
LABEL_29:
      if (v44 != v33)
      {
        memcpy(__src + 8 * v33, v43 + 8 * v33, 8 * (v44 - v33));
      }

LABEL_17:
      LODWORD(v47) = v32;
      if (a10 == ++v25)
      {
        LODWORD(v22) = v44;
        break;
      }
    }
  }

  v35 = v43;
  v36 = mlir::IntegerType::get(a1, 8, 1u);
  MostDefinedTypeForANE = mlir::MemRefType::get(v35, v22, v36, 0, 0, 0);
LABEL_34:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v39 = MostDefinedTypeForANE;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v37 + 1, 8);
    MostDefinedTypeForANE = v39;
    v37 = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = MostDefinedTypeForANE;
  ++*(a11 + 8);
  if (v43 != v45)
  {
    free(v43);
  }

  if (__src != v48)
  {
    free(__src);
  }

  return 1;
}

uint64_t mlir::anec::ElementwiseAdd::canonicalize(uint64_t a1, mlir::Float16Type **a2)
{
  v88 = *MEMORY[0x1E69E9840];
  v85 = 0;
  v83 = 0;
  v84 = 0;
  v82[0] = &v85;
  v82[1] = &v84;
  if (*(*(a1 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id && (*(a1 + 46) & 0x80) != 0 && *(a1 + 68) == 2)
  {
    v8 = mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternMatcherBinder<mlir::anec::MatMul,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>(a1, 0, v82);
    v86[0] = *(*(a1 + 72) + 56);
    DefiningOp = mlir::Value::getDefiningOp(v86);
    if (DefiningOp)
    {
      if (((*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id) & v8) != 0)
      {
        v80 = v84;
        v81 = v83;
        v79 = DefiningOp;
        mlir::anec::MatMul::getBias(&v81, v86);
        if (v87 == 1)
        {
          v11 = v86[1];
          if (llvm::APFloatBase::PPCDoubleDouble(v10) == v11)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v86[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v86[1]);
          }

          v86[0] = operator new(0x19uLL);
          *&v86[1] = xmmword_1E096E570;
          strcpy(v86[0], "MatMul already has bias");
        }

        else
        {
          if (*(v81 + 9))
          {
            v12 = v81 - 16;
          }

          else
          {
            v12 = 0;
          }

          v13 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
          if (v13 && !*v13)
          {
            v78[0] = mlir::mps::ConstantOp::getAsAttribute(&v80);
            v78[1] = v17;
            v77[0] = mlir::mps::ConstantOp::getAsAttribute(&v79);
            v77[1] = v18;
            Type = mlir::ElementsAttr::getType(v78);
            v20 = Type;
            if (Type)
            {
              Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
            }

            v76[0] = v20;
            v76[1] = Type;
            v21 = mlir::ElementsAttr::getType(v77);
            v22 = v21;
            if (v21)
            {
              v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
            }

            v75[0] = v22;
            v75[1] = v21;
            mlir::CallableOpInterface::getArgAttrsAttr(v76);
            v24 = v23;
            mlir::CallableOpInterface::getArgAttrsAttr(v75);
            if (v24 == v25 && (v26 = mlir::getElementTypeOrSelf(v76[0]), v26 == mlir::getElementTypeOrSelf(v75[0])))
            {
              ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v76);
              v68 = v28;
              v29 = mlir::CallableOpInterface::getArgAttrsAttr(v75);
              mlir::CallableOpInterface::getArgAttrsAttr(v76);
              IndexFromDim = mlir::anec::getIndexFromDim(4, v30);
              v33 = v32;
              mlir::CallableOpInterface::getArgAttrsAttr(v75);
              v35 = mlir::anec::getIndexFromDim(4, v34);
              v37 = v36;
              mlir::CallableOpInterface::getArgAttrsAttr(v76);
              v39 = mlir::anec::getIndexFromDim(1, v38);
              if ((v33 & 1) != 0 && (v37 & 1) != 0 && (v40 & 1) != 0 && IndexFromDim == v35)
              {
                v41 = v39;
                mlir::CallableOpInterface::getArgAttrsAttr(v76);
                if (v42)
                {
                  v43 = 0;
                  while (1)
                  {
                    v45 = IndexFromDim == v43 ? ArgAttrsAttr[IndexFromDim] : 1;
                    if (*(v29 + 8 * v43) != v45)
                    {
                      break;
                    }

                    if (v41 != v43 && IndexFromDim != v43 && ArgAttrsAttr[v43] != 1)
                    {
                      v46 = "unsupported kernel shape";
                      goto LABEL_56;
                    }

                    ++v43;
                    mlir::CallableOpInterface::getArgAttrsAttr(v76);
                    if (v43 == v44)
                    {
                      goto LABEL_51;
                    }
                  }

                  v46 = "unsupported bias shape";
                }

                else
                {
LABEL_51:
                  mlir::CallableOpInterface::getArgAttrsAttr(v76);
                  if (IndexFromDim == v47 - 1 && (mlir::ElementsAttr::isSplat(v78) & 1) == 0 && !mlir::ElementsAttr::isSplat(v77))
                  {
                    llvm::SmallVector<long long,4u>::SmallVector<long long,void>(v86, ArgAttrsAttr, v68);
                    v48 = v86[0];
                    ++*&v86[0][8 * v41];
                    v49 = LODWORD(v86[1]);
                    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v76[0]);
                    v51 = mlir::RankedTensorType::get(v48, v49, ElementTypeOrSelf, 0);
                    BufferTensorAttr = mlir::mps::getBufferTensorAttr(v51);
                    ElementsAttrRawData = mlir::getElementsAttrRawData(v78[0]);
                    v54 = v53;
                    v55 = mlir::getElementsAttrRawData(v77[0]);
                    v57 = v56;
                    MutableRawData = mlir::mps::MPSBufferTensorAttr::getMutableRawData(&BufferTensorAttr);
                    memcpy(MutableRawData, ElementsAttrRawData, v54);
                    memcpy(&MutableRawData[v54], v55, v57);
                    v59 = v86[0];
                    v60 = LODWORD(v86[1]);
                    v61 = mlir::getElementTypeOrSelf((*(v80 - 8) & 0xFFFFFFFFFFFFFFF8));
                    v73 = mlir::MemRefType::get(v59, v60, v61, 0, 0, 0);
                    v72 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr>((a2 + 1), *(v80 + 24), &v73, &BufferTensorAttr);
                    F16Type = mlir::Builder::getF16Type(a2 + 1, v62);
                    FloatAttr = mlir::Builder::getFloatAttr(1.0, (a2 + 1), F16Type);
                    v64 = *(a1 + 24);
                    __p[0] = *(*(v81 + 9) + 24);
                    v65 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::detail::TypedValue<mlir::MemRefType>,mlir::mps::ConstantOp &,mlir::FloatAttr &>(a2 + 1, v64, __p, &v72, &FloatAttr);
                    v66 = mlir::verify(v65, 1);
                    v67 = *a2;
                    if (v66)
                    {
                      (*(v67 + 1))(a2, a1, v65);
                      matched = 1;
                    }

                    else
                    {
                      (*(v67 + 2))(a2, v65);
                      (*(*a2 + 2))(a2, v72);
                      std::string::basic_string[abi:nn200100]<0>(__p, "validation failed");
                      matched = mlir::logMatchFailure(__p, *(a1 + 24), a2);
                      if (v70 < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }

                    if (v86[0] != &v86[2])
                    {
                      free(v86[0]);
                    }

LABEL_26:
                    if ((matched & 1) == 0)
                    {
                    }

                    return 1;
                  }

                  v46 = "unsupported concatenation dimension";
                }

LABEL_56:
                v15 = std::string::basic_string[abi:nn200100]<0>(v86, v46);
                v14 = *(a1 + 24);
LABEL_24:
                matched = mlir::logMatchFailure(v15, v14, a2);
                if (SHIBYTE(v86[2]) < 0)
                {
                  operator delete(v86[0]);
                }

                goto LABEL_26;
              }

              HIBYTE(v86[2]) = 15;
              strcpy(v86, "cannot get axes");
            }

            else
            {
              v86[0] = operator new(0x28uLL);
              *&v86[1] = xmmword_1E0999950;
              strcpy(v86[0], "unsupported kernel and bias fusion");
            }
          }

          else
          {
            v86[0] = operator new(0x20uLL);
            *&v86[1] = xmmword_1E09826A0;
            strcpy(v86[0], "MatMul has multiple users");
          }
        }

        v14 = *(a1 + 24);
        v15 = v86;
        goto LABEL_24;
      }
    }
  }

  strcpy(v86, "does not match pattern");
  HIBYTE(v86[2]) = 22;
  v4 = mlir::logMatchFailure(v86, *(a1 + 24), a2);
  if (SHIBYTE(v86[2]) < 0)
  {
    v7 = v4;
    operator delete(v86[0]);
    if (v7)
    {
      return 1;
    }
  }

  else if (v4)
  {
    return 1;
  }
}

uint64_t mlir::anec::anonymous namespace::canonicalizeElementwiseToGOC(mlir::anec::_anonymous_namespace_ *this, mlir::Float16Type **a2, mlir::PatternRewriter *a3)
{
  v104[5] = *MEMORY[0x1E69E9840];
  RawElementsAttr = 0;
  v89 = 0;
  v5 = *(*(this + 9) + 56);
  v96 = &RawElementsAttr;
  v99 = v5;
  DefiningOp = mlir::Value::getDefiningOp(&v99);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v96, DefiningOp))
  {
    v7 = *(this + 9);
    v8 = *(v7 + 24);
    v87 = v8;
    v9 = v7 + 56;
    v10 = 1;
  }

  else
  {
    v11 = *(*(this + 9) + 24);
    v96 = &RawElementsAttr;
    v99 = v11;
    v12 = mlir::Value::getDefiningOp(&v99);
    if (!v12 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v96, v12))
    {
      return 0;
    }

    v10 = 0;
    v13 = *(this + 9);
    v8 = *(v13 + 56);
    v87 = v8;
    v9 = v13 + 24;
  }

  v14 = (*(*v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v85 = v14;
  v86 = v15;
  mlir::CallableOpInterface::getArgAttrsAttr(&v85);
  mlir::anec::getIndexFromDim(1, v16);
  if (v17)
  {
    if ((mlir::ElementsAttr::isSplat(&RawElementsAttr) & 1) == 0 && !mlir::anec::allElementsOnAxis(v85, v86, 1))
    {
      return 0;
    }

    v18 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
    v19 = v18 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8) : 0;
    v84[0] = v18;
    v84[1] = v19;
    v20 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8) : 0;
    v83[0] = v20;
    v83[1] = v21;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v84);
    v24 = v23;
    v25 = mlir::CallableOpInterface::getArgAttrsAttr(v83);
    if (v24 != v26 || memcmp(ArgAttrsAttr, v25, 8 * v24))
    {
      return 0;
    }

    v29 = mlir::CallableOpInterface::getArgAttrsAttr(&v85);
    v31 = v30;
    v102 = v104;
    v103 = 0x500000000;
    v32 = (8 * v30) >> 3;
    if (v32 < 6)
    {
      v33 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v104, v32, 8);
      v33 = v103;
    }

    if (v31)
    {
      memcpy(&v102[8 * v33], v29, 8 * v31);
      v33 = v103;
    }

    LODWORD(v103) = v33 + v31;
    if (!mlir::ElementsAttr::isSplat(&RawElementsAttr))
    {
LABEL_49:
      v44 = v102;
      v45 = v103;
      F16Type = mlir::Builder::getF16Type(a2 + 1, v34);
      v82 = mlir::MemRefType::get(v44, v45, F16Type, 0, 0, 0);
      Type = mlir::ElementsAttr::getType(&RawElementsAttr);
      if (*(*mlir::getElementTypeOrSelf(Type) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v99 = v101;
        v100 = 0xC00000000;
        mlir::getFloatValues<float>(RawElementsAttr, v89, &v99, 0);
        v54 = v102;
        v55 = v103;
        F32Type = mlir::Builder::getF32Type(a2 + 1, v56);
        v58 = mlir::RankedTensorType::get(v54, v55, F32Type, 0);
        RawElementsAttr = mlir::createRawElementsAttr(v58, v99, 4 * v100);
        v89 = v59;
        if (v99 != v101)
        {
          free(v99);
        }
      }

      else if (mlir::ElementsAttr::isSplat(&RawElementsAttr))
      {
        v99 = RawElementsAttr;
        v48 = v102;
        v49 = v103;
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(RawElementsAttr);
        v51 = mlir::RankedTensorType::get(v48, v49, ElementTypeOrSelf, 0);
        v52 = v51;
        if (v51)
        {
          v53 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
        }

        else
        {
          v53 = 0;
        }

        v60 = mlir::DenseElementsAttr::reshape(&v99, v52, v53);
        v61 = v60;
        if (v60)
        {
          v60 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v60 + 8);
        }

        RawElementsAttr = v61;
        v89 = v60;
      }

      v81 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 1), *(this + 3), &v82, &RawElementsAttr);
      v62 = v102;
      v63 = v103;
      v65 = mlir::Builder::getF32Type(a2 + 1, v64);
      v66 = mlir::RankedTensorType::get(v62, v63, v65, 0);
      v99 = v101;
      v101[0] = 0;
      v100 = 0xC00000001;
      v96 = v98;
      v98[0] = 1065353216;
      v97 = 0xC00000001;
      v93 = v95;
      *v95 = -1082130432;
      v94 = 0xC00000001;
      v67 = *(this + 3);
      v91 = mlir::createRawElementsAttr(v66, v95, 4uLL);
      v92 = v68;
      v78 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 1), v67, &v82, &v91) - 16;
      v69 = *(this + 3);
      v91 = mlir::createRawElementsAttr(v66, v99, 4 * v100);
      v92 = v70;
      v80 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 1), v69, &v82, &v91) - 16;
      v71 = *(this + 3);
      v91 = mlir::createRawElementsAttr(v66, v96, 4 * v97);
      v92 = v72;
      v79 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 1), v71, &v82, &v91) - 16;
      v73 = *(*(this + 6) + 16);
      if (v73 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
      {
        v74 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::mps::ConstantOp &>((a2 + 1), *(this + 3), v83, &v87, &v79, &v81);
      }

      else
      {
        if (v73 != &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
        {
          if (v73 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id)
          {
            v77 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>((a2 + 1), *(this + 3), v83, &v87, &v78, &v80) - 16;
            v75 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::mps::ConstantOp &>((a2 + 1), *(this + 3), v83, &v77, &v79, &v81) - 16;
            v77 = v75;
            if (v10)
            {
              v75 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>((a2 + 1), *(this + 3), v83, &v77, &v78, &v80) - 16;
              v77 = v75;
            }

            v90 = v75;
            v27 = 1;
            mlir::ValueRange::ValueRange(&v91, &v90, 1uLL);
            (**a2)(a2, this, v91, v92);
          }

          else
          {
            v27 = 0;
          }

          goto LABEL_66;
        }

        v74 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::mps::ConstantOp &,mlir::Value &>((a2 + 1), *(this + 3), v83, &v87, &v81, &v80);
      }

      (*(*a2 + 1))(a2, this, v74);
      v27 = 1;
LABEL_66:
      if (v93 != v95)
      {
        free(v93);
      }

      if (v96 != v98)
      {
        free(v96);
      }

      if (v99 != v101)
      {
        free(v99);
      }

      goto LABEL_72;
    }

    v35 = mlir::CallableOpInterface::getArgAttrsAttr(v84);
    if (mlir::ShapedType::getNumElements(v35, v36) != 1)
    {
      v37 = mlir::CallableOpInterface::getArgAttrsAttr(v84);
      NumElements = mlir::ShapedType::getNumElements(v37, v38);
      if (NumElements < mlir::ElementsAttr::getNumElements(RawElementsAttr, v89))
      {
        v27 = 0;
LABEL_72:
        if (v102 != v104)
        {
          free(v102);
        }

        return v27;
      }
    }

    mlir::CallableOpInterface::getArgAttrsAttr(v84);
    v40 = v34;
    v99 = v101;
    HIDWORD(v100) = 5;
    if (v34 < 6)
    {
      if (v34)
      {
        memset_pattern16(v101, &unk_1E096FAE0, 8 * v34);
      }

      v41 = v101;
    }

    else
    {
      LODWORD(v100) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v99, v101, v34, 8);
      v41 = v99;
      memset_pattern16(v99, &unk_1E096FAE0, 8 * v40);
    }

    LODWORD(v100) = v40;
    v42 = v103;
    if (v103 >= v40)
    {
      if (v40)
      {
        memmove(v102, v41, 8 * v40);
      }

      goto LABEL_47;
    }

    if (HIDWORD(v103) >= v40)
    {
      if (v103)
      {
        memmove(v102, v41, 8 * v103);
        goto LABEL_45;
      }
    }

    else
    {
      LODWORD(v103) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v104, v40, 8);
    }

    v42 = 0;
LABEL_45:
    v43 = v100 - v42;
    if (v43)
    {
      memcpy(&v102[8 * v42], &v99[8 * v42], 8 * v43);
    }

LABEL_47:
    LODWORD(v103) = v40;
    if (v99 != v101)
    {
      free(v99);
    }

    goto LABEL_49;
  }

  v76 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::anec::ElementwiseSub::canonicalize(v76);
}

uint64_t mlir::anec::ElementwiseMax::canonicalize(uint64_t a1, mlir::Float16Type **a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v4 = *(*(a1 + 72) + 56);
  v17 = &v15;
  __p = v4;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(&v17, DefiningOp) && mlir::DenseElementsAttr::isSplat(&v15) && (*(a1 + 36) ? (v6 = a1 - 16) : (v6 = 0), (*(*(*(a1 + 72) + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8)) < 8))
  {
    v16 = *(*(a1 + 72) + 24);
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v15, &__p);
    v8 = llvm::APFloatBase::IEEEhalf(v7);
    LOBYTE(v17) = 0;
    v9 = llvm::APFloat::convert(&__p, v8, 1, &v17);
    v10 = v20;
    v11 = llvm::APFloatBase::PPCDoubleDouble(v9);
    if (v11 == v10)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v18, v10);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(v18, v10);
    }

    if (v11 == v18[0])
    {
      llvm::detail::DoubleAPFloat::makeLargest(v18, 0);
    }

    else
    {
      llvm::detail::IEEEFloat::makeLargest(v18, 0);
    }

    v14 = mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::Value &,llvm::APFloat &,llvm::APFloat>(a2 + 1, *(a1 + 24), &v16, &__p, &v17);
    (*(*a2 + 1))(a2, a1, v14);
    if (v11 == v18[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v18);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v18);
    }

    if (v11 == v20)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v20);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v20);
    }

    return 1;
  }

  else
  {
    __p = operator new(0x30uLL);
    v20 = xmmword_1E0999960;
    strcpy(__p, "rhs is not a non-broadcasting scalar constant");
    result = mlir::logMatchFailure(&__p, *(a1 + 24), a2);
    if (SHIBYTE(v20) < 0)
    {
      v13 = result;
      operator delete(__p);
      return v13;
    }
  }

  return result;
}

uint64_t mlir::anec::ElementwiseMin::canonicalize(uint64_t a1, mlir::Float16Type **a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v4 = *(*(a1 + 72) + 56);
  v17 = &v15;
  __p = v4;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(&v17, DefiningOp) && mlir::DenseElementsAttr::isSplat(&v15) && (*(a1 + 36) ? (v6 = a1 - 16) : (v6 = 0), (*(*(*(a1 + 72) + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8)) < 8))
  {
    v16 = *(*(a1 + 72) + 24);
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v15, &__p);
    v8 = llvm::APFloatBase::IEEEhalf(v7);
    LOBYTE(v17) = 0;
    v9 = llvm::APFloat::convert(&__p, v8, 1, &v17);
    v10 = v20;
    v11 = llvm::APFloatBase::PPCDoubleDouble(v9);
    if (v11 == v10)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v18, v10);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(v18, v10);
    }

    if (v11 == v18[0])
    {
      llvm::detail::DoubleAPFloat::makeLargest(v18, 1);
    }

    else
    {
      llvm::detail::IEEEFloat::makeLargest(v18, 1);
    }

    v14 = mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::Value &,llvm::APFloat,llvm::APFloat&>(a2 + 1, *(a1 + 24), &v16, &v17, &__p);
    (*(*a2 + 1))(a2, a1, v14);
    if (v11 == v18[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v18);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v18);
    }

    if (v11 == v20)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v20);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v20);
    }

    return 1;
  }

  else
  {
    __p = operator new(0x30uLL);
    v20 = xmmword_1E0999960;
    strcpy(__p, "rhs is not a non-broadcasting scalar constant");
    result = mlir::logMatchFailure(&__p, *(a1 + 24), a2);
    if (SHIBYTE(v20) < 0)
    {
      v13 = result;
      operator delete(__p);
      return v13;
    }
  }

  return result;
}

uint64_t mlir::anec::Ceil::addOpToNetwork(uint64_t *a1, void *a2)
{
  v154 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!a2)
  {
    AttrDictionary = "network should not be nullptr";
    v144 = 259;
    mlir::Operation::emitError(v2, &AttrDictionary, &__str);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__str);
    if (__str.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&__str);
    }

    if (v153 == 1)
    {
      if (v152 != &v153)
      {
        free(v152);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v151;
        v11 = __p;
        if (v151 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v151 = v9;
        operator delete(v11);
      }

      v12 = v148;
      if (v148)
      {
        v13 = v149;
        v14 = v148;
        if (v149 != v148)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v148;
        }

        v149 = v12;
        operator delete(v14);
      }

      if (v146 != v147)
      {
        free(v146);
      }
    }

    return v8;
  }

  v4 = *(*(v2 + 72) + 24);
  if (*(v2 + 36))
  {
    v5 = v2 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  mlir::anec::computeOpKeyString(v2, &v139);
  if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2 + 61, &v138))
  {
    if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2 + 61, &v138))
    {
      v7 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2 + 61, &v138);
      if (v7)
      {
        if (*(v7 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, v7[5], v7[6]);
        }

        else
        {
          __str = *(v7 + 5);
        }

        LOBYTE(v146) = 1;
        std::string::operator=(&v138, &__str);
        if (v146 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_30;
      }
    }

    else
    {
      __str.__r_.__value_.__s.__data_[0] = 0;
      LOBYTE(v146) = 0;
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    abort();
  }

LABEL_30:
  v17 = *(*(v2 + 48) + 16);
  if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Ceil,void>::id)
  {
    v18 = 0;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id)
  {
    v18 = 1;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Cos,void>::id)
  {
    v18 = 2;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Degamma,void>::id)
  {
    v18 = 3;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Dirac,void>::id)
  {
    v18 = 4;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Elu,void>::id)
  {
    v18 = 5;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Erf,void>::id)
  {
    v18 = 6;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Exp2,void>::id)
  {
    v18 = 7;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Floor,void>::id)
  {
    v18 = 8;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Gelu,void>::id)
  {
    v18 = 9;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::HighPrecisionSigmoid,void>::id)
  {
    v18 = 10;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Invert,void>::id)
  {
    v18 = 11;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::LeakyRelu,void>::id)
  {
    v18 = 12;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Log2,void>::id)
  {
    v18 = 13;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::NRelu,void>::id)
  {
    v18 = 14;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Relu,void>::id)
  {
    v18 = 15;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::RoundNearest,void>::id)
  {
    v18 = 16;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Rsqrt,void>::id)
  {
    v18 = 17;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Sigmoid,void>::id)
  {
    v18 = 18;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Sign,void>::id)
  {
    v18 = 19;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Sin,void>::id)
  {
    v18 = 20;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Sqr,void>::id)
  {
    v18 = 21;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Sqrt,void>::id)
  {
    v18 = 22;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Swish,void>::id)
  {
    v18 = 23;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Tanh,void>::id)
  {
    v18 = 24;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Trunc,void>::id)
  {
    v18 = 25;
  }

  else
  {
    v18 = 0;
  }

  v19 = operator new(0xC0uLL);
  *v19 = &unk_1F5B2E868;
  v20 = (v19 + 8);
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v20, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v20->__r_.__value_.__l.__data_ = *&v139.__r_.__value_.__l.__data_;
    *(v19 + 3) = *(&v139.__r_.__value_.__l + 2);
  }

  *(v19 + 8) = 4;
  *(v19 + 5) = 0;
  v19[48] = 0;
  *(v19 + 7) = @"Neuron";
  *(v19 + 8) = v19 + 80;
  *(v19 + 9) = 0x100000000;
  *(v19 + 14) = v19 + 128;
  *(v19 + 15) = 0x300000000;
  *v19 = &unk_1F5B34368;
  *(v19 + 44) = v18;
  v21 = operator new(0x20uLL);
  v21->__shared_owners_ = 0;
  v21->__vftable = &unk_1F5B33BD0;
  v21->__shared_weak_owners_ = 0;
  v21[1].__vftable = v19;
  v22 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8) || (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8), !v22))
  {
    AttrDictionary = "Unable to get input shape type";
    v144 = 259;
    mlir::Operation::emitError(v2, &AttrDictionary, &__str);
    if (__str.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&__str);
    }

    if (v153 != 1)
    {
      goto LABEL_260;
    }

    if (v152 != &v153)
    {
      free(v152);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v151;
      v34 = __p;
      if (v151 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v151 = v32;
      operator delete(v34);
    }

    v27 = v148;
    if (!v148)
    {
      goto LABEL_258;
    }

    v35 = v149;
    v29 = v148;
    if (v149 == v148)
    {
LABEL_257:
      v149 = v27;
      operator delete(v29);
LABEL_258:
      if (v146 != v147)
      {
        free(v146);
      }

      goto LABEL_260;
    }

    do
    {
      v37 = *--v35;
      v36 = v37;
      *v35 = 0;
      if (v37)
      {
        operator delete[](v36);
      }
    }

    while (v35 != v27);
LABEL_256:
    v29 = v148;
    goto LABEL_257;
  }

  ANECIRDataType = mlir::anec::getANECIRDataType(v4);
  if ((ANECIRDataType & 0x100000000) == 0)
  {
    AttrDictionary = "Unable to get input data type";
    v144 = 259;
    mlir::Operation::emitError(v2, &AttrDictionary, &__str);
    if (__str.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&__str);
    }

    if (v153 != 1)
    {
      goto LABEL_260;
    }

    if (v152 != &v153)
    {
      free(v152);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v151;
      v26 = __p;
      if (v151 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v151 = v24;
      operator delete(v26);
    }

    v27 = v148;
    if (!v148)
    {
      goto LABEL_258;
    }

    v28 = v149;
    v29 = v148;
    if (v149 == v148)
    {
      goto LABEL_257;
    }

    do
    {
      v31 = *--v28;
      v30 = v31;
      *v28 = 0;
      if (v31)
      {
        operator delete[](v30);
      }
    }

    while (v28 != v27);
    goto LABEL_256;
  }

  mlir::anec::ANECIRUnit::AddInput(v19, &v138, ANECIRDataType);
  v38 = *(*(v2 + 48) + 16);
  if (v38 == &mlir::detail::TypeIDResolver<mlir::anec::Ceil,void>::id)
  {
    goto LABEL_231;
  }

  if (v38 == &mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id)
  {
    v136 = NextResultAtOffset;
    AttrDictionary = mlir::Operation::getAttrDictionary(v2);
    Value = mlir::ArrayAttr::getValue(&AttrDictionary);
    AttrDictionary = mlir::Operation::getAttrDictionary(v2);
    v44 = mlir::ArrayAttr::getValue(&AttrDictionary);
    v140 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v44 + 16 * v45 - 16), **(*(v2 + 48) + 96));
    v46 = mlir::FloatAttr::getValue(&v140, &AttrDictionary);
    v47 = v143[0];
    v48 = llvm::APFloatBase::PPCDoubleDouble(v46);
    if (v48 == v47)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&__str.__r_.__value_.__l.__size_, v47);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&__str.__r_.__value_.__l.__size_, v47);
    }

    if (v48 == __str.__r_.__value_.__l.__size_)
    {
      llvm::detail::DoubleAPFloat::makeLargest(&__str.__r_.__value_.__r.__words[1], 0);
    }

    else
    {
      llvm::detail::IEEEFloat::makeLargest(&__str.__r_.__value_.__r.__words[1], 0);
    }

    if (v48 == v143[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v143);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v143);
    }

    AttrDictionary = mlir::Operation::getAttrDictionary(v2);
    v49 = mlir::ArrayAttr::getValue(&AttrDictionary);
    AttrDictionary = mlir::Operation::getAttrDictionary(v2);
    v50 = mlir::ArrayAttr::getValue(&AttrDictionary);
    v140 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v49 + 16), (v50 + 16 * v51), *(*(*(v2 + 48) + 96) + 8));
    mlir::FloatAttr::getValue(&v140, &AttrDictionary);
    if (v48 == __str.__r_.__value_.__l.__size_)
    {
      v52 = llvm::detail::DoubleAPFloat::compare(&__str.__r_.__value_.__r.__words[1], v143);
    }

    else
    {
      v52 = llvm::detail::IEEEFloat::compare(&__str.__r_.__value_.__r.__words[1], v143);
    }

    p_AttrDictionary = &AttrDictionary;
    if (v52)
    {
      p_size = v143;
    }

    else
    {
      p_AttrDictionary = &__str;
      p_size = &__str.__r_.__value_.__l.__size_;
    }

    if (v48 == p_AttrDictionary->__r_.__value_.__l.__size_)
    {
      llvm::detail::DoubleAPFloat::bitcastToAPInt(p_size, &v140);
    }

    else
    {
      llvm::detail::IEEEFloat::bitcastToAPInt(p_size, &v140);
    }

    v55 = v141;
    if (v141 < 0x41)
    {
      v56 = v140;
      if (v140 >= 0xFFFF)
      {
        v56 = -1;
      }

      v134 = v56;
LABEL_173:
      if (v48 == v143[0])
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v143);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v143);
      }

      AttrDictionary = mlir::Operation::getAttrDictionary(v2);
      v64 = mlir::ArrayAttr::getValue(&AttrDictionary);
      AttrDictionary = mlir::Operation::getAttrDictionary(v2);
      v65 = mlir::ArrayAttr::getValue(&AttrDictionary);
      v140 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v64, (v65 + 16 * v66 - 16), **(*(v2 + 48) + 96));
      mlir::FloatAttr::getValue(&v140, &AttrDictionary);
      if (v48 == __str.__r_.__value_.__l.__size_)
      {
        v67 = llvm::detail::DoubleAPFloat::compare(&__str.__r_.__value_.__r.__words[1], v143);
      }

      else
      {
        v67 = llvm::detail::IEEEFloat::compare(&__str.__r_.__value_.__r.__words[1], v143);
      }

      p_str = &AttrDictionary;
      if (v67)
      {
        v69 = v143;
      }

      else
      {
        p_str = &__str;
        v69 = &__str.__r_.__value_.__l.__size_;
      }

      if (v48 == p_str->__r_.__value_.__l.__size_)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(v69, &v140);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(v69, &v140);
      }

      v70 = v141;
      if (v141 < 0x41)
      {
        if (v140 >= 0xFFFF)
        {
          LOWORD(v71) = -1;
        }

        else
        {
          LOWORD(v71) = v140;
        }

        goto LABEL_196;
      }

      if (v70 - llvm::APInt::countLeadingZerosSlowCase(&v140) <= 0x40)
      {
        if (*v140 >= 0xFFFFuLL)
        {
          LOWORD(v71) = -1;
        }

        else
        {
          v71 = *v140;
        }
      }

      else
      {
        LOWORD(v71) = -1;
        if (!v140)
        {
LABEL_196:
          if (v48 == v143[0])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v143);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v143);
          }

          NextResultAtOffset = v136;
          *(v19 + 93) = v134;
          *(v19 + 92) = v71;
          if (v48 == __str.__r_.__value_.__l.__size_)
          {
            goto LABEL_230;
          }

          goto LABEL_200;
        }
      }

      operator delete[](v140);
      goto LABEL_196;
    }

    if (v55 - llvm::APInt::countLeadingZerosSlowCase(&v140) <= 0x40)
    {
      v63 = *v140;
      if (*v140 >= 0xFFFFuLL)
      {
        LOWORD(v63) = -1;
      }

      v134 = v63;
    }

    else
    {
      v134 = -1;
      if (!v140)
      {
        goto LABEL_173;
      }
    }

    operator delete[](v140);
    goto LABEL_173;
  }

  if (v38 != &mlir::detail::TypeIDResolver<mlir::anec::Dirac,void>::id && v38 != &mlir::detail::TypeIDResolver<mlir::anec::Cos,void>::id && v38 != &mlir::detail::TypeIDResolver<mlir::anec::Degamma,void>::id)
  {
    if (v38 == &mlir::detail::TypeIDResolver<mlir::anec::Elu,void>::id)
    {
      v140 = mlir::Operation::getAttrDictionary(v2);
      v57 = mlir::ArrayAttr::getValue(&v140);
      v140 = mlir::Operation::getAttrDictionary(v2);
      v58 = mlir::ArrayAttr::getValue(&v140);
      v140 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v57, (v58 + 16 * v59), **(*(v2 + 48) + 96));
      v60 = mlir::FloatAttr::getValue(&v140, &__str);
      size = __str.__r_.__value_.__l.__size_;
      v62 = llvm::APFloatBase::PPCDoubleDouble(v60);
      if (v62 == size)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(&__str.__r_.__value_.__r.__words[1], &AttrDictionary);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(&__str.__r_.__value_.__r.__words[1], &AttrDictionary);
      }

      v77 = v143[0];
      if (LODWORD(v143[0]) < 0x41)
      {
        if (AttrDictionary < 0x10000)
        {
          *(v19 + 94) = AttrDictionary;
        }

        else
        {
          *(v19 + 94) = -1;
        }

LABEL_229:
        if (v62 == __str.__r_.__value_.__l.__size_)
        {
LABEL_230:
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__str.__r_.__value_.__r.__words[1]);
          goto LABEL_231;
        }

LABEL_200:
        llvm::detail::IEEEFloat::~IEEEFloat(&__str.__r_.__value_.__r.__words[1]);
        goto LABEL_231;
      }

      v78 = v77 - llvm::APInt::countLeadingZerosSlowCase(&AttrDictionary);
      v79 = AttrDictionary;
      if (v78 <= 0x40)
      {
        v80 = *AttrDictionary;
        if (*AttrDictionary >= 0xFFFFuLL)
        {
          LOWORD(v80) = -1;
        }

        *(v19 + 94) = v80;
      }

      else
      {
        *(v19 + 94) = -1;
        if (!v79)
        {
          goto LABEL_229;
        }
      }

LABEL_228:
      operator delete[](v79);
      goto LABEL_229;
    }

    if (v38 != &mlir::detail::TypeIDResolver<mlir::anec::HighPrecisionSigmoid,void>::id && v38 != &mlir::detail::TypeIDResolver<mlir::anec::Gelu,void>::id && v38 != &mlir::detail::TypeIDResolver<mlir::anec::Floor,void>::id && v38 != &mlir::detail::TypeIDResolver<mlir::anec::Erf,void>::id && v38 != &mlir::detail::TypeIDResolver<mlir::anec::Exp2,void>::id)
    {
      if (v38 == &mlir::detail::TypeIDResolver<mlir::anec::Invert,void>::id)
      {
        goto LABEL_201;
      }

      if (v38 != &mlir::detail::TypeIDResolver<mlir::anec::LeakyRelu,void>::id)
      {
        if (v38 != &mlir::detail::TypeIDResolver<mlir::anec::Log2,void>::id)
        {
          if (v38 != &mlir::detail::TypeIDResolver<mlir::anec::NRelu,void>::id)
          {
            if (v38 != &mlir::detail::TypeIDResolver<mlir::anec::Rsqrt,void>::id)
            {
              goto LABEL_231;
            }

            __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
            v39 = mlir::ArrayAttr::getValue(&__str);
            __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
            v40 = mlir::ArrayAttr::getValue(&__str);
            AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v39, (v40 + 16 * v41), **(*(v2 + 48) + 96));
            v42 = &AttrDictionary;
            goto LABEL_202;
          }

          __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
          v109 = mlir::ArrayAttr::getValue(&__str);
          __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
          v110 = mlir::ArrayAttr::getValue(&__str);
          AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v109, (v110 + 16 * v111 - 16), **(*(v2 + 48) + 96));
          v112 = mlir::FloatAttr::getValue(&AttrDictionary, &__str);
          v113 = __str.__r_.__value_.__l.__size_;
          v114 = llvm::APFloatBase::PPCDoubleDouble(v112);
          if (v114 == v113)
          {
            llvm::detail::DoubleAPFloat::bitcastToAPInt(&__str.__r_.__value_.__r.__words[1], &AttrDictionary);
          }

          else
          {
            llvm::detail::IEEEFloat::bitcastToAPInt(&__str.__r_.__value_.__r.__words[1], &AttrDictionary);
          }

          v125 = v143[0];
          if (LODWORD(v143[0]) < 0x41)
          {
            v126 = AttrDictionary;
            if (AttrDictionary >= 0xFFFF)
            {
              v126 = -1;
            }

            v135 = v126;
LABEL_321:
            if (v114 == __str.__r_.__value_.__l.__size_)
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__str.__r_.__value_.__r.__words[1]);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(&__str.__r_.__value_.__r.__words[1]);
            }

            __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
            v128 = mlir::ArrayAttr::getValue(&__str);
            __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
            v129 = mlir::ArrayAttr::getValue(&__str);
            AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v128 + 16), (v129 + 16 * v130), *(*(*(v2 + 48) + 96) + 8));
            mlir::FloatAttr::getValue(&AttrDictionary, &__str);
            if (v114 == __str.__r_.__value_.__l.__size_)
            {
              llvm::detail::DoubleAPFloat::bitcastToAPInt(&__str.__r_.__value_.__r.__words[1], &AttrDictionary);
            }

            else
            {
              llvm::detail::IEEEFloat::bitcastToAPInt(&__str.__r_.__value_.__r.__words[1], &AttrDictionary);
            }

            v131 = v143[0];
            if (LODWORD(v143[0]) >= 0x41)
            {
              if (v131 - llvm::APInt::countLeadingZerosSlowCase(&AttrDictionary) <= 0x40)
              {
                if (*AttrDictionary >= 0xFFFFuLL)
                {
                  LOWORD(v132) = -1;
                }

                else
                {
                  v132 = *AttrDictionary;
                }
              }

              else
              {
                LOWORD(v132) = -1;
                if (!AttrDictionary)
                {
                  goto LABEL_338;
                }
              }

              operator delete[](AttrDictionary);
            }

            else if (AttrDictionary >= 0xFFFF)
            {
              LOWORD(v132) = -1;
            }

            else
            {
              LOWORD(v132) = AttrDictionary;
            }

LABEL_338:
            if (v114 == __str.__r_.__value_.__l.__size_)
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__str.__r_.__value_.__r.__words[1]);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(&__str.__r_.__value_.__r.__words[1]);
            }

            *(v19 + 91) = v132;
            *(v19 + 92) = v135;
            goto LABEL_231;
          }

          if (v125 - llvm::APInt::countLeadingZerosSlowCase(&AttrDictionary) <= 0x40)
          {
            v127 = *AttrDictionary;
            if (*AttrDictionary >= 0xFFFFuLL)
            {
              LOWORD(v127) = -1;
            }

            v135 = v127;
          }

          else
          {
            v135 = -1;
            if (!AttrDictionary)
            {
              goto LABEL_321;
            }
          }

          operator delete[](AttrDictionary);
          goto LABEL_321;
        }

LABEL_201:
        v140 = mlir::Operation::getAttrDictionary(v2);
        v72 = mlir::ArrayAttr::getValue(&v140);
        v140 = mlir::Operation::getAttrDictionary(v2);
        v73 = mlir::ArrayAttr::getValue(&v140);
        v140 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v72, (v73 + 16 * v74), **(*(v2 + 48) + 96));
        v42 = &v140;
LABEL_202:
        v75 = mlir::FloatAttr::getValue(v42, &__str);
        v76 = __str.__r_.__value_.__l.__size_;
        v62 = llvm::APFloatBase::PPCDoubleDouble(v75);
        if (v62 == v76)
        {
          llvm::detail::DoubleAPFloat::bitcastToAPInt(&__str.__r_.__value_.__r.__words[1], &AttrDictionary);
        }

        else
        {
          llvm::detail::IEEEFloat::bitcastToAPInt(&__str.__r_.__value_.__r.__words[1], &AttrDictionary);
        }

        v87 = v143[0];
        if (LODWORD(v143[0]) < 0x41)
        {
          if (AttrDictionary < 0x10000)
          {
            *(v19 + 95) = AttrDictionary;
          }

          else
          {
            *(v19 + 95) = -1;
          }

          goto LABEL_229;
        }

        v88 = v87 - llvm::APInt::countLeadingZerosSlowCase(&AttrDictionary);
        v79 = AttrDictionary;
        if (v88 <= 0x40)
        {
          v89 = *AttrDictionary;
          if (*AttrDictionary >= 0xFFFFuLL)
          {
            LOWORD(v89) = -1;
          }

          *(v19 + 95) = v89;
        }

        else
        {
          *(v19 + 95) = -1;
          if (!v79)
          {
            goto LABEL_229;
          }
        }

        goto LABEL_228;
      }

      __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
      v81 = mlir::ArrayAttr::getValue(&__str);
      __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
      v82 = mlir::ArrayAttr::getValue(&__str);
      AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v81, (v82 + 16 * v83 - 16), **(*(v2 + 48) + 96));
      v84 = mlir::FloatAttr::getValue(&AttrDictionary, &__str);
      v85 = __str.__r_.__value_.__l.__size_;
      v86 = llvm::APFloatBase::PPCDoubleDouble(v84);
      if (v86 == v85)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(&__str.__r_.__value_.__r.__words[1], &AttrDictionary);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(&__str.__r_.__value_.__r.__words[1], &AttrDictionary);
      }

      v115 = v143[0];
      if (LODWORD(v143[0]) < 0x41)
      {
        if (AttrDictionary >= 0xFFFF)
        {
          v116 = -1;
        }

        else
        {
          v116 = AttrDictionary;
        }

        goto LABEL_288;
      }

      if (v115 - llvm::APInt::countLeadingZerosSlowCase(&AttrDictionary) <= 0x40)
      {
        v117 = *AttrDictionary;
        if (*AttrDictionary >= 0xFFFFuLL)
        {
          LOWORD(v117) = -1;
        }

        v116 = v117;
      }

      else
      {
        v116 = -1;
        if (!AttrDictionary)
        {
LABEL_288:
          v137 = NextResultAtOffset;
          if (v86 == __str.__r_.__value_.__l.__size_)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__str.__r_.__value_.__r.__words[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&__str.__r_.__value_.__r.__words[1]);
          }

          __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
          v118 = mlir::ArrayAttr::getValue(&__str);
          __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
          v119 = mlir::ArrayAttr::getValue(&__str);
          AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v118 + 16), (v119 + 16 * v120), *(*(*(v2 + 48) + 96) + 8));
          mlir::FloatAttr::getValue(&AttrDictionary, &__str);
          v121 = v86;
          if (v86 == __str.__r_.__value_.__l.__size_)
          {
            v122 = v116;
            llvm::detail::DoubleAPFloat::bitcastToAPInt(&__str.__r_.__value_.__r.__words[1], &AttrDictionary);
          }

          else
          {
            v122 = v116;
            llvm::detail::IEEEFloat::bitcastToAPInt(&__str.__r_.__value_.__r.__words[1], &AttrDictionary);
          }

          v123 = v143[0];
          if (LODWORD(v143[0]) >= 0x41)
          {
            if (v123 - llvm::APInt::countLeadingZerosSlowCase(&AttrDictionary) <= 0x40)
            {
              if (*AttrDictionary >= 0xFFFFuLL)
              {
                LOWORD(v124) = -1;
              }

              else
              {
                v124 = *AttrDictionary;
              }
            }

            else
            {
              LOWORD(v124) = -1;
              if (!AttrDictionary)
              {
                goto LABEL_305;
              }
            }

            operator delete[](AttrDictionary);
          }

          else if (AttrDictionary >= 0xFFFF)
          {
            LOWORD(v124) = -1;
          }

          else
          {
            LOWORD(v124) = AttrDictionary;
          }

LABEL_305:
          if (v121 == __str.__r_.__value_.__l.__size_)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__str.__r_.__value_.__r.__words[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&__str.__r_.__value_.__r.__words[1]);
          }

          *(v19 + 90) = v122;
          *(v19 + 91) = v124;
          NextResultAtOffset = v137;
          goto LABEL_231;
        }
      }

      operator delete[](AttrDictionary);
      goto LABEL_288;
    }
  }

LABEL_231:
  v90 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v90 + 8))
  {
    v140 = 0;
    v141 = 0;
    goto LABEL_240;
  }

  v91 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v90 + 8);
  v140 = v90;
  v141 = v91;
  if (!v90)
  {
LABEL_240:
    AttrDictionary = "Unable to get output shape type";
    v144 = 259;
    mlir::Operation::emitError(v2, &AttrDictionary, &__str);
    if (__str.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&__str);
    }

    if (v153 != 1)
    {
      goto LABEL_260;
    }

    if (v152 != &v153)
    {
      free(v152);
    }

    v97 = __p;
    if (__p)
    {
      v98 = v151;
      v99 = __p;
      if (v151 != __p)
      {
        do
        {
          v98 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v98 - 1);
        }

        while (v98 != v97);
        v99 = __p;
      }

      v151 = v97;
      operator delete(v99);
    }

    v27 = v148;
    if (!v148)
    {
      goto LABEL_258;
    }

    v100 = v149;
    v29 = v148;
    if (v149 == v148)
    {
      goto LABEL_257;
    }

    do
    {
      v102 = *--v100;
      v101 = v102;
      *v100 = 0;
      if (v102)
      {
        operator delete[](v101);
      }
    }

    while (v100 != v27);
    goto LABEL_256;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v140);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v92);
  if (v94)
  {
    v95 = IndexFromDim;
    v96 = mlir::anec::getANECIRDataType(NextResultAtOffset);
    if ((v96 & 0x100000000) != 0)
    {
      v104 = v96;
      v105 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v140) + 8 * v95);
      v106 = *(v19 + 30);
      if (v106 >= *(v19 + 31))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((v19 + 112), (v19 + 128), v106 + 1, 16);
        LODWORD(v106) = *(v19 + 30);
      }

      v107 = (*(v19 + 14) + 16 * v106);
      *v107 = v104;
      v107[1] = v105;
      ++*(v19 + 30);
      __str.__r_.__value_.__r.__words[0] = v19;
      __str.__r_.__value_.__l.__size_ = v21;
      v8 = 1;
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      mlir::anec::ANECIRNetwork::AddUnit(a2, &__str);
      v108 = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        if (!atomic_fetch_add((__str.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v108->__on_zero_shared)(v108);
          std::__shared_weak_count::__release_weak(v108);
        }

        v8 = 1;
      }

LABEL_261:
      if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_263;
        }
      }

      else
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
        if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_263:
          if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            return v8;
          }

LABEL_267:
          operator delete(v139.__r_.__value_.__l.__data_);
          return v8;
        }
      }

      operator delete(v138.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v8;
      }

      goto LABEL_267;
    }

    AttrDictionary = "Unable to get output data type";
    v144 = 259;
    mlir::Operation::emitError(v2, &AttrDictionary, &__str);
    if (__str.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&__str);
    }

    if (v153 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&__str.__r_.__value_.__r.__words[1]);
    }

LABEL_260:
    v8 = 0;
    goto LABEL_261;
  }

  v133 = std::__throw_bad_optional_access[abi:nn200100]();
}

BOOL mlir::anec::anonymous namespace::verifyNeuronWithANEC(mlir::ElementsAttr *a1, unint64_t a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *(*(a3 + 48) + 16);
  if (a3 && v4 == &mlir::detail::TypeIDResolver<mlir::anec::Ceil,void>::id)
  {
    v5 = @"Ceil";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id)
  {
    v5 = @"ClampedReLU";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Cos,void>::id)
  {
    v5 = @"Cos";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Degamma,void>::id)
  {
    v5 = @"Degamma";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Dirac,void>::id)
  {
    v5 = @"Dirac";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Elu,void>::id)
  {
    v5 = @"ELU";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Erf,void>::id)
  {
    v5 = @"Erf";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Exp2,void>::id)
  {
    v5 = @"Exp2";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Floor,void>::id)
  {
    v5 = @"Floor";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Gelu,void>::id)
  {
    v5 = @"GELU";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::HighPrecisionSigmoid,void>::id)
  {
    v5 = @"SigmoidHighPrecision";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Invert,void>::id)
  {
    v5 = @"Inv";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::LeakyRelu,void>::id)
  {
    v5 = @"LeakyReLU";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Log2,void>::id)
  {
    v5 = @"Log2";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::NRelu,void>::id)
  {
    v5 = @"ReLUN";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Relu,void>::id)
  {
    v5 = @"ReLU";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::RoundNearest,void>::id)
  {
    v5 = @"RoundNearest";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Rsqrt,void>::id)
  {
    v5 = @"Rsqrt";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Sigmoid,void>::id)
  {
    v5 = @"Sigmoid";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Sign,void>::id)
  {
    v5 = @"Sign";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Sin,void>::id)
  {
    v5 = @"Sin";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Sqr,void>::id)
  {
    v5 = @"Sqr";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Sqrt,void>::id)
  {
    v5 = @"Sqrt";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Swish,void>::id)
  {
    v5 = @"Swish";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Tanh,void>::id)
  {
    v5 = @"Tanh";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Trunc,void>::id)
  {
    v5 = @"Trunc";
  }

  else
  {
    v5 = 0;
  }

  v22 = 0u;
  v23 = 0u;
  v21 = v5;
  v30[0] = v31;
  v30[1] = 0x100000000;
  v19 = 0;
  v20 = 0;
  v6 = 1;
  *buffer = 1;
  v24[0] = 0;
  ANECUnitValidatorCreate();
  if (ANECValidateNeuronLayer())
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v24);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v25, "Invalid configuration", 21);
    std::stringbuf::str();
    v24[0] = *MEMORY[0x1E69E54D8];
    v7 = *(MEMORY[0x1E69E54D8] + 72);
    *(v24 + *(v24[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v25 = v7;
    v26 = MEMORY[0x1E69E5548] + 16;
    if (v28 < 0)
    {
      operator delete(v27[7].__locale_);
    }

    v26 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v27);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v29);
    LOWORD(v27[0].__locale_) = 260;
    v24[0] = &v17;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v40 == 1)
    {
      if (v39 != &v40)
      {
        free(v39);
      }

      v8 = v37;
      if (v37)
      {
        v9 = v38;
        v10 = v37;
        if (v38 != v37)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = v37;
        }

        v38 = v8;
        operator delete(v10);
      }

      v11 = v35;
      if (v35)
      {
        v12 = v36;
        v13 = v35;
        if (v36 != v35)
        {
          do
          {
            v15 = *--v12;
            v14 = v15;
            *v12 = 0;
            if (v15)
            {
              operator delete[](v14);
            }
          }

          while (v12 != v11);
          v13 = v35;
        }

        v36 = v11;
        operator delete(v13);
      }

      if (v33 != &v34)
      {
        free(v33);
      }
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }
  }

  ANECUnitValidatorDelete();
  if (v30[0] != v31)
  {
    free(v30[0]);
  }

  return v6;
}

float mlir::anec::Ceil::getExecutionCost(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v9 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v9);
  if (!DefiningOp)
  {
    goto LABEL_8;
  }

  v5 = 0.0;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
  {
    while (1)
    {
      v6 = *(*(DefiningOp + 48) + 16);
      if (v6 != &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
      {
        break;
      }

      v8 = *(*(DefiningOp + 72) + 24);
      DefiningOp = mlir::Value::getDefiningOp(&v8);
      if (!DefiningOp)
      {
        goto LABEL_8;
      }
    }

    if (v6 != &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
    {
LABEL_8:
      mlir::anec::Ceil::getExecutionCost(v3, a2, &v8);
      return *&v8;
    }
  }

  return v5;
}

uint64_t mlir::anec::Invert::verifyAttributesWithFamily(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  if (a2 > 1)
  {
  }

  else
  {
    v10[3] = v2;
    v10[4] = v3;
    v6 = a1;
    v10[0] = *(*(v5 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(v10);
    if (!DefiningOp)
    {
      return 0;
    }

    {
      v9 = DefiningOp;
      DefiningOp = v9;
    }

    if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      v10[0] = mlir::getElementTypeOrSelf(*(*(*v6 + 72) + 24));
      return mlir::Type::isF16(v10);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mlir::anec::detail::VerifyAttributesWithFamilyInterfaceTrait<mlir::anec::Invert>::getParentFamily(uint64_t *a1)
{
  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)7>(*a1))
  {
    return 7;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)6>(*a1))
  {
    return 6;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)5>(*a1))
  {
    return 5;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)4>(*a1))
  {
    return 4;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)3>(*a1))
  {
    return 3;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)2>(*a1))
  {
    return 2;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)1>(*a1))
  {
    return 1;
  }

  mlir::anec::parentIsAtLeast<(mlir::anec::Family)0>(*a1);
  return 0;
}

BOOL mlir::anec::ElementwiseAdd::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D36C8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

uint64_t mlir::anec::anonymous namespace::generateANECValidateError<ANECElementWiseLayerDescAlternate>(uint64_t a1, uint64_t *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v12);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, "Invalid configuration", 21);
  if (a1)
  {
    if (a2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, " for the following reasons: ", 28);
      v4 = *a2;
      if (*a2)
      {
        v5 = 1;
        do
        {
          CFStringGetCString(a2[v5], buffer, 512, 0x8000100u);
          v6 = strlen(buffer);
          v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, buffer, v6);
          if (v5 == v4)
          {
            v8 = "";
          }

          else
          {
            v8 = ", ";
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, v8, 2 * (v5 != v4));
          v4 = *a2;
        }

        while (*a2 > v5++);
      }
    }
  }

  std::stringbuf::str();
  v12[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v13 = v10;
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12E5AA0](&v17);
}

BOOL mlir::anec::ElementwiseMult::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D36D8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseMin::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D36E8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseMax::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D36F8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseSub::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D3708;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseDiv::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D3718;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwisePower::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D3728;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseEqual::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D3738;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseNotEqual::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D3748;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseLessThan::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D3758;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseLessThanEqual::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D3768;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseGreaterThanEqual::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D3778;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseGreaterThan::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D3788;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseAbs::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D3798;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseEqualZero::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D37A8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseGreaterThanEqualZero::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D37B8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseGreaterThanZero::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D37C8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseLessThanEqualZero::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D37D8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseLessThanZero::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D37E8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseNotEqualZero::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D37F8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseSquare::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E86D3808;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

uint64_t mlir::anec::ElementwiseAbs::addOpToNetwork(mlir::anec::_anonymous_namespace_ **a1, mlir::Operation *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

unint64_t mlir::anec::Rsqrt::fold(mlir::Operation **a1, uint64_t a2)
{
  v36[3] = *MEMORY[0x1E69E9840];
  v3 = **(a2 + 40);
  if (!v3)
  {
    goto LABEL_6;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8))
  {
    v3 = 0;
LABEL_6:
    v33 = v3;
    v34 = 0;
    return 0;
  }

  v4 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8);
  v33 = v3;
  v34 = v4;
  mlir::mps::CPUNDArray::CPUNDArray(v31, v3, v4);
  Type = mlir::ElementsAttr::getType(&v33);
  v7 = Type;
  if (Type)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  else
  {
    v8 = 0;
  }

  mlir::mps::CPUNDArray::CPUNDArray(v30, v7, v8, 0);
  v29[0] = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(v29);
  v29[0] = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::ArrayAttr::getValue(v29);
  v29[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v10 + 16 * v11), **(*(*a1 + 6) + 96));
  mlir::FloatAttr::getValue(v29, &v35);
  v12 = llvm::APFloat::convertToDouble(&v35);
  v13 = mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v29, 6, v12);
  v14 = v36[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v13) == v14)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v36);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v36);
  }

  v15 = operator new(8uLL);
  v35 = v15;
  *v15 = v31;
  v36[0] = v15 + 1;
  v36[1] = v15 + 1;
  v16 = operator new(8uLL);
  v26 = v16;
  *v16 = v30;
  v27 = v16 + 1;
  v28 = v16 + 1;
  v17 = operator new(8uLL);
  v23 = v17;
  *v17 = 0;
  v24 = v17 + 1;
  v25 = v17 + 1;
  v18 = operator new(8uLL);
  __p = v18;
  *v18 = 0;
  v21 = v18 + 1;
  v22 = v18 + 1;
  mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v29, &v35, &v26, &v23, &__p, 0, v32, v29);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v35)
  {
    v36[0] = v35;
    operator delete(v35);
  }

  v5 = mlir::mps::CPUNDArray::getElementsAttr(v30, 0, 0) & 0xFFFFFFFFFFFFFFFBLL;
  mlir::mps::CPUNDArray::~CPUNDArray(v30);
  mlir::mps::CPUNDArray::~CPUNDArray(v31);
  return v5;
}

void *mlir::anec::Rsqrt::getEpsilon@<X0>(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6), **(*(*this + 6) + 96));
  return mlir::FloatAttr::getValue(&AttrDictionary, a2);
}

uint64_t mlir::anec::ScaledElementWise::inferPromotedReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v23[0] = a4;
  v23[1] = a5;
  v20 = v22;
  v21 = 0x600000000;
  if (mlir::anec::validateAndBroadcastShapes(a4, a5, &v20))
  {
    v11 = (*(mlir::ValueRange::dereference_iterator(v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v11)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    }

    else
    {
      v12 = 0;
    }

    v19[0] = v11;
    v19[1] = v12;
    isSplat = mlir::ElementsAttr::isSplat(v19);
    v15 = mlir::MemRefType::get(v20, v21, isSplat, 0, 0, 0);
    v16 = *(a11 + 8);
    if (v16 >= *(a11 + 12))
    {
      v18 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v16 + 1, 8);
      v15 = v18;
      LODWORD(v16) = *(a11 + 8);
    }

    *(*a11 + 8 * v16) = v15;
    ++*(a11 + 8);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (v20 != v22)
  {
    free(v20);
  }

  return v13;
}

uint64_t mlir::anec::validateAndBroadcastShapes(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v34[0] = a1;
  v34[1] = a2;
  if (a2 < 2)
  {
    return 0;
  }

  v4 = (*(mlir::ValueRange::dereference_iterator(v34, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
    v31 = v4;
    v32 = v5;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
    v8 = v7;
  }

  else
  {
    v8 = 0;
    ArgAttrsAttr = 0;
  }

  v9 = (*(mlir::ValueRange::dereference_iterator(v34, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v9)
  {
    return 0;
  }

  v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  v31 = v9;
  v32 = v10;
  v12 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
  result = 0;
  if (v8 >= 4 && v11 >= 4)
  {
    if (v8 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v8;
    }

    v15 = ArgAttrsAttr;
    v16 = v11;
    mlir::anec::validateAndBroadcastShapes(mlir::ValueRange,llvm::SmallVector<long long,6u> &)::$_1::operator()(v15, v8, v14, &v31);
    mlir::anec::validateAndBroadcastShapes(mlir::ValueRange,llvm::SmallVector<long long,6u> &)::$_1::operator()(v12, v16, v14, &v29);
    v17 = a3;
    v18 = *(a3 + 8);
    if (v14 != v18)
    {
      if (v14 >= v18)
      {
        if (v14 > *(a3 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v14, 8);
          v17 = a3;
          v18 = *(a3 + 8);
        }

        if (v14 != v18)
        {
          bzero((*v17 + 8 * v18), 8 * (v14 - v18));
          v17 = a3;
        }
      }

      *(v17 + 8) = v14;
    }

    v19 = 0;
    v20 = v29;
    v21 = v31;
    v22 = *v17;
    do
    {
      v23 = v21[v19];
      v24 = v20[v19];
      if (v24 != 1 && v23 != 1 && v23 != v24)
      {
        result = 0;
        goto LABEL_33;
      }

      if (v23 <= v24)
      {
        v23 = v20[v19];
      }

      *(v22 + 8 * v19++) = v23;
    }

    while (v14 != v19);
    result = 1;
LABEL_33:
    if (v20 != &v30)
    {
      v27 = result;
      free(v20);
      result = v27;
    }

    if (v31 != &v33)
    {
      v28 = result;
      free(v31);
      return v28;
    }
  }

  return result;
}

uint64_t mlir::anec::anonymous namespace::defaultIsCompatibleReturnType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v8 = 0;
  while (1)
  {
    if (a4 == v8)
    {
      return 1;
    }

    v9 = mlir::TypeRange::dereference_iterator(a1, v8);
    v10 = mlir::TypeRange::dereference_iterator(a3, v8);
    if (v9)
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
      v21 = v9;
      v22 = v11;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v21 = 0;
      v22 = 0;
      if (!v10)
      {
LABEL_8:
        v12 = 0;
        goto LABEL_9;
      }
    }

    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
LABEL_9:
    v20[0] = v10;
    v20[1] = v12;
    if (!mlir::CallOpInterface::getArgOperands(&v21))
    {
      return 0;
    }

    if (!mlir::CallOpInterface::getArgOperands(v20))
    {
      return 0;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v21);
    v15 = v14;
    v16 = mlir::CallableOpInterface::getArgAttrsAttr(v20);
    if (v15 != v17)
    {
      return 0;
    }

    if (memcmp(ArgAttrsAttr, v16, 8 * v15))
    {
      return 0;
    }

    isSplat = mlir::ElementsAttr::isSplat(&v21);
    if (isSplat != mlir::ElementsAttr::isSplat(v20))
    {
      return 0;
    }

    if (a2 == ++v8)
    {
      return 1;
    }
  }
}

uint64_t mlir::anec::ScaledElementWise::addOpToNetwork(mlir::Operation **a1, void *a2)
{
  v33[3] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = operator new(0x68uLL);
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 9) = -1;
  *v5 = &unk_1F5B33C08;
  *(v5 + 20) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v5 + 84) = _D0;
  *(v5 + 23) = 0;
  *(v5 + 48) = 0;
  *(v5 + 8) = 5;
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13), *(*(*(*a1 + 6) + 96) + 8));
  AttrData = mlir::OpaqueAttr::getAttrData(&AttrDictionary);
  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = v15;
  if (v15 >= 3)
  {
    v17 = 3;
  }

  else
  {
    v17 = v15;
  }

  v18 = AttrData;
  v19 = memcmp(AttrData, "add", v17);
  if (v16 != 3 || v19)
  {
    v21 = memcmp(v18, "mul", v17);
    if (v16 == 3 && !v21)
    {
      v20 = 2;
      goto LABEL_11;
    }

LABEL_13:
    (*(*v5 + 8))(v5);
    return 0;
  }

  v20 = 1;
LABEL_11:
  *(v5 + 20) = v20;
  PreScaleAttr = mlir::anec::ScaledElementWise::getPreScaleAttr(a1);
  mlir::FloatAttr::getValue(&PreScaleAttr, &AttrDictionary);
  *(v5 + 22) = llvm::APFloat::convertToFloat(&AttrDictionary);
  v22 = v33[0];
  v24 = llvm::APFloatBase::PPCDoubleDouble(v23);
  if (v24 == v22)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v33);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v33);
  }

  PreScaleAttr = mlir::anec::ScaledElementWise::getScaleAttr(a1);
  mlir::FloatAttr::getValue(&PreScaleAttr, &AttrDictionary);
  *(v5 + 21) = llvm::APFloat::convertToFloat(&AttrDictionary);
  if (v24 == v33[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v33);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v33);
  }

  PreScaleAttr = mlir::anec::ScaledElementWise::getBiasAttr(a1);
  mlir::FloatAttr::getValue(&PreScaleAttr, &AttrDictionary);
  *(v5 + 23) = llvm::APFloat::convertToFloat(&AttrDictionary);
  if (v24 == v33[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v33);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v33);
  }

  AttrDictionary = mlir::anec::ScaledElementWise::getNegateSrc1Attr(a1);
  v5[96] = mlir::BoolAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::anec::ScaledElementWise::getNegateSrc2Attr(a1);
  v5[97] = mlir::BoolAttr::getValue(&AttrDictionary);
  mlir::anec::fillZinIrCommonInfo(v4, v5, 5, a2, 2uLL, 1u);
  v26 = operator new(0xC8uLL);
  v27 = v26;
  *(v26 + 1) = 0;
  *(v26 + 2) = 0;
  *v26 = &unk_1F5B2E830;
  v28 = v26 + 24;
  *(v26 + 3) = &unk_1F5B2E868;
  if (v5[31] < 0)
  {
    std::string::__init_copy_ctor_external((v26 + 32), *(v5 + 1), *(v5 + 2));
  }

  else
  {
    *(v26 + 2) = *(v5 + 8);
    *(v26 + 6) = *(v5 + 3);
  }

  *(v27 + 14) = 17;
  *(v27 + 3) = &unk_1F5B34308;
  *(v27 + 8) = v5;
  v27[72] = 0;
  *(v27 + 10) = 0;
  *(v27 + 11) = v27 + 104;
  *(v27 + 12) = 0x100000000;
  *(v27 + 17) = v27 + 152;
  *(v27 + 18) = 0x300000000;
  *&v30 = v28;
  *(&v30 + 1) = v27;
  mlir::anec::ANECIRNetwork::AddUnit(a2, &v30);
  v29 = *(&v30 + 1);
  if (*(&v30 + 1))
  {
    if (!atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }
  }

  return 1;
}

uint64_t mlir::anec::ScaledElementWise::getMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  return mlir::OpaqueAttr::getAttrData(&AttrDictionary);
}

BOOL mlir::anec::inferPoolOpReturnTypes(mlir *a1, AttributeStorage *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v50[6] = *MEMORY[0x1E69E9840];
  v14 = mlir::TypeRange::dereference_iterator(a7, 0);
  v15 = v14;
  if (v14)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  v39[0] = v15;
  v39[1] = v14;
  mlir::CallableOpInterface::getArgAttrsAttr(v39);
  if (v16)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v39);
    v49[0] = v50;
    v49[1] = 0x600000000;
    mlir::getValues<unsigned long>(a4, v49);
    v47[0] = v48;
    v47[1] = 0x600000000;
    mlir::getValues<unsigned long>(a5, v47);
    v45[0] = v46;
    v45[1] = 0x600000000;
    mlir::getValues<unsigned long>(a6, v45);
    mlir::CallableOpInterface::getArgAttrsAttr(v39);
    v19 = v18;
    mlir::CallableOpInterface::getArgAttrsAttr(v39);
    v21 = v20;
    mlir::CallableOpInterface::getArgAttrsAttr(v39);
    v23 = v22;
    mlir::CallableOpInterface::getArgAttrsAttr(v39);
    v25 = v24;
    mlir::CallableOpInterface::getArgAttrsAttr(v39);
    v26 = v49[0];
    v27 = (*v26 + ArgAttrsAttr[v25 - 2] + v26[1] - *v47[0] + *v45[0]) / *v45[0];
    v29 = ArgAttrsAttr[v23 - 3];
    v30 = (v26[2] + ArgAttrsAttr[v28 - 1] + v26[3] - *(v47[0] + 1) + *(v45[0] + 1)) / *(v45[0] + 1);
    if (v19 == 5)
    {
      v31 = (*(v49[0] + 4) + ArgAttrsAttr[v21 - 4] + *(v49[0] + 5) - *(v47[0] + 2) + *(v45[0] + 2)) / *(v45[0] + 2);
      v40 = *ArgAttrsAttr;
      v41 = v31;
      v42 = v29;
      v43 = v27;
      v44 = v30;
      isSplat = mlir::ElementsAttr::isSplat(v39);
      v33 = 5;
    }

    else
    {
      v40 = *ArgAttrsAttr;
      v41 = v29;
      v42 = v27;
      v43 = v30;
      isSplat = mlir::ElementsAttr::isSplat(v39);
      v33 = 4;
    }

    v36 = mlir::MemRefType::get(&v40, v33, isSplat, 0, 0, 0);
    v37 = *(a9 + 8);
    if (v37 >= *(a9 + 12))
    {
      v38 = v36;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a9, a9 + 16, v37 + 1, 8);
      v36 = v38;
      LODWORD(v37) = *(a9 + 8);
    }

    *(*a9 + 8 * v37) = v36;
    ++*(a9 + 8);
    if (v45[0] != v46)
    {
      free(v45[0]);
    }

    if (v47[0] != v48)
    {
      free(v47[0]);
    }

    if (v49[0] != v50)
    {
      free(v49[0]);
    }

    return 1;
  }

  else
  {
    v34.var0.var0 = a2;
    return mlir::emitOptionalError<char const(&)[66]>(a1, v34, "input must be a rank 4 tensor of shape [N, Cin, H, W]or rank 5 tensor of shape [N, D, Cin, H, W]");
  }
}

BOOL mlir::anec::MaxPool::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.max_pool", 13, Context);
    v32 = 1;
    a1 = v15;
  }

  v35 = a4;
  v36 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if (!mlir::anec::MaxPoolAdaptor::verify(&v30, v18))
  {
    return 0;
  }

  v37[0] = v35;
  v37[1] = 0;
  mlir::ValueRange::dereference_iterator(v37, 0);
  Value = mlir::AffineMapAttr::getValue(&v30);
  v20 = mlir::DictionaryAttr::end(&v30);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v20 - 16), *(*(v31 + 96) + 8));
  v22 = mlir::AffineMapAttr::getValue(&v30);
  v23 = mlir::DictionaryAttr::end(&v30);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v22, (v23 - 32), **(v31 + 96));
  v25 = mlir::AffineMapAttr::getValue(&v30);
  v26 = mlir::DictionaryAttr::end(&v30);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 32), v26, *(*(v31 + 96) + 16));
  return mlir::anec::inferPoolOpReturnTypes(a2, a3, v28, v21, v24, v27, a9, a10, a11);
}

BOOL mlir::anec::MaxPoolAdaptor::verify(mlir::anec::MaxPoolAdaptor *this, Location a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v61 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v61); i != mlir::DictionaryAttr::end(&v61); i += 2)
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = i[1];
      while (i != mlir::DictionaryAttr::end(&v61))
      {
        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
        {
          v21 = i[1];
          while (1)
          {
            if (i == mlir::DictionaryAttr::end(&v61))
            {
              v58 = "'anec.max_pool' op requires attribute 'stride'";
              v60 = 259;
              mlir::emitError(a2.var0.var0, &v58, &v63);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
              if (v63)
              {
                mlir::InFlightDiagnostic::report(&v63);
              }

              if (v72 != 1)
              {
                return v5;
              }

              if (v71 != &v72)
              {
                free(v71);
              }

              v22 = __p;
              if (__p)
              {
                v23 = v70;
                v24 = __p;
                if (v70 != __p)
                {
                  do
                  {
                    v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
                  }

                  while (v23 != v22);
                  v24 = __p;
                }

                v70 = v22;
                operator delete(v24);
              }

              v9 = v67;
              if (!v67)
              {
                goto LABEL_101;
              }

              v25 = v68;
              v11 = v67;
              if (v68 == v67)
              {
                goto LABEL_100;
              }

              do
              {
                v27 = *--v25;
                v26 = v27;
                *v25 = 0;
                if (v27)
                {
                  operator delete[](v26);
                }
              }

              while (v25 != v9);
              goto LABEL_99;
            }

            if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 16))
            {
              break;
            }

            i += 2;
          }

          v28 = i[1];
          if (!v28)
          {
            goto LABEL_111;
          }

          if (mlir::DenseIntElementsAttr::classof(i[1]))
          {
            v29 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
            v58 = v28;
            v59 = v29;
            Type = mlir::ElementsAttr::getType(&v58);
            v31 = Type;
            if (Type)
            {
              Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
            }

            v63 = v31;
            v64 = Type;
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v63);
            v62 = 3;
            if (v33 == 1 && *ArgAttrsAttr == v62)
            {
              v54 = v28;
              Value = mlir::ArrayAttr::getValue(&v54);
              v56 = v34;
              isSplat = mlir::ElementsAttr::isSplat(&Value);
              if (mlir::Type::isUnsignedInteger(&isSplat, 64))
              {
LABEL_111:
                if (!v21)
                {
                  goto LABEL_112;
                }

                if (!mlir::DenseIntElementsAttr::classof(v21))
                {
                  goto LABEL_104;
                }

                v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                v58 = v21;
                v59 = v35;
                v36 = mlir::ElementsAttr::getType(&v58);
                v37 = v36;
                if (v36)
                {
                  v36 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
                }

                v63 = v37;
                v64 = v36;
                v38 = mlir::CallableOpInterface::getArgAttrsAttr(&v63);
                v62 = 6;
                if (v39 == 1 && *v38 == v62 && (v54 = v21, Value = mlir::ArrayAttr::getValue(&v54), v56 = v40, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
                {
LABEL_112:
                  if (!v14)
                  {
                    return 1;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v14))
                  {
                    goto LABEL_108;
                  }

                  v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
                  v58 = v14;
                  v59 = v41;
                  v42 = mlir::ElementsAttr::getType(&v58);
                  v43 = v42;
                  if (v42)
                  {
                    v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
                  }

                  v63 = v43;
                  v64 = v42;
                  v44 = mlir::CallableOpInterface::getArgAttrsAttr(&v63);
                  v62 = 3;
                  if (v45 == 1 && *v44 == v62 && (v54 = v14, Value = mlir::ArrayAttr::getValue(&v54), v56 = v46, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
                  {
                    return 1;
                  }

                  else
                  {
LABEL_108:
                    v58 = "'anec.max_pool' op attribute 'ksize' failed to satisfy constraint: ui64 elements attribute of shape {3}";
                    v60 = 259;
                    mlir::emitError(a2.var0.var0, &v58, &v63);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
                    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
                  }
                }

                else
                {
LABEL_104:
                  v58 = "'anec.max_pool' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
                  v60 = 259;
                  mlir::emitError(a2.var0.var0, &v58, &v63);
                  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
                  if (v63)
                  {
                    mlir::InFlightDiagnostic::report(&v63);
                  }

                  if (v72 == 1)
                  {
                    mlir::Diagnostic::~Diagnostic(&v64);
                  }
                }

                return v5;
              }
            }
          }

          v58 = "'anec.max_pool' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
          v60 = 259;
          mlir::emitError(a2.var0.var0, &v58, &v63);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
          if (v63)
          {
            mlir::InFlightDiagnostic::report(&v63);
          }

          if (v72 != 1)
          {
            return v5;
          }

          if (v71 != &v72)
          {
            free(v71);
          }

          v47 = __p;
          if (__p)
          {
            v48 = v70;
            v49 = __p;
            if (v70 != __p)
            {
              do
              {
                v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
              }

              while (v48 != v47);
              v49 = __p;
            }

            v70 = v47;
            operator delete(v49);
          }

          v9 = v67;
          if (!v67)
          {
            goto LABEL_101;
          }

          v50 = v68;
          v11 = v67;
          if (v68 == v67)
          {
            goto LABEL_100;
          }

          do
          {
            v52 = *--v50;
            v51 = v52;
            *v50 = 0;
            if (v52)
            {
              operator delete[](v51);
            }
          }

          while (v50 != v9);
          goto LABEL_99;
        }

        i += 2;
      }

      v58 = "'anec.max_pool' op requires attribute 'padding'";
      v60 = 259;
      mlir::emitError(a2.var0.var0, &v58, &v63);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
      if (v63)
      {
        mlir::InFlightDiagnostic::report(&v63);
      }

      if (v72 != 1)
      {
        return v5;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v70;
        v17 = __p;
        if (v70 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v70 = v15;
        operator delete(v17);
      }

      v9 = v67;
      if (!v67)
      {
        goto LABEL_101;
      }

      v18 = v68;
      v11 = v67;
      if (v68 == v67)
      {
        goto LABEL_100;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          operator delete[](v19);
        }
      }

      while (v18 != v9);
LABEL_99:
      v11 = v67;
      goto LABEL_100;
    }
  }

  v58 = "'anec.max_pool' op requires attribute 'ksize'";
  v60 = 259;
  mlir::emitError(a2.var0.var0, &v58, &v63);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
  if (v63)
  {
    mlir::InFlightDiagnostic::report(&v63);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v70;
      v8 = __p;
      if (v70 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v70 = v6;
      operator delete(v8);
    }

    v9 = v67;
    if (v67)
    {
      v10 = v68;
      v11 = v67;
      if (v68 != v67)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            operator delete[](v12);
          }
        }

        while (v10 != v9);
        goto LABEL_99;
      }

LABEL_100:
      v68 = v9;
      operator delete(v11);
    }

LABEL_101:
    if (v65 != &v66)
    {
      free(v65);
    }
  }

  return v5;
}

BOOL mlir::anec::AveragePool::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.average_pool", 17, Context);
    v32 = 1;
    a1 = v15;
  }

  v35 = a4;
  v36 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if (!mlir::anec::AveragePoolAdaptor::verify(&v30, v18))
  {
    return 0;
  }

  v37[0] = v35;
  v37[1] = 0;
  mlir::ValueRange::dereference_iterator(v37, 0);
  Value = mlir::AffineMapAttr::getValue(&v30);
  v20 = mlir::DictionaryAttr::end(&v30);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v20 - 16), *(*(v31 + 96) + 16));
  v22 = mlir::AffineMapAttr::getValue(&v30);
  v23 = mlir::DictionaryAttr::end(&v30);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v22, (v23 - 32), *(*(v31 + 96) + 8));
  v25 = mlir::AffineMapAttr::getValue(&v30);
  v26 = mlir::DictionaryAttr::end(&v30);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 32), v26, *(*(v31 + 96) + 24));
  return mlir::anec::inferPoolOpReturnTypes(a2, a3, v28, v21, v24, v27, a9, a10, a11);
}

BOOL mlir::anec::AveragePoolAdaptor::verify(mlir::anec::AveragePoolAdaptor *this, Location a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v63 = *this;
  Value = mlir::AffineMapAttr::getValue(&v63);
  if (Value != mlir::DictionaryAttr::end(&v63))
  {
    v5 = 0;
    while (mlir::CallGraphNode::getCallableRegion(Value) != *(*(*(this + 1) + 96) + 8))
    {
      if (mlir::CallGraphNode::getCallableRegion(Value) == **(*(this + 1) + 96))
      {
        v5 = Value[1];
      }

      Value += 2;
      if (Value == mlir::DictionaryAttr::end(&v63))
      {
        goto LABEL_7;
      }
    }

    v15 = Value[1];
    while (Value != mlir::DictionaryAttr::end(&v63))
    {
      if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 16))
      {
        v22 = Value[1];
        while (1)
        {
          if (Value == mlir::DictionaryAttr::end(&v63))
          {
            v60 = "'anec.average_pool' op requires attribute 'stride'";
            v62 = 259;
            mlir::emitError(a2.var0.var0, &v60, &v65);
            v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
            if (v65)
            {
              mlir::InFlightDiagnostic::report(&v65);
            }

            if (v74 != 1)
            {
              return v6;
            }

            if (v73 != &v74)
            {
              free(v73);
            }

            v23 = __p;
            if (__p)
            {
              v24 = v72;
              v25 = __p;
              if (v72 != __p)
              {
                do
                {
                  v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
                }

                while (v24 != v23);
                v25 = __p;
              }

              v72 = v23;
              operator delete(v25);
            }

            v10 = v69;
            if (!v69)
            {
              goto LABEL_105;
            }

            v26 = v70;
            v12 = v69;
            if (v70 == v69)
            {
              goto LABEL_104;
            }

            do
            {
              v28 = *--v26;
              v27 = v28;
              *v26 = 0;
              if (v28)
              {
                operator delete[](v27);
              }
            }

            while (v26 != v10);
            goto LABEL_103;
          }

          if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 24))
          {
            break;
          }

          Value += 2;
        }

        v29 = Value[1];
        if (!v29)
        {
          goto LABEL_117;
        }

        if (mlir::DenseIntElementsAttr::classof(Value[1]))
        {
          v30 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v29 + 8);
          v60 = v29;
          v61 = v30;
          Type = mlir::ElementsAttr::getType(&v60);
          v32 = Type;
          if (Type)
          {
            Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
          }

          v65 = v32;
          v66 = Type;
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v65);
          v64 = 3;
          if (v34 == 1 && *ArgAttrsAttr == v64)
          {
            v56 = v29;
            v57 = mlir::ArrayAttr::getValue(&v56);
            v58 = v35;
            isSplat = mlir::ElementsAttr::isSplat(&v57);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
LABEL_117:
              if (!v22)
              {
                goto LABEL_118;
              }

              if (!mlir::DenseIntElementsAttr::classof(v22))
              {
                goto LABEL_108;
              }

              v36 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v22 + 8);
              v60 = v22;
              v61 = v36;
              v37 = mlir::ElementsAttr::getType(&v60);
              v38 = v37;
              if (v37)
              {
                v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v37 + 8);
              }

              v65 = v38;
              v66 = v37;
              v39 = mlir::CallableOpInterface::getArgAttrsAttr(&v65);
              v64 = 6;
              if (v40 == 1 && *v39 == v64 && (v56 = v22, v57 = mlir::ArrayAttr::getValue(&v56), v58 = v41, isSplat = mlir::ElementsAttr::isSplat(&v57), mlir::Type::isUnsignedInteger(&isSplat, 64)))
              {
LABEL_118:
                if (v15)
                {
                  if (!mlir::DenseIntElementsAttr::classof(v15))
                  {
                    goto LABEL_112;
                  }

                  v42 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v15 + 8);
                  v60 = v15;
                  v61 = v42;
                  v43 = mlir::ElementsAttr::getType(&v60);
                  v44 = v43;
                  if (v43)
                  {
                    v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
                  }

                  v65 = v44;
                  v66 = v43;
                  v45 = mlir::CallableOpInterface::getArgAttrsAttr(&v65);
                  v64 = 3;
                  if (v46 != 1 || *v45 != v64 || (v56 = v15, v57 = mlir::ArrayAttr::getValue(&v56), v58 = v47, isSplat = mlir::ElementsAttr::isSplat(&v57), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
                  {
LABEL_112:
                    v48 = "'anec.average_pool' op attribute 'ksize' failed to satisfy constraint: ui64 elements attribute of shape {3}";
                    goto LABEL_113;
                  }
                }

                if (v5 && *(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
                {
                  v48 = "'anec.average_pool' op attribute 'inc_pad' failed to satisfy constraint: unit attribute";
LABEL_113:
                  v60 = v48;
                  v62 = 259;
                  mlir::emitError(a2.var0.var0, &v60, &v65);
                  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v65);
                  return v6;
                }

                return 1;
              }

              else
              {
LABEL_108:
                v60 = "'anec.average_pool' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
                v62 = 259;
                mlir::emitError(a2.var0.var0, &v60, &v65);
                v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
                if (v65)
                {
                  mlir::InFlightDiagnostic::report(&v65);
                }

                if (v74 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v66);
                }
              }

              return v6;
            }
          }
        }

        v60 = "'anec.average_pool' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
        v62 = 259;
        mlir::emitError(a2.var0.var0, &v60, &v65);
        v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
        if (v65)
        {
          mlir::InFlightDiagnostic::report(&v65);
        }

        if (v74 != 1)
        {
          return v6;
        }

        if (v73 != &v74)
        {
          free(v73);
        }

        v49 = __p;
        if (__p)
        {
          v50 = v72;
          v51 = __p;
          if (v72 != __p)
          {
            do
            {
              v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
            }

            while (v50 != v49);
            v51 = __p;
          }

          v72 = v49;
          operator delete(v51);
        }

        v10 = v69;
        if (!v69)
        {
          goto LABEL_105;
        }

        v52 = v70;
        v12 = v69;
        if (v70 == v69)
        {
          goto LABEL_104;
        }

        do
        {
          v54 = *--v52;
          v53 = v54;
          *v52 = 0;
          if (v54)
          {
            operator delete[](v53);
          }
        }

        while (v52 != v10);
        goto LABEL_103;
      }

      Value += 2;
    }

    v60 = "'anec.average_pool' op requires attribute 'padding'";
    v62 = 259;
    mlir::emitError(a2.var0.var0, &v60, &v65);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
    if (v65)
    {
      mlir::InFlightDiagnostic::report(&v65);
    }

    if (v74 != 1)
    {
      return v6;
    }

    if (v73 != &v74)
    {
      free(v73);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v72;
      v18 = __p;
      if (v72 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v72 = v16;
      operator delete(v18);
    }

    v10 = v69;
    if (!v69)
    {
      goto LABEL_105;
    }

    v19 = v70;
    v12 = v69;
    if (v70 == v69)
    {
      goto LABEL_104;
    }

    do
    {
      v21 = *--v19;
      v20 = v21;
      *v19 = 0;
      if (v21)
      {
        operator delete[](v20);
      }
    }

    while (v19 != v10);
    goto LABEL_103;
  }

LABEL_7:
  v60 = "'anec.average_pool' op requires attribute 'ksize'";
  v62 = 259;
  mlir::emitError(a2.var0.var0, &v60, &v65);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
  if (v65)
  {
    mlir::InFlightDiagnostic::report(&v65);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v72;
      v9 = __p;
      if (v72 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v72 = v7;
      operator delete(v9);
    }

    v10 = v69;
    if (!v69)
    {
      goto LABEL_105;
    }

    v11 = v70;
    v12 = v69;
    if (v70 == v69)
    {
LABEL_104:
      v70 = v10;
      operator delete(v12);
LABEL_105:
      if (v67 != &v68)
      {
        free(v67);
      }

      return v6;
    }

    do
    {
      v14 = *--v11;
      v13 = v14;
      *v11 = 0;
      if (v14)
      {
        operator delete[](v13);
      }
    }

    while (v11 != v10);
LABEL_103:
    v12 = v69;
    goto LABEL_104;
  }

  return v6;
}

BOOL mlir::anec::L2NormPool::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.l2norm_pool", 16, Context);
    v32 = 1;
    a1 = v15;
  }

  v35 = a4;
  v36 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if (!mlir::anec::L2NormPoolAdaptor::verify(&v30, v18))
  {
    return 0;
  }

  v37[0] = v35;
  v37[1] = 0;
  mlir::ValueRange::dereference_iterator(v37, 0);
  Value = mlir::AffineMapAttr::getValue(&v30);
  v20 = mlir::DictionaryAttr::end(&v30);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v20 - 16), *(*(v31 + 96) + 8));
  v22 = mlir::AffineMapAttr::getValue(&v30);
  v23 = mlir::DictionaryAttr::end(&v30);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v22, (v23 - 32), **(v31 + 96));
  v25 = mlir::AffineMapAttr::getValue(&v30);
  v26 = mlir::DictionaryAttr::end(&v30);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 32), v26, *(*(v31 + 96) + 16));
  return mlir::anec::inferPoolOpReturnTypes(a2, a3, v28, v21, v24, v27, a9, a10, a11);
}

BOOL mlir::anec::L2NormPoolAdaptor::verify(mlir::anec::L2NormPoolAdaptor *this, Location a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v61 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v61); i != mlir::DictionaryAttr::end(&v61); i += 2)
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = i[1];
      while (i != mlir::DictionaryAttr::end(&v61))
      {
        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
        {
          v21 = i[1];
          while (1)
          {
            if (i == mlir::DictionaryAttr::end(&v61))
            {
              v58 = "'anec.l2norm_pool' op requires attribute 'stride'";
              v60 = 259;
              mlir::emitError(a2.var0.var0, &v58, &v63);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
              if (v63)
              {
                mlir::InFlightDiagnostic::report(&v63);
              }

              if (v72 != 1)
              {
                return v5;
              }

              if (v71 != &v72)
              {
                free(v71);
              }

              v22 = __p;
              if (__p)
              {
                v23 = v70;
                v24 = __p;
                if (v70 != __p)
                {
                  do
                  {
                    v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
                  }

                  while (v23 != v22);
                  v24 = __p;
                }

                v70 = v22;
                operator delete(v24);
              }

              v9 = v67;
              if (!v67)
              {
                goto LABEL_101;
              }

              v25 = v68;
              v11 = v67;
              if (v68 == v67)
              {
                goto LABEL_100;
              }

              do
              {
                v27 = *--v25;
                v26 = v27;
                *v25 = 0;
                if (v27)
                {
                  operator delete[](v26);
                }
              }

              while (v25 != v9);
              goto LABEL_99;
            }

            if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 16))
            {
              break;
            }

            i += 2;
          }

          v28 = i[1];
          if (!v28)
          {
            goto LABEL_111;
          }

          if (mlir::DenseIntElementsAttr::classof(i[1]))
          {
            v29 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
            v58 = v28;
            v59 = v29;
            Type = mlir::ElementsAttr::getType(&v58);
            v31 = Type;
            if (Type)
            {
              Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
            }

            v63 = v31;
            v64 = Type;
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v63);
            v62 = 3;
            if (v33 == 1 && *ArgAttrsAttr == v62)
            {
              v54 = v28;
              Value = mlir::ArrayAttr::getValue(&v54);
              v56 = v34;
              isSplat = mlir::ElementsAttr::isSplat(&Value);
              if (mlir::Type::isUnsignedInteger(&isSplat, 64))
              {
LABEL_111:
                if (!v21)
                {
                  goto LABEL_112;
                }

                if (!mlir::DenseIntElementsAttr::classof(v21))
                {
                  goto LABEL_104;
                }

                v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                v58 = v21;
                v59 = v35;
                v36 = mlir::ElementsAttr::getType(&v58);
                v37 = v36;
                if (v36)
                {
                  v36 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
                }

                v63 = v37;
                v64 = v36;
                v38 = mlir::CallableOpInterface::getArgAttrsAttr(&v63);
                v62 = 6;
                if (v39 == 1 && *v38 == v62 && (v54 = v21, Value = mlir::ArrayAttr::getValue(&v54), v56 = v40, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
                {
LABEL_112:
                  if (!v14)
                  {
                    return 1;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v14))
                  {
                    goto LABEL_108;
                  }

                  v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
                  v58 = v14;
                  v59 = v41;
                  v42 = mlir::ElementsAttr::getType(&v58);
                  v43 = v42;
                  if (v42)
                  {
                    v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
                  }

                  v63 = v43;
                  v64 = v42;
                  v44 = mlir::CallableOpInterface::getArgAttrsAttr(&v63);
                  v62 = 3;
                  if (v45 == 1 && *v44 == v62 && (v54 = v14, Value = mlir::ArrayAttr::getValue(&v54), v56 = v46, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
                  {
                    return 1;
                  }

                  else
                  {
LABEL_108:
                    v58 = "'anec.l2norm_pool' op attribute 'ksize' failed to satisfy constraint: ui64 elements attribute of shape {3}";
                    v60 = 259;
                    mlir::emitError(a2.var0.var0, &v58, &v63);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
                    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
                  }
                }

                else
                {
LABEL_104:
                  v58 = "'anec.l2norm_pool' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
                  v60 = 259;
                  mlir::emitError(a2.var0.var0, &v58, &v63);
                  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
                  if (v63)
                  {
                    mlir::InFlightDiagnostic::report(&v63);
                  }

                  if (v72 == 1)
                  {
                    mlir::Diagnostic::~Diagnostic(&v64);
                  }
                }

                return v5;
              }
            }
          }

          v58 = "'anec.l2norm_pool' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
          v60 = 259;
          mlir::emitError(a2.var0.var0, &v58, &v63);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
          if (v63)
          {
            mlir::InFlightDiagnostic::report(&v63);
          }

          if (v72 != 1)
          {
            return v5;
          }

          if (v71 != &v72)
          {
            free(v71);
          }

          v47 = __p;
          if (__p)
          {
            v48 = v70;
            v49 = __p;
            if (v70 != __p)
            {
              do
              {
                v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
              }

              while (v48 != v47);
              v49 = __p;
            }

            v70 = v47;
            operator delete(v49);
          }

          v9 = v67;
          if (!v67)
          {
            goto LABEL_101;
          }

          v50 = v68;
          v11 = v67;
          if (v68 == v67)
          {
            goto LABEL_100;
          }

          do
          {
            v52 = *--v50;
            v51 = v52;
            *v50 = 0;
            if (v52)
            {
              operator delete[](v51);
            }
          }

          while (v50 != v9);
          goto LABEL_99;
        }

        i += 2;
      }

      v58 = "'anec.l2norm_pool' op requires attribute 'padding'";
      v60 = 259;
      mlir::emitError(a2.var0.var0, &v58, &v63);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
      if (v63)
      {
        mlir::InFlightDiagnostic::report(&v63);
      }

      if (v72 != 1)
      {
        return v5;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v70;
        v17 = __p;
        if (v70 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v70 = v15;
        operator delete(v17);
      }

      v9 = v67;
      if (!v67)
      {
        goto LABEL_101;
      }

      v18 = v68;
      v11 = v67;
      if (v68 == v67)
      {
        goto LABEL_100;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          operator delete[](v19);
        }
      }

      while (v18 != v9);
LABEL_99:
      v11 = v67;
      goto LABEL_100;
    }
  }

  v58 = "'anec.l2norm_pool' op requires attribute 'ksize'";
  v60 = 259;
  mlir::emitError(a2.var0.var0, &v58, &v63);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
  if (v63)
  {
    mlir::InFlightDiagnostic::report(&v63);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v70;
      v8 = __p;
      if (v70 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v70 = v6;
      operator delete(v8);
    }

    v9 = v67;
    if (v67)
    {
      v10 = v68;
      v11 = v67;
      if (v68 != v67)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            operator delete[](v12);
          }
        }

        while (v10 != v9);
        goto LABEL_99;
      }

LABEL_100:
      v68 = v9;
      operator delete(v11);
    }

LABEL_101:
    if (v65 != &v66)
    {
      free(v65);
    }
  }

  return v5;
}

BOOL mlir::anec::AveragePool::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3)
{
  v29[6] = *MEMORY[0x1E69E9840];
  v6 = *a1;
  ANECPoolLayerDescInitialize();
  ZinIrPoolingTypeToCFString(1u);
  v28[0] = v29;
  v28[1] = 0x600000000;
  v26[0] = v27;
  v26[1] = 0x600000000;
  v24[0] = v25;
  v24[1] = 0x600000000;
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v8 = v7;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v10 + 16 * v11 - 32), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<unsigned long>(v12, v28);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v13 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v16 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v13 + 32), (v14 + 16 * v15), *(*(*(*a1 + 6) + 96) + 24));
  mlir::getValues<unsigned long>(v16, v26);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v17 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v18 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v20 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v17 + 16), (v18 + 16 * v19 - 16), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getValues<unsigned long>(v20, v24);
  mlir::anec::getIndexFromDim(1, v8);
  if ((v21 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  return mlir::anec::verifyPoolWithANEC(v6, a2, a3);
}

BOOL mlir::anec::verifyPoolWithANEC(uint64_t a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v27[0] = v28;
  v27[1] = 0x100000000;
  v19 = 0;
  v20 = 0;
  *buffer = 1;
  v21[0] = 0;
  ANECUnitValidatorCreate();
  if (ANECValidatePoolLayer())
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v21);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v22, "Invalid configuration", 21);
    std::stringbuf::str();
    v21[0] = *MEMORY[0x1E69E54D8];
    v4 = *(MEMORY[0x1E69E54D8] + 72);
    *(v21 + *(v21[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v22 = v4;
    v23 = MEMORY[0x1E69E5548] + 16;
    if (v25 < 0)
    {
      operator delete(v24[7].__locale_);
    }

    v23 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v24);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v26);
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v6 = v34;
      if (v34)
      {
        v7 = v35;
        v8 = v34;
        if (v35 != v34)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = v34;
        }

        v35 = v6;
        operator delete(v8);
      }

      v9 = v32;
      if (v32)
      {
        v10 = v33;
        v11 = v32;
        if (v33 != v32)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v32;
        }

        v33 = v9;
        operator delete(v11);
      }

      if (v30 != &v31)
      {
        free(v30);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  return v5;
}

BOOL mlir::anec::MaxPool::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3)
{
  v29[6] = *MEMORY[0x1E69E9840];
  v6 = *a1;
  ANECPoolLayerDescInitialize();
  ZinIrPoolingTypeToCFString(2u);
  v28[0] = v29;
  v28[1] = 0x600000000;
  v26[0] = v27;
  v26[1] = 0x600000000;
  v24[0] = v25;
  v24[1] = 0x600000000;
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v8 = v7;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v10 + 16 * v11 - 32), **(*(*a1 + 6) + 96));
  mlir::getValues<unsigned long>(v12, v28);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v13 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v16 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v13 + 32), (v14 + 16 * v15), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getValues<unsigned long>(v16, v26);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v17 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v18 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v20 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v17 + 16), (v18 + 16 * v19 - 16), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<unsigned long>(v20, v24);
  mlir::anec::getIndexFromDim(1, v8);
  if ((v21 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  return mlir::anec::verifyPoolWithANEC(v6, a2, a3);
}

BOOL mlir::anec::L2NormPool::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3)
{
  v29[6] = *MEMORY[0x1E69E9840];
  v6 = *a1;
  ANECPoolLayerDescInitialize();
  ZinIrPoolingTypeToCFString(1u);
  v28[0] = v29;
  v28[1] = 0x600000000;
  v26[0] = v27;
  v26[1] = 0x600000000;
  v24[0] = v25;
  v24[1] = 0x600000000;
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v8 = v7;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v10 + 16 * v11 - 32), **(*(*a1 + 6) + 96));
  mlir::getValues<unsigned long>(v12, v28);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v13 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v16 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v13 + 32), (v14 + 16 * v15), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getValues<unsigned long>(v16, v26);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v17 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v18 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v20 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v17 + 16), (v18 + 16 * v19 - 16), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<unsigned long>(v20, v24);
  mlir::anec::getIndexFromDim(1, v8);
  if ((v21 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  return mlir::anec::verifyPoolWithANEC(v6, a2, a3);
}

uint64_t mlir::anec::verifyANECAveragePoolOp(uint64_t a1)
{
  if ((*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  if (*(a1 + 36))
  {
    v2 = a1 - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v5 + 16 * v6), *(*(*(a1 + 48) + 96) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v7 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v7 + 16), (v8 + 16 * v9 - 16), *(*(*(a1 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v10 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v10, (v11 + 16 * v12 - 32), *(*(*(a1 + 48) + 96) + 8));
}

uint64_t mlir::anec::AveragePool::getStride(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
}

uint64_t mlir::anec::AveragePool::getPadding(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 16));
}

uint64_t mlir::anec::verifyANECMaxPoolOp(uint64_t a1)
{
  if ((*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  if (*(a1 + 36))
  {
    v2 = a1 - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v5 + 16 * v6), *(*(*(a1 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v7 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v7 + 16), (v8 + 16 * v9 - 16), *(*(*(a1 + 48) + 96) + 8));
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v10 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v10, (v11 + 16 * v12 - 32), **(*(a1 + 48) + 96));
}

uint64_t mlir::anec::MaxPool::getStride(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
}

uint64_t mlir::anec::MaxPool::getPadding(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 8));
}

uint64_t mlir::anec::MaxPool::getKsize(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 32), **(*(*this + 6) + 96));
}

uint64_t mlir::anec::AveragePool::addOpToNetwork(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v27 = 0uLL;
  mlir::anec::computeOpKeyString(v3, &__p);
  v4 = *(*(v3 + 72) + 24);
  if (*(v3 + 36))
  {
    v5 = v3 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v8 + 16 * v9 - 16), *(*(*(v3 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v11 + 32), (v12 + 16 * v13), *(*(*(v3 + 48) + 96) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v15 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v16 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v18 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v15, (v16 + 16 * v17 - 32), *(*(*(v3 + 48) + 96) + 8));
  v19 = mlir::anec::addPoolOpCommon(v3, a2, 1, &__p, v4, NextResultAtOffset, v10, v14, v18, &v27);
  v20 = v19;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_14:
    result = 0;
    v23 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      return result;
    }

    goto LABEL_15;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v25 = v27;
  if (*(&v27 + 1))
  {
    atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECIRNetwork::AddUnit(a2, &v25);
  v21 = *(&v25 + 1);
  if (*(&v25 + 1) && !atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  result = 1;
  v23 = *(&v27 + 1);
  if (*(&v27 + 1))
  {
LABEL_15:
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = result;
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
      return v24;
    }
  }

  return result;
}

uint64_t mlir::anec::addPoolOpCommon(mlir::Operation *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v60 = *MEMORY[0x1E69E9840];
  mlir::anec::ANECIRPoolUnit::Create(a3, a4, &__str);
  v16 = *&__str.__r_.__value_.__l.__data_;
  *&__str.__r_.__value_.__l.__data_ = 0uLL;
  v17 = a10[1];
  *a10 = v16;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  size = __str.__r_.__value_.__l.__size_;
  if (__str.__r_.__value_.__l.__size_ && !atomic_fetch_add((__str.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    std::__shared_weak_count::__release_weak(size);
  }

  if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a2 + 488), &v50))
  {
    if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a2 + 488), &v50))
    {
      v19 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a2 + 488), &v50);
      if (v19)
      {
        if (*(v19 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, v19[5], v19[6]);
        }

        else
        {
          __str = *(v19 + 5);
        }

        v59 = 1;
        std::string::operator=(&v50, &__str);
        if (v59 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_16;
      }
    }

    else
    {
      __str.__r_.__value_.__s.__data_[0] = 0;
      v59 = 0;
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    abort();
  }

LABEL_16:
  v20 = (*(a5 + 8) & 0xFFFFFFFFFFFFFFF8);
  v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
  if (v21)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
  }

  else
  {
    v20 = 0;
  }

  v49[0] = v20;
  v49[1] = v21;
  isSplat = mlir::ElementsAttr::isSplat(v49);
  ANECIRDataType = mlir::anec::getANECIRDataType(isSplat);
  if ((ANECIRDataType & 0x100000000) != 0)
  {
    mlir::anec::ANECIRUnit::AddInput(*a10, &v50, ANECIRDataType);
    v24 = (*(a6 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8))
    {
      v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
      v47 = v24;
      v48 = v25;
      if (v24)
      {
        mlir::CallableOpInterface::getArgAttrsAttr(v49);
        v27 = v26;
        v28 = mlir::ElementsAttr::isSplat(&v47);
        v29 = mlir::anec::getANECIRDataType(v28);
        if ((v29 & 0x100000000) != 0)
        {
          v32 = v29;
          v33 = *a10;
          v34 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v47) + 8 * v27 - 24);
          v35 = *(v33 + 120);
          if (v35 >= *(v33 + 124))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v33 + 112, v33 + 128, v35 + 1, 16);
            LODWORD(v35) = *(v33 + 120);
          }

          v36 = (*(v33 + 112) + 16 * v35);
          *v36 = v32;
          v36[1] = v34;
          ++*(v33 + 120);
          __str.__r_.__value_.__r.__words[0] = &__str.__r_.__value_.__r.__words[2];
          __str.__r_.__value_.__l.__size_ = 0x600000000;
          mlir::getValues<unsigned long>(a7, &__str);
          v55 = v57;
          v56 = 0x600000000;
          mlir::getValues<unsigned long>(a9, &v55);
          v52 = v54;
          v53 = 0x600000000;
          mlir::getValues<unsigned long>(a8, &v52);
          v37 = *a10;
          v38 = __str.__r_.__value_.__r.__words[0];
          if (LODWORD(__str.__r_.__value_.__r.__words[1]) == 6)
          {
            *(v37 + 232) = *(__str.__r_.__value_.__r.__words[0] + 32);
          }

          *(v37 + 200) = *v38;
          *(v37 + 216) = v38[1];
          if (a1 && *(*(a1 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::AveragePool,void>::id)
          {
            AttrDictionary = mlir::Operation::getAttrDictionary(a1);
            Value = mlir::ArrayAttr::getValue(&AttrDictionary);
            AttrDictionary = mlir::Operation::getAttrDictionary(a1);
            v40 = mlir::ArrayAttr::getValue(&AttrDictionary);
            v42 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v40 + 16 * v41 - 48), **(*(a1 + 6) + 96));
            if (v42)
            {
              v43 = *(*v42 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id;
            }

            else
            {
              v43 = 0;
            }

            *(v37 + 280) = v43;
            v37 = *a10;
          }

          v44 = v52;
          if (v53 == 3)
          {
            *(v37 + 192) = *(v52 + 2);
          }

          *(v37 + 176) = vextq_s8(*v44, *v44, 8uLL);
          v45 = v55;
          if (v56 == 3)
          {
            *(v37 + 272) = *(v55 + 2);
          }

          v46 = *v45;
          *(v37 + 256) = v45[1];
          *(v37 + 264) = v46;
          if (v44 != v54)
          {
            free(v44);
            v45 = v55;
          }

          if (v45 != v57)
          {
            free(v45);
          }

          if (__str.__r_.__value_.__l.__data_ != &__str.__r_.__value_.__r.__words[2])
          {
            free(__str.__r_.__value_.__l.__data_);
          }

          v30 = 1;
          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_26;
          }

          return v30;
        }
      }
    }

    else
    {
      v47 = 0;
      v48 = 0;
    }
  }

  v30 = 0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_26:
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  return v30;
}

uint64_t mlir::anec::MaxPool::addOpToNetwork(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v27 = 0uLL;
  mlir::anec::computeOpKeyString(v3, &__p);
  v4 = *(*(v3 + 72) + 24);
  if (*(v3 + 36))
  {
    v5 = v3 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v8 + 16 * v9 - 16), *(*(*(v3 + 48) + 96) + 8));
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v11 + 32), (v12 + 16 * v13), *(*(*(v3 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v15 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v16 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v18 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v15, (v16 + 16 * v17 - 32), **(*(v3 + 48) + 96));
  v19 = mlir::anec::addPoolOpCommon(v3, a2, 0, &__p, v4, NextResultAtOffset, v10, v14, v18, &v27);
  v20 = v19;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_14:
    result = 0;
    v23 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      return result;
    }

    goto LABEL_15;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v25 = v27;
  if (*(&v27 + 1))
  {
    atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECIRNetwork::AddUnit(a2, &v25);
  v21 = *(&v25 + 1);
  if (*(&v25 + 1) && !atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  result = 1;
  v23 = *(&v27 + 1);
  if (*(&v27 + 1))
  {
LABEL_15:
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = result;
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
      return v24;
    }
  }

  return result;
}

uint64_t mlir::anec::L2NormPool::addOpToNetwork(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v27 = 0uLL;
  mlir::anec::computeOpKeyString(v3, &__p);
  v4 = *(*(v3 + 72) + 24);
  if (*(v3 + 36))
  {
    v5 = v3 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v8 + 16 * v9 - 16), *(*(*(v3 + 48) + 96) + 8));
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v11 + 32), (v12 + 16 * v13), *(*(*(v3 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v15 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v16 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v18 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v15, (v16 + 16 * v17 - 32), **(*(v3 + 48) + 96));
  v19 = mlir::anec::addPoolOpCommon(v3, a2, 2, &__p, v4, NextResultAtOffset, v10, v14, v18, &v27);
  v20 = v19;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_14:
    result = 0;
    v23 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      return result;
    }

    goto LABEL_15;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v25 = v27;
  if (*(&v27 + 1))
  {
    atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECIRNetwork::AddUnit(a2, &v25);
  v21 = *(&v25 + 1);
  if (*(&v25 + 1) && !atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  result = 1;
  v23 = *(&v27 + 1);
  if (*(&v27 + 1))
  {
LABEL_15:
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = result;
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
      return v24;
    }
  }

  return result;
}

BOOL mlir::anec::inferReductionOpReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45[6] = *MEMORY[0x1E69E9840];
  v35 = a6;
  v13 = mlir::TypeRange::dereference_iterator(a9, 0);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v33 = 0;
    v34 = 0;
LABEL_11:
    v25.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v25, "input type must be ranked shaped type");
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  v33 = v13;
  v34 = v14;
  if (!v13 || (mlir::CallOpInterface::getArgOperands(&v33) & 1) == 0)
  {
    goto LABEL_11;
  }

  v43 = v45;
  *v44 = 0x600000000;
  v46.var0 = "axes";
  v46.var1 = 4;
  v15 = mlir::DictionaryAttr::get(&v35, v46);
  v32 = v15;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v40, v15, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v32);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v36, v15, NumElements);
  for (; v42[0] != v37; ++v42[0])
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &__p);
    if (v39 >= 0x41)
    {
      p_p = __p;
    }

    else
    {
      p_p = &__p;
    }

    v27 = *p_p;
    v28 = v44[0];
    if (v44[0] >= v44[1])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v44[0] + 1, 8);
      v28 = v44[0];
    }

    *(v43 + v28) = v27;
    ++v44[0];
    if (v39 >= 0x41 && __p)
    {
      operator delete[](__p);
    }
  }

  v40 = v42;
  v41 = 0x600000000;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v33);
  if (mlir::inferReductionOpReturnShape(a2, a3, ArgAttrsAttr, v18, v43, v44[0], 1, &v40))
  {
    v19 = v40;
    v20 = v41;
    isSplat = mlir::ElementsAttr::isSplat(&v33);
    v22 = mlir::MemRefType::get(v19, v20, isSplat, 0, 0, 0);
    v23 = *(a11 + 8);
    if (v23 >= *(a11 + 12))
    {
      v31 = v22;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v23 + 1, 8);
      v22 = v31;
      LODWORD(v23) = *(a11 + 8);
    }

    *(*a11 + 8 * v23) = v22;
    ++*(a11 + 8);
    result = 1;
  }

  else
  {
    result = 0;
  }

  if (v40 != v42)
  {
    v29 = result;
    free(v40);
    result = v29;
  }

  if (v43 != v45)
  {
    v30 = result;
    free(v43);
    return v30;
  }

  return result;
}

uint64_t mlir::anec::anonymous namespace::TranslateToANECDesc(uint64_t a1, unint64_t a2, __CFString **a3)
{
  v18[6] = *MEMORY[0x1E69E9840];
  ANECReductionLayerDescInitialize();
  v6 = *(*(a1 + 48) + 16);
  if (a1 && v6 == &mlir::detail::TypeIDResolver<mlir::anec::ReduceAvg,void>::id)
  {
    v7 = @"Avg";
  }

  else if (v6 == &mlir::detail::TypeIDResolver<mlir::anec::ReduceMax,void>::id)
  {
    v7 = @"Max";
  }

  else if (v6 == &mlir::detail::TypeIDResolver<mlir::anec::ReduceMin,void>::id)
  {
    v7 = @"Min";
  }

  else
  {
    if (v6 != &mlir::detail::TypeIDResolver<mlir::anec::ReduceSum,void>::id)
    {
      if (*(a1 + 47))
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v7 = @"Sum";
  }

  *a3 = v7;
  if (*(a1 + 47))
  {
LABEL_13:
    v19.var0 = "axes";
    v19.var1 = 4;
    InherentAttr = mlir::Operation::getInherentAttr(a1, v19);
    if (v9)
    {
      goto LABEL_15;
    }
  }

LABEL_14:
  v20.var0 = "axes";
  v20.var1 = 4;
  InherentAttr = mlir::DictionaryAttr::get((a1 + 56), v20);
LABEL_15:
  v16 = v18;
  v17 = 0x600000000;
  mlir::getValues<unsigned long>(InherentAttr, &v16);
  v10 = v17;
  a3[3] = v17;
  v11 = v16;
  if (v10)
  {
    v12 = (a3 + 4);
    v13 = 8 * v10;
    do
    {
      v14 = *v11++;
      v13 -= 8;
    }

    while (v13);
    v11 = v16;
  }

  a3[1] = @"Bypass";
  if (v11 != v18)
  {
    free(v11);
  }

  return 1;
}

BOOL mlir::anec::verifyReductionWithANEC(uint64_t a1, uint64_t a2, mlir::ElementsAttr *a3, unint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = 1;
  *buffer = 1;
  v22[0] = 0;
  ANECUnitValidatorCreate();
  v28[0] = v29;
  v28[1] = 0x100000000;
  v20 = 0;
  v21 = 0;
  if (ANECValidateReductionLayer())
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v22);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, "Invalid configuration", 21);
    std::stringbuf::str();
    v22[0] = *MEMORY[0x1E69E54D8];
    v8 = *(MEMORY[0x1E69E54D8] + 72);
    *(v22 + *(v22[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v23 = v8;
    v24 = MEMORY[0x1E69E5548] + 16;
    if (v26 < 0)
    {
      operator delete(v25[7].__locale_);
    }

    v24 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v25);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v27);
    LOWORD(v25[0].__locale_) = 260;
    v22[0] = &v18;
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v9 = v35;
      if (v35)
      {
        v10 = v36;
        v11 = v35;
        if (v36 != v35)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = v35;
        }

        v36 = v9;
        operator delete(v11);
      }

      v12 = v33;
      if (v33)
      {
        v13 = v34;
        v14 = v33;
        if (v34 != v33)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v33;
        }

        v34 = v12;
        operator delete(v14);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  ANECUnitValidatorDelete();
  return v7;
}

BOOL mlir::anec::ReduceAvg::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a6;
  v27[0] = 0;
  v28 = 0;
  v29 = a7;
  v30 = a8;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(v27, "anec.reduce_avg", 15, Context);
    v28 = 1;
    a1 = v16;
  }

  v31 = a4;
  v32 = a5;
  v18 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v19.var0.var0 = a2;
  }

  else
  {
    v19.var0.var0 = v18;
  }

  v20 = mlir::anec::ReduceAvgAdaptor::verify(&v26, v19);
  return v20 && mlir::anec::inferReductionOpReturnTypes(v20, a2, a3, v21, v22, a6, v23, v24, a9, a10, a11);
}

BOOL mlir::anec::ReduceAvgAdaptor::verify(mlir::anec::ReduceAvgAdaptor *this, Location a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v38 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v38); i != mlir::DictionaryAttr::end(&v38); i += 2)
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v36[0] = v14;
        v36[1] = v15;
        Type = mlir::ElementsAttr::getType(v36);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v17;
        v39[1] = Type;
        mlir::CallableOpInterface::getArgAttrsAttr(v39);
        if (!v18)
        {
          goto LABEL_55;
        }

        v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v19;
        v20 = mlir::ElementsAttr::getType(v34);
        v21 = v20;
        if (v20)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        v35[0] = v21;
        v35[1] = v20;
        mlir::CallableOpInterface::getArgAttrsAttr(v35);
        if (v22 == 1)
        {
LABEL_55:
          if (mlir::hasUniqueValues(v14))
          {
            v31 = v14;
            v32[0] = mlir::ArrayAttr::getValue(&v31);
            v32[1] = v23;
            isSplat = mlir::ElementsAttr::isSplat(v32);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v36[0] = "'anec.reduce_avg' op attribute 'axes' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1";
      v37 = 259;
      mlir::emitError(a2.var0.var0, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v45;
          v26 = __p;
          if (v45 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v45 = v24;
          operator delete(v26);
        }

        v9 = v42;
        if (!v42)
        {
          goto LABEL_50;
        }

        v27 = v43;
        v11 = v42;
        if (v43 == v42)
        {
LABEL_49:
          v43 = v9;
          operator delete(v11);
LABEL_50:
          if (v40 != &v41)
          {
            free(v40);
          }

          return v5;
        }

        do
        {
          v29 = *--v27;
          v28 = v29;
          *v27 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v27 != v9);
LABEL_48:
        v11 = v42;
        goto LABEL_49;
      }

      return v5;
    }
  }

  v36[0] = "'anec.reduce_avg' op requires attribute 'axes'";
  v37 = 259;
  mlir::emitError(a2.var0.var0, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (!v42)
    {
      goto LABEL_50;
    }

    v10 = v43;
    v11 = v42;
    if (v43 == v42)
    {
      goto LABEL_49;
    }

    do
    {
      v13 = *--v10;
      v12 = v13;
      *v10 = 0;
      if (v13)
      {
        operator delete[](v12);
      }
    }

    while (v10 != v9);
    goto LABEL_48;
  }

  return v5;
}

uint64_t mlir::anec::ReduceAvg::addOpToNetwork(mlir::anec **a1, mlir::Operation *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::getReductionZinIrUnitInfo(*a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

void mlir::anec::getReductionZinIrUnitInfo(mlir::anec *this@<X0>, mlir::Operation *a2@<X1>, void *a3@<X8>)
{
  v7 = operator new(0x68uLL);
  *(v7 + 8) = 0;
  *(v7 + 1) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 9) = -1;
  *v7 = &unk_1F5B2E8F8;
  *(v7 + 1) = 0;
  *(v7 + 10) = 11;
  *(v7 + 11) = 1065353216;
  *(v7 + 12) = 0;
  mlir::anec::fillZinIrCommonInfo(this, v7, 20, a2, 0, 0);
  v8 = *(*(this + 6) + 16);
  if (this && v8 == &mlir::detail::TypeIDResolver<mlir::anec::ReduceAvg,void>::id)
  {
    v9 = 3;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ReduceMax,void>::id)
  {
    v9 = 2;
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::anec::ReduceMin,void>::id)
  {
    v9 = 1;
  }

  else
  {
    if (v8 != &mlir::detail::TypeIDResolver<mlir::anec::ReduceSum,void>::id)
    {
      goto LABEL_11;
    }

    v9 = 0;
  }

  *(v7 + 20) = v9;
LABEL_11:
  v10 = (*(*(*(this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v26[0] = v10;
  v26[1] = v11;
  v23[0] = mlir::Operation::getAttrDictionary(this);
  v27.var0 = "axes";
  v27.var1 = 4;
  v12 = mlir::DictionaryAttr::get(v23, v27);
  v25 = v12;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v23, v12, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v25);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v21, v12, NumElements);
  for (; v24 != v22; ++v24)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v23, &__p);
    if (v20 >= 0x41)
    {
      p_p = __p;
    }

    else
    {
      p_p = &__p;
    }

    v15 = *p_p;
    mlir::CallableOpInterface::getArgAttrsAttr(v26);
    DimFromIndex = mlir::anec::getDimFromIndex(v15, v16);
    if ((DimFromIndex & 0x100000000) != 0)
    {
      v18 = dword_1E0999A44[DimFromIndex];
    }

    else
    {
      LOBYTE(v18) = 5;
    }

    *(v7 + 12) |= (1 << v18) & 0x1F;
    if (v20 >= 0x41 && __p)
    {
      operator delete[](__p);
    }
  }

  *a3 = v7;
}

BOOL mlir::anec::ReduceMax::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a6;
  v27[0] = 0;
  v28 = 0;
  v29 = a7;
  v30 = a8;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(v27, "anec.reduce_max", 15, Context);
    v28 = 1;
    a1 = v16;
  }

  v31 = a4;
  v32 = a5;
  v18 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v19.var0.var0 = a2;
  }

  else
  {
    v19.var0.var0 = v18;
  }

  v20 = mlir::anec::ReduceMaxAdaptor::verify(&v26, v19);
  return v20 && mlir::anec::inferReductionOpReturnTypes(v20, a2, a3, v21, v22, a6, v23, v24, a9, a10, a11);
}

BOOL mlir::anec::ReduceMaxAdaptor::verify(mlir::anec::ReduceMaxAdaptor *this, Location a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v38 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v38); i != mlir::DictionaryAttr::end(&v38); i += 2)
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v36[0] = v14;
        v36[1] = v15;
        Type = mlir::ElementsAttr::getType(v36);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v17;
        v39[1] = Type;
        mlir::CallableOpInterface::getArgAttrsAttr(v39);
        if (!v18)
        {
          goto LABEL_55;
        }

        v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v19;
        v20 = mlir::ElementsAttr::getType(v34);
        v21 = v20;
        if (v20)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        v35[0] = v21;
        v35[1] = v20;
        mlir::CallableOpInterface::getArgAttrsAttr(v35);
        if (v22 == 1)
        {
LABEL_55:
          if (mlir::hasUniqueValues(v14))
          {
            v31 = v14;
            v32[0] = mlir::ArrayAttr::getValue(&v31);
            v32[1] = v23;
            isSplat = mlir::ElementsAttr::isSplat(v32);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v36[0] = "'anec.reduce_max' op attribute 'axes' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1";
      v37 = 259;
      mlir::emitError(a2.var0.var0, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v45;
          v26 = __p;
          if (v45 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v45 = v24;
          operator delete(v26);
        }

        v9 = v42;
        if (!v42)
        {
          goto LABEL_50;
        }

        v27 = v43;
        v11 = v42;
        if (v43 == v42)
        {
LABEL_49:
          v43 = v9;
          operator delete(v11);
LABEL_50:
          if (v40 != &v41)
          {
            free(v40);
          }

          return v5;
        }

        do
        {
          v29 = *--v27;
          v28 = v29;
          *v27 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v27 != v9);
LABEL_48:
        v11 = v42;
        goto LABEL_49;
      }

      return v5;
    }
  }

  v36[0] = "'anec.reduce_max' op requires attribute 'axes'";
  v37 = 259;
  mlir::emitError(a2.var0.var0, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (!v42)
    {
      goto LABEL_50;
    }

    v10 = v43;
    v11 = v42;
    if (v43 == v42)
    {
      goto LABEL_49;
    }

    do
    {
      v13 = *--v10;
      v12 = v13;
      *v10 = 0;
      if (v13)
      {
        operator delete[](v12);
      }
    }

    while (v10 != v9);
    goto LABEL_48;
  }

  return v5;
}

BOOL mlir::anec::ReduceMin::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a6;
  v27[0] = 0;
  v28 = 0;
  v29 = a7;
  v30 = a8;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(v27, "anec.reduce_min", 15, Context);
    v28 = 1;
    a1 = v16;
  }

  v31 = a4;
  v32 = a5;
  v18 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v19.var0.var0 = a2;
  }

  else
  {
    v19.var0.var0 = v18;
  }

  v20 = mlir::anec::ReduceMinAdaptor::verify(&v26, v19);
  return v20 && mlir::anec::inferReductionOpReturnTypes(v20, a2, a3, v21, v22, a6, v23, v24, a9, a10, a11);
}

BOOL mlir::anec::ReduceMinAdaptor::verify(mlir::anec::ReduceMinAdaptor *this, Location a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v38 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v38); i != mlir::DictionaryAttr::end(&v38); i += 2)
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v36[0] = v14;
        v36[1] = v15;
        Type = mlir::ElementsAttr::getType(v36);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v17;
        v39[1] = Type;
        mlir::CallableOpInterface::getArgAttrsAttr(v39);
        if (!v18)
        {
          goto LABEL_55;
        }

        v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v19;
        v20 = mlir::ElementsAttr::getType(v34);
        v21 = v20;
        if (v20)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        v35[0] = v21;
        v35[1] = v20;
        mlir::CallableOpInterface::getArgAttrsAttr(v35);
        if (v22 == 1)
        {
LABEL_55:
          if (mlir::hasUniqueValues(v14))
          {
            v31 = v14;
            v32[0] = mlir::ArrayAttr::getValue(&v31);
            v32[1] = v23;
            isSplat = mlir::ElementsAttr::isSplat(v32);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v36[0] = "'anec.reduce_min' op attribute 'axes' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1";
      v37 = 259;
      mlir::emitError(a2.var0.var0, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v45;
          v26 = __p;
          if (v45 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v45 = v24;
          operator delete(v26);
        }

        v9 = v42;
        if (!v42)
        {
          goto LABEL_50;
        }

        v27 = v43;
        v11 = v42;
        if (v43 == v42)
        {
LABEL_49:
          v43 = v9;
          operator delete(v11);
LABEL_50:
          if (v40 != &v41)
          {
            free(v40);
          }

          return v5;
        }

        do
        {
          v29 = *--v27;
          v28 = v29;
          *v27 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v27 != v9);
LABEL_48:
        v11 = v42;
        goto LABEL_49;
      }

      return v5;
    }
  }

  v36[0] = "'anec.reduce_min' op requires attribute 'axes'";
  v37 = 259;
  mlir::emitError(a2.var0.var0, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (!v42)
    {
      goto LABEL_50;
    }

    v10 = v43;
    v11 = v42;
    if (v43 == v42)
    {
      goto LABEL_49;
    }

    do
    {
      v13 = *--v10;
      v12 = v13;
      *v10 = 0;
      if (v13)
      {
        operator delete[](v12);
      }
    }

    while (v10 != v9);
    goto LABEL_48;
  }

  return v5;
}

BOOL mlir::anec::ReduceSum::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a6;
  v27[0] = 0;
  v28 = 0;
  v29 = a7;
  v30 = a8;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(v27, "anec.reduce_sum", 15, Context);
    v28 = 1;
    a1 = v16;
  }

  v31 = a4;
  v32 = a5;
  v18 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v19.var0.var0 = a2;
  }

  else
  {
    v19.var0.var0 = v18;
  }

  v20 = mlir::anec::ReduceSumAdaptor::verify(&v26, v19);
  return v20 && mlir::anec::inferReductionOpReturnTypes(v20, a2, a3, v21, v22, a6, v23, v24, a9, a10, a11);
}

BOOL mlir::anec::ReduceSumAdaptor::verify(mlir::anec::ReduceSumAdaptor *this, Location a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v38 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v38); i != mlir::DictionaryAttr::end(&v38); i += 2)
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v36[0] = v14;
        v36[1] = v15;
        Type = mlir::ElementsAttr::getType(v36);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v17;
        v39[1] = Type;
        mlir::CallableOpInterface::getArgAttrsAttr(v39);
        if (!v18)
        {
          goto LABEL_55;
        }

        v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v19;
        v20 = mlir::ElementsAttr::getType(v34);
        v21 = v20;
        if (v20)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        v35[0] = v21;
        v35[1] = v20;
        mlir::CallableOpInterface::getArgAttrsAttr(v35);
        if (v22 == 1)
        {
LABEL_55:
          if (mlir::hasUniqueValues(v14))
          {
            v31 = v14;
            v32[0] = mlir::ArrayAttr::getValue(&v31);
            v32[1] = v23;
            isSplat = mlir::ElementsAttr::isSplat(v32);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v36[0] = "'anec.reduce_sum' op attribute 'axes' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1";
      v37 = 259;
      mlir::emitError(a2.var0.var0, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v45;
          v26 = __p;
          if (v45 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v45 = v24;
          operator delete(v26);
        }

        v9 = v42;
        if (!v42)
        {
          goto LABEL_50;
        }

        v27 = v43;
        v11 = v42;
        if (v43 == v42)
        {
LABEL_49:
          v43 = v9;
          operator delete(v11);
LABEL_50:
          if (v40 != &v41)
          {
            free(v40);
          }

          return v5;
        }

        do
        {
          v29 = *--v27;
          v28 = v29;
          *v27 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v27 != v9);
LABEL_48:
        v11 = v42;
        goto LABEL_49;
      }

      return v5;
    }
  }

  v36[0] = "'anec.reduce_sum' op requires attribute 'axes'";
  v37 = 259;
  mlir::emitError(a2.var0.var0, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (!v42)
    {
      goto LABEL_50;
    }

    v10 = v43;
    v11 = v42;
    if (v43 == v42)
    {
      goto LABEL_49;
    }

    do
    {
      v13 = *--v10;
      v12 = v13;
      *v10 = 0;
      if (v13)
      {
        operator delete[](v12);
      }
    }

    while (v10 != v9);
    goto LABEL_48;
  }

  return v5;
}

BOOL mlir::anec::GOC::mutateOpForReshapeSwap(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v57[5] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v8 = 8 * a5;
    while (!*a4)
    {
      ++a4;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:
  v9 = (*(*(*(*a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v55 = v9;
  v56 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v55);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v13) == 1)
  {
    v14 = (*(*(*(*a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    v15 = v14 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8) : 0;
    v52 = v14;
    v53 = v15;
    v16 = mlir::CallableOpInterface::getArgAttrsAttr(&v52);
    if (mlir::ShapedType::getNumElements(v16, v17) == 1)
    {
      return 1;
    }
  }

  v18 = (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v18)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  v52 = v18;
  v53 = v19;
  v21 = mlir::CallableOpInterface::getArgAttrsAttr(&v52);
  v22 = v20;
  v55 = v57;
  v56 = 0x500000000;
  v23 = (8 * v20) >> 3;
  if (v23 < 6)
  {
    v24 = 0;
    v25 = 8 * v20;
    if (!v20)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v57, v23, 8);
  v24 = v56;
  v25 = 8 * v22;
  if (v22)
  {
LABEL_22:
    memcpy(v55 + 8 * v24, v21, v25);
    v24 = v56;
  }

LABEL_23:
  v26 = v24 + (v25 >> 3);
  LODWORD(v56) = v26;
  if (v26 <= 4)
  {
    llvm::SmallVectorImpl<unsigned long long>::insert(&v55, v55, 5 - v26, 1uLL);
  }

  v52 = v54;
  v53 = 0x500000000;
  v27 = (8 * a3) >> 3;
  if (v27 < 6)
  {
    v28 = 0;
    v29 = 8 * a3;
    if (!a3)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v27, 8);
  v28 = v53;
  v29 = 8 * a3;
  if (a3)
  {
LABEL_29:
    memcpy(v52 + 8 * v28, a2, v29);
    v28 = v53;
  }

LABEL_30:
  v30 = v28 + (v29 >> 3);
  LODWORD(v53) = v30;
  if (v30 <= 4)
  {
    llvm::SmallVectorImpl<unsigned long long>::insert(&v52, v52, 5 - v30, 1uLL);
  }

  IndexFromDim = mlir::anec::getIndexFromDim(1, v56);
  if (v32)
  {
    v33 = IndexFromDim;
    memset_pattern16(&v48, &unk_1E096FAE0, 0x20uLL);
    v34 = v55;
    v35 = v48;
    if (v56 && v53)
    {
      v36 = 0;
      v37 = v50;
      v38 = v51;
      v39 = v49;
      v40 = 8 * v53 - 8;
      v41 = 8 * v56 - 8;
      do
      {
        if (v36 >= v33)
        {
          if (v36 > v33)
          {
            v37 *= *(v55 + v36);
            v50 = v37;
            v38 *= *(v52 + v36);
            v51 = v38;
          }
        }

        else
        {
          v35 *= *(v55 + v36);
          v48 = v35;
          v39 *= *(v52 + v36);
          v49 = v39;
        }

        if (!v41)
        {
          break;
        }

        ++v36;
        v42 = v40;
        v40 -= 8;
        v41 -= 8;
      }

      while (v42);
    }

    else
    {
      v39 = v49;
      v37 = v50;
      v38 = v51;
    }

    v11 = v35 == v39 && v37 == v38;
    if (v52 != v54)
    {
      free(v52);
      v34 = v55;
    }

    if (v34 != v57)
    {
      free(v34);
    }

    return v11;
  }

  v45 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::anec::GOC::verifyWithANEC(v45, v46, v47);
}

BOOL mlir::anec::GOC::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  ANECGOCLayerDescInitialize();
  *buffer = *(*(*a1 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(buffer);
  if (!DefiningOp)
  {
    goto LABEL_25;
  }

  {
    v35 = DefiningOp;
    DefiningOp = v35;
  }

  if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    *buffer = *(*(*a1 + 72) + 88);
    v7 = mlir::Value::getDefiningOp(buffer);
    if (v7)
    {
      {
        v36 = v7;
        v7 = v36;
      }

      if ((*(**(v7 + 48) + 32))(*(v7 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        v47[0] = v48;
        v47[1] = 0x100000000;
        v8 = 1;
        *buffer = 1;
        v41[0] = 0;
        ANECUnitValidatorCreate();
        v39 = 0;
        v40 = 0;
        if (ANECValidateGOCLayer())
        {
          v9 = *a1;
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v41);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v42, "Invalid configuration", 21);
          std::stringbuf::str();
          v41[0] = *MEMORY[0x1E69E54D8];
          v10 = *(MEMORY[0x1E69E54D8] + 72);
          *(v41 + *(v41[0] - 3)) = *(MEMORY[0x1E69E54D8] + 64);
          v42 = v10;
          v43 = MEMORY[0x1E69E5548] + 16;
          if (v45 < 0)
          {
            operator delete(v44[7].__locale_);
          }

          v43 = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v44);
          std::iostream::~basic_iostream();
          MEMORY[0x1E12E5AA0](&v46);
          LOWORD(v44[0].__locale_) = 260;
          v41[0] = &v37;
          v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
          if (*buffer)
          {
            mlir::InFlightDiagnostic::report(buffer);
          }

          if (v57[0] == 1)
          {
            if (v56 != v57)
            {
              free(v56);
            }

            v11 = v54;
            if (v54)
            {
              v12 = v55;
              v13 = v54;
              if (v55 != v54)
              {
                do
                {
                  v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
                }

                while (v12 != v11);
                v13 = v54;
              }

              v55 = v11;
              operator delete(v13);
            }

            v14 = v52;
            if (v52)
            {
              v15 = v53;
              v16 = v52;
              if (v53 != v52)
              {
                do
                {
                  v26 = *--v15;
                  v25 = v26;
                  *v15 = 0;
                  if (v26)
                  {
                    operator delete[](v25);
                  }
                }

                while (v15 != v14);
                v16 = v52;
              }

              v53 = v14;
              operator delete(v16);
            }

            if (v50 != v51)
            {
              free(v50);
            }
          }

          if (v38 < 0)
          {
            operator delete(v37);
          }
        }

        ANECUnitValidatorDelete();
        v33 = v47[0];
        if (v47[0] == v48)
        {
          return v8;
        }

LABEL_63:
        free(v33);
        return v8;
      }
    }

    v41[0] = "failed: bias operand must be a constant";
    LOWORD(v44[0].__locale_) = 259;
    mlir::OpState::emitOpError(a1, v41, buffer);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v57[0] == 1)
    {
      if (v56 != v57)
      {
        free(v56);
      }

      v27 = v54;
      if (v54)
      {
        v28 = v55;
        v29 = v54;
        if (v55 != v54)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = v54;
        }

        v55 = v27;
        operator delete(v29);
      }

      v20 = v52;
      if (v52)
      {
        v30 = v53;
        v22 = v52;
        if (v53 == v52)
        {
          goto LABEL_61;
        }

        do
        {
          v32 = *--v30;
          v31 = v32;
          *v30 = 0;
          if (v32)
          {
            operator delete[](v31);
          }
        }

        while (v30 != v20);
        goto LABEL_60;
      }

      goto LABEL_62;
    }
  }

  else
  {
LABEL_25:
    v41[0] = "failed: scale operand must be a constant";
    LOWORD(v44[0].__locale_) = 259;
    mlir::OpState::emitOpError(a1, v41, buffer);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v57[0] == 1)
    {
      if (v56 != v57)
      {
        free(v56);
      }

      v17 = v54;
      if (v54)
      {
        v18 = v55;
        v19 = v54;
        if (v55 != v54)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = v54;
        }

        v55 = v17;
        operator delete(v19);
      }

      v20 = v52;
      if (v52)
      {
        v21 = v53;
        v22 = v52;
        if (v53 == v52)
        {
          goto LABEL_61;
        }

        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            operator delete[](v23);
          }
        }

        while (v21 != v20);
LABEL_60:
        v22 = v52;
LABEL_61:
        v53 = v20;
        operator delete(v22);
      }

LABEL_62:
      v33 = v50;
      if (v50 == v51)
      {
        return v8;
      }

      goto LABEL_63;
    }
  }

  return v8;
}