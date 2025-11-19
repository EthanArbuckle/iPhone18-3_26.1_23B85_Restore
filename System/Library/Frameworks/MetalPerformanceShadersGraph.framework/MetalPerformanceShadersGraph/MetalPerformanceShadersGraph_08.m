uint64_t mlir::RewriterBase::notifyMatchFailure<anonymous namespace::CmpIExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && mlir::RewriterBase::Listener::classof(a1))
  {
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'a, b' failed to satisfy constraint: ''";
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'pred' failed to satisfy constraint: ''";
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

void anonymous namespace::CmpIExtUI::~CmpIExtUI(_anonymous_namespace_::CmpIExtUI *this)
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

uint64_t anonymous namespace::CmpIExtUI::matchAndRewrite(_anonymous_namespace_::CmpIExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
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

  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
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

  if (*(*(v22 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
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

uint64_t mlir::RewriterBase::notifyMatchFailure<anonymous namespace::CmpIExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && mlir::RewriterBase::Listener::classof(a1))
  {
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'a, b' failed to satisfy constraint: ''";
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'pred' failed to satisfy constraint: ''";
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

void mlir::RewritePatternSet::addImpl<CmpFIntToFPConst,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "arith.cmpf", 10, v31, v9, 0, 0);
  *v8 = &unk_1F5AEEBF8;
  if (v8[9])
  {
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = CmpFIntToFPConst]";
    v32 = 66;
    v23 = llvm::StringRef::find(&v31, "DesiredTypeName = ", 0x12uLL, 0);
    if (v32 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v32;
    }

    v25 = &v31[v24];
    v26 = v32 - v24;
    if (v32 - v24 >= 0x12)
    {
      v27 = 18;
    }

    else
    {
      v27 = v32 - v24;
    }

    v28 = &v25[v27];
    v29 = v26 - v27;
    if (v29 >= v29 - 1)
    {
      --v29;
    }

    v8[8] = v28;
    v8[9] = v29;
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
LABEL_3:
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 10), (v8 + 12), v12, 16);
  LODWORD(v11) = *(v8 + 22);
  if (a3)
  {
LABEL_4:
    memcpy((v8[10] + 16 * v11), a2, v10);
    LODWORD(v11) = *(v8 + 22);
  }

LABEL_5:
  *(v8 + 22) = v11 + (v10 >> 4);
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13)
  {
    v16 = a1[1];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
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

    v30 = &v22[8 * v18];
    *v30 = v8;
    v15 = v30 + 8;
    memcpy(v22, v16, v17);
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 8;
  }

  a1[2] = v15;
}

void CmpFIntToFPConst::~CmpFIntToFPConst(CmpFIntToFPConst *this)
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

