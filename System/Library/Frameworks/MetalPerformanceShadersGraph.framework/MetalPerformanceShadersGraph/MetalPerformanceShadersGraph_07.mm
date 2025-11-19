uint64_t anonymous namespace::static_dag_matcher_12(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12[0] = a2 - 16;
  DefiningOp = mlir::Value::getDefiningOp(v12);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v11, DefiningOp) & 1) != 0)
  {
    v5 = v10;
    v12[0] = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'constant attribute 1'";
    v12[1] = 169;
    IntegerType = mlir::Builder::getIntegerType((a1 + 8), 1);
    if (mlir::Builder::getIntegerAttr(a1 + 8, IntegerType, 1) == v5)
    {
      return 1;
    }

    else
    {
      v11 = v12;
      v9 = *(a1 + 16);
      if (v9)
      {
        if (mlir::RewriterBase::Listener::classof(v9))
        {
        }
      }

      return 0;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8 && mlir::RewriterBase::Listener::classof(v8))
    {
    }

    return 0;
  }
}

uint64_t mlir::OpBuilder::create<mlir::arith::CmpIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::CmpIOp,mlir::arith::CmpIPredicateAttr,mlir::Value &,mlir::Value &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::ValueRange::ValueRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::CmpIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v15;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrINotCmpI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrINotCmpI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::CmpIOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrINotCmpI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'arith.cmpi' to have attribute 'predicate' of type '::mlir::arith::CmpIPredicateAttr'";
  v13 = 97;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrINotCmpI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_12(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "::mlir::success(::mlir::matchPattern(op0->getResult(0), ::mlir::m_Constant(&arg1_0))) return ::mlir::failure";
  v13 = 108;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization4(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(void ***a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v14 = 261;
  v13[0] = v3;
  v13[1] = v2;
  v4 = mlir::Diagnostic::operator<<(a2, v13);
  v5 = *(v4 + 16);
  v15 = 3;
  v16 = ": constant attribute 1";
  v17 = 22;
  v6 = *(v4 + 24);
  v7 = &v15;
  if (v6 >= *(v4 + 28))
  {
    if (v5 <= &v15 && v5 + 24 * v6 > &v15)
    {
      v11 = &v15 - v5;
      v12 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v4 + 16, v4 + 32, v6 + 1, 24);
      v4 = v12;
      v5 = *(v12 + 16);
      v7 = &v11[v5];
    }

    else
    {
      v10 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v4 + 16, v4 + 32, v6 + 1, 24);
      v4 = v10;
      v5 = *(v10 + 16);
      v7 = &v15;
    }
  }

  v8 = (v5 + 24 * *(v4 + 24));
  result = *v7;
  v8[1].n128_u64[0] = v7[1].n128_u64[0];
  *v8 = result;
  ++*(v4 + 24);
  return result;
}

void anonymous namespace::XOrIOfExtUI::~XOrIOfExtUI(_anonymous_namespace_::XOrIOfExtUI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::XOrIOfExtUI::matchAndRewrite(_anonymous_namespace_::XOrIOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v25[0] = a2;
  v24 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v22[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v22);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v22);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    v20 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v13 + 1, 8);
    DefiningOp = v20;
    LODWORD(v13) = v24;
LABEL_18:
    v23[v13] = DefiningOp;
    LODWORD(v24) = v24 + 1;
    v22[0] = *(*(v5 + 9) + 56);
    v14 = mlir::Value::getDefiningOp(v22);
    if (!v14)
    {
      v7 = *(a3 + 2);
      if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v5 + 3);
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v15 = v14;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v15 + 24);
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    if ((*(v14 + 46) & 0x80) != 0)
    {
      v16 = *(v14 + 72);
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
LABEL_28:
        v23[v17] = v14;
        LODWORD(v24) = v24 + 1;
        if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
        {
          v18 = *(v23[1] + 24);
          v22[0] = *(*v23 + 24);
          v22[1] = v18;
          v22[2] = *(v23[2] + 24);
          mlir::Builder::getFusedLoc(a3 + 1, v22, 3, 0);
        }

        v19 = *(a3 + 2);
        if (v19 && mlir::RewriterBase::Listener::classof(v19))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_28;
      }
    }

    v21 = v14;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v17 + 1, 8);
    v14 = v21;
    LODWORD(v17) = v24;
    goto LABEL_28;
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v23 != v25)
  {
    free(v23);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::XOrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::XOrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::ValueRange::ValueRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v15;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_8(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ExtUIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_9(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ExtUIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, y' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::XOrIOfExtSI::~XOrIOfExtSI(_anonymous_namespace_::XOrIOfExtSI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::XOrIOfExtSI::matchAndRewrite(_anonymous_namespace_::XOrIOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v25[0] = a2;
  v24 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v22[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v22);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v22);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    v20 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v13 + 1, 8);
    DefiningOp = v20;
    LODWORD(v13) = v24;
LABEL_18:
    v23[v13] = DefiningOp;
    LODWORD(v24) = v24 + 1;
    v22[0] = *(*(v5 + 9) + 56);
    v14 = mlir::Value::getDefiningOp(v22);
    if (!v14)
    {
      v7 = *(a3 + 2);
      if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v5 + 3);
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v15 = v14;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v15 + 24);
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    if ((*(v14 + 46) & 0x80) != 0)
    {
      v16 = *(v14 + 72);
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
LABEL_28:
        v23[v17] = v14;
        LODWORD(v24) = v24 + 1;
        if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
        {
          v18 = *(v23[1] + 24);
          v22[0] = *(*v23 + 24);
          v22[1] = v18;
          v22[2] = *(v23[2] + 24);
          mlir::Builder::getFusedLoc(a3 + 1, v22, 3, 0);
        }

        v19 = *(a3 + 2);
        if (v19 && mlir::RewriterBase::Listener::classof(v19))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_28;
      }
    }

    v21 = v14;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v17 + 1, 8);
    v14 = v21;
    LODWORD(v17) = v24;
    goto LABEL_28;
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v23 != v25)
  {
    free(v23);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_6(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ExtSIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_7(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ExtSIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, y' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::constFoldUnaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat)#1}::operator()(_BYTE *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = (a2 + 8);
  v4 = *(a2 + 8);
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v5 == v4)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v7, v3);
    if (v5 != v7.n128_u64[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::changeSign(&v7);
      v6 = (a1 + 8);
      if (v5 != v7.n128_u64[0])
      {
        goto LABEL_4;
      }

LABEL_9:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v6, &v7);
      a1[32] = 1;
      if (v5 != v7.n128_u64[0])
      {
        goto LABEL_5;
      }

LABEL_10:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v7);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v7, v3);
    if (v5 != v7.n128_u64[0])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::changeSign(&v7);
  v6 = (a1 + 8);
  if (v5 == v7.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v6, &v7);
  a1[32] = 1;
  if (v5 == v7.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v7);
}

void mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  mlir::DenseElementsAttr::tryGetFloatValues(a1, v11);
  *__p = v11[0];
  v6 = v11[1];
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v3 = mlir::DenseElementsAttr::IntElementIterator::operator*(v11, __p);
  v4 = v12;
  if (llvm::APFloatBase::PPCDoubleDouble(v3) == v4)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), v4, __p);
    if (LODWORD(__p[1]) < 0x41)
    {
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((a2 + 8), v4, __p);
    if (LODWORD(__p[1]) < 0x41)
    {
      return;
    }
  }

  if (__p[0])
  {
    operator delete[](__p[0]);
  }
}

void llvm::SmallVectorImpl<llvm::APFloat>::reserve(unsigned int *a1, unint64_t a2)
{
  if (a1[3] < a2)
  {
    v9[5] = v2;
    v9[6] = v3;
    v9[0] = 0;
    v5 = a1 + 4;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, a2, 32, v9);
    v7 = v6;
    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(a1, v6);
    v8 = v9[0];
    if (*a1 != v5)
    {
      free(*a1);
    }

    *a1 = v7;
    a1[3] = v8;
  }
}

void *mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1) == 0;
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (*a1 == 1)
  {
    v9 = v4 + 32 * v7;
    v11 = *(v9 + 1);
    v10 = (v9 + 8);
    if (llvm::APFloatBase::PPCDoubleDouble(v4) == v11)
    {

      return llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), v10);
    }

    else
    {

      return llvm::detail::IEEEFloat::IEEEFloat((a2 + 8), v10);
    }
  }

  else
  {
    v13 = *(*v4 + 24);

    return v13();
  }
}

void *llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(unsigned int *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a1[2];
  v5 = *a1;
  if (v4 >= a1[3])
  {
    if (v5 <= a2 && v5 + 32 * v4 > a2)
    {
      v11 = a2 - v5;
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(a1, v4 + 1);
      v5 = *a1;
      v2 = *a1 + v11;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(a1, v4 + 1);
      v5 = *a1;
    }
  }

  v6 = v5 + 32 * a1[2];
  v8 = *(v2 + 8);
  v7 = (v2 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v8)
  {
    result = llvm::detail::DoubleAPFloat::DoubleAPFloat((v6 + 8), v7);
  }

  else
  {
    result = llvm::detail::IEEEFloat::IEEEFloat((v6 + 8), v7);
  }

  ++a1[2];
  return result;
}

unsigned int *llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(unsigned int *a1)
{
  v2 = *a1;
  v3 = a1[2];
  if (v3)
  {
    v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v5 = &v2[8 * v3 - 6];
    v6 = -32 * v3;
    do
    {
      while (v4 == *v5)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
        v5 = (v7 - 32);
        v6 += 32;
        if (!v6)
        {
          goto LABEL_6;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v5);
      v5 = (v8 - 32);
      v6 += 32;
    }

    while (v6);
LABEL_6:
    v2 = *a1;
  }

  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

const char *llvm::getTypeName<llvm::APFloat>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = llvm::APFloat]";
  v6 = 63;
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

uint64_t mlir::detail::constant_float_predicate_matcher::match(llvm::APFloatBase *a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v4 = llvm::APFloatBase::Bogus(a1);
  v5 = llvm::APFloatBase::PPCDoubleDouble(v4);
  if (v5 != v4)
  {
    llvm::detail::IEEEFloat::IEEEFloat(v10, v4);
    v8 = v9;
    if (mlir::detail::constant_float_value_binder::match(&v8, a2))
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = 0;
    if (v5 != v10[0])
    {
      goto LABEL_4;
    }

LABEL_8:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v10);
    return v6;
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(v10, v4);
  v8 = v9;
  if (!mlir::detail::constant_float_value_binder::match(&v8, a2))
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = (*a1)(v9);
  if (v5 == v10[0])
  {
    goto LABEL_8;
  }

LABEL_4:
  llvm::detail::IEEEFloat::~IEEEFloat(v10);
  return v6;
}

llvm::APFloatBase *llvm::APFloat::APFloat(llvm::APFloatBase *a1, void *a2)
{
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == a2)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1 + 1, a2);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(a1 + 8, a2);
  }

  return a1;
}

