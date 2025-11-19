uint64_t mlir::affine::AffineLoadOp::fold(uint64_t a1)
{
  v22[4] = *MEMORY[0x1E69E9840];
  mlir::memref::foldMemRefCast();
  if (v2)
  {
    if (*(*a1 + 36))
    {
      v3 = *a1 - 16;
    }

    else
    {
      v3 = 0;
    }

    return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) | 4;
  }

  else
  {
    Value = *(*(*a1 + 72) + 24);
    result = mlir::Value::getDefiningOp(&Value);
    if (!result)
    {
      return result;
    }

    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::GetGlobalOp,void>::id)
    {
      return 0;
    }

    v5 = result;
    result = mlir::Operation::getParentWithTrait<mlir::OpTrait::SymbolTable>(result);
    if (!result)
    {
      return result;
    }

    result = mlir::SymbolTable::lookupSymbolIn(result, *(v5 + 16 * ((*(v5 + 44) >> 23) & 1) + 64));
    if (!result)
    {
      return result;
    }

    v6 = *(*(result + 48) + 16);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::memref::GlobalOp,void>::id;
    v8 = v6 == &mlir::detail::TypeIDResolver<mlir::memref::GlobalOp,void>::id ? result : 0;
    v17 = v8;
    if (!v7)
    {
      return 0;
    }

    result = mlir::memref::GlobalOp::getConstantInitValue(&v17);
    if (!result)
    {
      return result;
    }

    v9 = result;
    if (!mlir::DenseElementsAttr::classof(result))
    {
      v9 = 0;
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }

    if (mlir::DenseElementsAttr::classof(v9))
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    Value = v10;
    if (v10)
    {
      isSplat = mlir::DenseElementsAttr::isSplat(&Value);
      v12 = isSplat ? v9 : 0;
      v21 = v12;
      if (isSplat)
      {
        return mlir::DenseElementsAttr::getSplatValue<mlir::Attribute>(&v21) & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    Value = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    Value = mlir::AffineMapAttr::getValue(&Value);
    if (!mlir::AffineMap::isConstant(&Value))
    {
      return 0;
    }

    Value = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    v14 = mlir::AffineMapAttr::getValue(&Value);
    mlir::AffineMap::getConstantResults(&v14, &Value);
    v15[0] = Value;
    v15[1] = 256;
    v15[2] = Value + 8 * v19;
    v15[3] = 256;
    llvm::to_vector<4u,llvm::iterator_range<llvm::mapped_iterator<long long *,mlir::affine::AffineLoadOp::fold(mlir::affine::AffineLoadOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0,unsigned long long>>>(&v21, v15);
    if (Value != &v20)
    {
      free(Value);
    }

    mlir::DenseElementsAttr::getValues<mlir::Attribute>(&v16, &Value);
    result = mlir::detail::ElementsAttrRange<mlir::DenseElementsAttr::AttributeElementIterator>::operator[](&Value, v21) & 0xFFFFFFFFFFFFFFFBLL;
    if (v21 != v22)
    {
      v13 = result;
      free(v21);
      return v13;
    }
  }

  return result;
}

uint64_t mlir::Operation::getParentWithTrait<mlir::OpTrait::SymbolTable>(uint64_t ParentOp)
{
  while (1)
  {
    v2 = *(ParentOp + 16);
    if (!v2)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v2);
    if (ParentOp)
    {
      {
        mlir::AsmParserState::Impl::PartialOpDef::PartialOpDef();
      }

      if (!(*(**(ParentOp + 48) + 32))(*(ParentOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        continue;
      }
    }

    return ParentOp;
  }

  return 0;
}

uint64_t mlir::DenseElementsAttr::getSplatValue<mlir::Attribute>(mlir::ArrayAttr *a1)
{
  mlir::ArrayAttr::getValue(a1);
  mlir::NamedAttribute::NamedAttribute(&v6, *a1, 0);
  v2 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::NamedAttribute::NamedAttribute(&v5, v2, NumElements);
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v6);
}

void llvm::to_vector<4u,llvm::iterator_range<llvm::mapped_iterator<long long *,mlir::affine::AffineLoadOp::fold(mlir::affine::AffineLoadOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0,unsigned long long>>>(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[2];
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  v5 = (v4 - v3) >> 3;
  if (v5 < 5)
  {
    v6 = 0;
    v7 = v4 - v3;
    if (v4 == v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 2), v5, 8);
    v6 = *(a1 + 2);
    v7 = v4 - v3;
    if (v4 == v3)
    {
      goto LABEL_13;
    }
  }

  v8 = (*a1 + 8 * v6);
  v9 = (v7 - 8);
  if (v9 < 0x38)
  {
    v10 = v3;
    goto LABEL_12;
  }

  v11 = 8 * v6 + *a1;
  if ((v11 - v3) < 0x20)
  {
    v10 = v3;
    do
    {
LABEL_12:
      v18 = *v10++;
      *v8++ = v18;
    }

    while (v10 != v4);
    goto LABEL_13;
  }

  v12 = (v9 >> 3) + 1;
  v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
  v8 = (v8 + v13);
  v10 = (v3 + v13);
  v14 = (v3 + 16);
  v15 = (v11 + 16);
  v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v17 = *v14;
    *(v15 - 1) = *(v14 - 1);
    *v15 = v17;
    v14 += 2;
    v15 += 2;
    v16 -= 4;
  }

  while (v16);
  if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_13:
  *(a1 + 2) = v6 + ((v4 - v3) >> 3);
}

double mlir::DenseElementsAttr::getValues<mlir::Attribute>@<D0>(mlir::ArrayAttr *a1@<X0>, uint64_t a2@<X8>)
{
  Value = mlir::ArrayAttr::getValue(a1);
  v6 = v5;
  mlir::NamedAttribute::NamedAttribute(&v12, *a1, 0);
  v7 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::NamedAttribute::NamedAttribute(&v11, v7, NumElements);
  v10 = v11;
  result = *&v12;
  *a2 = v12;
  *(a2 + 16) = v10;
  *(a2 + 32) = Value;
  *(a2 + 40) = v6;
  return result;
}

uint64_t mlir::detail::ElementsAttrRange<mlir::DenseElementsAttr::AttributeElementIterator>::operator[](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8) + mlir::ElementsAttr::getFlattenedIndex(*(a1 + 32), a2);
  v5[0] = *a1;
  v5[1] = v3;
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v5);
}

void mlir::affine::AffineStoreOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v15 = a4;
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  v11 = mlir::AffineMapAttr::get(a5);
  v12 = v11;
  v13 = a2[32];
  if (v13)
  {
    *v13 = v11;
  }

  else
  {
    v14 = operator new(8uLL);
    *v14 = 0;
    a2[32] = v14;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v17;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v17;
    {
      mlir::affine::AffineStoreOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *a2[32] = v12;
  }
}

uint64_t mlir::affine::AffineStoreOp::parse(uint64_t a1, uint64_t a2)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  memset(v16, 0, 24);
  memset(v15, 0, 24);
  v14 = 0;
  v17 = 0;
  v18 = v20;
  v19 = 0x100000000;
  if ((*(*a1 + 704))(a1, v16, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 704))(a1, v15, 1) & 1) != 0 && ((*(*a1 + 736))(a1, &v18, &v14, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v17) && (RHS = mlir::AffineBinaryOpExpr::getRHS(&v17), ((*(*a1 + 728))(a1, v16, RHS, a2 + 16)) && ((*(*a1 + 728))(a1, v15, v17, a2 + 16))
  {
    if (!v19)
    {
      v10 = 1;
      v12 = v18;
      if (v18 == v20)
      {
        return v10 & 1;
      }

      goto LABEL_16;
    }

    v8 = v18;
    v9 = 32 * v19 - 32;
    do
    {
      v10 = (*(*a1 + 728))(a1, v8, IndexType, a2 + 16);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v8 += 32;
      v11 = v9;
      v9 -= 32;
    }

    while (v11);
  }

  else
  {
    v10 = 0;
  }

  v12 = v18;
  if (v18 != v20)
  {
LABEL_16:
    free(v12);
  }

  return v10 & 1;
}

uint64_t mlir::affine::AffineStoreOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 8236;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, ", ", 2uLL);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 91);
    v10 = *this;
    if (!*(*this + 47))
    {
LABEL_12:
      v28.var0 = "map";
      v28.var1 = 3;
      InherentAttr = mlir::DictionaryAttr::get((v10 + 56), v28);
      goto LABEL_13;
    }
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 91;
    v10 = *this;
    if (!*(*this + 47))
    {
      goto LABEL_12;
    }
  }

  v27.var0 = "map";
  v27.var1 = 3;
  InherentAttr = mlir::Operation::getInherentAttr(v10, v27);
  if ((v12 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v13 = *this;
    v14 = InherentAttr;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v15 = *(v13 + 9);
      v16 = *(v13 + 17) - 2;
    }

    else
    {
      v15 = 0;
      v16 = -2;
    }

    mlir::ValueRange::ValueRange(&AttrDictionary, v15 + 64, v16);
    (*(*a2 + 240))(a2, v14, AttrDictionary, v25);
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 93);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = "map";
  v25 = 3;
  (*(*a2 + 192))(a2, Value, v20, &AttrDictionary, 1);
  v21 = (*(*a2 + 16))(a2);
  v22 = v21[4];
  if ((v21[3] - v22) > 2)
  {
    *(v22 + 2) = 32;
    *v22 = 14880;
    v21[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v21, " : ", 3uLL);
  }

  return (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::affine::AffineStoreOp::verify(mlir::affine::AffineStoreOp *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(*this + 72);
  v16 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v3 == mlir::AffineBinaryOpExpr::getRHS(&v16))
  {
    mlir::affine::AffineStoreOp::verify();
    return v17[0];
  }

  else
  {
    v14 = "value to store must have the same type as memref element type";
    v15 = 259;
    mlir::OpState::emitOpError(this, &v14, v17);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (*v17)
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v23;
        v7 = __p;
        if (v23 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v23 = v5;
        operator delete(v7);
      }

      v8 = v20;
      if (v20)
      {
        v9 = v21;
        v10 = v20;
        if (v21 != v20)
        {
          do
          {
            v12 = *--v9;
            v11 = v12;
            *v9 = 0;
            if (v12)
            {
              operator delete[](v11);
            }
          }

          while (v9 != v8);
          v10 = v20;
        }

        v21 = v8;
        operator delete(v10);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v4;
}

void mlir::affine::AffineStoreOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  mlir::Pattern::Pattern((v4 + 2), "affine.store", 12, v24, a2, 0, 0);
  *v4 = &unk_1F5B15128;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v24 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineStoreOp>]";
  v25 = 118;
  v9 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
  if (v25 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v25;
  }

  v11 = &v24[v10];
  v12 = v25 - v10;
  if (v25 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v25 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
}

unint64_t mlir::affine::AffineMinOp::fold(uint64_t *a1, uint64_t a2)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 56);
  v4 = *(a2 + 48);
  v25 = v27;
  v26 = 0x200000000;
  v23[0] = *(v2 + 64 + 16 * ((*(v2 + 44) >> 23) & 1));
  v23[0] = mlir::AffineMapAttr::getValue(v23);
  v22 = mlir::AffineMap::partialConstantFold(v23, v4, v3, &v25, 0);
  if (mlir::AffineMap::getNumSymbols(&v22) == 1 && mlir::AffineMap::isSymbolIdentity(&v22))
  {
    v5 = *(*(v2 + 72) + 24) | 4;
    v6 = v25;
    if (v25 == v27)
    {
      return v5;
    }

    goto LABEL_17;
  }

  if (!v26)
  {
    v23[0] = *(v2 + 64 + 16 * ((*(v2 + 44) >> 23) & 1));
    Value = mlir::AffineMapAttr::getValue(v23);
    if (v22 != Value)
    {
      v9 = mlir::AffineMapAttr::get(v22);
      Context = mlir::Attribute::getContext((v2 + 24));
      v24 = 261;
      v23[0] = "map";
      v23[1] = 3;
      v11 = mlir::StringAttr::get(Context, v23);
      mlir::Operation::setAttr(v2, v11, v9);
      v5 = (v2 - 16) | 4;
      v6 = v25;
      if (v25 == v27)
      {
        return v5;
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v26 == 1)
  {
    v7 = v25;
  }

  else
  {
    v13 = (v25 + 8);
    v12 = *v25;
    v14 = 8 * v26 - 8;
    v7 = v25;
    v15 = (v25 + 8);
    do
    {
      v17 = *v15++;
      v16 = v17;
      if (v17 < v12)
      {
        v12 = v16;
        v7 = v13;
      }

      v13 = v15;
      v14 -= 8;
    }

    while (v14);
  }

  if (v7 == (v25 + 8 * v26))
  {
LABEL_19:
    v5 = 0;
    v6 = v25;
    if (v25 == v27)
    {
      return v5;
    }

    goto LABEL_17;
  }

  v18 = mlir::Attribute::getContext((v2 + 24));
  v20 = mlir::IndexType::get(v18, v19);
  v5 = mlir::IntegerAttr::get(v20, *v7) & 0xFFFFFFFFFFFFFFFBLL;
  v6 = v25;
  if (v25 != v27)
  {
LABEL_17:
    free(v6);
  }

  return v5;
}

void mlir::affine::AffineMinOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v24 = a2;
  mlir::RewritePatternSet::addImpl<CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>,mlir::MLIRContext *&>(a1, 0, 0, &v24);
  mlir::RewritePatternSet::addImpl<DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>,mlir::MLIRContext *&>(a1, 0, 0, &v24);
  mlir::RewritePatternSet::addImpl<MergeAffineMinMaxOp<mlir::affine::AffineMinOp>,mlir::MLIRContext *&>(a1, 0, 0, &v24);
  v3 = v24;
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v25, 1);
  mlir::Pattern::Pattern((v4 + 2), "affine.min", 10, v25, v3, 0, 0);
  *v4 = &unk_1F5B15348;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v25 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineMinOp>]";
  v26 = 116;
  v9 = llvm::StringRef::find(&v25, "DesiredTypeName = ", 0x12uLL, 0);
  if (v26 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v26;
  }

  v11 = &v25[v10];
  v12 = v26 - v10;
  if (v26 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v26 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  mlir::RewritePatternSet::addImpl<CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>,mlir::MLIRContext *&>(a1, 0, 0, &v24);
}