uint64_t CmpFIntToFPConst::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = *(*(a2 + 72) + 56);
  v57 = 0;
  v58[0] = &v57;
  v59 = v5;
  result = mlir::Value::getDefiningOp(&v59);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::FloatAttr>::match(v58, result);
    if (result)
    {
      Value = mlir::FloatAttr::getValue(&v57, &v59);
      v8 = v60;
      v9 = llvm::APFloatBase::PPCDoubleDouble(Value);
      v10 = v61;
      if (v9 != v8)
      {
        v10 = &v59;
      }

      if ((*(v10 + 28) & 7) == 1)
      {
        v11 = 0;
        if (v9 != v8)
        {
LABEL_7:
          llvm::detail::IEEEFloat::~IEEEFloat(&v60);
          return v11;
        }

LABEL_15:
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v60);
        return v11;
      }

      v56 = *(*(*(a2 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
      FPMantissaWidth = mlir::FloatType::getFPMantissaWidth(&v56);
      if (FPMantissaWidth < 1)
      {
        goto LABEL_13;
      }

      v13 = FPMantissaWidth;
      v58[0] = *(*(a2 + 72) + 24);
      DefiningOp = mlir::Value::getDefiningOp(v58);
      if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SIToFPOp,void>::id)
      {
        v16 = 0;
      }

      else
      {
        v58[0] = *(*(a2 + 72) + 24);
        DefiningOp = mlir::Value::getDefiningOp(v58);
        if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::UIToFPOp,void>::id)
        {
          goto LABEL_13;
        }

        v16 = 1;
      }

      v17 = *(*(DefiningOp + 72) + 24);
      v54 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
      v55 = v17;
      Width = mlir::IntegerType::getWidth(&v54);
      v20 = Width;
      v21 = v16 ^ 1;
      if (Width > v13)
      {
        v22 = Width - v21;
        if (v9 == v60)
        {
          v23 = (v61 + 1);
        }

        else
        {
          v23 = &v60;
        }

        v24 = llvm::detail::ilogb(v23, v19);
        if (v24 == 0x7FFFFFFF)
        {
          llvm::APFloat::getLargest(v60, 0, v58);
          v26 = llvm::ilogb(v58, v25);
          llvm::APFloat::~APFloat(v58);
          if (v26 >= v22)
          {
            goto LABEL_29;
          }

LABEL_13:
          v15 = 0;
          goto LABEL_14;
        }

        if (v13 <= v24 && v24 <= v22)
        {
          goto LABEL_13;
        }
      }

LABEL_29:
      v58[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
      Int = mlir::IntegerAttr::getInt(v58);
      if (Int == 14)
      {
        LOBYTE(__p) = 0;
        goto LABEL_33;
      }

      if (Int == 7)
      {
        LOBYTE(__p) = 1;
LABEL_33:
        LODWORD(v58[0]) = 1;
        mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantIntOp,BOOL,int>(a3, a2, &__p, v58);
LABEL_69:
        v15 = 1;
        goto LABEL_14;
      }

      v58[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
      v28 = mlir::IntegerAttr::getInt(v58);
      v29 = CmpFIntToFPConst::convertToIntegerPredicate(v28, v16);
      v53 = v29;
      if (v16)
      {
        llvm::APFloat::APFloat(v58, v60);
        llvm::APInt::getMaxValue(v20, &__p);
        llvm::APFloat::convertFromAPInt(v58, &__p, 0, 1);
        if (v51 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        if (llvm::APFloat::operator<(v58, &v59))
        {
          if (v29 <= 7)
          {
            v30 = 1 << v29;
            v31 = 194;
            goto LABEL_62;
          }

LABEL_66:
          LOBYTE(v47) = 0;
          goto LABEL_67;
        }

        llvm::APFloat::~APFloat(v58);
        llvm::APFloat::APFloat(v58, v60);
        v51 = v20;
        if (v20 > 0x40)
        {
          llvm::APInt::initSlowCase(&__p, 0, 0);
        }

        else
        {
          __p = 0;
        }

        llvm::APFloat::convertFromAPInt(v58, &__p, 0, 1);
        if (v51 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        if (llvm::APFloat::operator>(v58, &v59))
        {
          if (v29 > 9)
          {
            goto LABEL_66;
          }

          v30 = 1 << v29;
          v31 = 770;
          goto LABEL_62;
        }
      }

      else
      {
        llvm::APFloat::APFloat(v58, v60);
        llvm::APInt::getSignedMaxValue(v20, &__p);
        llvm::APFloat::convertFromAPInt(v58, &__p, 1, 1);
        if (v51 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        if (llvm::APFloat::operator<(v58, &v59))
        {
          if ((v29 - 1) <= 2)
          {
            LOBYTE(v47) = 1;
LABEL_67:
            LODWORD(__p) = 1;
            goto LABEL_68;
          }

          goto LABEL_66;
        }

        llvm::APFloat::~APFloat(v58);
        llvm::APFloat::APFloat(v58, v60);
        llvm::APInt::getSignedMinValue(v20, &__p);
        llvm::APFloat::convertFromAPInt(v58, &__p, 1, 1);
        if (v51 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        if (llvm::APFloat::operator>(v58, &v59))
        {
          if (v29 > 5)
          {
            goto LABEL_66;
          }

          v30 = 1 << v29;
          v31 = 50;
LABEL_62:
          if ((v30 & v31) != 0)
          {
            LOBYTE(v47) = 1;
            LODWORD(__p) = 1;
LABEL_68:
            mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantIntOp,BOOL,int>(a3, a2, &v47, &__p);
            llvm::APFloat::~APFloat(v58);
            goto LABEL_69;
          }

          goto LABEL_66;
        }
      }

      llvm::APFloat::~APFloat(v58);
      v49 = 0;
      v51 = v20;
      if (v20 > 0x40)
      {
        llvm::APInt::initSlowCase(&__p, 0, 0);
      }

      else
      {
        __p = 0;
      }

      v52 = v16;
      v32 = llvm::APFloat::convertToInteger(&v59, &__p, 0, &v49);
      v15 = 0;
      if (v32 == 1)
      {
LABEL_127:
        if (v51 >= 0x41)
        {
          if (__p)
          {
            v44 = v15;
            operator delete[](__p);
            v15 = v44;
          }
        }

LABEL_14:
        v11 = v15;
        if (v9 != v60)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }

      if (v9 == v60)
      {
        v33 = v61;
      }

      else
      {
        v33 = &v59;
      }

      if ((*(v33 + 28) & 7) == 3)
      {
        goto LABEL_125;
      }

      FloatSemantics = mlir::FloatType::getFloatSemantics(&v56);
      v48 = mlir::FloatType::getWidth(&v56);
      if (v48 > 0x40)
      {
        llvm::APInt::initSlowCase(&v47, 0, 0);
      }

      else
      {
        v47 = 0;
      }

      llvm::APFloat::APFloat(v58, FloatSemantics, &v47);
      if (v48 >= 0x41 && v47)
      {
        operator delete[](v47);
      }

      llvm::APFloat::convertFromAPInt(v58, &__p, v21, 1);
      if (!llvm::APFloat::operator==(v58, &v59))
      {
        if (v29 <= 4)
        {
          if (v29 > 1)
          {
            if (v29 == 2)
            {
              v40 = &v59;
              if (v9 == v60)
              {
                v40 = v61;
              }

              if ((*(v40 + 28) & 8) != 0)
              {
                goto LABEL_124;
              }

              v36 = 3;
            }

            else if (v29 == 3)
            {
              v42 = &v59;
              if (v9 == v60)
              {
                v42 = v61;
              }

              if ((*(v42 + 28) & 8) == 0)
              {
                goto LABEL_124;
              }

              v36 = 2;
            }

            else
            {
              v35 = &v59;
              if (v9 == v60)
              {
                v35 = v61;
              }

              if ((*(v35 + 28) & 8) == 0)
              {
                goto LABEL_124;
              }

              v36 = 5;
            }

            goto LABEL_123;
          }

          if (v29)
          {
            if (v29 != 1)
            {
              goto LABEL_124;
            }

            goto LABEL_133;
          }

LABEL_118:
          LOBYTE(IntegerAttr) = 0;
LABEL_134:
          LODWORD(v47) = 1;
          mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantIntOp,BOOL,int>(a3, a2, &IntegerAttr, &v47);
          llvm::APFloat::~APFloat(v58);
          goto LABEL_126;
        }

        if (v29 <= 6)
        {
          if (v29 == 5)
          {
            v39 = &v59;
            if (v9 == v60)
            {
              v39 = v61;
            }

            if ((*(v39 + 28) & 8) != 0)
            {
              goto LABEL_124;
            }

            v36 = 4;
          }

          else
          {
            v38 = &v59;
            if (v9 == v60)
            {
              v38 = v61;
            }

            if ((*(v38 + 28) & 8) != 0)
            {
              goto LABEL_118;
            }

            v36 = 7;
          }

LABEL_123:
          v53 = v36;
          goto LABEL_124;
        }

        switch(v29)
        {
          case 7:
            v41 = &v59;
            if (v9 == v60)
            {
              v41 = v61;
            }

            if ((*(v41 + 28) & 8) == 0)
            {
              break;
            }

            goto LABEL_118;
          case 8:
            v45 = &v59;
            if (v9 == v60)
            {
              v45 = v61;
            }

            if ((*(v45 + 28) & 8) == 0)
            {
              break;
            }

            goto LABEL_133;
          case 9:
            v37 = &v59;
            if (v9 == v60)
            {
              v37 = v61;
            }

            if ((*(v37 + 28) & 8) == 0)
            {
              v36 = 8;
              goto LABEL_123;
            }

LABEL_133:
            LOBYTE(IntegerAttr) = 1;
            goto LABEL_134;
        }
      }

LABEL_124:
      llvm::APFloat::~APFloat(v58);
LABEL_125:
      v43 = *(a2 + 24);
      v47 = (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
      IntegerAttr = mlir::Builder::getIntegerAttr((a3 + 1), v47, &__p);
      v58[0] = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type,mlir::IntegerAttr>((a3 + 1), v43, &v47, &IntegerAttr);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate &,mlir::Value &,mlir::arith::ConstantOp>(a3, a2, &v53, &v55, v58);
LABEL_126:
      v15 = 1;
      goto LABEL_127;
    }
  }

  return result;
}

uint64_t llvm::ilogb(llvm *this, const llvm::APFloat *a2)
{
  v2 = this + 8;
  v3 = *(this + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v3)
  {
    v5 = (*(v2 + 1) + 8);
  }

  else
  {
    v5 = v2;
  }

  return llvm::detail::ilogb(v5, v4);
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantIntOp,BOOL,int>(uint64_t **a1, uint64_t a2, unsigned __int8 *a3, int *a4)
{
  v6 = mlir::OpBuilder::create<mlir::arith::ConstantIntOp,BOOL,int>(a1 + 1, *(a2 + 24), a3, a4);
  ((*a1)[1])(a1, a2, v6);
  return v6;
}

uint64_t CmpFIntToFPConst::convertToIntegerPredicate(uint64_t a1, int a2)
{
  result = 0;
  if (a1 > 7)
  {
    if (a1 <= 10)
    {
      if (a1 == 8)
      {
        return result;
      }

      if (a1 != 9)
      {
        goto LABEL_5;
      }

LABEL_9:
      v4 = a2 == 0;
      v5 = 4;
      v6 = 8;
      goto LABEL_17;
    }

    if (a1 != 11)
    {
      if (a1 != 12)
      {
        return 1;
      }

LABEL_15:
      v4 = a2 == 0;
      v5 = 3;
      v6 = 7;
      goto LABEL_17;
    }
  }

  else
  {
    if (a1 <= 3)
    {
      if (a1 == 1)
      {
        return result;
      }

      if (a1 != 2)
      {
LABEL_5:
        v4 = a2 == 0;
        v5 = 5;
        v6 = 9;
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    if (a1 != 4)
    {
      if (a1 != 5)
      {
        return 1;
      }

      goto LABEL_15;
    }
  }

  v4 = a2 == 0;
  v5 = 2;
  v6 = 6;
LABEL_17:
  if (v4)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

BOOL llvm::APFloat::operator>(void *a1, uint64_t a2)
{
  v3 = (a1 + 1);
  v4 = a1[1];
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v6 = (a2 + 8);
  if (v5 == v4)
  {
    return llvm::detail::DoubleAPFloat::compare(v3, v6) == 2;
  }

  else
  {
    return llvm::detail::IEEEFloat::compare(v3, v6) == 2;
  }
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate &,mlir::Value &,mlir::arith::ConstantOp>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v7 = mlir::OpBuilder::create<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate &,mlir::Value &,mlir::arith::ConstantOp>(a1 + 1, *(a2 + 24), a3, a4, a5);
  ((*a1)[1])(a1, a2, v7);
  return v7;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type,mlir::IntegerAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v33[38] = *MEMORY[0x1E69E9840];
  v30 = a2;
  Context = mlir::Attribute::getContext(&v30);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(v33, v32, v31);
  }

  mlir::OperationState::OperationState(v33, a2, v9);
  v12 = *a3;
  v13 = *a4;
  if (!*a4)
  {
    goto LABEL_16;
  }

  v14 = *v13;
  {
    v24 = v12;
    v25 = v13;
    mlir::arith::AddUIExtendedOp::fold();
    v13 = v25;
    v12 = v24;
    v15 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_16:
    v26 = 0;
    goto LABEL_17;
  }

  v15 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  if (!v17)
  {
    goto LABEL_16;
  }

LABEL_5:
  v18 = v16;
  v19 = v17;
  do
  {
    v20 = v19 >> 1;
    v21 = &v18[2 * (v19 >> 1)];
    v23 = *v21;
    v22 = v21 + 2;
    v19 += ~(v19 >> 1);
    if (v23 < v15)
    {
      v18 = v22;
    }

    else
    {
      v19 = v20;
    }
  }

  while (v19);
  if (v18 == &v16[2 * v17] || *v18 != v15)
  {
    goto LABEL_16;
  }

  v26 = v18[1];
LABEL_17:
  mlir::arith::ConstantOp::build(v11, v33, v12, v13, v26);
  v27 = mlir::OpBuilder::create(a1, v33);
  if (*(*(v27 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  mlir::OperationState::~OperationState(v33);
  return v28;
}

uint64_t mlir::detail::constant_op_binder<mlir::FloatAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  {
    mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = v8[0];
    v6 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
      v5 = v8[0];
    }

    if (v5 != v9)
    {
      v7 = v6 != 0;
      free(v5);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantIntOp,BOOL,int>(uint64_t **a1, uint64_t a2, unsigned __int8 *a3, int *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::ConstantIntOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (v11 && *(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v16[0] = *(v11 - 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = v11;
    if (!mlir::Type::isSignlessInteger(v16))
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate &,mlir::Value &,mlir::arith::ConstantOp>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::CmpIOp,mlir::arith::CmpIPredicateAttr,mlir::Value &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::arith::CmpIOp::build(a1, v19, *a3, *a4, *a5 - 16);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void mlir::RewritePatternSet::addImpl<SelectToExtUI,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "arith.select", 12, v31, v9, 0, 0);
  *v8 = &unk_1F5AEEDF8;
  if (v8[9])
  {
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = SelectToExtUI]";
    v32 = 63;
    v23 = llvm::StringRef::find(&v31, "DesiredTypeName = ", 0x12uLL, 0);
    if (v32 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v32;
    }

    v25 = &v31[v24];
    v26 = v32 - v24;
    if (v32 - v24 >= 0x12)
    {
      v27 = 18;
    }

    else
    {
      v27 = v32 - v24;
    }

    v28 = &v25[v27];
    v29 = v26 - v27;
    if (v29 >= v29 - 1)
    {
      --v29;
    }

    v8[8] = v28;
    v8[9] = v29;
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
LABEL_3:
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 10), (v8 + 12), v12, 16);
  LODWORD(v11) = *(v8 + 22);
  if (a3)
  {
LABEL_4:
    memcpy((v8[10] + 16 * v11), a2, v10);
    LODWORD(v11) = *(v8 + 22);
  }

LABEL_5:
  *(v8 + 22) = v11 + (v10 >> 4);
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13)
  {
    v16 = a1[1];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
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

    v30 = &v22[8 * v18];
    *v30 = v8;
    v15 = v30 + 8;
    memcpy(v22, v16, v17);
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 8;
  }

  a1[2] = v15;
}

void anonymous namespace::RedundantSelectFalse::~RedundantSelectFalse(_anonymous_namespace_::RedundantSelectFalse *this)
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

uint64_t anonymous namespace::RedundantSelectFalse::matchAndRewrite(_anonymous_namespace_::RedundantSelectFalse *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v21[0] = a2;
  v20 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v18[0] = *(v6 + 88);
  DefiningOp = mlir::Value::getDefiningOp(v18);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8)
      {
        v9 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v8))
        {
          v10 = *(v9 + 24);
LABEL_12:
          (*(*v8 + 88))(v8, v10, v11, v18);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v13 = *(DefiningOp + 72);
      v14 = v20;
      if (v20 < HIDWORD(v20))
      {
LABEL_18:
        v19[v14] = DefiningOp;
        LODWORD(v20) = v20 + 1;
        if (*(v6 + 24) == *(v13 + 24))
        {
          v16 = *(v19[1] + 24);
          v18[0] = *(*v19 + 24);
          v18[1] = v16;
          mlir::Builder::getFusedLoc(a3 + 1, v18, 2, 0);
        }

        v15 = *(a3 + 2);
        if (v15 && mlir::RewriterBase::Listener::classof(v15))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v13 = 0;
      v14 = v20;
      if (v20 < HIDWORD(v20))
      {
        goto LABEL_18;
      }
    }

    v17 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v14 + 1, 8);
    DefiningOp = v17;
    LODWORD(v14) = v20;
    goto LABEL_18;
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v10 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v19 != v21)
  {
    free(v19);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::SelectOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::SelectOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::ValueRange::ValueRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::RedundantSelectFalse::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 2 of castedOp0";
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::RedundantSelectFalse::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::SelectOp type";
  v13 = 45;
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::RedundantSelectFalse::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "Operands 'pred' and 'pred0' must be equal";
  v13 = 41;
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

void anonymous namespace::RedundantSelectTrue::~RedundantSelectTrue(_anonymous_namespace_::RedundantSelectTrue *this)
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

uint64_t anonymous namespace::RedundantSelectTrue::matchAndRewrite(_anonymous_namespace_::RedundantSelectTrue *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v21[0] = a2;
  v20 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v18[0] = *(v6 + 56);
  DefiningOp = mlir::Value::getDefiningOp(v18);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8)
      {
        v9 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v8))
        {
          v10 = *(v9 + 24);
LABEL_12:
          (*(*v8 + 88))(v8, v10, v11, v18);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v13 = *(DefiningOp + 72);
      v14 = v20;
      if (v20 < HIDWORD(v20))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v13 = 0;
      v14 = v20;
      if (v20 < HIDWORD(v20))
      {
        goto LABEL_18;
      }
    }

    v16 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v14 + 1, 8);
    DefiningOp = v16;
    LODWORD(v14) = v20;
LABEL_18:
    v19[v14] = DefiningOp;
    LODWORD(v20) = v20 + 1;
    if ((*(v5 + 46) & 0x80) != 0)
    {
      if (*(v6 + 24) != *(v13 + 24))
      {
LABEL_20:
        v15 = *(a3 + 2);
        if (v15 && mlir::RewriterBase::Listener::classof(v15))
        {
        }

        goto LABEL_13;
      }
    }

    else if (*(v6 + 24) != *(v13 + 24))
    {
      goto LABEL_20;
    }

    v17 = *(v19[1] + 24);
    v18[0] = *(*v19 + 24);
    v18[1] = v17;
    mlir::Builder::getFusedLoc(a3 + 1, v18, 2, 0);
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v10 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v19 != v21)
  {
    free(v19);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::RedundantSelectTrue::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::RedundantSelectTrue::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::SelectOp type";
  v13 = 45;
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::RedundantSelectTrue::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "Operands 'pred' and 'pred0' must be equal";
  v13 = 41;
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

void anonymous namespace::SelectNotCond::~SelectNotCond(_anonymous_namespace_::SelectNotCond *this)
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

uint64_t anonymous namespace::SelectNotCond::matchAndRewrite(_anonymous_namespace_::SelectNotCond *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v32 = v34;
  v34[0] = a2;
  v33 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
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
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
LABEL_25:
        (*(*v8 + 88))(v8, v9, v10, &__p);
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    __p = *(*(DefiningOp + 72) + 56);
    v11 = mlir::Value::getDefiningOp(&__p);
    if (!v11)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v12 = v11;
    p_p_p = 0;
    p_p = &p_p_p;
    __p = (v11 - 16);
    v13 = mlir::Value::getDefiningOp(&__p);
    if (!v13 || (mlir::detail::constant_op_binder<mlir::Attribute>::match(&p_p, v13) & 1) == 0)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v12 + 24);
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v14 = p_p_p;
    v15 = *(a3 + 2);
    __p = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'arbitrary integer attribute'";
    v27 = 176;
    if (*(*p_p_p + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      p_p = &__p;
      if (v15 && mlir::RewriterBase::Listener::classof(v15))
      {
      }

      goto LABEL_26;
    }

    v17 = v33;
    if (v33 >= HIDWORD(v33))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v33 + 1, 8);
      v17 = v33;
    }

    v32[v17] = v12;
    v18 = (v33 + 1);
    LODWORD(v33) = v18;
    if (v18 >= HIDWORD(v33))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v18 + 1, 8);
      LODWORD(v18) = v33;
    }

    v32[v18] = v7;
    LODWORD(v33) = v33 + 1;
    if ((*(v5 + 46) & 0x80) != 0)
    {
      LODWORD(v27) = 1;
      __p = 0;
      p_p = &__p;
      if (!v14)
      {
        goto LABEL_59;
      }
    }

    else
    {
      LODWORD(v27) = 1;
      __p = 0;
      p_p = &__p;
      if (!v14)
      {
        goto LABEL_59;
      }
    }

    v19 = mlir::detail::constant_int_value_binder::match(&p_p, v14);
    v20 = v27;
    if (v19)
    {
      v25 = __p;
      LODWORD(v31) = 1;
      p_p = 0;
      p_p_p = &p_p;
      if (mlir::detail::constant_int_value_binder::match(&p_p_p, v14))
      {
        LODWORD(v27) = v31;
        __p = p_p;
        LOBYTE(v28) = 1;
      }

      else
      {
        LOBYTE(__p) = 0;
        LOBYTE(v28) = 0;
        if (v31 >= 0x41 && p_p)
        {
          operator delete[](p_p);
        }
      }

      v21 = v27;
      if (!v27)
      {
        if (v20 >= 0x41 && v25)
        {
          operator delete[](v25);
        }

LABEL_57:
        v23 = *(v32[1] + 24);
        __p = *(*v32 + 24);
        v27 = v23;
        mlir::Builder::getFusedLoc(a3 + 1, &__p, 2, 0);
      }

      if (v27 > 0x40)
      {
        v22 = llvm::APInt::countTrailingOnesSlowCase(&__p) == v21;
        if (v28 == 1 && __p)
        {
          operator delete[](__p);
        }
      }

      else
      {
        v22 = __p == (0xFFFFFFFFFFFFFFFFLL >> -v27);
      }

      if (v20 >= 0x41 && v25)
      {
        operator delete[](v25);
      }

      if (v22)
      {
        goto LABEL_57;
      }
    }

    else if (v27 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

LABEL_59:
    v24 = *(a3 + 2);
    if (v24 && mlir::RewriterBase::Listener::classof(v24))
    {
    }

    goto LABEL_26;
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_25;
  }

LABEL_26:
  if (v32 != v34)
  {
    free(v32);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SelectNotCond::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SelectNotCond::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::XOrIOp type";
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SelectNotCond::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SelectNotCond::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SelectNotCond::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'ones' failed to satisfy constraint: ''";
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

void anonymous namespace::SelectI1ToNot::~SelectI1ToNot(_anonymous_namespace_::SelectI1ToNot *this)
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

uint64_t anonymous namespace::SelectI1ToNot::matchAndRewrite(_anonymous_namespace_::SelectI1ToNot *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v24[4] = *MEMORY[0x1E69E9840];
  v22 = v24;
  v24[0] = a2;
  v23 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v19[0] = *(*(v4 + 9) + 56);
  DefiningOp = mlir::Value::getDefiningOp(v19);
  if (!DefiningOp)
  {
    v14 = *(a3 + 2);
    if (!v14 || !mlir::RewriterBase::Listener::classof(v14))
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 3);
    goto LABEL_21;
  }

  v6 = DefiningOp;
  v20 = 0;
  v21 = &v20;
  v19[0] = (DefiningOp - 16);
  v7 = mlir::Value::getDefiningOp(v19);
  if (!v7 || (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v21, v7) & 1) == 0)
  {
    v14 = *(a3 + 2);
    if (!v14 || !mlir::RewriterBase::Listener::classof(v14))
    {
      goto LABEL_22;
    }

    v15 = *(v6 + 24);
    goto LABEL_21;
  }

  v8 = v20;
  v19[0] = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'constant attribute 0'";
  v19[1] = 169;
  IntegerType = mlir::Builder::getIntegerType(a3 + 1, 1);
  if (mlir::Builder::getIntegerAttr(a3 + 8, IntegerType, 0) == v8)
  {
    v10 = v23;
    if (v23 >= HIDWORD(v23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v23 + 1, 8);
      v10 = v23;
    }

    v22[v10] = v6;
    LODWORD(v23) = v23 + 1;
    v19[0] = *(*(v4 + 9) + 88);
    v11 = mlir::Value::getDefiningOp(v19);
    if (v11)
    {
      v12 = v11;
      {
        v13 = v23;
        if (v23 >= HIDWORD(v23))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v23 + 1, 8);
          v13 = v23;
        }

        v22[v13] = v12;
        LODWORD(v23) = v23 + 1;
        v19[0] = *(*v22 + 24);
        mlir::Builder::getFusedLoc(a3 + 1, v19, 1, 0);
      }

      goto LABEL_22;
    }

    v14 = *(a3 + 2);
    if (!v14 || !mlir::RewriterBase::Listener::classof(v14))
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 3);
LABEL_21:
    (*(*v14 + 88))(v14, v15, v16, v19);
    goto LABEL_22;
  }

  v21 = v19;
  v18 = *(a3 + 2);
  if (v18 && mlir::RewriterBase::Listener::classof(v18))
  {
  }

LABEL_22:
  if (v22 != v24)
  {
    free(v22);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SelectI1ToNot::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SelectI1ToNot::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "::mlir::success(::mlir::matchPattern(op1->getResult(0), ::mlir::m_Constant(&arg1_0))) return ::mlir::failure";
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization3(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(void ***a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v14 = 261;
  v13[0] = v3;
  v13[1] = v2;
  v4 = mlir::Diagnostic::operator<<(a2, v13);
  v5 = *(v4 + 16);
  v15 = 3;
  v16 = ": constant attribute 0";
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SelectI1ToNot::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 2 of castedOp0";
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

void SelectToExtUI::~SelectToExtUI(SelectToExtUI *this)
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

uint64_t SelectToExtUI::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  __p = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::Type::isInteger(&__p, 1))
  {
    return 0;
  }

  v39 = *(*(a2 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v39);
  if (!DefiningOp)
  {
    goto LABEL_55;
  }

  v7 = DefiningOp;
  v42 = 1;
  p_p = &__p;
  __p = 0;
  v43 = &v44;
  v44 = 0;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v43, DefiningOp) && ((v8 = *(*(*(v7 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v8 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v9 = v8 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v9 = 1), !v9 ? (v10 = v8 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v10 = 1), !v10 ? (v11 = v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v11 = 1), v11))
  {
    v12 = mlir::detail::constant_int_value_binder::match(&p_p, v44);
    v13 = v42;
    if (v12)
    {
      if (v42 >= 0x41)
      {
        if (v13 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
        {
          if (__p)
          {
            operator delete[](__p);
          }

          goto LABEL_55;
        }

        v14 = __p;
      }

      else
      {
        v14 = &__p;
      }

      v15 = *v14 == 1;
      if (v13 < 0x41)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v15 = 0;
      if (v42 < 0x41)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v15 = 0;
    if (v42 < 0x41)
    {
      goto LABEL_31;
    }
  }

  if (__p)
  {
    operator delete[](__p);
    if (!v15)
    {
      goto LABEL_55;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v15)
  {
    goto LABEL_55;
  }

LABEL_32:
  v39 = *(*(a2 + 72) + 88);
  v16 = mlir::Value::getDefiningOp(&v39);
  if (v16)
  {
    v17 = v16;
    v42 = 1;
    p_p = &__p;
    __p = 0;
    v43 = &v44;
    v44 = 0;
    v22 = mlir::detail::constant_op_binder<mlir::Attribute>::match(&v43, v16) && ((v18 = *(*(*(v17 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v18 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v19 = v18 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v19 = 1), !v19 ? (v20 = v18 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v20 = 1), !v20 ? (v21 = v18 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v21 = 1), v21 && mlir::detail::constant_int_value_binder::match(&p_p, v44)) && mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke(&__p);
    if (v42 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v22)
    {
      __p = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
      v44 = *(*(a2 + 72) + 24);
      v23 = mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::Type,mlir::Value>((a3 + 8), *(a2 + 24), &__p, &v44);
LABEL_96:
      (*(*a3 + 8))(a3, a2, v23);
      return 1;
    }
  }

LABEL_55:
  v39 = *(*(a2 + 72) + 56);
  result = mlir::Value::getDefiningOp(&v39);
  if (!result)
  {
    return result;
  }

  v24 = result;
  v42 = 1;
  p_p = &__p;
  __p = 0;
  v43 = &v44;
  v44 = 0;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v43, result))
  {
    v25 = *(*(*(v24 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    v26 = v25 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
    v27 = v26 || v25 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    v28 = v27 || v25 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (v28 && mlir::detail::constant_int_value_binder::match(&p_p, v44))
    {
      v29 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke(&__p);
      if (v42 < 0x41)
      {
        goto LABEL_74;
      }

LABEL_72:
      if (__p)
      {
        operator delete[](__p);
      }

      goto LABEL_74;
    }
  }

  v29 = 0;
  if (v42 >= 0x41)
  {
    goto LABEL_72;
  }

LABEL_74:
  if (!v29)
  {
    return 0;
  }

  v39 = *(*(a2 + 72) + 88);
  result = mlir::Value::getDefiningOp(&v39);
  if (result)
  {
    v30 = result;
    v42 = 1;
    p_p = &__p;
    __p = 0;
    v43 = &v44;
    v44 = 0;
    v35 = mlir::detail::constant_op_binder<mlir::Attribute>::match(&v43, result) && ((v31 = *(*(*(v30 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v31 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v32 = v31 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v32 = 1), !v32 ? (v33 = v31 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v33 = 1), !v33 ? (v34 = v31 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v34 = 1), v34 && mlir::detail::constant_int_value_binder::match(&p_p, v44)) && mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke(&__p);
    v36 = a3;
    if (v42 >= 0x41)
    {
      if (__p)
      {
        operator delete[](__p);
        v36 = a3;
      }
    }

    if (v35)
    {
      __p = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
      v37 = *(a2 + 24);
      v43 = *(*(a2 + 72) + 24);
      v38 = 1;
      v39 = v43[1] & 0xFFFFFFFFFFFFFFF8;
      a3 = v36;
      p_p = mlir::OpBuilder::create<mlir::arith::ConstantIntOp,int,mlir::Type>((v36 + 8), v37, &v38, &v39);
      v44 = mlir::OpBuilder::create<mlir::arith::XOrIOp,mlir::Value,mlir::arith::ConstantIntOp>((a3 + 8), v37, &v43, &p_p);
      v23 = mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::Type,mlir::arith::XOrIOp>((a3 + 8), *(a2 + 24), &__p, &v44);
      goto LABEL_96;
    }

    return 0;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::arith::XOrIOp,mlir::Value,mlir::arith::ConstantIntOp>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::XOrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::arith::AndIOp::build(v11, v18, *a3, *a4 - 16);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantIntOp,int,mlir::Type>(mlir::OpBuilder *a1, uint64_t a2, int *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::ConstantIntOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (v11 && *(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v16[0] = *(v11 - 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = v11;
    if (!mlir::Type::isSignlessInteger(v16))
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::Type,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v23[28] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::Type,mlir::arith::XOrIOp>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v23[28] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4 - 16;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, uint64_t a3, llvm::APInt *this)
{
  v8 = *(this + 2);
  v9 = this;
  if (v8 >= 0x41)
  {
    if (v8 - llvm::APInt::countLeadingZerosSlowCase(this) > 0x40)
    {
      **a2 = 0;
      v12 = *(a3 + 8);
      if (v12 <= 0x40)
      {
        goto LABEL_5;
      }

LABEL_7:
      llvm::APInt::initSlowCase(&v11, a3);
      goto LABEL_8;
    }

    v9 = *this;
  }

  **a2 = *v9 < v8;
  v12 = *(a3 + 8);
  if (v12 > 0x40)
  {
    goto LABEL_7;
  }

LABEL_5:
  v11 = *a3;
LABEL_8:
  result = llvm::APInt::operator<<=(&v11, this);
  *(a1 + 8) = v12;
  *a1 = v11;
  *(a1 + 16) = 1;
  return result;
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, uint64_t a3, llvm::APInt *a4)
{
  v8 = *(a4 + 2);
  v9 = a4;
  if (v8 >= 0x41)
  {
    if (v8 - llvm::APInt::countLeadingZerosSlowCase(a4) > 0x40)
    {
      **a2 = 0;
      v11 = *(a3 + 8);
      if (v11 <= 0x40)
      {
        goto LABEL_5;
      }

LABEL_7:
      llvm::APInt::initSlowCase(&v10, a3);
      goto LABEL_8;
    }

    v9 = *a4;
  }

  **a2 = *v9 < v8;
  v11 = *(a3 + 8);
  if (v11 > 0x40)
  {
    goto LABEL_7;
  }

LABEL_5:
  v10 = *a3;
LABEL_8:
  llvm::APInt::lshrInPlace(&v10, a4);
  *(a1 + 8) = v11;
  *a1 = v10;
  *(a1 + 16) = 1;
}

unsigned int *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, uint64_t a3, llvm::APInt *a4)
{
  v8 = *(a4 + 2);
  v9 = a4;
  if (v8 >= 0x41)
  {
    if (v8 - llvm::APInt::countLeadingZerosSlowCase(a4) > 0x40)
    {
      **a2 = 0;
      v12 = *(a3 + 8);
      if (v12 <= 0x40)
      {
        goto LABEL_5;
      }

LABEL_7:
      llvm::APInt::initSlowCase(&v11, a3);
      goto LABEL_8;
    }

    v9 = *a4;
  }

  **a2 = *v9 < v8;
  v12 = *(a3 + 8);
  if (v12 > 0x40)
  {
    goto LABEL_7;
  }

LABEL_5:
  v11 = *a3;
LABEL_8:
  result = llvm::APInt::ashrInPlace(&v11, a4);
  *(a1 + 8) = v12;
  *a1 = v11;
  *(a1 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ValueSemantics<Empty>]";
  v6 = 77;
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

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine(llvm::hashing::detail::hash_combine_recursive_helper *this, uint64_t a2, char *a3, char *a4)
{
  if (a2)
  {
    if (this == a3 || a3 == a4)
    {
      goto LABEL_43;
    }

    if (this + 1 == a3)
    {
      v15 = *this;
      v16 = a4 - a3;
      v17 = this;
      v18 = a2;
      v19 = a3;
      memmove(this, this + 1, a4 - a3);
      a2 = v18;
      a3 = v19;
      this = v17;
      *(v17 + v16) = v15;
LABEL_43:
      v50 = *(this + 9);
      v51 = *(this + 11);
      v52 = *(this + 1);
      v53 = *(this + 12);
      v54 = *(this + 13);
      v56 = *(this + 6);
      v55 = *(this + 7);
      v57 = *(this + 14);
      v58 = v57 ^ (0xB492B66FBE98F273 * __ROR8__(v50 + *(this + 8) + v51 + v52, 37));
      v59 = v51 - 0x4B6D499041670D8DLL * __ROR8__(v53 + v50 + v56, 42);
      v60 = v54 + *(this + 10);
      v61 = *this - 0x4B6D499041670D8DLL * v53;
      v62 = v61 + v54;
      v64 = *(this + 2);
      v63 = *(this + 3);
      v65 = v61 + v52 + v64;
      v66 = *(this + 5);
      v67 = v59 + v66;
      v68 = __ROR8__(v60, 33);
      v69 = __ROR8__(v62 + v63 + v58, 21) + v61 + __ROR8__(v65, 44);
      v70 = v65 + v63;
      v71 = v64 + v67;
      v72 = *(this + 4) + v57 - 0x4B6D499041670D8DLL * v68;
      v73 = v66 + v56 + v72;
      v74 = __ROR8__(v72 + v55 + v71, 21) + v72 + __ROR8__(v73, 44);
      *(this + 11) = v70;
      *(this + 12) = v69;
      *(this + 13) = v73 + v55;
      *(this + 14) = v74;
      *(this + 9) = v67;
      *(this + 10) = v58;
      *(this + 8) = 0xB492B66FBE98F273 * v68;
      v75 = 0x9DDFEA08EB382D69 * (v74 ^ ((0x9DDFEA08EB382D69 * (v74 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v74 ^ v69)));
      v76 = 0xB492B66FBE98F273 * (v68 + ((a3 - this + a2) ^ ((a3 - this + a2) >> 47))) - 0x622015F714C7D297 * (v75 ^ (v75 >> 47));
      v77 = 0x9DDFEA08EB382D69 * (v76 ^ (v58 - 0x4B6D499041670D8DLL * (v67 ^ (v67 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * ((v73 + v55) ^ ((0x9DDFEA08EB382D69 * ((v73 + v55) ^ v70)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v73 + v55) ^ v70)))) ^ ((0x9DDFEA08EB382D69 * ((v73 + v55) ^ ((0x9DDFEA08EB382D69 * ((v73 + v55) ^ v70)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v73 + v55) ^ v70)))) >> 47))));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v76 ^ (v77 >> 47) ^ v77)) ^ ((0x9DDFEA08EB382D69 * (v76 ^ (v77 >> 47) ^ v77)) >> 47));
    }

    if (a3 + 1 == a4)
    {
      v20 = *(a4 - 1);
      if (a4 - 1 != this)
      {
        v21 = this;
        v22 = a2;
        v23 = a3;
        memmove(this + 1, this, a4 - 1 - this);
        a2 = v22;
        a3 = v23;
        this = v21;
      }

      *this = v20;
      goto LABEL_43;
    }

    v5 = a3 - this;
    v6 = a4 - a3;
    if (a3 - this != a4 - a3)
    {
      v24 = a3 - this;
      do
      {
        v25 = v24;
        v24 = v6;
        v6 = v25 % v6;
      }

      while (v6);
      v26 = (this + v24);
      do
      {
        v28 = *(v26 - 1);
        v26 = (v26 - 1);
        v27 = v28;
        v29 = (v26 + v5);
        v30 = v26;
        do
        {
          v31 = v30;
          v30 = v29;
          *v31 = *v29;
          v32 = (a4 - v29);
          v33 = __OFSUB__(v5, v32);
          v35 = v5 - v32;
          v34 = (v35 < 0) ^ v33;
          v29 = (this + v35);
          if (v34)
          {
            v29 = (v30 + v5);
          }
        }

        while (v29 != v26);
        *v30 = v27;
      }

      while (v26 != this);
      goto LABEL_43;
    }

    v7 = &a4[~a3];
    if (v7 >= &a3[~this])
    {
      v7 = &a3[~this];
    }

    v8 = (v7 + 1);
    v9 = a3;
    v10 = this;
    if (v8 >= 8)
    {
      if (&a3[v8] <= this || (v9 = a3, v10 = this, this + v8 <= a3))
      {
        if (v8 >= 0x20)
        {
          v11 = v8 & 0xFFFFFFFFFFFFFFE0;
          v36 = (this + 16);
          v37 = a3 + 16;
          v38 = v8 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v39 = *(v36 - 1);
            v40 = *v36;
            v41 = *v37;
            *(v36 - 1) = *(v37 - 1);
            *v36 = v41;
            *(v37 - 1) = v39;
            *v37 = v40;
            v36 += 2;
            v37 += 32;
            v38 -= 32;
          }

          while (v38);
          if (v8 == v11)
          {
            goto LABEL_43;
          }

          if ((v8 & 0x18) == 0)
          {
            v10 = (this + v11);
            v9 = &a3[v11];
            goto LABEL_39;
          }
        }

        else
        {
          v11 = 0;
        }

        v9 = &a3[v8 & 0xFFFFFFFFFFFFFFF8];
        v10 = (this + (v8 & 0xFFFFFFFFFFFFFFF8));
        v42 = (this + v11);
        v43 = &a3[v11];
        v44 = v11 - (v8 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v45 = *v42;
          *v42++ = *v43;
          *v43 = v45;
          v43 += 8;
          v44 += 8;
        }

        while (v44);
        if (v8 == (v8 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_43;
        }
      }
    }

LABEL_39:
    v46 = v9 + 1;
    v47 = v10 + 1;
    do
    {
      v48 = *(v47 - 1);
      *(v47 - 1) = *(v46 - 1);
      *(v46 - 1) = v48;
      if (v47 == a3)
      {
        break;
      }

      ++v47;
    }

    while (v46++ != a4);
    goto LABEL_43;
  }

  v12 = a3 - this;
  v13 = *(this + 15);

  return llvm::hashing::detail::hash_short(this, v12, v13);
}

unint64_t llvm::hashing::detail::hash_short(llvm::hashing::detail *this, unint64_t a2, unint64_t a3)
{
  if (a2 - 4 > 4)
  {
    if (a2 - 9 > 7)
    {
      if (a2 - 17 > 0xF)
      {
        if (a2 < 0x21)
        {
          if (a2)
          {
            v32 = (0x9AE16A3B2F90404FLL * (*this | (*(this + (a2 >> 1)) << 8))) ^ (0xC949D7C7509E6557 * (a2 + 4 * *(this + a2 - 1))) ^ a3;
            return 0x9AE16A3B2F90404FLL * (v32 ^ (v32 >> 47));
          }

          else
          {
            return a3 ^ 0x9AE16A3B2F90404FLL;
          }
        }

        else
        {
          v12 = this + a2;
          v13 = *(this + a2 - 16);
          v14 = *(this + a2 - 8);
          v15 = *this - 0x3C5A37A36834CED9 * (v13 + a2);
          v17 = *(this + 2);
          v16 = *(this + 3);
          v18 = __ROR8__(v15 + v16, 52);
          v19 = v15 + *(this + 1);
          v20 = __ROR8__(v19, 7);
          v21 = v19 + v17;
          v22 = v20 + __ROR8__(*this - 0x3C5A37A36834CED9 * (v13 + a2), 37) + v18;
          v23 = *(this + a2 - 32) + v17;
          v24 = __ROR8__(v23 + v14, 52);
          v25 = v22 + __ROR8__(v21, 31);
          v26 = __ROR8__(v23, 37);
          v27 = *(v12 - 3) + v23;
          v28 = __ROR8__(v27, 7);
          v29 = v27 + v13;
          v30 = __ROR8__(v29, 31);
          v31 = ((0xC3A5C85C97CB3127 * ((0xC3A5C85C97CB3127 * (v29 + v14 + v25) - 0x651E95C4D06FBFB1 * (v21 + v16 + v26 + v24 + v28 + v30)) ^ ((0xC3A5C85C97CB3127 * (v29 + v14 + v25) - 0x651E95C4D06FBFB1 * (v21 + v16 + v26 + v24 + v28 + v30)) >> 47))) ^ a3) + v25;
          return 0x9AE16A3B2F90404FLL * (v31 ^ (v31 >> 47));
        }
      }

      else
      {
        v8 = *(this + 1);
        v9 = 0x9AE16A3B2F90404FLL * *(this + a2 - 8);
        v10 = __ROR8__(0xB492B66FBE98F273 * *this - v8, 43) - 0x3C5A37A36834CED9 * *(this + a2 - 16) + __ROR8__(v9 ^ a3, 30);
        v11 = a3 + a2 + __ROR8__(v8 ^ 0xC949D7C7509E6557, 20) - 0x4B6D499041670D8DLL * *this - v9;
        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v11)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v11)))) >> 47));
      }
    }

    else
    {
      v6 = *(this + a2 - 8);
      v7 = __ROR8__(v6 + a2, a2);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (*this ^ a3 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (*this ^ a3 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (*this ^ a3 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (*this ^ a3 ^ v7)))) >> 47))) ^ v6;
    }
  }

  else
  {
    v3 = *(this + a2 - 4) ^ a3;
    v4 = 0x9DDFEA08EB382D69 * (v3 ^ (a2 + 8 * *this));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::AddFOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_5arith17FastMathFlagsAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::arith::FastMathFlagsAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::AddFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

uint64_t mlir::InFlightDiagnostic::InFlightDiagnostic(uint64_t a1, mlir::InFlightDiagnostic *this)
{
  v4 = *this;
  *(a1 + 8) = 0;
  *a1 = v4;
  *(a1 + 200) = 0;
  v5 = (a1 + 200);
  if (*(this + 200) == 1)
  {
    v6 = *(this + 1);
    *(a1 + 16) = *(this + 4);
    *(a1 + 8) = v6;
    *(a1 + 24) = a1 + 40;
    v7 = a1 + 24;
    *(a1 + 32) = 0x400000000;
    if (*(this + 8))
    {
      llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v7, this + 3);
    }

    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = *(this + 136);
    *(a1 + 152) = *(this + 19);
    *(this + 17) = 0;
    *(this + 18) = 0;
    *(this + 19) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 160) = *(this + 10);
    *(a1 + 176) = *(this + 22);
    *(this + 20) = 0;
    *(this + 21) = 0;
    *(this + 22) = 0;
    *(a1 + 184) = v5;
    *(a1 + 192) = 0;
    if (*(this + 48))
    {
      llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a1 + 184, this + 23);
    }

    *v5 = 1;
    if (*(this + 200))
    {
      mlir::Diagnostic::~Diagnostic((this + 8));
      *(this + 200) = 0;
    }
  }

  mlir::InFlightDiagnostic::abandon(this);
  return a1;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::AddIOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_5arith24IntegerOverflowFlagsAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::arith::IntegerOverflowFlagsAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::AddIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::CmpFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::CmpIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties]";
  v6 = 111;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

BOOL mlir::AsmParser::parseAttribute<mlir::TypedAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v21 = 0;
  if (((*(*a1 + 440))(a1, &v21, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v21);
  *a2 = v7;
  a2[1] = v8;
  if (v7)
  {
    return 1;
  }

  v19 = "invalid kind of attribute specified";
  v20 = 259;
  (*(*a1 + 24))(v22, a1, v6, &v19);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  v10 = result;
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
    result = v10;
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
      result = v10;
    }

    v11 = __p;
    if (__p)
    {
      v12 = v28;
      v13 = __p;
      if (v28 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v28 = v11;
      operator delete(v13);
      result = v10;
    }

    v14 = v25;
    if (v25)
    {
      v15 = v26;
      v16 = v25;
      if (v26 != v25)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            operator delete[](v17);
          }
        }

        while (v15 != v14);
        v16 = v25;
      }

      v26 = v14;
      operator delete(v16);
      result = v10;
    }

    if (v23 != &v24)
    {
      free(v23);
      return v10;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::DivFOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::DivFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::ExtFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties]";
  v6 = 110;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MaxNumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties]";
  v6 = 111;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MaximumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties]";
  v6 = 110;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MinNumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties]";
  v6 = 111;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MinimumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::MulFOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MulFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::MulIOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MulIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::NegFOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::NegFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::RemFOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::RemFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::ShLIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::SubFOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::SubFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::SubIOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::SubIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties]";
  v6 = 109;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::TruncFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void OUTLINED_FUNCTION_5(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a3 = a4;
  *(a3 + 32) = 259;
  llvm::operator+(a2, a3, a1);

  llvm::report_fatal_error(v4, 1);
}

