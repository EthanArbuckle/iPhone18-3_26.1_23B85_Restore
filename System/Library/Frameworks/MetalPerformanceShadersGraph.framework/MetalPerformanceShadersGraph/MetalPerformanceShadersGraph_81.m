uint64_t mlir::placement::anonymous namespace::isCompatibleMemrefTensorOpReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 1;
  if (a2 && a4)
  {
    v7 = 0;
    v8 = a2 - 1;
    v9 = a4 - 1;
    while (1)
    {
      v10 = mlir::TypeRange::dereference_iterator(a1, v7);
      v11 = mlir::TypeRange::dereference_iterator(a3, v7);
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
      if (v12)
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
      }

      else
      {
        v10 = 0;
      }

      v22[0] = v10;
      v22[1] = v12;
      v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      if (v13)
      {
        v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      }

      else
      {
        v11 = 0;
      }

      v21[0] = v11;
      v21[1] = v13;
      if (!v22[0])
      {
        break;
      }

      if (!v11)
      {
        break;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v22);
      v16 = v15;
      v17 = mlir::CallableOpInterface::getArgAttrsAttr(v21);
      if (v16 != v18 || memcmp(ArgAttrsAttr, v17, 8 * v16))
      {
        break;
      }

      isSplat = mlir::ElementsAttr::isSplat(v22);
      v20 = isSplat == mlir::ElementsAttr::isSplat(v21);
      result = v20;
      if (v20 && v8 != v7)
      {
        v20 = v9 == v7++;
        if (!v20)
        {
          continue;
        }
      }

      return result;
    }

    return 0;
  }

  return result;
}

void mlir::placement::TensorToMemref::getOutputShapeBeforeInterleave(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  if (!mlir::placement::MemrefToTensor::getInterleaveAttr(this))
  {
    if (*(*this + 9))
    {
      v7 = *this - 16;
    }

    else
    {
      v7 = 0;
    }

    v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v23[0] = mlir::placement::MemrefToTensor::getShapeAttr(this);
  if (!v23[0])
  {
    v8 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v8)
    {
LABEL_11:
      v9 = 0;
LABEL_12:
      v23[0] = v8;
      v23[1] = v9;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v23);
      v12 = v10;
      *a2 = a2 + 16;
      *(a2 + 8) = 0x500000000;
      v13 = (8 * v10) >> 3;
      if (v13 < 6)
      {
        v14 = 0;
        v15 = 8 * v10;
        if (!v10)
        {
LABEL_17:
          *(a2 + 8) = v14 + (v15 >> 3);
          return;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v13, 8);
        v14 = *(a2 + 8);
        v15 = 8 * v12;
        if (!v12)
        {
          goto LABEL_17;
        }
      }

      memcpy((*a2 + 8 * v14), ArgAttrsAttr, v15);
      v14 = *(a2 + 8);
      goto LABEL_17;
    }

LABEL_9:
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    goto LABEL_12;
  }

  if (mlir::DenseElementsAttr::isValidIntOrFloat(v23, 8, 1, 0))
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(v23);
    isSplat = mlir::DenseElementsAttr::isSplat(v23);
    mlir::ArrayAttr::getValue(v23);
    mlir::DenseElementsAttr::getNumElements(v23);
  }

  else
  {
    RawStringData = 0;
  }

  if (mlir::DenseElementsAttr::isValidIntOrFloat(v23, 8, 1, 0))
  {
    mlir::DenseElementsAttr::getRawStringData(v23);
    mlir::DenseElementsAttr::isSplat(v23);
    mlir::ArrayAttr::getValue(v23);
    NumElements = mlir::DenseElementsAttr::getNumElements(v23);
    v3 = NumElements;
    *a2 = a2 + 16;
    *(a2 + 8) = 0x500000000;
    v17 = (a2 + 8);
    if (NumElements < 6)
    {
      if (!NumElements)
      {
        return;
      }

      v18 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, NumElements, 8);
      v18 = *(a2 + 8);
    }

    v19 = *a2;
  }

  else
  {
    v18 = 0;
    v19 = a2 + 16;
    *a2 = a2 + 16;
    v17 = (a2 + 8);
    *(a2 + 12) = 5;
  }

  v20 = 0;
  v21 = v19 + 8 * v18;
  do
  {
    if (isSplat)
    {
      v22 = 0;
    }

    else
    {
      v22 = v20;
    }

    *(v21 + 8 * v20++) = *(RawStringData + 8 * v22);
  }

  while (v3 != v20);
  *v17 = v18 + v3;
}

void mlir::placement::MemrefToTensor::getInputShapeAfterInterleave(mlir::Operation **this@<X0>, void *a2@<X8>)
{
  if (!mlir::placement::MemrefToTensor::getInterleaveAttr(this))
  {
    v6 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v6)
    {
LABEL_11:
      v7 = 0;
LABEL_12:
      __p = v6;
      v27 = v7;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__p);
      v11 = v9;
      *a2 = a2 + 2;
      a2[1] = 0x500000000;
      v12 = (8 * v9) >> 3;
      if (v12 < 6)
      {
        v13 = 0;
        v14 = 8 * v9;
        if (!v9)
        {
LABEL_17:
          *(a2 + 2) = v13 + (v14 >> 3);
          return;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 2), v12, 8);
        v13 = *(a2 + 2);
        v14 = 8 * v11;
        if (!v11)
        {
          goto LABEL_17;
        }
      }

      memcpy((*a2 + 8 * v13), ArgAttrsAttr, v14);
      v13 = *(a2 + 2);
      goto LABEL_17;
    }

LABEL_6:
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
    goto LABEL_12;
  }

  if (!mlir::placement::MemrefToTensor::getShapeAttr(this))
  {
    if (*(*this + 9))
    {
      v8 = *this - 16;
    }

    else
    {
      v8 = 0;
    }

    v6 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v4 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  __p = v4;
  v27 = v5;
  v16 = mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v17 = v15;
  *a2 = a2 + 2;
  a2[1] = 0x500000000;
  v18 = (8 * v15) >> 3;
  if (v18 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 2), v18, 8);
    v19 = *(a2 + 2);
    v20 = 8 * v17;
    if (!v17)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v19 = 0;
  v20 = 8 * v15;
  if (v15)
  {
LABEL_23:
    memcpy((*a2 + 8 * v19), v16, v20);
    v19 = *(a2 + 2);
  }

LABEL_24:
  v21 = v19 + (v20 >> 3);
  *(a2 + 2) = v21;
  InterleaveAttr = mlir::placement::MemrefToTensor::getInterleaveAttr(this);
  if (InterleaveAttr)
  {
    mlir::IntegerAttr::getValue(&InterleaveAttr, &__p);
    if (v27 >= 0x41)
    {
      p_p = __p;
    }

    else
    {
      p_p = &__p;
    }

    v23 = *p_p;
    if (v27 >= 0x41 && __p)
    {
      operator delete[](__p);
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = 16;
  if (v21 == 4)
  {
    v24 = 8;
  }

  v25 = *a2;
  *(v25 + v24) = *(*a2 + v24) / v23;
  *(v25 + 8 * v21 - 8) *= v23;
}

uint64_t mlir::placement::MemrefToTensor::fold(mlir::Operation **a1)
{
  AttrDictionary = *(*(*a1 + 9) + 24);
  result = mlir::Value::getDefiningOp(&AttrDictionary);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
    {
      v3 = result;
      v4 = *(*(*(result + 72) + 24) + 8);
      v5 = *(*a1 + 9) ? *a1 - 16 : 0;
      if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) ^ v4) <= 7)
      {
        InterleaveAttr = mlir::placement::MemrefToTensor::getInterleaveAttr(a1);
        AttrDictionary = mlir::Operation::getAttrDictionary(v3);
        Value = mlir::ArrayAttr::getValue(&AttrDictionary);
        AttrDictionary = mlir::Operation::getAttrDictionary(v3);
        v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
        v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(v3 + 6) + 96));
        if (v10)
        {
          if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }

          if (v11 == InterleaveAttr)
          {
LABEL_14:
            if (!mlir::placement::MemrefToTensor::getResultElementTypeAttr(a1))
            {
              AttrDictionary = mlir::Operation::getAttrDictionary(v3);
              v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
              AttrDictionary = mlir::Operation::getAttrDictionary(v3);
              v13 = mlir::ArrayAttr::getValue(&AttrDictionary);
              v15 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v12, (v13 + 16 * v14), *(*(*(v3 + 6) + 96) + 8));
              if (!v15 || *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
              {
                return *(*(v3 + 9) + 24) | 4;
              }
            }
          }
        }

        else if (!InterleaveAttr)
        {
          goto LABEL_14;
        }
      }
    }

    return 0;
  }

  return result;
}

void mlir::placement::ReplacedOps::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 16), *(*(*(*this + 6) + 96) + 8));
  mlir::AffineMapAttr::getValue(&AttrDictionary);
  v7 = *this;
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  AttrDictionary = *(*(*(*this + 6) + 96) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&AttrDictionary);
  v10 = *(*(*this + 6) + 96);
  mlir::function_interface_impl::printFunctionOp(a2, v7, InterfaceFor, 0, AttrData, v11, *v10, v10[3]);
}