uint64_t mlir::detail::constant_float_value_binder::match(uint64_t *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(*a2 + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v19[0] = v5;
  if (v4)
  {
    mlir::FloatAttr::getValue(v19, &v20);
    v15 = llvm::APFloat::Storage::operator=((v2 + 8), v21);
    v16 = v21[0].n128_u64[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v15) == v16)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v21);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v21);
    }

    return 1;
  }

  else
  {
    v6 = a2;
    if (mlir::DenseElementsAttr::classof(a2))
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v20 = v7;
    if (v7)
    {
      v7 = mlir::DenseElementsAttr::isSplat(&v20) ? v6 : 0;
      v18 = v7;
      if (v7)
      {
        mlir::ArrayAttr::getValue(&v18);
        mlir::NamedAttribute::NamedAttribute(&v20, v18, 0);
        v6 = v18;
        NumElements = mlir::DenseElementsAttr::getNumElements(&v18);
        mlir::NamedAttribute::NamedAttribute(v19, v6, NumElements);
        v9 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v20);
        v10 = *(*v9 + 136);
        v11 = v10 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
        LODWORD(v6) = v10 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
        if (v10 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v12 = v9;
        }

        else
        {
          v12 = 0;
        }

        v19[0] = v12;
        if (v11)
        {
          mlir::FloatAttr::getValue(v19, &v20);
          v13 = llvm::APFloat::Storage::operator=((v2 + 8), v21);
          v14 = v21[0].n128_u64[0];
          if (llvm::APFloatBase::PPCDoubleDouble(v13) == v14)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v21);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v21);
          }
        }

        LODWORD(v7) = 1;
      }
    }

    return v7 & v6;
  }
}

llvm::APFloatBase *llvm::APFloat::Storage::operator=(llvm::APFloatBase *a1, __n128 *a2)
{
  v4 = *a1;
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v6 = a2->n128_u64[0];
  if (v5 != v4 && v5 != v6)
  {
    llvm::detail::IEEEFloat::operator=(a1, a2);
    return a1;
  }

  if (v5 != v4)
  {
    if (a1 == a2)
    {
      return a1;
    }

    v8 = v5;
    llvm::detail::IEEEFloat::~IEEEFloat(a1);
    v9 = a1;
    if (v8 == a2->n128_u64[0])
    {
      goto LABEL_17;
    }

LABEL_14:
    llvm::detail::IEEEFloat::IEEEFloat(v9, a2);
    return a1;
  }

  if (v4 == v6)
  {
    if (a1 == a2)
    {
      return a1;
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(a1);
  }

  else
  {
    if (a1 == a2)
    {
      return a1;
    }

    v11 = v5;
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(a1);
    v9 = a1;
    if (v11 != a2->n128_u64[0])
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, a2);
  return a1;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::add(&v10, v8, 1);
      v9 = (a1 + 8);
      if (v7 != v10.n128_u64[0])
      {
        goto LABEL_4;
      }

LABEL_9:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, &v10);
      a1[32] = 1;
      if (v7 != v10.n128_u64[0])
      {
        goto LABEL_5;
      }

LABEL_10:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v10);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::add(&v10, v8, 1);
  v9 = (a1 + 8);
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v9, &v10);
  a1[32] = 1;
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v10);
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::subtract(&v10, v8, 1);
      v9 = (a1 + 8);
      if (v7 != v10.n128_u64[0])
      {
        goto LABEL_4;
      }

LABEL_9:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, &v10);
      a1[32] = 1;
      if (v7 != v10.n128_u64[0])
      {
        goto LABEL_5;
      }

LABEL_10:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v10);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::subtract(&v10, v8, 1);
  v9 = (a1 + 8);
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v9, &v10);
  a1[32] = 1;
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v10);
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, llvm *this, llvm::APFloat *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = llvm::maximum(this, a3, v7);
  v5 = v8.n128_u64[0];
  v6 = llvm::APFloatBase::PPCDoubleDouble(v4);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), &v8);
    *(a1 + 32) = 1;
    if (v6 != v8.n128_u64[0])
    {
      goto LABEL_3;
    }

LABEL_6:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v8);
    return;
  }

  llvm::detail::IEEEFloat::IEEEFloat(a1 + 8, &v8);
  *(a1 + 32) = 1;
  if (v6 == v8.n128_u64[0])
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(&v8);
}

void *llvm::maximum@<X0>(llvm *this@<X0>, const llvm::APFloat *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (this + 8);
  v8 = *(this + 1);
  v9 = llvm::APFloatBase::PPCDoubleDouble(this);
  if (v9 == v8)
  {
    if ((*(*(this + 2) + 28) & 7) == 1)
    {
      v13 = (a3 + 8);
      v11 = v7;

      return llvm::detail::DoubleAPFloat::DoubleAPFloat(v13, v11);
    }
  }

  else if ((*(this + 28) & 7) == 1)
  {
    v10 = (a3 + 8);
    v11 = v7;

    return llvm::detail::IEEEFloat::IEEEFloat(v10, v11);
  }

  v11 = (a2 + 8);
  v14 = *(a2 + 1);
  if (v9 != v14)
  {
    if ((*(a2 + 28) & 7) == 1)
    {
LABEL_39:
      v10 = (a3 + 8);

      return llvm::detail::IEEEFloat::IEEEFloat(v10, v11);
    }

    goto LABEL_14;
  }

  if ((*(*(a2 + 2) + 28) & 7) != 1)
  {
LABEL_14:
    v15 = *(this + 2);
    if (v9 != v8)
    {
      v15 = this;
    }

    v16 = *(v15 + 28);
    if ((v16 & 7) == 3 && (v9 != v14 ? (v17 = a2) : (v17 = *(a2 + 2)), (v18 = *(v17 + 28), (v18 & 7) == 3) && ((v16 >> 3) & 1) != (v18 & 8) >> 3))
    {
      if ((v16 & 8) != 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = this;
      }

      v20 = *(v19 + 1);
      v11 = (v19 + 8);
      if (v9 != v20)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v21 = v9;
      if (v9 == v8)
      {
        if (llvm::detail::DoubleAPFloat::compare(v7, v11))
        {
          v24 = this;
        }

        else
        {
          v24 = a2;
        }

        v25 = *(v24 + 1);
        v11 = (v24 + 8);
        if (v21 != v25)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (llvm::detail::IEEEFloat::compare(v7, v11))
        {
          v22 = this;
        }

        else
        {
          v22 = a2;
        }

        v23 = *(v22 + 1);
        v11 = (v22 + 8);
        if (v21 != v23)
        {
          goto LABEL_39;
        }
      }
    }
  }

  v13 = (a3 + 8);

  return llvm::detail::DoubleAPFloat::DoubleAPFloat(v13, v11);
}

BOOL llvm::APFloat::operator<(void *a1, uint64_t a2)
{
  v3 = (a1 + 1);
  v4 = a1[1];
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v6 = (a2 + 8);
  if (v5 == v4)
  {
    return llvm::detail::DoubleAPFloat::compare(v3, v6) == 0;
  }

  else
  {
    return llvm::detail::IEEEFloat::compare(v3, v6) == 0;
  }
}

void *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compareSigned(this, a3);
  if (result <= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  v11 = v8;
  if (v8 >= 0x41)
  {
    result = llvm::APInt::initSlowCase(&v10, v7);
    v8 = v11;
    v7 = &v10;
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

void *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compare(this, a3);
  if (result <= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  v11 = v8;
  if (v8 >= 0x41)
  {
    result = llvm::APInt::initSlowCase(&v10, v7);
    v8 = v11;
    v7 = &v10;
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, llvm *this, llvm::APFloat *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = llvm::minimum(this, a3, v7);
  v5 = v8.n128_u64[0];
  v6 = llvm::APFloatBase::PPCDoubleDouble(v4);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), &v8);
    *(a1 + 32) = 1;
    if (v6 != v8.n128_u64[0])
    {
      goto LABEL_3;
    }

LABEL_6:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v8);
    return;
  }

  llvm::detail::IEEEFloat::IEEEFloat(a1 + 8, &v8);
  *(a1 + 32) = 1;
  if (v6 == v8.n128_u64[0])
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(&v8);
}

void *llvm::minimum@<X0>(llvm *this@<X0>, const llvm::APFloat *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (this + 8);
  v8 = *(this + 1);
  v9 = llvm::APFloatBase::PPCDoubleDouble(this);
  if (v9 == v8)
  {
    if ((*(*(this + 2) + 28) & 7) == 1)
    {
      v13 = (a3 + 8);
      v11 = v7;

      return llvm::detail::DoubleAPFloat::DoubleAPFloat(v13, v11);
    }
  }

  else if ((*(this + 28) & 7) == 1)
  {
    v10 = (a3 + 8);
    v11 = v7;

    return llvm::detail::IEEEFloat::IEEEFloat(v10, v11);
  }

  v11 = (a2 + 8);
  v14 = *(a2 + 1);
  if (v9 != v14)
  {
    if ((*(a2 + 28) & 7) == 1)
    {
LABEL_38:
      v10 = (a3 + 8);

      return llvm::detail::IEEEFloat::IEEEFloat(v10, v11);
    }

    goto LABEL_14;
  }

  if ((*(*(a2 + 2) + 28) & 7) != 1)
  {
LABEL_14:
    v15 = *(this + 2);
    if (v9 != v8)
    {
      v15 = this;
    }

    v16 = *(v15 + 28);
    if ((v16 & 7) != 3)
    {
      goto LABEL_28;
    }

    v17 = *(a2 + 2);
    if (v9 != v14)
    {
      v17 = a2;
    }

    v18 = *(v17 + 28);
    if ((v18 & 7) == 3 && ((v16 >> 3) & 1) != (v18 & 8) >> 3)
    {
      if ((v16 & 8) != 0)
      {
        v19 = this;
      }

      else
      {
        v19 = a2;
      }

      v20 = *(v19 + 1);
      v11 = (v19 + 8);
      if (v9 != v20)
      {
        goto LABEL_38;
      }
    }

    else
    {
LABEL_28:
      v21 = v9;
      if (v9 == v14)
      {
        if (llvm::detail::DoubleAPFloat::compare((a2 + 8), v7))
        {
          v24 = this;
        }

        else
        {
          v24 = a2;
        }

        v25 = *(v24 + 1);
        v11 = (v24 + 8);
        if (v21 != v25)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (llvm::detail::IEEEFloat::compare((a2 + 8), v7))
        {
          v22 = this;
        }

        else
        {
          v22 = a2;
        }

        v23 = *(v22 + 1);
        v11 = (v22 + 8);
        if (v21 != v23)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v13 = (a3 + 8);

  return llvm::detail::DoubleAPFloat::DoubleAPFloat(v13, v11);
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, llvm *this, llvm::APFloat *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = llvm::minnum(this, a3, v7);
  v5 = v8.n128_u64[0];
  v6 = llvm::APFloatBase::PPCDoubleDouble(v4);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), &v8);
    *(a1 + 32) = 1;
    if (v6 != v8.n128_u64[0])
    {
      goto LABEL_3;
    }

LABEL_6:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v8);
    return;
  }

  llvm::detail::IEEEFloat::IEEEFloat(a1 + 8, &v8);
  *(a1 + 32) = 1;
  if (v6 == v8.n128_u64[0])
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(&v8);
}