uint64_t OUTLINED_FUNCTION_8()
{
  if (*(v0 + 36))
  {
    return v0 - 16;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24)
{
  v27 = *(v25 - 160);
  v28 = *(*v27 + 24);
  v29 = *(v27[1] + 24);
  a23 = v28;
  a24 = v29;

  mlir::Builder::getFusedLoc((v24 + 8), &a23, 2, 0);
}

uint64_t OUTLINED_FUNCTION_11@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (*(a1 + 16) == v16)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  a16 = *(*(v19 + 72) + 24);

  return mlir::Value::getDefiningOp(&a16);
}

uint64_t OUTLINED_FUNCTION_12()
{
  if (*(v0 + 36))
  {
    v2 = v0 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

uint64_t OUTLINED_FUNCTION_13()
{
  if (*(v0 + 36))
  {
    v2 = v0 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return applyToIntegerAttrs(a1, a2, a3, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::plus<llvm::APInt>>, va);
}

uint64_t OUTLINED_FUNCTION_21()
{
  if (*(v0 + 36))
  {
    v2 = v0 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

void OUTLINED_FUNCTION_23(unsigned int a1@<W8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 - 208, v1, a1 + 1, 8);
}

uint64_t OUTLINED_FUNCTION_24@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  a3 = a1;
  a7 = 259;

  return mlir::Builder::getStringAttr((v7 + 8), &a3);
}

void OUTLINED_FUNCTION_25(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(&a26, v26, a1 + 1, 8);
}

void OUTLINED_FUNCTION_26(uint64_t a1@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 - 160, v1, a1 + 1, 8);
}

void OUTLINED_FUNCTION_27(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(&a26, v26, a1 + 1, 8);
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a23 = a21;
  a33 = v33;

  return mlir::Attribute::getContext(&a23);
}

uint64_t OUTLINED_FUNCTION_43@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  a16 = a1;
  a26 = v26;

  return mlir::Attribute::getContext(&a16);
}

uint64_t OUTLINED_FUNCTION_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  a23 = *(*(v23 + 72) + 56);

  return mlir::Value::getDefiningOp(&a23);
}