BOOL mlir::placement::RegionCall::verifySymbolUses(mlir::Operation **this, mlir::SymbolTableCollection *a2)
{
  v151 = *MEMORY[0x1E69E9840];
  v4 = *this;
  if (!*(*this + 47) || (v152.var0 = "callee", v152.var1 = 6, InherentAttr = mlir::Operation::getInherentAttr(*this, v152), (v6 & 1) == 0))
  {
    v153.var0 = "callee";
    v153.var1 = 6;
    InherentAttr = mlir::DictionaryAttr::get((v4 + 56), v153);
  }

  if (!InherentAttr || (*(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? (v7 = 0) : (v7 = InherentAttr), (AttrDictionary = v7) == 0))
  {
    v134 = 0;
    goto LABEL_56;
  }

  v8 = InherentAttr;
  mlir::OpaqueAttr::getAttrData(&AttrDictionary);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v134 = v10;
  if (!v10)
  {
LABEL_56:
    Value = "requires a 'callee' symbol reference attribute";
    v138 = 259;
    mlir::OpState::emitOpError(this, &Value, &AttrDictionary);
    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v150 != 1)
    {
      return v34;
    }

    if (v149 != &v150)
    {
      free(v149);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v148;
      v39 = __p;
      if (v148 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v148 = v37;
      operator delete(v39);
    }

    v40 = v145;
    if (v145)
    {
      v41 = v146;
      v42 = v145;
      if (v146 == v145)
      {
        goto LABEL_171;
      }

      do
      {
        v44 = *--v41;
        v43 = v44;
        *v41 = 0;
        if (v44)
        {
          operator delete[](v43);
        }
      }

      while (v41 != v40);
LABEL_170:
      v42 = v145;
LABEL_171:
      v146 = v40;
      operator delete(v42);
    }

LABEL_172:
    if (v141 != v144)
    {
      free(v141);
    }

    return v34;
  }

  v11 = mlir::SymbolTableCollection::lookupNearestSymbolFrom(a2, *this, v10);
  if (!v11)
  {
    v133 = 257;
    mlir::OpState::emitOpError(this, &v130, &AttrDictionary);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, "'");
    v46 = v45;
    Value = mlir::AffineMapAttr::getValue(&v134);
    AttrData = mlir::OpaqueAttr::getAttrData(&Value);
    if (*v46)
    {
      v138 = 261;
      Value = AttrData;
      v136 = v48;
      mlir::Diagnostic::operator<<(v46 + 8, &Value);
      if (*v46)
      {
        v49 = v46 + 24;
        v50 = *(v46 + 24);
        LODWORD(Value) = 3;
        v136 = "' does not reference a valid function";
        v137 = 37;
        v51 = *(v46 + 32);
        p_Value = &Value;
        if (v51 >= *(v46 + 36))
        {
          if (v50 <= &Value && v50 + 24 * v51 > &Value)
          {
            v122 = &Value - v50;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v49, v46 + 40, v51 + 1, 24);
            v50 = *(v46 + 24);
            p_Value = &v122[v50];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v49, v46 + 40, v51 + 1, 24);
            v50 = *(v46 + 24);
            p_Value = &Value;
          }
        }

        v53 = v50 + 24 * *(v46 + 32);
        v54 = *p_Value;
        *(v53 + 16) = p_Value[2];
        *v53 = v54;
        ++*(v46 + 32);
      }
    }

    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v150 != 1)
    {
      return v34;
    }

    if (v149 != &v150)
    {
      free(v149);
    }

    v55 = __p;
    if (__p)
    {
      v56 = v148;
      v57 = __p;
      if (v148 != __p)
      {
        do
        {
          v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
        }

        while (v56 != v55);
        v57 = __p;
      }

      v148 = v55;
      operator delete(v57);
    }

    v40 = v145;
    if (v145)
    {
      v58 = v146;
      v42 = v145;
      if (v146 == v145)
      {
        goto LABEL_171;
      }

      do
      {
        v60 = *--v58;
        v59 = v60;
        *v58 = 0;
        if (v60)
        {
          operator delete[](v59);
        }
      }

      while (v58 != v40);
      goto LABEL_170;
    }

    goto LABEL_172;
  }

  v12 = v11;
  v13 = *(*(v11 + 48) + 16);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id)
  {
    v14 = 0;
  }

  else
  {
    v14 = 2 * (v13 == &mlir::detail::TypeIDResolver<mlir::mpsx::CPUOp,void>::id);
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::anec::A12,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A13,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A14,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A15,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A16,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A17,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A18,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A11Legacy,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id)
  {
    v23 = 1;
  }

  else
  {
    v23 = v14;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v24 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v25 = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (*(mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v24 + 16), (v25 + 16 * v26), *(*(*(*this + 6) + 96) + 8)) + 8) != v23)
  {
    v133 = 257;
    mlir::OpState::emitOpError(this, &v130, &AttrDictionary);
    if (AttrDictionary)
    {
      LODWORD(Value) = 3;
      v136 = "failed: callee of type '";
      v137 = 24;
      v61 = &Value;
      v62 = v141;
      if (v142 >= v143)
      {
        if (v141 <= &Value && v141 + 24 * v142 > &Value)
        {
          v121 = &Value - v141;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
          v62 = v141;
          v61 = (v141 + v121);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
          v61 = &Value;
          v62 = v141;
        }
      }

      v63 = &v62[24 * v142];
      v64 = *v61;
      *(v63 + 2) = v61[2];
      *v63 = v64;
      ++v142;
    }

    if (AttrDictionary)
    {
      v65 = (&off_1E86D34D8)[v23];
      v138 = 261;
      Value = v65;
      v136 = 3;
      mlir::Diagnostic::operator<<(v140, &Value);
      if (AttrDictionary)
      {
        LODWORD(Value) = 3;
        v136 = "' does not match the call region type ('";
        v137 = 40;
        v66 = &Value;
        v67 = v141;
        if (v142 >= v143)
        {
          if (v141 <= &Value && v141 + 24 * v142 > &Value)
          {
            v123 = &Value - v141;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
            v67 = v141;
            v66 = (v141 + v123);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
            v66 = &Value;
            v67 = v141;
          }
        }

        v68 = &v67[24 * v142];
        v69 = *v66;
        *(v68 + 2) = v66[2];
        *v68 = v69;
        ++v142;
      }
    }

    Value = mlir::Operation::getAttrDictionary(*this);
    v70 = mlir::ArrayAttr::getValue(&Value);
    Value = mlir::Operation::getAttrDictionary(*this);
    v71 = mlir::ArrayAttr::getValue(&Value);
    v73 = *(mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v70 + 16), (v71 + 16 * v72), *(*(*(*this + 6) + 96) + 8)) + 8);
    if (v73 > 2)
    {
      v75 = 0;
      v74 = "";
    }

    else
    {
      v74 = (&off_1E86D34D8)[v73];
      v75 = 3;
    }

    if (AttrDictionary)
    {
      v138 = 261;
      Value = v74;
      v136 = v75;
      mlir::Diagnostic::operator<<(v140, &Value);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, "')");
    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v76);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v150 != 1)
    {
      return v34;
    }

    if (v149 != &v150)
    {
      free(v149);
    }

    v77 = __p;
    if (__p)
    {
      v78 = v148;
      v79 = __p;
      if (v148 != __p)
      {
        do
        {
          v78 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v78 - 1);
        }

        while (v78 != v77);
        v79 = __p;
      }

      v148 = v77;
      operator delete(v79);
    }

    v40 = v145;
    if (v145)
    {
      v80 = v146;
      v42 = v145;
      if (v146 == v145)
      {
        goto LABEL_171;
      }

      do
      {
        v82 = *--v80;
        v81 = v82;
        *v80 = 0;
        if (v82)
        {
          operator delete[](v81);
        }
      }

      while (v80 != v40);
      goto LABEL_170;
    }

    goto LABEL_172;
  }

  v129[0] = v12;
  v129[1] = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v12);
  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v129);
  v27 = mlir::arith::FastMathFlagsAttr::getValue(&CallableForCallee);
  if ((*(*this + 46) & 0x80) != 0)
  {
    if (v27 == *(*this + 17))
    {
      goto LABEL_47;
    }

LABEL_154:
    Value = "incorrect number of operands for callee";
    v138 = 259;
    mlir::OpState::emitOpError(this, &Value, &AttrDictionary);
    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v150 != 1)
    {
      return v34;
    }

    if (v149 != &v150)
    {
      free(v149);
    }

    v114 = __p;
    if (__p)
    {
      v115 = v148;
      v116 = __p;
      if (v148 != __p)
      {
        do
        {
          v115 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v115 - 1);
        }

        while (v115 != v114);
        v116 = __p;
      }

      v148 = v114;
      operator delete(v116);
    }

    v40 = v145;
    if (v145)
    {
      v117 = v146;
      v42 = v145;
      if (v146 == v145)
      {
        goto LABEL_171;
      }

      do
      {
        v119 = *--v117;
        v118 = v119;
        *v117 = 0;
        if (v119)
        {
          operator delete[](v118);
        }
      }

      while (v117 != v40);
      goto LABEL_170;
    }

    goto LABEL_172;
  }

  if (v27)
  {
    goto LABEL_154;
  }

LABEL_47:
  v28 = mlir::arith::FastMathFlagsAttr::getValue(&CallableForCallee);
  if (!v28)
  {
LABEL_51:
    if (mlir::FunctionType::getNumResults(&CallableForCallee) == *(*this + 9))
    {
      NumResults = mlir::FunctionType::getNumResults(&CallableForCallee);
      if (!NumResults)
      {
        return 1;
      }

      v34 = NumResults;
      v35 = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;
      if (*mlir::FunctionType::getResults(&CallableForCallee) == v35)
      {
        if (v34)
        {
          return v34;
        }

        v106 = *(*this - 3) & 0xFFFFFFFFFFFFFFF8;
        if (*(mlir::FunctionType::getResults(&CallableForCallee) + 8) == v106)
        {
          if (v34 == 2)
          {
            return 1;
          }

          v107 = *(*this - 5) & 0xFFFFFFFFFFFFFFF8;
          if (*(mlir::FunctionType::getResults(&CallableForCallee) + 16) == v107)
          {
            if (v34 == 3)
            {
              return 1;
            }

            v108 = *(*this - 7) & 0xFFFFFFFFFFFFFFF8;
            if (*(mlir::FunctionType::getResults(&CallableForCallee) + 24) == v108)
            {
              if (v34 == 4)
              {
                return 1;
              }

              v109 = *(*this - 9) & 0xFFFFFFFFFFFFFFF8;
              if (*(mlir::FunctionType::getResults(&CallableForCallee) + 32) == v109)
              {
                if (v34 == 5)
                {
                  return 1;
                }

                v110 = *(*this - 11) & 0xFFFFFFFFFFFFFFF8;
                if (*(mlir::FunctionType::getResults(&CallableForCallee) + 40) == v110)
                {
                  v111 = v34 - 6;
                  if (v34 == 6)
                  {
                    return 1;
                  }

                  v112 = 0;
                  while (1)
                  {
                    v113 = *(*this - 3 * (v112 + 1) - 11) & 0xFFFFFFFFFFFFFFF8;
                    if (*(mlir::FunctionType::getResults(&CallableForCallee) + 8 * v112 + 48) != v113)
                    {
                      break;
                    }

                    ++v112;
                    v34 = 1;
                    if (v111 == v112)
                    {
                      return v34;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v36 = "result type mismatch";
    }

    else
    {
      v36 = "incorrect number of results for callee";
    }

    Value = v36;
    v138 = 259;
    mlir::OpState::emitOpError(this, &Value, &AttrDictionary);
    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&AttrDictionary);
    return v34;
  }

  v29 = 0;
  v30 = v28;
  v31 = 24;
  while (1)
  {
    v32 = *(*(*(*this + 9) + v31) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(mlir::FunctionType::getInputs(&CallableForCallee) + 8 * v29) != v32)
    {
      break;
    }

    ++v29;
    v31 += 32;
    if (v30 == v29)
    {
      goto LABEL_51;
    }
  }

  Value = "operand type mismatch: expected operand type ";
  v138 = 259;
  mlir::OpState::emitOpError(this, &Value, &AttrDictionary);
  Inputs = mlir::FunctionType::getInputs(&CallableForCallee);
  if (AttrDictionary)
  {
    v84 = &v130;
    mlir::DiagnosticArgument::DiagnosticArgument(&v130, *(Inputs + 8 * v29));
    v85 = v141;
    if (v142 >= v143)
    {
      if (v141 <= &v130 && v141 + 24 * v142 > &v130)
      {
        v124 = &v130 - v141;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
        v85 = v141;
        v84 = v141 + v124;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
        v84 = &v130;
        v85 = v141;
      }
    }

    v86 = &v85[24 * v142];
    v87 = *v84;
    *(v86 + 2) = *(v84 + 2);
    *v86 = v87;
    ++v142;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, ", but provided ");
  if (*v88)
  {
    v89 = *(*(*(*this + 9) + v31) + 8);
    v90 = &v130;
    v91 = v88;
    mlir::DiagnosticArgument::DiagnosticArgument(&v130, v89 & 0xFFFFFFFFFFFFFFF8);
    v92 = *(v91 + 24);
    v93 = *(v91 + 32);
    if (v93 >= *(v91 + 36))
    {
      if (v92 <= &v130 && v92 + 24 * v93 > &v130)
      {
        v125 = &v130 - v92;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v91 + 24, v91 + 40, v93 + 1, 24);
        v88 = v91;
        v92 = *(v91 + 24);
        v90 = &v125[v92];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v91 + 24, v91 + 40, v93 + 1, 24);
        v88 = v91;
        v92 = *(v91 + 24);
        v90 = &v130;
      }
    }

    else
    {
      v88 = v91;
    }

    v94 = v92 + 24 * *(v88 + 32);
    v95 = *v90;
    *(v94 + 16) = *(v90 + 2);
    *v94 = v95;
    v96 = (*(v88 + 32) + 1);
    *(v88 + 32) = v96;
    if (*v88)
    {
      LODWORD(v130) = 3;
      v131 = " for operand number ";
      v132 = 20;
      v97 = *(v88 + 24);
      v98 = &v130;
      if (v96 >= *(v88 + 36))
      {
        if (v97 <= &v130 && v97 + 24 * v96 > &v130)
        {
          v126 = &v130 - v97;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v91 + 24, v91 + 40, v96 + 1, 24);
          v88 = v91;
          v97 = *(v91 + 24);
          v98 = &v126[v97];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v91 + 24, v91 + 40, v96 + 1, 24);
          v88 = v91;
          v97 = *(v91 + 24);
          v98 = &v130;
        }
      }

      v99 = v97 + 24 * *(v88 + 32);
      v100 = *v98;
      *(v99 + 16) = *(v98 + 2);
      *v99 = v100;
      v101 = (*(v88 + 32) + 1);
      *(v88 + 32) = v101;
      if (*v88)
      {
        LODWORD(v130) = 5;
        v131 = v29;
        v102 = *(v88 + 24);
        v103 = &v130;
        if (v101 >= *(v88 + 36))
        {
          if (v102 <= &v130 && v102 + 24 * v101 > &v130)
          {
            v127 = &v130 - v102;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v91 + 24, v91 + 40, v101 + 1, 24);
            v88 = v91;
            v102 = *(v91 + 24);
            v103 = &v127[v102];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v91 + 24, v91 + 40, v101 + 1, 24);
            v88 = v91;
            v102 = *(v91 + 24);
            v103 = &v130;
          }
        }

        v104 = v102 + 24 * *(v88 + 32);
        v105 = *v103;
        *(v104 + 16) = *(v103 + 2);
        *v104 = v105;
        ++*(v88 + 32);
      }
    }
  }

  v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v88);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v150 == 1)
  {
    mlir::Diagnostic::~Diagnostic(v140);
  }

  return v34;
}