void *llvm::minnum@<X0>(llvm *this@<X0>, const llvm::APFloat *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (this + 8);
  v8 = *(this + 1);
  v9 = llvm::APFloatBase::PPCDoubleDouble(this);
  v10 = *(this + 2);
  if (v9 != v8)
  {
    v10 = this;
  }

  v11 = *(v10 + 28);
  if ((v11 & 7) == 1)
  {
    v13 = *(a2 + 1);
    v12 = (a2 + 8);
    if (v9 != v13)
    {
      v14 = (a3 + 8);
      v15 = v12;

      return llvm::detail::IEEEFloat::IEEEFloat(v14, v15);
    }

    v23 = (a3 + 8);
    v15 = v12;

    return llvm::detail::DoubleAPFloat::DoubleAPFloat(v23, v15);
  }

  v17 = *(a2 + 1);
  v18 = *(a2 + 2);
  if (v9 != v17)
  {
    v18 = a2;
  }

  v19 = *(v18 + 28);
  if ((v19 & 7) != 1)
  {
    v20 = (v11 & 7) == 3 && (v19 & 7) == 3;
    if (v20 && ((v11 >> 3) & 1) != (v19 & 8) >> 3)
    {
      if ((v11 & 8) != 0)
      {
        v21 = this;
      }

      else
      {
        v21 = a2;
      }

      v22 = *(v21 + 1);
      v15 = (v21 + 8);
      if (v9 == v22)
      {
        goto LABEL_25;
      }

LABEL_44:
      v14 = (a3 + 8);

      return llvm::detail::IEEEFloat::IEEEFloat(v14, v15);
    }

    v24 = v9;
    if (v9 == v17)
    {
      if (llvm::detail::DoubleAPFloat::compare((a2 + 8), v7))
      {
        v27 = this;
      }

      else
      {
        v27 = a2;
      }

      v28 = *(v27 + 1);
      v15 = (v27 + 8);
      if (v24 != v28)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (llvm::detail::IEEEFloat::compare((a2 + 8), v7))
      {
        v25 = this;
      }

      else
      {
        v25 = a2;
      }

      v26 = *(v25 + 1);
      v15 = (v25 + 8);
      if (v24 != v26)
      {
        goto LABEL_44;
      }
    }

LABEL_25:
    v23 = (a3 + 8);

    return llvm::detail::DoubleAPFloat::DoubleAPFloat(v23, v15);
  }

  if (v9 != v8)
  {
    v14 = (a3 + 8);
    v15 = v7;

    return llvm::detail::IEEEFloat::IEEEFloat(v14, v15);
  }

  v23 = (a3 + 8);
  v15 = v7;

  return llvm::detail::DoubleAPFloat::DoubleAPFloat(v23, v15);
}

void *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compareSigned(this, a3);
  if (result >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  v11 = v8;
  if (v8 >= 0x41)
  {
    result = llvm::APInt::initSlowCase(&v10, v7);
    v8 = v11;
    v7 = &v10;
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

void *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compare(this, a3);
  if (result >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  v11 = v8;
  if (v8 >= 0x41)
  {
    result = llvm::APInt::initSlowCase(&v10, v7);
    v8 = v11;
    v7 = &v10;
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::multiply(&v10, v8, 1);
      v9 = (a1 + 8);
      if (v7 != v10.n128_u64[0])
      {
        goto LABEL_4;
      }

LABEL_9:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, &v10);
      a1[32] = 1;
      if (v7 != v10.n128_u64[0])
      {
        goto LABEL_5;
      }

LABEL_10:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v10);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::multiply(&v10, v8, 1u);
  v9 = (a1 + 8);
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v9, &v10);
  a1[32] = 1;
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v10);
}

void anonymous namespace::MulFOfNegF::~MulFOfNegF(_anonymous_namespace_::MulFOfNegF *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::MulFOfNegF::matchAndRewrite(_anonymous_namespace_::MulFOfNegF *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v26[4] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v22 = v5;
  v21 = v5;
  v24 = v26;
  v26[0] = a2;
  v25 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v23[0] = *(*(v6 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v23);
  if (!DefiningOp)
  {
    v16 = *(a3 + 2);
    if (!v16 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_29;
    }

    v17 = *(v6 + 3);
LABEL_28:
    (*(*v16 + 88))(v16, v17, v18, v23);
    goto LABEL_29;
  }

  v8 = DefiningOp;
  {
    goto LABEL_29;
  }

  v9 = v25;
  if (v25 >= HIDWORD(v25))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v25 + 1, 8);
    v9 = v25;
  }

  v24[v9] = v8;
  LODWORD(v25) = v25 + 1;
  v23[0] = *(*(v6 + 9) + 56);
  v10 = mlir::Value::getDefiningOp(v23);
  if (!v10)
  {
    v16 = *(a3 + 2);
    if (!v16 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_29;
    }

    v17 = *(v6 + 3);
    goto LABEL_28;
  }

  v11 = v10;
  {
    v12 = v25;
    if (v25 >= HIDWORD(v25))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v25 + 1, 8);
      v12 = v25;
    }

    v24[v12] = v11;
    LODWORD(v25) = v25 + 1;
    if (!*(a2 + 47) || (v27.var0 = "fastmath", v27.var1 = 8, InherentAttr = mlir::Operation::getInherentAttr(a2, v27), (v14 & 1) == 0))
    {
      v28.var0 = "fastmath";
      v28.var1 = 8;
      InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v28);
    }

    if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
    {
      mlir::arith::FastMathFlagsAttr::get(*(a3 + 1), 0);
    }

    if ((*(*(v22 + 24) + 8) ^ *(*(v21 + 24) + 8)) < 8)
    {
      v15 = *(v24[1] + 24);
      v23[0] = *(*v24 + 24);
      v23[1] = v15;
      v23[2] = *(v24[2] + 24);
      mlir::Builder::getFusedLoc(a3 + 1, v23, 3, 0);
    }

    v20 = *(a3 + 2);
    if (v20 && mlir::RewriterBase::Listener::classof(v20))
    {
    }
  }

LABEL_29:
  if (v24 != v26)
  {
    free(v24);
  }

  return 0;
}

uint64_t anonymous namespace::static_dag_matcher_10(uint64_t a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id)
  {
    return v5[1];
  }

  else
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (mlir::RewriterBase::Listener::classof(*(a1 + 16)))
      {
      }
    }

    return 0;
  }
}

uint64_t anonymous namespace::static_dag_matcher_11(uint64_t a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id)
  {
    return v5[1];
  }

  else
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (mlir::RewriterBase::Listener::classof(*(a1 + 16)))
      {
      }
    }

    return 0;
  }
}

uint64_t mlir::OpBuilder::create<mlir::arith::MulFOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MulFOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::MulFOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_10(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::NegFOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_11(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::NegFOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, y' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::divide(&v10, v8, 1);
      v9 = (a1 + 8);
      if (v7 != v10.n128_u64[0])
      {
        goto LABEL_4;
      }

LABEL_9:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, &v10);
      a1[32] = 1;
      if (v7 != v10.n128_u64[0])
      {
        goto LABEL_5;
      }

LABEL_10:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v10);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::divide(&v10, v8, 1);
  v9 = (a1 + 8);
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v9, &v10);
  a1[32] = 1;
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v10);
}

void anonymous namespace::DivFOfNegF::~DivFOfNegF(_anonymous_namespace_::DivFOfNegF *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::DivFOfNegF::matchAndRewrite(_anonymous_namespace_::DivFOfNegF *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v26[4] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v22 = v5;
  v21 = v5;
  v24 = v26;
  v26[0] = a2;
  v25 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::DivFOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v23[0] = *(*(v6 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v23);
  if (!DefiningOp)
  {
    v16 = *(a3 + 2);
    if (!v16 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_29;
    }

    v17 = *(v6 + 3);
LABEL_28:
    (*(*v16 + 88))(v16, v17, v18, v23);
    goto LABEL_29;
  }

  v8 = DefiningOp;
  {
    goto LABEL_29;
  }

  v9 = v25;
  if (v25 >= HIDWORD(v25))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v25 + 1, 8);
    v9 = v25;
  }

  v24[v9] = v8;
  LODWORD(v25) = v25 + 1;
  v23[0] = *(*(v6 + 9) + 56);
  v10 = mlir::Value::getDefiningOp(v23);
  if (!v10)
  {
    v16 = *(a3 + 2);
    if (!v16 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_29;
    }

    v17 = *(v6 + 3);
    goto LABEL_28;
  }

  v11 = v10;
  {
    v12 = v25;
    if (v25 >= HIDWORD(v25))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v25 + 1, 8);
      v12 = v25;
    }

    v24[v12] = v11;
    LODWORD(v25) = v25 + 1;
    if (!*(a2 + 47) || (v27.var0 = "fastmath", v27.var1 = 8, InherentAttr = mlir::Operation::getInherentAttr(a2, v27), (v14 & 1) == 0))
    {
      v28.var0 = "fastmath";
      v28.var1 = 8;
      InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v28);
    }

    if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
    {
      mlir::arith::FastMathFlagsAttr::get(*(a3 + 1), 0);
    }

    if ((*(*(v22 + 24) + 8) ^ *(*(v21 + 24) + 8)) < 8)
    {
      v15 = *(v24[1] + 24);
      v23[0] = *(*v24 + 24);
      v23[1] = v15;
      v23[2] = *(v24[2] + 24);
      mlir::Builder::getFusedLoc(a3 + 1, v23, 3, 0);
    }

    v20 = *(a3 + 2);
    if (v20 && mlir::RewriterBase::Listener::classof(v20))
    {
    }
  }

LABEL_29:
  if (v24 != v26)
  {
    free(v24);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::DivFOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::DivFOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::DivFOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::DivFOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::DivFOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::DivFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::DivFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::DivFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, y' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::mod(&v10, v8);
      v9 = (a1 + 8);
      if (v7 != v10.n128_u64[0])
      {
        goto LABEL_4;
      }

LABEL_9:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, &v10);
      a1[32] = 1;
      if (v7 != v10.n128_u64[0])
      {
        goto LABEL_5;
      }

LABEL_10:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v10);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::mod(&v10, v8);
  v9 = (a1 + 8);
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v9, &v10);
  a1[32] = 1;
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v10);
}