void *OUTLINED_FUNCTION_46@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return mlir::NamedAttribute::NamedAttribute((a17 + 16 * a2), a1, v17);
}

uint64_t OUTLINED_FUNCTION_47(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  a17 = a1;

  return mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((v17 + 8), v18, &a17);
}

uint64_t OUTLINED_FUNCTION_49()
{
  if (*(v0 + 36))
  {
    v2 = v0 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

void OUTLINED_FUNCTION_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  a16 = *(**(v17 - 152) + 24);

  mlir::Builder::getFusedLoc((v16 + 8), &a16, 1, 0);
}

void OUTLINED_FUNCTION_53(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(&a25, v25, a1 + 1, 8);
}

uint64_t OUTLINED_FUNCTION_56@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  a2 = a1;
  a6 = 259;

  return mlir::Builder::getStringAttr((v6 + 8), &a2);
}

void OUTLINED_FUNCTION_60(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 104) = a2;
  *(v2 - 152) = v2 - 136;
  *(v2 - 136) = a1;
}

uint64_t OUTLINED_FUNCTION_61(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);

  return llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::growAndEmplaceBack<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(va2, va, va1);
}

unint64_t *OUTLINED_FUNCTION_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v16 = *(v14 - 208);
  v17 = *(v14 - 200);

  return mlir::ValueRange::ValueRange(va, v16, v17);
}