float mlir::placement::RegionCall::getExecutionCost(mlir::Operation **a1)
{
  v2 = *a1;
  if (!*(*a1 + 47) || (v44.var0 = "callee", v44.var1 = 6, InherentAttr = mlir::Operation::getInherentAttr(*a1, v44), (v4 & 1) == 0))
  {
    v45.var0 = "callee";
    v45.var1 = 6;
    InherentAttr = mlir::DictionaryAttr::get((v2 + 56), v45);
  }

  if (InherentAttr && (*(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? (v5 = 0) : (v5 = InherentAttr), (AttrDictionary = v5) != 0))
  {
    v6 = InherentAttr;
    mlir::OpaqueAttr::getAttrData(&AttrDictionary);
    if (v7)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  ParentOp = *a1;
  do
  {
    ParentOp = *(ParentOp + 2);
    if (!ParentOp)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(ParentOp);
    if (!ParentOp)
    {
      break;
    }
  }

  while (*(*(ParentOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
  mlir::SymbolTable::lookupSymbolIn(ParentOp, v6);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v12 = *(mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v10 + 16 * v11), *(*(*(*a1 + 6) + 96) + 8)) + 8);
  v13 = 0.0;
  if (v12)
  {
    if (v12 == 1)
    {
      return 0.0008;
    }

    return v13;
  }

  v15 = *a1;
  if ((*(*a1 + 46) & 0x80) == 0)
  {
    goto LABEL_36;
  }

  v16 = *(v15 + 17);
  if (!v16)
  {
    goto LABEL_36;
  }

  v17 = 0;
  v18 = *(v15 + 9);
  do
  {
    v20 = (*(*(v18 + 32 * v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v20)
    {
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
    }

    else
    {
      v21 = 0;
    }

    AttrDictionary = v20;
    v42 = v21;
    if (!mlir::CallOpInterface::getArgOperands(&AttrDictionary))
    {
      goto LABEL_24;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&AttrDictionary);
    if (v23)
    {
      v24 = 8 * v23;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v24 -= 8;
        if (!v24)
        {
          goto LABEL_34;
        }
      }

LABEL_24:
      v19 = 128.0;
      goto LABEL_25;
    }

LABEL_34:
    isSplat = mlir::ElementsAttr::isSplat(&AttrDictionary);
    v25 = mlir::Type::getIntOrFloatBitWidth(&isSplat) >> 3;
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(&AttrDictionary);
    v19 = (v25 * mlir::ShapedType::getNumElements(v26, v27)) * 0.0039062;
LABEL_25:
    v13 = v13 + (v19 / 1080000000.0);
    ++v17;
  }

  while (v17 != v16);
  v15 = *a1;
LABEL_36:
  v28 = *(v15 + 9);
  v29 = v15 - 16;
  if (v28)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v28)
  {
    for (i = 0; i != v28; ++i)
    {
      v33 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v30, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v33)
      {
        v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
      }

      else
      {
        v34 = 0;
      }

      AttrDictionary = v33;
      v42 = v34;
      if (mlir::CallOpInterface::getArgOperands(&AttrDictionary))
      {
        v35 = mlir::CallableOpInterface::getArgAttrsAttr(&AttrDictionary);
        if (!v36)
        {
LABEL_51:
          isSplat = mlir::ElementsAttr::isSplat(&AttrDictionary);
          v38 = mlir::Type::getIntOrFloatBitWidth(&isSplat) >> 3;
          v39 = mlir::CallableOpInterface::getArgAttrsAttr(&AttrDictionary);
          v32 = (v38 * mlir::ShapedType::getNumElements(v39, v40)) * 0.0039062;
          goto LABEL_42;
        }

        v37 = 8 * v36;
        while (*v35 != 0x8000000000000000)
        {
          ++v35;
          v37 -= 8;
          if (!v37)
          {
            goto LABEL_51;
          }
        }
      }

      v32 = 128.0;
LABEL_42:
      v13 = v13 + (v32 / 1080000000.0);
    }
  }

  return v13;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::ANEIOCast>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::ANEIOCast>::getEffects;
  {
    v5 = v2;
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::foldSingleResultHook<mlir::placement::ANEIOCast>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  v17[1] = *(a1 + 56);
  v17[2] = v8;
  v18 = 1;
  v9 = *(a1 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a1 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  mlir::ValueRange::ValueRange(v19, v11, v10);
  v19[2] = a2;
  v19[3] = a3;
  v17[0] = *(*(a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v17);
  if (!DefiningOp)
  {
    return 0;
  }

  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::ANEIOCast,void>::id)
  {
    return 0;
  }

  v13 = *(*(DefiningOp + 72) + 24);
  if ((*(a1 - 8) ^ *(v13 + 8)) >= 8 || v13 < 8)
  {
    return 0;
  }

  if (a1 - 16 != (v13 & 0xFFFFFFFFFFFFFFF8))
  {
    v14 = v13 | 4;
    v15 = *(a4 + 8);
    if (v15 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v15 + 1, 8);
      LODWORD(v15) = *(a4 + 8);
    }

    *(*a4 + 8 * v15) = v14;
    ++*(a4 + 8);
  }

  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v35 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v35;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v29 = v1;
    v36 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v29;
    a1 = v36;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v30 = v1;
    v37 = a1;
    v24 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v2 = v24;
    v1 = v30;
    a1 = v37;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v31 = v1;
    v38 = a1;
    v25 = v2;
    v20 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v20;
    v2 = v25;
    v1 = v31;
    a1 = v38;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v32 = v1;
    v39 = a1;
    v26 = v2;
    v17 = v4;
    v21 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v17;
    v3 = v21;
    v2 = v26;
    v1 = v32;
    a1 = v39;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v33 = v1;
    v40 = a1;
    v27 = v2;
    v18 = v4;
    v22 = v3;
    v15 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v15;
    v4 = v18;
    v3 = v22;
    v2 = v27;
    v1 = v33;
    a1 = v40;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v34 = v1;
    v41 = a1;
    v28 = v2;
    v19 = v4;
    v23 = v3;
    v14 = v6;
    v16 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v6 = v14;
    v5 = v16;
    v4 = v19;
    v3 = v23;
    v2 = v28;
    v1 = v34;
    a1 = v41;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::placement::ANEIOCast>,mlir::OpTrait::OneResult<mlir::placement::ANEIOCast>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::placement::ANEIOCast>,mlir::OpTrait::ZeroSuccessors<mlir::placement::ANEIOCast>,mlir::OpTrait::OneOperand<mlir::placement::ANEIOCast>,mlir::OpTrait::OpInvariants<mlir::placement::ANEIOCast>,mlir::MemoryEffectOpInterface::Trait<mlir::placement::ANEIOCast>>(a1, a2))
  {
    v5 = a1;
    return mlir::placement::ANEIOCast::verify(&v5);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::placement::ANEIOCast>,mlir::OpTrait::OneResult<mlir::placement::ANEIOCast>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::placement::ANEIOCast>,mlir::OpTrait::ZeroSuccessors<mlir::placement::ANEIOCast>,mlir::OpTrait::OneOperand<mlir::placement::ANEIOCast>,mlir::OpTrait::OpInvariants<mlir::placement::ANEIOCast>,mlir::MemoryEffectOpInterface::Trait<mlir::placement::ANEIOCast>>(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && mlir::placement::__mlir_ods_local_type_constraint_PlacementOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    if (*(a1 + 36))
    {
      v6 = a1 - 16;
    }

    else
    {
      v6 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
    return mlir::placement::__mlir_ods_local_type_constraint_PlacementOps1(a1, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>(uint64_t a1)
{
  {
    v35 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v35;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v29 = v1;
    v36 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v29;
    a1 = v36;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v30 = v1;
    v37 = a1;
    v24 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v2 = v24;
    v1 = v30;
    a1 = v37;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v31 = v1;
    v38 = a1;
    v25 = v2;
    v20 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v20;
    v2 = v25;
    v1 = v31;
    a1 = v38;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v32 = v1;
    v39 = a1;
    v26 = v2;
    v17 = v4;
    v21 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v17;
    v3 = v21;
    v2 = v26;
    v1 = v32;
    a1 = v39;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v33 = v1;
    v40 = a1;
    v27 = v2;
    v18 = v4;
    v22 = v3;
    v15 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v15;
    v4 = v18;
    v3 = v22;
    v2 = v27;
    v1 = v33;
    a1 = v40;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v34 = v1;
    v41 = a1;
    v28 = v2;
    v19 = v4;
    v23 = v3;
    v14 = v6;
    v16 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>();
    v6 = v14;
    v5 = v16;
    v4 = v19;
    v3 = v23;
    v2 = v28;
    v1 = v34;
    a1 = v41;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HostTypeConversion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HostTypeConversion>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::HostTypeConversion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HostTypeConversion>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HostTypeConversion<Empty>]";
  v6 = 90;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  if (*(a1 + 9))
  {
    v6 = a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  return 1;
}

void *mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "placement.memref_to_tensor", 26, a2, &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F5B05918;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

BOOL mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>::getEffects;
  {
    v5 = v2;
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::placement::MemrefToTensor>::refineReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::placement::MemrefToTensor::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "placement.memref_to_tensor";
      v18 = 26;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

BOOL mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(mlir *a1, Location a2, char *a3, uint64_t a4, char *a5, uint64_t a6, char *a7, uint64_t a8)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v24);
  if (v24)
  {
    mlir::Diagnostic::append<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(&v25, a3, a4, a5, a6, a7, a8);
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
  if (v24)
  {
    mlir::InFlightDiagnostic::report(&v24);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v31;
      v17 = __p;
      if (v31 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v31 = v15;
      operator delete(v17);
    }

    v18 = v28;
    if (v28)
    {
      v19 = v29;
      v20 = v28;
      if (v29 != v28)
      {
        do
        {
          v22 = *--v19;
          v21 = v22;
          *v19 = 0;
          if (v22)
          {
            operator delete[](v21);
          }
        }

        while (v19 != v18);
        v20 = v28;
      }

      v29 = v18;
      operator delete(v20);
    }

    if (v26 != &v27)
    {
      free(v26);
    }
  }

  return v14;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

const char *llvm::getTypeName<mlir::CompatibleReturnTypesInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CompatibleReturnTypesInterface]";
  v6 = 86;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

BOOL mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::foldSingleResultHook<mlir::placement::MemrefToTensor>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v17[0] = a1;
  v17[1] = v8;
  v17[2] = v9;
  v18 = 1;
  v10 = *(a1 + 44);
  v11 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v12 = ((a1 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::ValueRange::ValueRange(v19, v12, v11);
  v19[2] = a2;
  v19[3] = a3;
  v13 = mlir::placement::MemrefToTensor::fold(v17);
  if (v13 < 8 || a1 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v13 > 7;
  }

  v14 = *(a4 + 8);
  if (v14 >= *(a4 + 12))
  {
    v16 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v14 + 1, 8);
    v13 = v16;
    LODWORD(v14) = *(a4 + 8);
  }

  *(*a4 + 8 * v14) = v13;
  ++*(a4 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v41;
    v2 = v49;
    v1 = v58;
    a1 = v68;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v59 = v1;
    v69 = a1;
    v42 = v3;
    v50 = v2;
    v35 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    v1 = v60;
    a1 = v70;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v61 = v1;
    v71 = a1;
    v44 = v3;
    v52 = v2;
    v31 = v5;
    v37 = v4;
    v26 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::HostTypeConversion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HostTypeConversion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v64 = v1;
    v74 = a1;
    v47 = v3;
    v55 = v2;
    v34 = v5;
    v40 = v4;
    v25 = v7;
    v29 = v6;
    v20 = v9;
    v22 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v20;
    v8 = v22;
    v7 = v25;
    v6 = v29;
    v5 = v34;
    v4 = v40;
    v3 = v47;
    v2 = v55;
    v1 = v64;
    a1 = v74;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CompatibleReturnTypesInterface::Trait<Empty>]";
  v6 = 100;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v8 = a1, (mlir::placement::MemrefToTensor::verifyInvariantsImpl(&v8) & 1) != 0))
  {
    v8 = a1;
    mlir::placement::MemrefToTensor::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "placement.region_call", 21, a2, &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F5B059E0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>::verifySymbolUses;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>::getExecutionCost;
  {
    v5 = v2;
    mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>(uint64_t a1)
{
  {
    v44 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v44;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v37 = v1;
    v45 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>();
    v1 = v37;
    a1 = v45;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v38 = v1;
    v46 = a1;
    v31 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v31;
    v1 = v38;
    a1 = v46;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v39 = v1;
    v47 = a1;
    v32 = v2;
    v26 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v3 = v26;
    v2 = v32;
    v1 = v39;
    a1 = v47;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v40 = v1;
    v48 = a1;
    v33 = v2;
    v22 = v4;
    v27 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v22;
    v3 = v27;
    v2 = v33;
    v1 = v40;
    a1 = v48;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v41 = v1;
    v49 = a1;
    v34 = v2;
    v23 = v4;
    v28 = v3;
    v19 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>();
    v5 = v19;
    v4 = v23;
    v3 = v28;
    v2 = v34;
    v1 = v41;
    a1 = v49;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v42 = v1;
    v50 = a1;
    v35 = v2;
    v24 = v4;
    v29 = v3;
    v17 = v6;
    v20 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
    v6 = v17;
    v5 = v20;
    v4 = v24;
    v3 = v29;
    v2 = v35;
    v1 = v42;
    a1 = v50;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v43 = v1;
    v51 = a1;
    v36 = v2;
    v25 = v4;
    v30 = v3;
    v18 = v6;
    v21 = v5;
    v16 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>();
    v7 = v16;
    v6 = v18;
    v5 = v21;
    v4 = v25;
    v3 = v30;
    v2 = v36;
    v1 = v43;
    a1 = v51;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ExecutionCostOpInterface::Trait<Empty>]";
  v6 = 94;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    v6 = a1;
    v4 = mlir::placement::RegionCall::verifyInvariantsImpl(&v6);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "placement.replaced_ops", 22, a2, &mlir::detail::TypeIDResolver<mlir::placement::ReplacedOps,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F5B05AA8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(uint64_t a1)
{
  v2 = malloc(0x80uLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(uint64_t a1)
{
  v2 = malloc(0x48uLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getArgumentTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getInputs(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getResultTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getResults(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getArgAttrsAttr(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 32), **(*(this + 6) + 96));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getResAttrsAttr(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v4 + 16 * v5), *(*(*(this + 6) + 96) + 24));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(uint64_t a1)
{
  v2 = malloc(0x38uLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::verifyBody;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::verifyType;
  v2[5] = mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(a1);
  v2[6] = mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(a1);
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::FuncOp>>();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getFunctionType(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::cloneTypeWith(int a1, mlir::Operation *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::clone(&AttrDictionary, a3, a4, a5, a6);
}

uint64_t mlir::detail::FunctionOpInterfaceTrait<mlir::placement::ReplacedOps>::verifyBody(mlir::Operation **a1)
{
  v83 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = (((&v2[4 * ((v2[11] >> 23) & 1) + 17] + ((v2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10]);
  if (*v3 == v3)
  {
    return 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(v2);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 16), *(*(*(*a1 + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  Inputs = mlir::FunctionType::getInputs(&AttrDictionary);
  v9 = v8;
  v10 = *(((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10) + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  v13 = v11 + 48;
  v12 = *(v11 + 48);
  if (((*(v13 + 8) - v12) >> 3) != v8)
  {
    v66[0] = "entry block must have ";
    v67 = 259;
    mlir::OpState::emitOpError(a1, v66, &AttrDictionary);
    if (AttrDictionary)
    {
      v68 = 5;
      v69 = v9;
      v17 = &v68;
      v18 = v73;
      if (v74 >= v75)
      {
        if (v73 <= &v68 && v73 + 24 * v74 > &v68)
        {
          v61 = &v68 - v73;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
          v18 = v73;
          v17 = (v73 + v61);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
          v17 = &v68;
          v18 = v73;
        }
      }

      v19 = &v18[24 * v74];
      v20 = *v17;
      *(v19 + 2) = *(v17 + 2);
      *v19 = v20;
      v21 = ++v74;
      if (AttrDictionary)
      {
        v68 = 3;
        v69 = " arguments to match function signature";
        v70 = 38;
        v22 = &v68;
        v23 = v73;
        if (v21 >= v75)
        {
          if (v73 <= &v68 && v73 + 24 * v21 > &v68)
          {
            v62 = &v68 - v73;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v21 + 1, 24);
            v23 = v73;
            v22 = (v73 + v62);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v21 + 1, 24);
            v22 = &v68;
            v23 = v73;
          }
        }

        v24 = &v23[24 * v74];
        v25 = *v22;
        *(v24 + 2) = *(v22 + 2);
        *v24 = v25;
        ++v74;
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v82 != 1)
    {
      return v16;
    }

    if (v81 != &v82)
    {
      free(v81);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v80;
      v28 = __p;
      if (v80 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v80 = v26;
      operator delete(v28);
    }

    v29 = v77;
    if (v77)
    {
      v30 = v78;
      v31 = v77;
      if (v78 != v77)
      {
        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            operator delete[](v32);
          }
        }

        while (v30 != v29);
        v31 = v77;
      }

      v78 = v29;
      operator delete(v31);
    }

    v59 = v73;
    if (v73 == v76)
    {
      return v16;
    }

LABEL_61:
    free(v59);
    return v16;
  }

  if (!v8)
  {
    return 1;
  }

  v14 = 0;
  while (1)
  {
    v15 = *(*(v12 + 8 * v14) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*Inputs != v15)
    {
      break;
    }

    ++v14;
    ++Inputs;
    if (v8 == v14)
    {
      return 1;
    }
  }

  v34 = Inputs;
  v66[0] = "type of entry block argument #";
  v67 = 259;
  mlir::OpState::emitOpError(a1, v66, &AttrDictionary);
  if (AttrDictionary)
  {
    v68 = 5;
    v69 = v14;
    v35 = &v68;
    v36 = v73;
    if (v74 >= v75)
    {
      if (v73 <= &v68 && v73 + 24 * v74 > &v68)
      {
        v63 = &v68 - v73;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v36 = v73;
        v35 = (v73 + v63);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v35 = &v68;
        v36 = v73;
      }
    }

    v37 = &v36[24 * v74];
    v38 = *v35;
    *(v37 + 2) = *(v35 + 2);
    *v37 = v38;
    ++v74;
    if (AttrDictionary)
    {
      mlir::Diagnostic::operator<<(&v72, 40);
      if (AttrDictionary)
      {
        v39 = &v68;
        mlir::DiagnosticArgument::DiagnosticArgument(&v68, v15);
        v40 = v73;
        if (v74 >= v75)
        {
          if (v73 <= &v68 && v73 + 24 * v74 > &v68)
          {
            v64 = &v68 - v73;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
            v40 = v73;
            v39 = (v73 + v64);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
            v39 = &v68;
            v40 = v73;
          }
        }

        v41 = &v40[24 * v74];
        v42 = *v39;
        *(v41 + 2) = *(v39 + 2);
        *v41 = v42;
        v43 = ++v74;
        if (AttrDictionary)
        {
          v68 = 3;
          v69 = ") must match the type of the corresponding argument in ";
          v70 = 55;
          v44 = &v68;
          v45 = v73;
          if (v43 >= v75)
          {
            if (v73 <= &v68 && v73 + 24 * v43 > &v68)
            {
              v65 = &v68 - v73;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v43 + 1, 24);
              v45 = v73;
              v44 = (v73 + v65);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v43 + 1, 24);
              v44 = &v68;
              v45 = v73;
            }
          }

          v46 = &v45[24 * v74];
          v47 = *v44;
          *(v46 + 2) = *(v44 + 2);
          *v46 = v47;
          ++v74;
        }
      }
    }
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, "function signature(");
  mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v48, v34);
  if (*v49)
  {
    v50 = v49;
    mlir::Diagnostic::operator<<((v49 + 1), 41);
    v49 = v50;
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v82)
  {
    if (v81 != &v82)
    {
      free(v81);
    }

    v51 = __p;
    if (__p)
    {
      v52 = v80;
      v53 = __p;
      if (v80 != __p)
      {
        do
        {
          v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
        }

        while (v52 != v51);
        v53 = __p;
      }

      v80 = v51;
      operator delete(v53);
    }

    v54 = v77;
    if (v77)
    {
      v55 = v78;
      v56 = v77;
      if (v78 != v77)
      {
        do
        {
          v58 = *--v55;
          v57 = v58;
          *v55 = 0;
          if (v58)
          {
            operator delete[](v57);
          }
        }

        while (v55 != v54);
        v56 = v77;
      }

      v78 = v54;
      operator delete(v56);
    }

    v59 = v73;
    if (v73 != v76)
    {
      goto LABEL_61;
    }
  }

  return v16;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>(uint64_t a1)
{
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    a1 = v54;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v46 = v1;
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v1 = v46;
    a1 = v55;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = v1;
    v56 = a1;
    v39 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v39;
    v1 = v47;
    a1 = v56;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v48 = v1;
    v57 = a1;
    v33 = v3;
    v40 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v33;
    v2 = v40;
    v1 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v1;
    v58 = a1;
    v34 = v3;
    v41 = v2;
    v28 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v53 = v1;
    v62 = a1;
    v38 = v3;
    v45 = v2;
    v27 = v5;
    v32 = v4;
    v20 = v7;
    v23 = v6;
    v18 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v8 = v18;
    v7 = v20;
    v6 = v23;
    v5 = v27;
    v4 = v32;
    v3 = v38;
    v2 = v45;
    v1 = v53;
    a1 = v62;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::placement::ReplacedOps::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::placement::ReplacedOps>,mlir::OpTrait::ZeroResults<mlir::placement::ReplacedOps>,mlir::OpTrait::ZeroSuccessors<mlir::placement::ReplacedOps>,mlir::OpTrait::ZeroOperands<mlir::placement::ReplacedOps>,mlir::OpTrait::OpInvariants<mlir::placement::ReplacedOps>,mlir::SymbolOpInterface::Trait<mlir::placement::ReplacedOps>,mlir::CallableOpInterface::Trait<mlir::placement::ReplacedOps>,mlir::FunctionOpInterface::Trait<mlir::placement::ReplacedOps>,mlir::OpTrait::IsIsolatedFromAbove<mlir::placement::ReplacedOps>>(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5) && (v9 = a1, mlir::placement::ReplacedOps::verifyInvariantsImpl(&v9)) && mlir::detail::SymbolOpInterfaceTrait<mlir::memref::GlobalOp>::verifyTrait(a1, v6))
  {
    v7 = mlir::function_interface_impl::verifyTrait<mlir::placement::ReplacedOps>(a1);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t mlir::function_interface_impl::verifyTrait<mlir::placement::ReplacedOps>(mlir::Operation *a1)
{
  v180 = *MEMORY[0x1E69E9840];
  v166 = a1;
  v169[0] = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(v169);
  v169[0] = mlir::Operation::getAttrDictionary(a1);
  v3 = mlir::ArrayAttr::getValue(v169);
  v5 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 32), **(*(a1 + 6) + 96));
  if (v5)
  {
    v6 = *(*v5 + 136);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
    v8 = v6 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id ? v5 : 0;
    v165 = v8;
    if (v7)
    {
      v169[0] = mlir::Operation::getAttrDictionary(a1);
      v25 = mlir::ArrayAttr::getValue(v169);
      v169[0] = mlir::Operation::getAttrDictionary(v166);
      v26 = mlir::ArrayAttr::getValue(v169);
      v169[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v25, (v26 + 16 * v27 - 16), *(*(*(v166 + 6) + 96) + 8));
      v169[0] = mlir::AffineMapAttr::getValue(v169);
      mlir::FunctionType::getInputs(v169);
      v29 = v28;
      mlir::ArrayAttr::getValue(&v165);
      v30 = v29;
      if (v31 != v29)
      {
        v164 = 257;
        mlir::OpState::emitOpError(&v166, v163, v169);
        if (v169[0])
        {
          LODWORD(v167) = 3;
          *(&v167 + 1) = "expects argument attribute array to have the same number of elements as the number of function arguments, got ";
          v168 = 110;
          v59 = &v167;
          v60 = v170;
          if (v171 >= v172)
          {
            if (v170 <= &v167 && v170 + 24 * v171 > &v167)
            {
              v150 = &v167 - v170;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
              v60 = v170;
              v59 = v170 + v150;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
              v59 = &v167;
              v60 = v170;
            }
          }

          v61 = &v60[24 * v171];
          v62 = *v59;
          *(v61 + 2) = *(v59 + 2);
          *v61 = v62;
          ++v171;
        }

        mlir::ArrayAttr::getValue(&v165);
        if (v169[0])
        {
          LODWORD(v167) = 5;
          *(&v167 + 1) = v63;
          v64 = &v167;
          v65 = v170;
          if (v171 >= v172)
          {
            if (v170 <= &v167 && v170 + 24 * v171 > &v167)
            {
              v151 = &v167 - v170;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
              v65 = v170;
              v64 = v170 + v151;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
              v64 = &v167;
              v65 = v170;
            }
          }

          v66 = &v65[24 * v171];
          v67 = *v64;
          *(v66 + 2) = *(v64 + 2);
          *v66 = v67;
          ++v171;
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v169, ", but expected ");
        if (*v68)
        {
          v69 = *(v68 + 24);
          LODWORD(v167) = 5;
          *(&v167 + 1) = v30;
          v70 = *(v68 + 32);
          v71 = &v167;
          if (v70 >= *(v68 + 36))
          {
            if (v69 <= &v167 && v69 + 24 * v70 > &v167)
            {
              v152 = &v167 - v69;
              v153 = v68;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v68 + 24, v68 + 40, v70 + 1, 24);
              v68 = v153;
              v69 = *(v153 + 24);
              v71 = &v152[v69];
            }

            else
            {
              v148 = v68;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v68 + 24, v68 + 40, v70 + 1, 24);
              v68 = v148;
              v69 = *(v148 + 24);
              v71 = &v167;
            }
          }

          v72 = v69 + 24 * *(v68 + 32);
          v73 = *v71;
          *(v72 + 16) = *(v71 + 2);
          *v72 = v73;
          ++*(v68 + 32);
        }

        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v68);
        if (v169[0])
        {
          mlir::InFlightDiagnostic::report(v169);
        }

        if (v179 == 1)
        {
          if (v178 != &v179)
          {
            free(v178);
          }

          v74 = __p;
          if (__p)
          {
            v75 = v177;
            v76 = __p;
            if (v177 != __p)
            {
              do
              {
                v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
              }

              while (v75 != v74);
              v76 = __p;
            }

            v177 = v74;
            operator delete(v76);
          }

          v20 = v174;
          if (!v174)
          {
            goto LABEL_196;
          }

          v77 = v175;
          v22 = v174;
          if (v175 == v174)
          {
            goto LABEL_195;
          }

          do
          {
            v79 = *--v77;
            v78 = v79;
            *v77 = 0;
            if (v79)
            {
              operator delete[](v78);
            }
          }

          while (v77 != v20);
          goto LABEL_194;
        }

        return v16;
      }

      if (v29)
      {
        v32 = 0;
        while (1)
        {
          v33 = *(mlir::ArrayAttr::getValue(&v165) + 8 * v32);
          if (!v33)
          {
            v162 = 0;
LABEL_149:
            v164 = 257;
            mlir::OpState::emitOpError(&v166, v163, v169);
            if (v169[0])
            {
              LODWORD(v167) = 3;
              v168 = 71;
              v113 = &v167;
              v114 = v170;
              if (v171 >= v172)
              {
                if (v170 <= &v167 && v170 + 24 * v171 > &v167)
                {
                  v158 = &v167 - v170;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
                  v114 = v170;
                  v113 = v170 + v158;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
                  v113 = &v167;
                  v114 = v170;
                }
              }

              v115 = &v114[24 * v171];
              v116 = *v113;
              *(v115 + 2) = *(v113 + 2);
              *v115 = v116;
              ++v171;
            }

            v117 = mlir::ArrayAttr::getValue(&v165);
            if (v169[0])
            {
              v118 = *(v117 + 8 * v32);
              v119 = &v167;
              mlir::DiagnosticArgument::DiagnosticArgument(&v167, v118);
              v120 = v170;
              if (v171 >= v172)
              {
                if (v170 <= &v167 && v170 + 24 * v171 > &v167)
                {
                  v159 = &v167 - v170;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
                  v120 = v170;
                  v119 = v170 + v159;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
                  v119 = &v167;
                  v120 = v170;
                }
              }

              v121 = &v120[24 * v171];
              v122 = *v119;
              *(v121 + 2) = *(v119 + 2);
              *v121 = v122;
              ++v171;
            }

            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v123);
            if (v169[0])
            {
              mlir::InFlightDiagnostic::report(v169);
            }

            if (v179 != 1)
            {
              return v16;
            }

            if (v178 != &v179)
            {
              free(v178);
            }

            v124 = __p;
            if (__p)
            {
              v125 = v177;
              v126 = __p;
              if (v177 != __p)
              {
                do
                {
                  v125 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v125 - 1);
                }

                while (v125 != v124);
                v126 = __p;
              }

              v177 = v124;
              operator delete(v126);
            }

            v20 = v174;
            if (!v174)
            {
              goto LABEL_196;
            }

            v127 = v175;
            v22 = v174;
            if (v175 == v174)
            {
              goto LABEL_195;
            }

            do
            {
              v129 = *--v127;
              v128 = v129;
              *v127 = 0;
              if (v129)
              {
                operator delete[](v128);
              }
            }

            while (v127 != v20);
            goto LABEL_194;
          }

          if (*(*v33 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
          {
            v33 = 0;
          }

          v162 = v33;
          if (!v33)
          {
            goto LABEL_149;
          }

          v34 = mlir::AffineMapAttr::getValue(&v162);
          v35 = mlir::DictionaryAttr::end(&v162);
          if (v34 != v35)
          {
            break;
          }

LABEL_45:
          if (++v32 == v29)
          {
            goto LABEL_6;
          }
        }

        v36 = v35;
        while (1)
        {
          v167 = *v34;
          v169[0] = mlir::CallGraphNode::getCallableRegion(&v167);
          AttrData = mlir::OpaqueAttr::getAttrData(v169);
          if (!v38)
          {
            break;
          }

          v39 = AttrData;
          v40 = memchr(AttrData, 46, v38);
          if (!v40 || v40 - v39 == -1)
          {
            break;
          }

          NameDialect = mlir::NamedAttribute::getNameDialect(&v167);
          if (NameDialect && ((*(*NameDialect + 80))(NameDialect, v166, 0, v32, v167, *(&v167 + 1)) & 1) == 0)
          {
            return 0;
          }

          if (++v34 == v36)
          {
            goto LABEL_45;
          }
        }

        v163[0] = "arguments may only have dialect attributes";
        v164 = 259;
        mlir::OpState::emitOpError(&v166, v163, v169);
        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v169);
        if (v169[0])
        {
          mlir::InFlightDiagnostic::report(v169);
        }

        if (v179 != 1)
        {
          return v16;
        }

        if (v178 != &v179)
        {
          free(v178);
        }

        v101 = __p;
        if (__p)
        {
          v102 = v177;
          v103 = __p;
          if (v177 != __p)
          {
            do
            {
              v102 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v102 - 1);
            }

            while (v102 != v101);
            v103 = __p;
          }

          v177 = v101;
          operator delete(v103);
        }

        v20 = v174;
        if (!v174)
        {
          goto LABEL_196;
        }

        v104 = v175;
        v22 = v174;
        if (v175 == v174)
        {
          goto LABEL_195;
        }

        do
        {
          v106 = *--v104;
          v105 = v106;
          *v104 = 0;
          if (v106)
          {
            operator delete[](v105);
          }
        }

        while (v104 != v20);
        goto LABEL_194;
      }
    }
  }

LABEL_6:
  v169[0] = mlir::Operation::getAttrDictionary(v166);
  v9 = mlir::ArrayAttr::getValue(v169);
  v169[0] = mlir::Operation::getAttrDictionary(v166);
  v10 = mlir::ArrayAttr::getValue(v169);
  v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v9 + 32), (v10 + 16 * v11), *(*(*(v166 + 6) + 96) + 24));
  if (v12)
  {
    v13 = *(*v12 + 136);
    v14 = v13 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
    v15 = v13 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id ? v12 : 0;
    v165 = v15;
    if (v14)
    {
      v169[0] = mlir::Operation::getAttrDictionary(v166);
      v42 = mlir::ArrayAttr::getValue(v169);
      v169[0] = mlir::Operation::getAttrDictionary(v166);
      v43 = mlir::ArrayAttr::getValue(v169);
      v169[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v42, (v43 + 16 * v44 - 16), *(*(*(v166 + 6) + 96) + 8));
      v169[0] = mlir::AffineMapAttr::getValue(v169);
      mlir::FunctionType::getResults(v169);
      v46 = v45;
      mlir::ArrayAttr::getValue(&v165);
      v47 = v46;
      if (v48 != v46)
      {
        v164 = 257;
        mlir::OpState::emitOpError(&v166, v163, v169);
        if (v169[0])
        {
          LODWORD(v167) = 3;
          *(&v167 + 1) = "expects result attribute array to have the same number of elements as the number of function results, got ";
          v168 = 106;
          v80 = &v167;
          v81 = v170;
          if (v171 >= v172)
          {
            if (v170 <= &v167 && v170 + 24 * v171 > &v167)
            {
              v154 = &v167 - v170;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
              v81 = v170;
              v80 = v170 + v154;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
              v80 = &v167;
              v81 = v170;
            }
          }

          v82 = &v81[24 * v171];
          v83 = *v80;
          *(v82 + 2) = *(v80 + 2);
          *v82 = v83;
          ++v171;
        }

        mlir::ArrayAttr::getValue(&v165);
        if (v169[0])
        {
          LODWORD(v167) = 5;
          *(&v167 + 1) = v84;
          v85 = &v167;
          v86 = v170;
          if (v171 >= v172)
          {
            if (v170 <= &v167 && v170 + 24 * v171 > &v167)
            {
              v155 = &v167 - v170;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
              v86 = v170;
              v85 = v170 + v155;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
              v85 = &v167;
              v86 = v170;
            }
          }

          v87 = &v86[24 * v171];
          v88 = *v85;
          *(v87 + 2) = *(v85 + 2);
          *v87 = v88;
          ++v171;
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v169, ", but expected ");
        if (*v89)
        {
          v90 = *(v89 + 24);
          LODWORD(v167) = 5;
          *(&v167 + 1) = v47;
          v91 = *(v89 + 32);
          v92 = &v167;
          if (v91 >= *(v89 + 36))
          {
            if (v90 <= &v167 && v90 + 24 * v91 > &v167)
            {
              v156 = &v167 - v90;
              v157 = v89;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v89 + 24, v89 + 40, v91 + 1, 24);
              v89 = v157;
              v90 = *(v157 + 24);
              v92 = &v156[v90];
            }

            else
            {
              v149 = v89;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v89 + 24, v89 + 40, v91 + 1, 24);
              v89 = v149;
              v90 = *(v149 + 24);
              v92 = &v167;
            }
          }

          v93 = v90 + 24 * *(v89 + 32);
          v94 = *v92;
          *(v93 + 16) = *(v92 + 2);
          *v93 = v94;
          ++*(v89 + 32);
        }

        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v89);
        if (v169[0])
        {
          mlir::InFlightDiagnostic::report(v169);
        }

        if (v179 == 1)
        {
          if (v178 != &v179)
          {
            free(v178);
          }

          v95 = __p;
          if (__p)
          {
            v96 = v177;
            v97 = __p;
            if (v177 != __p)
            {
              do
              {
                v96 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v96 - 1);
              }

              while (v96 != v95);
              v97 = __p;
            }

            v177 = v95;
            operator delete(v97);
          }

          v20 = v174;
          if (!v174)
          {
            goto LABEL_196;
          }

          v98 = v175;
          v22 = v174;
          if (v175 == v174)
          {
            goto LABEL_195;
          }

          do
          {
            v100 = *--v98;
            v99 = v100;
            *v98 = 0;
            if (v100)
            {
              operator delete[](v99);
            }
          }

          while (v98 != v20);
          goto LABEL_194;
        }

        return v16;
      }

      if (v46)
      {
        v49 = 0;
        while (1)
        {
          v50 = *(mlir::ArrayAttr::getValue(&v165) + 8 * v49);
          if (!v50)
          {
            v162 = 0;
LABEL_172:
            v164 = 257;
            mlir::OpState::emitOpError(&v166, v163, v169);
            if (v169[0])
            {
              LODWORD(v167) = 3;
              v168 = 69;
              v130 = &v167;
              v131 = v170;
              if (v171 >= v172)
              {
                if (v170 <= &v167 && v170 + 24 * v171 > &v167)
                {
                  v160 = &v167 - v170;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
                  v131 = v170;
                  v130 = v170 + v160;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
                  v130 = &v167;
                  v131 = v170;
                }
              }

              v132 = &v131[24 * v171];
              v133 = *v130;
              *(v132 + 2) = *(v130 + 2);
              *v132 = v133;
              ++v171;
            }

            v134 = mlir::ArrayAttr::getValue(&v165);
            if (v169[0])
            {
              v135 = *(v134 + 8 * v49);
              v136 = &v167;
              mlir::DiagnosticArgument::DiagnosticArgument(&v167, v135);
              v137 = v170;
              if (v171 >= v172)
              {
                if (v170 <= &v167 && v170 + 24 * v171 > &v167)
                {
                  v161 = &v167 - v170;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
                  v137 = v170;
                  v136 = v170 + v161;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v173, v171 + 1, 24);
                  v136 = &v167;
                  v137 = v170;
                }
              }

              v138 = &v137[24 * v171];
              v139 = *v136;
              *(v138 + 2) = *(v136 + 2);
              *v138 = v139;
              ++v171;
            }

            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v140);
            if (v169[0])
            {
              mlir::InFlightDiagnostic::report(v169);
            }

            if (v179 != 1)
            {
              return v16;
            }

            if (v178 != &v179)
            {
              free(v178);
            }

            v141 = __p;
            if (__p)
            {
              v142 = v177;
              v143 = __p;
              if (v177 != __p)
              {
                do
                {
                  v142 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v142 - 1);
                }

                while (v142 != v141);
                v143 = __p;
              }

              v177 = v141;
              operator delete(v143);
            }

            v20 = v174;
            if (!v174)
            {
              goto LABEL_196;
            }

            v144 = v175;
            v22 = v174;
            if (v175 == v174)
            {
              goto LABEL_195;
            }

            do
            {
              v146 = *--v144;
              v145 = v146;
              *v144 = 0;
              if (v146)
              {
                operator delete[](v145);
              }
            }

            while (v144 != v20);
            goto LABEL_194;
          }

          if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
          {
            v50 = 0;
          }

          v162 = v50;
          if (!v50)
          {
            goto LABEL_172;
          }

          v51 = mlir::AffineMapAttr::getValue(&v162);
          v52 = mlir::DictionaryAttr::end(&v162);
          if (v51 != v52)
          {
            break;
          }

LABEL_63:
          if (++v49 == v46)
          {
            goto LABEL_11;
          }
        }

        v53 = v52;
        while (1)
        {
          v167 = *v51;
          v169[0] = mlir::CallGraphNode::getCallableRegion(&v167);
          v54 = mlir::OpaqueAttr::getAttrData(v169);
          if (!v55)
          {
            break;
          }

          v56 = v54;
          v57 = memchr(v54, 46, v55);
          if (!v57 || v57 - v56 == -1)
          {
            break;
          }

          v58 = mlir::NamedAttribute::getNameDialect(&v167);
          if (v58 && ((*(*v58 + 88))(v58, v166, 0, v49, v167, *(&v167 + 1)) & 1) == 0)
          {
            return 0;
          }

          if (++v51 == v53)
          {
            goto LABEL_63;
          }
        }

        v163[0] = "results may only have dialect attributes";
        v164 = 259;
        mlir::OpState::emitOpError(&v166, v163, v169);
        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v169);
        if (v169[0])
        {
          mlir::InFlightDiagnostic::report(v169);
        }

        if (v179 != 1)
        {
          return v16;
        }

        if (v178 != &v179)
        {
          free(v178);
        }

        v107 = __p;
        if (__p)
        {
          v108 = v177;
          v109 = __p;
          if (v177 != __p)
          {
            do
            {
              v108 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v108 - 1);
            }

            while (v108 != v107);
            v109 = __p;
          }

          v177 = v107;
          operator delete(v109);
        }

        v20 = v174;
        if (!v174)
        {
          goto LABEL_196;
        }

        v110 = v175;
        v22 = v174;
        if (v175 == v174)
        {
          goto LABEL_195;
        }

        do
        {
          v112 = *--v110;
          v111 = v112;
          *v110 = 0;
          if (v112)
          {
            operator delete[](v111);
          }
        }

        while (v110 != v20);
        goto LABEL_194;
      }
    }
  }

LABEL_11:
  if ((*(v166 + 11) & 0x7FFFFF) == 1)
  {
    return mlir::detail::FunctionOpInterfaceTrait<mlir::placement::ReplacedOps>::verifyBody(&v166);
  }

  v163[0] = "expects one region";
  v164 = 259;
  mlir::OpState::emitOpError(&v166, v163, v169);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v169);
  if (v169[0])
  {
    mlir::InFlightDiagnostic::report(v169);
  }

  if (v179 == 1)
  {
    if (v178 != &v179)
    {
      free(v178);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v177;
      v19 = __p;
      if (v177 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v177 = v17;
      operator delete(v19);
    }

    v20 = v174;
    if (!v174)
    {
      goto LABEL_196;
    }

    v21 = v175;
    v22 = v174;
    if (v175 == v174)
    {
LABEL_195:
      v175 = v20;
      operator delete(v22);
LABEL_196:
      if (v170 != v173)
      {
        free(v170);
      }

      return v16;
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
LABEL_194:
    v22 = v174;
    goto LABEL_195;
  }

  return v16;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>(uint64_t a1)
{
  {
    v27 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v27;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v22 = v1;
    v28 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v1 = v22;
    a1 = v28;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v23 = v1;
    v29 = a1;
    v18 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v18;
    v1 = v23;
    a1 = v29;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v24 = v1;
    v30 = a1;
    v15 = v3;
    v19 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v3 = v15;
    v2 = v19;
    v1 = v24;
    a1 = v30;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v25 = v1;
    v31 = a1;
    v16 = v3;
    v20 = v2;
    v13 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v13;
    v3 = v16;
    v2 = v20;
    v1 = v25;
    a1 = v31;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v26 = v1;
    v32 = a1;
    v17 = v3;
    v21 = v2;
    v12 = v5;
    v14 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v5 = v12;
    v4 = v14;
    v3 = v17;
    v2 = v21;
    v1 = v26;
    a1 = v32;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>(uint64_t a1)
{
  {
    v27 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v27;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v22 = v1;
    v28 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v22;
    a1 = v28;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v23 = v1;
    v29 = a1;
    v18 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>();
    v2 = v18;
    v1 = v23;
    a1 = v29;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v24 = v1;
    v30 = a1;
    v15 = v3;
    v19 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v15;
    v2 = v19;
    v1 = v24;
    a1 = v30;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v25 = v1;
    v31 = a1;
    v16 = v3;
    v20 = v2;
    v13 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v13;
    v3 = v16;
    v2 = v20;
    v1 = v25;
    a1 = v31;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v26 = v1;
    v32 = a1;
    v17 = v3;
    v21 = v2;
    v12 = v5;
    v14 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v12;
    v4 = v14;
    v3 = v17;
    v2 = v21;
    v1 = v26;
    a1 = v32;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl<Empty>]";
  v6 = 126;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

BOOL mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    v8 = a1;
    return mlir::placement::StartTimer::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

uint64_t mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v6 = mlir::placement::__mlir_ods_local_type_constraint_PlacementOps7(a1, *(*(*(a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "placement.tensor_to_memref", 26, a2, &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F5B05DC8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>::getEffects;
  {
    v5 = v2;
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::placement::TensorToMemref>::refineReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::placement::TensorToMemref::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(&v17, v19, v20);
    mlir::ValueRange::ValueRange(v16, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v17 = "placement.tensor_to_memref";
      v18 = 26;
      v14.var0.var0 = a3;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v14, "'", &v17, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v41;
    v2 = v49;
    v1 = v58;
    a1 = v68;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v59 = v1;
    v69 = a1;
    v42 = v3;
    v50 = v2;
    v35 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    v1 = v60;
    a1 = v70;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v61 = v1;
    v71 = a1;
    v44 = v3;
    v52 = v2;
    v31 = v5;
    v37 = v4;
    v26 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::HostTypeConversion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HostTypeConversion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v64 = v1;
    v74 = a1;
    v47 = v3;
    v55 = v2;
    v34 = v5;
    v40 = v4;
    v25 = v7;
    v29 = v6;
    v20 = v9;
    v22 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v20;
    v8 = v22;
    v7 = v25;
    v6 = v29;
    v5 = v34;
    v4 = v40;
    v3 = v47;
    v2 = v55;
    v1 = v64;
    a1 = v74;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v8 = a1, (mlir::placement::TensorToMemref::verifyInvariantsImpl(&v8) & 1) != 0))
  {
    v8 = a1;
    mlir::placement::TensorToMemref::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t *mlir::Dialect::addAttribute<mlir::placement::RegionTypeAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::placement::RegionTypeAttr,mlir::Attribute,mlir::placement::detail::RegionTypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement14RegionTypeAttrES2_NSD_6detail21RegionTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement14RegionTypeAttrES2_NSC_6detail21RegionTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id;
  v24 = "placement.region_type";
  v25 = 21;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, 0, v9);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement14RegionTypeAttrES2_NSC_6detail21RegionTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail21RegionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14RegionTypeAttrEJNS2_10RegionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t *mlir::Dialect::addType<mlir::placement::TimerHandleType>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::placement::TimerHandleType,mlir::Type,mlir::placement::detail::TimerHandleTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement15TimerHandleTypeES2_NSD_6detail22TimerHandleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement15TimerHandleTypeES2_NSC_6detail22TimerHandleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id;
  v24 = "placement.timer";
  v25 = 15;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id, 0, v9);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement15TimerHandleTypeES2_NSC_6detail22TimerHandleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v7);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id;
  v8[1] = &Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail22TimerHandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_15TimerHandleTypeEJyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS5_;
  v13[1] = v8;
  v12 = v2;
  v4 = HIDWORD(v2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * v2 + 8) ^ v4);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 1), Slow);
  }

  return Slow;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 2;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 0;
  Slow[1] = v2;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9placement6detail22TimerHandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_15TimerHandleTypeEJyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::AsmParser::parseInteger<unsigned long long>(uint64_t a1, uint64_t *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v17[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned long long,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned long long>(unsigned long long &)::{lambda(llvm::APInt &)#1}>(a1, a2, v17);
  if ((v5 & 0x100) == 0)
  {
    v15 = "expected integer value";
    v16 = 259;
    (*(*a1 + 24))(v17, a1, v4, &v15);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v23;
        v8 = __p;
        if (v23 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v23 = v6;
        operator delete(v8);
      }

      v9 = v20;
      if (v20)
      {
        v10 = v21;
        v11 = v20;
        if (v21 != v20)
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
          v11 = v20;
        }

        v21 = v9;
        operator delete(v11);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v5;
}

uint64_t mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned long long,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned long long>(unsigned long long &)::{lambda(llvm::APInt &)#1}>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v28 = 1;
  v27 = 0;
  v7 = (*(**a3 + 376))();
  if (v7 & (v7 >> 8))
  {
    llvm::APInt::sextOrTrunc(&v27, 0x40u, &__p);
    v8 = v30;
    if (v30 < 0x41)
    {
      v9 = __p;
      *a2 = __p;
      goto LABEL_10;
    }

    v11 = v8 - llvm::APInt::countLeadingZerosSlowCase(&__p);
    v12 = __p;
    if (v11 <= 0x40)
    {
      *a2 = *__p;
    }

    else
    {
      v9 = -1;
      *a2 = -1;
      if (!v12)
      {
LABEL_10:
        v30 = v28;
        if (v28 > 0x40)
        {
          llvm::APInt::initSlowCase(&__p, v9, 0);
          if (v30 > 0x40)
          {
            v14 = llvm::APInt::equalSlowCase(&__p, &v27);
            if (__p)
            {
              operator delete[](__p);
            }

            if (v14)
            {
              goto LABEL_17;
            }

            goto LABEL_21;
          }
        }

        else
        {
          if (v28)
          {
            v13 = 0xFFFFFFFFFFFFFFFFLL >> -v28;
          }

          else
          {
            v13 = 0;
          }

          __p = (v13 & v9);
        }

        if (__p == v27)
        {
LABEL_17:
          LOBYTE(v7) = 1;
LABEL_42:
          v10 = 1;
          goto LABEL_43;
        }

LABEL_21:
        v25 = "integer value too large";
        v26 = 259;
        (*(*a1 + 24))(&__p, a1, v6, &v25);
        if (__p)
        {
          mlir::InFlightDiagnostic::report(&__p);
        }

        if (v38 == 1)
        {
          if (v37 != &v38)
          {
            free(v37);
          }

          v15 = v35;
          if (v35)
          {
            v16 = v36;
            v17 = v35;
            if (v36 != v35)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = v35;
            }

            v36 = v15;
            operator delete(v17);
          }

          v18 = v33;
          if (v33)
          {
            v19 = v34;
            v20 = v33;
            if (v34 != v33)
            {
              do
              {
                v22 = *--v19;
                v21 = v22;
                *v19 = 0;
                if (v22)
                {
                  operator delete[](v21);
                }
              }

              while (v19 != v18);
              v20 = v33;
            }

            v34 = v18;
            operator delete(v20);
          }

          if (v31 != &v32)
          {
            free(v31);
          }
        }

        LOBYTE(v7) = 0;
        goto LABEL_42;
      }
    }

    operator delete[](v12);
    v9 = *a2;
    goto LABEL_10;
  }

  v10 = BYTE1(v7);
LABEL_43:
  if (v28 >= 0x41 && v27)
  {
    v23 = v7;
    operator delete[](v27);
    LOBYTE(v7) = v23;
  }

  return v7 | (v10 << 8);
}

__n128 mlir::Diagnostic::append<char const(&)[7]>(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = a1;
  v6 = a1 + 16;
  v7 = *(a1 + 16);
  v14 = 3;
  v15 = __s;
  v16 = v4;
  v8 = *(a1 + 24);
  v9 = &v14;
  if (v8 >= *(a1 + 28))
  {
    if (v7 <= &v14 && v7 + 24 * v8 > &v14)
    {
      v12 = &v14 - v7;
      v13 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, v5 + 32, v8 + 1, 24);
      v5 = v13;
      v7 = *(v13 + 16);
      v9 = &v12[v7];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v8 + 1, 24);
      v5 = a1;
      v7 = *(a1 + 16);
      v9 = &v14;
    }
  }

  v10 = (v7 + 24 * *(v5 + 24));
  result = *v9;
  v10[1].n128_u64[0] = v9[1].n128_u64[0];
  *v10 = result;
  ++*(v5 + 24);
  return result;
}

uint64_t mlir::placement::anonymous namespace::inferMemrefTensorOpReturnTypes<mlir::placement::MemrefToTensorAdaptor>(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::{lambda(mlir::Type)#1}::operator()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = mlir::UnrankedTensorType::get(a2);
  v4 = *(v2 + 8);
  if (v4 >= *(v2 + 12))
  {
    v6 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v2, v2 + 16, v4 + 1, 8);
    v3 = v6;
    LODWORD(v4) = *(v2 + 8);
  }

  *(*v2 + 8 * v4) = v3;
  ++*(v2 + 8);
  return 1;
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::placement::ReplacedOps::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

mlir::FrozenRewritePatternSet *mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(mlir::FrozenRewritePatternSet *this)
{
  v2 = operator new(0x68uLL);
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = &unk_1F5B05E90;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(this + 1) = v2;
  *(v2 + 24) = 0u;
  *this = v2 + 24;
  return this;
}

void mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v113[14] = *MEMORY[0x1E69E9840];
  v12 = operator new(0x68uLL);
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = &unk_1F5B05E90;
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(a1 + 8) = v12;
  *(v12 + 24) = 0u;
  *a1 = v12 + 24;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  if (a4)
  {
    v13 = 24 * a4;
    do
    {
      v14 = *(a3 + 23);
      v15 = *a3;
      if (v14 >= 0)
      {
        v15 = a3;
      }

      if (v14 < 0)
      {
        v14 = a3[1];
      }

      __p[0] = v15;
      __p[1] = v14;
      llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v109, __p, v112);
      a3 += 3;
      v13 -= 24;
    }

    while (v13);
  }

  if (a6)
  {
    v16 = 24 * a6;
    do
    {
      v17 = *(a5 + 23);
      v18 = *a5;
      if (v17 >= 0)
      {
        v18 = a5;
      }

      if (v17 < 0)
      {
        v17 = a5[1];
      }

      __p[0] = v18;
      __p[1] = v17;
      llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v106, __p, v112);
      a5 += 3;
      v16 -= 24;
    }

    while (v16);
  }

  memset(__p, 0, sizeof(__p));
  v104[0] = __p;
  v104[1] = a1;
  v19 = *(a2 + 8);
  v20 = *(a2 + 16);
  if (v19 == v20)
  {
LABEL_56:
    v44 = *(a2 + 32);
    v103 = v44;
    if (v44)
    {
      v101[0] = *(a2 + 104);
      v45 = *(a2 + 112);
      *(a2 + 104) = 0;
      *(a2 + 112) = 0;
      v102 = *(a2 + 120);
      *(a2 + 120) = 0;
      v46 = v44 + 64;
      v48 = *(v44 + 40);
      v47 = *(v44 + 44);
      v101[1] = v45;
      v50.n128_f64[0] = mlir::Region::getOps<mlir::pdl::PatternOp>((((v44 + 64 + 16 * ((v47 >> 23) & 1) + ((v47 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v48), v112);
      if (v113[0] != v113[8])
      {
        v51 = *(((v46 + 16 * ((*(v44 + 44) >> 23) & 1) + ((*(v44 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v44 + 40) + 8);
        if (v51)
        {
          v52 = v51 - 8;
        }

        else
        {
          v52 = 0;
        }

        v53 = *(v52 + 40);
        v54 = v52 + 32;
        if (v53 != v52 + 32)
        {
          do
          {
            v55 = *(v53 + 8);
            v56 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v53, v49);
            mlir::detail::walk<mlir::ForwardIterator>(v56, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<convertPDLToPDLInterp(mlir::ModuleOp,llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>> &)::$_0>, &v100, 1);
            v53 = v55;
          }

          while (v55 != v54);
        }

        mlir::PassManager::PassManager(v112, *(v44 + 48), 1, v50);
        mlir::PassManager::enableVerifier(v112, 0);
        mlir::createPDLToPDLInterpPass(v101, &v94);
        v57 = v94;
        v94 = 0;
        v97 = v57;
        mlir::OpPassManager::addPass(v112, &v97);
        v58 = v97;
        v97 = 0;
        if (v58)
        {
          (*(*v58 + 8))(v58);
        }

        v59 = v94;
        v94 = 0;
        if (v59)
        {
          (*(*v59 + 8))(v59);
        }

        v60.var0.var0 = v44;
        if (!mlir::PassManager::run(v112, v60))
        {
          mlir::PassManager::~PassManager(v112);
          llvm::report_fatal_error("failed to lower PDL pattern module to the PDL Interpreter", 1);
        }

        v62 = *(((v46 + 16 * ((*(v44 + 44) >> 23) & 1) + ((*(v44 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v44 + 40) + 8);
        if (v62)
        {
          v63 = v62 - 8;
        }

        else
        {
          v63 = 0;
        }

        v64 = *(v63 + 40);
        v65 = v63 + 32;
        if (v64 != v63 + 32)
        {
          do
          {
            v66 = *(v64 + 8);
            v67 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v64, v61);
            mlir::detail::walk<mlir::ForwardIterator>(v67, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<convertPDLToPDLInterp(mlir::ModuleOp,llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>> &)::$_0>, &v100, 1);
            v64 = v66;
          }

          while (v66 != v65);
        }

        mlir::PassManager::~PassManager(v112);
      }

      v112[0] = v113;
      v112[1] = 0x600000000;
      if (*(a2 + 48))
      {
        llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::operator=(v112, a2 + 40);
      }

      llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::StringMap(&v97, (a2 + 128));
      llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::StringMap(&v94, (a2 + 152));
      std::make_unique[abi:nn200100]<mlir::detail::PDLByteCode,mlir::ModuleOp &,llvm::SmallVector<std::unique_ptr<mlir::PDLPatternConfigSet>,6u>,llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet*,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet*>> &,llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>,llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>,0>(&v103, v112, v101, &v97, &v94, &v100);
      v68 = *a1;
      v69 = v100;
      v100 = 0;
      v70 = *(v68 + 9);
      *(v68 + 9) = v69;
      if (v70)
      {
        mlir::detail::PDLByteCode::~PDLByteCode(v70);
        operator delete(v71);
        v72 = v100;
        v100 = 0;
        if (v72)
        {
          mlir::detail::PDLByteCode::~PDLByteCode(v72);
          operator delete(v73);
        }
      }

      if (v96 && v95)
      {
        v74 = 0;
        do
        {
          v75 = *(v94 + v74);
          if (v75 != -8 && v75 != 0)
          {
            v77 = *v75;
            v78 = *(v75 + 4);
            if (v78 == (v75 + 8))
            {
              (*(*v78 + 32))(v78);
            }

            else if (v78)
            {
              (*(*v78 + 40))(v78);
            }

            llvm::deallocate_buffer(v75, (v77 + 41));
          }

          v74 += 8;
        }

        while (8 * v95 != v74);
      }

      free(v94);
      if (v99 && v98)
      {
        v79 = 0;
        do
        {
          v80 = *(v97 + v79);
          if (v80 != -8 && v80 != 0)
          {
            v82 = *v80;
            v83 = *(v80 + 4);
            if (v83 == (v80 + 8))
            {
              (*(*v83 + 32))(v83);
            }

            else if (v83)
            {
              (*(*v83 + 40))(v83);
            }

            llvm::deallocate_buffer(v80, (v82 + 41));
          }

          v79 += 8;
        }

        while (8 * v98 != v79);
      }

      free(v97);
      v84 = v112[0];
      if (LODWORD(v112[1]))
      {
        v85 = v112[0] + 8 * LODWORD(v112[1]);
        do
        {
          v87 = *--v85;
          v86 = v87;
          *v85 = 0;
          if (v87)
          {
            v88 = *v86;
            v89 = v86[2];
            if (v89)
            {
              v90 = 8 * v89;
              v91 = (v88 - 2);
              do
              {
                v92 = *&v91[v90];
                *&v91[v90] = 0;
                if (v92)
                {
                  (*(*v92 + 8))(v92);
                }

                v90 -= 8;
              }

              while (v90);
              v88 = *v86;
            }

            if (v88 != v86 + 4)
            {
              free(v88);
            }

            operator delete(v86);
          }
        }

        while (v85 != v84);
        v84 = v112[0];
      }

      if (v84 != v113)
      {
        free(v84);
      }

      llvm::deallocate_buffer(v101[0], (16 * v102));
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    llvm::deallocate_buffer(v106, (16 * v108));
  }

  v93 = a1;
  while (1)
  {
    if (v107)
    {
      *v112 = *(*v19 + 64);
      if (!llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(&v106, v112))
      {
        v38 = *(*v19 + 88);
        if (!v38)
        {
          goto LABEL_20;
        }

        v39 = *(*v19 + 80);
        v40 = 16 * v38;
        while (1)
        {
          *v112 = *v39;
          if (llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(&v106, v112))
          {
            break;
          }

          ++v39;
          v40 -= 16;
          if (!v40)
          {
            goto LABEL_20;
          }
        }
      }
    }

    v23 = *v19;
    if (v110)
    {
      *v112 = *(v23 + 64);
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(&v109, v112))
      {
        goto LABEL_20;
      }

      v23 = *v19;
      v24 = *(*v19 + 88);
      if (v24)
      {
        v25 = *(v23 + 80);
        v26 = 16 * v24;
        do
        {
          *v112 = *v25;
          if (llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(&v109, v112))
          {
            goto LABEL_20;
          }

          ++v25;
          v26 -= 16;
        }

        while (v26);
        v23 = *v19;
      }
    }

    if (*(v23 + 16) == 1)
    {
      v112[0] = *(v23 + 8);
      LOBYTE(v112[1]) = 1;
      v27 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>,mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::operator[](*a1, v112);
      v28 = v27;
      v29 = *v19;
      v31 = v27[1];
      v30 = v27[2];
      if (v31 < v30)
      {
        *v31 = v29;
        v21 = v31 + 1;
      }

      else
      {
        v32 = *v27;
        v33 = v31 - *v27;
        v34 = (v33 >> 3) + 1;
        if (v34 >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v35 = v30 - v32;
        if (v35 >> 2 > v34)
        {
          v34 = v35 >> 2;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF8)
        {
          v36 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v34;
        }

        if (v36)
        {
          if (v36 >> 61)
          {
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v37 = operator new(8 * v36);
        }

        else
        {
          v37 = 0;
        }

        v43 = &v37[8 * (v33 >> 3)];
        *v43 = v29;
        v21 = v43 + 8;
        memcpy(v37, v32, v33);
        *v28 = v37;
        v28[1] = v21;
        v28[2] = &v37[8 * v36];
        if (v32)
        {
          operator delete(v32);
        }

        a1 = v93;
      }

      v28[1] = v21;
      v22 = *a1 + 24;
    }

    else
    {
      if (*(*v19 + 16) == 2)
      {
        v112[0] = *(*v19 + 8);
        LOBYTE(v112[1]) = 1;
        v101[0] = v112;
        v41 = v19;
        v42 = llvm::function_ref<BOOL ()(mlir::RegisteredOperationName)>::callback_fn<mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(mlir::RewritePatternSet &&,llvm::ArrayRef<std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>>,std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>)::$_3>;
LABEL_50:
        mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(mlir::RewritePatternSet &&,llvm::ArrayRef<std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>>,std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>)::$_0::operator()(v104, v41, v42, v101);
        goto LABEL_20;
      }

      if (*(*v19 + 16) == 3)
      {
        v112[0] = *(*v19 + 8);
        LOBYTE(v112[1]) = 1;
        v101[0] = v112;
        v41 = v19;
        v42 = llvm::function_ref<BOOL ()(mlir::RegisteredOperationName)>::callback_fn<mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(mlir::RewritePatternSet &&,llvm::ArrayRef<std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>>,std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>)::$_4>;
        goto LABEL_50;
      }

      v22 = *a1 + 48;
    }

    std::vector<std::unique_ptr<mlir::RewritePattern>>::push_back[abi:nn200100](v22, v19);
LABEL_20:
    if (++v19 == v20)
    {
      goto LABEL_56;
    }
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>,mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + 32 * v3);
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 1;
    }

    v8 = 0;
    v9 = 1;
    while (v5 != -4096)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 == -8192;
      }

      if (v10)
      {
        v8 = v4;
      }

      v11 = v3 + v9++;
      v3 = v11 & (v2 - 1);
      v4 = (*a1 + 32 * v3);
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 1;
      }
    }

    if (v8)
    {
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v12 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v12 = a2;
LABEL_24:
    v13 = a1;
    llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(v13, v12, &v14);
    a1 = v13;
    a2 = v12;
    v4 = v14;
    ++*(v13 + 8);
    if (*v4 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v7 + 1;
  if (*v4 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v4 = *a2;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0;
  return v4 + 1;
}

void std::vector<std::unique_ptr<mlir::RewritePattern>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v7;
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
      if (v11 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v12 = a2;
      v13 = operator new(8 * v11);
      a2 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[8 * (v8 >> 3)];
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v6 = v14 + 8;
    memcpy(v13, v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = &v13[8 * v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(a1 + 8) = v6;
}

void mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(mlir::RewritePatternSet &&,llvm::ArrayRef<std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>>,std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>)::$_0::operator()(void ***a1, uint64_t *a2, unsigned int (*a3)(void), uint64_t a4)
{
  v6 = a2;
  v7 = a1[1];
  v9 = **a1;
  v8 = (*a1)[1];
  if (v9 == v8)
  {
    RegisteredOperations = mlir::MLIRContext::getRegisteredOperations((*(*a2 + 24) & 0xFFFFFFFFFFFFFFF8));
    if (v12)
    {
      if (v12 < 0)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v13 = RegisteredOperations;
      v14 = a3;
      v15 = a4;
      v16 = 8 * v12;
      v17 = operator new(8 * v12);
      v18 = &v17[v16];
      memcpy(v17, v13, v16);
      v6 = a2;
      v19 = *a1;
      v20 = **a1;
      v21 = *a1;
      if (v20)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v14 = a3;
      v15 = a4;
      v18 = 0;
      v17 = 0;
      v19 = *a1;
      v20 = **a1;
      v21 = *a1;
      if (v20)
      {
LABEL_5:
        v19[1] = v20;
        operator delete(v20);
        *v19 = 0;
        v19[1] = 0;
        v19[2] = 0;
        v21 = *a1;
      }
    }

    *v19 = v17;
    v19[1] = v18;
    v19[2] = v18;
    v9 = *v21;
    v8 = v21[1];
    a4 = v15;
    a3 = v14;
    if (*v21 == v8)
    {
      goto LABEL_26;
    }
  }

  v37 = v8;
  v38 = v7;
  do
  {
    v40 = *v9;
    if (a3(a4))
    {
      v23 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>,mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::operator[](*v7, &v40);
      v24 = v23;
      v25 = *v6;
      v27 = v23[1];
      v26 = v23[2];
      if (v27 < v26)
      {
        *v27 = v25;
        v22 = v27 + 1;
      }

      else
      {
        v28 = *v23;
        v29 = v27 - *v23;
        v30 = (v29 >> 3) + 1;
        if (v30 >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v31 = a3;
        v32 = a4;
        v33 = v26 - v28;
        if (v33 >> 2 > v30)
        {
          v30 = v33 >> 2;
        }

        if (v33 >= 0x7FFFFFFFFFFFFFF8)
        {
          v34 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v34 = v30;
        }

        if (v34)
        {
          if (v34 >> 61)
          {
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v35 = operator new(8 * v34);
        }

        else
        {
          v35 = 0;
        }

        v36 = &v35[8 * (v29 >> 3)];
        *v36 = v25;
        v22 = v36 + 8;
        memcpy(v35, v28, v29);
        *v24 = v35;
        v24[1] = v22;
        v24[2] = &v35[8 * v34];
        if (v28)
        {
          operator delete(v28);
        }

        a4 = v32;
        a3 = v31;
        v7 = v38;
        v6 = a2;
        v8 = v37;
      }

      v24[1] = v22;
    }

    ++v9;
  }

  while (v9 != v8);
LABEL_26:
  std::vector<std::unique_ptr<mlir::RewritePattern>>::push_back[abi:nn200100](*v7 + 24, v6);
}

void std::make_unique[abi:nn200100]<mlir::detail::PDLByteCode,mlir::ModuleOp &,llvm::SmallVector<std::unique_ptr<mlir::PDLPatternConfigSet>,6u>,llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet*,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet*>> &,llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>,llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>,0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v41[6] = *MEMORY[0x1E69E9840];
  v12 = operator new(0xED8uLL);
  v13 = a2;
  v14 = v12;
  v15 = *a1;
  v39 = v41;
  v40 = 0x600000000;
  if (*(v13 + 8))
  {
    llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::operator=(&v39, v13);
  }

  v37 = *a4;
  v38 = *(a4 + 8);
  *(a4 + 16) = 0;
  *a4 = 0;
  *(a4 + 8) = 0;
  v35 = *a5;
  v36 = *(a5 + 8);
  *(a5 + 16) = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  mlir::detail::PDLByteCode::PDLByteCode(v14, v15, &v39, a3, &v37, &v35);
  *a6 = v14;
  if (DWORD1(v36) && v36)
  {
    v16 = 0;
    do
    {
      v17 = *(v35 + v16);
      if (v17 != -8 && v17 != 0)
      {
        v19 = *v17;
        v20 = *(v17 + 4);
        if (v20 == (v17 + 8))
        {
          (*(*v20 + 32))(v20);
        }

        else if (v20)
        {
          (*(*v20 + 40))(v20);
        }

        llvm::deallocate_buffer(v17, (v19 + 41));
      }

      v16 += 8;
    }

    while (8 * v36 != v16);
  }

  free(v35);
  if (DWORD1(v38) && v38)
  {
    v21 = 0;
    do
    {
      v22 = *(v37 + v21);
      if (v22 != -8 && v22 != 0)
      {
        v24 = *v22;
        v25 = *(v22 + 4);
        if (v25 == (v22 + 8))
        {
          (*(*v25 + 32))(v25);
        }

        else if (v25)
        {
          (*(*v25 + 40))(v25);
        }

        llvm::deallocate_buffer(v22, (v24 + 41));
      }

      v21 += 8;
    }

    while (8 * v38 != v21);
  }

  free(v37);
  v26 = v39;
  if (v40)
  {
    v27 = v39 + 8 * v40;
    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        v30 = *v28;
        v31 = v28[2];
        if (v31)
        {
          v32 = 8 * v31;
          v33 = (v30 - 2);
          do
          {
            v34 = *&v33[v32];
            *&v33[v32] = 0;
            if (v34)
            {
              (*(*v34 + 8))(v34);
            }

            v32 -= 8;
          }

          while (v32);
          v30 = *v28;
        }

        if (v30 != v28 + 4)
        {
          free(v30);
        }

        operator delete(v28);
      }
    }

    while (v27 != v26);
    v26 = v39;
  }

  if (v26 != v41)
  {
    free(v26);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v6 = v2 - 1;
  v7 = *a2;
  v8 = *(a2 + 8);
  if (v8)
  {
    if (v7 == -2)
    {
      v9 = 1;
      v10 = HashValue & v6;
      result = v3 + 16 * (HashValue & v6);
      v12 = *result;
      if (*result == -2)
      {
        return result;
      }

      while (v12 != -1)
      {
        if (v8 != *(result + 8) || (v13 = result, v14 = memcmp(0xFFFFFFFFFFFFFFFELL, v12, v8), result = v13, v14))
        {
          v15 = v9 + v10;
          ++v9;
          v10 = v15 & v6;
          result = v3 + 16 * (v15 & v6);
          v12 = *result;
          if (*result != -2)
          {
            continue;
          }
        }

        return result;
      }
    }

    else
    {
      v20 = 1;
      v21 = HashValue & v6;
      result = v3 + 16 * (HashValue & v6);
      v22 = *result;
      if (*result == -2)
      {
        goto LABEL_22;
      }

      while (v22 != -1)
      {
        if (v8 == *(result + 8))
        {
          v23 = result;
          v24 = v20;
          v25 = memcmp(v7, v22, v8);
          v20 = v24;
          v26 = v25;
          result = v23;
          if (!v26)
          {
            return result;
          }
        }

        do
        {
LABEL_22:
          v27 = v20 + v21;
          ++v20;
          v21 = v27 & v6;
          result = v3 + 16 * (v27 & v6);
          v22 = *result;
        }

        while (*result == -2);
      }
    }

LABEL_29:
    if (v7 != -1)
    {
      return 0;
    }

    return result;
  }

  v16 = 1;
  if (v7 == -2)
  {
    v17 = HashValue & v6;
    result = v3 + 16 * (HashValue & v6);
    v18 = *result;
    if (*result == -2)
    {
      return result;
    }

    while (v18 != -1)
    {
      if (*(result + 8))
      {
        v19 = v16 + v17;
        ++v16;
        v17 = v19 & v6;
        result = v3 + 16 * (v19 & v6);
        v18 = *result;
        if (*result != -2)
        {
          continue;
        }
      }

      return result;
    }

    goto LABEL_29;
  }

  while (1)
  {
    v28 = HashValue & v6;
    result = v3 + 16 * (HashValue & v6);
    if (*result != -2)
    {
      if (*result == -1)
      {
        goto LABEL_29;
      }

      if (!*(result + 8))
      {
        return result;
      }
    }

    HashValue = v16 + v28;
    ++v16;
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<convertPDLToPDLInterp(mlir::ModuleOp,llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>> &)::$_0>(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::isOpTriviallyDead(a2, a2))
  {

    mlir::Operation::erase(a2);
  }
}

llvm::StringMapImpl *llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x2800000000;
  if (*(a2 + 3))
  {
    llvm::StringMapImpl::init(this, *(a2 + 2));
    v4 = *this;
    v5 = *(this + 2);
    v6 = *a2;
    *(this + 12) = *(a2 + 12);
    if (v5)
    {
      v7 = 0;
      v18 = v4 + 8 * v5 + 8;
      v8 = v6 + 8 * v5 + 8;
      do
      {
        while (1)
        {
          v9 = *(*a2 + 8 * v7);
          if (v9 && v9 + 1 != 0)
          {
            break;
          }

          *(v4 + 8 * v7++) = v9;
          if (v5 == v7)
          {
            return this;
          }
        }

        v11 = *v9;
        buffer = llvm::allocate_buffer(*v9 + 41, 8uLL);
        v13 = buffer;
        v14 = (buffer + 5);
        if (v11)
        {
          memcpy(buffer + 5, v9 + 5, v11);
        }

        v14[v11] = 0;
        *v13 = v11;
        v15 = v13 + 1;
        v16 = v9[4];
        if (v16)
        {
          if (v16 == v9 + 1)
          {
            v13[4] = v15;
            (*(*v16 + 24))(v16);
          }

          else
          {
            v13[4] = (*(*v16 + 16))(v16, v15);
          }
        }

        else
        {
          v13[4] = 0;
        }

        v4 = *this;
        *(*this + 8 * v7) = v13;
        *(v18 + 4 * v7) = *(v8 + 4 * v7);
        ++v7;
      }

      while (v5 != v7);
    }
  }

  return this;
}

void std::__shared_ptr_emplace<mlir::FrozenRewritePatternSet::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B05E90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void mlir::FrozenRewritePatternSet::Impl::~Impl(mlir::FrozenRewritePatternSet::Impl *this)
{
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    mlir::detail::PDLByteCode::~PDLByteCode(v2);
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    v5 = *(this + 7);
    v6 = *(this + 6);
    if (v5 != v4)
    {
      do
      {
        v8 = *--v5;
        v7 = v8;
        *v5 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      while (v5 != v4);
      v6 = *(this + 6);
    }

    *(this + 7) = v4;
    operator delete(v6);
  }

  v9 = *(this + 3);
  if (v9)
  {
    v10 = *(this + 4);
    v11 = *(this + 3);
    if (v10 != v9)
    {
      do
      {
        v13 = *--v10;
        v12 = v13;
        *v10 = 0;
        if (v13)
        {
          (*(*v12 + 8))(v12);
        }
      }

      while (v10 != v9);
      v11 = *(this + 3);
    }

    *(this + 4) = v9;
    operator delete(v11);
  }

  v14 = *(this + 4);
  v15 = *this;
  if (v14)
  {
    v16 = (v15 + 16);
    v17 = 32 * v14;
    do
    {
      if ((*(v16 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v18 = *(v16 - 1);
        if (v18)
        {
          *v16 = v18;
          operator delete(v18);
        }
      }

      v16 += 4;
      v17 -= 32;
    }

    while (v17);
    v15 = *this;
    v19 = (32 * *(this + 4));
  }

  else
  {
    v19 = 0;
  }

  llvm::deallocate_buffer(v15, v19);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v12);
  v7 = v12;
  if (!result)
  {
    v13 = v12;
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    if (4 * v9 + 4 >= 3 * v10)
    {
      v10 *= 2;
    }

    else if (v10 + ~v9 - *(a1 + 12) > v10 >> 3)
    {
      *(a1 + 8) = v9 + 1;
      if (*v7 == -1)
      {
LABEL_7:
        *v7 = *a2;
        v8 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(a1, v10);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v13);
    v7 = v13;
    ++*(a1 + 8);
    if (*v7 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:
  v11 = *a1 + 16 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v11;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, uint64_t a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v13 = 0;
    result = 0;
    goto LABEL_44;
  }

  v5 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v8 = v4 - 1;
  v9 = *a2;
  v10 = *(a2 + 8);
  if (!v10)
  {
    if (v9 != -2)
    {
      v21 = 0;
      v29 = 1;
      v30 = HashValue & v8;
      v13 = (v5 + 16 * (HashValue & v8));
      v31 = *v13;
      if (*v13 != -2)
      {
        goto LABEL_41;
      }

      while (1)
      {
        do
        {
          if (v21)
          {
            v32 = 0;
          }

          else
          {
            v32 = v31 + 2 == 0;
          }

          if (v32)
          {
            v21 = v13;
          }

          v33 = v29 + v30;
          ++v29;
          v30 = v33 & v8;
          v13 = (v5 + 16 * (v33 & v8));
          v31 = *v13;
        }

        while (*v13 == -2);
LABEL_41:
        if (v31 == -1)
        {
          goto LABEL_18;
        }

        if (!v13[1])
        {
          goto LABEL_43;
        }
      }
    }

    v17 = 1;
    v18 = HashValue & v8;
    v13 = (v5 + 16 * (HashValue & v8));
    v19 = *v13;
    if (*v13 != -2)
    {
      while (v19 != -1)
      {
        if (v13[1])
        {
          v20 = v17 + v18;
          ++v17;
          v18 = v20 & v8;
          v13 = (v5 + 16 * (v20 & v8));
          v19 = *v13;
          if (*v13 != -2)
          {
            continue;
          }
        }

        goto LABEL_43;
      }

      goto LABEL_17;
    }

LABEL_43:
    result = 1;
    goto LABEL_44;
  }

  if (v9 != -2)
  {
    v21 = 0;
    v22 = 1;
    v23 = HashValue & v8;
    v13 = (v5 + 16 * (HashValue & v8));
    v24 = *v13;
    if (*v13 != -2)
    {
      goto LABEL_30;
    }

    while (1)
    {
      do
      {
        if (v21)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24 + 2 == 0;
        }

        if (v25)
        {
          v21 = v13;
        }

        v26 = v22 + v23;
        ++v22;
        v23 = v26 & v8;
        v13 = (v5 + 16 * (v26 & v8));
        v24 = *v13;
      }

      while (*v13 == -2);
LABEL_30:
      if (v24 == -1)
      {
        goto LABEL_18;
      }

      if (v10 == v13[1])
      {
        v35 = v24;
        v27 = v21;
        v34 = v22;
        v28 = memcmp(v9, v24, v10);
        v22 = v34;
        v21 = v27;
        v24 = v35;
        if (!v28)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v11 = 1;
  v12 = HashValue & v8;
  v13 = (v5 + 16 * (HashValue & v8));
  v14 = *v13;
  if (*v13 == -2)
  {
    goto LABEL_43;
  }

  while (v14 != -1)
  {
    if (v10 != v13[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v14, v10))
    {
      v15 = v11 + v12;
      ++v11;
      v12 = v15 & v8;
      v13 = (v5 + 16 * (v15 & v8));
      v14 = *v13;
      if (*v13 != -2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

LABEL_17:
  v21 = 0;
LABEL_18:
  if (!v21)
  {
    v21 = v13;
  }

  if (v9 == -1)
  {
    result = 1;
  }

  else
  {
    v13 = v21;
    result = 0;
  }

LABEL_44:
  *a3 = v13;
  return result;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_10;
      }

      v13 = v12 + 1;
      v10 = &result[v13 & 0x1FFFFFFFFFFFFFFCLL];
      v14 = result + 2;
      v15 = v13 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *(v14 - 2) = xmmword_1E096FB70;
        *(v14 - 1) = xmmword_1E096FB70;
        *v14 = xmmword_1E096FB70;
        v14[1] = xmmword_1E096FB70;
        v14 += 4;
        v15 -= 4;
      }

      while (v15);
      if (v13 != (v13 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_10:
        v16 = &result[v11];
        do
        {
          *v10++ = xmmword_1E096FB70;
        }

        while (v10 != v16);
      }
    }

    v17 = (16 * v3);
    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        if (*v19 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, v19, &v26);
          *v26 = *v19;
          ++*(a1 + 8);
        }

        v19 = (v19 + 16);
        v18 -= 16;
      }

      while (v18);
    }

    llvm::deallocate_buffer(v4, v17);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (v20 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v21 < 3)
    {
      goto LABEL_23;
    }

    v22 = v21 + 1;
    v10 = &result[v22 & 0x1FFFFFFFFFFFFFFCLL];
    v23 = result + 2;
    v24 = v22 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *(v23 - 2) = xmmword_1E096FB70;
      *(v23 - 1) = xmmword_1E096FB70;
      *v23 = xmmword_1E096FB70;
      v23[1] = xmmword_1E096FB70;
      v23 += 4;
      v24 -= 4;
    }

    while (v24);
    if (v22 != (v22 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_23:
      v25 = &result[v20];
      do
      {
        *v10++ = xmmword_1E096FB70;
      }

      while (v10 != v25);
    }
  }

  return result;
}

void *llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -4096;
        *v13 = -4096;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[4 * v11];
        do
        {
          *v10 = -4096;
          v10 += 4;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = *(a1 + 16) - 1;
          v25 = v24 & ((v23 >> 4) ^ (v23 >> 9));
          v22 = (*a1 + 32 * v25);
          v26 = *v22;
          if (v23 != *v22)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = (*a1 + 32 * v25);
              v26 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v27)
            {
              v22 = v27;
            }
          }

LABEL_24:
          *v22 = v23;
          v22[1] = 0;
          v22[2] = 0;
          v22[3] = 0;
          *(v22 + 1) = *(v16 + 8);
          v22[3] = *(v16 + 3);
          *(v16 + 1) = 0;
          *(v16 + 2) = 0;
          *(v16 + 3) = 0;
          ++*(a1 + 8);
        }

        v16 = (v16 + 32);
      }

      while (v16 != (v4 + 32 * v3));
    }

    llvm::deallocate_buffer(v4, (32 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
    v19 = result + 4;
    v20 = v18 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 4) = -4096;
      *v19 = -4096;
      v19 += 8;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[4 * v17];
      do
      {
        *v10 = -4096;
        v10 += 4;
      }

      while (v10 != v21);
    }
  }

  return result;
}