uint64_t mlir::affine::AffineMinOp::parse(uint64_t a1, uint64_t a2)
{
  v20[32] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  v18 = v20;
  v19 = 0x800000000;
  v14 = 0;
  v15 = v17;
  v16 = 0x800000000;
  if (!mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(a1, &v14, 0, "map", 3, a2 + 112) || ((*(*a1 + 720))(a1, &v18, 1, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 720))(a1, &v15, 6, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  if (v19)
  {
    v7 = v18;
    v8 = 32 * v19;
    while (((*(*a1 + 728))(a1, v7, IndexType, a2 + 16) & 1) != 0)
    {
      v7 += 32;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_16;
  }

LABEL_9:
  if (v16)
  {
    v9 = v15;
    v10 = 32 * v16;
    while (((*(*a1 + 728))(a1, v9, IndexType, a2 + 16) & 1) != 0)
    {
      v9 += 32;
      v10 -= 32;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_16;
  }

LABEL_13:
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = IndexType;
  ++*(a2 + 72);
  v12 = 1;
LABEL_17:
  if (v15 != v17)
  {
    free(v15);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v12;
}

unint64_t mlir::affine::AffineMaxOp::fold(uint64_t *a1, uint64_t a2)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 56);
  v4 = *(a2 + 48);
  v26 = v28;
  v27 = 0x200000000;
  v24[0] = *(v2 + 64 + 16 * ((*(v2 + 44) >> 23) & 1));
  v24[0] = mlir::AffineMapAttr::getValue(v24);
  v23 = mlir::AffineMap::partialConstantFold(v24, v4, v3, &v26, 0);
  if (mlir::AffineMap::getNumSymbols(&v23) == 1 && mlir::AffineMap::isSymbolIdentity(&v23))
  {
    v5 = *(*(v2 + 72) + 24) | 4;
    v6 = v26;
    if (v26 == v28)
    {
      return v5;
    }

    goto LABEL_19;
  }

  if (!v27)
  {
    v24[0] = *(v2 + 64 + 16 * ((*(v2 + 44) >> 23) & 1));
    Value = mlir::AffineMapAttr::getValue(v24);
    if (v23 != Value)
    {
      v9 = mlir::AffineMapAttr::get(v23);
      Context = mlir::Attribute::getContext((v2 + 24));
      v25 = 261;
      v24[0] = "map";
      v24[1] = 3;
      v11 = mlir::StringAttr::get(Context, v24);
      mlir::Operation::setAttr(v2, v11, v9);
      v5 = (v2 - 16) | 4;
      v6 = v26;
      if (v26 == v28)
      {
        return v5;
      }

      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (v27 == 1)
  {
    v7 = v26;
  }

  else
  {
    v13 = (v26 + 8);
    v12 = *v26;
    v14 = 8 * v27 - 8;
    v7 = v26;
    v15 = (v26 + 8);
    do
    {
      v17 = *v15++;
      v16 = v17;
      v18 = v12 < v17;
      if (v12 <= v17)
      {
        v12 = v16;
      }

      if (v18)
      {
        v7 = v13;
      }

      v13 = v15;
      v14 -= 8;
    }

    while (v14);
  }

  if (v7 == (v26 + 8 * v27))
  {
LABEL_21:
    v5 = 0;
    v6 = v26;
    if (v26 == v28)
    {
      return v5;
    }

    goto LABEL_19;
  }

  v19 = mlir::Attribute::getContext((v2 + 24));
  v21 = mlir::IndexType::get(v19, v20);
  v5 = mlir::IntegerAttr::get(v21, *v7) & 0xFFFFFFFFFFFFFFFBLL;
  v6 = v26;
  if (v26 != v28)
  {
LABEL_19:
    free(v6);
  }

  return v5;
}

void mlir::affine::AffineMaxOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v24 = a2;
  mlir::RewritePatternSet::addImpl<CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>,mlir::MLIRContext *&>(a1, 0, 0, &v24);
  mlir::RewritePatternSet::addImpl<DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>,mlir::MLIRContext *&>(a1, 0, 0, &v24);
  mlir::RewritePatternSet::addImpl<MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>,mlir::MLIRContext *&>(a1, 0, 0, &v24);
  v3 = v24;
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v25, 1);
  mlir::Pattern::Pattern((v4 + 2), "affine.max", 10, v25, v3, 0, 0);
  *v4 = &unk_1F5B155A8;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v25 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineMaxOp>]";
  v26 = 116;
  v9 = llvm::StringRef::find(&v25, "DesiredTypeName = ", 0x12uLL, 0);
  if (v26 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v26;
  }

  v11 = &v25[v10];
  v12 = v26 - v10;
  if (v26 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v26 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  mlir::RewritePatternSet::addImpl<CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>,mlir::MLIRContext *&>(a1, 0, 0, &v24);
}

uint64_t mlir::affine::AffineMaxOp::parse(uint64_t a1, uint64_t a2)
{
  v20[32] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  v18 = v20;
  v19 = 0x800000000;
  v14 = 0;
  v15 = v17;
  v16 = 0x800000000;
  if (!mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(a1, &v14, 0, "map", 3, a2 + 112) || ((*(*a1 + 720))(a1, &v18, 1, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 720))(a1, &v15, 6, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  if (v19)
  {
    v7 = v18;
    v8 = 32 * v19;
    while (((*(*a1 + 728))(a1, v7, IndexType, a2 + 16) & 1) != 0)
    {
      v7 += 32;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_16;
  }

LABEL_9:
  if (v16)
  {
    v9 = v15;
    v10 = 32 * v16;
    while (((*(*a1 + 728))(a1, v9, IndexType, a2 + 16) & 1) != 0)
    {
      v9 += 32;
      v10 -= 32;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_16;
  }

LABEL_13:
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = IndexType;
  ++*(a2 + 72);
  v12 = 1;
LABEL_17:
  if (v15 != v17)
  {
    free(v15);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v12;
}

BOOL mlir::affine::AffinePrefetchOp::parse(mlir::AsmParser *a1, mlir::Attribute *a2)
{
  v66[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  v52 = 0;
  memset(v51, 0, 24);
  v50 = 0;
  v7 = (*(*a1 + 32))(a1);
  IntegerType = mlir::Builder::getIntegerType(v7, 32);
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v64 = v66;
  v65 = 0x100000000;
  if (((*(*a1 + 704))(a1, v51, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v64, &v45, "map", 3, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || !mlir::AsmParser::parseKeyword(a1, &v48) || ((*(*a1 + 120))(a1) & 1) == 0 || (v56 = 257, ((*(*a1 + 400))(a1, "locality", 8, &v53) & 1) == 0) || ((*(*a1 + 152))(a1) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v50, IntegerType, "localityHint", 12, a2 + 112) || ((*(*a1 + 168))(a1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || !mlir::AsmParser::parseKeyword(a1, &v46) || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || !mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v52) || ((*(*a1 + 728))(a1, v51, v52, a2 + 16) & 1) == 0)
  {
LABEL_35:
    v12 = 0;
    goto LABEL_36;
  }

  if (v65)
  {
    v9 = v64;
    v10 = 32 * v65;
    while (((*(*a1 + 728))(a1, v9, IndexType, a2 + 16) & 1) != 0)
    {
      v9 += 32;
      v10 -= 32;
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_35;
  }

LABEL_19:
  if (v49 == 5)
  {
    if (*v48 != 1953067639 || *(v48 + 4) != 101)
    {
LABEL_22:
      v11 = (*(*a1 + 16))(a1);
      v42 = "rw specifier has to be 'read' or 'write'";
      v44 = 259;
      (*(*a1 + 24))(&v53, a1, v11, &v42);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
      if (v53)
      {
        mlir::InFlightDiagnostic::report(&v53);
      }

      if (v63 == 1)
      {
        if (v62 != &v63)
        {
          free(v62);
        }

        v13 = __p;
        if (__p)
        {
          v14 = v61;
          v15 = __p;
          if (v61 != __p)
          {
            do
            {
              v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
            }

            while (v14 != v13);
            v15 = __p;
          }

          v61 = v13;
          operator delete(v15);
        }

        v16 = v58;
        if (!v58)
        {
          goto LABEL_76;
        }

        v17 = v59;
        v18 = v58;
        if (v59 == v58)
        {
LABEL_75:
          v59 = v16;
          operator delete(v18);
LABEL_76:
          if (v55 != &v57)
          {
            free(v55);
          }

          goto LABEL_36;
        }

        do
        {
          v21 = *--v17;
          v20 = v21;
          *v17 = 0;
          if (v21)
          {
            operator delete[](v20);
          }
        }

        while (v17 != v16);
LABEL_74:
        v18 = v58;
        goto LABEL_75;
      }

      goto LABEL_36;
    }
  }

  else if (v49 != 4 || *v48 != 1684104562)
  {
    goto LABEL_22;
  }

  v23 = (*(*a1 + 32))(a1);
  v25 = (v49 == 5 && *v48 == 1953067639 && *(v48 + 4) == 101);
  BoolAttr = mlir::Builder::getBoolAttr(v23, v25);
  Context = mlir::Attribute::getContext(a2);
  v56 = 261;
  v53 = "isWrite";
  v54 = 7;
  v28 = mlir::StringAttr::get(Context, &v53);
  mlir::NamedAttribute::NamedAttribute(&v42, v28, BoolAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v42, v43);
  if (v47 != 5)
  {
    if (v47 != 4 || *v46 != 1635017060)
    {
      goto LABEL_58;
    }

LABEL_83:
    v37 = (*(*a1 + 32))(a1);
    if (v47 == 4)
    {
      v38 = (*v46 == 1635017060);
    }

    else
    {
      v38 = 0;
    }

    v39 = mlir::Builder::getBoolAttr(v37, v38);
    v40 = mlir::Attribute::getContext(a2);
    v56 = 261;
    v53 = "isDataCache";
    v54 = 11;
    v41 = mlir::StringAttr::get(v40, &v53);
    mlir::NamedAttribute::NamedAttribute(&v42, v41, v39);
    mlir::NamedAttrList::push_back(a2 + 112, v42, v43);
    v12 = 1;
    goto LABEL_36;
  }

  if (*v46 == 1953721961 && *(v46 + 4) == 114)
  {
    goto LABEL_83;
  }

LABEL_58:
  v29 = (*(*a1 + 16))(a1);
  v42 = "cache type has to be 'data' or 'instr'";
  v44 = 259;
  (*(*a1 + 24))(&v53, a1, v29, &v42);
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
  if (v53)
  {
    mlir::InFlightDiagnostic::report(&v53);
  }

  if (v63 == 1)
  {
    if (v62 != &v63)
    {
      free(v62);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v61;
      v32 = __p;
      if (v61 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v61 = v30;
      operator delete(v32);
    }

    v16 = v58;
    if (!v58)
    {
      goto LABEL_76;
    }

    v33 = v59;
    v18 = v58;
    if (v59 == v58)
    {
      goto LABEL_75;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v16);
    goto LABEL_74;
  }

LABEL_36:
  if (v64 != v66)
  {
    free(v64);
  }

  return v12;
}

uint64_t mlir::affine::AffinePrefetchOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 91);
    v8 = *this;
    if (!*(*this + 47))
    {
LABEL_9:
      v53.var0 = "map";
      v53.var1 = 3;
      InherentAttr = mlir::DictionaryAttr::get((v8 + 56), v53);
      goto LABEL_10;
    }
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 91;
    v8 = *this;
    if (!*(*this + 47))
    {
      goto LABEL_9;
    }
  }

  v52.var0 = "map";
  v52.var1 = 3;
  InherentAttr = mlir::Operation::getInherentAttr(v8, v52);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v11 = *this;
    v12 = InherentAttr;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v13 = *(v11 + 9);
      v14 = *(v11 + 17) - 1;
    }

    else
    {
      v13 = 0;
      v14 = -1;
    }

    mlir::ValueRange::ValueRange(&__p, v13 + 32, v14);
    (*(*a2 + 240))(a2, v12, __p, v44);
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 93);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 93;
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = v17[4];
  if (v17[3] - v18 > 1uLL)
  {
    *v18 = 8236;
    v17[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v17, ", ", 2uLL);
  }

  __p = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  Value = mlir::BoolAttr::getValue(&__p);
  v20 = (*(*a2 + 16))(a2);
  if (Value)
  {
    v21 = "write";
  }

  else
  {
    v21 = "read";
  }

  if (Value)
  {
    v22 = 5;
  }

  else
  {
    v22 = 4;
  }

  if (v22 <= *(v20 + 24) - *(v20 + 32))
  {
    v23 = v20;
    memcpy(*(v20 + 32), v21, v22);
    *(v23 + 32) += v22;
  }

  else
  {
    llvm::raw_ostream::write(v20, v21, v22);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] - v25 > 1uLL)
  {
    *v25 = 8236;
    v24[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v24, ", ", 2uLL);
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if ((v26[3] - v27) > 8)
  {
    *(v27 + 8) = 60;
    *v27 = *"locality<";
    v26[4] += 9;
  }

  else
  {
    llvm::raw_ostream::write(v26, "locality<", 9uLL);
  }

  v42 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  mlir::IntegerAttr::getValue(&v42, &__p);
  if (v44 > 0x40)
  {
    v28 = *__p;
    operator delete[](__p);
  }

  else
  {
    v28 = __p;
  }

  v29 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v29, v28);
  v30 = (*(*a2 + 16))(a2);
  v31 = v30[4];
  if ((v30[3] - v31) > 2)
  {
    *(v31 + 2) = 32;
    *v31 = 11326;
    v30[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v30, ">, ", 3uLL);
  }

  __p = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v32 = mlir::BoolAttr::getValue(&__p);
  v33 = (*(*a2 + 16))(a2);
  if (v32)
  {
    v34 = "data";
  }

  else
  {
    v34 = "instr";
  }

  if (v32)
  {
    v35 = 4;
  }

  else
  {
    v35 = 5;
  }

  if (v35 <= *(v33 + 24) - *(v33 + 32))
  {
    v36 = v33;
    memcpy(*(v33 + 32), v34, v35);
    *(v36 + 32) += v35;
  }

  else
  {
    llvm::raw_ostream::write(v33, v34, v35);
  }

  __p = mlir::Operation::getAttrDictionary(*this);
  v37 = mlir::ArrayAttr::getValue(&__p);
  __p = "map";
  v44 = 3;
  v45 = "localityHint";
  v46 = 12;
  v47 = "isDataCache";
  v48 = 11;
  v49 = "isWrite";
  v50 = 7;
  (*(*a2 + 192))(a2, v37, v38, &__p, 4);
  v39 = (*(*a2 + 16))(a2);
  v40 = v39[4];
  if ((v39[3] - v40) > 2)
  {
    *(v40 + 2) = 32;
    *v40 = 14880;
    v39[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v39, " : ", 3uLL);
  }

  return (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::affine::AffinePrefetchOp::verify(mlir::Operation **this)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (!*(*this + 47) || (v58.var0 = "map", v58.var1 = 3, InherentAttr = mlir::Operation::getInherentAttr(*this, v58), (v4 & 1) == 0))
  {
    v59.var0 = "map";
    v59.var1 = 3;
    InherentAttr = mlir::DictionaryAttr::get((v2 + 56), v59);
  }

  if (!InherentAttr)
  {
    v47 = 0;
    goto LABEL_27;
  }

  v5 = *(*InherentAttr + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v7 = InherentAttr;
  }

  else
  {
    v7 = 0;
  }

  v47 = v7;
  if (v6)
  {
    Value = mlir::AffineMapAttr::getValue(&v47);
    v8 = mlir::arith::FastMathFlagsAttr::getValue(&Value);
    *v48 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::ArrayAttr::getValue(v48);
    if (v9 == v8)
    {
      v10 = mlir::AffineMap::getNumInputs(&Value) + 1;
      v11 = *this;
      if ((*(*this + 46) & 0x80) != 0)
      {
        if (v10 == *(v11 + 17))
        {
          goto LABEL_29;
        }
      }

      else if (!v10)
      {
        goto LABEL_29;
      }

      v44[0] = "too few operands";
      v45 = 259;
      mlir::OpState::emitOpError(this, v44, v48);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
      v13 = result;
      if (*v48)
      {
        mlir::InFlightDiagnostic::report(v48);
        result = v13;
      }

      if (v56 != 1)
      {
        return result;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v54;
        v16 = __p;
        if (v54 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v54 = v14;
        operator delete(v16);
      }

      v17 = v51;
      result = v13;
      if (!v51)
      {
LABEL_60:
        v35 = v49;
        if (v49 == v50)
        {
          return result;
        }

LABEL_61:
        free(v35);
        return v13;
      }

      v18 = v52;
      v19 = v51;
      if (v52 == v51)
      {
LABEL_59:
        v52 = v17;
        operator delete(v19);
        result = v13;
        goto LABEL_60;
      }

      do
      {
        v28 = *--v18;
        v27 = v28;
        *v18 = 0;
        if (v28)
        {
          operator delete[](v27);
        }
      }

      while (v18 != v17);
    }

    else
    {
      v44[0] = "affine.prefetch affine map num results must equal memref rank";
      v45 = 259;
      mlir::OpState::emitOpError(this, v44, v48);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
      v13 = result;
      if (*v48)
      {
        mlir::InFlightDiagnostic::report(v48);
        result = v13;
      }

      if (v56 != 1)
      {
        return result;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v54;
        v31 = __p;
        if (v54 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v54 = v29;
        operator delete(v31);
      }

      v17 = v51;
      result = v13;
      if (!v51)
      {
        goto LABEL_60;
      }

      v32 = v52;
      v19 = v51;
      if (v52 == v51)
      {
        goto LABEL_59;
      }

      do
      {
        v34 = *--v32;
        v33 = v34;
        *v32 = 0;
        if (v34)
        {
          operator delete[](v33);
        }
      }

      while (v32 != v17);
    }

    v19 = v51;
    goto LABEL_59;
  }

LABEL_27:
  v11 = *this;
  if ((*(*this + 46) & 0x80) == 0 || *(v11 + 17) != 1)
  {
    mlir::affine::AffinePrefetchOp::verify(this, v48);
    return v48[0];
  }

LABEL_29:
  AffineScope = mlir::affine::getAffineScope(v11, v4);
  v21 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v22 = *(v21 + 17);
    v23 = v22 - 1;
    if (v22 == 1)
    {
      return 1;
    }

    v24 = *(v21 + 9) + 32;
  }

  else
  {
    v23 = -1;
    v24 = 32;
  }

  for (i = (v24 + 24); ; i += 4)
  {
    v26 = *i;
    if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v26, AffineScope) & 1) == 0)
    {
      break;
    }

    if (!--v23)
    {
      return 1;
    }
  }

  v44[0] = "index must be a valid dimension or symbol identifier";
  v45 = 259;
  mlir::OpState::emitOpError(this, v44, v48);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
  v13 = result;
  if (*v48)
  {
    mlir::InFlightDiagnostic::report(v48);
    result = v13;
  }

  if (v56)
  {
    if (v55 != &v56)
    {
      free(v55);
      result = v13;
    }

    v36 = __p;
    if (__p)
    {
      v37 = v54;
      v38 = __p;
      if (v54 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v54 = v36;
      operator delete(v38);
      result = v13;
    }

    v39 = v51;
    if (v51)
    {
      v40 = v52;
      v41 = v51;
      if (v52 != v51)
      {
        do
        {
          v43 = *--v40;
          v42 = v43;
          *v40 = 0;
          if (v43)
          {
            operator delete[](v42);
          }
        }

        while (v40 != v39);
        v41 = v51;
      }

      v52 = v39;
      operator delete(v41);
      result = v13;
    }

    v35 = v49;
    if (v49 != v50)
    {
      goto LABEL_61;
    }
  }

  return result;
}

void mlir::affine::AffinePrefetchOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  mlir::Pattern::Pattern((v4 + 2), "affine.prefetch", 15, v24, a2, 0, 0);
  *v4 = &unk_1F5B15688;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v24 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>]";
  v25 = 121;
  v9 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
  if (v25 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v25;
  }

  v11 = &v24[v10];
  v12 = v25 - v10;
  if (v25 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v25 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
}

void mlir::affine::AffineParallelOp::getSteps(mlir::affine::AffineParallelOp *this@<X0>, uint64_t a2@<X8>)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v18 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  Value = mlir::ArrayAttr::getValue(&v18);
  v4 = mlir::ArrayAttr::getValue(&v18);
  v6 = (v4 + 8 * v5);
  __src = v22;
  v21 = 0x400000000;
  v7 = v6 - Value;
  v8 = (v6 - Value) >> 3;
  if (v8 < 5)
  {
    v9 = 0;
    v11 = 0;
    v10 = v22;
    if (v6 == Value)
    {
      goto LABEL_8;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v22, v8, 8);
    v9 = v21;
    v10 = __src;
    v11 = v21;
    if (v6 == Value)
    {
      goto LABEL_8;
    }
  }

  v12 = &v10[v9];
  do
  {
    v13 = *Value;
    Value += 8;
    v19 = v13;
    *v12++ = mlir::IntegerAttr::getInt(&v19);
  }

  while (Value != v6);
  v11 = v21;
  v10 = __src;
LABEL_8:
  v14 = v7 >> 3;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x800000000;
  v15 = v11 + (v7 >> 3);
  LODWORD(v21) = v15;
  if (v15 && &__src != a2)
  {
    if (v10 == v22)
    {
      v17 = v11 + v14;
      if (v15 < 9 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, (v11 + v14), 8), v17 = v21, v10 = __src, v21))
      {
        memcpy(*a2, v10, 8 * v17);
        v10 = __src;
      }

      *(a2 + 8) = v15;
    }

    else
    {
      *a2 = v10;
      v16 = HIDWORD(v21);
      *(a2 + 8) = v15;
      *(a2 + 12) = v16;
      __src = v22;
      HIDWORD(v21) = 0;
      v10 = v22;
    }

    LODWORD(v21) = 0;
  }

  if (v10 != v22)
  {
    free(v10);
  }
}

uint64_t mlir::affine::AffineParallelOp::verify(mlir::affine::AffineParallelOp *this)
{
  v207 = *MEMORY[0x1E69E9840];
  mlir::affine::AffineParallelOp::getSteps(this, &Value);
  v2 = v195;
  if (Value != &v196)
  {
    free(Value);
  }

  v190 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v190);
  if (NumElements != v2)
  {
    goto LABEL_14;
  }

  v183 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 96);
  if (mlir::DenseElementsAttr::getNumElements(&v183) != NumElements)
  {
    goto LABEL_14;
  }

  mlir::affine::AffineParallelOp::getSteps(this, &Value);
  if (v195 != v2)
  {
    v6 = 1;
    v7 = Value;
    if (Value == &v196)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v4 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v4)
  {
    v5 = v4 - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = v2 != (*(v5 + 56) - *(v5 + 48)) >> 3;
  v7 = Value;
  if (Value != &v196)
  {
LABEL_12:
    free(v7);
  }

LABEL_13:
  if (!v6)
  {
    v187 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&Value, v187, 0);
    v63 = v187;
    v64 = mlir::DenseElementsAttr::getNumElements(&v187);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v190, v63, v64);
    if (v196 == v192)
    {
      v65 = 0;
    }

    else
    {
      v65 = 0;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&Value, &v183);
        if (v184 > 0x40)
        {
          v79 = *v183;
          operator delete[](v183);
        }

        else
        {
          LODWORD(v79) = v183;
        }

        v65 += v79;
        ++v196;
      }

      while (v196 != v192);
    }

    Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
    Value = mlir::AffineMapAttr::getValue(&Value);
    if (v65 != mlir::arith::FastMathFlagsAttr::getValue(&Value))
    {
      v193 = 257;
      mlir::OpState::emitOpError(this, &v190, &Value);
      if (Value)
      {
        LODWORD(v183) = 3;
        v184 = "expected lower bounds map to have ";
        v185 = 34;
        v80 = &v183;
        v81 = v197;
        if (v198 >= v199)
        {
          if (v197 <= &v183 && v197 + 24 * v198 > &v183)
          {
            v175 = &v183 - v197;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v198 + 1, 24);
            v81 = v197;
            v80 = (v197 + v175);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v198 + 1, 24);
            v80 = &v183;
            v81 = v197;
          }
        }

        v82 = &v81[24 * v198];
        v83 = *v80;
        *(v82 + 2) = v80[2];
        *v82 = v83;
        v84 = ++v198;
        if (Value)
        {
          LODWORD(v183) = 5;
          v184 = v65;
          v85 = &v183;
          v86 = v197;
          if (v84 >= v199)
          {
            if (v197 <= &v183 && v197 + 24 * v84 > &v183)
            {
              v176 = &v183 - v197;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v84 + 1, 24);
              v86 = v197;
              v85 = (v197 + v176);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v84 + 1, 24);
              v85 = &v183;
              v86 = v197;
            }
          }

          v87 = &v86[24 * v198];
          v88 = *v85;
          *(v87 + 2) = v85[2];
          *v87 = v88;
          v89 = ++v198;
          if (Value)
          {
            LODWORD(v183) = 3;
            v184 = " results";
            v185 = 8;
            v90 = &v183;
            v91 = v197;
            if (v89 >= v199)
            {
              if (v197 <= &v183 && v197 + 24 * v89 > &v183)
              {
                v178 = &v183 - v197;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v89 + 1, 24);
                v91 = v197;
                v90 = (v197 + v178);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v89 + 1, 24);
                v90 = &v183;
                v91 = v197;
              }
            }

            v92 = &v91[24 * v198];
            v93 = *v90;
            *(v92 + 2) = v90[2];
            *v92 = v93;
            ++v198;
          }
        }
      }

      v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v206 == 1)
      {
        if (v205 != &v206)
        {
          free(v205);
        }

        v94 = __p;
        if (__p)
        {
          v95 = v204;
          v96 = __p;
          if (v204 != __p)
          {
            do
            {
              v95 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v95 - 1);
            }

            while (v95 != v94);
            v96 = __p;
          }

          v204 = v94;
          operator delete(v96);
        }

        v58 = v201;
        if (!v201)
        {
          goto LABEL_248;
        }

        v97 = v202;
        v60 = v201;
        if (v202 == v201)
        {
          goto LABEL_247;
        }

        do
        {
          v99 = *--v97;
          v98 = v99;
          *v97 = 0;
          if (v99)
          {
            operator delete[](v98);
          }
        }

        while (v97 != v58);
        goto LABEL_246;
      }

      return v54;
    }

    v187 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 96);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&Value, v187, 0);
    v66 = v187;
    v67 = mlir::DenseElementsAttr::getNumElements(&v187);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v190, v66, v67);
    if (v196 == v192)
    {
      v68 = 0;
    }

    else
    {
      v68 = 0;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&Value, &v183);
        if (v184 > 0x40)
        {
          v100 = *v183;
          operator delete[](v183);
        }

        else
        {
          LODWORD(v100) = v183;
        }

        v68 += v100;
        ++v196;
      }

      while (v196 != v192);
    }

    Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 104);
    Value = mlir::AffineMapAttr::getValue(&Value);
    if (v68 != mlir::arith::FastMathFlagsAttr::getValue(&Value))
    {
      v193 = 257;
      mlir::OpState::emitOpError(this, &v190, &Value);
      if (Value)
      {
        LODWORD(v183) = 3;
        v184 = "expected upper bounds map to have ";
        v185 = 34;
        v101 = &v183;
        v102 = v197;
        if (v198 >= v199)
        {
          if (v197 <= &v183 && v197 + 24 * v198 > &v183)
          {
            v177 = &v183 - v197;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v198 + 1, 24);
            v102 = v197;
            v101 = (v197 + v177);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v198 + 1, 24);
            v101 = &v183;
            v102 = v197;
          }
        }

        v103 = &v102[24 * v198];
        v104 = *v101;
        *(v103 + 2) = v101[2];
        *v103 = v104;
        v105 = ++v198;
        if (Value)
        {
          LODWORD(v183) = 5;
          v184 = v68;
          v106 = &v183;
          v107 = v197;
          if (v105 >= v199)
          {
            if (v197 <= &v183 && v197 + 24 * v105 > &v183)
            {
              v179 = &v183 - v197;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v105 + 1, 24);
              v107 = v197;
              v106 = (v197 + v179);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v105 + 1, 24);
              v106 = &v183;
              v107 = v197;
            }
          }

          v108 = &v107[24 * v198];
          v109 = *v106;
          *(v108 + 2) = v106[2];
          *v108 = v109;
          v110 = ++v198;
          if (Value)
          {
            LODWORD(v183) = 3;
            v184 = " results";
            v185 = 8;
            v111 = &v183;
            v112 = v197;
            if (v110 >= v199)
            {
              if (v197 <= &v183 && v197 + 24 * v110 > &v183)
              {
                v180 = &v183 - v197;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v110 + 1, 24);
                v112 = v197;
                v111 = (v197 + v180);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v110 + 1, 24);
                v111 = &v183;
                v112 = v197;
              }
            }

            v113 = &v112[24 * v198];
            v114 = *v111;
            *(v113 + 2) = v111[2];
            *v113 = v114;
            ++v198;
          }
        }
      }

      v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v206 == 1)
      {
        if (v205 != &v206)
        {
          free(v205);
        }

        v115 = __p;
        if (__p)
        {
          v116 = v204;
          v117 = __p;
          if (v204 != __p)
          {
            do
            {
              v116 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v116 - 1);
            }

            while (v116 != v115);
            v117 = __p;
          }

          v204 = v115;
          operator delete(v117);
        }

        v58 = v201;
        if (!v201)
        {
          goto LABEL_248;
        }

        v118 = v202;
        v60 = v201;
        if (v202 == v201)
        {
          goto LABEL_247;
        }

        do
        {
          v120 = *--v118;
          v119 = v120;
          *v118 = 0;
          if (v120)
          {
            operator delete[](v119);
          }
        }

        while (v118 != v58);
        goto LABEL_246;
      }

      return v54;
    }

    Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
    mlir::ArrayAttr::getValue(&Value);
    if (v69 != *(*this + 36))
    {
      v190 = "a reduction must be specified for each output";
      v193 = 259;
      mlir::OpState::emitOpError(this, &v190, &Value);
      v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v206 == 1)
      {
        if (v205 != &v206)
        {
          free(v205);
        }

        v121 = __p;
        if (__p)
        {
          v122 = v204;
          v123 = __p;
          if (v204 != __p)
          {
            do
            {
              v122 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v122 - 1);
            }

            while (v122 != v121);
            v123 = __p;
          }

          v204 = v121;
          operator delete(v123);
        }

        v58 = v201;
        if (!v201)
        {
          goto LABEL_248;
        }

        v124 = v202;
        v60 = v201;
        if (v202 == v201)
        {
          goto LABEL_247;
        }

        do
        {
          v126 = *--v124;
          v125 = v126;
          *v124 = 0;
          if (v126)
          {
            operator delete[](v125);
          }
        }

        while (v124 != v58);
        goto LABEL_246;
      }

      return v54;
    }

    v183 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
    p_Value = mlir::ArrayAttr::getValue(&v183);
    v70 = mlir::ArrayAttr::getValue(&v183);
    v72 = (v70 + 8 * v71);
    if (p_Value == v72)
    {
LABEL_65:
      v73 = *this;
      v74 = *(*this + 44);
      if ((v74 & 0x800000) != 0)
      {
        v75 = *(v73 + 72);
        v76 = *(v73 + 68);
      }

      else
      {
        v75 = 0;
        v76 = 0;
      }

      Value = *(v73 + 16 * ((v74 >> 23) & 1) + 72);
      Value = mlir::AffineMapAttr::getValue(&Value);
      NumInputs = mlir::AffineMap::getNumInputs(&Value);
      if (v76 >= NumInputs)
      {
        v76 = NumInputs;
      }

      Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
      Value = mlir::AffineMapAttr::getValue(&Value);
      NumDims = mlir::AffineMap::getNumDims(&Value);
      if ((verifyDimAndSymbolIdentifiers<mlir::affine::AffineForOp>(this, v75, v76, NumDims) & 1) == 0)
      {
        return 0;
      }

      mlir::affine::AffineParallelOp::verify();
      return Value;
    }

    v127 = 0;
    while (2)
    {
      v145 = *p_Value;
      if (*(**p_Value + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v145 = 0;
      }

      v187 = v145;
      if (!v145 || (Int = mlir::IntegerAttr::getInt(&v187), mlir::arith::symbolizeAtomicRMWKind(Int), (v147 & 1) == 0))
      {
        v190 = "invalid reduction attribute";
        v193 = 259;
        mlir::OpState::emitOpError(this, &v190, &Value);
        v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
        if (Value)
        {
          mlir::InFlightDiagnostic::report(&Value);
        }

        if (v206 == 1)
        {
          if (v205 != &v206)
          {
            free(v205);
          }

          v159 = __p;
          if (__p)
          {
            v160 = v204;
            v161 = __p;
            if (v204 != __p)
            {
              do
              {
                v160 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v160 - 1);
              }

              while (v160 != v159);
              v161 = __p;
            }

            v204 = v159;
            operator delete(v161);
          }

          v58 = v201;
          if (!v201)
          {
            goto LABEL_248;
          }

          v162 = v202;
          v60 = v201;
          if (v202 == v201)
          {
            goto LABEL_247;
          }

          do
          {
            v164 = *--v162;
            v163 = v164;
            *v162 = 0;
            if (v164)
            {
              operator delete[](v163);
            }
          }

          while (v162 != v58);
          goto LABEL_246;
        }

        return v54;
      }

      v148 = mlir::IntegerAttr::getInt(&v187);
      v149 = mlir::arith::symbolizeAtomicRMWKind(v148);
      if (v150)
      {
        v151 = *this - 16 * ((v127 + 1) & 0xF);
        if (v127 > 5)
        {
          v151 = *this - 24 * (v127 - 5) - 96;
        }

        v152 = (*(v151 + 8) & 0xFFFFFFFFFFFFFFF8);
        switch(v149)
        {
          case 0uLL:
          case 3uLL:
          case 6uLL:
          case 9uLL:
            v128 = *(*v152 + 136);
            if (v128 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v128 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v128 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v128 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v128 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v128 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v128 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v128 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v128 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v128 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v128 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v128 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v128 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v128 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v128 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v128 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v128 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
            {
              goto LABEL_194;
            }

            goto LABEL_214;
          case 1uLL:
          case 0xAuLL:
          case 0xBuLL:
          case 0xCuLL:
            if (*(*v152 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
            {
              goto LABEL_214;
            }

            goto LABEL_194;
          case 2uLL:
            goto LABEL_194;
          case 4uLL:
          case 7uLL:
            if (*(*v152 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
            {
              v152 = 0;
            }

            Value = v152;
            if (!v152 || mlir::IntegerType::getSignedness(&Value) != 1)
            {
              goto LABEL_214;
            }

            goto LABEL_194;
          case 5uLL:
          case 8uLL:
            if (*(*v152 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
            {
              v152 = 0;
            }

            Value = v152;
            if (!v152 || mlir::IntegerType::getSignedness(&Value) != 2)
            {
              goto LABEL_214;
            }

LABEL_194:
            ++v127;
            if (++p_Value != v72)
            {
              continue;
            }

            goto LABEL_65;
          default:
LABEL_214:
            v190 = "result type cannot match reduction attribute";
            v193 = 259;
            mlir::OpState::emitOpError(this, &v190, &Value);
            v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
            if (Value)
            {
              mlir::InFlightDiagnostic::report(&Value);
            }

            if ((v206 & 1) == 0)
            {
              return v54;
            }

            if (v205 != &v206)
            {
              free(v205);
            }

            v153 = __p;
            if (__p)
            {
              v154 = v204;
              v155 = __p;
              if (v204 != __p)
              {
                do
                {
                  v154 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v154 - 1);
                }

                while (v154 != v153);
                v155 = __p;
              }

              v204 = v153;
              operator delete(v155);
            }

            v58 = v201;
            if (!v201)
            {
              goto LABEL_248;
            }

            v156 = v202;
            v60 = v201;
            if (v202 == v201)
            {
              goto LABEL_247;
            }

            do
            {
              v158 = *--v156;
              v157 = v158;
              *v156 = 0;
              if (v158)
              {
                operator delete[](v157);
              }
            }

            while (v156 != v58);
            break;
        }

        goto LABEL_246;
      }

      break;
    }

    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_307;
  }

LABEL_14:
  v186 = 257;
  p_Value = &Value;
  mlir::OpState::emitOpError(this, &v183, &Value);
  if (Value)
  {
    LODWORD(v190) = 3;
    v191 = "the number of region arguments (";
    v192 = 32;
    v9 = &v190;
    v10 = v197;
    if (v198 >= v199)
    {
      if (v197 <= &v190 && v197 + 24 * v198 > &v190)
      {
        v166 = &v190 - v197;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v198 + 1, 24);
        v10 = v197;
        v9 = (v197 + v166);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v198 + 1, 24);
        v9 = &v190;
        v10 = v197;
      }
    }

    v11 = &v10[24 * v198];
    v12 = *v9;
    *(v11 + 2) = v9[2];
    *v11 = v12;
    ++v198;
    if (Value)
    {
      v13 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
      if (v13)
      {
        v14 = v13 - 8;
      }

      else
      {
        v14 = 0;
      }

      v15 = *(v14 + 56) - *(v14 + 48);
      LODWORD(v190) = 5;
      v191 = (v15 >> 3);
      v16 = &v190;
      v17 = v197;
      if (v198 >= v199)
      {
        if (v197 <= &v190 && v197 + 24 * v198 > &v190)
        {
          v170 = &v190 - v197;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v198 + 1, 24);
          v17 = v197;
          v16 = (v197 + v170);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v198 + 1, 24);
          v16 = &v190;
          v17 = v197;
        }
      }

      v18 = &v17[24 * v198];
      v19 = *v16;
      *(v18 + 2) = v16[2];
      *v18 = v19;
      v20 = ++v198;
      if (Value)
      {
        LODWORD(v190) = 3;
        v191 = ") and the number of map groups for lower (";
        v192 = 42;
        v21 = &v190;
        v22 = v197;
        if (v20 < v199)
        {
LABEL_23:
          v23 = &v22[24 * v198];
          v24 = *v21;
          *(v23 + 2) = v21[2];
          *v23 = v24;
          ++v198;
          goto LABEL_24;
        }

        if (v197 > &v190 || v197 + 24 * v20 <= &v190)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v20 + 1, 24);
          v21 = &v190;
          v22 = v197;
          goto LABEL_23;
        }

LABEL_307:
        v174 = (&v190 - v22);
        llvm::SmallVectorBase<unsigned int>::grow_pod((p_Value + 3), v200, v20 + 1, 24);
        v22 = v197;
        v21 = &v174[v197];
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  v182 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v25 = mlir::DenseElementsAttr::getNumElements(&v182);
  if (Value)
  {
    LODWORD(v190) = 2;
    v191 = v25;
    v26 = &v190;
    v27 = v197;
    if (v198 >= v199)
    {
      if (v197 <= &v190 && v197 + 24 * v198 > &v190)
      {
        v167 = &v190 - v197;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v198 + 1, 24);
        v27 = v197;
        v26 = (v197 + v167);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v198 + 1, 24);
        v26 = &v190;
        v27 = v197;
      }
    }

    v28 = &v27[24 * v198];
    v29 = *v26;
    *(v28 + 2) = v26[2];
    *v28 = v29;
    v30 = ++v198;
    if (Value)
    {
      LODWORD(v190) = 3;
      v191 = ") and upper bound (";
      v192 = 19;
      v31 = &v190;
      v32 = v197;
      if (v30 >= v199)
      {
        if (v197 <= &v190 && v197 + 24 * v30 > &v190)
        {
          v171 = &v190 - v197;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v30 + 1, 24);
          v32 = v197;
          v31 = (v197 + v171);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v30 + 1, 24);
          v31 = &v190;
          v32 = v197;
        }
      }

      v33 = &v32[24 * v198];
      v34 = *v31;
      *(v33 + 2) = v31[2];
      *v33 = v34;
      ++v198;
    }
  }

  v181 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 96);
  v35 = mlir::DenseElementsAttr::getNumElements(&v181);
  if (Value)
  {
    LODWORD(v190) = 2;
    v191 = v35;
    v36 = &v190;
    v37 = v197;
    if (v198 >= v199)
    {
      if (v197 <= &v190 && v197 + 24 * v198 > &v190)
      {
        v168 = &v190 - v197;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v198 + 1, 24);
        v37 = v197;
        v36 = (v197 + v168);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v198 + 1, 24);
        v36 = &v190;
        v37 = v197;
      }
    }

    v38 = &v37[24 * v198];
    v39 = *v36;
    *(v38 + 2) = v36[2];
    *v38 = v39;
    v40 = ++v198;
    if (Value)
    {
      LODWORD(v190) = 3;
      v191 = "), and the number of steps (";
      v192 = 28;
      v41 = &v190;
      v42 = v197;
      if (v40 >= v199)
      {
        if (v197 <= &v190 && v197 + 24 * v40 > &v190)
        {
          v172 = &v190 - v197;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v40 + 1, 24);
          v42 = v197;
          v41 = (v197 + v172);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v40 + 1, 24);
          v41 = &v190;
          v42 = v197;
        }
      }

      v43 = &v42[24 * v198];
      v44 = *v41;
      *(v43 + 2) = v41[2];
      *v43 = v44;
      ++v198;
    }
  }

  mlir::affine::AffineParallelOp::getSteps(this, &v190);
  if (Value)
  {
    LODWORD(v187) = 5;
    v188 = v191;
    v45 = &v187;
    v46 = v197;
    if (v198 >= v199)
    {
      if (v197 <= &v187 && v197 + 24 * v198 > &v187)
      {
        v169 = &v187 - v197;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v198 + 1, 24);
        v46 = v197;
        v45 = (v197 + v169);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v198 + 1, 24);
        v45 = &v187;
        v46 = v197;
      }
    }

    v47 = &v46[24 * v198];
    v48 = *v45;
    *(v47 + 2) = v45[2];
    *v47 = v48;
    v49 = ++v198;
    if (Value)
    {
      LODWORD(v187) = 3;
      v188 = ") must all match";
      v189 = 16;
      v50 = &v187;
      v51 = v197;
      if (v49 >= v199)
      {
        if (v197 <= &v187 && v197 + 24 * v49 > &v187)
        {
          v173 = &v187 - v197;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v49 + 1, 24);
          v51 = v197;
          v50 = (v197 + v173);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v200, v49 + 1, 24);
          v50 = &v187;
          v51 = v197;
        }
      }

      v52 = &v51[24 * v198];
      v53 = *v50;
      *(v52 + 2) = v50[2];
      *v52 = v53;
      ++v198;
    }
  }

  v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (v190 != &v192)
  {
    free(v190);
  }

  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v206 == 1)
  {
    if (v205 != &v206)
    {
      free(v205);
    }

    v55 = __p;
    if (__p)
    {
      v56 = v204;
      v57 = __p;
      if (v204 != __p)
      {
        do
        {
          v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
        }

        while (v56 != v55);
        v57 = __p;
      }

      v204 = v55;
      operator delete(v57);
    }

    v58 = v201;
    if (!v201)
    {
      goto LABEL_248;
    }

    v59 = v202;
    v60 = v201;
    if (v202 == v201)
    {
LABEL_247:
      v202 = v58;
      operator delete(v60);
LABEL_248:
      if (v197 != v200)
      {
        free(v197);
      }

      return v54;
    }

    do
    {
      v62 = *--v59;
      v61 = v62;
      *v59 = 0;
      if (v62)
      {
        operator delete[](v61);
      }
    }

    while (v59 != v58);
LABEL_246:
    v60 = v201;
    goto LABEL_247;
  }

  return v54;
}