void *llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    llvm::isa<mlir::ElementsAttr,mlir::Attribute>();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    llvm::isa<mlir::ElementsAttr,mlir::Attribute>();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
    }
  }

  v15 = v13;
  v16 = v14;
  do
  {
    v17 = v16 >> 1;
    v18 = &v15[2 * (v16 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v16 += ~(v16 >> 1);
    if (v20 < v12)
    {
      v15 = v19;
    }

    else
    {
      v16 = v17;
    }
  }

  while (v16);
  return result;
}

uint64_t getTypeIfLike<mlir::IntegerType>(void *a1)
{
  v1 = *a1;
  {
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v15 = v1;
    v16 = a1;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a1 = v16;
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v15 + 8);
    v4 = *(v15 + 16);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 != &v3[2 * v4] && *v5 == v2 && v5[1])
  {
    v11 = *(*a1 + 136);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v12 && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

LABEL_22:
  result = mlir::getElementTypeOrSelf(a1);
  if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  return result;
}

void anonymous namespace::ExtSIOfExtUI::~ExtSIOfExtUI(_anonymous_namespace_::ExtSIOfExtUI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::ExtSIOfExtUI::matchAndRewrite(_anonymous_namespace_::ExtSIOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v17[0] = a2;
  v16 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v14[0] = *(*(v4 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v14);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v6 = *(a3 + 2);
      if (v6)
      {
        v7 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v6))
        {
          v8 = *(v7 + 24);
LABEL_12:
          (*(*v6 + 88))(v6, v8, v9, v14);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = v16;
      if (v16 < HIDWORD(v16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = v16;
      if (v16 < HIDWORD(v16))
      {
        goto LABEL_18;
      }
    }

    v13 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v11 + 1, 8);
    DefiningOp = v13;
    LODWORD(v11) = v16;
LABEL_18:
    v15[v11] = DefiningOp;
    LODWORD(v16) = v16 + 1;
    v12 = *(v15[1] + 24);
    v14[0] = *(*v15 + 24);
    v14[1] = v12;
    mlir::Builder::getFusedLoc(a3 + 1, v14, 2, 0);
  }

  v6 = *(a3 + 2);
  if (v6 && mlir::RewriterBase::Listener::classof(v6))
  {
    v8 = *(v4 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v15 != v17)
  {
    free(v15);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::ExtSIOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::arith::ExtFOp::fold(mlir::arith::ExtFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(llvm::APFloatBase *a1, void **a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = (a3 + 8);
  v8 = *(a3 + 8);
  v9 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v9 == v8)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v16, v7);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v16, v7);
  }

  v10 = *a2;
  v14 = 0;
  v11 = llvm::APFloat::convert(v15, v10, 1, &v14);
  if ((v14 & 1) != 0 || v11)
  {
    v17 = 0;
    v19 = 0;
    if (v9 != v16.n128_u64[0])
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v9 == v16.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v18, &v16);
    v19 = 1;
    if (v9 != v16.n128_u64[0])
    {
      goto LABEL_13;
    }

LABEL_8:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v16);
    if ((v19 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v18, &v16);
  v19 = 1;
  if (v9 == v16.n128_u64[0])
  {
    goto LABEL_8;
  }

LABEL_13:
  llvm::detail::IEEEFloat::~IEEEFloat(&v16);
  if ((v19 & 1) == 0)
  {
LABEL_9:
    *a4 = 0;
    v12 = (a1 + 8);
    v13 = v7;
    if (v9 == *v7)
    {
      goto LABEL_10;
    }

LABEL_15:
    llvm::detail::IEEEFloat::IEEEFloat(v12, v13);
    if (v19 != 1)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_14:
  v12 = (a1 + 8);
  v13 = &v18;
  if (v9 != v18.n128_u64[0])
  {
    goto LABEL_15;
  }

LABEL_10:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(v12, v13);
  if (v19 != 1)
  {
    return;
  }

LABEL_16:
  if (v9 == v18.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v18);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v18);
  }
}

uint64_t getTypeIfLike<mlir::FloatType>(void *a1)
{
  v1 = *a1;
  {
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v32 = v1;
    v33 = a1;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a1 = v33;
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v32 + 8);
    v4 = *(v32 + 16);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 != &v3[2 * v4] && *v5 == v2 && v5[1])
  {
    v11 = *(*a1 + 136);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v12 && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

LABEL_22:
  result = mlir::getElementTypeOrSelf(a1);
  v15 = *(*result + 136);
  if (v15 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  return result;
}

void anonymous namespace::TruncIExtSIToExtSI::~TruncIExtSIToExtSI(_anonymous_namespace_::TruncIExtSIToExtSI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(_anonymous_namespace_::TruncIExtSIToExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v33[4] = *MEMORY[0x1E69E9840];
  v31 = v33;
  v33[0] = a2;
  v32 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v30[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v30);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v30);
          goto LABEL_42;
        }
      }

      goto LABEL_42;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = *(DefiningOp + 72);
      v12 = v32;
      if (v32 < HIDWORD(v32))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = 0;
      v12 = v32;
      if (v32 < HIDWORD(v32))
      {
        goto LABEL_15;
      }
    }

    v29 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v12 + 1, 8);
    DefiningOp = v29;
    LODWORD(v12) = v32;