uint64_t OUTLINED_FUNCTION_65(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  return mlir::arith::FastMathFlagsAttr::getValue(&a33);
}

uint64_t OUTLINED_FUNCTION_89@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 36);
  v3 = a1 - 16;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 1);
}

void *OUTLINED_FUNCTION_105@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return mlir::NamedAttribute::NamedAttribute((a10 + 16 * a2), a1, v10);
}

uint64_t OUTLINED_FUNCTION_108(uint64_t a1, StringRef a2)
{
  a2.var1 = 13;

  return mlir::DictionaryAttr::get((v2 + 56), a2);
}

uint64_t OUTLINED_FUNCTION_114(uint64_t a1, StringRef a2)
{
  a2.var1 = 13;

  return mlir::Operation::getInherentAttr(v2, a2);
}

uint64_t OUTLINED_FUNCTION_115(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return mlir::arith::FastMathFlagsAttr::getValue(va);
}

uint64_t OUTLINED_FUNCTION_116(int a1)
{

  return mlir::arith::IntegerOverflowFlagsAttr::get(v1, a1 & v2);
}

uint64_t OUTLINED_FUNCTION_121(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);

  return llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::growAndEmplaceBack<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(va2, va, va1);
}

unint64_t *OUTLINED_FUNCTION_122(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unsigned int a33)
{
  v34 = a32;
  v35 = a33;

  return mlir::ValueRange::ValueRange(&a16, v34, v35);
}

void OUTLINED_FUNCTION_128(uint64_t a1@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 - 152, v1, a1 + 1, 8);
}

uint64_t OUTLINED_FUNCTION_129(uint64_t a1)
{

  return mlir::detail::OpResultImpl::getNextResultAtOffset(a1, 0);
}

uint64_t OUTLINED_FUNCTION_130(uint64_t a1)
{

  return mlir::detail::OpResultImpl::getNextResultAtOffset(a1, 0);
}