uint64_t mlir::affine::AffineValueMap::canonicalize(mlir::affine::AffineValueMap *this)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v2 = (this + 96);
  v16 = v18;
  v17 = 0x400000000;
  if (&v16 != (this + 96))
  {
    v3 = *(this + 26);
    if (v3)
    {
      if (v3 < 5)
      {
        v5 = v18;
        v4 = *(this + 26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, *(this + 26), 8);
        v4 = *(this + 26);
        if (!v4)
        {
LABEL_8:
          LODWORD(v17) = v3;
          goto LABEL_9;
        }

        v5 = v16;
      }

      memcpy(v5, *v2, 8 * v4);
      goto LABEL_8;
    }
  }

LABEL_9:
  AffineMap = mlir::affine::AffineValueMap::getAffineMap(this);
  composeAffineMapAndOperands(&AffineMap, &v16);
  v6 = mlir::affine::AffineValueMap::getAffineMap(this);
  v7 = AffineMap;
  if (AffineMap == v6)
  {
    v9 = v17;
    v8 = v16;
    if (v17 == *(this + 26))
    {
      if (!v17)
      {
LABEL_16:
        v11 = 0;
        if (v16 == v18)
        {
          return v11;
        }

        goto LABEL_19;
      }

      v10 = 0;
      while (*(v16 + v10) == *(*v2 + v10))
      {
        v10 += 8;
        if (8 * v17 == v10)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v8 = v16;
    v9 = v17;
  }

  mlir::ValueRange::ValueRange(v15, v8, v9);
  mlir::ValueRange::ValueRange(v14, 0, 0);
  mlir::affine::AffineValueMap::reset(this, v7, v15[0], v15[1], v14[0], v14[1]);
  v11 = 1;
  v8 = v16;
  if (v16 != v18)
  {
LABEL_19:
    free(v8);
  }

  return v11;
}

void printMinMaxBound(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, const void *a6, size_t a7)
{
  v8 = a5;
  v42 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v39 = a2;
  v40 = a4;
  v41 = a5;
  Value = mlir::AffineMapAttr::getValue(&v39);
  NumDims = mlir::AffineMap::getNumDims(&Value);
  v13 = v8 - NumDims;
  if (v8 >= NumDims)
  {
    v8 = NumDims;
  }

  if (NumDims)
  {
    v14 = mlir::ValueRange::offset_base(&v40, NumDims);
  }

  else
  {
    v14 = a4;
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v35, a3, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v38);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v33, a3, NumElements);
  if (v36 != v34)
  {
    v16 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v35, &__p);
      if (v16)
      {
        v17 = (*(*a1 + 16))(a1);
        v18 = v17[4];
        if (v17[3] - v18 > 1uLL)
        {
          *v18 = 8236;
          v17[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v17, ", ", 2uLL);
        }
      }

      if (v32 >= 0x41)
      {
        p_p = __p;
      }

      else
      {
        p_p = &__p;
      }

      v20 = *p_p;
      if (*p_p == 1)
      {
        Result = mlir::AffineMap::getResult(&Value, v16);
        (*(*a1 + 248))(a1, Result, a4, v8, v14, v13);
        if (v32 >= 0x41)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v22 = (*(*a1 + 16))(a1);
        v23 = v22[4];
        if (a7 <= v22[3] - v23)
        {
          if (a7)
          {
            memcpy(v23, a6, a7);
            v22[4] += a7;
          }
        }

        else
        {
          llvm::raw_ostream::write(v22, a6, a7);
        }

        v24 = (*(*a1 + 16))(a1);
        v25 = *(v24 + 4);
        if (v25 >= *(v24 + 3))
        {
          llvm::raw_ostream::write(v24, 40);
        }

        else
        {
          *(v24 + 4) = v25 + 1;
          *v25 = 40;
        }

        SliceMap = mlir::AffineMap::getSliceMap(&Value, v16, v20);
        v27 = mlir::AffineMapAttr::get(SliceMap);
        (*(*a1 + 240))(a1, v27, v40, v41);
        v28 = (*(*a1 + 16))(a1);
        v29 = *(v28 + 4);
        if (v29 >= *(v28 + 3))
        {
          llvm::raw_ostream::write(v28, 41);
          if (v32 >= 0x41)
          {
LABEL_31:
            if (__p)
            {
              operator delete[](__p);
            }
          }
        }

        else
        {
          *(v28 + 4) = v29 + 1;
          *v29 = 41;
          if (v32 >= 0x41)
          {
            goto LABEL_31;
          }
        }
      }

      v16 += v20;
      ++v36;
    }

    while (v36 != v34);
  }
}