LABEL_15:
    v31[v12] = DefiningOp;
    LODWORD(v32) = v32 + 1;
    if (*(DefiningOp + 36))
    {
      v13 = DefiningOp - 16;
    }

    else
    {
      v13 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
    v30[0] = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    if (mlir::Type::isIntOrFloat(v30))
    {
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v30);
    }

    else
    {
      IntOrFloatBitWidth = -1;
    }

    if (*(v5 + 9))
    {
      v16 = v5 - 16;
    }

    else
    {
      v16 = 0;
    }

    v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
    v30[0] = mlir::getElementTypeOrSelf((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (mlir::Type::isIntOrFloat(v30))
    {
      if (IntOrFloatBitWidth <= mlir::Type::getIntOrFloatBitWidth(v30))
      {
        goto LABEL_38;
      }
    }

    else if (IntOrFloatBitWidth <= -1)
    {
      goto LABEL_38;
    }

    if (*(v5 + 9))
    {
      v18 = v5 - 16;
    }

    else
    {
      v18 = 0;
    }

    v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
    v30[0] = mlir::getElementTypeOrSelf((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (mlir::Type::isIntOrFloat(v30) && mlir::Type::getIntOrFloatBitWidth(v30))
    {
      if (*(v5 + 9))
      {
        v20 = v5 - 16;
      }

      else
      {
        v20 = 0;
      }

      v21 = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0);
      v30[0] = mlir::getElementTypeOrSelf((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
      if (mlir::Type::isIntOrFloat(v30))
      {
        v22 = mlir::Type::getIntOrFloatBitWidth(v30);
      }

      else
      {
        v22 = -1;
      }

      v30[0] = mlir::getElementTypeOrSelf((*(*(v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
      if (mlir::Type::isIntOrFloat(v30))
      {
        v27 = mlir::Type::getIntOrFloatBitWidth(v30);
      }

      else
      {
        v27 = -1;
      }

      if (v22 > v27)
      {
        v30[0] = mlir::getElementTypeOrSelf((*(*(v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
        if (mlir::Type::isIntOrFloat(v30))
        {
          if (mlir::Type::getIntOrFloatBitWidth(v30))
          {
            v28 = *(v31[1] + 24);
            v30[0] = *(*v31 + 24);
            v30[1] = v28;
            mlir::Builder::getFusedLoc(a3 + 1, v30, 2, 0);
          }
        }
      }

      v23 = *(a3 + 2);
      if (!v23 || !mlir::RewriterBase::Listener::classof(v23))
      {
        goto LABEL_42;
      }

      v24 = *(a2 + 3);
LABEL_41:
      (*(*v23 + 88))(v23, v24, v25, v30);
      goto LABEL_42;
    }

LABEL_38:
    v23 = *(a3 + 2);
    if (!v23 || !mlir::RewriterBase::Listener::classof(v23))
    {
      goto LABEL_42;
    }

    v24 = *(a2 + 3);
    goto LABEL_41;
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_42:
  if (v31 != v33)
  {
    free(v31);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ExtSIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'ext, tr' failed to satisfy constraint: ''";
  v13 = 51;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'tr, x' failed to satisfy constraint: ''";
  v13 = 49;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::TruncIExtUIToExtUI::~TruncIExtUIToExtUI(_anonymous_namespace_::TruncIExtUIToExtUI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(_anonymous_namespace_::TruncIExtUIToExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v33[4] = *MEMORY[0x1E69E9840];
  v31 = v33;
  v33[0] = a2;
  v32 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v30[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v30);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v30);
          goto LABEL_42;
        }
      }

      goto LABEL_42;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = *(DefiningOp + 72);
      v12 = v32;
      if (v32 < HIDWORD(v32))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = 0;
      v12 = v32;
      if (v32 < HIDWORD(v32))
      {
        goto LABEL_15;
      }
    }

    v29 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v12 + 1, 8);
    DefiningOp = v29;
    LODWORD(v12) = v32;
LABEL_15:
    v31[v12] = DefiningOp;
    LODWORD(v32) = v32 + 1;
    if (*(DefiningOp + 36))
    {
      v13 = DefiningOp - 16;
    }

    else
    {
      v13 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
    v30[0] = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    if (mlir::Type::isIntOrFloat(v30))
    {
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v30);
    }

    else
    {
      IntOrFloatBitWidth = -1;
    }

    if (*(v5 + 9))
    {
      v16 = v5 - 16;
    }

    else
    {
      v16 = 0;
    }

    v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
    v30[0] = mlir::getElementTypeOrSelf((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (mlir::Type::isIntOrFloat(v30))
    {
      if (IntOrFloatBitWidth <= mlir::Type::getIntOrFloatBitWidth(v30))
      {
        goto LABEL_38;
      }
    }

    else if (IntOrFloatBitWidth <= -1)
    {
      goto LABEL_38;
    }

    if (*(v5 + 9))
    {
      v18 = v5 - 16;
    }

    else
    {
      v18 = 0;
    }

    v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
    v30[0] = mlir::getElementTypeOrSelf((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (mlir::Type::isIntOrFloat(v30) && mlir::Type::getIntOrFloatBitWidth(v30))
    {
      if (*(v5 + 9))
      {
        v20 = v5 - 16;
      }

      else
      {
        v20 = 0;
      }

      v21 = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0);
      v30[0] = mlir::getElementTypeOrSelf((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
      if (mlir::Type::isIntOrFloat(v30))
      {
        v22 = mlir::Type::getIntOrFloatBitWidth(v30);
      }

      else
      {
        v22 = -1;
      }

      v30[0] = mlir::getElementTypeOrSelf((*(*(v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
      if (mlir::Type::isIntOrFloat(v30))
      {
        v27 = mlir::Type::getIntOrFloatBitWidth(v30);
      }

      else
      {
        v27 = -1;
      }

      if (v22 > v27)
      {
        v30[0] = mlir::getElementTypeOrSelf((*(*(v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
        if (mlir::Type::isIntOrFloat(v30))
        {
          if (mlir::Type::getIntOrFloatBitWidth(v30))
          {
            v28 = *(v31[1] + 24);
            v30[0] = *(*v31 + 24);
            v30[1] = v28;
            mlir::Builder::getFusedLoc(a3 + 1, v30, 2, 0);
          }
        }
      }

      v23 = *(a3 + 2);
      if (!v23 || !mlir::RewriterBase::Listener::classof(v23))
      {
        goto LABEL_42;
      }

      v24 = *(a2 + 3);
LABEL_41:
      (*(*v23 + 88))(v23, v24, v25, v30);
      goto LABEL_42;
    }

LABEL_38:
    v23 = *(a3 + 2);
    if (!v23 || !mlir::RewriterBase::Listener::classof(v23))
    {
      goto LABEL_42;
    }

    v24 = *(a2 + 3);
    goto LABEL_41;
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_42:
  if (v31 != v33)
  {
    free(v31);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ExtUIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'ext, tr' failed to satisfy constraint: ''";
  v13 = 51;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'tr, x' failed to satisfy constraint: ''";
  v13 = 49;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::TruncIShrSIToTrunciShrUI::~TruncIShrSIToTrunciShrUI(_anonymous_namespace_::TruncIShrSIToTrunciShrUI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(_anonymous_namespace_::TruncIShrSIToTrunciShrUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50 = v52;
  v52[0] = a2;
  v51 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  __p = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp)
  {
    v7 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ShRSIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
LABEL_12:
        v11 = v10;
        v12 = *(*v8 + 88);
        p_p = &__p;
LABEL_13:
        v12(v8, v9, v11, p_p);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v15 = *(DefiningOp + 72);
    __p = *(v15 + 56);
    v16 = mlir::Value::getDefiningOp(&__p);
    if (!v16)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v17 = v16;
    v47 = 0;
    v48 = &v47;
    __p = (v16 - 16);
    v18 = mlir::Value::getDefiningOp(&__p);
    if (!v18 || (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v48, v18) & 1) == 0)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v17 + 24);
        v12 = *(*v8 + 88);
        p_p = &__p;
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v19 = v47;
    __p = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'TypedAttr instance'";
    v45 = 167;
    v20 = *v47;
    {
      v21 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      if (!v23)
      {
        goto LABEL_38;
      }
    }

    else
    {
      mlir::arith::AddUIExtendedOp::fold();
      v21 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      if (!v23)
      {
        goto LABEL_38;
      }
    }

    v24 = v22;
    v25 = v23;
    do
    {
      v26 = v25 >> 1;
      v27 = &v24[2 * (v25 >> 1)];
      v29 = *v27;
      v28 = v27 + 2;
      v25 += ~(v25 >> 1);
      if (v29 < v21)
      {
        v24 = v28;
      }

      else
      {
        v25 = v26;
      }
    }

    while (v25);
    if (v24 != &v22[2 * v23] && *v24 == v21 && v24[1])
    {
      v30 = v51;
      if (v51 >= HIDWORD(v51))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v51 + 1, 8);
        v30 = v51;
      }

      v50[v30] = v17;
      v31 = (v51 + 1);
      LODWORD(v51) = v31;
      if (v31 >= HIDWORD(v51))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v31 + 1, 8);
        LODWORD(v31) = v51;
      }

      v50[v31] = v7;
      LODWORD(v51) = v51 + 1;
      LODWORD(v45) = 1;
      __p = 0;
      v48 = &__p;
      if (!v19)
      {
        goto LABEL_80;
      }

      if ((mlir::detail::constant_int_value_binder::match(&v48, v19) & 1) == 0)
      {
        if (v45 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        goto LABEL_80;
      }

      v42 = v45;
      v43 = __p;
      __p = mlir::getElementTypeOrSelf((*(*(v15 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
      if (mlir::Type::isIntOrFloat(&__p))
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&__p);
      }

      else
      {
        IntOrFloatBitWidth = -1;
      }

      v41 = IntOrFloatBitWidth;
      if (*(v5 + 9))
      {
        v33 = v5 - 16;
      }

      else
      {
        v33 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0);
      __p = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
      if (mlir::Type::isIntOrFloat(&__p))
      {
        v35 = mlir::Type::getIntOrFloatBitWidth(&__p);
      }

      else
      {
        v35 = -1;
      }

      LODWORD(v49) = 1;
      v48 = 0;
      __p = &v48;
      if (mlir::detail::constant_int_value_binder::match(&__p, v19))
      {
        LODWORD(v45) = v49;
        __p = v48;
        LOBYTE(v46) = 1;
      }

      else
      {
        LOBYTE(__p) = 0;
        LOBYTE(v46) = 0;
        if (v49 >= 0x41 && v48)
        {
          operator delete[](v48);
        }
      }

      v36 = v45;
      if (v45 >= 0x41)
      {
        if (v36 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
        {
          v38 = 1;
          goto LABEL_71;
        }

        v37 = __p;
      }

      else
      {
        v37 = &__p;
      }

      v38 = *v37 != v41 - v35;
LABEL_71:
      if (v36 >= 0x41 && (v46 & 1) != 0 && __p)
      {
        operator delete[](__p);
      }

      if (v42 >= 0x41 && v43)
      {
        operator delete[](v43);
        if (!v38)
        {
          goto LABEL_78;
        }
      }

      else if (!v38)
      {
LABEL_78:
        v39 = *(v50[1] + 24);
        __p = *(*v50 + 24);
        v45 = v39;
        mlir::Builder::getFusedLoc(a3 + 1, &__p, 2, 0);
      }

LABEL_80:
      v40 = *(a3 + 2);
      if (v40 && mlir::RewriterBase::Listener::classof(v40))
      {
      }

      goto LABEL_14;
    }

LABEL_38:
    v48 = &__p;
    v8 = *(a3 + 2);
    if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      v9 = *(v17 + 24);
      v12 = *(*v8 + 88);
      p_p = &v48;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_14:
  if (v50 != v52)
  {
    free(v50);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ShRUIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ShRUIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

uint64_t mlir::OpBuilder::create<mlir::arith::TruncIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::TruncIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::ValueRange::ValueRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v15;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ShRSIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "::mlir::success(::mlir::matchPattern(op2->getResult(0), ::mlir::m_Constant(&arg2_0))) return ::mlir::failure";
  v13 = 108;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization5(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(void ***a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v14 = 261;
  v13[0] = v3;
  v13[1] = v2;
  v4 = mlir::Diagnostic::operator<<(a2, v13);
  v5 = *(v4 + 16);
  v15 = 3;
  v16 = ": TypedAttr instance";
  v17 = 20;
  v6 = *(v4 + 24);
  v7 = &v15;
  if (v6 >= *(v4 + 28))
  {
    if (v5 <= &v15 && v5 + 24 * v6 > &v15)
    {
      v11 = &v15 - v5;
      v12 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v4 + 16, v4 + 32, v6 + 1, 24);
      v4 = v12;
      v5 = *(v12 + 16);
      v7 = &v11[v5];
    }

    else
    {
      v10 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v4 + 16, v4 + 32, v6 + 1, 24);
      v4 = v10;
      v5 = *(v10 + 16);
      v7 = &v15;
    }
  }

  v8 = (v5 + 24 * *(v4 + 24));
  result = *v7;
  v8[1].n128_u64[0] = v7[1].n128_u64[0];
  *v8 = result;
  ++*(v4 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, tr, c0' failed to satisfy constraint: ''";
  v13 = 53;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::TruncIShrUIMulIToMulSIExtended::~TruncIShrUIMulIToMulSIExtended(_anonymous_namespace_::TruncIShrUIMulIToMulSIExtended *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(_anonymous_namespace_::TruncIShrUIMulIToMulSIExtended *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v66[4] = *MEMORY[0x1E69E9840];
  v64 = v66;
  v66[0] = a2;
  v65 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  __p = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (!DefiningOp)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v5 + 3);
    goto LABEL_12;
  }

  v7 = DefiningOp;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v7 + 24);
    goto LABEL_12;
  }

  __p = *(*(DefiningOp + 72) + 24);
  v13 = mlir::Value::getDefiningOp(&__p);
  if (!v13)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v7 + 24);
    goto LABEL_12;
  }

  v14 = v13;
  if (*(*(v13 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v14 + 24);
    goto LABEL_12;
  }

  __p = *(*(v13 + 72) + 24);
  v15 = mlir::Value::getDefiningOp(&__p);
  if (!v15)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v14 + 24);
    goto LABEL_12;
  }

  if (*(*(v15 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8)
    {
      goto LABEL_13;
    }

    v16 = v15;
    if (!mlir::RewriterBase::Listener::classof(v8))
    {
      goto LABEL_13;
    }

    v9 = *(v16 + 24);
    goto LABEL_12;
  }

  if ((*(v15 + 46) & 0x80) != 0)
  {
    v17 = *(v15 + 72);
    v18 = v65;
    if (v65 < HIDWORD(v65))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v17 = 0;
    v18 = v65;
    if (v65 < HIDWORD(v65))
    {
      goto LABEL_35;
    }
  }

  v45 = v15;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v18 + 1, 8);
  v15 = v45;
  LODWORD(v18) = v65;
LABEL_35:
  *(v64 + v18) = v15;
  LODWORD(v65) = v65 + 1;
  __p = *(*(v14 + 72) + 56);
  v19 = mlir::Value::getDefiningOp(&__p);
  if (v19)
  {
    v20 = v19;
    if (*(*(v19 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        goto LABEL_13;
      }

      v9 = *(v20 + 24);
      goto LABEL_12;
    }

    if ((*(v19 + 46) & 0x80) != 0)
    {
      v21 = *(v19 + 72);
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v64, v19);
      if (!*(v14 + 47))
      {
        goto LABEL_44;
      }
    }

    else
    {
      v21 = 0;
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v64, v19);
      if (!*(v14 + 47))
      {
        goto LABEL_44;
      }
    }

    v67.var0 = "overflowFlags";
    v67.var1 = 13;
    InherentAttr = mlir::Operation::getInherentAttr(v14, v67);
    if (v23)
    {
LABEL_45:
      if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      v24 = v65;
      if (v65 >= HIDWORD(v65))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v65 + 1, 8);
        v24 = v65;
      }

      *(v64 + v24) = v14;
      LODWORD(v65) = v65 + 1;
      __p = *(*(v7 + 72) + 56);
      v25 = mlir::Value::getDefiningOp(&__p);
      if (v25)
      {
        v26 = v25;
        v56 = &p_p;
        p_p = 0;
        __p = (v25 - 16);
        v27 = mlir::Value::getDefiningOp(&__p);
        if (v27 && (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v56, v27) & 1) != 0)
        {
          v28 = p_p;
          v29 = v65;
          if (v65 >= HIDWORD(v65))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v65 + 1, 8);
            v29 = v65;
          }

          *(v64 + v29) = v26;
          v30 = (v65 + 1);
          LODWORD(v65) = v30;
          if (v30 >= HIDWORD(v65))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v30 + 1, 8);
            LODWORD(v30) = v65;
          }

          *(v64 + v30) = v7;
          LODWORD(v65) = v65 + 1;
          if (*(v5 + 9))
          {
            v31 = v5 - 16;
          }

          else
          {
            v31 = 0;
          }

          v32 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
          if ((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) == v32 && (*(*(v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) == v32)
          {
            if (*(v14 + 36))
            {
              v33 = v14 - 16;
            }

            else
            {
              v33 = 0;
            }

            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0);
            __p = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
            if (mlir::Type::isIntOrFloat(&__p))
            {
              IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&__p);
            }

            else
            {
              IntOrFloatBitWidth = -1;
            }

            __p = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
            if (mlir::Type::isIntOrFloat(&__p))
            {
              v39 = mlir::Type::getIntOrFloatBitWidth(&__p);
            }

            else
            {
              v39 = -1;
            }

            if (IntOrFloatBitWidth > v39)
            {
              __p = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
              if (mlir::Type::isIntOrFloat(&__p))
              {
                if (mlir::Type::getIntOrFloatBitWidth(&__p))
                {
                  LODWORD(v60) = 1;
                  __p = 0;
                  p_p = &__p;
                  if (v28)
                  {
                    v40 = mlir::detail::constant_int_value_binder::match(&p_p, v28);
                    v41 = v60;
                    if (v40)
                    {
                      v55 = __p;
                      if (*(v14 + 36))
                      {
                        v42 = v14 - 16;
                      }

                      else
                      {
                        v42 = 0;
                      }

                      v43 = mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0);
                      __p = mlir::getElementTypeOrSelf((*(v43 + 8) & 0xFFFFFFFFFFFFFFF8));
                      if (mlir::Type::isIntOrFloat(&__p))
                      {
                        v44 = mlir::Type::getIntOrFloatBitWidth(&__p);
                      }

                      else
                      {
                        v44 = -1;
                      }

                      v54 = v44;
                      __p = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
                      if (mlir::Type::isIntOrFloat(&__p))
                      {
                        v46 = mlir::Type::getIntOrFloatBitWidth(&__p);
                      }

                      else
                      {
                        v46 = -1;
                      }

                      LODWORD(v58) = 1;
                      p_p = 0;
                      __p = &p_p;
                      v47 = mlir::detail::constant_int_value_binder::match(&__p, v28);
                      if (v47)
                      {
                        LODWORD(v60) = v58;
                        __p = p_p;
                        LOBYTE(v61) = 1;
                      }

                      else
                      {
                        LOBYTE(__p) = 0;
                        LOBYTE(v61) = 0;
                        if (v58 >= 0x41 && p_p)
                        {
                          operator delete[](p_p);
                        }
                      }

                      v48 = v60;
                      if (v60 >= 0x41)
                      {
                        if (v48 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
                        {
                          v50 = 1;
LABEL_114:
                          v51 = v47 ^ 1;
                          if (v48 < 0x41)
                          {
                            v51 = 1;
                          }

                          if ((v51 & 1) == 0 && __p)
                          {
                            operator delete[](__p);
                          }

                          if (v41 >= 0x41 && v55)
                          {
                            operator delete[](v55);
                            if (!v50)
                            {
                              goto LABEL_122;
                            }
                          }

                          else if (!v50)
                          {
LABEL_122:
                            v52 = *(*(v64 + 1) + 24);
                            __p = *(*v64 + 24);
                            v60 = v52;
                            v53 = *(*(v64 + 3) + 24);
                            v61 = *(*(v64 + 2) + 24);
                            v62 = v53;
                            v63 = *(*(v64 + 4) + 24);
                            mlir::Builder::getFusedLoc(a3 + 1, &__p, 5, 0);
                          }

                          goto LABEL_124;
                        }

                        v49 = __p;
                      }

                      else
                      {
                        v49 = &__p;
                      }

                      v50 = *v49 != v54 - v46;
                      goto LABEL_114;
                    }

                    if (v60 >= 0x41 && __p)
                    {
                      operator delete[](__p);
                    }
                  }

LABEL_124:
                  v36 = *(a3 + 2);
                  if (!v36 || !mlir::RewriterBase::Listener::classof(v36))
                  {
                    goto LABEL_13;
                  }

                  v37 = *(a2 + 3);
                  goto LABEL_93;
                }
              }
            }

            v36 = *(a3 + 2);
            if (!v36 || !mlir::RewriterBase::Listener::classof(v36))
            {
              goto LABEL_13;
            }

            v37 = *(a2 + 3);
          }

          else
          {
            v36 = *(a3 + 2);
            if (!v36 || !mlir::RewriterBase::Listener::classof(v36))
            {
              goto LABEL_13;
            }

            v37 = *(a2 + 3);
          }

LABEL_93:
          (*(*v36 + 88))(v36, v37, v38, &__p);
          goto LABEL_13;
        }

        v8 = *(a3 + 2);
        if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
        {
          goto LABEL_13;
        }

        v9 = *(v26 + 24);
      }

      else
      {
        v8 = *(a3 + 2);
        if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
        {
          goto LABEL_13;
        }

        v9 = *(v7 + 24);
      }

LABEL_12:
      (*(*v8 + 88))(v8, v9, v10, &__p);
LABEL_13:
      v11 = 0;
      goto LABEL_14;
    }

LABEL_44:
    v68.var0 = "overflowFlags";
    v68.var1 = 13;
    InherentAttr = mlir::DictionaryAttr::get((v14 + 56), v68);
    goto LABEL_45;
  }

LABEL_14:
  if (v64 != v66)
  {
    free(v64);
  }

  return v11;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && mlir::RewriterBase::Listener::classof(a1))
  {
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::MulSIExtendedOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MulSIExtendedOp,mlir::Value &,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::arith::MulSIExtendedOp::build(v11, v18, *a3, *a4);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ShRUIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp2 is not ::mlir::arith::MulIOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp2";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp2";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#8}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'tr, x, y' failed to satisfy constraint: ''";
  v13 = 52;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#9}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'mul, x' failed to satisfy constraint: ''";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#10}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'mul, x, c0' failed to satisfy constraint: ''";
  v13 = 54;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::TruncIShrUIMulIToMulUIExtended::~TruncIShrUIMulIToMulUIExtended(_anonymous_namespace_::TruncIShrUIMulIToMulUIExtended *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(_anonymous_namespace_::TruncIShrUIMulIToMulUIExtended *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v66[4] = *MEMORY[0x1E69E9840];
  v64 = v66;
  v66[0] = a2;
  v65 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  __p = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (!DefiningOp)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v5 + 3);
    goto LABEL_12;
  }

  v7 = DefiningOp;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v7 + 24);
    goto LABEL_12;
  }

  __p = *(*(DefiningOp + 72) + 24);
  v13 = mlir::Value::getDefiningOp(&__p);
  if (!v13)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v7 + 24);
    goto LABEL_12;
  }

  v14 = v13;
  if (*(*(v13 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v14 + 24);
    goto LABEL_12;
  }

  __p = *(*(v13 + 72) + 24);
  v15 = mlir::Value::getDefiningOp(&__p);
  if (!v15)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v14 + 24);
    goto LABEL_12;
  }

  if (*(*(v15 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8)
    {
      goto LABEL_13;
    }

    v16 = v15;
    if (!mlir::RewriterBase::Listener::classof(v8))
    {
      goto LABEL_13;
    }

    v9 = *(v16 + 24);
    goto LABEL_12;
  }

  if ((*(v15 + 46) & 0x80) != 0)
  {
    v17 = *(v15 + 72);
    v18 = v65;
    if (v65 < HIDWORD(v65))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v17 = 0;
    v18 = v65;
    if (v65 < HIDWORD(v65))
    {
      goto LABEL_35;
    }
  }

  v45 = v15;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v18 + 1, 8);
  v15 = v45;
  LODWORD(v18) = v65;
LABEL_35:
  *(v64 + v18) = v15;
  LODWORD(v65) = v65 + 1;
  __p = *(*(v14 + 72) + 56);
  v19 = mlir::Value::getDefiningOp(&__p);
  if (v19)
  {
    v20 = v19;
    if (*(*(v19 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        goto LABEL_13;
      }

      v9 = *(v20 + 24);
      goto LABEL_12;
    }

    if ((*(v19 + 46) & 0x80) != 0)
    {
      v21 = *(v19 + 72);
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v64, v19);
      if (!*(v14 + 47))
      {
        goto LABEL_44;
      }
    }

    else
    {
      v21 = 0;
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v64, v19);
      if (!*(v14 + 47))
      {
        goto LABEL_44;
      }
    }

    v67.var0 = "overflowFlags";
    v67.var1 = 13;
    InherentAttr = mlir::Operation::getInherentAttr(v14, v67);
    if (v23)
    {
LABEL_45:
      if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      v24 = v65;
      if (v65 >= HIDWORD(v65))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v65 + 1, 8);
        v24 = v65;
      }

      *(v64 + v24) = v14;
      LODWORD(v65) = v65 + 1;
      __p = *(*(v7 + 72) + 56);
      v25 = mlir::Value::getDefiningOp(&__p);
      if (v25)
      {
        v26 = v25;
        v56 = &p_p;
        p_p = 0;
        __p = (v25 - 16);
        v27 = mlir::Value::getDefiningOp(&__p);
        if (v27 && (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v56, v27) & 1) != 0)
        {
          v28 = p_p;
          v29 = v65;
          if (v65 >= HIDWORD(v65))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v65 + 1, 8);
            v29 = v65;
          }

          *(v64 + v29) = v26;
          v30 = (v65 + 1);
          LODWORD(v65) = v30;
          if (v30 >= HIDWORD(v65))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v30 + 1, 8);
            LODWORD(v30) = v65;
          }

          *(v64 + v30) = v7;
          LODWORD(v65) = v65 + 1;
          if (*(v5 + 9))
          {
            v31 = v5 - 16;
          }

          else
          {
            v31 = 0;
          }

          v32 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
          if ((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) == v32 && (*(*(v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) == v32)
          {
            if (*(v14 + 36))
            {
              v33 = v14 - 16;
            }

            else
            {
              v33 = 0;
            }

            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0);
            __p = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
            if (mlir::Type::isIntOrFloat(&__p))
            {
              IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&__p);
            }

            else
            {
              IntOrFloatBitWidth = -1;
            }

            __p = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
            if (mlir::Type::isIntOrFloat(&__p))
            {
              v39 = mlir::Type::getIntOrFloatBitWidth(&__p);
            }

            else
            {
              v39 = -1;
            }

            if (IntOrFloatBitWidth > v39)
            {
              __p = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
              if (mlir::Type::isIntOrFloat(&__p))
              {
                if (mlir::Type::getIntOrFloatBitWidth(&__p))
                {
                  LODWORD(v60) = 1;
                  __p = 0;
                  p_p = &__p;
                  if (v28)
                  {
                    v40 = mlir::detail::constant_int_value_binder::match(&p_p, v28);
                    v41 = v60;
                    if (v40)
                    {
                      v55 = __p;
                      if (*(v14 + 36))
                      {
                        v42 = v14 - 16;
                      }

                      else
                      {
                        v42 = 0;
                      }

                      v43 = mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0);
                      __p = mlir::getElementTypeOrSelf((*(v43 + 8) & 0xFFFFFFFFFFFFFFF8));
                      if (mlir::Type::isIntOrFloat(&__p))
                      {
                        v44 = mlir::Type::getIntOrFloatBitWidth(&__p);
                      }

                      else
                      {
                        v44 = -1;
                      }

                      v54 = v44;
                      __p = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
                      if (mlir::Type::isIntOrFloat(&__p))
                      {
                        v46 = mlir::Type::getIntOrFloatBitWidth(&__p);
                      }

                      else
                      {
                        v46 = -1;
                      }

                      LODWORD(v58) = 1;
                      p_p = 0;
                      __p = &p_p;
                      v47 = mlir::detail::constant_int_value_binder::match(&__p, v28);
                      if (v47)
                      {
                        LODWORD(v60) = v58;
                        __p = p_p;
                        LOBYTE(v61) = 1;
                      }

                      else
                      {
                        LOBYTE(__p) = 0;
                        LOBYTE(v61) = 0;
                        if (v58 >= 0x41 && p_p)
                        {
                          operator delete[](p_p);
                        }
                      }

                      v48 = v60;
                      if (v60 >= 0x41)
                      {
                        if (v48 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
                        {
                          v50 = 1;
LABEL_114:
                          v51 = v47 ^ 1;
                          if (v48 < 0x41)
                          {
                            v51 = 1;
                          }

                          if ((v51 & 1) == 0 && __p)
                          {
                            operator delete[](__p);
                          }

                          if (v41 >= 0x41 && v55)
                          {
                            operator delete[](v55);
                            if (!v50)
                            {
                              goto LABEL_122;
                            }
                          }

                          else if (!v50)
                          {
LABEL_122:
                            v52 = *(*(v64 + 1) + 24);
                            __p = *(*v64 + 24);
                            v60 = v52;
                            v53 = *(*(v64 + 3) + 24);
                            v61 = *(*(v64 + 2) + 24);
                            v62 = v53;
                            v63 = *(*(v64 + 4) + 24);
                            mlir::Builder::getFusedLoc(a3 + 1, &__p, 5, 0);
                          }

                          goto LABEL_124;
                        }

                        v49 = __p;
                      }

                      else
                      {
                        v49 = &__p;
                      }

                      v50 = *v49 != v54 - v46;
                      goto LABEL_114;
                    }

                    if (v60 >= 0x41 && __p)
                    {
                      operator delete[](__p);
                    }
                  }

LABEL_124:
                  v36 = *(a3 + 2);
                  if (!v36 || !mlir::RewriterBase::Listener::classof(v36))
                  {
                    goto LABEL_13;
                  }

                  v37 = *(a2 + 3);
                  goto LABEL_93;
                }
              }
            }

            v36 = *(a3 + 2);
            if (!v36 || !mlir::RewriterBase::Listener::classof(v36))
            {
              goto LABEL_13;
            }

            v37 = *(a2 + 3);
          }

          else
          {
            v36 = *(a3 + 2);
            if (!v36 || !mlir::RewriterBase::Listener::classof(v36))
            {
              goto LABEL_13;
            }

            v37 = *(a2 + 3);
          }

LABEL_93:
          (*(*v36 + 88))(v36, v37, v38, &__p);
          goto LABEL_13;
        }

        v8 = *(a3 + 2);
        if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
        {
          goto LABEL_13;
        }

        v9 = *(v26 + 24);
      }

      else
      {
        v8 = *(a3 + 2);
        if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
        {
          goto LABEL_13;
        }

        v9 = *(v7 + 24);
      }

LABEL_12:
      (*(*v8 + 88))(v8, v9, v10, &__p);
LABEL_13:
      v11 = 0;
      goto LABEL_14;
    }

LABEL_44:
    v68.var0 = "overflowFlags";
    v68.var1 = 13;
    InherentAttr = mlir::DictionaryAttr::get((v14 + 56), v68);
    goto LABEL_45;
  }

LABEL_14:
  if (v64 != v66)
  {
    free(v64);
  }

  return v11;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && mlir::RewriterBase::Listener::classof(a1))
  {
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::MulUIExtendedOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulUIExtendedOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MulUIExtendedOp,mlir::Value &,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::arith::MulSIExtendedOp::build(v11, v18, *a3, *a4);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulUIExtendedOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ShRUIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp2 is not ::mlir::arith::MulIOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp2";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp2";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#8}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'tr, x, y' failed to satisfy constraint: ''";
  v13 = 52;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#9}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'mul, x' failed to satisfy constraint: ''";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#10}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'mul, x, c0' failed to satisfy constraint: ''";
  v13 = 54;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::arith::TruncFOp::fold(mlir::arith::TruncFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(llvm::APFloatBase *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = *(**a2 + 16 * ((*(**a2 + 44) >> 23) & 1) + 72);
  if (!v21)
  {
    LOBYTE(v9) = 1;
    v10 = (a3 + 8);
    v13 = *(a3 + 8);
    v12 = llvm::APFloatBase::PPCDoubleDouble(a1);
    if (v12 != v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v20, v10);
    goto LABEL_6;
  }

  Int = mlir::IntegerAttr::getInt(&v21);
  v9 = 0x400020301uLL >> (8 * Int);
  v11 = *(a3 + 8);
  v10 = (a3 + 8);
  v12 = llvm::APFloatBase::PPCDoubleDouble(Int);
  if (v12 == v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  llvm::detail::IEEEFloat::IEEEFloat(&v20, v10);
LABEL_6:
  v14 = a2[1];
  v18 = 0;
  v15 = llvm::APFloat::convert(v19, v14, v9, &v18);
  if ((v18 & 1) != 0 || v15)
  {
    LOBYTE(v21) = 0;
    v23 = 0;
    if (v12 != v20.n128_u64[0])
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (v12 == v20.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v22, &v20);
    v23 = 1;
    if (v12 != v20.n128_u64[0])
    {
      goto LABEL_15;
    }

LABEL_10:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v20);
    if ((v23 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v22, &v20);
  v23 = 1;
  if (v12 == v20.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_15:
  llvm::detail::IEEEFloat::~IEEEFloat(&v20);
  if ((v23 & 1) == 0)
  {
LABEL_11:
    *a4 = 0;
    v16 = (a1 + 8);
    v17 = v10;
    if (v12 == *v10)
    {
      goto LABEL_12;
    }

LABEL_17:
    llvm::detail::IEEEFloat::IEEEFloat(v16, v17);
    if (v23 != 1)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_16:
  v16 = (a1 + 8);
  v17 = &v22;
  if (v12 != v22.n128_u64[0])
  {
    goto LABEL_17;
  }

LABEL_12:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(v16, v17);
  if (v23 != 1)
  {
    return;
  }

LABEL_18:
  if (v12 == v22.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v22);
  }
}

void anonymous namespace::AndOfExtUI::~AndOfExtUI(_anonymous_namespace_::AndOfExtUI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::AndOfExtUI::matchAndRewrite(_anonymous_namespace_::AndOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v25[0] = a2;
  v24 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v22[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v22);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v22);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    v20 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v13 + 1, 8);
    DefiningOp = v20;
    LODWORD(v13) = v24;
LABEL_18:
    v23[v13] = DefiningOp;
    LODWORD(v24) = v24 + 1;
    v22[0] = *(*(v5 + 9) + 56);
    v14 = mlir::Value::getDefiningOp(v22);
    if (!v14)
    {
      v7 = *(a3 + 2);
      if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v5 + 3);
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v15 = v14;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v15 + 24);
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    if ((*(v14 + 46) & 0x80) != 0)
    {
      v16 = *(v14 + 72);
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
LABEL_28:
        v23[v17] = v14;
        LODWORD(v24) = v24 + 1;
        if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
        {
          v18 = *(v23[1] + 24);
          v22[0] = *(*v23 + 24);
          v22[1] = v18;
          v22[2] = *(v23[2] + 24);
          mlir::Builder::getFusedLoc(a3 + 1, v22, 3, 0);
        }

        v19 = *(a3 + 2);
        if (v19 && mlir::RewriterBase::Listener::classof(v19))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_28;
      }
    }

    v21 = v14;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v17 + 1, 8);
    v14 = v21;
    LODWORD(v17) = v24;
    goto LABEL_28;
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v23 != v25)
  {
    free(v23);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::AndIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::AndIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, y' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::AndOfExtSI::~AndOfExtSI(_anonymous_namespace_::AndOfExtSI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::AndOfExtSI::matchAndRewrite(_anonymous_namespace_::AndOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v25[0] = a2;
  v24 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v22[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v22);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v22);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    v20 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v13 + 1, 8);
    DefiningOp = v20;
    LODWORD(v13) = v24;