uint64_t mlir::arith::ArithDialect::initialize(int32x2_t *this)
{
  mlir::Dialect::addOperations<mlir::arith::AddFOp,mlir::arith::AddIOp,mlir::arith::AddUIExtendedOp,mlir::arith::AndIOp,mlir::arith::BitcastOp,mlir::arith::CeilDivSIOp,mlir::arith::CeilDivUIOp,mlir::arith::CmpFOp,mlir::arith::CmpIOp,mlir::arith::ConstantOp,mlir::arith::DivFOp,mlir::arith::DivSIOp,mlir::arith::DivUIOp,mlir::arith::ExtFOp,mlir::arith::ExtSIOp,mlir::arith::ExtUIOp,mlir::arith::FPToSIOp,mlir::arith::FPToUIOp,mlir::arith::FloorDivSIOp,mlir::arith::IndexCastOp,mlir::arith::IndexCastUIOp,mlir::arith::MaxNumFOp,mlir::arith::MaxSIOp,mlir::arith::MaxUIOp,mlir::arith::MaximumFOp,mlir::arith::MinNumFOp,mlir::arith::MinSIOp,mlir::arith::MinUIOp,mlir::arith::MinimumFOp,mlir::arith::MulFOp,mlir::arith::MulIOp,mlir::arith::MulSIExtendedOp,mlir::arith::MulUIExtendedOp,mlir::arith::NegFOp,mlir::arith::OrIOp,mlir::arith::RemFOp,mlir::arith::RemSIOp,mlir::arith::RemUIOp,mlir::arith::SIToFPOp,mlir::arith::ShLIOp,mlir::arith::ShRSIOp,mlir::arith::ShRUIOp,mlir::arith::SubFOp,mlir::arith::SubIOp,mlir::arith::TruncFOp,mlir::arith::TruncIOp,mlir::arith::UIToFPOp,mlir::arith::XOrIOp,mlir::arith::SelectOp>(this);
  mlir::Dialect::addAttribute<mlir::arith::FastMathFlagsAttr>(this);
  mlir::Dialect::addAttribute<mlir::arith::IntegerOverflowFlagsAttr>(this);
  v2 = operator new(0x18uLL);
  {
    v6 = v2;
    mlir::arith::ArithDialect::initialize();
    v2 = v6;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::DialectInlinerInterface,void>::resolveTypeID(void)::id;
  v2[1] = this;
  v2[2] = v3;
  *v2 = &unk_1F5AF1A38;
  v9[0] = v2;
  mlir::Dialect::addInterface(this, v9);
  v4 = v9[0];
  v9[0] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  {
    mlir::arith::ArithDialect::initialize();
  }

  v7 = &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id;
  v8 = mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(&this[9], &v7, v9);
  {
    mlir::arith::ArithDialect::initialize();
  }

  v7 = &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id;
  v8 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferDeallocationOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(&this[9], &v7, v9);
  mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::arith::ConstantOp,mlir::arith::IndexCastOp,mlir::arith::SelectOp>(this);
  return mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::arith::AddIOp,mlir::arith::ConstantOp,mlir::arith::SubIOp,mlir::arith::MulIOp>(this);
}

mlir::arith::ArithDialect *mlir::arith::ArithDialect::ArithDialect(mlir::arith::ArithDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "arith", 5, a2, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id);
  *v3 = &unk_1F5AEEE98;
  mlir::arith::ArithDialect::initialize(v3);
  return this;
}

void sub_1DFA3D39C(void *__p)
{

  operator delete(__p);
}

uint64_t mlir::arith::FastMathFlagsAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir5arith6detail24FastMathFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17FastMathFlagsAttrEJNS2_13FastMathFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::arith::FastMathFlagsAttr::parse(mlir::AsmParser *a1)
{
  v174 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  LODWORD(v3) = 0;
  v148 = 0;
  v149 = 0;
  do
  {
    if (!mlir::AsmParser::parseKeyword(a1, &v148))
    {
      goto LABEL_69;
    }

    v4 = mlir::arith::symbolizeFastMathFlags(v148, v149);
    if ((v4 & 0x100000000) == 0)
    {
      v147 = 257;
      (*(*a1 + 24))(v163, a1, v2, v146);
      if (v163[0])
      {
        LODWORD(v150) = 3;
        v151 = "expected ";
        v152 = 9;
        v10 = &v150;
        v11 = v164;
        if (v165 >= v166)
        {
          if (v164 <= &v150 && v164 + 24 * v165 > &v150)
          {
            v126 = &v150 - v164;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
            v11 = v164;
            v10 = (v164 + v126);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
            v10 = &v150;
            v11 = v164;
          }
        }

        v12 = &v11[24 * v165];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        v14 = ++v165;
        if (v163[0])
        {
          LODWORD(v150) = 3;
          v151 = "::mlir::arith::FastMathFlags";
          v152 = 28;
          v15 = &v150;
          v16 = v164;
          if (v14 >= v166)
          {
            if (v164 <= &v150 && v164 + 24 * v14 > &v150)
            {
              v127 = &v150 - v164;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v14 + 1, 24);
              v16 = v164;
              v15 = (v164 + v127);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v14 + 1, 24);
              v15 = &v150;
              v16 = v164;
            }
          }

          v17 = &v16[24 * v165];
          v18 = *v15;
          *(v17 + 2) = v15[2];
          *v17 = v18;
          v19 = ++v165;
          if (v163[0])
          {
            LODWORD(v150) = 3;
            v151 = " to be one of: ";
            v152 = 15;
            v20 = &v150;
            v21 = v164;
            if (v19 >= v166)
            {
              if (v164 <= &v150 && v164 + 24 * v19 > &v150)
              {
                v128 = &v150 - v164;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v19 + 1, 24);
                v21 = v164;
                v20 = (v164 + v128);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v19 + 1, 24);
                v20 = &v150;
                v21 = v164;
              }
            }

            v22 = &v21[24 * v165];
            v23 = *v20;
            *(v22 + 2) = v20[2];
            *v22 = v23;
            v24 = ++v165;
            if (v163[0])
            {
              LODWORD(v150) = 3;
              v151 = "none";
              v152 = 4;
              v25 = &v150;
              v26 = v164;
              if (v24 >= v166)
              {
                if (v164 <= &v150 && v164 + 24 * v24 > &v150)
                {
                  v129 = &v150 - v164;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v24 + 1, 24);
                  v26 = v164;
                  v25 = (v164 + v129);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v24 + 1, 24);
                  v25 = &v150;
                  v26 = v164;
                }
              }

              v27 = &v26[24 * v165];
              v28 = *v25;
              *(v27 + 2) = v25[2];
              *v27 = v28;
              v29 = ++v165;
              if (v163[0])
              {
                LODWORD(v150) = 3;
                v151 = ", ";
                v152 = 2;
                v30 = &v150;
                v31 = v164;
                if (v29 >= v166)
                {
                  if (v164 <= &v150 && v164 + 24 * v29 > &v150)
                  {
                    v130 = &v150 - v164;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v29 + 1, 24);
                    v31 = v164;
                    v30 = (v164 + v130);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v29 + 1, 24);
                    v30 = &v150;
                    v31 = v164;
                  }
                }

                v32 = &v31[24 * v165];
                v33 = *v30;
                *(v32 + 2) = v30[2];
                *v32 = v33;
                v34 = ++v165;
                if (v163[0])
                {
                  LODWORD(v150) = 3;
                  v151 = "reassoc";
                  v152 = 7;
                  v35 = &v150;
                  v36 = v164;
                  if (v34 >= v166)
                  {
                    if (v164 <= &v150 && v164 + 24 * v34 > &v150)
                    {
                      v131 = &v150 - v164;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v34 + 1, 24);
                      v36 = v164;
                      v35 = (v164 + v131);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v34 + 1, 24);
                      v35 = &v150;
                      v36 = v164;
                    }
                  }

                  v37 = &v36[24 * v165];
                  v38 = *v35;
                  *(v37 + 2) = v35[2];
                  *v37 = v38;
                  v39 = ++v165;
                  if (v163[0])
                  {
                    LODWORD(v150) = 3;
                    v151 = ", ";
                    v152 = 2;
                    v40 = &v150;
                    v41 = v164;
                    if (v39 >= v166)
                    {
                      if (v164 <= &v150 && v164 + 24 * v39 > &v150)
                      {
                        v132 = &v150 - v164;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v39 + 1, 24);
                        v41 = v164;
                        v40 = (v164 + v132);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v39 + 1, 24);
                        v40 = &v150;
                        v41 = v164;
                      }
                    }

                    v42 = &v41[24 * v165];
                    v43 = *v40;
                    *(v42 + 2) = v40[2];
                    *v42 = v43;
                    v44 = ++v165;
                    if (v163[0])
                    {
                      LODWORD(v150) = 3;
                      v151 = "nnan";
                      v152 = 4;
                      v45 = &v150;
                      v46 = v164;
                      if (v44 >= v166)
                      {
                        if (v164 <= &v150 && v164 + 24 * v44 > &v150)
                        {
                          v133 = &v150 - v164;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v44 + 1, 24);
                          v46 = v164;
                          v45 = (v164 + v133);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v44 + 1, 24);
                          v45 = &v150;
                          v46 = v164;
                        }
                      }

                      v47 = &v46[24 * v165];
                      v48 = *v45;
                      *(v47 + 2) = v45[2];
                      *v47 = v48;
                      v49 = ++v165;
                      if (v163[0])
                      {
                        LODWORD(v150) = 3;
                        v151 = ", ";
                        v152 = 2;
                        v50 = &v150;
                        v51 = v164;
                        if (v49 >= v166)
                        {
                          if (v164 <= &v150 && v164 + 24 * v49 > &v150)
                          {
                            v134 = &v150 - v164;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v49 + 1, 24);
                            v51 = v164;
                            v50 = (v164 + v134);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v49 + 1, 24);
                            v50 = &v150;
                            v51 = v164;
                          }
                        }

                        v52 = &v51[24 * v165];
                        v53 = *v50;
                        *(v52 + 2) = v50[2];
                        *v52 = v53;
                        v54 = ++v165;
                        if (v163[0])
                        {
                          LODWORD(v150) = 3;
                          v151 = "ninf";
                          v152 = 4;
                          v55 = &v150;
                          v56 = v164;
                          if (v54 >= v166)
                          {
                            if (v164 <= &v150 && v164 + 24 * v54 > &v150)
                            {
                              v135 = &v150 - v164;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v54 + 1, 24);
                              v56 = v164;
                              v55 = (v164 + v135);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v54 + 1, 24);
                              v55 = &v150;
                              v56 = v164;
                            }
                          }

                          v57 = &v56[24 * v165];
                          v58 = *v55;
                          *(v57 + 2) = v55[2];
                          *v57 = v58;
                          v59 = ++v165;
                          if (v163[0])
                          {
                            LODWORD(v150) = 3;
                            v151 = ", ";
                            v152 = 2;
                            v60 = &v150;
                            v61 = v164;
                            if (v59 >= v166)
                            {
                              if (v164 <= &v150 && v164 + 24 * v59 > &v150)
                              {
                                v136 = &v150 - v164;
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v59 + 1, 24);
                                v61 = v164;
                                v60 = (v164 + v136);
                              }

                              else
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v59 + 1, 24);
                                v60 = &v150;
                                v61 = v164;
                              }
                            }

                            v62 = &v61[24 * v165];
                            v63 = *v60;
                            *(v62 + 2) = v60[2];
                            *v62 = v63;
                            v64 = ++v165;
                            if (v163[0])
                            {
                              LODWORD(v150) = 3;
                              v151 = "nsz";
                              v152 = 3;
                              v65 = &v150;
                              v66 = v164;
                              if (v64 >= v166)
                              {
                                if (v164 <= &v150 && v164 + 24 * v64 > &v150)
                                {
                                  v137 = &v150 - v164;
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v64 + 1, 24);
                                  v66 = v164;
                                  v65 = (v164 + v137);
                                }

                                else
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v64 + 1, 24);
                                  v65 = &v150;
                                  v66 = v164;
                                }
                              }

                              v67 = &v66[24 * v165];
                              v68 = *v65;
                              *(v67 + 2) = v65[2];
                              *v67 = v68;
                              v69 = ++v165;
                              if (v163[0])
                              {
                                LODWORD(v150) = 3;
                                v151 = ", ";
                                v152 = 2;
                                v70 = &v150;
                                v71 = v164;
                                if (v69 >= v166)
                                {
                                  if (v164 <= &v150 && v164 + 24 * v69 > &v150)
                                  {
                                    v138 = &v150 - v164;
                                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v69 + 1, 24);
                                    v71 = v164;
                                    v70 = (v164 + v138);
                                  }

                                  else
                                  {
                                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v69 + 1, 24);
                                    v70 = &v150;
                                    v71 = v164;
                                  }
                                }

                                v72 = &v71[24 * v165];
                                v73 = *v70;
                                *(v72 + 2) = v70[2];
                                *v72 = v73;
                                v74 = ++v165;
                                if (v163[0])
                                {
                                  LODWORD(v150) = 3;
                                  v151 = "arcp";
                                  v152 = 4;
                                  v75 = &v150;
                                  v76 = v164;
                                  if (v74 >= v166)
                                  {
                                    if (v164 <= &v150 && v164 + 24 * v74 > &v150)
                                    {
                                      v139 = &v150 - v164;
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v74 + 1, 24);
                                      v76 = v164;
                                      v75 = (v164 + v139);
                                    }

                                    else
                                    {
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v74 + 1, 24);
                                      v75 = &v150;
                                      v76 = v164;
                                    }
                                  }

                                  v77 = &v76[24 * v165];
                                  v78 = *v75;
                                  *(v77 + 2) = v75[2];
                                  *v77 = v78;
                                  v79 = ++v165;
                                  if (v163[0])
                                  {
                                    LODWORD(v150) = 3;
                                    v151 = ", ";
                                    v152 = 2;
                                    v80 = &v150;
                                    v81 = v164;
                                    if (v79 >= v166)
                                    {
                                      if (v164 <= &v150 && v164 + 24 * v79 > &v150)
                                      {
                                        v140 = &v150 - v164;
                                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v79 + 1, 24);
                                        v81 = v164;
                                        v80 = (v164 + v140);
                                      }

                                      else
                                      {
                                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v79 + 1, 24);
                                        v80 = &v150;
                                        v81 = v164;
                                      }
                                    }

                                    v82 = &v81[24 * v165];
                                    v83 = *v80;
                                    *(v82 + 2) = v80[2];
                                    *v82 = v83;
                                    v84 = ++v165;
                                    if (v163[0])
                                    {
                                      LODWORD(v150) = 3;
                                      v151 = "contract";
                                      v152 = 8;
                                      v85 = &v150;
                                      v86 = v164;
                                      if (v84 >= v166)
                                      {
                                        if (v164 <= &v150 && v164 + 24 * v84 > &v150)
                                        {
                                          v141 = &v150 - v164;
                                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v84 + 1, 24);
                                          v86 = v164;
                                          v85 = (v164 + v141);
                                        }

                                        else
                                        {
                                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v84 + 1, 24);
                                          v85 = &v150;
                                          v86 = v164;
                                        }
                                      }

                                      v87 = &v86[24 * v165];
                                      v88 = *v85;
                                      *(v87 + 2) = v85[2];
                                      *v87 = v88;
                                      v89 = ++v165;
                                      if (v163[0])
                                      {
                                        LODWORD(v150) = 3;
                                        v151 = ", ";
                                        v152 = 2;
                                        v90 = &v150;
                                        v91 = v164;
                                        if (v89 >= v166)
                                        {
                                          if (v164 <= &v150 && v164 + 24 * v89 > &v150)
                                          {
                                            v142 = &v150 - v164;
                                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v89 + 1, 24);
                                            v91 = v164;
                                            v90 = (v164 + v142);
                                          }

                                          else
                                          {
                                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v89 + 1, 24);
                                            v90 = &v150;
                                            v91 = v164;
                                          }
                                        }

                                        v92 = &v91[24 * v165];
                                        v93 = *v90;
                                        *(v92 + 2) = v90[2];
                                        *v92 = v93;
                                        v94 = ++v165;
                                        if (v163[0])
                                        {
                                          LODWORD(v150) = 3;
                                          v151 = "afn";
                                          v152 = 3;
                                          v95 = &v150;
                                          v96 = v164;
                                          if (v94 >= v166)
                                          {
                                            if (v164 <= &v150 && v164 + 24 * v94 > &v150)
                                            {
                                              v143 = &v150 - v164;
                                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v94 + 1, 24);
                                              v96 = v164;
                                              v95 = (v164 + v143);
                                            }

                                            else
                                            {
                                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v94 + 1, 24);
                                              v95 = &v150;
                                              v96 = v164;
                                            }
                                          }

                                          v97 = &v96[24 * v165];
                                          v98 = *v95;
                                          *(v97 + 2) = v95[2];
                                          *v97 = v98;
                                          v99 = ++v165;
                                          if (v163[0])
                                          {
                                            LODWORD(v150) = 3;
                                            v151 = ", ";
                                            v152 = 2;
                                            v100 = &v150;
                                            v101 = v164;
                                            if (v99 >= v166)
                                            {
                                              if (v164 <= &v150 && v164 + 24 * v99 > &v150)
                                              {
                                                v144 = &v150 - v164;
                                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v99 + 1, 24);
                                                v101 = v164;
                                                v100 = (v164 + v144);
                                              }

                                              else
                                              {
                                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v99 + 1, 24);
                                                v100 = &v150;
                                                v101 = v164;
                                              }
                                            }

                                            v102 = &v101[24 * v165];
                                            v103 = *v100;
                                            *(v102 + 2) = v100[2];
                                            *v102 = v103;
                                            v104 = ++v165;
                                            if (v163[0])
                                            {
                                              LODWORD(v150) = 3;
                                              v151 = "fast";
                                              v152 = 4;
                                              v105 = &v150;
                                              v106 = v164;
                                              if (v104 >= v166)
                                              {
                                                if (v164 <= &v150 && v164 + 24 * v104 > &v150)
                                                {
                                                  v145 = &v150 - v164;
                                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v104 + 1, 24);
                                                  v106 = v164;
                                                  v105 = (v164 + v145);
                                                }

                                                else
                                                {
                                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v104 + 1, 24);
                                                  v105 = &v150;
                                                  v106 = v164;
                                                }
                                              }

                                              v107 = &v106[24 * v165];
                                              v108 = *v105;
                                              *(v107 + 2) = v105[2];
                                              *v107 = v108;
                                              ++v165;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v163);
      if (v163[0])
      {
        mlir::InFlightDiagnostic::report(v163);
      }

      if (v173)
      {
        if (v172 != &v173)
        {
          free(v172);
        }

        v109 = __p;
        if (__p)
        {
          v110 = v171;
          v111 = __p;
          if (v171 != __p)
          {
            do
            {
              v110 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v110 - 1);
            }

            while (v110 != v109);
            v111 = __p;
          }

          v171 = v109;
          operator delete(v111);
        }

        v112 = v168;
        if (v168)
        {
          v113 = v169;
          v114 = v168;
          if (v169 != v168)
          {
            do
            {
              v116 = *--v113;
              v115 = v116;
              *v113 = 0;
              if (v116)
              {
                operator delete[](v115);
              }
            }

            while (v113 != v112);
            v114 = v168;
          }

          v169 = v112;
          operator delete(v114);
        }

        if (v164 != v167)
        {
          free(v164);
        }
      }