BOOL mlir::affine::AffineParallelOp::parse(mlir::AsmParser *a1, mlir::Attribute *a2)
{
  v66[32] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  v64 = v66;
  v65 = 0x400000000;
  if (((*(*a1 + 768))(a1, &v64, 1, 0, 0) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0 || (parseAffineMapWithMinMax(a1, a2, 1) & 1) == 0 || (v49 = 257, ((*(*a1 + 400))(a1, "to", 2, &v45) & 1) == 0) || (parseAffineMapWithMinMax(a1, a2, 0) & 1) == 0)
  {
    v17 = 0;
    goto LABEL_19;
  }

  v44 = 0;
  v62[0] = v63;
  v62[1] = 0x400000000;
  v63[8] = 4;
  v60[0] = v61;
  v60[1] = 0x400000000;
  if (((*(*a1 + 408))(a1, "step", 4) & 1) == 0)
  {
    v57 = 1;
    llvm::SmallVector<long long,4u>::SmallVector(&v45, v65, &v57);
    I64ArrayAttr = mlir::Builder::getI64ArrayAttr(v4, v45, v46);
    mlir::OperationState::addAttribute(a2, "steps", 5, I64ArrayAttr);
    v20 = v45;
    if (v45 == &v47)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (((*(*a1 + 736))(a1, v60, &v44, "steps", 5, v62, 1) & 1) == 0)
  {
    v17 = 0;
    goto LABEL_42;
  }

  v57 = v59;
  v58 = 0x400000000;
  Value = mlir::AffineMapAttr::getValue(&v44);
  Results = mlir::AffineMap::getResults(&Value);
  if (!v8)
  {
    v15 = v58;
LABEL_63:
    v39 = mlir::Builder::getI64ArrayAttr(v4, v57, v15);
    mlir::OperationState::addAttribute(a2, "steps", 5, v39);
    v20 = v57;
    if (v57 == v59)
    {
LABEL_24:
      v45 = &v47;
      v46 = 0x400000000;
      if ((*(*a1 + 408))(a1, "reduce", 6))
      {
        if (((*(*a1 + 280))(a1) & 1) == 0)
        {
          goto LABEL_38;
        }

        v57 = a1;
        v58 = v4;
        v59[0] = &v45;
        if (((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::affine::AffineParallelOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v57, 0, 0) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      ArrayAttr = mlir::Builder::getArrayAttr(v4, v45, v46);
      mlir::OperationState::addAttribute(a2, "reductions", 10, ArrayAttr);
      if (((*(*a1 + 568))(a1, a2 + 64) & 1) == 0)
      {
        goto LABEL_38;
      }

      v22 = mlir::OperationState::addRegion(a2);
      v23 = v64;
      v24 = v65;
      if (v65)
      {
        v25 = v64;
        if (((v65 - 1) & 0x3FFFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_73;
        }

        v26 = ((v65 - 1) & 0x3FFFFFFFFFFFFFFLL) + 1;
        v25 = v64 + 64 * (v26 & 0x7FFFFFFFFFFFFFELL);
        v27 = (v64 + 96);
        v28 = v26 & 0x7FFFFFFFFFFFFFELL;
        do
        {
          *(v27 - 8) = IndexType;
          *v27 = IndexType;
          v27 += 16;
          v28 -= 2;
        }

        while (v28);
        if (v26 != (v26 & 0x7FFFFFFFFFFFFFELL))
        {
LABEL_73:
          do
          {
            *(v25 + 4) = IndexType;
            v25 += 64;
          }

          while (v25 != &v23[64 * v24]);
        }
      }

      if ((*(*a1 + 776))(a1, v22, v23) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112))
      {
        mlir::impl::ensureRegionTerminator(v22, v4, *a2, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineParallelOp>::buildTerminator);
        v17 = 1;
      }

      else
      {
LABEL_38:
        v17 = 0;
      }

      v29 = v45;
      if (v45 == &v47)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

LABEL_23:
    free(v20);
    goto LABEL_24;
  }

  v9 = Results;
  v10 = 8 * v8;
  while (1)
  {
    v11 = *v9;
    v45 = *v9;
    v12 = mlir::arith::FastMathFlagsAttr::getValue(&v45) == 5 ? v11 : 0;
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v45, v12);
    v42 = v45;
    if (!v45)
    {
      break;
    }

    LHS = mlir::AffineBinaryOpExpr::getLHS(&v42);
    v14 = v58;
    if (v58 >= HIDWORD(v58))
    {
      v16 = LHS;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v59, v58 + 1, 8);
      LHS = v16;
      v14 = v58;
    }

    *(v57 + 8 * v14) = LHS;
    v15 = v58 + 1;
    LODWORD(v58) = v58 + 1;
    ++v9;
    v10 -= 8;
    if (!v10)
    {
      goto LABEL_63;
    }
  }

  v30 = (*(*a1 + 16))(a1);
  v40 = "steps must be constant integers";
  v41 = 259;
  (*(*a1 + 24))(&v45, a1, v30, &v40);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
  if (v45)
  {
    mlir::InFlightDiagnostic::report(&v45);
  }

  if (v56)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v54;
      v33 = __p;
      if (v54 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v54 = v31;
      operator delete(v33);
    }

    v34 = v51;
    if (v51)
    {
      v35 = v52;
      v36 = v51;
      if (v52 != v51)
      {
        do
        {
          v38 = *--v35;
          v37 = v38;
          *v35 = 0;
          if (v38)
          {
            operator delete[](v37);
          }
        }

        while (v35 != v34);
        v36 = v51;
      }

      v52 = v34;
      operator delete(v36);
    }

    if (v48 != &v50)
    {
      free(v48);
    }
  }

  v29 = v57;
  if (v57 == v59)
  {
    goto LABEL_42;
  }

LABEL_40:
  free(v29);
LABEL_42:
  if (v60[0] != v61)
  {
    free(v60[0]);
  }

  if (v62[0] != v63)
  {
    free(v62[0]);
  }

LABEL_19:
  if (v64 != v66)
  {
    free(v64);
  }

  return v17;
}

uint64_t parseAffineMapWithMinMax(mlir::AsmParser *a1, mlir::Attribute *a2, int a3)
{
  v83[6] = *MEMORY[0x1E69E9840];
  v57 = a3;
  v56[0] = "__pseudo_bound_map";
  v56[1] = 18;
  if (a3)
  {
    v6 = "lowerBoundsMap";
  }

  else
  {
    v6 = "upperBoundsMap";
  }

  if (a3)
  {
    v7 = "lowerBoundsGroups";
  }

  else
  {
    v7 = "upperBoundsGroups";
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 304))(a1))
  {
    v8 = (*(*a1 + 32))(a1);
    EmptyAffineMap = mlir::Builder::getEmptyAffineMap(v8, v9);
    v11 = mlir::AffineMapAttr::get(EmptyAffineMap);
    Context = mlir::Attribute::getContext(a2);
    if (a3)
    {
      v13 = "lowerBoundsMap";
    }

    else
    {
      v13 = "upperBoundsMap";
    }

    LOWORD(v51) = 261;
    v47 = v13;
    v48 = 14;
    if (a3)
    {
      v14 = "lowerBoundsGroups";
    }

    else
    {
      v14 = "upperBoundsGroups";
    }

    v15 = mlir::StringAttr::get(Context, &v47);
    mlir::NamedAttribute::NamedAttribute(&v81, v15, v11);
    mlir::NamedAttrList::push_back(a2 + 112, v81, v82);
    v16 = (*(*a1 + 32))(a1);
    I32TensorAttr = mlir::Builder::getI32TensorAttr(v16, 0, 0);
    v18 = mlir::Attribute::getContext(a2);
    LOWORD(v51) = 261;
    v47 = v14;
    v48 = 17;
    v19 = mlir::StringAttr::get(v18, &v47);
    mlir::NamedAttribute::NamedAttribute(&v81, v19, I32TensorAttr);
    mlir::NamedAttrList::push_back(a2 + 112, v81, v82);
    return 1;
  }

  v81 = v83;
  v82 = 0x600000000;
  v78 = v80;
  v79 = 0x100000000;
  v75 = v77;
  v76 = 0x100000000;
  v72 = v74;
  v73 = 0xC00000000;
  v70[0] = v71;
  v70[1] = 0x100000000;
  v47 = a1;
  v48 = &v57;
  v49 = v70;
  v50 = v56;
  v51 = a2;
  v52 = &v81;
  v53 = &v78;
  v54 = &v75;
  v55 = &v72;
  {
    v45 = v7;
    if (v82)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = v81;
      v25 = 8 * v82;
      v26 = 1;
      do
      {
        v27 = v78[v26];
        v28 = *(v75 + v26 * 8);
        v67 = mlir::AffineExpr::shiftDims(&v24[v21], v27, v22, 0);
        v29 = mlir::AffineExpr::shiftSymbols(&v67, v28, v23, 0);
        v24 = v81;
        *&v81[v21] = v29;
        v22 += v27;
        v23 += v28;
        v21 += 8;
        v26 += 6;
      }

      while (v25 != v21);
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    v67 = v69;
    v68 = 0x600000000;
    v64 = v66;
    v65 = 0x600000000;
    v61 = v63;
    v62 = 0x600000000;
    v58 = v60;
    v59 = 0x600000000;
    if (deduplicateAndResolveOperands(a1, v78, v79, &v67, &v61, 6))
    {
      if (deduplicateAndResolveOperands(a1, v75, v76, &v64, &v58, 7))
      {
        llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(a2 + 16, v67, v67 + 8 * v68);
        llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(a2 + 16, v64, v64 + 8 * v65);
        v37 = (*(*a1 + 32))(a1);
        v43 = v81;
        v44 = v37;
        v42 = v82;
        v38 = mlir::AsmParser::getContext(a1);
        v46 = mlir::AffineMap::get(v22, v23, v43, v42, v38);
        v46 = mlir::AffineMap::replaceDimsAndSymbols(&v46, v61, v62, v58, v59, v68, v65);
        v39 = mlir::AffineMapAttr::get(v46);
        mlir::OperationState::addAttribute(a2, v6, 14, v39);
        v40 = mlir::Builder::getI32TensorAttr(v44, v72, v73);
        mlir::OperationState::addAttribute(a2, v45, 17, v40);
        v20 = 1;
        v41 = v58;
        if (v58 == v60)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v20 = 0;
        v41 = v58;
        if (v58 == v60)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      v20 = 0;
      v41 = v58;
      if (v58 == v60)
      {
LABEL_54:
        if (v61 != v63)
        {
          free(v61);
        }

        if (v64 != v66)
        {
          free(v64);
        }

        if (v67 != v69)
        {
          free(v67);
        }

        goto LABEL_24;
      }
    }

    free(v41);
    goto LABEL_54;
  }

  v20 = 0;
LABEL_24:
  if (v70[0] != v71)
  {
    free(v70[0]);
  }

  if (v72 != v74)
  {
    free(v72);
  }

  v30 = v75;
  if (v76)
  {
    v31 = (v75 + 48 * v76 - 48);
    v32 = -48 * v76;
    do
    {
      if (v31 + 2 != *v31)
      {
        free(*v31);
      }

      v31 -= 6;
      v32 += 48;
    }

    while (v32);
    v30 = v75;
  }

  if (v30 != v77)
  {
    free(v30);
  }

  v33 = v78;
  if (v79)
  {
    v34 = &v78[6 * v79 - 6];
    v35 = -48 * v79;
    do
    {
      if (v34 + 2 != *v34)
      {
        free(*v34);
      }

      v34 -= 6;
      v35 += 48;
    }

    while (v35);
    v33 = v78;
  }

  if (v33 != v80)
  {
    free(v33);
  }

  if (v81 != v83)
  {
    free(v81);
  }

  return v20;
}

uint64_t llvm::SmallVector<long long,4u>::SmallVector(uint64_t result, unint64_t a2, unint64_t *a3)
{
  v4 = (result + 16);
  *result = result + 16;
  *(result + 12) = 4;
  v5 = *a3;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    v6 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, v4, a2, 8);
    result = v6;
    v7 = *v6 + (a2 & 0xFFFFFFFFFFFFFFFCLL);
    v8 = a2 & 3;
    v9 = vdupq_n_s64(v5);
    v10 = *v6 + 1;
    v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v10[-1] = v9;
      *v10 = v9;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != a2)
    {
      do
      {
        *v7++ = v5;
        --v8;
      }

      while (v8);
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  v12 = vdupq_n_s64(a2 - 1);
  v13 = a2 + 1;
  v14 = vmovn_s64(vcgeq_u64(v12, xmmword_1E09700F0));
  if ((v14.i8[0] & 1) == 0)
  {
    v15 = v13 & 0xE;
    if ((v14.i8[4] & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  *v4 = v5;
  v15 = v13 & 0xE;
  if (v14.i8[4])
  {
LABEL_13:
    *(result + 24) = v5;
    if (v15 != 2)
    {
      goto LABEL_14;
    }

LABEL_6:
    *(result + 8) = a2;
    return result;
  }

LABEL_10:
  if (v15 == 2)
  {
    goto LABEL_6;
  }

LABEL_14:
  v16 = vmovn_s64(vcgtq_u64(v12, xmmword_1E0970220));
  if (v16.i8[0])
  {
    *(result + 32) = v5;
  }

  if ((v16.i8[4] & 1) == 0)
  {
    goto LABEL_6;
  }

  *(result + 40) = v5;
  *(result + 8) = a2;
  return result;
}

void mlir::affine::AffineVectorLoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v16 = a4;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  v12 = mlir::AffineMapAttr::get(a5);
  Context = mlir::Attribute::getContext(a2);
  v18 = 261;
  v17[0] = "map";
  v17[1] = 3;
  v14 = mlir::StringAttr::get(Context, v17);
  mlir::NamedAttribute::NamedAttribute(v19, v14, v12);
  mlir::NamedAttrList::push_back(a2 + 112, v19[0], v19[1]);
  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v15 + 1, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v15) = a3;
  ++*(a2 + 72);
}

void mlir::affine::AffineVectorLoadOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  mlir::Pattern::Pattern((v4 + 2), "affine.vector_load", 18, v24, a2, 0, 0);
  *v4 = &unk_1F5B15728;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v24 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>]";
  v25 = 123;
  v9 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
  if (v25 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v25;
  }

  v11 = &v24[v10];
  v12 = v25 - v10;
  if (v25 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v25 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
}

uint64_t mlir::affine::AffineVectorLoadOp::parse(uint64_t a1, uint64_t a2)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  v13 = 0;
  v14 = 0;
  memset(v12, 0, 24);
  v11 = 0;
  v15 = v17;
  v16 = 0x100000000;
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 736))(a1, &v15, &v11, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v14) && ((*(*a1 + 120))(a1) & 1) != 0 && mlir::AsmParser::parseType<mlir::VectorType>(a1, &v13) && ((*(*a1 + 728))(a1, v12, v14, a2 + 16))
  {
    if (!v16)
    {
LABEL_12:
      v9 = mlir::AsmParser::addTypeToList(a1, v13, a2 + 64);
      goto LABEL_14;
    }

    v7 = v15;
    v8 = 32 * v16;
    while (((*(*a1 + 728))(a1, v7, IndexType, a2 + 16) & 1) != 0)
    {
      v7 += 32;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_12;
      }
    }
  }

  v9 = 0;