LABEL_18:
    v23[v13] = DefiningOp;
    LODWORD(v24) = v24 + 1;
    v22[0] = *(*(v5 + 9) + 56);
    v14 = mlir::Value::getDefiningOp(v22);
    if (!v14)
    {
      v7 = *(a3 + 2);
      if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v5 + 3);
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v15 = v14;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v15 + 24);
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    if ((*(v14 + 46) & 0x80) != 0)
    {
      v16 = *(v14 + 72);
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
LABEL_28:
        v23[v17] = v14;
        LODWORD(v24) = v24 + 1;
        if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
        {
          v18 = *(v23[1] + 24);
          v22[0] = *(*v23 + 24);
          v22[1] = v18;
          v22[2] = *(v23[2] + 24);
          mlir::Builder::getFusedLoc(a3 + 1, v22, 3, 0);
        }

        v19 = *(a3 + 2);
        if (v19 && mlir::RewriterBase::Listener::classof(v19))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_28;
      }
    }

    v21 = v14;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v17 + 1, 8);
    v14 = v21;
    LODWORD(v17) = v24;
    goto LABEL_28;
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v23 != v25)
  {
    free(v23);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, y' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::OrOfExtUI::~OrOfExtUI(_anonymous_namespace_::OrOfExtUI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::OrOfExtUI::matchAndRewrite(_anonymous_namespace_::OrOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v25[0] = a2;
  v24 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v22[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v22);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v22);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    v20 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v13 + 1, 8);
    DefiningOp = v20;
    LODWORD(v13) = v24;