LABEL_69:
      v117 = (*(*a1 + 40))(a1);
      LOWORD(v165) = 259;
      (*(*a1 + 24))(v154, a1, v117, v163);
      if (v154[0])
      {
        mlir::InFlightDiagnostic::report(v154);
      }

      if (v162 == 1)
      {
        if (v161 != &v162)
        {
          free(v161);
        }

        v118 = v159;
        if (v159)
        {
          v119 = v160;
          v120 = v159;
          if (v160 != v159)
          {
            do
            {
              v119 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v119 - 1);
            }

            while (v119 != v118);
            v120 = v159;
          }

          v160 = v118;
          operator delete(v120);
        }

        v121 = v157;
        if (v157)
        {
          v122 = v158;
          v123 = v157;
          if (v158 != v157)
          {
            do
            {
              v125 = *--v122;
              v124 = v125;
              *v122 = 0;
              if (v125)
              {
                operator delete[](v124);
              }
            }

            while (v122 != v121);
            v123 = v157;
          }

          v158 = v121;
          operator delete(v123);
        }

        if (v155 != &v156)
        {
          free(v155);
        }
      }

      return 0;
    }

    v3 = v3 | v4;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  Context = mlir::AsmParser::getContext(a1);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v150 = &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id;
  v151 = Context;
  v163[0] = _ZN4llvm12function_refIFvPN4mlir5arith6detail24FastMathFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17FastMathFlagsAttrEJNS2_13FastMathFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v163[1] = &v150;
  v153 = v3;
  v7 = 0x9DDFEA08EB382D69 * (((8 * v3) | 4) ^ v3 ^ 0xFF51AFD7ED558CCDLL);
  v8 = 0x9DDFEA08EB382D69 * (v3 ^ 0xFF51AFD7ED558CCDLL ^ (v7 >> 47) ^ v7);
  v148 = &v153;
  v146[0] = &v153;
  v146[1] = v163;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id, -348639895 * ((v8 >> 47) ^ v8), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v148, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v146);
}