LABEL_14:
  if (v15 != v17)
  {
    free(v15);
  }

  return v9 & 1;
}

BOOL mlir::AsmParser::parseType<mlir::VectorType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
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
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::affine::AffineVectorLoadOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 91);
    v8 = *this;
    if (!*(*this + 47))
    {
LABEL_9:
      v28.var0 = "map";
      v28.var1 = 3;
      InherentAttr = mlir::DictionaryAttr::get((v8 + 56), v28);
      goto LABEL_10;
    }
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 91;
    v8 = *this;
    if (!*(*this + 47))
    {
      goto LABEL_9;
    }
  }

  v27.var0 = "map";
  v27.var1 = 3;
  InherentAttr = mlir::Operation::getInherentAttr(v8, v27);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v11 = *this;
    v12 = InherentAttr;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v13 = *(v11 + 9);
      v14 = *(v11 + 17) - 1;
    }

    else
    {
      v13 = 0;
      v14 = -1;
    }

    mlir::ValueRange::ValueRange(&AttrDictionary, v13 + 32, v14);
    (*(*a2 + 240))(a2, v12, AttrDictionary, v25);
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 93);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = "map";
  v25 = 3;
  (*(*a2 + 192))(a2, Value, v18, &AttrDictionary, 1);
  v19 = (*(*a2 + 16))(a2);
  v20 = v19[4];
  if ((v19[3] - v20) > 2)
  {
    *(v20 + 2) = 32;
    *v20 = 14880;
    v19[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v19, " : ", 3uLL);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v21 = (*(*a2 + 16))(a2);
  v22 = v21[4];
  if (v21[3] - v22 > 1uLL)
  {
    *v22 = 8236;
    v21[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, ", ", 2uLL);
  }

  return (*(*a2 + 32))(a2, *(*this - 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t verifyVectorMemoryOp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a2;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v18);
  if (RHS == mlir::AffineBinaryOpExpr::getRHS(&v17))
  {
    return 1;
  }

  v15 = "requires memref and vector types of the same elemental type";
  v16 = 259;
  mlir::Operation::emitOpError(a1, &v15, v19);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v25;
      v8 = __p;
      if (v25 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v25 = v6;
      operator delete(v8);
    }

    v9 = v22;
    if (v22)
    {
      v10 = v23;
      v11 = v22;
      if (v23 != v22)
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
        v11 = v22;
      }

      v23 = v9;
      operator delete(v11);
    }

    if (v20 != &v21)
    {
      free(v20);
    }
  }

  return v5;
}

void mlir::affine::AffineVectorStoreOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  mlir::Pattern::Pattern((v4 + 2), "affine.vector_store", 19, v24, a2, 0, 0);
  *v4 = &unk_1F5B157C8;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v24 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>]";
  v25 = 124;
  v9 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
  if (v25 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v25;
  }

  v11 = &v24[v10];
  v12 = v25 - v10;
  if (v25 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v25 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
}

uint64_t mlir::affine::AffineVectorStoreOp::parse(uint64_t a1, uint64_t a2)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  v16 = 0;
  v17 = 0;
  memset(v15, 0, 24);
  memset(v14, 0, 24);
  v13 = 0;
  v18 = v20;
  v19 = 0x100000000;
  if ((*(*a1 + 704))(a1, v15, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 704))(a1, v14, 1) & 1) != 0 && ((*(*a1 + 736))(a1, &v18, &v13, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v17) && ((*(*a1 + 120))(a1) & 1) != 0 && mlir::AsmParser::parseType<mlir::VectorType>(a1, &v16) && ((*(*a1 + 728))(a1, v15, v16, a2 + 16) & 1) != 0 && ((*(*a1 + 728))(a1, v14, v17, a2 + 16))
  {
    if (!v19)
    {
      v9 = 1;
      v11 = v18;
      if (v18 == v20)
      {
        return v9 & 1;
      }

      goto LABEL_18;
    }

    v7 = v18;
    v8 = 32 * v19 - 32;
    do
    {
      v9 = (*(*a1 + 728))(a1, v7, IndexType, a2 + 16);
      if ((v9 & 1) == 0)
      {
        break;
      }

      v7 += 32;
      v10 = v8;
      v8 -= 32;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  v11 = v18;
  if (v18 != v20)
  {
LABEL_18:
    free(v11);
  }

  return v9 & 1;
}

uint64_t mlir::affine::AffineVectorStoreOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 8236;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, ", ", 2uLL);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 91);
    v10 = *this;
    if (!*(*this + 47))
    {
LABEL_12:
      v30.var0 = "map";
      v30.var1 = 3;
      InherentAttr = mlir::DictionaryAttr::get((v10 + 56), v30);
      goto LABEL_13;
    }
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 91;
    v10 = *this;
    if (!*(*this + 47))
    {
      goto LABEL_12;
    }
  }

  v29.var0 = "map";
  v29.var1 = 3;
  InherentAttr = mlir::Operation::getInherentAttr(v10, v29);
  if ((v12 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v13 = *this;
    v14 = InherentAttr;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v15 = *(v13 + 9);
      v16 = *(v13 + 17) - 2;
    }

    else
    {
      v15 = 0;
      v16 = -2;
    }

    mlir::ValueRange::ValueRange(&AttrDictionary, v15 + 64, v16);
    (*(*a2 + 240))(a2, v14, AttrDictionary, v27);
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 93);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = "map";
  v27 = 3;
  (*(*a2 + 192))(a2, Value, v20, &AttrDictionary, 1);
  v21 = (*(*a2 + 16))(a2);
  v22 = v21[4];
  if ((v21[3] - v22) > 2)
  {
    *(v22 + 2) = 32;
    *v22 = 14880;
    v21[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v21, " : ", 3uLL);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = (*(*a2 + 16))(a2);
  v24 = v23[4];
  if (v23[3] - v24 > 1uLL)
  {
    *v24 = 8236;
    v23[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v23, ", ", 2uLL);
  }

  return (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::affine::AffineDelinearizeIndexOp::inferReturnTypes(mlir::IndexType *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51 = *MEMORY[0x1E69E9840];
  v42 = a6;
  v43[0] = 0;
  v44 = 0;
  v45 = a9;
  v46 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v42);
    if (v44 == 1)
    {
      v44 = 0;
    }

    mlir::OperationName::OperationName(v43, "affine.delinearize_index", 24, Context);
    v44 = 1;
  }

  v47 = a4;
  v48 = a5;
  v49 = a4;
  v50 = 1;
  mlir::ValueRange::offset_base(&v49, 1);
  v15 = a5 - v50;
  v17 = mlir::IndexType::get(a1, v16);
  v18 = v17;
  if (v15 <= *(a11 + 12))
  {
    v26 = *a11;
    v25 = (a11 + 8);
    v27 = *(a11 + 8);
    if (v27 >= v15)
    {
      v28 = v15;
    }

    else
    {
      v28 = *(a11 + 8);
    }

    if (v28)
    {
      if (v28 < 4)
      {
        v29 = *a11;
        v30 = v28;
        do
        {
LABEL_21:
          *v29++ = v17;
          --v30;
        }

        while (v30);
        goto LABEL_22;
      }

      v29 = &v26[v28 & 0xFFFFFFFC];
      v30 = v28 & 3;
      v31 = vdupq_n_s64(v17);
      v32 = (v26 + 2);
      v33 = v28 & 0xFFFFFFFC;
      do
      {
        v32[-1] = v31;
        *v32 = v31;
        v32 += 2;
        v33 -= 4;
      }

      while (v33);
      if (v28 != (v28 & 0xFFFFFFFC))
      {
        goto LABEL_21;
      }
    }

LABEL_22:
    v34 = v15 - v27;
    if (v15 <= v27)
    {
      goto LABEL_29;
    }

    v35 = &v26[v27];
    if (v34 >= 4)
    {
      v36 = v35 + (v34 & 0xFFFFFFFFFFFFFFFCLL);
      v37 = v34 & 3;
      v38 = vdupq_n_s64(v17);
      v39 = v35 + 1;
      v40 = v34 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v39[-1] = v38;
        *v39 = v38;
        v39 += 2;
        v40 -= 4;
      }

      while (v40);
      if (v34 == (v34 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_29;
      }
    }

    else
    {
      v36 = &v26[v27];
      v37 = v15 - v27;
    }

    do
    {
      *v36++ = v17;
      --v37;
    }

    while (v37);
    goto LABEL_29;
  }

  *(a11 + 8) = 0;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v15, 8);
  v19 = *a11;
  v20 = *a11;
  v21 = v15;
  if (v15 < 4)
  {
    goto LABEL_32;
  }

  v20 = v19 + (v15 & 0xFFFFFFFFFFFFFFFCLL);
  v21 = v15 & 3;
  v22 = vdupq_n_s64(v18);
  v23 = v19 + 1;
  v24 = v15 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v23[-1] = v22;
    *v23 = v22;
    v23 += 2;
    v24 -= 4;
  }

  while (v24);
  if (v15 != (v15 & 0xFFFFFFFFFFFFFFFCLL))
  {
LABEL_32:
    do
    {
      *v20++ = v18;
      --v21;
    }

    while (v21);
  }

  v25 = (a11 + 8);