LABEL_18:
    v23[v13] = DefiningOp;
    LODWORD(v24) = v24 + 1;
    v22[0] = *(*(v5 + 9) + 56);
    v14 = mlir::Value::getDefiningOp(v22);
    if (!v14)
    {
      v7 = *(a3 + 2);
      if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v5 + 3);
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v15 = v14;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v15 + 24);
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    if ((*(v14 + 46) & 0x80) != 0)
    {
      v16 = *(v14 + 72);
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
LABEL_28:
        v23[v17] = v14;
        LODWORD(v24) = v24 + 1;
        if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
        {
          v18 = *(v23[1] + 24);
          v22[0] = *(*v23 + 24);
          v22[1] = v18;
          v22[2] = *(v23[2] + 24);
          mlir::Builder::getFusedLoc(a3 + 1, v22, 3, 0);
        }

        v19 = *(a3 + 2);
        if (v19 && mlir::RewriterBase::Listener::classof(v19))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_28;
      }
    }

    v21 = v14;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v17 + 1, 8);
    v14 = v21;
    LODWORD(v17) = v24;
    goto LABEL_28;
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v23 != v25)
  {
    free(v23);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::OrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::OrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, y' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::OrOfExtSI::~OrOfExtSI(_anonymous_namespace_::OrOfExtSI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::OrOfExtSI::matchAndRewrite(_anonymous_namespace_::OrOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v25[0] = a2;
  v24 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v22[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v22);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v22);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    v20 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v13 + 1, 8);
    DefiningOp = v20;
    LODWORD(v13) = v24;
LABEL_18:
    v23[v13] = DefiningOp;
    LODWORD(v24) = v24 + 1;
    v22[0] = *(*(v5 + 9) + 56);
    v14 = mlir::Value::getDefiningOp(v22);
    if (!v14)
    {
      v7 = *(a3 + 2);
      if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v5 + 3);
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v15 = v14;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v15 + 24);
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    if ((*(v14 + 46) & 0x80) != 0)
    {
      v16 = *(v14 + 72);
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
LABEL_28:
        v23[v17] = v14;
        LODWORD(v24) = v24 + 1;
        if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
        {
          v18 = *(v23[1] + 24);
          v22[0] = *(*v23 + 24);
          v22[1] = v18;
          v22[2] = *(v23[2] + 24);
          mlir::Builder::getFusedLoc(a3 + 1, v22, 3, 0);
        }

        v19 = *(a3 + 2);
        if (v19 && mlir::RewriterBase::Listener::classof(v19))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_28;
      }
    }

    v21 = v14;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v17 + 1, 8);
    v14 = v21;
    LODWORD(v17) = v24;
    goto LABEL_28;
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v23 != v25)
  {
    free(v23);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, y' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t mlir::arith::UIToFPOp::fold(mlir::arith::UIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  FloatSemantics = mlir::FloatType::getFloatSemantics(&v13);
  Width = mlir::FloatType::getWidth(&v13);
  v12 = Width;
  if (Width > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, 0, 0);
    v7 = llvm::APFloatBase::PPCDoubleDouble(v8);
    if (v7 != FloatSemantics)
    {
LABEL_3:
      llvm::detail::IEEEFloat::IEEEFloat((a1 + 8), FloatSemantics, &__p);
      if (v12 < 0x41)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else
  {
    __p = 0;
    v7 = llvm::APFloatBase::PPCDoubleDouble(Width);
    if (v7 != FloatSemantics)
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), FloatSemantics, &__p);
  if (v12 < 0x41)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (__p)
  {
    operator delete[](__p);
  }

LABEL_9:
  v9 = (a1 + 8);
  if (v7 == *(a1 + 8))
  {
    return llvm::detail::DoubleAPFloat::convertFromAPInt(v9, a3, 0, 1);
  }

  else
  {
    return llvm::detail::IEEEFloat::convertFromAPInt(v9, a3, 0, 1);
  }
}

uint64_t llvm::APFloat::convertFromAPInt(void *a1, uint64_t a2, int a3, int a4)
{
  v7 = (a1 + 1);
  v8 = a1[1];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v8)
  {

    return llvm::detail::DoubleAPFloat::convertFromAPInt(v7, a2, a3, a4);
  }

  else
  {

    return llvm::detail::IEEEFloat::convertFromAPInt(v7, a2, a3, a4);
  }
}

uint64_t mlir::arith::SIToFPOp::fold(mlir::arith::SIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  FloatSemantics = mlir::FloatType::getFloatSemantics(&v13);
  Width = mlir::FloatType::getWidth(&v13);
  v12 = Width;
  if (Width > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, 0, 0);
    v7 = llvm::APFloatBase::PPCDoubleDouble(v8);
    if (v7 != FloatSemantics)
    {
LABEL_3:
      llvm::detail::IEEEFloat::IEEEFloat((a1 + 8), FloatSemantics, &__p);
      if (v12 < 0x41)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else
  {
    __p = 0;
    v7 = llvm::APFloatBase::PPCDoubleDouble(Width);
    if (v7 != FloatSemantics)
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), FloatSemantics, &__p);
  if (v12 < 0x41)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (__p)
  {
    operator delete[](__p);
  }

LABEL_9:
  v9 = (a1 + 8);
  if (v7 == *(a1 + 8))
  {
    return llvm::detail::DoubleAPFloat::convertFromAPInt(v9, a3, 1, 1);
  }

  else
  {
    return llvm::detail::IEEEFloat::convertFromAPInt(v9, a3, 1, 1);
  }
}