void *mlir::arith::FastMathFlagsAttr::print(mlir::arith::FastMathFlagsAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  mlir::arith::stringifyFastMathFlags(*(*this + 8), __p);
  v6 = (*(*a2 + 16))(a2);
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = __p[1];
  }

  llvm::raw_ostream::write(v6, v7, v8);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  result = (*(*a2 + 16))(a2);
  v10 = result[4];
  if (result[3] == v10)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v10 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::arith::IntegerOverflowFlagsAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir5arith6detail31IntegerOverflowFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24IntegerOverflowFlagsAttrEJNS2_20IntegerOverflowFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::arith::IntegerOverflowFlagsAttr::parse(mlir::AsmParser *a1)
{
  v102 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  LODWORD(v3) = 0;
  v76 = 0;
  v77 = 0;
  do
  {
    if (!mlir::AsmParser::parseKeyword(a1, &v76))
    {
      goto LABEL_45;
    }

    v4 = mlir::arith::symbolizeIntegerOverflowFlags(v76, v77);
    if ((v4 & 0x100000000) == 0)
    {
      v75 = 257;
      (*(*a1 + 24))(v91, a1, v2, v74);
      if (v91[0])
      {
        LODWORD(v78) = 3;
        v79 = "expected ";
        v80 = 9;
        v10 = &v78;
        v11 = v92;
        if (v93 >= v94)
        {
          if (v92 <= &v78 && v92 + 24 * v93 > &v78)
          {
            v66 = &v78 - v92;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
            v11 = v92;
            v10 = (v92 + v66);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
            v10 = &v78;
            v11 = v92;
          }
        }

        v12 = &v11[24 * v93];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        v14 = ++v93;
        if (v91[0])
        {
          LODWORD(v78) = 3;
          v79 = "::mlir::arith::IntegerOverflowFlags";
          v80 = 35;
          v15 = &v78;
          v16 = v92;
          if (v14 >= v94)
          {
            if (v92 <= &v78 && v92 + 24 * v14 > &v78)
            {
              v67 = &v78 - v92;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v14 + 1, 24);
              v16 = v92;
              v15 = (v92 + v67);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v14 + 1, 24);
              v15 = &v78;
              v16 = v92;
            }
          }

          v17 = &v16[24 * v93];
          v18 = *v15;
          *(v17 + 2) = v15[2];
          *v17 = v18;
          v19 = ++v93;
          if (v91[0])
          {
            LODWORD(v78) = 3;
            v79 = " to be one of: ";
            v80 = 15;
            v20 = &v78;
            v21 = v92;
            if (v19 >= v94)
            {
              if (v92 <= &v78 && v92 + 24 * v19 > &v78)
              {
                v68 = &v78 - v92;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v19 + 1, 24);
                v21 = v92;
                v20 = (v92 + v68);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v19 + 1, 24);
                v20 = &v78;
                v21 = v92;
              }
            }

            v22 = &v21[24 * v93];
            v23 = *v20;
            *(v22 + 2) = v20[2];
            *v22 = v23;
            v24 = ++v93;
            if (v91[0])
            {
              LODWORD(v78) = 3;
              v79 = "none";
              v80 = 4;
              v25 = &v78;
              v26 = v92;
              if (v24 >= v94)
              {
                if (v92 <= &v78 && v92 + 24 * v24 > &v78)
                {
                  v69 = &v78 - v92;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v24 + 1, 24);
                  v26 = v92;
                  v25 = (v92 + v69);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v24 + 1, 24);
                  v25 = &v78;
                  v26 = v92;
                }
              }

              v27 = &v26[24 * v93];
              v28 = *v25;
              *(v27 + 2) = v25[2];
              *v27 = v28;
              v29 = ++v93;
              if (v91[0])
              {
                LODWORD(v78) = 3;
                v79 = ", ";
                v80 = 2;
                v30 = &v78;
                v31 = v92;
                if (v29 >= v94)
                {
                  if (v92 <= &v78 && v92 + 24 * v29 > &v78)
                  {
                    v70 = &v78 - v92;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v29 + 1, 24);
                    v31 = v92;
                    v30 = (v92 + v70);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v29 + 1, 24);
                    v30 = &v78;
                    v31 = v92;
                  }
                }

                v32 = &v31[24 * v93];
                v33 = *v30;
                *(v32 + 2) = v30[2];
                *v32 = v33;
                v34 = ++v93;
                if (v91[0])
                {
                  LODWORD(v78) = 3;
                  v79 = "nsw";
                  v80 = 3;
                  v35 = &v78;
                  v36 = v92;
                  if (v34 >= v94)
                  {
                    if (v92 <= &v78 && v92 + 24 * v34 > &v78)
                    {
                      v71 = &v78 - v92;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v34 + 1, 24);
                      v36 = v92;
                      v35 = (v92 + v71);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v34 + 1, 24);
                      v35 = &v78;
                      v36 = v92;
                    }
                  }

                  v37 = &v36[24 * v93];
                  v38 = *v35;
                  *(v37 + 2) = v35[2];
                  *v37 = v38;
                  v39 = ++v93;
                  if (v91[0])
                  {
                    LODWORD(v78) = 3;
                    v79 = ", ";
                    v80 = 2;
                    v40 = &v78;
                    v41 = v92;
                    if (v39 >= v94)
                    {
                      if (v92 <= &v78 && v92 + 24 * v39 > &v78)
                      {
                        v72 = &v78 - v92;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v39 + 1, 24);
                        v41 = v92;
                        v40 = (v92 + v72);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v39 + 1, 24);
                        v40 = &v78;
                        v41 = v92;
                      }
                    }

                    v42 = &v41[24 * v93];
                    v43 = *v40;
                    *(v42 + 2) = v40[2];
                    *v42 = v43;
                    v44 = ++v93;
                    if (v91[0])
                    {
                      LODWORD(v78) = 3;
                      v79 = "nuw";
                      v80 = 3;
                      v45 = &v78;
                      v46 = v92;
                      if (v44 >= v94)
                      {
                        if (v92 <= &v78 && v92 + 24 * v44 > &v78)
                        {
                          v73 = &v78 - v92;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v44 + 1, 24);
                          v46 = v92;
                          v45 = (v92 + v73);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v44 + 1, 24);
                          v45 = &v78;
                          v46 = v92;
                        }
                      }

                      v47 = &v46[24 * v93];
                      v48 = *v45;
                      *(v47 + 2) = v45[2];
                      *v47 = v48;
                      ++v93;
                    }
                  }
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v91);
      if (v91[0])
      {
        mlir::InFlightDiagnostic::report(v91);
      }

      if (v101)
      {
        if (v100 != &v101)
        {
          free(v100);
        }

        v49 = __p;
        if (__p)
        {
          v50 = v99;
          v51 = __p;
          if (v99 != __p)
          {
            do
            {
              v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
            }

            while (v50 != v49);
            v51 = __p;
          }

          v99 = v49;
          operator delete(v51);
        }

        v52 = v96;
        if (v96)
        {
          v53 = v97;
          v54 = v96;
          if (v97 != v96)
          {
            do
            {
              v56 = *--v53;
              v55 = v56;
              *v53 = 0;
              if (v56)
              {
                operator delete[](v55);
              }
            }

            while (v53 != v52);
            v54 = v96;
          }

          v97 = v52;
          operator delete(v54);
        }

        if (v92 != v95)
        {
          free(v92);
        }
      }

LABEL_45:
      v57 = (*(*a1 + 40))(a1);
      LOWORD(v93) = 259;
      (*(*a1 + 24))(v82, a1, v57, v91);
      if (v82[0])
      {
        mlir::InFlightDiagnostic::report(v82);
      }

      if (v90 == 1)
      {
        if (v89 != &v90)
        {
          free(v89);
        }

        v58 = v87;
        if (v87)
        {
          v59 = v88;
          v60 = v87;
          if (v88 != v87)
          {
            do
            {
              v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
            }

            while (v59 != v58);
            v60 = v87;
          }

          v88 = v58;
          operator delete(v60);
        }

        v61 = v85;
        if (v85)
        {
          v62 = v86;
          v63 = v85;
          if (v86 != v85)
          {
            do
            {
              v65 = *--v62;
              v64 = v65;
              *v62 = 0;
              if (v65)
              {
                operator delete[](v64);
              }
            }

            while (v62 != v61);
            v63 = v85;
          }

          v86 = v61;
          operator delete(v63);
        }

        if (v83 != &v84)
        {
          free(v83);
        }
      }

      return 0;
    }

    v3 = v3 | v4;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  Context = mlir::AsmParser::getContext(a1);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v78 = &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id;
  v79 = Context;
  v91[0] = _ZN4llvm12function_refIFvPN4mlir5arith6detail31IntegerOverflowFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24IntegerOverflowFlagsAttrEJNS2_20IntegerOverflowFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v91[1] = &v78;
  v81 = v3;
  v7 = 0x9DDFEA08EB382D69 * (((8 * v3) | 4) ^ v3 ^ 0xFF51AFD7ED558CCDLL);
  v8 = 0x9DDFEA08EB382D69 * (v3 ^ 0xFF51AFD7ED558CCDLL ^ (v7 >> 47) ^ v7);
  v76 = &v81;
  v74[0] = &v81;
  v74[1] = v91;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id, -348639895 * ((v8 >> 47) ^ v8), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v76, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v74);
}

void *mlir::arith::IntegerOverflowFlagsAttr::print(mlir::arith::IntegerOverflowFlagsAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  mlir::arith::stringifyIntegerOverflowFlags(*(*this + 8), __p);
  v6 = (*(*a2 + 16))(a2);
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = __p[1];
  }

  llvm::raw_ostream::write(v6, v7, v8);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  result = (*(*a2 + 16))(a2);
  v10 = result[4];
  if (result[3] == v10)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v10 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::arith::ArithDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 40))(a2);
  v42 = a2;
  v5 = (*(*a2 + 40))(a2);
  BYTE2(v46) = 0;
  v44 = 0;
  v45 = 0;
  v43 = v5;
  LOBYTE(v46) = 0;
  if (((*(*a2 + 640))(a2, &v44) & 1) == 0)
  {
    v6 = 0;
    LOWORD(v46) = 256;
    if ((v46 & 0x10000) != 0)
    {
      v38 = "fastmath";
    }

    else
    {
      BYTE2(v46) = 1;
    }

    goto LABEL_14;
  }

  v38 = "fastmath";
  v39 = 8;
  if ((v46 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v7 = v45;
  if (v45)
  {
    if (v45 == 8 && *v44 == 0x6874616D74736166)
    {
      v8 = mlir::arith::FastMathFlagsAttr::parse(a2);
      goto LABEL_51;
    }

    v38 = "overflow";
    v39 = 8;
    goto LABEL_10;
  }

  (*(*v42 + 648))(v42, &v38, 1);
  v38 = "overflow";
  v39 = 8;
  if ((v46 & 0x10000) != 0)
  {
LABEL_3:
    v6 = 0;
LABEL_14:
    v7 = 0;
    v9 = 0;
    goto LABEL_15;
  }

  v7 = v45;
  if (v45)
  {
LABEL_10:
    if (v7 == 8 && *v44 == 0x776F6C667265766FLL)
    {
      v8 = mlir::arith::IntegerOverflowFlagsAttr::parse(a2);
LABEL_51:
      v6 = v8;
      LOBYTE(v46) = v8 != 0;
      *(&v46 + 1) = 257;
      goto LABEL_14;
    }

    goto LABEL_53;
  }

  (*(*v42 + 648))(v42, &v38, 1);
  if ((v46 & 0x10000) != 0)
  {
    v7 = 0;
    v9 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  v7 = v45;
LABEL_53:
  v6 = 0;
  v9 = v44;
  LOWORD(v46) = 0;
  BYTE2(v46) = 1;
LABEL_15:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v42) & 0x100) == 0)
  {
    v37 = 257;
    (*(*a2 + 24))(&v42, a2, v4, v36);
    if (v42)
    {
      LODWORD(v38) = 3;
      v40 = 19;
      v10 = &v38;
      v11 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v38 && v45 + 24 * v46 > &v38)
        {
          v33 = &v38 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v11 = v45;
          v10 = (v45 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v10 = &v38;
          v11 = v45;
        }
      }

      v12 = &v11[24 * v46];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v46;
      if (v42)
      {
        v41 = 261;
        v38 = v9;
        v39 = v7;
        mlir::Diagnostic::operator<<(&v43, &v38);
        if (v42)
        {
          LODWORD(v38) = 3;
          v40 = 14;
          v14 = &v38;
          v15 = v45;
          if (v46 >= v47)
          {
            if (v45 <= &v38 && v45 + 24 * v46 > &v38)
            {
              v34 = &v38 - v45;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v15 = v45;
              v14 = (v45 + v34);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v14 = &v38;
              v15 = v45;
            }
          }

          v16 = &v15[24 * v46];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v46;
          if (v42)
          {
            v18 = *(a1 + 8);
            v19 = *(a1 + 16);
            v41 = 261;
            v38 = v18;
            v39 = v19;
            mlir::Diagnostic::operator<<(&v43, &v38);
            if (v42)
            {
              LODWORD(v38) = 3;
              v40 = 1;
              v20 = &v38;
              v21 = v45;
              if (v46 >= v47)
              {
                if (v45 <= &v38 && v45 + 24 * v46 > &v38)
                {
                  v35 = &v38 - v45;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
                  v21 = v45;
                  v20 = (v45 + v35);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
                  v20 = &v38;
                  v21 = v45;
                }
              }

              v22 = &v21[24 * v46];
              v23 = *v20;
              *(v22 + 2) = v20[2];
              *v22 = v23;
              ++v46;
              if (v42)
              {
                mlir::InFlightDiagnostic::report(&v42);
              }
            }
          }
        }
      }
    }

    if (v54 == 1)
    {
      if (v53 != &v54)
      {
        free(v53);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v52;
        v26 = __p;
        if (v52 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v52 = v24;
        operator delete(v26);
      }

      v27 = v49;
      if (v49)
      {
        v28 = v50;
        v29 = v49;
        if (v50 != v49)
        {
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
          v29 = v49;
        }

        v50 = v27;
        operator delete(v29);
      }

      if (v45 != v48)
      {
        free(v45);
      }
    }

    return 0;
  }

  return v6;
}

void mlir::arith::ArithDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    v9 = a2;
    v5 = (*(*a3 + 16))(a3);
    v6 = v5[4];
    if (v5[3] - v6 > 7uLL)
    {
      *v6 = 0x6874616D74736166;
      v5[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v5, "fastmath", 8uLL);
    }

    mlir::arith::FastMathFlagsAttr::print(&v9, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    v9 = a2;
    v7 = (*(*a3 + 16))(a3);
    v8 = v7[4];
    if (v7[3] - v8 > 7uLL)
    {
      *v8 = 0x776F6C667265766FLL;
      v7[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v7, "overflow", 8uLL);
    }

    mlir::arith::IntegerOverflowFlagsAttr::print(&v9, a3);
  }
}