LABEL_29:
  *v25 = v15;
  return 1;
}

uint64_t mlir::affine::AffineDelinearizeIndexOp::verify(mlir::affine::AffineDelinearizeIndexOp *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    goto LABEL_26;
  }

  v2 = *(v1 + 68);
  if (v2 != 1)
  {
    if (v2 - 1 == *(v1 + 36))
    {
      return 1;
    }

LABEL_26:
    mlir::affine::AffineDelinearizeIndexOp::verify(this, v15);
    return v15[0];
  }

  v13 = "basis should not be empty";
  v14 = 259;
  mlir::OpState::emitOpError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (*v15)
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            operator delete[](v10);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

void mlir::affine::AffineDelinearizeIndexOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 1);
  mlir::Pattern::Pattern((v4 + 2), "affine.delinearize_index", 24, v44, a2, 0, 0);
  *v4 = &unk_1F5B15868;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v44 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::DropDelinearizeOfSingleLoop]";
  v45 = 100;
  v9 = llvm::StringRef::find(&v44, "DesiredTypeName = ", 0x12uLL, 0);
  if (v45 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v45;
  }

  v11 = &v44[v10];
  v12 = v45 - v10;
  if (v45 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v45 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    goto LABEL_54;
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      goto LABEL_55;
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 1);
  mlir::Pattern::Pattern((v24 + 2), "affine.delinearize_index", 24, v44, a2, 0, 0);
  *v24 = &unk_1F5B15908;
  if (*(v24 + 9))
  {
    v25 = v24[22];
    if (v25 <= v24[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 20), (v24 + 24), v25, 16);
    v24[22] = v24[22];
    v27 = a1[2];
    v26 = a1[3];
    if (v27 < v26)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  v44 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::DropUnitExtentBasis]";
  v45 = 92;
  v29 = llvm::StringRef::find(&v44, "DesiredTypeName = ", 0x12uLL, 0);
  if (v45 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v45;
  }

  v31 = &v44[v30];
  v32 = v45 - v30;
  if (v45 - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = v45 - v30;
  }

  v34 = &v31[v33];
  v35 = v32 - v33;
  if (v35 >= v35 - 1)
  {
    --v35;
  }

  *(v24 + 8) = v34;
  *(v24 + 9) = v35;
  v25 = v24[22];
  if (v25 > v24[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v24[22] = v25;
  v27 = a1[2];
  v26 = a1[3];
  if (v27 < v26)
  {
LABEL_30:
    *v27 = v24;
    v28 = v27 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v36 = a1[1];
  v37 = v27 - v36;
  v38 = (v27 - v36) >> 3;
  v39 = v38 + 1;
  if ((v38 + 1) >> 61)
  {
LABEL_54:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v40 = v26 - v36;
  if (v40 >> 2 > v39)
  {
    v39 = v40 >> 2;
  }

  if (v40 >= 0x7FFFFFFFFFFFFFF8)
  {
    v41 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v41 = v39;
  }

  if (v41)
  {
    if (!(v41 >> 61))
    {
      v42 = operator new(8 * v41);
      goto LABEL_51;
    }

LABEL_55:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v42 = 0;
LABEL_51:
  v43 = &v42[8 * v38];
  *v43 = v24;
  v28 = v43 + 8;
  memcpy(v42, v36, v37);
  a1[1] = v42;
  a1[2] = v28;
  a1[3] = &v42[8 * v41];
  if (v36)
  {
    operator delete(v36);
  }

LABEL_53:
  a1[2] = v28;
}

uint64_t mlir::affine::AffineApplyOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v56.var0 = "map";
  v56.var1 = 3;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 48;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v25 = *--v22;
      v24 = v25;
      *v22 = 0;
      if (v25)
      {
        operator delete[](v24);
      }
    }

    while (v22 != v21);
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::affine::AffineApplyOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "map", 3, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t mlir::affine::AffineApplyOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::affine::AffineApplyOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::affine::AffineApplyOp::build(mlir::IndexType **a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v12[0] = a3;
  v12[1] = a4;
  IndexType = mlir::Builder::getIndexType(a1, a2);
  v11 = mlir::AffineMap::inferFromExprList(v12, 1uLL, *a1, &v13);
  mlir::affine::AffineApplyOp::build(v11, a2, IndexType, *v13, a5, a6);
  if (v13 != v14)
  {
    free(v13);
  }
}

void mlir::affine::AffineApplyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  v9 = mlir::AffineMapAttr::get(a4);
  v10 = v9;
  v11 = *(a2 + 256);
  if (v11)
  {
    *v11 = v9;
    v12 = *(a2 + 72);
    if (v12 >= *(a2 + 76))
    {
LABEL_3:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v12 + 1, 8);
      LODWORD(v12) = *(a2 + 72);
    }
  }

  else
  {
    v13 = operator new(8uLL);
    *v13 = 0;
    *(a2 + 256) = v13;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v15;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v14;
    {
      mlir::affine::AffineApplyOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = v10;
    v12 = *(a2 + 72);
    if (v12 >= *(a2 + 76))
    {
      goto LABEL_3;
    }
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
}

void mlir::affine::AffineApplyOp::build(mlir::IndexType **a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v25[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a4, a5);
  v8 = mlir::AffineMapAttr::get(a3);
  v9 = *(a2 + 256);
  if (!v9)
  {
    v10 = operator new(8uLL);
    *v10 = 0;
    *(a2 + 256) = v10;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::affine::AffineApplyOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v9 = *(a2 + 256);
  }

  *v9 = v8;
  __src = v25;
  v24 = 0x200000000;
  v11 = *a1;
  mlir::ValueRange::ValueRange(&v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v21, *(a2 + 224), *(a2 + 232));
  if (v24 != 1)
  {
    if (!v24)
    {
      if (HIDWORD(v24))
      {
        v14 = 0;
LABEL_10:
        bzero(__src + 8 * v14, 8 - 8 * v14);
        goto LABEL_11;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v25, 1uLL, 8);
      v14 = v24;
      if (v24 != 1)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    LODWORD(v24) = 1;
  }

  v20 = v11;
  IndexType = mlir::Builder::getIndexType(&v20, v13);
  v16 = __src;
  *__src = IndexType;
  v17 = v24;
  v18 = *(a2 + 72);
  v19 = v18 + v24;
  if (v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v19, 8);
    LODWORD(v18) = *(a2 + 72);
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v18), v16, 8 * v17);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t mlir::affine::AffineApplyOp::verifyInvariantsImpl(mlir::affine::AffineApplyOp *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    *v20 = v2;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v3, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) & 1) == 0)
    {
      return 0;
    }

    v4 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v5 = *(v4 + 68);
      if (v5)
      {
        v6 = 0;
        v7 = *(v4 + 72) + 24;
        while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v6) & 1) != 0)
        {
          ++v6;
          v7 += 32;
          if (v5 == v6)
          {
            v4 = *this;
            goto LABEL_9;
          }
        }

        return 0;
      }
    }

LABEL_9:
    mlir::affine::AffineApplyOp::verifyInvariantsImpl(v4);
    return v20[0];
  }

  else
  {
    v18 = "requires attribute 'map'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (*v20)
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v26;
        v11 = __p;
        if (v26 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v26 = v9;
        operator delete(v11);
      }

      v12 = v23;
      if (v23)
      {
        v13 = v24;
        v14 = v23;
        if (v24 != v23)
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
          v14 = v23;
        }

        v24 = v12;
        operator delete(v14);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v8;
}

void mlir::affine::AffineDelinearizeIndexOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v20 = a3;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  __src = v25;
  v24 = 0x200000000;
  v9 = *a1;
  mlir::ValueRange::ValueRange(v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v21, *(a2 + 224), *(a2 + 232));
  if ((mlir::affine::AffineDelinearizeIndexOp::inferReturnTypes(v9, v12, v13, v22[0], v22[1], Dictionary, v14, v15, v21[0], v21[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v16 = __src;
  v17 = v24;
  v18 = *(a2 + 72);
  v19 = v18 + v24;
  if (v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v19, 8);
    LODWORD(v18) = *(a2 + 72);
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v18), v16, 8 * v17);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t mlir::affine::AffineDelinearizeIndexOp::verifyInvariantsImpl(mlir::affine::AffineDelinearizeIndexOp *this)
{
  if (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    v2 = *this;
    if ((*(*this + 46) & 0x80) == 0)
    {
      v4 = -1;
      v5 = 32;
LABEL_5:
      v6 = v5 + 24;
      v7 = 1;
      while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v6 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7) & 1) != 0)
      {
        ++v7;
        v6 += 32;
        if (!--v4)
        {
          v2 = *this;
          goto LABEL_9;
        }
      }

      return 0;
    }

    v3 = *(v2 + 68);
    v4 = v3 - 1;
    if (v3 != 1)
    {
      v5 = *(v2 + 72) + 32;
      goto LABEL_5;
    }

LABEL_9:
    v8 = *(v2 + 36);
    v9 = v2 - 16;
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (!v8)
    {
      return 1;
    }

    v11 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, v11);
      if ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, v11) & 1) == 0)
      {
        break;
      }

      if (v8 == ++v11)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t mlir::affine::AffineDelinearizeIndexOp::parse(uint64_t a1, uint64_t a2)
{
  v21[16] = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v19 = v21;
  v20 = 0x400000000;
  v16 = &v18;
  v17 = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
  {
    goto LABEL_15;
  }

  v15 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, v14) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_15;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v19, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_15;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((mlir::AsmParser::parseTypeList(a1, &v16) & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  mlir::OperationState::addTypes(a2, v16, v17);
  if (((*(*a1 + 728))(a1, v12, IndexType, a2 + 16) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v20)
  {
    v7 = v19;
    v8 = 32 * v20;
    while (((*(*a1 + 728))(a1, v7, IndexType, a2 + 16) & 1) != 0)
    {
      v7 += 32;
      v9 = 1;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    v9 = 0;
LABEL_16:
    v10 = v16;
    if (v16 != &v18)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v9 = 1;
  v10 = v16;
  if (v16 != &v18)
  {
LABEL_17:
    free(v10);
  }

LABEL_18:
  if (v19 != v21)
  {
    free(v19);
  }

  return v9;
}

BOOL mlir::affine::AffineForOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v87 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v71 = v6;
  if (!v6)
  {
    a3(&v75, a4);
    if (v75)
    {
      v72 = 3;
      v73 = "expected DictionaryAttr to set properties";
      v74 = 41;
      v26 = &v72;
      v27 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v64 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v27 = v77;
          v26 = (v77 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v26 = &v72;
          v27 = v77;
        }
      }

      v28 = &v27[24 * v78];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v78;
      if (v75)
      {
        mlir::InFlightDiagnostic::report(&v75);
      }
    }

    if (v86 != 1)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v84;
      v32 = __p;
      if (v84 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v84 = v30;
      operator delete(v32);
    }

    v21 = v81;
    if (!v81)
    {
      goto LABEL_70;
    }

    v33 = v82;
    v23 = v81;
    if (v82 == v81)
    {
LABEL_69:
      v82 = v21;
      operator delete(v23);
LABEL_70:
      if (v77 != v80)
      {
        free(v77);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
LABEL_68:
    v23 = v81;
    goto LABEL_69;
  }

  v88.var0 = "lowerBoundMap";
  v88.var1 = 13;
  v8 = mlir::DictionaryAttr::get(&v71, v88);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v9 = v8;
      a3(&v75, a4);
      if (v75)
      {
        v72 = 3;
        v74 = 58;
        v10 = &v72;
        v11 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v65 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v11 = v77;
            v10 = (v77 + v65);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v10 = &v72;
            v11 = v77;
          }
        }

        v12 = &v11[24 * v78];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v78;
        if (v75)
        {
          v14 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v9);
          v15 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v66 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v15 = v77;
              v14 = (v77 + v66);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v14 = &v72;
              v15 = v77;
            }
          }

          v16 = &v15[24 * v78];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if ((v86 & 1) == 0)
      {
        return 0;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v84;
        v20 = __p;
        if (v84 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v84 = v18;
        operator delete(v20);
      }

      v21 = v81;
      if (!v81)
      {
        goto LABEL_70;
      }

      v22 = v82;
      v23 = v81;
      if (v82 == v81)
      {
        goto LABEL_69;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          operator delete[](v24);
        }
      }

      while (v22 != v21);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v89.var0 = "step";
  v89.var1 = 4;
  v36 = mlir::DictionaryAttr::get(&v71, v89);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v37 = v36;
      a3(&v75, a4);
      if (v75)
      {
        v72 = 3;
        v74 = 49;
        v38 = &v72;
        v39 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v67 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v39 = v77;
            v38 = (v77 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v38 = &v72;
            v39 = v77;
          }
        }

        v40 = &v39[24 * v78];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v78;
        if (v75)
        {
          v42 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v37);
          v43 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v68 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v43 = v77;
              v42 = (v77 + v68);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v42 = &v72;
              v43 = v77;
            }
          }

          v44 = &v43[24 * v78];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if ((v86 & 1) == 0)
      {
        return 0;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v84;
        v48 = __p;
        if (v84 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v84 = v46;
        operator delete(v48);
      }

      v21 = v81;
      if (!v81)
      {
        goto LABEL_70;
      }

      v49 = v82;
      v23 = v81;
      if (v82 == v81)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          operator delete[](v50);
        }
      }

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v90.var0 = "upperBoundMap";
  v90.var1 = 13;
  v52 = mlir::DictionaryAttr::get(&v71, v90);
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v53 = v52;
      a3(&v75, a4);
      if (v75)
      {
        v72 = 3;
        v74 = 58;
        v54 = &v72;
        v55 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v69 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v55 = v77;
            v54 = (v77 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v54 = &v72;
            v55 = v77;
          }
        }

        v56 = &v55[24 * v78];
        v57 = *v54;
        *(v56 + 2) = *(v54 + 2);
        *v56 = v57;
        ++v78;
        if (v75)
        {
          v58 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v53);
          v59 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v70 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v59 = v77;
              v58 = (v77 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v58 = &v72;
              v59 = v77;
            }
          }

          v60 = &v59[24 * v78];
          v61 = *v58;
          *(v60 + 2) = *(v58 + 2);
          *v60 = v61;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if (v86 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v76);
      }

      return 0;
    }

    a1[2] = v52;
  }

  v91.var0 = "operandSegmentSizes";
  v91.var1 = 19;
  v62 = mlir::DictionaryAttr::get(&v71, v91);
  if (!v62)
  {
    v92.var0 = "operand_segment_sizes";
    v92.var1 = 21;
    v62 = mlir::DictionaryAttr::get(&v71, v92);
    if (!v62)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 3, 3, v62, a3, a4) & 1) != 0;
}