void anonymous namespace::IndexCastOfIndexCast::~IndexCastOfIndexCast(_anonymous_namespace_::IndexCastOfIndexCast *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::IndexCastOfIndexCast::matchAndRewrite(_anonymous_namespace_::IndexCastOfIndexCast *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v21[0] = a2;
  v20 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v18[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v18);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v18);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v20;
      if (v20 < HIDWORD(v20))
      {
LABEL_18:
        *(v19 + v13) = DefiningOp;
        LODWORD(v20) = v20 + 1;
        if (*(v5 + 9))
        {
          v14 = v5 - 16;
        }

        else
        {
          v14 = 0;
        }

        if ((*(*(v12 + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8)) < 8)
        {
          v15 = *(*(v19 + 1) + 24);
          v18[0] = *(*v19 + 24);
          v18[1] = v15;
          mlir::Builder::getFusedLoc(a3 + 1, v18, 2, 0);
        }

        v16 = *(a3 + 2);
        if (v16 && mlir::RewriterBase::Listener::classof(v16))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
      v13 = v20;
      if (v20 < HIDWORD(v20))
      {
        goto LABEL_18;
      }
    }

    v17 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v13 + 1, 8);
    DefiningOp = v17;
    LODWORD(v13) = v20;
    goto LABEL_18;
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v19 != v21)
  {
    free(v19);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastOfIndexCast::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastOfIndexCast::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::IndexCastOp type";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastOfIndexCast::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'res, x' failed to satisfy constraint: ''";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::IndexCastOfExtSI::~IndexCastOfExtSI(_anonymous_namespace_::IndexCastOfExtSI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::IndexCastOfExtSI::matchAndRewrite(_anonymous_namespace_::IndexCastOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v17[0] = a2;
  v16 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v14[0] = *(*(v4 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v14);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v6 = *(a3 + 2);
      if (v6)
      {
        v7 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v6))
        {
          v8 = *(v7 + 24);
LABEL_12:
          (*(*v6 + 88))(v6, v8, v9, v14);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = v16;
      if (v16 < HIDWORD(v16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = v16;
      if (v16 < HIDWORD(v16))
      {
        goto LABEL_18;
      }
    }

    v13 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v11 + 1, 8);
    DefiningOp = v13;
    LODWORD(v11) = v16;
LABEL_18:
    v15[v11] = DefiningOp;
    LODWORD(v16) = v16 + 1;
    v12 = *(v15[1] + 24);
    v14[0] = *(*v15 + 24);
    v14[1] = v12;
    mlir::Builder::getFusedLoc(a3 + 1, v14, 2, 0);
  }

  v6 = *(a3 + 2);
  if (v6 && mlir::RewriterBase::Listener::classof(v6))
  {
    v8 = *(v4 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v15 != v17)
  {
    free(v15);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::IndexCastOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::IndexCastOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::ValueRange::ValueRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v15;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::IndexCastUIOfIndexCastUI::~IndexCastUIOfIndexCastUI(_anonymous_namespace_::IndexCastUIOfIndexCastUI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::IndexCastUIOfIndexCastUI::matchAndRewrite(_anonymous_namespace_::IndexCastUIOfIndexCastUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v21[0] = a2;
  v20 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v18[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v18);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v18);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v20;
      if (v20 < HIDWORD(v20))
      {
LABEL_18:
        *(v19 + v13) = DefiningOp;
        LODWORD(v20) = v20 + 1;
        if (*(v5 + 9))
        {
          v14 = v5 - 16;
        }

        else
        {
          v14 = 0;
        }

        if ((*(*(v12 + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8)) < 8)
        {
          v15 = *(*(v19 + 1) + 24);
          v18[0] = *(*v19 + 24);
          v18[1] = v15;
          mlir::Builder::getFusedLoc(a3 + 1, v18, 2, 0);
        }

        v16 = *(a3 + 2);
        if (v16 && mlir::RewriterBase::Listener::classof(v16))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
      v13 = v20;
      if (v20 < HIDWORD(v20))
      {
        goto LABEL_18;
      }
    }

    v17 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v13 + 1, 8);
    DefiningOp = v17;
    LODWORD(v13) = v20;
    goto LABEL_18;
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v19 != v21)
  {
    free(v19);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastUIOfIndexCastUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastUIOfIndexCastUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::IndexCastUIOp type";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastUIOfIndexCastUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'res, x' failed to satisfy constraint: ''";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::IndexCastUIOfExtUI::~IndexCastUIOfExtUI(_anonymous_namespace_::IndexCastUIOfExtUI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::IndexCastUIOfExtUI::matchAndRewrite(_anonymous_namespace_::IndexCastUIOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v17[0] = a2;
  v16 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v14[0] = *(*(v4 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v14);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v6 = *(a3 + 2);
      if (v6)
      {
        v7 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v6))
        {
          v8 = *(v7 + 24);
LABEL_12:
          (*(*v6 + 88))(v6, v8, v9, v14);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = v16;
      if (v16 < HIDWORD(v16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = v16;
      if (v16 < HIDWORD(v16))
      {
        goto LABEL_18;
      }
    }

    v13 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v11 + 1, 8);
    DefiningOp = v13;
    LODWORD(v11) = v16;
LABEL_18:
    v15[v11] = DefiningOp;
    LODWORD(v16) = v16 + 1;
    v12 = *(v15[1] + 24);
    v14[0] = *(*v15 + 24);
    v14[1] = v12;
    mlir::Builder::getFusedLoc(a3 + 1, v14, 2, 0);
  }

  v6 = *(a3 + 2);
  if (v6 && mlir::RewriterBase::Listener::classof(v6))
  {
    v8 = *(v4 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v15 != v17)
  {
    free(v15);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::IndexCastUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::IndexCastUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::ValueRange::ValueRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v15;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastUIOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::BitcastOfBitcast::~BitcastOfBitcast(_anonymous_namespace_::BitcastOfBitcast *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::BitcastOfBitcast::matchAndRewrite(_anonymous_namespace_::BitcastOfBitcast *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v17[0] = a2;
  v16 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v14[0] = *(*(v4 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v14);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id)
    {
      v6 = *(a3 + 2);
      if (v6)
      {
        v7 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v6))
        {
          v8 = *(v7 + 24);
LABEL_12:
          (*(*v6 + 88))(v6, v8, v9, v14);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = v16;
      if (v16 < HIDWORD(v16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = v16;
      if (v16 < HIDWORD(v16))
      {
        goto LABEL_18;
      }
    }

    v13 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v11 + 1, 8);
    DefiningOp = v13;
    LODWORD(v11) = v16;
LABEL_18:
    *(v15 + v11) = DefiningOp;
    LODWORD(v16) = v16 + 1;
    v12 = *(*(v15 + 1) + 24);
    v14[0] = *(*v15 + 24);
    v14[1] = v12;
    mlir::Builder::getFusedLoc(a3 + 1, v14, 2, 0);
  }

  v6 = *(a3 + 2);
  if (v6 && mlir::RewriterBase::Listener::classof(v6))
  {
    v8 = *(v4 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v15 != v17)
  {
    free(v15);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::BitcastOfBitcast::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::BitcastOfBitcast::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::BitcastOp type";
  v13 = 46;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::CmpIExtSI::~CmpIExtSI(_anonymous_namespace_::CmpIExtSI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::CmpIExtSI::matchAndRewrite(_anonymous_namespace_::CmpIExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v33[4] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 47);
  v29 = 0;
  v31 = v33;
  v33[0] = a2;
  v32 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  if (!v5 || (v34.var0 = "predicate", v34.var1 = 9, InherentAttr = mlir::Operation::getInherentAttr(a2, v34), (v8 & 1) == 0))
  {
    v35.var0 = "predicate";
    v35.var1 = 9;
    InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v35);
  }

  v9 = InherentAttr;
  if (!InherentAttr || (mlir::arith::CmpIPredicateAttr::classof(InherentAttr) & 1) == 0)
  {
    v15 = *(a3 + 2);
    if (!v15 || !mlir::RewriterBase::Listener::classof(v15))
    {
      goto LABEL_22;
    }

    v16 = *(a2 + 3);
LABEL_17:
    (*(*v15 + 88))(v15, v16, v17, v30);
LABEL_22:
    v18 = 0;
    goto LABEL_23;
  }

  v29 = v9;
  v30[0] = *(*(v6 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v30);
  if (!DefiningOp)
  {
    v11 = *(a3 + 2);
    if (!v11 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 3);
LABEL_21:
    (*(*v11 + 88))(v11, v13, v14, v30);
    goto LABEL_22;
  }

  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v11 = *(a3 + 2);
    if (!v11)
    {
      goto LABEL_22;
    }

    v12 = DefiningOp;
    if (!mlir::RewriterBase::Listener::classof(v11))
    {
      goto LABEL_22;
    }

    v13 = *(v12 + 24);
    goto LABEL_21;
  }

  if ((*(DefiningOp + 46) & 0x80) != 0)
  {
    v20 = *(DefiningOp + 72);
    v21 = v32;
    if (v32 < HIDWORD(v32))
    {
      goto LABEL_28;
    }
  }

  else
  {
    v20 = 0;
    v21 = v32;
    if (v32 < HIDWORD(v32))
    {
      goto LABEL_28;
    }
  }

  v27 = DefiningOp;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v21 + 1, 8);
  DefiningOp = v27;
  LODWORD(v21) = v32;
LABEL_28:
  v31[v21] = DefiningOp;
  LODWORD(v32) = v32 + 1;
  v30[0] = *(*(v6 + 9) + 56);
  v22 = mlir::Value::getDefiningOp(v30);
  if (!v22)
  {
    v11 = *(a3 + 2);
    if (!v11 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 3);
    goto LABEL_21;
  }

  if (*(*(v22 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v11 = *(a3 + 2);
    if (!v11)
    {
      goto LABEL_22;
    }

    v23 = v22;
    if (!mlir::RewriterBase::Listener::classof(v11))
    {
      goto LABEL_22;
    }

    v13 = *(v23 + 24);
    goto LABEL_21;
  }

  if ((*(v22 + 46) & 0x80) != 0)
  {
    v24 = *(v22 + 72);
    v25 = v32;
    if (v32 < HIDWORD(v32))
    {
      goto LABEL_38;
    }
  }

  else
  {
    v24 = 0;
    v25 = v32;
    if (v32 < HIDWORD(v32))
    {
      goto LABEL_38;
    }
  }

  v28 = v22;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v25 + 1, 8);
  v22 = v28;
  LODWORD(v25) = v32;
LABEL_38:
  v31[v25] = v22;
  LODWORD(v32) = v32 + 1;
  if ((*(*(v24 + 24) + 8) ^ *(*(v20 + 24) + 8)) >= 8)
  {
    v15 = *(a3 + 2);
    if (!v15 || !mlir::RewriterBase::Listener::classof(v15))
    {
      goto LABEL_22;
    }

    v16 = *(a2 + 3);
    goto LABEL_17;
  }

  if (!mlir::IntegerAttr::getInt(&v29) || mlir::IntegerAttr::getInt(&v29) == 1)
  {
    v26 = *(v31[1] + 24);
    v30[0] = *(*v31 + 24);
    v30[1] = v26;
    v30[2] = *(v31[2] + 24);
    mlir::Builder::getFusedLoc(a3 + 1, v30, 3, 0);
  }

LABEL_23:
  if (v31 != v33)
  {
    free(v31);
  }

  return v18;
}