uint64_t mlir::affine::AffineForOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v39[6] = *MEMORY[0x1E69E9840];
  v36 = a1;
  v37 = v39;
  v38 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v36, "lowerBoundMap", 13, *a2);
    v6 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v30 = NamedAttr;
      v31 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v5 = v31;
      NamedAttr = v30;
      v6 = v38;
    }

    v7 = (v37 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v38) = v38 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v36, "step", 4, v8);
    v11 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v32 = v9;
      v33 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v10 = v33;
      v9 = v32;
      v11 = v38;
    }

    v12 = (v37 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v38) = v38 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v36, "upperBoundMap", 13, v13);
    v16 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v34 = v14;
      v35 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v15 = v35;
      v14 = v34;
      v16 = v38;
    }

    v17 = (v37 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v38) = v38 + 1;
  }

  v18 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 3);
  v19 = mlir::Builder::getNamedAttr(&v36, "operandSegmentSizes", 19, v18);
  v21 = v38;
  if (v38 >= HIDWORD(v38))
  {
    v28 = v19;
    v29 = v20;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
    v20 = v29;
    v19 = v28;
    v21 = v38;
  }

  v22 = (v37 + 16 * v21);
  *v22 = v19;
  v22[1] = v20;
  v23 = __CFADD__(v38, 1);
  v24 = (v38 + 1);
  LODWORD(v38) = v38 + 1;
  if (v23)
  {
    DictionaryAttr = 0;
    v26 = v37;
    if (v37 == v39)
    {
      return DictionaryAttr;
    }

    goto LABEL_20;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v36, v37, v24);
  v26 = v37;
  if (v37 != v39)
  {
LABEL_20:
    free(v26);
  }

  return DictionaryAttr;
}

uint64_t mlir::affine::AffineForOp::getInherentAttr(uint64_t *a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 18)
  {
    if (__n == 19)
    {
      if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return 0;
      }
    }

    else if (__n != 21 || memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return 0;
    }

    return mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 3, 3);
  }

  if (__n == 4)
  {
    if (!memcmp(__s1, "step", 4uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 13)
  {
    return 0;
  }

  if (*__s1 != 0x756F427265776F6CLL || *(__s1 + 5) != 0x70614D646E756F42)
  {
    if (!memcmp(__s1, "upperBoundMap", 0xDuLL))
    {
      return a2[2];
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::affine::AffineForOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
      v8 = result ? a4 : 0;
      v12 = v8;
      if (v8)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v12);
        if (result == 3)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v12);
          if (v9)
          {
            return memmove(v5 + 3, result, 4 * v9);
          }
        }
      }
    }
  }

  else if (a3 == 4)
  {
    result = memcmp(__s1, "step", 4uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        v5[1] = v7;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else if (a3 == 13)
  {
    if (*__s1 == 0x756F427265776F6CLL && *(__s1 + 5) == 0x70614D646E756F42)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }

        *result = v10;
      }

      else
      {
        *result = 0;
      }
    }

    else
    {
      result = memcmp(__s1, "upperBoundMap", 0xDuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
          {
            v11 = a4;
          }

          else
          {
            v11 = 0;
          }

          v5[2] = v11;
        }

        else
        {
          v5[2] = 0;
        }
      }
    }
  }

  return result;
}

BOOL mlir::affine::AffineForOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v8, "lowerBoundMap", 0xD, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(v9, "step", 4, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v10, "upperBoundMap", 0xD, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(uint64_t a1, void *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v34 = a1;
    v7 = a4;
    v8 = a5;
    Value = mlir::AffineMapAttr::getValue(&v34);
    a5 = v8;
    a4 = v7;
    if (*(*Value + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      return 1;
    }
  }

  a4(&v34, a5);
  if (v34)
  {
    LODWORD(v30) = 3;
    v31 = "attribute '";
    v32 = 11;
    v10 = &v30;
    v11 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v30 && v36 + 24 * v37 > &v30)
      {
        v28 = &v30 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v11 = v36;
        v10 = v36 + v28;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v10 = &v30;
        v11 = v36;
      }
    }

    v12 = &v11[24 * v37];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v37;
    if (v34)
    {
      v33 = 261;
      v30 = a2;
      v31 = a3;
      mlir::Diagnostic::operator<<(&v35, &v30);
      if (v34)
      {
        LODWORD(v30) = 3;
        v31 = "' failed to satisfy constraint: index attribute";
        v32 = 47;
        v14 = &v30;
        v15 = v36;
        if (v37 >= v38)
        {
          if (v36 <= &v30 && v36 + 24 * v37 > &v30)
          {
            v29 = &v30 - v36;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
            v15 = v36;
            v14 = v36 + v29;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
            v14 = &v30;
            v15 = v36;
          }
        }

        v16 = &v15[24 * v37];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v37;
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
  if (v34)
  {
    mlir::InFlightDiagnostic::report(&v34);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v43;
      v21 = __p;
      if (v43 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v43 = v19;
      operator delete(v21);
    }

    v22 = v40;
    if (v40)
    {
      v23 = v41;
      v24 = v40;
      if (v41 != v40)
      {
        do
        {
          v26 = *--v23;
          v25 = v26;
          *v23 = 0;
          if (v26)
          {
            operator delete[](v25);
          }
        }

        while (v23 != v22);
        v24 = v40;
      }

      v41 = v22;
      operator delete(v24);
    }

    if (v36 != v39)
    {
      free(v36);
    }
  }

  return v18;
}

BOOL mlir::affine::AffineForOp::readProperties(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 256);
  if (v3)
  {
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, *(a2 + 256)) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x28uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(v5 + 8) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = v17;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = v17;
    {
      mlir::affine::AffineForOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3) & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v19 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v19))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v19) >= 4)
    {
      v17[0] = "size mismatch for operand/result_segment_size";
      v18 = 259;
      (*(*a1 + 16))(v20, a1, v17);
      if (v20[0])
      {
        mlir::InFlightDiagnostic::report(v20);
      }

      if (v28 == 1)
      {
        if (v27 != &v28)
        {
          free(v27);
        }

        v6 = __p;
        if (__p)
        {
          v7 = v26;
          v8 = __p;
          if (v26 != __p)
          {
            do
            {
              v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
            }

            while (v7 != v6);
            v8 = __p;
          }

          v26 = v6;
          operator delete(v8);
        }

        v9 = v23;
        if (v23)
        {
          v10 = v24;
          v11 = v23;
          if (v24 != v23)
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
            v11 = v23;
          }

          v24 = v9;
          operator delete(v11);
        }

        if (v21 != &v22)
        {
          free(v21);
        }
      }

      return 0;
    }

    v14 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19);
    if (v15)
    {
      memmove(v3 + 3, v14, 4 * v15);
    }
  }

  return (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 1) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3 + 2) & 1) != 0 && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 3) & 1) != 0);
}

uint64_t mlir::affine::AffineForOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = (v4 + 64);
  (*(*a2 + 16))(a2, v6);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, v5 + 3, 3);
    (*(*a2 + 16))(a2, v8);
  }

  (*(*a2 + 16))(a2, *(v5 + 1));
  (*(*a2 + 16))(a2, *(v5 + 2));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, v5 + 6, 3);
  }

  return result;
}

uint64_t mlir::affine::AffineForOp::verifyInvariantsImpl(mlir::affine::AffineForOp *this)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (!v4)
  {
    v33[0] = "requires attribute 'lowerBoundMap'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (*v35)
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v41;
      v11 = __p;
      if (v41 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v41 = v9;
      operator delete(v11);
    }

    v12 = v38;
    if (v38)
    {
      v13 = v39;
      v14 = v38;
      if (v39 == v38)
      {
        goto LABEL_57;
      }

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
LABEL_56:
      v14 = v38;
LABEL_57:
      v39 = v12;
      operator delete(v14);
    }

LABEL_58:
    v31 = v36;
    if (v36 == v37)
    {
      return v8;
    }

    goto LABEL_63;
  }

  v5 = *(v3 + 8);
  if (!v5)
  {
    v33[0] = "requires attribute 'step'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (*v35)
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v41;
      v19 = __p;
      if (v41 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v41 = v17;
      operator delete(v19);
    }

    v12 = v38;
    if (v38)
    {
      v20 = v39;
      v14 = v38;
      if (v39 == v38)
      {
        goto LABEL_57;
      }

      do
      {
        v22 = *--v20;
        v21 = v22;
        *v20 = 0;
        if (v22)
        {
          operator delete[](v21);
        }
      }

      while (v20 != v12);
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    *v35 = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v2, "lowerBoundMap", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    *v35 = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v6, "upperBoundMap", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    *v35 = *this;
    if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(v5, "step", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    mlir::affine::AffineForOp::verifyInvariantsImpl();
    return v35[0];
  }

  v33[0] = "requires attribute 'upperBoundMap'";
  v34 = 259;
  mlir::OpState::emitOpError(this, v33, v35);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (*v35)
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v41;
      v25 = __p;
      if (v41 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v41 = v23;
      operator delete(v25);
    }

    v26 = v38;
    if (v38)
    {
      v27 = v39;
      v28 = v38;
      if (v39 != v38)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            operator delete[](v29);
          }
        }

        while (v27 != v26);
        v28 = v38;
      }

      v39 = v26;
      operator delete(v28);
    }

    v31 = v36;
    if (v36 != v37)
    {
LABEL_63:
      free(v31);
    }
  }

  return v8;
}

uint64_t mlir::affine::AffineLoadOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::affine::AffineLoadOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, *(a2 + 256)) & 1;
}

BOOL mlir::affine::AffineLoadOp::verifyInvariantsImpl(mlir::affine::AffineLoadOp *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v25[0] = v2;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v3, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1) == 0 || (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
    {
      return 0;
    }

    v4 = *this;
    if ((*(*this + 46) & 0x80) == 0)
    {
      v6 = -1;
      v7 = 32;
LABEL_7:
      v8 = v7 + 24;
      v9 = 1;
      while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v8 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v9) & 1) != 0)
      {
        ++v9;
        v8 += 32;
        if (!--v6)
        {
          v4 = *this;
          goto LABEL_11;
        }
      }

      return 0;
    }

    v5 = *(v4 + 68);
    v6 = v5 - 1;
    if (v5 != 1)
    {
      v7 = *(v4 + 72) + 32;
      goto LABEL_7;
    }

LABEL_11:
    v10 = *(v4 + 36);
    v11 = v4 - 16;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
    return 1;
  }

  else
  {
    v23 = "requires attribute 'map'";
    v24 = 259;
    mlir::OpState::emitOpError(this, &v23, v25);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v31;
        v16 = __p;
        if (v31 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v31 = v14;
        operator delete(v16);
      }

      v17 = v28;
      if (v28)
      {
        v18 = v29;
        v19 = v28;
        if (v29 != v28)
        {
          do
          {
            v21 = *--v18;
            v20 = v21;
            *v18 = 0;
            if (v21)
            {
              operator delete[](v20);
            }
          }

          while (v18 != v17);
          v19 = v28;
        }

        v29 = v17;
        operator delete(v19);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }

  return v13;
}

uint64_t mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    {
      v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v36 = *(v6 + 8);
      v37 = *(v6 + 16);
      if (!v37)
      {
        goto LABEL_55;
      }
    }

    else
    {
      mlir::TensorType::operator mlir::ShapedType();
      v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v36 = *(v6 + 8);
      v37 = *(v6 + 16);
      if (!v37)
      {
        goto LABEL_55;
      }
    }

    v38 = v36;
    v39 = v37;
    do
    {
      v40 = v39 >> 1;
      v41 = &v38[2 * (v39 >> 1)];
      v43 = *v41;
      v42 = v41 + 2;
      v39 += ~(v39 >> 1);
      if (v43 < v35)
      {
        v38 = v42;
      }

      else
      {
        v39 = v40;
      }
    }

    while (v39);
    if (v38 != &v36[2 * v37] && *v38 == v35)
    {
      v44 = v38[1];
      goto LABEL_57;
    }

LABEL_55:
    v44 = 0;
LABEL_57:
    v55[0] = a2;
    v55[1] = v44;
    mlir::ElementsAttr::isSplat(v55);
    return 1;
  }

  v51 = 261;
  v50[0] = a3;
  v50[1] = a4;
  mlir::Operation::emitOpError(a1, v50, v55);
  if (v55[0])
  {
    v52 = 3;
    v53 = " #";
    v54 = 2;
    v8 = &v52;
    v9 = v56;
    if (v57 >= v58)
    {
      if (v56 <= &v52 && v56 + 24 * v57 > &v52)
      {
        v46 = &v52 - v56;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
        v9 = v56;
        v8 = (v56 + v46);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
        v8 = &v52;
        v9 = v56;
      }
    }

    v10 = &v9[24 * v57];
    v11 = *v8;
    *(v10 + 2) = *(v8 + 2);
    *v10 = v11;
    v12 = ++v57;
    if (v55[0])
    {
      v52 = 5;
      v53 = a5;
      v13 = &v52;
      v14 = v56;
      if (v12 >= v58)
      {
        if (v56 <= &v52 && v56 + 24 * v12 > &v52)
        {
          v47 = &v52 - v56;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v12 + 1, 24);
          v14 = v56;
          v13 = (v56 + v47);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v12 + 1, 24);
          v13 = &v52;
          v14 = v56;
        }
      }

      v15 = &v14[24 * v57];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      v17 = ++v57;
      if (v55[0])
      {
        v52 = 3;
        v53 = " must be memref of any type values, but got ";
        v54 = 44;
        v18 = &v52;
        v19 = v56;
        if (v17 >= v58)
        {
          if (v56 <= &v52 && v56 + 24 * v17 > &v52)
          {
            v48 = &v52 - v56;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v17 + 1, 24);
            v19 = v56;
            v18 = (v56 + v48);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v17 + 1, 24);
            v18 = &v52;
            v19 = v56;
          }
        }

        v20 = &v19[24 * v57];
        v21 = *v18;
        *(v20 + 2) = *(v18 + 2);
        *v20 = v21;
        ++v57;
        if (v55[0])
        {
          v22 = &v52;
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, a2);
          v23 = v56;
          if (v57 >= v58)
          {
            if (v56 <= &v52 && v56 + 24 * v57 > &v52)
            {
              v49 = &v52 - v56;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
              v23 = v56;
              v22 = (v56 + v49);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
              v22 = &v52;
              v23 = v56;
            }
          }

          v24 = &v23[24 * v57];
          v25 = *v22;
          *(v24 + 2) = *(v22 + 2);
          *v24 = v25;
          ++v57;
        }
      }
    }
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
  if (v55[0])
  {
    mlir::InFlightDiagnostic::report(v55);
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v63;
      v29 = __p;
      if (v63 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v63 = v27;
      operator delete(v29);
    }

    v30 = v60;
    if (v60)
    {
      v31 = v61;
      v32 = v60;
      if (v61 != v60)
      {
        do
        {
          v34 = *--v31;
          v33 = v34;
          *v31 = 0;
          if (v34)
          {
            operator delete[](v33);
          }
        }

        while (v31 != v30);
        v32 = v60;
      }

      v61 = v30;
      operator delete(v32);
    }

    if (v56 != v59)
    {
      free(v56);
    }
  }

  return v26;
}

uint64_t mlir::affine::AffineMaxOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::affine::AffineMaxOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::affine::AffineMaxOp::build(mlir::IndexType **a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v25[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a4, a5);
  v8 = mlir::AffineMapAttr::get(a3);
  v9 = *(a2 + 256);
  if (!v9)
  {
    v10 = operator new(8uLL);
    *v10 = 0;
    *(a2 + 256) = v10;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::affine::AffineMaxOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v9 = *(a2 + 256);
  }

  *v9 = v8;
  __src = v25;
  v24 = 0x200000000;
  v11 = *a1;
  mlir::ValueRange::ValueRange(&v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v21, *(a2 + 224), *(a2 + 232));
  if (v24 != 1)
  {
    if (!v24)
    {
      if (HIDWORD(v24))
      {
        v14 = 0;
LABEL_10:
        bzero(__src + 8 * v14, 8 - 8 * v14);
        goto LABEL_11;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v25, 1uLL, 8);
      v14 = v24;
      if (v24 != 1)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    LODWORD(v24) = 1;
  }

  v20 = v11;
  IndexType = mlir::Builder::getIndexType(&v20, v13);
  v16 = __src;
  *__src = IndexType;
  v17 = v24;
  v18 = *(a2 + 72);
  v19 = v18 + v24;
  if (v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v19, 8);
    LODWORD(v18) = *(a2 + 72);
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v18), v16, 8 * v17);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t mlir::affine::AffineMinOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::affine::AffineMinOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::affine::AffineMinOp::build(mlir::IndexType **a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v25[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a4, a5);
  v8 = mlir::AffineMapAttr::get(a3);
  v9 = *(a2 + 256);
  if (!v9)
  {
    v10 = operator new(8uLL);
    *v10 = 0;
    *(a2 + 256) = v10;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::affine::AffineMinOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v9 = *(a2 + 256);
  }

  *v9 = v8;
  __src = v25;
  v24 = 0x200000000;
  v11 = *a1;
  mlir::ValueRange::ValueRange(&v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v21, *(a2 + 224), *(a2 + 232));
  if (v24 != 1)
  {
    if (!v24)
    {
      if (HIDWORD(v24))
      {
        v14 = 0;
LABEL_10:
        bzero(__src + 8 * v14, 8 - 8 * v14);
        goto LABEL_11;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v25, 1uLL, 8);
      v14 = v24;
      if (v24 != 1)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    LODWORD(v24) = 1;
  }

  v20 = v11;
  IndexType = mlir::Builder::getIndexType(&v20, v13);
  v16 = __src;
  *__src = IndexType;
  v17 = v24;
  v18 = *(a2 + 72);
  v19 = v18 + v24;
  if (v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v19, 8);
    LODWORD(v18) = *(a2 + 72);
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v18), v16, 8 * v17);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t mlir::affine::AffineParallelOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v91 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v75 = v6;
  if (!v6)
  {
    a3(&v79, a4);
    if (v79)
    {
      LODWORD(v76) = 3;
      v77 = "expected DictionaryAttr to set properties";
      v78 = 41;
      v28 = &v76;
      v29 = v81;
      if (v82 >= v83)
      {
        if (v81 <= &v76 && v81 + 24 * v82 > &v76)
        {
          v68 = &v76 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v29 = v81;
          v28 = (v81 + v68);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v28 = &v76;
          v29 = v81;
        }
      }

      v30 = &v29[24 * v82];
      v31 = *v28;
      *(v30 + 2) = v28[2];
      *v30 = v31;
      ++v82;
      if (v79)
      {
        mlir::InFlightDiagnostic::report(&v79);
      }
    }

    if (v90 != 1)
    {
      return 0;
    }

    if (v89 != &v90)
    {
      free(v89);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v88;
      v34 = __p;
      if (v88 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v88 = v32;
      operator delete(v34);
    }

    v23 = v85;
    if (!v85)
    {
      goto LABEL_70;
    }

    v35 = v86;
    v25 = v85;
    if (v86 == v85)
    {
LABEL_69:
      v86 = v23;
      operator delete(v25);
LABEL_70:
      if (v81 != v84)
      {
        free(v81);
      }

      return 0;
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

    while (v35 != v23);
LABEL_68:
    v25 = v85;
    goto LABEL_69;
  }

  v92.var0 = "lowerBoundsGroups";
  v92.var1 = 17;
  v8 = mlir::DictionaryAttr::get(&v75, v92);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if (!mlir::DenseIntElementsAttr::classof(v8))
  {
    a3(&v79, a4);
    if (v79)
    {
      LODWORD(v76) = 3;
      v78 = 62;
      v38 = &v76;
      v39 = v81;
      if (v82 >= v83)
      {
        if (v81 <= &v76 && v81 + 24 * v82 > &v76)
        {
          v69 = &v76 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v39 = v81;
          v38 = (v81 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v38 = &v76;
          v39 = v81;
        }
      }

      v40 = &v39[24 * v82];
      v41 = *v38;
      *(v40 + 2) = v38[2];
      *v40 = v41;
      ++v82;
      if (v79)
      {
        v42 = &v76;
        mlir::DiagnosticArgument::DiagnosticArgument(&v76, v9);
        v43 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v71 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v43 = v81;
            v42 = (v81 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v42 = &v76;
            v43 = v81;
          }
        }

        v44 = &v43[24 * v82];
        v45 = *v42;
        *(v44 + 2) = v42[2];
        *v44 = v45;
        ++v82;
        if (v79)
        {
          mlir::InFlightDiagnostic::report(&v79);
        }
      }
    }

    if ((v90 & 1) == 0)
    {
      return 0;
    }

    if (v89 != &v90)
    {
      free(v89);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v88;
      v48 = __p;
      if (v88 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v88 = v46;
      operator delete(v48);
    }

    v23 = v85;
    if (!v85)
    {
      goto LABEL_70;
    }

    v49 = v86;
    v25 = v85;
    if (v86 == v85)
    {
      goto LABEL_69;
    }

    do
    {
      v51 = *--v49;
      v50 = v51;
      *v49 = 0;
      if (v51)
      {
        operator delete[](v50);
      }
    }

    while (v49 != v23);
    goto LABEL_68;
  }

  *a1 = v9;
LABEL_8:
  v93.var0 = "lowerBoundsMap";
  v93.var1 = 14;
  v10 = mlir::DictionaryAttr::get(&v75, v93);
  if (v10)
  {
    if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v11 = v10;
      a3(&v79, a4);
      if (v79)
      {
        LODWORD(v76) = 3;
        v78 = 59;
        v12 = &v76;
        v13 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v70 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v13 = v81;
            v12 = (v81 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v12 = &v76;
            v13 = v81;
          }
        }

        v14 = &v13[24 * v82];
        v15 = *v12;
        *(v14 + 2) = v12[2];
        *v14 = v15;
        ++v82;
        if (v79)
        {
          v16 = &v76;
          mlir::DiagnosticArgument::DiagnosticArgument(&v76, v11);
          v17 = v81;
          if (v82 >= v83)
          {
            if (v81 <= &v76 && v81 + 24 * v82 > &v76)
            {
              v72 = &v76 - v81;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v17 = v81;
              v16 = (v81 + v72);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v16 = &v76;
              v17 = v81;
            }
          }

          v18 = &v17[24 * v82];
          v19 = *v16;
          *(v18 + 2) = v16[2];
          *v18 = v19;
          ++v82;
          if (v79)
          {
            mlir::InFlightDiagnostic::report(&v79);
          }
        }
      }

      if ((v90 & 1) == 0)
      {
        return 0;
      }

      if (v89 != &v90)
      {
        free(v89);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v88;
        v22 = __p;
        if (v88 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v88 = v20;
        operator delete(v22);
      }

      v23 = v85;
      if (!v85)
      {
        goto LABEL_70;
      }

      v24 = v86;
      v25 = v85;
      if (v86 == v85)
      {
        goto LABEL_69;
      }

      do
      {
        v27 = *--v24;
        v26 = v27;
        *v24 = 0;
        if (v27)
        {
          operator delete[](v26);
        }
      }

      while (v24 != v23);
      goto LABEL_68;
    }

    a1[1] = v10;
  }

  v94.var0 = "reductions";
  v94.var1 = 10;
  v52 = mlir::DictionaryAttr::get(&v75, v94);
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v53 = v52;
      a3(&v79, a4);
      if (v79)
      {
        LODWORD(v76) = 3;
        v78 = 55;
        v54 = &v76;
        v55 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v73 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v55 = v81;
            v54 = (v81 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v54 = &v76;
            v55 = v81;
          }
        }

        v56 = &v55[24 * v82];
        v57 = *v54;
        *(v56 + 2) = v54[2];
        *v56 = v57;
        ++v82;
        if (v79)
        {
          v58 = &v76;
          mlir::DiagnosticArgument::DiagnosticArgument(&v76, v53);
          v59 = v81;
          if (v82 >= v83)
          {
            if (v81 <= &v76 && v81 + 24 * v82 > &v76)
            {
              v74 = &v76 - v81;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v59 = v81;
              v58 = (v81 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v58 = &v76;
              v59 = v81;
            }
          }

          v60 = &v59[24 * v82];
          v61 = *v58;
          *(v60 + 2) = v58[2];
          *v60 = v61;
          ++v82;
          if (v79)
          {
            mlir::InFlightDiagnostic::report(&v79);
          }
        }
      }

      if (v90 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v80);
      }

      return 0;
    }

    a1[2] = v52;
  }

  v95.var0 = "steps";
  v95.var1 = 5;
  v62 = mlir::DictionaryAttr::get(&v75, v95);
  v76 = v62;
  if (!v62)
  {
LABEL_88:
    v96.var0 = "upperBoundsGroups";
    v96.var1 = 17;
    v64 = mlir::DictionaryAttr::get(&v75, v96);
    v76 = v64;
    if (v64)
    {
      v65 = v64;
      if (!mlir::DenseIntElementsAttr::classof(v64))
      {
        a3(&v79, a4);
        goto LABEL_95;
      }

      a1[4] = v65;
    }

    v97.var0 = "upperBoundsMap";
    v97.var1 = 14;
    v66 = mlir::DictionaryAttr::get(&v75, v97);
    v76 = v66;
    if (v66)
    {
      if (*(*v66 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
      {
        a3(&v79, a4);
        goto LABEL_95;
      }

      a1[5] = v66;
    }

    return 1;
  }

  if (*(*v62 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    a1[3] = v62;
    goto LABEL_88;
  }

  a3(&v79, a4);
LABEL_95:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v63, &v76);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v79);
  return 0;
}

uint64_t mlir::affine::AffineParallelOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v51[6] = *MEMORY[0x1E69E9840];
  v48 = a1;
  v49 = v51;
  v50 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v48, "lowerBoundsGroups", 17, *a2);
  v5 = v50;
  if (v50 >= HIDWORD(v50))
  {
    v36 = NamedAttr;
    v37 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
    v4 = v37;
    NamedAttr = v36;
    v5 = v50;
  }

  v6 = (v49 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v50 + 1;
  LODWORD(v50) = v50 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v48, "lowerBoundsMap", 14, v8);
    v11 = v50;
    if (v50 >= HIDWORD(v50))
    {
      v38 = v9;
      v39 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
      v10 = v39;
      v9 = v38;
      v11 = v50;
    }

    v12 = (v49 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v50 + 1;
    LODWORD(v50) = v50 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v48, "reductions", 10, v13);
    v16 = v50;
    if (v50 >= HIDWORD(v50))
    {
      v40 = v14;
      v41 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
      v15 = v41;
      v14 = v40;
      v16 = v50;
    }

    v17 = (v49 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v50 + 1;
    LODWORD(v50) = v50 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v48, "steps", 5, v18);
    v21 = v50;
    if (v50 >= HIDWORD(v50))
    {
      v42 = v19;
      v43 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
      v20 = v43;
      v19 = v42;
      v21 = v50;
    }

    v22 = (v49 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v50 + 1;
    LODWORD(v50) = v50 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v48, "upperBoundsGroups", 17, v23);
    v26 = v50;
    if (v50 >= HIDWORD(v50))
    {
      v44 = v24;
      v45 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
      v25 = v45;
      v24 = v44;
      v26 = v50;
    }

    v27 = (v49 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v50 + 1;
    LODWORD(v50) = v50 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v48, "upperBoundsMap", 14, v28);
    v31 = v50;
    if (v50 >= HIDWORD(v50))
    {
      v46 = v29;
      v47 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
      v30 = v47;
      v29 = v46;
      v31 = v50;
    }

    v32 = (v49 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    v7 = v50 + 1;
    LODWORD(v50) = v50 + 1;
  }

  v33 = v49;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v49 == v51)
    {
      return DictionaryAttr;
    }

    goto LABEL_28;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v48, v49, v7);
  v33 = v49;
  if (v49 != v51)
  {
LABEL_28:
    free(v33);
  }

  return DictionaryAttr;
}

uint64_t mlir::affine::AffineParallelOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 13)
  {
    if (__n == 14)
    {
      if (!memcmp(__s1, "lowerBoundsMap", 0xEuLL))
      {
        return a2[1];
      }

      if (!memcmp(__s1, "upperBoundsMap", 0xEuLL))
      {
        return a2[5];
      }
    }

    else if (__n == 17)
    {
      if (*__s1 == 0x756F427265776F6CLL && __s1[1] == 0x70756F724773646ELL && *(__s1 + 16) == 115)
      {
        return *a2;
      }

      if (!memcmp(__s1, "upperBoundsGroups", 0x11uLL))
      {
        return a2[4];
      }
    }

    return 0;
  }

  if (__n == 5)
  {
    if (!memcmp(__s1, "steps", 5uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n != 10 || memcmp(__s1, "reductions", 0xAuLL))
  {
    return 0;
  }

  return a2[2];
}

uint64_t *mlir::affine::AffineParallelOp::setInherentAttr(uint64_t *result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 13)
  {
    if (a3 == 14)
    {
      result = memcmp(__s1, "lowerBoundsMap", 0xEuLL);
      if (result)
      {
        result = memcmp(__s1, "upperBoundsMap", 0xEuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
            {
              v11 = a4;
            }

            else
            {
              v11 = 0;
            }

            v5[5] = v11;
          }

          else
          {
            v5[5] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          v14 = a4;
        }

        else
        {
          v14 = 0;
        }

        v5[1] = v14;
      }

      else
      {
        v5[1] = 0;
      }
    }

    else if (a3 == 17)
    {
      if (*__s1 == 0x756F427265776F6CLL && __s1[1] == 0x70756F724773646ELL && *(__s1 + 16) == 115)
      {
        if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v13 = a4;
          }

          else
          {
            v13 = 0;
          }

          *v5 = v13;
        }

        else
        {
          *result = 0;
        }
      }

      else
      {
        result = memcmp(__s1, "upperBoundsGroups", 0x11uLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            v5[4] = v8;
          }

          else
          {
            v5[4] = 0;
          }
        }
      }
    }
  }

  else if (a3 == 5)
  {
    result = memcmp(__s1, "steps", 5uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }

        v5[3] = v9;
      }

      else
      {
        v5[3] = 0;
      }
    }
  }

  else if (a3 == 10)
  {
    result = memcmp(__s1, "reductions", 0xAuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v12 = a4;
        }

        else
        {
          v12 = 0;
        }

        v5[2] = v12;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  return result;
}

void mlir::affine::AffineParallelOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "lowerBoundsGroups", 17, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "lowerBoundsMap", 14, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "reductions", 10, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "steps", 5, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "upperBoundsGroups", 17, v8);
  }

  v9 = a2[5];
  if (v9)
  {

    mlir::NamedAttrList::append(a3, "upperBoundsMap", 14, v9);
  }
}

BOOL mlir::affine::AffineParallelOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps14(v8, "lowerBoundsGroups", 0x11, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v9, "lowerBoundsMap", 0xE, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(v10, "reductions", 0xA, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps5(v11, "steps", 5, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps14(v12, "upperBoundsGroups", 0x11, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v13, "upperBoundsMap", 0xE, a3, a4) & 1) != 0)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v37 = a1;
    Value = mlir::ArrayAttr::getValue(&v37);
    v27 = mlir::ArrayAttr::getValue(&v37);
    v29 = (v27 + 8 * v28);
    if (v29 != Value)
    {
      while (*Value && (mlir::arith::AtomicRMWKindAttr::classof(*Value) & 1) != 0)
      {
        if (++Value == v29)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a4(&v37, a5);
  if (v37)
  {
    LODWORD(v33) = 3;
    v34 = "attribute '";
    v35 = 11;
    v9 = &v33;
    v10 = v39;
    if (v40 >= v41)
    {
      if (v39 <= &v33 && v39 + 24 * v40 > &v33)
      {
        v31 = &v33 - v39;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
        v10 = v39;
        v9 = v39 + v31;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
        v9 = &v33;
        v10 = v39;
      }
    }

    v11 = &v10[24 * v40];
    v12 = *v9;
    *(v11 + 2) = *(v9 + 2);
    *v11 = v12;
    ++v40;
    if (v37)
    {
      v36 = 261;
      v33 = a2;
      v34 = a3;
      mlir::Diagnostic::operator<<(&v38, &v33);
      if (v37)
      {
        LODWORD(v33) = 3;
        v34 = "' failed to satisfy constraint: Reduction ops";
        v35 = 45;
        v13 = &v33;
        v14 = v39;
        if (v40 >= v41)
        {
          if (v39 <= &v33 && v39 + 24 * v40 > &v33)
          {
            v32 = &v33 - v39;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
            v14 = v39;
            v13 = v39 + v32;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
            v13 = &v33;
            v14 = v39;
          }
        }

        v15 = &v14[24 * v40];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        ++v40;
      }
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
  if (v37)
  {
    mlir::InFlightDiagnostic::report(&v37);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v46;
      v20 = __p;
      if (v46 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v46 = v18;
      operator delete(v20);
    }

    v21 = v43;
    if (v43)
    {
      v22 = v44;
      v23 = v43;
      if (v44 != v43)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v22 != v21);
        v23 = v43;
      }

      v44 = v21;
      operator delete(v23);
    }

    if (v39 != v42)
    {
      free(v39);
    }
  }

  return v17;
}