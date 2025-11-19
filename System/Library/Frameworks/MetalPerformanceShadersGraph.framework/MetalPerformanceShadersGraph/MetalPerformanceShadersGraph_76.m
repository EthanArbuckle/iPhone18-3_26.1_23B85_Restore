uint64_t mlir::OpBuilder::create<mlir::pdl_interp::IsNotNullOp,mlir::Value &,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::IsNotNullOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::IsNotNullOp,mlir::Value &,mlir::Block *&,mlir::Block *&>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::IsNotNullOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::IsNotNullOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CheckOperationNameOp,mlir::Value &,llvm::StringRef,mlir::Block *&,mlir::Block *&>(mlir::StringAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperationNameOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckOperationNameOp,mlir::Value &,llvm::StringRef,mlir::Block *&,mlir::Block *&>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::pdl_interp::CheckOperationNameOp::build(a1, v21, *a3, *a4, a4[1], *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperationNameOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CheckTypesOp,mlir::Value &,mlir::ArrayAttr,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypesOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckTypesOp,mlir::Value &,mlir::ArrayAttr,mlir::Block *&,mlir::Block *&>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::pdl_interp::CheckTypesOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypesOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CheckTypeOp,mlir::Value &,mlir::TypeAttr,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckTypeOp,mlir::Value &,mlir::TypeAttr,mlir::Block *&,mlir::Block *&>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::pdl_interp::CheckTypeOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypeOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CheckAttributeOp,mlir::Value &,mlir::Attribute const&,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckAttributeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckAttributeOp,mlir::Value &,mlir::Attribute const&,mlir::Block *&,mlir::Block *&>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::pdl_interp::CheckAttributeOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckAttributeOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CheckOperandCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(uint64_t **a1, uint64_t a2, uint64_t *a3, unsigned int *a4, unsigned __int8 *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperandCountOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckOperandCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::pdl_interp::CheckOperandCountOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperandCountOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CheckResultCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(uint64_t **a1, uint64_t a2, uint64_t *a3, unsigned int *a4, unsigned __int8 *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckResultCountOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckResultCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::pdl_interp::CheckResultCountOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckResultCountOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::AreEqualOp,mlir::Value &,mlir::Value &,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::AreEqualOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::AreEqualOp,mlir::Value &,mlir::Value &,mlir::Block *&,mlir::Block *&>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::pdl_interp::AreEqualOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::AreEqualOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::ApplyConstraintOp,llvm::ArrayRef<mlir::Type>,llvm::StringRef,llvm::SmallVector<mlir::Value,6u> &,BOOL,mlir::Block *&,mlir::Block *&>(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unsigned __int8 *a6, uint64_t *a7, uint64_t *a8)
{
  v27[5] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyConstraintOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ApplyConstraintOp,llvm::ArrayRef<mlir::Type>,llvm::StringRef,llvm::SmallVector<mlir::Value,6u> &,BOOL,mlir::Block *&,mlir::Block *&>(v25, v27, v26);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::ValueRange::ValueRange(v27, *a3, *(a3 + 8));
  v20 = *a4;
  v19 = a4[1];
  mlir::ValueRange::ValueRange(v26, *a5, *(a5 + 8));
  mlir::pdl_interp::ApplyConstraintOp::build(a1, v25, v27[0], v27[1], v20, v19, v26[0], v26[1], *a6, *a7, *a8);
  v21 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyConstraintOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v25);
  return v22;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::SwitchNode>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::SwitchNode]";
  v6 = 85;
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

void createSwitchOp<mlir::pdl_interp::SwitchOperandCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = a3;
  v41 = a2;
  v42 = a1;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v5 = *(a4 + 32);
  if (v5)
  {
    v7 = operator new(4 * v5);
    v8 = &v7[4 * v5];
    v9 = operator new(8 * v5);
    v10 = &v9[8 * v5];
    v11 = (*(a4 + 24) + 8);
    v12 = 16 * v5;
    __src = v9;
    v13 = v7;
    while (1)
    {
      if (v9 >= v10)
      {
        v15 = v9 - __src;
        v16 = (v9 - __src) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v18 = v8;
        if ((v10 - __src) >> 2 > v17)
        {
          v17 = (v10 - __src) >> 2;
        }

        if ((v10 - __src) >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (v19 >> 61)
          {
            goto LABEL_40;
          }

          v20 = operator new(8 * v19);
        }

        else
        {
          v20 = 0;
        }

        v21 = &v20[8 * v16];
        v22 = &v20[8 * v19];
        *v21 = *v11;
        v9 = v21 + 8;
        memcpy(v20, __src, v15);
        if (__src)
        {
          operator delete(__src);
        }

        __src = v20;
        v8 = v18;
        v10 = v22;
        v14 = *(*(v11 - 1) + 8);
        if (v7 < v8)
        {
          goto LABEL_3;
        }

LABEL_20:
        v23 = v7 - v13;
        v24 = (v7 - v13) >> 2;
        v25 = v24 + 1;
        if ((v24 + 1) >> 62)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        if ((v8 - v13) >> 1 > v25)
        {
          v25 = (v8 - v13) >> 1;
        }

        if ((v8 - v13) >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v26 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          if (v26 >> 62)
          {
LABEL_40:
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v27 = v10;
          v28 = operator new(4 * v26);
        }

        else
        {
          v27 = v10;
          v28 = 0;
        }

        v29 = &v28[4 * v24];
        v8 = &v28[4 * v26];
        *v29 = v14;
        v7 = v29 + 4;
        memcpy(v28, v13, v23);
        if (v13)
        {
          operator delete(v13);
        }

        v13 = v28;
        v10 = v27;
        v11 += 2;
        v12 -= 16;
        if (!v12)
        {
LABEL_33:
          v36 = v9;
          v39 = v7;
          v30 = v8;
          v4 = a3;
          v31 = __src;
          goto LABEL_35;
        }
      }

      else
      {
        *v9 = *v11;
        v9 += 8;
        v14 = *(*(v11 - 1) + 8);
        if (v7 >= v8)
        {
          goto LABEL_20;
        }

LABEL_3:
        *v7 = v14;
        v7 += 4;
        v11 += 2;
        v12 -= 16;
        if (!v12)
        {
          goto LABEL_33;
        }
      }
    }
  }

  v13 = 0;
  v30 = 0;
  v31 = 0;
  v10 = 0;
LABEL_35:
  v37 = v10;
  v38 = v13;
  __p = v31;
  v40 = v30;
  Loc = mlir::Value::getLoc(&v42);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperandCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(v4, Loc, &v42, &v38, &v41, &__p);
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchResultCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = a3;
  v41 = a2;
  v42 = a1;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v5 = *(a4 + 32);
  if (v5)
  {
    v7 = operator new(4 * v5);
    v8 = &v7[4 * v5];
    v9 = operator new(8 * v5);
    v10 = &v9[8 * v5];
    v11 = (*(a4 + 24) + 8);
    v12 = 16 * v5;
    __src = v9;
    v13 = v7;
    while (1)
    {
      if (v9 >= v10)
      {
        v15 = v9 - __src;
        v16 = (v9 - __src) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v18 = v8;
        if ((v10 - __src) >> 2 > v17)
        {
          v17 = (v10 - __src) >> 2;
        }

        if ((v10 - __src) >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (v19 >> 61)
          {
            goto LABEL_40;
          }

          v20 = operator new(8 * v19);
        }

        else
        {
          v20 = 0;
        }

        v21 = &v20[8 * v16];
        v22 = &v20[8 * v19];
        *v21 = *v11;
        v9 = v21 + 8;
        memcpy(v20, __src, v15);
        if (__src)
        {
          operator delete(__src);
        }

        __src = v20;
        v8 = v18;
        v10 = v22;
        v14 = *(*(v11 - 1) + 8);
        if (v7 < v8)
        {
          goto LABEL_3;
        }

LABEL_20:
        v23 = v7 - v13;
        v24 = (v7 - v13) >> 2;
        v25 = v24 + 1;
        if ((v24 + 1) >> 62)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        if ((v8 - v13) >> 1 > v25)
        {
          v25 = (v8 - v13) >> 1;
        }

        if ((v8 - v13) >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v26 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          if (v26 >> 62)
          {
LABEL_40:
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v27 = v10;
          v28 = operator new(4 * v26);
        }

        else
        {
          v27 = v10;
          v28 = 0;
        }

        v29 = &v28[4 * v24];
        v8 = &v28[4 * v26];
        *v29 = v14;
        v7 = v29 + 4;
        memcpy(v28, v13, v23);
        if (v13)
        {
          operator delete(v13);
        }

        v13 = v28;
        v10 = v27;
        v11 += 2;
        v12 -= 16;
        if (!v12)
        {
LABEL_33:
          v36 = v9;
          v39 = v7;
          v30 = v8;
          v4 = a3;
          v31 = __src;
          goto LABEL_35;
        }
      }

      else
      {
        *v9 = *v11;
        v9 += 8;
        v14 = *(*(v11 - 1) + 8);
        if (v7 >= v8)
        {
          goto LABEL_20;
        }

LABEL_3:
        *v7 = v14;
        v7 += 4;
        v11 += 2;
        v12 -= 16;
        if (!v12)
        {
          goto LABEL_33;
        }
      }
    }
  }

  v13 = 0;
  v30 = 0;
  v31 = 0;
  v10 = 0;
LABEL_35:
  v37 = v10;
  v38 = v13;
  __p = v31;
  v40 = v30;
  Loc = mlir::Value::getLoc(&v42);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchResultCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(v4, Loc, &v42, &v38, &v41, &__p);
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchOperationNameOp,mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, uint64_t a4)
{
  v4 = a3;
  v41 = a2;
  v42 = a1;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v5 = *(a4 + 32);
  if (v5)
  {
    v7 = operator new(8 * v5);
    v8 = &v7[8 * v5];
    v9 = operator new(8 * v5);
    v10 = &v9[8 * v5];
    v11 = (*(a4 + 24) + 8);
    v12 = 16 * v5;
    __src = v9;
    v13 = v7;
    while (1)
    {
      if (v9 >= v10)
      {
        v15 = v9 - __src;
        v16 = (v9 - __src) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v18 = v8;
        if ((v10 - __src) >> 2 > v17)
        {
          v17 = (v10 - __src) >> 2;
        }

        if ((v10 - __src) >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (v19 >> 61)
          {
            goto LABEL_40;
          }

          v20 = operator new(8 * v19);
        }

        else
        {
          v20 = 0;
        }

        v21 = &v20[8 * v16];
        v22 = &v20[8 * v19];
        *v21 = *v11;
        v9 = v21 + 8;
        memcpy(v20, __src, v15);
        if (__src)
        {
          operator delete(__src);
        }

        __src = v20;
        v8 = v18;
        v10 = v22;
        v14 = *(v11 - 1);
        if (v7 < v8)
        {
          goto LABEL_3;
        }

LABEL_20:
        v23 = v7 - v13;
        v24 = (v7 - v13) >> 3;
        v25 = v24 + 1;
        if ((v24 + 1) >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        if ((v8 - v13) >> 2 > v25)
        {
          v25 = (v8 - v13) >> 2;
        }

        if ((v8 - v13) >= 0x7FFFFFFFFFFFFFF8)
        {
          v26 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          if (v26 >> 61)
          {
LABEL_40:
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v27 = v10;
          v28 = operator new(8 * v26);
        }

        else
        {
          v27 = v10;
          v28 = 0;
        }

        v29 = &v28[8 * v24];
        v8 = &v28[8 * v26];
        *v29 = *(v14 + 8);
        v7 = v29 + 8;
        memcpy(v28, v13, v23);
        if (v13)
        {
          operator delete(v13);
        }

        v13 = v28;
        v10 = v27;
        v11 += 2;
        v12 -= 16;
        if (!v12)
        {
LABEL_33:
          v36 = v9;
          v39 = v7;
          v30 = v8;
          v4 = a3;
          v31 = __src;
          goto LABEL_35;
        }
      }

      else
      {
        *v9 = *v11;
        v9 += 8;
        v14 = *(v11 - 1);
        if (v7 >= v8)
        {
          goto LABEL_20;
        }

LABEL_3:
        *v7 = *(v14 + 8);
        v7 += 8;
        v11 += 2;
        v12 -= 16;
        if (!v12)
        {
          goto LABEL_33;
        }
      }
    }
  }

  v13 = 0;
  v30 = 0;
  v31 = 0;
  v10 = 0;
LABEL_35:
  v37 = v10;
  v38 = v13;
  __p = v31;
  v40 = v30;
  Loc = mlir::Value::getLoc(&v42);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperationNameOp,mlir::Value &,std::vector<mlir::OperationName> &,mlir::Block *&,std::vector<mlir::Block *> &>(v4, Loc, &v42, &v38, &v41, &__p);
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchTypesOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, uint64_t a4)
{
  v4 = a3;
  v41 = a2;
  v42 = a1;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v5 = *(a4 + 32);
  if (v5)
  {
    v7 = operator new(8 * v5);
    v8 = &v7[8 * v5];
    v9 = operator new(8 * v5);
    v10 = &v9[8 * v5];
    v11 = (*(a4 + 24) + 8);
    v12 = 16 * v5;
    __src = v9;
    v13 = v7;
    while (1)
    {
      if (v9 >= v10)
      {
        v15 = v9 - __src;
        v16 = (v9 - __src) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v18 = v8;
        if ((v10 - __src) >> 2 > v17)
        {
          v17 = (v10 - __src) >> 2;
        }

        if ((v10 - __src) >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (v19 >> 61)
          {
            goto LABEL_40;
          }

          v20 = operator new(8 * v19);
        }

        else
        {
          v20 = 0;
        }

        v21 = &v20[8 * v16];
        v22 = &v20[8 * v19];
        *v21 = *v11;
        v9 = v21 + 8;
        memcpy(v20, __src, v15);
        if (__src)
        {
          operator delete(__src);
        }

        __src = v20;
        v8 = v18;
        v10 = v22;
        v14 = *(v11 - 1);
        if (v7 < v8)
        {
          goto LABEL_3;
        }

LABEL_20:
        v23 = v7 - v13;
        v24 = (v7 - v13) >> 3;
        v25 = v24 + 1;
        if ((v24 + 1) >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        if ((v8 - v13) >> 2 > v25)
        {
          v25 = (v8 - v13) >> 2;
        }

        if ((v8 - v13) >= 0x7FFFFFFFFFFFFFF8)
        {
          v26 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          if (v26 >> 61)
          {
LABEL_40:
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v27 = v10;
          v28 = operator new(8 * v26);
        }

        else
        {
          v27 = v10;
          v28 = 0;
        }

        v29 = &v28[8 * v24];
        v8 = &v28[8 * v26];
        *v29 = *(v14 + 8);
        v7 = v29 + 8;
        memcpy(v28, v13, v23);
        if (v13)
        {
          operator delete(v13);
        }

        v13 = v28;
        v10 = v27;
        v11 += 2;
        v12 -= 16;
        if (!v12)
        {
LABEL_33:
          v36 = v9;
          v39 = v7;
          v30 = v8;
          v4 = a3;
          v31 = __src;
          goto LABEL_35;
        }
      }

      else
      {
        *v9 = *v11;
        v9 += 8;
        v14 = *(v11 - 1);
        if (v7 >= v8)
        {
          goto LABEL_20;
        }

LABEL_3:
        *v7 = *(v14 + 8);
        v7 += 8;
        v11 += 2;
        v12 -= 16;
        if (!v12)
        {
          goto LABEL_33;
        }
      }
    }
  }

  v13 = 0;
  v30 = 0;
  v31 = 0;
  v10 = 0;
LABEL_35:
  v37 = v10;
  v38 = v13;
  __p = v31;
  v40 = v30;
  Loc = mlir::Value::getLoc(&v42);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypesOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(v4, Loc, &v42, &v38, &v41, &__p);
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchTypeOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, uint64_t a4)
{
  v4 = a3;
  v41 = a2;
  v42 = a1;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v5 = *(a4 + 32);
  if (v5)
  {
    v7 = operator new(8 * v5);
    v8 = &v7[8 * v5];
    v9 = operator new(8 * v5);
    v10 = &v9[8 * v5];
    v11 = (*(a4 + 24) + 8);
    v12 = 16 * v5;
    __src = v9;
    v13 = v7;
    while (1)
    {
      if (v9 >= v10)
      {
        v15 = v9 - __src;
        v16 = (v9 - __src) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v18 = v8;
        if ((v10 - __src) >> 2 > v17)
        {
          v17 = (v10 - __src) >> 2;
        }

        if ((v10 - __src) >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (v19 >> 61)
          {
            goto LABEL_40;
          }

          v20 = operator new(8 * v19);
        }

        else
        {
          v20 = 0;
        }

        v21 = &v20[8 * v16];
        v22 = &v20[8 * v19];
        *v21 = *v11;
        v9 = v21 + 8;
        memcpy(v20, __src, v15);
        if (__src)
        {
          operator delete(__src);
        }

        __src = v20;
        v8 = v18;
        v10 = v22;
        v14 = *(v11 - 1);
        if (v7 < v8)
        {
          goto LABEL_3;
        }

LABEL_20:
        v23 = v7 - v13;
        v24 = (v7 - v13) >> 3;
        v25 = v24 + 1;
        if ((v24 + 1) >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        if ((v8 - v13) >> 2 > v25)
        {
          v25 = (v8 - v13) >> 2;
        }

        if ((v8 - v13) >= 0x7FFFFFFFFFFFFFF8)
        {
          v26 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          if (v26 >> 61)
          {
LABEL_40:
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v27 = v10;
          v28 = operator new(8 * v26);
        }

        else
        {
          v27 = v10;
          v28 = 0;
        }

        v29 = &v28[8 * v24];
        v8 = &v28[8 * v26];
        *v29 = *(v14 + 8);
        v7 = v29 + 8;
        memcpy(v28, v13, v23);
        if (v13)
        {
          operator delete(v13);
        }

        v13 = v28;
        v10 = v27;
        v11 += 2;
        v12 -= 16;
        if (!v12)
        {
LABEL_33:
          v36 = v9;
          v39 = v7;
          v30 = v8;
          v4 = a3;
          v31 = __src;
          goto LABEL_35;
        }
      }

      else
      {
        *v9 = *v11;
        v9 += 8;
        v14 = *(v11 - 1);
        if (v7 >= v8)
        {
          goto LABEL_20;
        }

LABEL_3:
        *v7 = *(v14 + 8);
        v7 += 8;
        v11 += 2;
        v12 -= 16;
        if (!v12)
        {
          goto LABEL_33;
        }
      }
    }
  }

  v13 = 0;
  v30 = 0;
  v31 = 0;
  v10 = 0;
LABEL_35:
  v37 = v10;
  v38 = v13;
  __p = v31;
  v40 = v30;
  Loc = mlir::Value::getLoc(&v42);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(v4, Loc, &v42, &v38, &v41, &__p);
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchAttributeOp,mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute>(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, uint64_t a4)
{
  v4 = a3;
  v41 = a2;
  v42 = a1;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v5 = *(a4 + 32);
  if (v5)
  {
    v7 = operator new(8 * v5);
    v8 = &v7[8 * v5];
    v9 = operator new(8 * v5);
    v10 = &v9[8 * v5];
    v11 = (*(a4 + 24) + 8);
    v12 = 16 * v5;
    __src = v9;
    v13 = v7;
    while (1)
    {
      if (v9 >= v10)
      {
        v15 = v9 - __src;
        v16 = (v9 - __src) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v18 = v8;
        if ((v10 - __src) >> 2 > v17)
        {
          v17 = (v10 - __src) >> 2;
        }

        if ((v10 - __src) >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (v19 >> 61)
          {
            goto LABEL_40;
          }

          v20 = operator new(8 * v19);
        }

        else
        {
          v20 = 0;
        }

        v21 = &v20[8 * v16];
        v22 = &v20[8 * v19];
        *v21 = *v11;
        v9 = v21 + 8;
        memcpy(v20, __src, v15);
        if (__src)
        {
          operator delete(__src);
        }

        __src = v20;
        v8 = v18;
        v10 = v22;
        v14 = *(v11 - 1);
        if (v7 < v8)
        {
          goto LABEL_3;
        }

LABEL_20:
        v23 = v7 - v13;
        v24 = (v7 - v13) >> 3;
        v25 = v24 + 1;
        if ((v24 + 1) >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        if ((v8 - v13) >> 2 > v25)
        {
          v25 = (v8 - v13) >> 2;
        }

        if ((v8 - v13) >= 0x7FFFFFFFFFFFFFF8)
        {
          v26 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          if (v26 >> 61)
          {
LABEL_40:
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v27 = v10;
          v28 = operator new(8 * v26);
        }

        else
        {
          v27 = v10;
          v28 = 0;
        }

        v29 = &v28[8 * v24];
        v8 = &v28[8 * v26];
        *v29 = *(v14 + 8);
        v7 = v29 + 8;
        memcpy(v28, v13, v23);
        if (v13)
        {
          operator delete(v13);
        }

        v13 = v28;
        v10 = v27;
        v11 += 2;
        v12 -= 16;
        if (!v12)
        {
LABEL_33:
          v36 = v9;
          v39 = v7;
          v30 = v8;
          v4 = a3;
          v31 = __src;
          goto LABEL_35;
        }
      }

      else
      {
        *v9 = *v11;
        v9 += 8;
        v14 = *(v11 - 1);
        if (v7 >= v8)
        {
          goto LABEL_20;
        }

LABEL_3:
        *v7 = *(v14 + 8);
        v7 += 8;
        v11 += 2;
        v12 -= 16;
        if (!v12)
        {
          goto LABEL_33;
        }
      }
    }
  }

  v13 = 0;
  v30 = 0;
  v31 = 0;
  v10 = 0;
LABEL_35:
  v37 = v10;
  v38 = v13;
  __p = v31;
  v40 = v30;
  Loc = mlir::Value::getLoc(&v42);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchAttributeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(v4, Loc, &v42, &v38, &v41, &__p);
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::PatternLowering::generate(mlir::pdl_to_pdl_interp::SwitchNode *,mlir::Block *,mlir::Value)::$_0 &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v100 = *(a2 - 1);
      v101 = *v10;
      if (*(*(*(**a3 + 72) + 16 * v100) + 8) > *(*(*(**a3 + 72) + 16 * v101) + 8))
      {
        *v10 = v100;
        *(a2 - 1) = v101;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v110 = *a3;
      if (a5)
      {
        if (v10 != a2)
        {
          v111 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v112 = 0;
            v113 = *(*v110 + 72);
            v114 = v10;
            do
            {
              v117 = *v114;
              v116 = v114[1];
              v114 = v111;
              v118 = *(v113 + 16 * v116);
              if (*(v118 + 8) > *(*(v113 + 16 * v117) + 8))
              {
                v119 = v112;
                do
                {
                  *(v10 + v119 + 4) = v117;
                  if (!v119)
                  {
                    v115 = v10;
                    goto LABEL_124;
                  }

                  v117 = *(v10 + v119 - 4);
                  v119 -= 4;
                }

                while (*(v118 + 8) > *(*(v113 + 16 * v117) + 8));
                v115 = (v10 + v119 + 4);
LABEL_124:
                *v115 = v116;
              }

              v111 = v114 + 1;
              v112 += 4;
            }

            while (v114 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v157 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v158 = *(*v110 + 72);
          do
          {
            v160 = *v9;
            v159 = v9[1];
            v9 = v157;
            v161 = *(v158 + 16 * v159);
            if (*(v161 + 8) > *(*(v158 + 16 * v160) + 8))
            {
              v162 = v9;
              do
              {
                *v162 = v160;
                v160 = *(v162 - 2);
                --v162;
              }

              while (*(v161 + 8) > *(*(v158 + 16 * v160) + 8));
              *v162 = v159;
            }

            v157 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v120 = (v11 - 2) >> 1;
        v121 = *a3;
        v122 = v120;
        do
        {
          v123 = v122;
          if (v120 >= v122)
          {
            v124 = (2 * v122) | 1;
            v125 = &v10[v124];
            v126 = *v125;
            if (2 * v123 + 2 >= v11)
            {
              v127 = *(*v121 + 72);
            }

            else
            {
              v127 = *(*v121 + 72);
              if (*(*(v127 + 16 * v126) + 8) > *(*(v127 + 16 * v125[1]) + 8))
              {
                v126 = v125[1];
                ++v125;
                v124 = 2 * v123 + 2;
              }
            }

            v128 = &v10[v123];
            v129 = *v128;
            v130 = *(v127 + 16 * v129);
            if (*(*(v127 + 16 * v126) + 8) <= *(v130 + 8))
            {
              do
              {
                v131 = v125;
                *v128 = v126;
                if (v120 < v124)
                {
                  break;
                }

                v132 = (2 * v124) | 1;
                v125 = &v10[v132];
                v133 = 2 * v124 + 2;
                v126 = *v125;
                if (v133 < v11 && *(*(v127 + 16 * v126) + 8) > *(*(v127 + 16 * v125[1]) + 8))
                {
                  v126 = v125[1];
                  ++v125;
                  v132 = v133;
                }

                v128 = v131;
                v124 = v132;
              }

              while (*(*(v127 + 16 * v126) + 8) <= *(v130 + 8));
              *v131 = v129;
              v121 = *a3;
            }
          }

          v122 = v123 - 1;
        }

        while (v123);
        do
        {
          v135 = 0;
          v136 = *v10;
          v137 = *a3;
          v138 = (v11 - 2) >> 1;
          v139 = v10;
          do
          {
            while (1)
            {
              v144 = &v139[v135];
              v143 = v144 + 1;
              v142 = v144[1];
              result = 2 * v135;
              v145 = (2 * v135) | 1;
              v135 = 2 * v135 + 2;
              if (v135 < v11)
              {
                break;
              }

              v135 = v145;
              *v139 = v142;
              v139 = v144 + 1;
              if (v145 > v138)
              {
                goto LABEL_158;
              }
            }

            v141 = v144[2];
            v140 = v144 + 2;
            result = v141;
            if (*(*(*(*v137 + 72) + 16 * v142) + 8) <= *(*(*(*v137 + 72) + 16 * v141) + 8))
            {
              v135 = v145;
            }

            else
            {
              LODWORD(v142) = result;
              v143 = v140;
            }

            *v139 = v142;
            v139 = v143;
          }

          while (v135 <= v138);
LABEL_158:
          if (v143 == --a2)
          {
            *v143 = v136;
          }

          else
          {
            *v143 = *a2;
            *a2 = v136;
            v146 = (v143 - v10 + 4) >> 2;
            v134 = v146 < 2;
            v147 = v146 - 2;
            if (!v134)
            {
              v148 = v147 >> 1;
              v149 = &v10[v148];
              v150 = *v149;
              v151 = *v143;
              v152 = *(**a3 + 72);
              v153 = *(v152 + 16 * v151);
              if (*(*(v152 + 16 * v150) + 8) > *(v153 + 8))
              {
                do
                {
                  v154 = v149;
                  *v143 = v150;
                  if (!v148)
                  {
                    break;
                  }

                  v148 = (v148 - 1) >> 1;
                  v149 = &v10[v148];
                  v150 = *v149;
                  result = *(v153 + 8);
                  v143 = v154;
                }

                while (*(*(v152 + 16 * v150) + 8) > result);
                *v154 = v151;
              }
            }
          }

          v134 = v11-- <= 2;
        }

        while (!v134);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(**a3 + 72);
    v15 = *(a2 - 1);
    v16 = *(*(v14 + 16 * v15) + 8);
    if (v11 < 0x81)
    {
      v21 = *v10;
      v22 = *v13;
      v23 = *(*(v14 + 16 * v21) + 8);
      v24 = *(v14 + 16 * v22);
      if (v23 > *(v24 + 8))
      {
        if (v16 > v23)
        {
          *v13 = v15;
          goto LABEL_37;
        }

        *v13 = v21;
        *v10 = v22;
        v40 = *(a2 - 1);
        if (*(*(v14 + 16 * v40) + 8) > *(v24 + 8))
        {
          *v10 = v40;
LABEL_37:
          *(a2 - 1) = v22;
        }

LABEL_38:
        --a4;
        v29 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 <= v23)
      {
        goto LABEL_38;
      }

      *v10 = v15;
      *(a2 - 1) = v21;
      v27 = *v10;
      v28 = *v13;
      if (*(*(v14 + 16 * v27) + 8) <= *(*(v14 + 16 * v28) + 8))
      {
        goto LABEL_38;
      }

      *v13 = v27;
      *v10 = v28;
      --a4;
      v29 = v28;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      v61 = *(v14 + 16 * v29);
      v62 = *(v61 + 8);
      if (*(*(v14 + 16 * *(v10 - 1)) + 8) > v62)
      {
        goto LABEL_62;
      }

      if (v62 <= *(*(v14 + 16 * *(a2 - 1)) + 8))
      {
        v83 = v10 + 1;
        do
        {
          v10 = v83;
          if (v83 >= a2)
          {
            break;
          }

          ++v83;
        }

        while (v62 <= *(*(v14 + 16 * *v10) + 8));
      }

      else
      {
        do
        {
          v82 = v10[1];
          ++v10;
        }

        while (v62 <= *(*(v14 + 16 * v82) + 8));
      }

      v84 = a2;
      if (v10 < a2)
      {
        v84 = a2;
        do
        {
          v85 = *--v84;
        }

        while (v62 > *(*(v14 + 16 * v85) + 8));
      }

      if (v10 < v84)
      {
        v86 = *v10;
        v87 = *v84;
        do
        {
          *v10 = v87;
          *v84 = v86;
          v88 = *(v61 + 8);
          do
          {
            v89 = v10[1];
            ++v10;
            v86 = v89;
          }

          while (v88 <= *(*(v14 + 16 * v89) + 8));
          do
          {
            v90 = *--v84;
            v87 = v90;
          }

          while (v88 > *(*(v14 + 16 * v90) + 8));
        }

        while (v10 < v84);
      }

      v91 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v91;
      }

      a5 = 0;
      *v91 = v29;
    }

    else
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(*(v14 + 16 * v17) + 8);
      v20 = *(v14 + 16 * v18);
      if (v19 <= *(v20 + 8))
      {
        if (v16 > v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v25 = *v12;
          v26 = *v10;
          if (*(*(v14 + 16 * v25) + 8) > *(*(v14 + 16 * v26) + 8))
          {
            *v10 = v25;
            *v12 = v26;
          }
        }
      }

      else
      {
        if (v16 <= v19)
        {
          *v10 = v17;
          *v12 = v18;
          v30 = *(a2 - 1);
          if (*(*(v14 + 16 * v30) + 8) <= *(v20 + 8))
          {
            goto LABEL_29;
          }

          *v12 = v30;
        }

        else
        {
          *v10 = v15;
        }

        *(a2 - 1) = v18;
      }

LABEL_29:
      v31 = v12 - 1;
      v32 = *(v12 - 1);
      v33 = v10[1];
      v34 = *(*(v14 + 16 * v32) + 8);
      v35 = *(v14 + 16 * v33);
      v36 = *(a2 - 2);
      v37 = *(*(v14 + 16 * v36) + 8);
      if (v34 <= *(v35 + 8))
      {
        if (v37 > v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v10[1];
          if (*(*(v14 + 16 * v38) + 8) > *(*(v14 + 16 * v39) + 8))
          {
            v10[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 <= v34)
        {
          v10[1] = v32;
          *v31 = v33;
          v41 = *(a2 - 2);
          if (*(*(v14 + 16 * v41) + 8) <= *(v35 + 8))
          {
            goto LABEL_43;
          }

          *v31 = v41;
        }

        else
        {
          v10[1] = v36;
        }

        *(a2 - 2) = v33;
      }

LABEL_43:
      v44 = v12[1];
      v42 = v12 + 1;
      v43 = v44;
      v45 = v10[2];
      v46 = *(*(v14 + 16 * v44) + 8);
      v47 = *(v14 + 16 * v45);
      v48 = *(a2 - 3);
      v49 = *(*(v14 + 16 * v48) + 8);
      if (v46 <= *(v47 + 8))
      {
        if (v49 > v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v10[2];
          if (*(*(v14 + 16 * v50) + 8) > *(*(v14 + 16 * v51) + 8))
          {
            v10[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 <= v46)
        {
          v10[2] = v43;
          *v42 = v45;
          v52 = *(a2 - 3);
          if (*(*(v14 + 16 * v52) + 8) <= *(v47 + 8))
          {
            goto LABEL_52;
          }

          *v42 = v52;
        }

        else
        {
          v10[2] = v48;
        }

        *(a2 - 3) = v45;
      }

LABEL_52:
      v53 = *v13;
      v54 = *v31;
      v55 = *(*(v14 + 16 * v53) + 8);
      v56 = *(v14 + 16 * v54);
      v57 = *v42;
      v58 = *(v14 + 16 * v57);
      result = *(v58 + 8);
      if (v55 <= *(v56 + 8))
      {
        if (result <= v55)
        {
          goto LABEL_60;
        }

        *v13 = v57;
        *v42 = v53;
        v42 = v13;
        LODWORD(v53) = v54;
        if (*(v58 + 8) > *(v56 + 8))
        {
LABEL_59:
          *v31 = v57;
          *v42 = v54;
LABEL_60:
          v60 = *v10;
          *v10 = v53;
          *v13 = v60;
          --a4;
          v29 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v81 = *v10;
        *v10 = v57;
        *v13 = v81;
        --a4;
        v29 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (result > v55)
      {
        goto LABEL_59;
      }

      *v31 = v53;
      *v13 = v54;
      v31 = v13;
      LODWORD(v53) = v57;
      if (*(v58 + 8) > *(v56 + 8))
      {
        goto LABEL_59;
      }

      v59 = *v10;
      *v10 = v54;
      *v13 = v59;
      --a4;
      v29 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v63 = 0;
      v64 = *(**a3 + 72);
      v65 = *(v64 + 16 * v29);
      v66 = *(v65 + 8);
      do
      {
        v67 = v10[++v63];
      }

      while (*(*(v64 + 16 * v67) + 8) > v66);
      v68 = &v10[v63];
      v69 = a2;
      if (v63 == 1)
      {
        v69 = a2;
        do
        {
          if (v68 >= v69)
          {
            break;
          }

          v71 = *--v69;
        }

        while (*(*(v64 + 16 * v71) + 8) <= v66);
      }

      else
      {
        do
        {
          v70 = *--v69;
        }

        while (*(*(v64 + 16 * v70) + 8) <= v66);
      }

      if (v68 >= v69)
      {
        v79 = v68 - 1;
        if (v68 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v79;
        goto LABEL_80;
      }

      v72 = *v69;
      v73 = v67;
      v74 = v68;
      v75 = v69;
      do
      {
        *v74 = v72;
        *v75 = v73;
        v76 = *(v65 + 8);
        do
        {
          v77 = v74[1];
          ++v74;
          v73 = v77;
        }

        while (*(*(v64 + 16 * v77) + 8) > v76);
        do
        {
          v78 = *--v75;
          v72 = v78;
        }

        while (*(*(v64 + 16 * v78) + 8) <= v76);
      }

      while (v74 < v75);
      v79 = v74 - 1;
      if (v74 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v79 = v29;
      if (v68 < v69)
      {
        goto LABEL_83;
      }

      v10 = v79 + 1;
      if (result)
      {
        a2 = v79;
        if (!v80)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v80)
      {
LABEL_83:
        a5 = 0;
        v10 = v79 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v109 = *(**a3 + 72);
    }

    if (v11 == 5)
    {
      v92 = *(a2 - 1);
      v93 = v10[3];
      v94 = *(**a3 + 72);
      if (*(*(v94 + 16 * v92) + 8) > *(*(v94 + 16 * v93) + 8))
      {
        v10[3] = v92;
        *(a2 - 1) = v93;
        v96 = v10[2];
        v95 = v10[3];
        v97 = *(v94 + 16 * v95);
        if (*(v97 + 8) > *(*(v94 + 16 * v96) + 8))
        {
          v10[2] = v95;
          v10[3] = v96;
          v98 = v10[1];
          if (*(v97 + 8) > *(*(v94 + 16 * v98) + 8))
          {
            v10[1] = v95;
            v10[2] = v98;
            v99 = *v10;
            if (*(v97 + 8) > *(*(v94 + 16 * v99) + 8))
            {
              *v10 = v95;
              v10[1] = v99;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_10;
  }

  v102 = *(**a3 + 72);
  v103 = *v10;
  v104 = v10[1];
  v105 = *(*(v102 + 16 * v104) + 8);
  v106 = *(v102 + 16 * v103);
  v107 = *(a2 - 1);
  v108 = *(*(v102 + 16 * v107) + 8);
  if (v105 <= *(v106 + 8))
  {
    if (v108 > v105)
    {
      v10[1] = v107;
      *(a2 - 1) = v104;
      v156 = *v10;
      v155 = v10[1];
      if (*(*(v102 + 16 * v155) + 8) > *(*(v102 + 16 * v156) + 8))
      {
        *v10 = v155;
        v10[1] = v156;
      }
    }
  }

  else
  {
    if (v108 <= v105)
    {
      *v10 = v104;
      v10[1] = v103;
      v163 = *(a2 - 1);
      if (*(*(v102 + 16 * v163) + 8) <= *(v106 + 8))
      {
        return result;
      }

      v10[1] = v163;
    }

    else
    {
      *v10 = v107;
    }

    *(a2 - 1) = v103;
  }

  return result;
}

_DWORD *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::PatternLowering::generate(mlir::pdl_to_pdl_interp::SwitchNode *,mlir::Block *,mlir::Value)::$_0 &,unsigned int *,0>(_DWORD *result, _DWORD *a2, unsigned int *a3, _DWORD *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*(a5 + 16 * v5) + 8);
  v8 = *(a5 + 16 * v6);
  v9 = *a3;
  v10 = *(*(a5 + 16 * *a3) + 8);
  if (v7 <= *(v8 + 8))
  {
    if (v10 <= v7)
    {
      v6 = *a3;
      goto LABEL_14;
    }

    *a2 = v9;
    *a3 = v5;
    v11 = *a2;
    v12 = *result;
    if (*(*(a5 + 16 * v11) + 8) <= *(*(a5 + 16 * v12) + 8))
    {
      v6 = v5;
      v9 = v5;
      goto LABEL_14;
    }

    *result = v11;
    *a2 = v12;
    v6 = *a3;
  }

  else
  {
    if (v10 <= v7)
    {
      *result = v5;
      *a2 = v6;
      v9 = *a3;
      if (*(*(a5 + 16 * *a3) + 8) <= *(v8 + 8))
      {
        v6 = *a3;
        goto LABEL_14;
      }

      *a2 = v9;
    }

    else
    {
      *result = v9;
    }

    *a3 = v6;
  }

  v9 = v6;
LABEL_14:
  v13 = *a4;
  if (*(*(a5 + 16 * v13) + 8) > *(*(a5 + 16 * v6) + 8))
  {
    *a3 = v13;
    *a4 = v9;
    v14 = *a3;
    v15 = *a2;
    if (*(*(a5 + 16 * v14) + 8) > *(*(a5 + 16 * v15) + 8))
    {
      *a2 = v14;
      *a3 = v15;
      v16 = *a2;
      v17 = *result;
      if (*(*(a5 + 16 * v16) + 8) > *(*(a5 + 16 * v17) + 8))
      {
        *result = v16;
        *a2 = v17;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::PatternLowering::generate(mlir::pdl_to_pdl_interp::SwitchNode *,mlir::Block *,mlir::Value)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v18 = *(**a3 + 72);
        v19 = *a1;
        v20 = a1[1];
        v21 = *(*(v18 + 16 * v20) + 8);
        v22 = *(v18 + 16 * v19);
        v23 = *(a2 - 1);
        v24 = *(*(v18 + 16 * v23) + 8);
        if (v21 <= *(v22 + 8))
        {
          if (v24 > v21)
          {
            a1[1] = v23;
            *(a2 - 1) = v20;
            v39 = *a1;
            v38 = a1[1];
            if (*(*(v18 + 16 * v38) + 8) > *(*(v18 + 16 * v39) + 8))
            {
              *a1 = v38;
              a1[1] = v39;
              return 1;
            }
          }
        }

        else
        {
          if (v24 > v21)
          {
            *a1 = v23;
            *(a2 - 1) = v19;
            return 1;
          }

          *a1 = v20;
          a1[1] = v19;
          v48 = *(a2 - 1);
          if (*(*(v18 + 16 * v48) + 8) > *(v22 + 8))
          {
            a1[1] = v48;
            *(a2 - 1) = v19;
          }
        }

        return 1;
      case 4:
        return 1;
      case 5:
        v10 = *(a2 - 1);
        v11 = a1[3];
        v12 = *(**a3 + 72);
        if (*(*(v12 + 16 * v10) + 8) > *(*(v12 + 16 * v11) + 8))
        {
          a1[3] = v10;
          *(a2 - 1) = v11;
          v14 = a1[2];
          v13 = a1[3];
          v15 = *(v12 + 16 * v13);
          if (*(v15 + 8) > *(*(v12 + 16 * v14) + 8))
          {
            a1[2] = v13;
            a1[3] = v14;
            v16 = a1[1];
            if (*(v15 + 8) > *(*(v12 + 16 * v16) + 8))
            {
              a1[1] = v13;
              a1[2] = v16;
              v17 = *a1;
              if (*(v15 + 8) > *(*(v12 + 16 * v17) + 8))
              {
                *a1 = v13;
                a1[1] = v17;
                return 1;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v4 = *(a2 - 1);
      v5 = *a1;
      if (*(*(*(**a3 + 72) + 16 * v4) + 8) > *(*(*(**a3 + 72) + 16 * v5) + 8))
      {
        *a1 = v4;
        *(a2 - 1) = v5;
        return 1;
      }

      return 1;
    }
  }

  v25 = a1 + 2;
  v26 = a1[2];
  v27 = a1[1];
  v28 = *(**a3 + 72);
  v29 = *a1;
  v30 = *(*(v28 + 16 * v27) + 8);
  v31 = *(v28 + 16 * v29);
  v32 = *(v28 + 16 * v26);
  v33 = *(v32 + 8);
  if (v30 <= *(v31 + 8))
  {
    if (v33 <= v30)
    {
      goto LABEL_28;
    }

    a1[1] = v26;
    *v25 = v27;
    v36 = *(v32 + 8);
    v37 = *(v31 + 8);
    v34 = a1;
    v35 = a1 + 1;
LABEL_26:
    if (v36 <= v37)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v34 = a1;
  v35 = a1 + 2;
  if (v33 <= v30)
  {
    *a1 = v27;
    a1[1] = v29;
    v36 = *(v32 + 8);
    v37 = *(v31 + 8);
    v34 = a1 + 1;
    v35 = a1 + 2;
    goto LABEL_26;
  }

LABEL_27:
  *v34 = v26;
  *v35 = v29;
LABEL_28:
  v40 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v41 = 0;
  for (i = 12; ; i += 4)
  {
    v43 = *v40;
    v44 = *v25;
    v45 = *(v28 + 16 * v43);
    if (*(v45 + 8) > *(*(v28 + 16 * v44) + 8))
    {
      break;
    }

LABEL_37:
    v25 = v40++;
    if (v40 == a2)
    {
      return 1;
    }
  }

  v46 = i;
  do
  {
    *(a1 + v46) = v44;
    v47 = v46 - 4;
    if (v46 == 4)
    {
      *a1 = v43;
      if (++v41 != 8)
      {
        goto LABEL_37;
      }

      return v40 + 1 == a2;
    }

    v44 = *(a1 + v46 - 8);
    v46 -= 4;
  }

  while (*(v45 + 8) > *(*(v28 + 16 * v44) + 8));
  *(a1 + v47) = v43;
  if (++v41 != 8)
  {
    goto LABEL_37;
  }

  return v40 + 1 == a2;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperandCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperandCountOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperandCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (a4[1] - *a4) >> 2;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchOperandCountOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperandCountOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::SwitchResultCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchResultCountOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchResultCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (a4[1] - *a4) >> 2;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchResultCountOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchResultCountOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperationNameOp,mlir::Value &,std::vector<mlir::OperationName> &,mlir::Block *&,std::vector<mlir::Block *> &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperationNameOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperationNameOp,mlir::Value &,std::vector<mlir::OperationName> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (*(a4 + 8) - *a4) >> 3;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchOperationNameOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperationNameOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypesOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypesOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypesOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (*(a4 + 8) - *a4) >> 3;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchTypesOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypesOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (*(a4 + 8) - *a4) >> 3;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchTypeOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypeOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::SwitchAttributeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchAttributeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchAttributeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (*(a4 + 8) - *a4) >> 3;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchAttributeOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchAttributeOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::SuccessNode>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::SuccessNode]";
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

double mlir::Region::getOps<mlir::pdl::OperationOp>@<D0>(mlir::Region *a1@<X0>, uint64_t a2@<X8>)
{
  mlir::Region::OpIterator::OpIterator(&v19, a1, 1);
  mlir::Region::OpIterator::OpIterator(&v15, a1, 0);
  *&v13[8] = v19;
  v5 = v16;
  *v13 = v16;
  v12 = v15;
  *&v13[24] = v20;
  for (i = mlir::detail::op_filter_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::filter; *v13 != *&v13[24]; v5 = *v13)
  {
    v6 = i;
    v7 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v5, v4);
    if ((v6)(v7))
    {
      break;
    }

    mlir::Region::OpIterator::operator++(&v12);
  }

  v15 = v12;
  v16 = *v13;
  v17 = *&v13[16];
  v18 = i;
  *v13 = v20;
  *&v13[8] = v19;
  *&v13[24] = v20;
  i = mlir::detail::op_filter_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::filter;
  v8 = *v13;
  *(a2 + 64) = v19;
  *(a2 + 80) = v8;
  *(a2 + 96) = *&v13[16];
  v9 = i;
  v10 = v16;
  *a2 = v15;
  *(a2 + 16) = v10;
  result = *&v17;
  *(a2 + 32) = v17;
  *(a2 + 48) = v18;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v9;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::RecordMatchOp,std::vector<mlir::Value> &,llvm::ArrayRef<mlir::Value>,mlir::SymbolRefAttr &,mlir::StringAttr &,mlir::ArrayAttr &,mlir::IntegerAttr,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v26[5] = *MEMORY[0x1E69E9840];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v18 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::RecordMatchOp,void>::id, Context);
  if ((v19 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::RecordMatchOp,std::vector<mlir::Value> &,llvm::ArrayRef<mlir::Value>,mlir::SymbolRefAttr &,mlir::StringAttr &,mlir::ArrayAttr &,mlir::IntegerAttr,mlir::Block *&>(v24, v26, v25);
  }

  mlir::OperationState::OperationState(v24, a2, v18);
  mlir::ValueRange::ValueRange(v26, *a3, (a3[1] - *a3) >> 3);
  mlir::ValueRange::ValueRange(v25, *a4, *(a4 + 8));
  mlir::pdl_interp::RecordMatchOp::build(a1, v24, v26[0], v26[1], v25[0], v25[1], *a5, *a6, *a7, *a8, *a9);
  v20 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::RecordMatchOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v21;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,char const(&)[23],mlir::FunctionType>(mlir::OpBuilder *a1, uint64_t a2, const char *a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::FuncOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,llvm::StringRef,mlir::FunctionType,std::nullopt_t const&>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  v11 = strlen(a3);
  mlir::pdl_interp::FuncOp::build(a1, v18, a3, v11, *a4, 0, 0);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::FuncOp,void>::id)
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

void *anonymous namespace::PatternLowering::generateRewriter(mlir::pdl::PatternOp,llvm::SmallVectorImpl<mlir::pdl_to_pdl_interp::Position *> &)::$_0::operator()(uint64_t a1, unint64_t a2)
{
  v30 = a2;
  v3 = *(a1 + 8);
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](*a1, &v30);
  result = *v4;
  if (*v4)
  {
    return result;
  }

  DefiningOp = mlir::Value::getDefiningOp(&v30);
  v7 = *(*(DefiningOp + 48) + 16);
  if (DefiningOp && v7 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeOp,void>::id)
  {
    v29 = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64);
    if (v29)
    {
      v8 = mlir::OpBuilder::create<mlir::pdl_interp::CreateAttributeOp,mlir::Attribute const&>(v3, *(DefiningOp + 24), &v29);
LABEL_14:
      result = (v8 - 16);
      *v4 = result;
      return result;
    }
  }

  else if (DefiningOp && v7 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id)
  {
    v29 = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64);
    if (v29)
    {
      v8 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(v3, *(DefiningOp + 24), &v29);
      goto LABEL_14;
    }
  }

  else if (DefiningOp)
  {
    if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl::TypesOp,void>::id)
    {
      v29 = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64);
      if (v29)
      {
        v9 = *(DefiningOp + 24);
        v28 = *(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8;
        v8 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::pdl::RangeType,mlir::ArrayAttr &>(v3, v9, &v28, &v29);
        goto LABEL_14;
      }
    }
  }

  v10 = *(v3 + 216);
  if (!v10)
  {
LABEL_26:
    v17 = 0;
    v18 = *(a1 + 16);
    v19 = *(v18 + 8);
    if (v19 < *(v18 + 12))
    {
      goto LABEL_18;
    }

LABEL_27:
    v27 = v17;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v18, v18 + 16, v19 + 1, 8);
    v17 = v27;
    LODWORD(v19) = *(v18 + 8);
    goto LABEL_18;
  }

  v11 = *(v3 + 200);
  v12 = 0x9DDFEA08EB382D69 * ((8 * v30 - 0xAE502812AA7333) ^ HIDWORD(v30));
  v13 = 0x9DDFEA08EB382D69 * (HIDWORD(v30) ^ (v12 >> 47) ^ v12);
  LODWORD(v12) = -348639895 * ((v13 >> 47) ^ v13);
  v14 = v10 - 1;
  v15 = v12 & (v10 - 1);
  v16 = *(v11 + 16 * v15);
  if (v30 != v16)
  {
    v25 = 1;
    while (v16 != -4096)
    {
      v26 = v15 + v25++;
      v15 = v26 & v14;
      v16 = *(v11 + 16 * v15);
      if (v30 == v16)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_26;
  }

LABEL_17:
  v17 = *(v11 + 16 * v15 + 8);
  v18 = *(a1 + 16);
  v19 = *(v18 + 8);
  if (v19 >= *(v18 + 12))
  {
    goto LABEL_27;
  }

LABEL_18:
  *(*v18 + 8 * v19) = v17;
  ++*(v18 + 8);
  v20 = **(a1 + 24);
  v21 = *(((v20 + 16 * ((*(v20 + 44) >> 23) & 1) + ((*(v20 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v20 + 40) + 8);
  if (v21)
  {
    v22 = (v21 - 8);
  }

  else
  {
    v22 = 0;
  }

  v23 = *(v30 + 8);
  Loc = mlir::Value::getLoc(&v30);
  result = mlir::Block::addArgument(v22, v23 & 0xFFFFFFFFFFFFFFF8, Loc);
  *v4 = result;
  return result;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::ApplyRewriteOp,mlir::TypeRange,mlir::StringAttr &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ApplyRewriteOp,mlir::TypeRange,mlir::StringAttr &,llvm::SmallVector<mlir::Value,6u> &>(v21, v22, v20);
  }

  mlir::OperationState::OperationState(v21, a2, v11);
  v14 = *a3;
  v13 = a3[1];
  v15 = *a4;
  mlir::ValueRange::ValueRange(v22, *a5, *(a5 + 8));
  mlir::pdl_interp::ApplyRewriteOp::build(a1, v21, v14, v13, v15, v22[0], v22[1]);
  v16 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v17;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::pdl::RangeType,mlir::ArrayAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::pdl_interp::CreateTypesOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::ApplyRewriteOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::StringAttr,llvm::SmallVector<mlir::Value,2u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ApplyRewriteOp,mlir::TypeRange,mlir::StringAttr &,llvm::SmallVector<mlir::Value,6u> &>(v21, &v23, v22);
  }

  mlir::OperationState::OperationState(v21, a2, v11);
  NextResultAtOffset = *a3;
  v14 = a3[1];
  v15 = a3[3];
  if (v14)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v14);
  }

  mlir::ValueRange::ValueRange(&v23, NextResultAtOffset, v15 - v14);
  mlir::TypeRange::TypeRange(v22, v23, v24);
  v16 = *a4;
  mlir::ValueRange::ValueRange(&v23, *a5, *(a5 + 8));
  mlir::pdl_interp::ApplyRewriteOp::build(a1, v21, v22[0], v22[1], v16, v23, v24);
  v17 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v18;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::EraseOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::EraseOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::EraseOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::memref::DeallocOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::EraseOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CreateOperationOp,llvm::StringRef,llvm::SmallVector<mlir::Value,2u> &,BOOL &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::Value,4u> &,mlir::ArrayAttr>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v30[5] = *MEMORY[0x1E69E9840];
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateOperationOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateOperationOp,llvm::StringRef,llvm::SmallVector<mlir::Value,2u> &,BOOL &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::Value,4u> &,mlir::ArrayAttr>(v28, v30, v29);
  }

  mlir::OperationState::OperationState(v28, a2, v17);
  v20 = *a3;
  v19 = a3[1];
  mlir::ValueRange::ValueRange(v30, *a4, *(a4 + 8));
  v21 = *a5;
  mlir::ValueRange::ValueRange(v29, *a6, *(a6 + 8));
  mlir::ValueRange::ValueRange(v27, *a7, *(a7 + 8));
  mlir::pdl_interp::CreateOperationOp::build(a1, v28, v20, v19, v30[0], v30[1], v21, v22, v29[0], v29[1], v27[0], v27[1], *a8);
  v23 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v23 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateOperationOp,void>::id)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v24;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::GetResultsOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::pdl_interp::GetResultsOp &>(mlir::MLIRContext **a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::GetValueTypeOp::build(a1, v15, *a3 - 16);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type &,mlir::Value &,unsigned long>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::GetResultsOp::build(a1, v19, *a3, *a4, *a5 | 0x100000000);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::CreateRangeOp,mlir::pdl::RangeType,llvm::SmallVector<mlir::Value,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateRangeOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateRangeOp,mlir::pdl::RangeType,llvm::SmallVector<mlir::Value,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::pdl_interp::CreateRangeOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateRangeOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::pdl_interp::ReplaceOp,mlir::Value,llvm::SmallVector<mlir::Value,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ReplaceOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ReplaceOp,mlir::Value,llvm::SmallVector<mlir::Value,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::pdl_interp::ReplaceOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ReplaceOp,void>::id)
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

int32x2_t **llvm::ScopedHashTableScope<mlir::pdl_to_pdl_interp::Position *,mlir::Value,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::MallocAllocator>::~ScopedHashTableScope(int32x2_t **result)
{
  v1 = result;
  (*result)[3] = result[1];
  v2 = result[2];
  if (v2)
  {
    v3 = *result;
    if (*(v2 + 1))
    {
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v3, v2 + 2) = *(v2 + 1);
    }

    else
    {
      v4 = v3[2].i32[0];
      if (v4)
      {
        v5 = *v3;
        v6 = *(v2 + 2);
        v7 = v4 - 1;
        v8 = ((v6 >> 4) ^ (v6 >> 9)) & (v4 - 1);
        v9 = *(*v3 + 16 * v8);
        if (v6 == v9)
        {
LABEL_8:
          *(*&v5 + 16 * v8) = -8192;
          v3[1] = vadd_s32(v3[1], 0x1FFFFFFFFLL);
        }

        else
        {
          v10 = 1;
          while (v9 != -4096)
          {
            v11 = v8 + v10++;
            v8 = v11 & v7;
            v9 = *(*&v5 + 16 * v8);
            if (v6 == v9)
            {
              goto LABEL_8;
            }
          }
        }
      }
    }

    v1[2] = *v2;
    llvm::deallocate_buffer(v2, 0x20);
  }

  return result;
}

double mlir::Region::getOps<mlir::pdl::PatternOp>@<D0>(mlir::Region *a1@<X0>, uint64_t a2@<X8>)
{
  mlir::Region::OpIterator::OpIterator(&v19, a1, 1);
  mlir::Region::OpIterator::OpIterator(&v15, a1, 0);
  *&v13[8] = v19;
  v5 = v16;
  *v13 = v16;
  v12 = v15;
  *&v13[24] = v20;
  for (i = mlir::detail::op_filter_iterator<mlir::pdl::PatternOp,mlir::Region::OpIterator>::filter; *v13 != *&v13[24]; v5 = *v13)
  {
    v6 = i;
    v7 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v5, v4);
    if ((v6)(v7))
    {
      break;
    }

    mlir::Region::OpIterator::operator++(&v12);
  }

  v15 = v12;
  v16 = *v13;
  v17 = *&v13[16];
  v18 = i;
  *v13 = v20;
  *&v13[8] = v19;
  *&v13[24] = v20;
  i = mlir::detail::op_filter_iterator<mlir::pdl::PatternOp,mlir::Region::OpIterator>::filter;
  v8 = *v13;
  *(a2 + 64) = v19;
  *(a2 + 80) = v8;
  *(a2 + 96) = *&v13[16];
  v9 = i;
  v10 = v16;
  *a2 = v15;
  *(a2 + 16) = v10;
  result = *&v17;
  *(a2 + 32) = v17;
  *(a2 + 48) = v18;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::pdl::PatternOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v9;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::pdl::PatternOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

uint64_t mlir::pdl_to_pdl_interp::Position::getOperationDepth(uint64_t this)
{
  while (!this || *(this + 16))
  {
    this = *(this + 8);
    if (!this)
    {
      return this;
    }
  }

  return *(this + 32);
}

__n128 mlir::pdl_to_pdl_interp::AttributePosition::AttributePosition(uint64_t a1, __n128 *a2)
{
  *(a1 + 16) = 3;
  *a1 = &unk_1F5B05180;
  *(a1 + 8) = 0;
  result = *a2;
  *(a1 + 24) = *a2;
  v3 = a2->n128_u64[0];
  *a1 = &unk_1F5B05068;
  *(a1 + 8) = v3;
  return result;
}

__n128 mlir::pdl_to_pdl_interp::OperandPosition::OperandPosition(uint64_t a1, __n128 *a2)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F5B051A0;
  *(a1 + 8) = 0;
  result = *a2;
  *(a1 + 24) = *a2;
  v3 = a2->n128_u64[0];
  *a1 = &unk_1F5B05088;
  *(a1 + 8) = v3;
  return result;
}

__n128 mlir::pdl_to_pdl_interp::OperandGroupPosition::OperandGroupPosition(uint64_t a1, __n128 *a2)
{
  *(a1 + 16) = 2;
  *a1 = &unk_1F5B051C0;
  *(a1 + 8) = 0;
  result = *a2;
  *(a1 + 40) = a2[1].n128_u64[0];
  *(a1 + 24) = result;
  v3 = a2->n128_u64[0];
  *a1 = &unk_1F5B050A8;
  *(a1 + 8) = v3;
  return result;
}

void mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v50[80] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  v6 = *(a1 + 44);
  v48 = v50;
  v49 = 0x1000000000;
  mlir::Region::getOps<mlir::pdl::PatternOp>((((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v7), &v43);
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  if (v44 != v47)
  {
    v9 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v44, v8);
    v10 = (*(&v42 + 1))(v9);
    v37 = 0;
    v38 = v10;
    __p[0] = 0;
    __p[1] = 0;
    buildPredicateList(v10, a2, __p, a3);
  }

  if (v49)
  {
    v11 = v48;
    while (1)
    {
      v12 = v11[2];
      if (v12 != v11[3])
      {
        break;
      }

      v11 += 5;
      if (v11 == (v48 + 40 * v49))
      {
        v15 = 40 * v49;
        v16 = operator new(v15);
        v34 = v16;
        v35 = v16;
        v32 = *v48;
        v33 = *(v48 + 1);
        if (*(v48 + 2) != *(v48 + 3))
        {
          llvm::deallocate_buffer(0, 0);
        }

        if (v16 < &v16[v15])
        {
          *v16 = v32;
          *(v16 + 1) = v33;
          *(v16 + 2) = 0;
          *(v16 + 6) = 0;
          *(v16 + 7) = 0;
          *(v16 + 8) = 0;
        }

        else
        {
          v17 = 1;
          if (0x999999999999999ALL * (v15 >> 3) > 1)
          {
            v17 = 0x999999999999999ALL * (v15 >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * (v15 >> 3) >= 0x333333333333333)
          {
            v18 = 0x666666666666666;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            if (v18 > 0x666666666666666)
            {
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }

            v19 = operator new(40 * v18);
          }

          else
          {
            v19 = 0;
          }

          *v19 = v32;
          v19[1] = v33;
          v19[2] = 0;
          *(v19 + 6) = 0;
          *(v19 + 7) = 0;
          *(v19 + 8) = 0;
          if (v34 != v35)
          {
            v20 = v34;
            v21 = v19;
            do
            {
              *v21 = *v20;
              *(v21 + 8) = 0;
              v21[3] = 0;
              v21[2] = v20[2];
              v20[2] = 0;
              *(v21 + 6) = *(v20 + 6);
              *(v20 + 6) = 0;
              v22 = *(v21 + 7);
              *(v21 + 7) = *(v20 + 7);
              *(v20 + 7) = v22;
              v23 = *(v21 + 8);
              *(v21 + 8) = *(v20 + 8);
              *(v20 + 8) = v23;
              v20 += 5;
              v21 += 5;
            }

            while (v20 != v35);
            llvm::deallocate_buffer(v34[2], (8 * *(v34 + 8)));
          }

          if (v34)
          {
            operator delete(v34);
          }
        }

        llvm::deallocate_buffer(0, 0);
      }
    }

    v13 = v12[1];
    *&v43 = *v12;
    *(&v43 + 1) = v13;
    *&v44 = 0;
    DWORD2(v44) = 0;
    v45 = 0uLL;
    LODWORD(v46) = 0;
    __p[0] = 0;
    buffer = llvm::allocate_buffer(0xE00uLL, 8uLL);
    *buffer = -4096;
    buffer[1] = -4096;
    buffer[2] = 0;
    *(buffer + 6) = 0;
    buffer[4] = 0;
    buffer[5] = 0;
    *(buffer + 12) = 0;
    llvm::deallocate_buffer(0, 0);
  }

  *a4 = 0;
  foldSwitchToBool(a4);
  v24 = a4;
  do
  {
    v25 = v24;
    v26 = *v24;
    v24 = (*v24 + 24);
  }

  while (v26);
  v27 = operator new(0x30uLL);
  {
    v30 = v27;
    v27 = v30;
  }

  v28 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ExitNode,void>::resolveTypeID(void)::id;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  *(v27 + 5) = v28;
  *v27 = &unk_1F5B055D8;
  v29 = *v25;
  *v25 = v27;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  llvm::deallocate_buffer(0, 0);
}

void foldSwitchToBool(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1;
    while (1)
    {
      v5 = *(v1 + 40);
      {
        if (v5 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id)
        {
          goto LABEL_10;
        }
      }

      else
      {
        foldSwitchToBool();
        if (v5 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id)
        {
LABEL_10:
          v8 = *(v1 + 80);
          if (v8)
          {
            v9 = *(v1 + 72) + 8;
            v10 = 16 * v8;
            do
            {
              foldSwitchToBool(v9);
              v9 += 16;
              v10 -= 16;
            }

            while (v10);
            if (*(v1 + 80) == 1)
            {
              v11 = *(v1 + 72);
              v12 = *v2;
              v20 = *(*v2 + 8);
              v13 = operator new(0x40uLL);
              v14 = *v11;
              *(v11 + 1) = 0;
              v15 = *(v12 + 24);
              *(v12 + 24) = 0;
              {
                v18 = v13;
                v19 = v14;
                foldSwitchToBool();
                v14 = v19;
                v13 = v18;
              }

              v16 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id;
              *(v13 + 8) = v20;
              *(v13 + 3) = v15;
              *(v13 + 4) = 0;
              *(v13 + 5) = v16;
              *v13 = &unk_1F5B05200;
              *(v13 + 3) = v14;
              v17 = *v2;
              *v2 = v13;
              if (v17)
              {
                (*(*v17 + 8))(v17);
              }
            }
          }

          goto LABEL_3;
        }
      }

      v6 = *v2;
      v7 = *(*v2 + 40);
      {
        break;
      }

      if (v7 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id)
      {
        goto LABEL_8;
      }

LABEL_3:
      v3 = *v2;
      v4 = *(v3 + 24);
      v2 = (v3 + 24);
      v1 = v4;
      if (!v4)
      {
        return;
      }
    }

    foldSwitchToBool();
    if (v7 != mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id)
    {
      goto LABEL_3;
    }

LABEL_8:
    foldSwitchToBool(v6 + 56);
    goto LABEL_3;
  }
}

void mlir::pdl_to_pdl_interp::MatcherNode::~MatcherNode(mlir::pdl_to_pdl_interp::MatcherNode *this)
{
  *this = &unk_1F5B051E0;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_1F5B051E0;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(this);
}

void mlir::pdl_to_pdl_interp::BoolNode::~BoolNode(mlir::pdl_to_pdl_interp::BoolNode *this)
{
  *this = &unk_1F5B05200;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F5B051E0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  *this = &unk_1F5B05200;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F5B051E0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  operator delete(this);
}

void mlir::pdl_to_pdl_interp::SuccessNode::~SuccessNode(mlir::pdl_to_pdl_interp::SuccessNode *this)
{
  *this = &unk_1F5B051E0;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_1F5B051E0;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(this);
}

void mlir::pdl_to_pdl_interp::SwitchNode::~SwitchNode(mlir::pdl_to_pdl_interp::SwitchNode *this)
{
  *this = &unk_1F5B05240;
  v2 = *(this + 9);
  v3 = *(this + 20);
  if (v3)
  {
    v4 = v2 - 8;
    v5 = 16 * v3;
    do
    {
      v6 = *&v4[v5];
      *&v4[v5] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v5 -= 16;
    }

    while (v5);
    v2 = *(this + 9);
  }

  if (v2 != this + 88)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 6), (16 * *(this + 16)));
}

{
  *this = &unk_1F5B05240;
  v2 = *(this + 9);
  v3 = *(this + 20);
  if (v3)
  {
    v4 = v2 - 8;
    v5 = 16 * v3;
    do
    {
      v6 = *&v4[v5];
      *&v4[v5] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v5 -= 16;
    }

    while (v5);
    v2 = *(this + 9);
  }

  if (v2 != this + 88)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 6), (16 * *(this + 16)));
}

void *sub_1DFDC3F4C()
{
  *v0 = &unk_1F5B051E0;
  v1 = v0[4];
  v0[4] = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  v2 = v0[3];
  v0[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return v0;
}

void sub_1DFDC408C()
{
  *v0 = &unk_1F5B051E0;
  v1 = v0[4];
  v0[4] = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  v2 = v0[3];
  v0[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(v0);
}

void getTreePredicates(uint64_t a1, uint64_t a2, mlir::detail::StorageUniquerImpl ***a3, uint64_t a4, mlir::pdl_to_pdl_interp::OperationPosition *a5)
{
  v89 = a5;
  v90 = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::try_emplace<mlir::pdl_to_pdl_interp::Position *&>(a4, &v90, &v89, &v87);
  if ((v88 & 1) == 0)
  {
    v11 = *(*(mlir::Value::getDefiningOp(&v90) + 48) + 16);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeOp,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::pdl::OperandOp,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id)
    {
      v16 = (v87 + 8);
      v17 = v89;
      OperationDepth = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*(v87 + 8));
      v19 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v17);
      v20 = OperationDepth >= v19;
      v21 = &v89;
      if (OperationDepth >= v19)
      {
        v22 = v16;
      }

      else
      {
        v22 = &v89;
      }

      if (!v20)
      {
        v21 = v16;
      }

      EqualTo = mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo(a3, *v21);
      v26 = *(a1 + 8);
      v25 = *(a1 + 16);
      if (v26 < v25)
      {
        *v26 = *v22;
        v26[1] = EqualTo;
        v26[2] = v24;
        v27 = v26 + 3;
LABEL_98:
        *(a1 + 8) = v27;
        return;
      }

      v33 = *a1;
      v34 = v26 - *a1;
      v35 = 0xAAAAAAAAAAAAAAABLL * (v34 >> 3) + 1;
      if (v35 <= 0xAAAAAAAAAAAAAAALL)
      {
        v36 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v33) >> 3);
        if (2 * v36 > v35)
        {
          v35 = 2 * v36;
        }

        if (v36 >= 0x555555555555555)
        {
          v37 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v37 = v35;
        }

        if (v37)
        {
          if (v37 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_101;
          }

          v38 = EqualTo;
          v39 = v24;
          v40 = operator new(24 * v37);
          v24 = v39;
          EqualTo = v38;
        }

        else
        {
          v40 = 0;
        }

        v61 = &v40[8 * (v34 >> 3)];
        v62 = &v40[24 * v37];
        *v61 = *v22;
        v61[1] = EqualTo;
        v61[2] = v24;
        v27 = v61 + 3;
        v63 = v61 - v34;
        memcpy(v61 - v34, v33, v34);
        *a1 = v63;
        *(a1 + 8) = v27;
        *(a1 + 16) = v62;
        if (!v33)
        {
          goto LABEL_98;
        }

        v64 = v33;
LABEL_69:
        operator delete(v64);
        goto LABEL_98;
      }

      goto LABEL_100;
    }

    return;
  }

  v8 = v89;
  v9 = *(v89 + 4);
  if (v89)
  {
    v10 = v9 == 3;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v92[0] = v90;
    IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a3);
    v31 = *(a1 + 8);
    v30 = *(a1 + 16);
    if (v31 >= v30)
    {
      v53 = *a1;
      v54 = v31 - *a1;
      v55 = 0xAAAAAAAAAAAAAAABLL * (v54 >> 3) + 1;
      if (v55 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_100;
      }

      v56 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v53) >> 3);
      if (2 * v56 > v55)
      {
        v55 = 2 * v56;
      }

      if (v56 >= 0x555555555555555)
      {
        v57 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v57 = v55;
      }

      if (v57)
      {
        if (v57 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_101;
        }

        v58 = IsNotNull;
        v59 = v29;
        v60 = operator new(24 * v57);
        v29 = v59;
        IsNotNull = v58;
      }

      else
      {
        v60 = 0;
      }

      v66 = &v60[8 * (v54 >> 3)];
      v67 = &v60[24 * v57];
      *v66 = v8;
      v66[1] = IsNotNull;
      v66[2] = v29;
      v32 = v66 + 3;
      v68 = v66 - v54;
      memcpy(v66 - v54, v53, v54);
      *a1 = v68;
      *(a1 + 8) = v32;
      *(a1 + 16) = v67;
      if (v53)
      {
        operator delete(v53);
      }
    }

    else
    {
      *v31 = v8;
      v31[1] = IsNotNull;
      v32 = v31 + 3;
      v31[2] = v29;
    }

    *(a1 + 8) = v32;
    DefiningOp = mlir::Value::getDefiningOp(v92);
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeOp,void>::id)
    {
      v70 = DefiningOp;
    }

    else
    {
      v70 = 0;
    }

    v93 = v70;
    if (!v70)
    {
      return;
    }

    ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v93, 0);
    v72 = *(v93 + 44);
    if ((v72 & 0x800000) != 0)
    {
      v73 = *(v93 + 72);
      v74 = ODSOperandIndexAndLength;
      if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength == ODSOperandIndexAndLength)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v73 = 0;
      v74 = ODSOperandIndexAndLength;
      if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength == ODSOperandIndexAndLength)
      {
        goto LABEL_83;
      }
    }

    v75 = *(v73 + 32 * v74 + 24);
    if (v75)
    {
      v91[0] = v8;
      v76 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(*a3, 0, 0, v91);
      getTreePredicates(a1, v75, a3, a4, v76);
      return;
    }

LABEL_83:
    v77 = *(v93 + 16 * ((v72 >> 23) & 1) + 64);
    if (!v77)
    {
      return;
    }

    AttributeConstraint = mlir::pdl_to_pdl_interp::PredicateBuilder::getAttributeConstraint(a3, v77);
    v46 = *(a1 + 8);
    v78 = *(a1 + 16);
    if (v46 >= v78)
    {
      v47 = *a1;
      v48 = v46 - *a1;
      v49 = 0xAAAAAAAAAAAAAAABLL * (v48 >> 3);
      v79 = v49 + 1;
      if (v49 + 1 <= 0xAAAAAAAAAAAAAAALL)
      {
        v80 = 0xAAAAAAAAAAAAAAABLL * ((v78 - v47) >> 3);
        if (2 * v80 > v79)
        {
          v79 = 2 * v80;
        }

        if (v80 >= 0x555555555555555)
        {
          v52 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v52 = v79;
        }

        if (v52)
        {
          if (v52 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_101;
          }

LABEL_94:
          v81 = AttributeConstraint;
          v82 = v44;
          v83 = operator new(24 * v52);
          v44 = v82;
          AttributeConstraint = v81;
LABEL_96:
          v84 = &v83[24 * v49];
          v85 = &v83[24 * v52];
          *v84 = v8;
          v84[1] = AttributeConstraint;
          v84[2] = v44;
          v27 = v84 + 3;
          v86 = v84 - v48;
          memcpy(v84 - v48, v47, v48);
          *a1 = v86;
          *(a1 + 8) = v27;
          *(a1 + 16) = v85;
          if (!v47)
          {
            goto LABEL_98;
          }

          v64 = v47;
          goto LABEL_69;
        }

LABEL_95:
        v83 = 0;
        goto LABEL_96;
      }

LABEL_100:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

LABEL_85:
    *v46 = v8;
    v46[1] = AttributeConstraint;
    v27 = v46 + 3;
    v46[2] = v44;
    goto LABEL_98;
  }

  if (v89 && !v9)
  {
    getTreePredicates(a1, v90, a3, a4, v89, 0);
    return;
  }

  if (v9 != 7)
  {
    v96 = v89;
    v97 = v90;
    v95 = *(*(*(v90 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
    v65 = mlir::Value::getDefiningOp(&v97);
    v92[3] = a4;
    v93 = v65;
    v94 = 0;
    v92[0] = &v96;
    v92[1] = a1;
    v92[2] = a3;
    llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::OperandOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_0 &>(&v93, v92);
    llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::OperandsOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_0 &>(&v93, v92);
    v91[0] = a1;
    v91[1] = &v96;
    v91[2] = a3;
    v91[3] = &v95;
    v91[4] = a4;
    llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::ResultOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_1 &>(&v93, v91);
    llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::ResultsOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_1 &>(&v93, v91);
    return;
  }

  v91[0] = v90;
  v41 = mlir::Value::getDefiningOp(v91);
  if (v41 && *(*(v41 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id || (v41 = mlir::Value::getDefiningOp(v91)) != 0 && *(*(v41 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::TypesOp,void>::id)
  {
    v42 = *(v41 + 16 * ((*(v41 + 44) >> 23) & 1) + 64);
    if (v42)
    {
      AttributeConstraint = mlir::pdl_to_pdl_interp::PredicateBuilder::getTypeConstraint(a3, v42);
      v46 = *(a1 + 8);
      v45 = *(a1 + 16);
      if (v46 >= v45)
      {
        v47 = *a1;
        v48 = v46 - *a1;
        v49 = 0xAAAAAAAAAAAAAAABLL * (v48 >> 3);
        v50 = v49 + 1;
        if (v49 + 1 <= 0xAAAAAAAAAAAAAAALL)
        {
          v51 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v47) >> 3);
          if (2 * v51 > v50)
          {
            v50 = 2 * v51;
          }

          if (v51 >= 0x555555555555555)
          {
            v52 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v52 = v50;
          }

          if (v52)
          {
            if (v52 > 0xAAAAAAAAAAAAAAALL)
            {
LABEL_101:
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }

            goto LABEL_94;
          }

          goto LABEL_95;
        }

        goto LABEL_100;
      }

      goto LABEL_85;
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    v5 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)))) & (v2 - 1);
    v6 = *a1 + 32 * v5;
    v7 = *v6;
    if (*a2 == *v6)
    {
      return v6 + 8;
    }

    v11 = 0;
    v12 = 1;
    while (v7 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v7 == -8192;
      }

      if (v13)
      {
        v11 = v6;
      }

      v14 = v5 + v12++;
      v5 = v14 & (v2 - 1);
      v6 = *a1 + 32 * v5;
      v7 = *v6;
      if (*a2 == *v6)
      {
        return v6 + 8;
      }
    }

    if (v11)
    {
      v6 = v11;
    }
  }

  else
  {
    v6 = 0;
  }

  v17 = v6;
  v9 = *(a1 + 8);
  if (4 * v9 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v9 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>,mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>::LookupBucketFor<mlir::func::FuncOp>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v6 = v17;
    ++*(v16 + 8);
    if (*v6 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v9 + 1;
  if (*v6 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  v10 = *a2;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = v10;
  *(v6 + 24) = 0;
  return v6 + 8;
}

void std::deque<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry,std::allocator<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry>>::__add_back_capacity(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0x80;
  v4 = v2 - 128;
  if (v3)
  {
    *(a1 + 32) = v4;
    v5 = *(a1 + 8);
    v65 = *v5;
    *(a1 + 8) = v5 + 1;
LABEL_4:
    return;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = v9 - v7;
  v11 = &v8[-*a1];
  if (v9 - v7 < v11)
  {
    v12 = operator new(0x1000uLL);
    if (v8 != v9)
    {
      *v9 = v12;
      *(a1 + 16) = v9 + 8;
      return;
    }

    if (v7 != v6)
    {
      v22 = v7;
LABEL_60:
      *(v22 - 1) = v12;
      v65 = v12;
      *(a1 + 8) = v22;
      goto LABEL_4;
    }

    v48 = (v8 - v7) >> 2;
    if (v9 == v7)
    {
      v48 = 1;
    }

    if (!(v48 >> 61))
    {
      v49 = v12;
      v50 = (v48 + 3) >> 2;
      v51 = 8 * v48;
      v52 = operator new(8 * v48);
      v22 = &v52[8 * v50];
      v53 = v22;
      v12 = v49;
      if (v9 != v7)
      {
        v53 = &v22[v10];
        v54 = v9 - v7 - 8;
        v55 = &v52[8 * v50];
        v56 = v7;
        if (v54 < 0x38)
        {
          goto LABEL_64;
        }

        v57 = &v52[8 * v50];
        v55 = v57;
        v56 = v7;
        if ((v57 - v7) < 0x20)
        {
          goto LABEL_64;
        }

        v58 = (v54 >> 3) + 1;
        v59 = 8 * (v58 & 0x3FFFFFFFFFFFFFFCLL);
        v55 = &v22[v59];
        v56 = &v7[v59];
        v60 = (v7 + 16);
        v61 = v57 + 16;
        v62 = v58 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v63 = *v60;
          *(v61 - 1) = *(v60 - 1);
          *v61 = v63;
          v60 += 2;
          v61 += 2;
          v62 -= 4;
        }

        while (v62);
        if (v58 != (v58 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_64:
          do
          {
            v64 = *v56;
            v56 += 8;
            *v55 = v64;
            v55 += 8;
          }

          while (v55 != v53);
        }
      }

      *a1 = v52;
      *(a1 + 8) = v22;
      *(a1 + 16) = v53;
      *(a1 + 24) = &v52[v51];
      if (v7)
      {
        operator delete(v6);
        v12 = v49;
        v22 = *(a1 + 8);
      }

      goto LABEL_60;
    }

LABEL_61:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v13 = v11 >> 2;
  if (v8 == v6)
  {
    v13 = 1;
  }

  if (v13 >> 61)
  {
    goto LABEL_61;
  }

  v14 = 8 * v13;
  v15 = operator new(8 * v13);
  v16 = &v15[v10];
  v17 = &v15[v14];
  v18 = operator new(0x1000uLL);
  if (v10 != v14)
  {
    goto LABEL_14;
  }

  if (v10 >= 1)
  {
    v16 -= ((v10 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_14:
    *v16 = v18;
    v19 = v16 + 8;
    if (v9 != v7)
    {
      goto LABEL_31;
    }

    goto LABEL_15;
  }

  if (v9 == v7)
  {
    v23 = 1;
  }

  else
  {
    v23 = v10 >> 2;
  }

  if (v23 >> 61)
  {
    goto LABEL_61;
  }

  v24 = v18;
  v25 = 8 * v23;
  v26 = operator new(8 * v23);
  v16 = &v26[8 * (v23 >> 2)];
  v17 = &v26[v25];
  operator delete(v15);
  v27 = *(a1 + 8);
  v9 = *(a1 + 16);
  v15 = v26;
  *v16 = v24;
  v19 = v16 + 8;
  if (v9 != v27)
  {
LABEL_31:
    while (v16 != v15)
    {
      v28 = v16;
LABEL_30:
      v29 = *(v9 - 1);
      v9 -= 8;
      *(v28 - 1) = v29;
      v20 = v28 - 8;
      v16 = v20;
      if (v9 == *(a1 + 8))
      {
        goto LABEL_16;
      }
    }

    if (v19 < v17)
    {
      v28 = &v16[8 * ((((v17 - v19) >> 3) + 1 + ((((v17 - v19) >> 3) + 1) >> 63)) >> 1)];
      v31 = v19 - v16;
      v30 = v19 == v16;
      v19 += 8 * ((((v17 - v19) >> 3) + 1 + ((((v17 - v19) >> 3) + 1) >> 63)) >> 1);
      if (!v30)
      {
        memmove(v28, v16, v31);
      }

      goto LABEL_30;
    }

    v32 = (v17 - v16) >> 2;
    if (v17 == v16)
    {
      v32 = 1;
    }

    if (v32 >> 61)
    {
      goto LABEL_61;
    }

    v33 = (v32 + 3) >> 2;
    v34 = 8 * v32;
    v35 = operator new(8 * v32);
    v36 = v35;
    v28 = &v35[8 * v33];
    v37 = v19 - v16;
    v30 = v19 == v16;
    v19 = v28;
    if (!v30)
    {
      v19 = &v28[v37];
      v38 = v37 - 8;
      if (v38 >= 0x18 && (&v35[8 * v33] - v16) >= 0x20)
      {
        v42 = (v38 >> 3) + 1;
        v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
        v39 = &v28[v43];
        v40 = &v16[v43];
        v44 = (v16 + 16);
        v45 = &v35[8 * v33 + 16];
        v46 = v42 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v47 = *v44;
          *(v45 - 1) = *(v44 - 1);
          *v45 = v47;
          v44 += 2;
          v45 += 32;
          v46 -= 4;
        }

        while (v46);
        if (v42 == (v42 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_43;
        }
      }

      else
      {
        v39 = &v35[8 * v33];
        v40 = v16;
      }

      do
      {
        v41 = *v40;
        v40 += 8;
        *v39 = v41;
        v39 += 8;
      }

      while (v39 != v19);
    }

LABEL_43:
    v17 = &v35[v34];
    operator delete(v15);
    v15 = v36;
    goto LABEL_30;
  }

LABEL_15:
  v20 = v16;
LABEL_16:
  v21 = *a1;
  *a1 = v15;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19;
  *(a1 + 24) = v17;
  if (v21)
  {

    operator delete(v21);
  }
}

void std::__split_buffer<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry *,std::allocator<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry *>>::emplace_back<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry *&>(char **a1, void *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    v9 = v4 - v6;
    if (v4 != v6)
    {
      memmove(&v6[-8 * (v7 / 2)], a1[1], v4 - v6);
      v6 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v6[8 * (v7 / -2)];
    goto LABEL_19;
  }

  v10 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v10 = 1;
  }

  if (v10 >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v11 = v10 >> 2;
  v12 = 8 * v10;
  v13 = operator new(8 * v10);
  v14 = &v13[8 * v11];
  v16 = v4 - v6;
  v15 = v4 == v6;
  v4 = v14;
  if (!v15)
  {
    v4 = &v14[v16];
    v17 = v16 - 8;
    if ((v16 - 8) < 0x38)
    {
      v18 = &v13[8 * v11];
      do
      {
LABEL_16:
        v27 = *v6;
        v6 += 8;
        *v18 = v27;
        v18 += 8;
      }

      while (v18 != v4);
      goto LABEL_17;
    }

    v19 = &v13[8 * v11];
    v18 = v19;
    if ((v19 - v6) < 0x20)
    {
      goto LABEL_16;
    }

    v20 = (v17 >> 3) + 1;
    v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
    v18 = &v14[v21];
    v22 = &v6[v21];
    v23 = (v6 + 16);
    v24 = v19 + 16;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v6 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v4;
  a1[3] = &v13[v12];
  if (v5)
  {
    operator delete(v5);
    v4 = a1[2];
  }

LABEL_19:
  *v4 = *a2;
  a1[2] = v4 + 8;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>>,mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>>::grow(uint64_t a1, int a2)
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
        v25 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0x9DDFEA08EB382D69 * ((8 * *v16 - 0xAE502812AA7333) ^ HIDWORD(*v16));
          v27 = 0x9DDFEA08EB382D69 * (HIDWORD(v25) ^ (v26 >> 47) ^ v26);
          LODWORD(v26) = -348639895 * ((v27 >> 47) ^ v27);
          v28 = *(a1 + 16) - 1;
          v29 = v28 & v26;
          v22 = *a1 + 32 * v29;
          v30 = *v22;
          if (*v22 != v25)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v22;
              }

              v34 = v29 + v32++;
              v29 = v34 & v28;
              v22 = *a1 + 32 * v29;
              v30 = *v22;
              if (*v22 == v25)
              {
                goto LABEL_24;
              }
            }

            if (v31)
            {
              v22 = v31;
            }
          }

LABEL_24:
          *(v22 + 8) = 0;
          *(v22 + 16) = 0;
          *v22 = v25;
          *(v22 + 24) = 0;
          *(v22 + 8) = *(v16 + 1);
          *(v16 + 1) = 0;
          *(v22 + 16) = *(v16 + 4);
          *(v16 + 4) = 0;
          v23 = *(v22 + 20);
          *(v22 + 20) = *(v16 + 5);
          *(v16 + 5) = v23;
          v24 = *(v22 + 24);
          *(v22 + 24) = *(v16 + 6);
          *(v16 + 6) = v24;
          ++*(a1 + 8);
          llvm::deallocate_buffer(0, (24 * v24));
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

void llvm::SmallVectorTemplateBase<std::pair<mlir::Value,llvm::SmallVector<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::RootDepth,1u>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v26 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 40, &v26);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = 0;
  v9 = 40 * v7;
  do
  {
    v11 = &v5[v8];
    v12 = &v6[v8];
    *v11 = *&v6[v8];
    v13 = &v5[v8 + 24];
    *&v5[v8 + 8] = v13;
    v14 = &v5[v8 + 8];
    *(v11 + 2) = 0x100000000;
    if (v6 != v5)
    {
      v15 = *(v12 + 4);
      if (v15)
      {
        v16 = *(v12 + 1);
        v17 = &v6[v8];
        v18 = &v6[v8 + 24];
        if (v18 != v16)
        {
          *v14 = v16;
          v10 = *(v17 + 5);
          *(v11 + 4) = v15;
          *(v11 + 5) = v10;
          *(v12 + 1) = v18;
          *(v17 + 5) = 0;
LABEL_4:
          *(v12 + 4) = 0;
          goto LABEL_5;
        }

        if (v15 < 2)
        {
          v20 = 16;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v5[v8 + 8], &v5[v8 + 24], *(v12 + 4), 16);
          v19 = *(v12 + 4);
          if (!v19)
          {
LABEL_14:
            *(v11 + 4) = v15;
            goto LABEL_4;
          }

          v16 = *(v12 + 1);
          v13 = *v14;
          v20 = 16 * v19;
        }

        memcpy(v13, v16, v20);
        goto LABEL_14;
      }
    }

LABEL_5:
    v8 += 40;
  }

  while (v9 != v8);
  v6 = *a1;
  v21 = *(a1 + 8);
  if (v21)
  {
    v22 = &v6[40 * v21 - 16];
    v23 = -40 * v21;
    do
    {
      v24 = *(v22 - 16);
      if (v22 != v24)
      {
        free(v24);
      }

      v22 -= 40;
      v23 += 40;
    }

    while (v23);
    v6 = *a1;
  }

LABEL_21:
  v25 = v26;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v25;
}

void llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::copyFrom(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  if (v1)
  {
    v3 = 32 * v1;
    while ((*v2 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v2 = (v2 + 32);
      v3 -= 32;
      if (!v3)
      {
        llvm::deallocate_buffer(*a1, (32 * *(a1 + 16)));
      }
    }

    llvm::deallocate_buffer(*(v2 + 1), (24 * *(v2 + 6)));
  }

  llvm::deallocate_buffer(*a1, 0);
}

void sub_1DFDC5404()
{
  v2 = *(v1 + 16);
  *(v0 + 16) = v2;
  if (!v2)
  {
    JUMPOUT(0x1DFDC5410);
  }

  JUMPOUT(0x1DFDC53BCLL);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::copyFrom<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>>(uint64_t *result, uint64_t *a2)
{
  result[1] = a2[1];
  v2 = *(result + 4);
  if (v2)
  {
    v3 = 0;
    v4 = *result;
    v5 = *a2;
    do
    {
      v6 = v4 + 32 * v3;
      v7 = (v5 + 32 * v3);
      v8 = *v7;
      *v6 = *v7;
      if ((v8 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *(v6 + 24) = 0;
        llvm::deallocate_buffer(0, 0);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::try_emplace<mlir::pdl_to_pdl_interp::Position *&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = HIDWORD(*a2);
  v8 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v7);
  LODWORD(v7) = -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)));
  v9 = v5 - 1;
  v10 = v7 & (v5 - 1);
  v11 = (*result + 16 * v10);
  v12 = *v11;
  if (*a2 != *v11)
  {
    v16 = 0;
    v17 = 1;
    while (v12 != -4096)
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v12 == -8192;
      }

      if (v18)
      {
        v16 = v11;
      }

      v19 = v10 + v17++;
      v10 = v19 & v9;
      v11 = (v6 + 16 * (v19 & v9));
      v12 = *v11;
      if (*a2 == *v11)
      {
        goto LABEL_3;
      }
    }

    if (v16)
    {
      v11 = v16;
    }

LABEL_5:
    v23 = v11;
    v14 = *(result + 8);
    if (4 * v14 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v14 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v14 + 1;
      if (*v11 == -4096)
      {
LABEL_9:
        v15 = *a3;
        *v11 = *a2;
        v11[1] = v15;
        v6 = *result;
        v5 = *(result + 16);
        v13 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v20 = result;
    v21 = a4;
    v22 = a3;
    llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::LookupBucketFor<mlir::func::FuncOp>(v20, a2, &v23);
    a3 = v22;
    result = v20;
    a4 = v21;
    v11 = v23;
    ++*(v20 + 8);
    if (*v11 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
LABEL_10:
  *a4 = v11;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v13;
  return result;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo(mlir::detail::StorageUniquerImpl ***this, mlir::pdl_to_pdl_interp::Position *a2)
{
  v7 = a2;
  v3 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(*this, 0, 0, &v7);
  v4 = *this;
  {
    v6 = v4;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo();
    v4 = v6;
  }

  mlir::StorageUniquer::getSingletonImpl(v4, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID(void)::id);
  return v3;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::EqualToQuestion,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::EqualToQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::EqualToQuestion *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::EqualToQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::EqualToQuestion *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::EqualToQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::EqualToQuestion *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
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

  *Slow = 20;
  *(Slow + 8) = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(uint64_t **this)
{
  v2 = *this;
  {
    v6 = v2;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull();
    v2 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v2, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::IsNotNullQuestion,void>::resolveTypeID(void)::id);
  v4 = *this;
  {
    v7 = v4;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull();
    v4 = v7;
  }

  mlir::StorageUniquer::getSingletonImpl(v4, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID(void)::id);
  return SingletonImpl;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getAttributeConstraint(mlir::detail::StorageUniquerImpl ***a1, uint64_t a2)
{
  v7 = a2;
  v3 = *a1;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getAttributeConstraint();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(*a1, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypePosition,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::TypePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 32;
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
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 8) = 0;
  *(Slow + 16) = 7;
  v6 = *v2;
  *(Slow + 24) = *v2;
  *Slow = &unk_1F5B052B8;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::TypePosition::~TypePosition(mlir::pdl_to_pdl_interp::TypePosition *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeAnswer,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
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

  *Slow = 22;
  *(Slow + 8) = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

uint64_t getTreePredicates(void **a1, uint64_t a2, uint64_t **a3, uint64_t a4, mlir::pdl_to_pdl_interp::OperationPosition *a5, uint64_t a6)
{
  v182 = *MEMORY[0x1E69E9840];
  v173 = a2;
  DefiningOp = mlir::Value::getDefiningOp(&v173);
  v167 = a1;
  if (*(a5 + 8))
  {
    IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a3);
    v13 = a1[1];
    v12 = a1[2];
    if (v13 >= v12)
    {
      v15 = *a1;
      v16 = v13 - *a1;
      v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3) + 1;
      if (v17 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_155;
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v15) >> 3);
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x555555555555555)
      {
        v19 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_156;
        }

        v20 = a4;
        v21 = IsNotNull;
        v22 = v11;
        v23 = operator new(24 * v19);
        v11 = v22;
        IsNotNull = v21;
        a4 = v20;
      }

      else
      {
        v23 = 0;
      }

      v24 = &v23[8 * (v16 >> 3)];
      v25 = &v23[24 * v19];
      *v24 = a5;
      v24[1] = IsNotNull;
      v24[2] = v11;
      v14 = v24 + 3;
      v26 = v24 - v16;
      memcpy(v24 - v16, v15, v16);
      a1 = v167;
      *v167 = v26;
      v167[1] = v14;
      v167[2] = v25;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v13 = a5;
      v13[1] = IsNotNull;
      v14 = v13 + 3;
      v13[2] = v11;
    }

    a1[1] = v14;
  }

  mlir::pdl::OperationOp::getOpName(&DefiningOp, &v178);
  if (v179 == 1)
  {
    OperationName = mlir::pdl_to_pdl_interp::PredicateBuilder::getOperationName(a3, v178.n128_i64[0], v178.n128_i64[1]);
    v30 = a1[1];
    v29 = a1[2];
    if (v30 >= v29)
    {
      v32 = *a1;
      v33 = v30 - *a1;
      v34 = 0xAAAAAAAAAAAAAAABLL * (v33 >> 3) + 1;
      if (v34 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_155;
      }

      v35 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v32) >> 3);
      if (2 * v35 > v34)
      {
        v34 = 2 * v35;
      }

      if (v35 >= 0x555555555555555)
      {
        v36 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        if (v36 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_156;
        }

        v37 = a4;
        v38 = OperationName;
        v39 = v28;
        v40 = operator new(24 * v36);
        v28 = v39;
        OperationName = v38;
        a4 = v37;
      }

      else
      {
        v40 = 0;
      }

      v41 = &v40[8 * (v33 >> 3)];
      v42 = &v40[24 * v36];
      *v41 = a5;
      v41[1] = OperationName;
      v41[2] = v28;
      v31 = v41 + 3;
      v43 = v41 - v33;
      memcpy(v41 - v33, v32, v33);
      a1 = v167;
      *v167 = v43;
      v167[1] = v31;
      v167[2] = v42;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      *v30 = a5;
      v30[1] = OperationName;
      v31 = v30 + 3;
      v30[2] = v28;
    }

    a1[1] = v31;
  }

  ODSOperandIndexAndLength = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&DefiningOp, 0);
  if ((*(DefiningOp + 46) & 0x80) != 0)
  {
    v45 = *(DefiningOp + 72);
  }

  else
  {
    v45 = 0;
  }

  v46 = ODSOperandIndexAndLength;
  v47 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v48 = v47 - ODSOperandIndexAndLength;
  v169 = v45 + 32 * ODSOperandIndexAndLength;
  mlir::ValueRange::ValueRange(v176.n128_u64, v169, v48);
  v177 = v176;
  mlir::ValueRange::getTypes(&v177, &v178);
  v49 = v178.n128_i64[1];
  v50 = v180;
  v174 = v178;
  v168 = a5;
  v161 = v47;
  v162 = v46;
  if (v178.n128_u64[1] == v180)
  {
    if (v47 != v46)
    {
      goto LABEL_61;
    }

    v51 = 0;
  }

  else
  {
    v51 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(&v174, v49) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        ++v51;
      }

      v49 = v174.n128_u64[1] + 1;
      v174.n128_u64[1] = v49;
    }

    while (v49 != v50);
    if (v48 != v51)
    {
      if (!v51)
      {
        goto LABEL_61;
      }

      OperandCountAtLeast = mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCountAtLeast(a3, v51);
      v54 = v167;
      v56 = v167[1];
      v55 = v167[2];
      if (v56 < v55)
      {
        goto LABEL_44;
      }

LABEL_47:
      v58 = *v54;
      v59 = v56 - *v54;
      v60 = 0xAAAAAAAAAAAAAAABLL * (v59 >> 3) + 1;
      if (v60 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_155;
      }

      v61 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v58) >> 3);
      if (2 * v61 > v60)
      {
        v60 = 2 * v61;
      }

      if (v61 >= 0x555555555555555)
      {
        v62 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v62 = v60;
      }

      if (v62)
      {
        if (v62 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_156;
        }

        v63 = a4;
        v64 = OperandCountAtLeast;
        v65 = v53;
        v66 = operator new(24 * v62);
        v53 = v65;
        OperandCountAtLeast = v64;
        a4 = v63;
      }

      else
      {
        v66 = 0;
      }

      v67 = &v66[8 * (v59 >> 3)];
      v68 = &v66[24 * v62];
      *v67 = a5;
      v67[1] = OperandCountAtLeast;
      v67[2] = v53;
      v57 = v67 + 3;
      v69 = v67 - v59;
      memcpy(v67 - v59, v58, v59);
      *v167 = v69;
      v167[1] = v57;
      v167[2] = v68;
      if (v58)
      {
        operator delete(v58);
      }

      v54 = v167;
      a5 = v168;
      goto LABEL_60;
    }
  }

  OperandCountAtLeast = mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCount(a3, v51);
  v54 = v167;
  v56 = v167[1];
  v55 = v167[2];
  if (v56 >= v55)
  {
    goto LABEL_47;
  }

LABEL_44:
  *v56 = a5;
  v56[1] = OperandCountAtLeast;
  v57 = v56 + 3;
  v56[2] = v53;
LABEL_60:
  v54[1] = v57;
LABEL_61:
  v70 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&DefiningOp, 2u);
  if ((*(DefiningOp + 46) & 0x80) != 0)
  {
    v71 = *(DefiningOp + 72);
  }

  else
  {
    v71 = 0;
  }

  v72 = (HIDWORD(v70) + v70) - v70;
  v160 = v71 + 32 * v70;
  mlir::ValueRange::ValueRange(v176.n128_u64, v160, v72);
  v177 = v176;
  mlir::ValueRange::getTypes(&v177, &v178);
  v73 = v178.n128_i64[1];
  v74 = v180;
  v174 = v178;
  *v165 = v72;
  v166 = a3;
  if (v178.n128_u64[1] == v180)
  {
    if (v72)
    {
      goto LABEL_102;
    }

    v75 = 0;
  }

  else
  {
    v76 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(&v174, v73) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        ++v76;
      }

      v73 = v174.n128_u64[1] + 1;
      v174.n128_u64[1] = v73;
    }

    while (v73 != v74);
    v75 = v72;
    if (v72 != v76)
    {
      if (!v76)
      {
        goto LABEL_102;
      }

      ResultCountAtLeast = mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCountAtLeast(a3, v76);
      v81 = v167[1];
      v83 = v167[2];
      if (v81 < v83)
      {
        *v81 = a5;
        v81[1] = ResultCountAtLeast;
        goto LABEL_76;
      }

      v85 = *v167;
      v86 = v81 - *v167;
      v95 = 0xAAAAAAAAAAAAAAABLL * (v86 >> 3) + 1;
      if (v95 <= 0xAAAAAAAAAAAAAAALL)
      {
        v96 = 0xAAAAAAAAAAAAAAABLL * ((v83 - v85) >> 3);
        if (2 * v96 > v95)
        {
          v95 = 2 * v96;
        }

        if (v96 >= 0x555555555555555)
        {
          v97 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v97 = v95;
        }

        if (v97)
        {
          if (v97 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_156;
          }

          v98 = a4;
          v99 = ResultCountAtLeast;
          v100 = v78;
          v101 = operator new(24 * v97);
          v78 = v100;
          ResultCountAtLeast = v99;
          a4 = v98;
        }

        else
        {
          v101 = 0;
        }

        v102 = &v101[8 * (v86 >> 3)];
        v93 = &v101[24 * v97];
        *v102 = a5;
        v102[1] = ResultCountAtLeast;
        v102[2] = v78;
        v84 = v102 + 3;
        v94 = v102 - v86;
LABEL_99:
        memcpy(v94, v85, v86);
        *v167 = v94;
        v167[1] = v84;
        v167[2] = v93;
        if (v85)
        {
          operator delete(v85);
        }

        goto LABEL_101;
      }

LABEL_155:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }
  }

  ResultCount = mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCount(a3, v75);
  v79 = ResultCount;
  v81 = v167[1];
  v80 = v167[2];
  if (v81 >= v80)
  {
    v85 = *v167;
    v86 = v81 - *v167;
    v87 = 0xAAAAAAAAAAAAAAABLL * (v86 >> 3) + 1;
    if (v87 <= 0xAAAAAAAAAAAAAAALL)
    {
      v88 = 0xAAAAAAAAAAAAAAABLL * ((v80 - v85) >> 3);
      if (2 * v88 > v87)
      {
        v87 = 2 * v88;
      }

      if (v88 >= 0x555555555555555)
      {
        v89 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v89 = v87;
      }

      if (!v89)
      {
        v91 = 0;
        goto LABEL_87;
      }

      if (v89 <= 0xAAAAAAAAAAAAAAALL)
      {
        v90 = v78;
        v91 = operator new(24 * v89);
        v78 = v90;
LABEL_87:
        v92 = &v91[8 * (v86 >> 3)];
        v93 = &v91[24 * v89];
        *v92 = v168;
        v92[1] = v79;
        v92[2] = v78;
        v84 = v92 + 3;
        v94 = v92 - v86;
        goto LABEL_99;
      }

LABEL_156:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    goto LABEL_155;
  }

  *v81 = v168;
  v81[1] = ResultCount;
LABEL_76:
  v84 = v81 + 3;
  v81[2] = v78;
LABEL_101:
  v167[1] = v84;
LABEL_102:
  AttributeValueNames = mlir::pdl::OperationOp::getAttributeValueNames(&DefiningOp);
  v104 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&DefiningOp, 1u);
  if ((*(DefiningOp + 46) & 0x80) != 0)
  {
    v105 = *(DefiningOp + 72);
  }

  else
  {
    v105 = 0;
  }

  v174.n128_u64[0] = AttributeValueNames;
  v174.n128_u64[1] = v105 + 32 * v104;
  v175 = (HIDWORD(v104) + v104) - v104;
  Value = mlir::ArrayAttr::getValue(&v174);
  v107 = v174.n128_u64[1];
  result = mlir::ArrayAttr::getValue(&v174);
  v110 = result + 8 * v109;
  if (v110 != Value && v175)
  {
    v111 = (v107 + 24);
    v112 = v175 - 1;
    v113 = Value + 8;
    do
    {
      v114 = *v111;
      v111 += 4;
      v171 = *(v113 - 8);
      AttrData = mlir::OpaqueAttr::getAttrData(&v171);
      v177.n128_u64[0] = v168;
      v117 = *v166;
      v116 = v166[1];
      v181 = 261;
      v178.n128_u64[0] = AttrData;
      v178.n128_u64[1] = v118;
      v176.n128_u64[0] = mlir::StringAttr::get(v116, &v178);
      v119 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(v117, 0, 0, &v177, &v176);
      result = getTreePredicates(v167, v114, v166, a4, v119);
      v121 = v112-- != 0;
      if (v113 == v110)
      {
        break;
      }

      v113 += 8;
    }

    while (v121);
  }

  if (v48 == 1 && (v122 = *(v169 + 24), *(*(*(v122 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id))
  {
    v130 = v168;
    v123 = v166;
    if (*(v168 + 8))
    {
      result = mlir::pdl_to_pdl_interp::OperationPosition::isOperandDefiningOp(v168);
      if (!result)
      {
        goto LABEL_127;
      }

      v130 = v168;
      v122 = *(v169 + 24);
    }

    v178.n128_u64[0] = 0;
    v174.n128_u64[0] = v130;
    v177.n128_u8[0] = 1;
    v131 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(*v166, 0, 0, &v174, &v178, &v177);
    result = getTreePredicates(v167, v122, v166, a4, v131);
  }

  else
  {
    v123 = v166;
    if (v161 != v162)
    {
      v124 = 0;
      v125 = 0;
      v126 = v169 + 24;
      do
      {
        v128 = *v126;
        v129 = *(*(*(*v126 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        v124 |= v129 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
        if ((a6 & 0x100000000) == 0 || a6 != v125)
        {
          if (v124)
          {
            v178.n128_u64[0] = v125 | 0x100000000;
            v174.n128_u64[0] = v168;
            v177.n128_u8[0] = v129 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
            v127 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(*v166, 0, 0, &v174, &v178, &v177);
          }

          else
          {
            v178.n128_u64[0] = v168;
            v174.n128_u32[0] = v125;
            v127 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(*v166, 0, 0, &v178, &v174);
          }

          result = getTreePredicates(v167, v128, v166, a4, v127);
        }

        ++v125;
        v126 += 32;
      }

      while (v48 != v125);
    }
  }

LABEL_127:
  v132 = v167;
  v133 = v168;
  v134 = *v165;
  if (*v165)
  {
    if (*v165 != 1 || (v135 = *(v160 + 24), *(*(*(v135 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id))
    {
      v136 = 0;
      v137 = 0;
      v138 = v160 + 24;
      v164 = a4;
      while (1)
      {
        v141 = *v138;
        v142 = *(*(*(*v138 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        v170 = v136 | (v142 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id);
        if (v136 & 1 | (v142 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id))
        {
          v178.n128_u64[0] = v137 | 0x100000000;
          v174.n128_u64[0] = v133;
          v177.n128_u8[0] = v142 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
          v143 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(*v123, 0, 0, &v174, &v178, &v177);
          v144 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(v123);
          v147 = v132[1];
          v146 = v132[2];
          if (v147 < v146)
          {
            goto LABEL_131;
          }
        }

        else
        {
          v178.n128_u64[0] = v133;
          v174.n128_u32[0] = v137;
          v143 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(*v123, 0, 0, &v178, &v174);
          v144 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(v123);
          v147 = v132[1];
          v146 = v132[2];
          if (v147 < v146)
          {
LABEL_131:
            *v147 = v143;
            v147[1] = v144;
            v139 = v147 + 3;
            v147[2] = v145;
            goto LABEL_132;
          }
        }

        v148 = *v132;
        v149 = v147 - *v132;
        v150 = 0xAAAAAAAAAAAAAAABLL * (v149 >> 3) + 1;
        if (v150 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_155;
        }

        v151 = 0xAAAAAAAAAAAAAAABLL * ((v146 - v148) >> 3);
        if (2 * v151 > v150)
        {
          v150 = 2 * v151;
        }

        if (v151 >= 0x555555555555555)
        {
          v152 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v152 = v150;
        }

        if (v152)
        {
          if (v152 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_156;
          }

          v153 = v144;
          v154 = v145;
          v155 = operator new(24 * v152);
          v145 = v154;
          v144 = v153;
          v132 = v167;
        }

        else
        {
          v155 = 0;
        }

        v156 = &v155[8 * (v149 >> 3)];
        v157 = &v155[24 * v152];
        *v156 = v143;
        v156[1] = v144;
        v156[2] = v145;
        v139 = v156 + 3;
        v158 = v156 - v149;
        memcpy(v156 - v149, v148, v149);
        *v132 = v158;
        v132[1] = v139;
        v132[2] = v157;
        if (v148)
        {
          operator delete(v148);
        }

        a4 = v164;
        v134 = *v165;
        v123 = v166;
        v133 = v168;
LABEL_132:
        v132[1] = v139;
        v178.n128_u64[0] = v143;
        v140 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(*v123, 0, 0, &v178);
        result = getTreePredicates(v132, v141, v123, a4, v140);
        ++v137;
        v138 += 32;
        v136 = v170;
        if (v134 == v137)
        {
          return result;
        }
      }
    }

    v178.n128_u64[0] = 0;
    v174.n128_u64[0] = v168;
    v177.n128_u8[0] = 1;
    v178.n128_u64[0] = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(*v123, 0, 0, &v174, &v178, &v177);
    v159 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(*v123, 0, 0, &v178);
    return getTreePredicates(v167, v135, v123, a4, v159);
  }

  return result;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getOperationName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  {
    v10 = v6;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getOperationName();
    v6 = v10;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v6, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameQuestion,void>::resolveTypeID(void)::id);
  v8 = *a1;
  mlir::OperationName::OperationName(&v11, a2, a3, *(a1 + 8));
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(v8, 0, 0, &v11);
  return SingletonImpl;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCountAtLeast(mlir::detail::StorageUniquerImpl ***this, int a2)
{
  v7 = a2;
  v3 = *this;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCountAtLeast();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(*this, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCount(mlir::detail::StorageUniquerImpl ***this, int a2)
{
  v7 = a2;
  v3 = *this;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCount();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(*this, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCount(mlir::detail::StorageUniquerImpl ***this, int a2)
{
  v7 = a2;
  v3 = *this;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCount();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(*this, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCountAtLeast(mlir::detail::StorageUniquerImpl ***this, int a2)
{
  v7 = a2;
  v3 = *this;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCountAtLeast();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(*this, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameAnswer,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperationNameAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameAnswer *)>,mlir::TypeID,mlir::OperationName &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationNameAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameAnswer *)>,mlir::TypeID,mlir::OperationName &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationNameAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameAnswer *)>,mlir::TypeID,mlir::OperationName &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
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

  *Slow = 24;
  *(Slow + 8) = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UnsignedAnswer,void>::resolveTypeID(void)::id, 37 * v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::UnsignedAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UnsignedAnswer *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::UnsignedAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UnsignedAnswer *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

_DWORD *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::UnsignedAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UnsignedAnswer *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, void *a2)
{
  v2 = *a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 4;
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

  *Slow = 27;
  Slow[2] = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  {
    v11 = a4;
    v12 = a1;
    v8 = a3;
    v9 = a5;
    v10 = a2;
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
    a2 = v10;
    a4 = v11;
    a3 = v8;
    a5 = v9;
    a1 = v12;
  }

  v16[0] = a2;
  v16[1] = a3;
  v5 = *a5;
  v15[0] = *a4;
  v15[1] = v5;
  v6 = 0xBF58476D1CE4E5B9 * ((v5 >> 4) ^ (v5 >> 9) | (((LODWORD(v15[0]) >> 4) ^ (LODWORD(v15[0]) >> 9)) << 32));
  v14 = v15;
  v13[0] = v15;
  v13[1] = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributePosition,void>::resolveTypeID(void)::id, (v6 >> 31) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::AttributePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  a2[10] += 40;
  v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 40;
  if (*a2)
  {
    v7 = v6 > a2[1];
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v12 = v4;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    v14 = v12;
    v5 = Slow;
    v8 = mlir::pdl_to_pdl_interp::AttributePosition::AttributePosition(Slow, v14);
    v9 = *(a1 + 8);
    v10 = *v9;
    if (!*v9)
    {
      return v5;
    }

    goto LABEL_6;
  }

  *a2 = v6;
  v8 = mlir::pdl_to_pdl_interp::AttributePosition::AttributePosition(v5, v4);
  v9 = *(a1 + 8);
  v10 = *v9;
  if (*v9)
  {
LABEL_6:
    v10(*(v9 + 8), v5, v8);
  }

  return v5;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, char *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  {
    v12 = a3;
    v13 = a6;
    v11 = a5;
    v14 = a2;
    v15 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>();
    a2 = v14;
    a4 = v15;
    a3 = v12;
    a6 = v13;
    a5 = v11;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandGroupPosition,void>::resolveTypeID(void)::id;
  v20[0] = a2;
  v20[1] = a3;
  v8 = *a5;
  v17 = *a4;
  v18 = v8;
  v19[0] = *a6;
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  v23 = 0;
  v24 = 0xFF51AFD7ED558CCDLL;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::OperationPosition *,std::optional<unsigned int>,BOOL>(v21, 0, v21, v22, &v17, &v18, v19);
  v16 = &v17;
  *&v21[0] = &v17;
  *(&v21[0] + 1) = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v7, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperandGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperandGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::OperationPosition *,std::optional<unsigned int>,BOOL>(char *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t a6, char *a7)
{
  v18 = a2;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v18, a3, a4, *a5);
  v19 = v18;
  if (*(a6 + 4) == 1)
  {
    LOBYTE(v20) = 1;
    *(&v20 + 1) = *a6;
    v12 = *(&v20 + 1) ^ 0xFF51AFD7ED558CCDLL;
    v13 = 0x9DDFEA08EB382D69 * (((8 * v20) | 5) ^ v12);
    v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  }

  else
  {
    v14 = 0xB2B24F688DC4164DLL;
  }

  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v19, v11, a4, v14);
  v20 = v19;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(a1, &v20, v15, a4, *a7);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v20, v16, a4);
}

char *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(char *a1, uint64_t *a2, _BYTE *__dst, unint64_t a4, char a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  v8 = a4 - __dst;
  memcpy(__dst, &__src, a4 - __dst);
  v9 = *a2;
  if (*a2)
  {
    result = a1;
    v11 = *(a1 + 9);
    v12 = *(a1 + 11);
    v13 = *(a1 + 1);
    v14 = *(a1 + 12);
    v15 = *(a1 + 13);
    v17 = *(a1 + 6);
    v16 = *(a1 + 7);
    v18 = *(a1 + 14);
    v19 = v18 ^ (0xB492B66FBE98F273 * __ROR8__(v11 + *(a1 + 8) + v12 + v13, 37));
    v20 = v12 - 0x4B6D499041670D8DLL * __ROR8__(v14 + v11 + v17, 42);
    v21 = 0xB492B66FBE98F273 * __ROR8__(v15 + *(a1 + 10), 33);
    v22 = *a1 - 0x4B6D499041670D8DLL * v14;
    v23 = v22 + v15;
    v25 = *(a1 + 2);
    v24 = *(a1 + 3);
    v26 = *(a1 + 5);
    v27 = v20 + v26;
    v28 = *(a1 + 4) + v18 + v21;
    v29 = v22 + v13 + v25;
    v30 = v26 + v17 + v28;
    *(a1 + 12) = __ROR8__(v23 + v24 + v19, 21) + v22 + __ROR8__(v29, 44);
    *(a1 + 13) = v30 + v16;
    *(a1 + 14) = __ROR8__(v28 + v16 + v25 + v27, 21) + v28 + __ROR8__(v30, 44);
    *(a1 + 10) = v19;
    *(a1 + 11) = v29 + v24;
    *(a1 + 8) = v21;
    *(a1 + 9) = v27;
    *a2 = v9 + 64;
    v31 = 1 - v8;
    v32 = &a1[1 - v8];
    if (v32 > a4)
    {
      return result;
    }

LABEL_7:
    memcpy(result, &__src + v8, v31);
    return v32;
  }

  result = a1;
  v33 = *(a1 + 15);
  v34 = __ROR8__(v33 ^ 0xB492B66FBE98F273, 49);
  v35 = v33 ^ (v33 >> 47);
  v36 = *(a1 + 1);
  v37 = v36 + v33 + v34;
  v38 = *(a1 + 6);
  v39 = *(a1 + 7);
  v40 = *(a1 + 5);
  v41 = v40 + v34 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v33 - 0x4B6D499041670D8DLL * v33, 42);
  v42 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
  v43 = 0x9DDFEA08EB382D69 * (v33 ^ (((0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))) ^ v33) >> 47) ^ (0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))));
  v44 = 0x9DDFEA08EB382D69 * (v43 ^ (v43 >> 47));
  v45 = 0xB492B66FBE98F273 * __ROR8__(v35 - 0x622015F714C7D297 * (v42 ^ (v42 >> 47)), 33);
  v46 = *a1 - 0x6D8ED9027DD26057 * v33;
  v48 = *(a1 + 2);
  v47 = *(a1 + 3);
  v49 = v46 + v36 + v48;
  v50 = v44 ^ (0xB492B66FBE98F273 * __ROR8__(v37, 37));
  v51 = __ROR8__(v49, 44) + v46 + __ROR8__(v46 + v35 + v47 + v50, 21);
  v52 = v45 + *(a1 + 4) + v44;
  *(a1 + 8) = v45;
  *(a1 + 9) = v41;
  *(a1 + 10) = v50;
  *(a1 + 11) = v49 + v47;
  *(a1 + 12) = v51;
  *(a1 + 13) = v40 + v38 + v52 + v39;
  *(a1 + 14) = __ROR8__(v40 + v38 + v52, 44) + v52 + __ROR8__(v41 + v48 + v39 + v52, 21);
  *a2 = 64;
  v31 = 1 - v8;
  v32 = &a1[1 - v8];
  if (v32 <= a4)
  {
    goto LABEL_7;
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperandGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 24) != **a1)
  {
    return 0;
  }

  v4 = *(a2 + 36);
  v5 = *(v2 + 12);
  if (v4 != v5 || v4 == 0)
  {
    if (v4 == v5)
    {
      return *(a2 + 40) == *(v2 + 16);
    }

    return 0;
  }

  if (*(a2 + 32) != *(v2 + 2))
  {
    return 0;
  }

  return *(a2 + 40) == *(v2 + 16);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperandGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  a2[10] += 48;
  v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 48;
  if (*a2)
  {
    v7 = v6 > a2[1];
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v12 = v4;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 48, 48, 3);
    v14 = v12;
    v5 = Slow;
    v8 = mlir::pdl_to_pdl_interp::OperandGroupPosition::OperandGroupPosition(Slow, v14);
    v9 = *(a1 + 8);
    v10 = *v9;
    if (!*v9)
    {
      return v5;
    }

    goto LABEL_6;
  }

  *a2 = v6;
  v8 = mlir::pdl_to_pdl_interp::OperandGroupPosition::OperandGroupPosition(v5, v4);
  v9 = *(a1 + 8);
  v10 = *v9;
  if (*v9)
  {
LABEL_6:
    v10(*(v9 + 8), v5, v8);
  }

  return v5;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  {
    v11 = a4;
    v12 = a1;
    v8 = a3;
    v9 = a5;
    v10 = a2;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>();
    a2 = v10;
    a4 = v11;
    a3 = v8;
    a5 = v9;
    a1 = v12;
  }

  v17[0] = a2;
  v17[1] = a3;
  v5 = *a5;
  v15 = *a4;
  v16 = v5;
  v6 = 0xBF58476D1CE4E5B9 * ((37 * v5) | (((v15 >> 4) ^ (v15 >> 9)) << 32));
  v14 = &v15;
  v13[0] = &v15;
  v13[1] = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandPosition,void>::resolveTypeID(void)::id, (v6 >> 31) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperandPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperandPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperandPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  a2[10] += 40;
  v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 40;
  if (*a2)
  {
    v7 = v6 > a2[1];
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v12 = v4;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    v14 = v12;
    v5 = Slow;
    v8 = mlir::pdl_to_pdl_interp::OperandPosition::OperandPosition(Slow, v14);
    v9 = *(a1 + 8);
    v10 = *v9;
    if (!*v9)
    {
      return v5;
    }

    goto LABEL_6;
  }

  *a2 = v6;
  v8 = mlir::pdl_to_pdl_interp::OperandPosition::OperandPosition(v5, v4);
  v9 = *(a1 + 8);
  v10 = *v9;
  if (*v9)
  {
LABEL_6:
    v10(*(v9 + 8), v5, v8);
  }

  return v5;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, char *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  {
    v12 = a3;
    v13 = a6;
    v11 = a5;
    v14 = a2;
    v15 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>();
    a2 = v14;
    a4 = v15;
    a3 = v12;
    a6 = v13;
    a5 = v11;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultGroupPosition,void>::resolveTypeID(void)::id;
  v20[0] = a2;
  v20[1] = a3;
  v8 = *a5;
  v17 = *a4;
  v18 = v8;
  v19[0] = *a6;
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  v23 = 0;
  v24 = 0xFF51AFD7ED558CCDLL;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::OperationPosition *,std::optional<unsigned int>,BOOL>(v21, 0, v21, v22, &v17, &v18, v19);
  v16 = &v17;
  *&v21[0] = &v17;
  *(&v21[0] + 1) = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v7, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ResultGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ResultGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ResultGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 24) != **a1)
  {
    return 0;
  }

  v4 = *(a2 + 36);
  v5 = *(v2 + 12);
  if (v4 != v5 || v4 == 0)
  {
    if (v4 == v5)
    {
      return *(a2 + 40) == *(v2 + 16);
    }

    return 0;
  }

  if (*(a2 + 32) != *(v2 + 2))
  {
    return 0;
  }

  return *(a2 + 40) == *(v2 + 16);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ResultGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void *a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 48;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 48;
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
    v10 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 48, 48, 3);
    a1 = v10;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 6;
  *Slow = &unk_1F5B05358;
  *(Slow + 8) = 0;
  v6 = *v2;
  *(Slow + 40) = *(v2 + 2);
  *(Slow + 24) = v6;
  v7 = *v2;
  *Slow = &unk_1F5B05308;
  *(Slow + 8) = v7;
  v8 = a1[1];
  if (*v8)
  {
    (*v8)(*(v8 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::ResultGroupPosition::~ResultGroupPosition(mlir::pdl_to_pdl_interp::ResultGroupPosition *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::Position,std::tuple<mlir::pdl_to_pdl_interp::OperationPosition *,std::optional<unsigned int>,BOOL>,(mlir::pdl_to_pdl_interp::Predicates::Kind)6>::~PredicateBase(uint64_t a1, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, a2);

  operator delete(v2);
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  {
    v11 = a4;
    v12 = a1;
    v8 = a3;
    v9 = a5;
    v10 = a2;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>();
    a2 = v10;
    a4 = v11;
    a3 = v8;
    a5 = v9;
    a1 = v12;
  }

  v17[0] = a2;
  v17[1] = a3;
  v5 = *a5;
  v15 = *a4;
  v16 = v5;
  v6 = 0xBF58476D1CE4E5B9 * ((37 * v5) | (((v15 >> 4) ^ (v15 >> 9)) << 32));
  v14 = &v15;
  v13[0] = &v15;
  v13[1] = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultPosition,void>::resolveTypeID(void)::id, (v6 >> 31) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ResultPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ResultPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ResultPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
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
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 5;
  *Slow = &unk_1F5B053C8;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  v6 = *v2;
  *Slow = &unk_1F5B05378;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::ResultPosition::~ResultPosition(mlir::pdl_to_pdl_interp::ResultPosition *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::Position,std::pair<mlir::pdl_to_pdl_interp::OperationPosition *,unsigned int>,(mlir::pdl_to_pdl_interp::Predicates::Kind)5>::~PredicateBase(uint64_t a1, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, a2);

  operator delete(v2);
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getTypeConstraint(mlir::detail::StorageUniquerImpl ***a1, uint64_t a2)
{
  v7 = a2;
  v3 = *a1;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getTypeConstraint();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(*a1, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeAnswer,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::TypeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
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

  *Slow = 26;
  *(Slow + 8) = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::OperandOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_0 &>(_BYTE *result, uint64_t a2)
{
  if ((result[8] & 1) == 0 && *result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::OperandOp,void>::id)
  {
    v3 = result;
    v31 = *result;
    v4 = *a2;
    v5 = *(a2 + 8);
    IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(*(a2 + 16));
    v10 = *(v5 + 8);
    v9 = *(v5 + 16);
    if (v10 >= v9)
    {
      v12 = *v5;
      v13 = v10 - *v5;
      v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3) + 1;
      if (v14 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (v16 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v17 = IsNotNull;
        v18 = v8;
        v19 = operator new(24 * v16);
        v8 = v18;
        IsNotNull = v17;
      }

      else
      {
        v19 = 0;
      }

      v20 = &v19[8 * (v13 >> 3)];
      v21 = &v19[24 * v16];
      *v20 = *v4;
      *(v20 + 1) = IsNotNull;
      *(v20 + 2) = v8;
      v11 = v20 + 24;
      v22 = &v20[-v13];
      memcpy(&v20[-v13], v12, v13);
      *v5 = v22;
      *(v5 + 8) = v11;
      *(v5 + 16) = v21;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v10 = *v4;
      v10[1] = IsNotNull;
      v10[2] = v8;
      v11 = v10 + 3;
    }

    *(v5 + 8) = v11;
    ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v31, 0);
    if ((*(v31 + 46) & 0x80) != 0)
    {
      v24 = *(v31 + 72);
    }

    else
    {
      v24 = 0;
    }

    result = v3;
    v25 = a2;
    if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength != ODSOperandIndexAndLength)
    {
      v26 = *(v24 + 32 * ODSOperandIndexAndLength + 24);
      if (v26)
      {
        v27 = *(a2 + 16);
        v28 = *(a2 + 24);
        v29 = *(a2 + 8);
        v32 = **v25;
        v30 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(*v27, 0, 0, &v32);
        getTreePredicates(v29, v26, v27, v28, v30);
        result = v3;
      }
    }

    result[8] = 1;
  }

  return result;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::OperandsOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_0 &>(_BYTE *result, void *a2)
{
  if ((result[8] & 1) == 0 && *result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id)
  {
    v3 = result;
    v23 = *result;
    v4 = *a2;
    if (*(**a2 + 36))
    {
      v5 = a2[1];
      v6 = a2;
      IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a2[2]);
      v10 = *(v5 + 8);
      v9 = *(v5 + 16);
      if (v10 >= v9)
      {
        v12 = *v5;
        v13 = v10 - *v5;
        v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3) + 1;
        if (v14 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          if (v16 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v18 = IsNotNull;
          v19 = v8;
          v17 = operator new(24 * v16);
          v8 = v19;
          IsNotNull = v18;
        }

        else
        {
          v17 = 0;
        }

        v20 = &v17[8 * (v13 >> 3)];
        v21 = &v17[24 * v16];
        *v20 = *v4;
        *(v20 + 1) = IsNotNull;
        *(v20 + 2) = v8;
        v11 = v20 + 24;
        v22 = &v20[-v13];
        memcpy(&v20[-v13], v12, v13);
        *v5 = v22;
        *(v5 + 8) = v11;
        *(v5 + 16) = v21;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = *v4;
        v10[1] = IsNotNull;
        v10[2] = v8;
        v11 = v10 + 3;
      }

      a2 = v6;
      *(v5 + 8) = v11;
    }

    llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::OperandsOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_0 &>(&v23, v3 + 8, a2);
    return v3;
  }

  return result;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::ResultOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_1 &>(_BYTE *result, uint64_t *a2)
{
  if ((result[8] & 1) == 0 && *result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id)
  {
    v61 = result;
    v62 = *result;
    Index = mlir::pdl::ResultOp::getIndex(&v62);
    v6 = *a2;
    v5 = a2[1];
    IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a2[2]);
    v10 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v10 >= v9)
    {
      v12 = *v6;
      v13 = v10 - *v6;
      v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3) + 1;
      if (v14 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_51;
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (v16 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_52;
        }

        v17 = IsNotNull;
        v18 = v8;
        v19 = operator new(24 * v16);
        v8 = v18;
        IsNotNull = v17;
      }

      else
      {
        v19 = 0;
      }

      v20 = &v19[8 * (v13 >> 3)];
      v21 = &v19[24 * v16];
      *v20 = *v5;
      *(v20 + 1) = IsNotNull;
      *(v20 + 2) = v8;
      v11 = v20 + 24;
      v22 = &v20[-v13];
      memcpy(&v20[-v13], v12, v13);
      *v6 = v22;
      *(v6 + 8) = v11;
      *(v6 + 16) = v21;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v10 = *v5;
      v10[1] = IsNotNull;
      v10[2] = v8;
      v11 = v10 + 3;
    }

    *(v6 + 8) = v11;
    v23 = *a2[2];
    v64 = *a2[1];
    v63 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v64) + 1;
    v24 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(v23, 0, 0, &v64, &v63);
    v25 = *a2;
    v26 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a2[2]);
    v29 = *(v25 + 8);
    v28 = *(v25 + 16);
    if (v29 >= v28)
    {
      v31 = *v25;
      v32 = v29 - *v25;
      v33 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 3) + 1;
      if (v33 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_51;
      }

      v34 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v31) >> 3);
      if (2 * v34 > v33)
      {
        v33 = 2 * v34;
      }

      if (v34 >= 0x555555555555555)
      {
        v35 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v35 = v33;
      }

      if (v35)
      {
        if (v35 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_52;
        }

        v36 = v26;
        v37 = v27;
        v38 = operator new(24 * v35);
        v27 = v37;
        v26 = v36;
      }

      else
      {
        v38 = 0;
      }

      v39 = &v38[8 * (v32 >> 3)];
      v40 = &v38[24 * v35];
      *v39 = v24;
      v39[1] = v26;
      v39[2] = v27;
      v30 = v39 + 3;
      v41 = v39 - v32;
      memcpy(v39 - v32, v31, v32);
      *v25 = v41;
      *(v25 + 8) = v30;
      *(v25 + 16) = v40;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      *v29 = v24;
      v29[1] = v26;
      v30 = v29 + 3;
      v29[2] = v27;
    }

    *(v25 + 8) = v30;
    v42 = a2[2];
    v64 = v24;
    v63 = Index;
    v43 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(*v42, 0, 0, &v64, &v63);
    v44 = *a2;
    EqualTo = mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo(a2[2], *a2[1]);
    v48 = *(v44 + 8);
    v47 = *(v44 + 16);
    if (v48 < v47)
    {
      *v48 = v43;
      v48[1] = EqualTo;
      v49 = v48 + 3;
      v48[2] = v46;
LABEL_49:
      *(v44 + 8) = v49;
      getTreePredicates(*a2, *(*(v62 + 72) + 24), a2[2], a2[4], v24);
      result = v61;
      v61[8] = 1;
      return result;
    }

    v50 = *v44;
    v51 = v48 - *v44;
    v52 = 0xAAAAAAAAAAAAAAABLL * (v51 >> 3) + 1;
    if (v52 <= 0xAAAAAAAAAAAAAAALL)
    {
      v53 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v50) >> 3);
      if (2 * v53 > v52)
      {
        v52 = 2 * v53;
      }

      if (v53 >= 0x555555555555555)
      {
        v54 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v54 = v52;
      }

      if (!v54)
      {
        v57 = 0;
LABEL_47:
        v58 = &v57[8 * (v51 >> 3)];
        v59 = &v57[24 * v54];
        *v58 = v43;
        v58[1] = EqualTo;
        v58[2] = v46;
        v49 = v58 + 3;
        v60 = v58 - v51;
        memcpy(v58 - v51, v50, v51);
        *v44 = v60;
        *(v44 + 8) = v49;
        *(v44 + 16) = v59;
        if (v50)
        {
          operator delete(v50);
        }

        goto LABEL_49;
      }

      if (v54 <= 0xAAAAAAAAAAAAAAALL)
      {
        v55 = EqualTo;
        v56 = v46;
        v57 = operator new(24 * v54);
        v46 = v56;
        EqualTo = v55;
        goto LABEL_47;
      }

LABEL_52:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

LABEL_51:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::ResultsOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_1 &>(_BYTE *result, uint64_t *a2)
{
  if ((result[8] & 1) == 0 && *result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id)
  {
    v62 = result;
    v63 = *result;
    Index = mlir::pdl::ResultsOp::getIndex(&v63);
    if ((Index & 0x100000000) != 0)
    {
      v6 = *a2;
      v5 = a2[1];
      IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a2[2]);
      v10 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (v10 >= v9)
      {
        v12 = *v6;
        v13 = v10 - *v6;
        v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3) + 1;
        if (v14 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_53;
        }

        v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          if (v16 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_54;
          }

          v17 = IsNotNull;
          v18 = v8;
          v19 = operator new(24 * v16);
          v8 = v18;
          IsNotNull = v17;
        }

        else
        {
          v19 = 0;
        }

        v20 = &v19[8 * (v13 >> 3)];
        v21 = &v19[24 * v16];
        *v20 = *v5;
        *(v20 + 1) = IsNotNull;
        *(v20 + 2) = v8;
        v11 = v20 + 24;
        v22 = &v20[-v13];
        memcpy(&v20[-v13], v12, v13);
        *v6 = v22;
        *(v6 + 8) = v11;
        *(v6 + 16) = v21;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = *v5;
        v10[1] = IsNotNull;
        v10[2] = v8;
        v11 = v10 + 3;
      }

      *(v6 + 8) = v11;
    }

    v23 = *a2[2];
    v66 = *a2[1];
    LODWORD(v65) = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v66) + 1;
    v24 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(v23, 0, 0, &v66, &v65);
    v25 = *a2;
    v26 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a2[2]);
    v29 = *(v25 + 8);
    v28 = *(v25 + 16);
    if (v29 >= v28)
    {
      v31 = *v25;
      v32 = v29 - *v25;
      v33 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 3) + 1;
      if (v33 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_53;
      }

      v34 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v31) >> 3);
      if (2 * v34 > v33)
      {
        v33 = 2 * v34;
      }

      if (v34 >= 0x555555555555555)
      {
        v35 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v35 = v33;
      }

      if (v35)
      {
        if (v35 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_54;
        }

        v36 = v26;
        v37 = v27;
        v38 = operator new(24 * v35);
        v27 = v37;
        v26 = v36;
      }

      else
      {
        v38 = 0;
      }

      v39 = &v38[8 * (v32 >> 3)];
      v40 = &v38[24 * v35];
      *v39 = v24;
      v39[1] = v26;
      v39[2] = v27;
      v30 = v39 + 3;
      v41 = v39 - v32;
      memcpy(v39 - v32, v31, v32);
      *v25 = v41;
      *(v25 + 8) = v30;
      *(v25 + 16) = v40;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      *v29 = v24;
      v29[1] = v26;
      v30 = v29 + 3;
      v29[2] = v27;
    }

    *(v25 + 8) = v30;
    v42 = a2[2];
    v43 = *a2[3];
    v65 = v24;
    v66 = Index & 0xFFFFFFFFFFLL;
    v64 = v43;
    v44 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(*v42, 0, 0, &v65, &v66, &v64);
    v45 = *a2;
    EqualTo = mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo(a2[2], *a2[1]);
    v49 = *(v45 + 8);
    v48 = *(v45 + 16);
    if (v49 < v48)
    {
      *v49 = v44;
      v49[1] = EqualTo;
      v50 = v49 + 3;
      v49[2] = v47;
LABEL_51:
      *(v45 + 8) = v50;
      getTreePredicates(*a2, *(*(v63 + 72) + 24), a2[2], a2[4], v24);
      result = v62;
      v62[8] = 1;
      return result;
    }

    v51 = *v45;
    v52 = v49 - *v45;
    v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3) + 1;
    if (v53 <= 0xAAAAAAAAAAAAAAALL)
    {
      v54 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v51) >> 3);
      if (2 * v54 > v53)
      {
        v53 = 2 * v54;
      }

      if (v54 >= 0x555555555555555)
      {
        v55 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v55 = v53;
      }

      if (!v55)
      {
        v58 = 0;
LABEL_49:
        v59 = &v58[8 * (v52 >> 3)];
        v60 = &v58[24 * v55];
        *v59 = v44;
        v59[1] = EqualTo;
        v59[2] = v47;
        v50 = v59 + 3;
        v61 = v59 - v52;
        memcpy(v59 - v52, v51, v52);
        *v45 = v61;
        *(v45 + 8) = v50;
        *(v45 + 16) = v60;
        if (v51)
        {
          operator delete(v51);
        }

        goto LABEL_51;
      }

      if (v55 <= 0xAAAAAAAAAAAAAAALL)
      {
        v56 = EqualTo;
        v57 = v47;
        v58 = operator new(24 * v55);
        v47 = v57;
        EqualTo = v56;
        goto LABEL_49;
      }

LABEL_54:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

LABEL_53:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v18[2] = *MEMORY[0x1E69E9840];
  {
    v12 = a4;
    v13 = a1;
    v9 = a3;
    v10 = a5;
    v11 = a2;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>();
    a2 = v11;
    a4 = v12;
    a3 = v9;
    a5 = v10;
    a1 = v13;
  }

  v17[0] = a2;
  v17[1] = a3;
  v5 = *a5;
  v15 = *a4;
  v16 = v5;
  v6 = __ROR8__(__PAIR64__(v5, HIDWORD(v15)) + 12, 12);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v15 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v15 ^ 0xFF51AFD7ED558CCDLL)));
  v14 = &v15;
  v18[0] = &v15;
  v18[1] = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationPosition,void>::resolveTypeID(void)::id, (-348639895 * ((v7 >> 47) ^ v7)) ^ HIDWORD(v15), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
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
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 0;
  *Slow = &unk_1F5B05048;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  v6 = *v2;
  *Slow = &unk_1F5B04FF8;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::grow(uint64_t a1, int a2)
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
  *a1 = result;
  if (v4)
  {
    v10 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
      v15 = &result[4 * v14];
      v16 = result + 4;
      v17 = v14;
      do
      {
        *(v16 - 4) = -4096;
        *v16 = -4096;
        v16 += 8;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[4 * v11];
    do
    {
      *v15 = -4096;
      v15 += 4;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  *(result + 8) = 0;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = (v4 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = v6 + 1;
      v8 = (v6 + 1) & 0xFFFFFFFFFFFFFFELL;
      v9 = &v5[4 * v8];
      v10 = v5 + 4;
      v11 = v8;
      do
      {
        *(v10 - 4) = -4096;
        *v10 = -4096;
        v10 += 8;
        v11 -= 2;
      }

      while (v11);
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = *result;
    }

    v12 = &v5[4 * v4];
    do
    {
      *v9 = -4096;
      v9 += 4;
    }

    while (v9 != v12);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v16 = *v3;
      if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = 0x9DDFEA08EB382D69 * ((8 * *v3 - 0xAE502812AA7333) ^ HIDWORD(*v3));
        v18 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v17 >> 47) ^ v17);
        LODWORD(v17) = -348639895 * ((v18 >> 47) ^ v18);
        v19 = *(result + 16) - 1;
        v20 = v19 & v17;
        v13 = *result + 32 * v20;
        v21 = *v13;
        if (v16 != *v13)
        {
          v22 = 0;
          v23 = 1;
          while (v21 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v21 == -8192;
            }

            if (v24)
            {
              v22 = v13;
            }

            v25 = v20 + v23++;
            v20 = v25 & v19;
            v13 = *result + 32 * v20;
            v21 = *v13;
            if (v16 == *v13)
            {
              goto LABEL_14;
            }
          }

          if (v22)
          {
            v13 = v22;
          }
        }

LABEL_14:
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *v13 = v16;
        *(v13 + 24) = 0;
        *(v13 + 8) = v3[1];
        v3[1] = 0;
        *(v13 + 16) = *(v3 + 4);
        *(v3 + 4) = 0;
        v14 = *(v13 + 20);
        *(v13 + 20) = *(v3 + 5);
        *(v3 + 5) = v14;
        v15 = *(v13 + 24);
        *(v13 + 24) = *(v3 + 6);
        *(v3 + 6) = v15;
        ++*(result + 8);
        llvm::deallocate_buffer(0, (24 * v15));
      }

      v3 += 4;
    }

    while (v3 != a3);
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::UsersPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UsersPosition,mlir::pdl_to_pdl_interp::Position *&,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UsersPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
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
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 10;
  *Slow = &unk_1F5B05438;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  v6 = *v2;
  *Slow = &unk_1F5B053E8;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::UsersPosition::~UsersPosition(mlir::pdl_to_pdl_interp::UsersPosition *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::UsersPosition,mlir::pdl_to_pdl_interp::Position,std::pair<mlir::pdl_to_pdl_interp::Position*,BOOL>,(mlir::pdl_to_pdl_interp::Predicates::Kind)10>::~PredicateBase(uint64_t a1, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, a2);

  operator delete(v2);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ForEachPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ForEachPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ForEachPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
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
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 11;
  *Slow = &unk_1F5B054A8;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  v6 = *v2;
  *Slow = &unk_1F5B05458;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::ForEachPosition::~ForEachPosition(mlir::pdl_to_pdl_interp::ForEachPosition *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::ForEachPosition,mlir::pdl_to_pdl_interp::Position,std::pair<mlir::pdl_to_pdl_interp::Position*,unsigned int>,(mlir::pdl_to_pdl_interp::Predicates::Kind)11>::~PredicateBase(uint64_t a1, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, a2);

  operator delete(v2);
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 32;
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
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 8) = 0;
  *(Slow + 16) = 8;
  *(Slow + 24) = *v2;
  *Slow = &unk_1F5B054C8;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::AttributeLiteralPosition::~AttributeLiteralPosition(mlir::pdl_to_pdl_interp::AttributeLiteralPosition *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getConstraint(mlir::detail::StorageUniquerImpl ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = *a1;
  *&v14 = a2;
  *(&v14 + 1) = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v10 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(v9, 0, 0, &v14);
  v11 = *a1;
  {
    v13 = v11;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo();
    v11 = v13;
  }

  mlir::StorageUniquer::getSingletonImpl(v11, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID(void)::id);
  return v10;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  {
    v10 = a4;
    v11 = a2;
    v9 = a3;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>();
    a4 = v10;
    a2 = v11;
    a3 = v9;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ConstraintQuestion,void>::resolveTypeID(void)::id;
  v17[0] = a2;
  v17[1] = a3;
  v6 = a4[1];
  v13 = *a4;
  v14 = v6;
  v15 = a4[2];
  *v16 = *(a4 + 6);
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v20 = 0;
  v21 = 0xFF51AFD7ED558CCDLL;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>(v18, 0, v18, v19, &v13, &v14, &v15, v16);
  v12 = &v13;
  *&v18[0] = &v13;
  *(&v18[0] + 1) = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v5, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintQuestion *)>,mlir::TypeID,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintQuestion *)>,mlir::TypeID,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>(char *a1, unint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v22 = a2;
  v14 = llvm::hash_value(*a5, *(a5 + 8));
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v22, a3, a4, v14);
  v23 = v22;
  v16 = llvm::hashing::detail::hash_combine_range_impl<char const>(*a6, *a6 + 8 * *(a6 + 8));
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v23, v15, a4, v16);
  v24 = v23;
  v18 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(*a7, (*a7 + 8 * *(a7 + 8)));
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v24, v17, a4, v18);
  v25 = v24;
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(a1, &v25, v19, a4, *a8);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v25, v20, a4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintQuestion *)>,mlir::TypeID,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 == *(*a1 + 8) && (!v3 || !memcmp(*(a2 + 8), *v2, v3)))
  {
    v5 = *(a2 + 32);
    if (v5 == *(v2 + 24) && !memcmp(*(a2 + 24), *(v2 + 16), 8 * v5))
    {
      v6 = *(a2 + 48);
      if (v6 == *(v2 + 40))
      {
        if (!v6)
        {
          return *(a2 + 56) == *(v2 + 48);
        }

        v7 = *(a2 + 40);
        v8 = *(v2 + 32);
        v9 = 8 * v6;
        while (*v7 == *v8)
        {
          ++v7;
          ++v8;
          v9 -= 8;
          if (!v9)
          {
            return *(a2 + 56) == *(v2 + 48);
          }
        }
      }
    }
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintQuestion *)>,mlir::TypeID,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v10 = *(*a1 + 6);
  v9[1] = v4;
  v9[2] = v5;
  v9[0] = v3;
  v6 = mlir::pdl_to_pdl_interp::ConstraintQuestion::construct(a2, v9);
  v7 = a1[1];
  if (*v7)
  {
    (*v7)(*(v7 + 1), v6);
  }

  return v6;
}

unint64_t mlir::pdl_to_pdl_interp::ConstraintQuestion::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    v4 = 0;
    v10 = a2[3];
    v11 = *a1;
    if (v10)
    {
      goto LABEL_26;
    }

    goto LABEL_11;
  }

  v3 = *a2;
  a1[10] += v2 + 1;
  v4 = *a1;
  v5 = v2 + 1 + *a1;
  if (*a1)
  {
    v6 = v5 > a1[1];
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    *a1 = v5;
    if (v2 >= 8)
    {
      goto LABEL_7;
    }

LABEL_23:
    v7 = v4;
    v8 = v3;
    goto LABEL_24;
  }

  v23 = a1;
  v24 = a2;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v2 + 1, v2 + 1, 0);
  a2 = v24;
  v4 = Slow;
  a1 = v23;
  if (v2 < 8)
  {
    goto LABEL_23;
  }

LABEL_7:
  v7 = v4;
  v8 = v3;
  if ((v4 - v3) < 0x20)
  {
    goto LABEL_24;
  }

  if (v2 < 0x20)
  {
    v9 = 0;
LABEL_17:
    v7 = (v4 + (v2 & 0xFFFFFFFFFFFFFFF8));
    v8 = (v3 + (v2 & 0xFFFFFFFFFFFFFFF8));
    v19 = (v3 + v9);
    v20 = (v4 + v9);
    v21 = v9 - (v2 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v22 = *v19++;
      *v20++ = v22;
      v21 += 8;
    }

    while (v21);
    if (v2 == (v2 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_24:
      v26 = *v8++;
      *v7++ = v26;
    }

    while (v8 != (v3 + v2));
    goto LABEL_25;
  }

  v9 = v2 & 0xFFFFFFFFFFFFFFE0;
  v15 = (v3 + 16);
  v16 = (v4 + 16);
  v17 = v2 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v18 = *v15;
    *(v16 - 1) = *(v15 - 1);
    *v16 = v18;
    v15 += 2;
    v16 += 2;
    v17 -= 32;
  }

  while (v17);
  if (v2 != v9)
  {
    if ((v2 & 0x18) == 0)
    {
      v8 = (v3 + v9);
      v7 = (v4 + v9);
      goto LABEL_24;
    }

    goto LABEL_17;
  }

LABEL_25:
  *(v4 + v2) = 0;
  v10 = a2[3];
  v11 = *a1;
  if (v10)
  {
LABEL_26:
    v27 = a2[2];
    v28 = 8 * v10;
    a1[10] += 8 * v10;
    v12 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = v12 + 8 * v10;
    if (v11)
    {
      v30 = v29 > a1[1];
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      v40 = a1;
      v41 = a2;
      v42 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v10, 8 * v10, 3);
      a2 = v41;
      v12 = v42;
      a1 = v40;
      v31 = v28 - 8;
      if ((v28 - 8) >= 0x18)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *a1 = v29;
      v31 = v28 - 8;
      if ((v28 - 8) >= 0x18)
      {
LABEL_31:
        v32 = v12;
        v33 = v27;
        if (v12 - v27 >= 0x20)
        {
          v34 = (v31 >> 3) + 1;
          v35 = 8 * (v34 & 0x3FFFFFFFFFFFFFFCLL);
          v32 = (v12 + v35);
          v33 = (v27 + v35);
          v36 = (v27 + 16);
          v37 = (v12 + 16);
          v38 = v34 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v39 = *v36;
            *(v37 - 1) = *(v36 - 1);
            *v37 = v39;
            v36 += 2;
            v37 += 2;
            v38 -= 4;
          }

          while (v38);
          if (v34 == (v34 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_39:
            v11 = *a1;
            v13 = a2[5];
            if (v13)
            {
              goto LABEL_40;
            }

LABEL_12:
            v14 = 0;
            goto LABEL_52;
          }
        }

        do
        {
LABEL_38:
          v43 = *v33++;
          *v32++ = v43;
        }

        while (v33 != (v27 + 8 * v10));
        goto LABEL_39;
      }
    }

    v32 = v12;
    v33 = v27;
    goto LABEL_38;
  }

LABEL_11:
  v12 = 0;
  v13 = a2[5];
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_40:
  v44 = a2[4];
  v45 = 8 * v13;
  a1[10] += 8 * v13;
  if (v11 && (v14 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8, v14 + v45 <= a1[1]))
  {
    *a1 = v14 + v45;
    v46 = v45 - 8;
    if ((v45 - 8) >= 0x18)
    {
LABEL_43:
      v47 = v14;
      v48 = v44;
      if (v14 - v44 >= 0x20)
      {
        v49 = (v46 >> 3) + 1;
        v50 = 8 * (v49 & 0x3FFFFFFFFFFFFFFCLL);
        v47 = (v14 + v50);
        v48 = (v44 + v50);
        v51 = (v44 + 16);
        v52 = (v14 + 16);
        v53 = v49 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v54 = *v51;
          *(v52 - 1) = *(v51 - 1);
          *v52 = v54;
          v51 += 2;
          v52 += 2;
          v53 -= 4;
        }

        while (v53);
        if (v49 == (v49 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_51;
        }
      }

      goto LABEL_50;
    }
  }

  else
  {
    v55 = a1;
    v56 = a2;
    v57 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v13, 8 * v13, 3);
    a2 = v56;
    v14 = v57;
    a1 = v55;
    v46 = v45 - 8;
    if ((v45 - 8) >= 0x18)
    {
      goto LABEL_43;
    }
  }

  v47 = v14;
  v48 = v44;
  do
  {
LABEL_50:
    v58 = *v48++;
    *v47++ = v58;
  }

  while (v48 != (v44 + 8 * v13));
LABEL_51:
  v11 = *a1;
LABEL_52:
  v59 = *(a2 + 48);
  a1[10] += 64;
  v60 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = v60 + 64;
  if (v11)
  {
    v62 = v61 > a1[1];
  }

  else
  {
    v62 = 1;
  }

  if (v62)
  {
    v60 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 64, 64, 3);
  }

  else
  {
    *a1 = v61;
  }

  *v60 = 21;
  *(v60 + 8) = v4;
  *(v60 + 16) = v2;
  *(v60 + 24) = v12;
  *(v60 + 32) = v10;
  *(v60 + 40) = v14;
  *(v60 + 48) = v13;
  *(v60 + 56) = v59;
  return v60;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintPosition,std::pair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,unsigned int>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintPosition *)>,mlir::TypeID,std::pair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,unsigned int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
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
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 4;
  *Slow = &unk_1F5B05568;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  *Slow = &unk_1F5B05518;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::ConstraintPosition::~ConstraintPosition(mlir::pdl_to_pdl_interp::ConstraintPosition *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::ConstraintPosition,mlir::pdl_to_pdl_interp::Position,std::pair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,unsigned int>,(mlir::pdl_to_pdl_interp::Predicates::Kind)4>::~PredicateBase(uint64_t a1, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, a2);

  operator delete(v2);
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeLiteralPosition,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::TypeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 32;
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
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 8) = 0;
  *(Slow + 16) = 9;
  *(Slow + 24) = *v2;
  *Slow = &unk_1F5B05588;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::TypeLiteralPosition::~TypeLiteralPosition(mlir::pdl_to_pdl_interp::TypeLiteralPosition *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

uint64_t getOrCreateChild(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v5 = ((a4 >> 4) ^ (a4 >> 9)) & (a3 - 1);
    v6 = *(a2 + 16 * v5);
    if (v6 == a4)
    {
      goto LABEL_8;
    }

    v7 = 1;
    while (v6 != -4096)
    {
      v8 = v5 + v7++;
      v5 = v8 & (a3 - 1);
      v6 = *(a2 + 16 * v5);
      if (v6 == a4)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = a3;
LABEL_8:
  v9 = *(a2 + 16 * v5 + 8);
  v17 = v9;
  v18 = 0;
  v20 = v9;
  v21 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::try_emplace<unsigned int const&>(a1 + 48, &v20, &v21, &v22);
  if (v23 == 1)
  {
    v10 = *(a1 + 80);
    *(v22 + 8) = v10;
    v19 = &v18;
    v20 = &v17;
    if (v10 >= *(a1 + 84))
    {
      llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,std::unique_ptr<mlir::pdl_to_pdl_interp::MatcherNode>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::pdl_to_pdl_interp::Qualifier *&&>,std::tuple<std::unique_ptr<mlir::pdl_to_pdl_interp::MatcherNode>&&>>(a1 + 72, &std::piecewise_construct, &v20, &v19);
      v14 = *(a1 + 72) + 16 * *(a1 + 80) - 16;
      v15 = v18;
      v18 = 0;
      if (!v15)
      {
        return v14 + 8;
      }
    }

    else
    {
      v11 = *(a1 + 72);
      v12 = (v11 + 16 * v10);
      *v12 = v9;
      v18 = 0;
      v12[1] = 0;
      v13 = v10 + 1;
      *(a1 + 80) = v13;
      v14 = v11 + 16 * v13 - 16;
      v15 = v18;
      v18 = 0;
      if (!v15)
      {
        return v14 + 8;
      }
    }

    (*(*v15 + 8))(v15);
    return v14 + 8;
  }

  return *(a1 + 72) + 16 * *(v22 + 8) + 8;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,std::unique_ptr<mlir::pdl_to_pdl_interp::MatcherNode>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::pdl_to_pdl_interp::Qualifier *&&>,std::tuple<std::unique_ptr<mlir::pdl_to_pdl_interp::MatcherNode>&&>>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4)
{
  v35 = 0;
  v7 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 16, &v35);
  v9 = v8;
  v10 = *(a1 + 8);
  v11 = 16 * v10;
  v12 = (v8 + 16 * v10);
  v13 = **a3;
  v14 = **a4;
  **a4 = 0;
  *v12 = v13;
  v12[1] = v14;
  v15 = *a1;
  if (!v10)
  {
    goto LABEL_10;
  }

  v16 = (v10 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v16 < 0xB || ((v15 + 8) < v9 + v11 ? (v25 = v9 + 8 >= &v15[v11]) : (v25 = 1), v25 ? (v26 = 0) : (v26 = 1), v15 < v9 + v11 - 8 ? (v27 = v9 >= &v15[v11 - 8]) : (v27 = 1), !v27 || (v26 & 1) != 0))
  {
    v17 = v9;
    v18 = *a1;
    do
    {
LABEL_4:
      v19 = *v18;
      *(v18 + 1) = 0;
      *v17++ = v19;
      v18 += 16;
    }

    while (v18 != &v15[v11]);
    goto LABEL_5;
  }

  v28 = v16 + 1;
  v29 = (v16 + 1) & 0x1FFFFFFFFFFFFFFELL;
  v17 = (v9 + 16 * v29);
  v18 = &v15[16 * v29];
  v30 = v29;
  v31 = v9;
  v32 = *a1;
  do
  {
    v33 = *v32;
    v34 = *(v32 + 1);
    *(v32 + 1) = 0;
    *(v32 + 3) = 0;
    *v31 = v33;
    v31[1] = v34;
    v31 += 2;
    v32 += 32;
    v30 -= 2;
  }

  while (v30);
  if (v28 != v29)
  {
    goto LABEL_4;
  }

LABEL_5:
  v20 = v15 - 8;
  do
  {
    v21 = *&v20[v11];
    *&v20[v11] = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v11 -= 16;
  }

  while (v11);
  v15 = *a1;
LABEL_10:
  v22 = v35;
  if (v15 != v7)
  {
    free(v15);
  }

  *a1 = v9;
  v23 = *(a1 + 8) + 1;
  *(a1 + 8) = v23;
  *(a1 + 12) = v22;
  return v9 + 16 * v23 - 16;
}

void mlir::pdl_to_pdl_interp::ExitNode::~ExitNode(mlir::pdl_to_pdl_interp::ExitNode *this)
{
  *this = &unk_1F5B051E0;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_1F5B051E0;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(this);
}

void llvm::SmallVectorTemplateBase<mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::PatternPredicates,false>::growAndEmplaceBack<mlir::pdl::PatternOp &,mlir::Value&,std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate>>(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v25 = 0;
  v8 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 40, &v25);
  v10 = v9;
  v11 = *a2;
  v12 = v9 + 40 * *(a1 + 8);
  v13 = *a3;
  v14 = *(a4 + 2);
  v15 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *v12 = v11;
  *(v12 + 8) = v13;
  *(v12 + 16) = v15;
  *(v12 + 32) = v14;
  v16 = *a1;
  v17 = *(a1 + 8);
  if (v17)
  {
    v18 = &v16[40 * v17];
    v19 = v10;
    do
    {
      *v19 = *v16;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
      *(v19 + 16) = 0;
      *(v19 + 16) = *(v16 + 1);
      *(v19 + 32) = *(v16 + 4);
      *(v16 + 2) = 0;
      *(v16 + 3) = 0;
      *(v16 + 4) = 0;
      v19 += 40;
      v16 += 40;
    }

    while (v16 != v18);
    v16 = *a1;
    v20 = *(a1 + 8);
    if (v20)
    {
      v21 = &v16[40 * v20 - 24];
      v22 = -40 * v20;
      do
      {
        v23 = *v21;
        if (*v21)
        {
          *(v21 + 8) = v23;
          operator delete(v23);
        }

        v21 -= 40;
        v22 += 40;
      }

      while (v22);
      v16 = *a1;
    }
  }

  v24 = v25;
  if (v16 != v8)
  {
    free(v16);
  }

  *a1 = v10;
  ++*(a1 + 8);
  *(a1 + 12) = v24;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<anonymous namespace::OrderedPredicate,llvm::detail::DenseSetEmpty,anonymous namespace::OrderedPredicateDenseInfo,llvm::detail::DenseSetPair<anonymous namespace::OrderedPredicate>>,anonymous namespace::OrderedPredicate,llvm::detail::DenseSetEmpty,anonymous namespace::OrderedPredicateDenseInfo,llvm::detail::DenseSetPair<anonymous namespace::OrderedPredicate>>::LookupBucketFor<anonymous namespace::OrderedPredicate>(uint64_t result, int a2, void *a3, void *a4)
{
  if (a2)
  {
    v4 = a3[1];
    v5 = __ROR8__(v4 + 16, 16);
    v6 = 0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ *a3 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ *a3 ^ 0xFF51AFD7ED558CCDLL)));
    v7 = a2 - 1;
    v8 = (a2 - 1) & ((-348639895 * ((v6 >> 47) ^ v6)) ^ v4);
    v9 = (result + 56 * v8);
    v10 = *v9;
    v11 = v9[1];
    if (*a3 != *v9 || v4 != v11)
    {
      v13 = 0;
      v14 = 1;
      while (v10 != -4096 || v11 != -4096)
      {
        if (v13)
        {
          v15 = 0;
        }

        else
        {
          v15 = v11 == -8192;
        }

        if (v15 && v10 == -8192)
        {
          v13 = v9;
        }

        v17 = v8 + v14++;
        v8 = v17 & v7;
        v9 = (result + 56 * (v17 & v7));
        v10 = *v9;
        v11 = v9[1];
        if (*a3 == *v9 && v4 == v11)
        {
          goto LABEL_7;
        }
      }

      if (v13)
      {
        v9 = v13;
      }
    }

LABEL_7:
    *a4 = v9;
    llvm::deallocate_buffer(0, 0);
  }

  *a4 = 0;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_0 &,anonymous namespace::OrderedPredicate **,false>(uint64_t result, uint64_t **a2, uint64_t a3, char a4)
{
  v426 = result;
LABEL_2:
  v5 = a2;
  v414 = a2 - 1;
  j = v426;
  while (1)
  {
    v7 = v5 - j;
    v8 = v7 - 2;
    v426 = j;
    if (v7 > 2)
    {
      v9 = j;
      switch(v7)
      {
        case 3:

        case 4:

        case 5:
      }
    }

    else
    {
      if (v7 < 2)
      {
        return result;
      }

      v5 = a2;
      v9 = j;
      if (v7 == 2)
      {
        v199 = *(a2 - 1);
        v200 = *j;
        v201 = **j;
        OperationDepth = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v201);
        v203 = *(v201 + 16);
        v204 = *v200[1];
        v206 = *(v199 + 16);
        v205 = *(v199 + 20);
        v207 = *(v200 + 6);
        result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v199);
        v208 = *(v200 + 4);
        if (v208 < v206 || v206 >= v208 && ((v356 = *(v200 + 5), v356 < v205) || v205 >= v356 && (result < OperationDepth || OperationDepth >= result && ((v357 = *(*v199 + 16), v357 < v203) || v203 >= v357 && ((v358 = **(v199 + 8), v358 < v204) || v204 >= v358 && *(v199 + 24) < v207)))))
        {
          v209 = *v426;
          *v426 = *(a2 - 1);
          *(a2 - 1) = v209;
        }

        return result;
      }
    }

    if (v7 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v9 != v5)
      {
        v246 = v8 >> 1;
        v247 = v8 >> 1;
        v423 = v7;
        do
        {
          v249 = v247;
          if (v246 >= v247)
          {
            v416 = (2 * v247) | 1;
            v248 = &v426[v416];
            if (2 * v247 + 2 < v7)
            {
              v250 = *v248;
              v251 = v248[1];
              v252 = *v251;
              v253 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v251);
              v408 = *(v252 + 16);
              v255 = *(v250 + 4);
              v254 = *(v250 + 5);
              v396 = *(v251 + 6);
              v402 = *v251[1];
              v256 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v250);
              v257 = *(v251 + 4);
              if (v257 < v255 || v255 >= v257 && ((v299 = *(v251 + 5), v299 < v254) || v254 >= v299 && (v256 < v253 || v253 >= v256 && ((v300 = *(*v250 + 16), v300 < v408) || v408 >= v300 && ((v301 = *v250[1], v301 < v402) || (v402 >= v301 ? (v302 = *(v250 + 6) >= v396) : (v302 = 1), !v302))))))
              {
                ++v248;
                v416 = 2 * v249 + 2;
              }
            }

            v258 = *v248;
            v259 = v426[v249];
            v260 = *v259;
            v261 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v259);
            v262 = *(v260 + 16);
            v409 = *v259[1];
            v263 = *(v258 + 4);
            v264 = *(v258 + 5);
            v265 = *(v259 + 6);
            result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v258);
            v266 = *(v259 + 4);
            v7 = v423;
            if (v266 >= v263)
            {
              if (v263 < v266 || (v295 = *(v259 + 5), v295 >= v264) && (v264 < v295 || result >= v261 && (v261 < result || (v296 = *(*v258 + 16), v296 >= v262) && (v262 < v296 || (v297 = *v258[1], v297 >= v409) && (v409 >= v297 ? (v298 = *(v258 + 6) >= v265) : (v298 = 1), v298)))))
              {
                v410 = v426[v249];
                v426[v249] = *v248;
                v267 = v416;
                while (v246 >= v267)
                {
                  v417 = v248;
                  v268 = 2 * v267;
                  v267 = (2 * v267) | 1;
                  v248 = &v426[v267];
                  v269 = v268 + 2;
                  if (v268 + 2 < v7)
                  {
                    v270 = *v248;
                    v271 = v248[1];
                    v272 = *v271;
                    v273 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v271);
                    v397 = *(v272 + 16);
                    v403 = v273;
                    v392 = *v271[1];
                    v275 = *(v270 + 4);
                    v274 = *(v270 + 5);
                    v391 = *(v271 + 6);
                    v276 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v270);
                    v277 = *(v271 + 4);
                    if (v277 < v275 || v275 >= v277 && ((v291 = *(v271 + 5), v291 < v274) || v274 >= v291 && (v276 < v403 || v403 >= v276 && ((v292 = *(*v270 + 16), v292 < v397) || v397 >= v292 && ((v293 = *v270[1], v293 < v392) || (v392 >= v293 ? (v294 = *(v270 + 6) >= v391) : (v294 = 1), !v294))))))
                    {
                      ++v248;
                      v267 = v269;
                    }
                  }

                  v278 = v249;
                  v279 = v246;
                  v280 = *v248;
                  v281 = *v410;
                  v282 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v410);
                  v283 = *(v281 + 16);
                  v284 = *(v280 + 4);
                  v285 = *(v280 + 5);
                  v398 = *(v410 + 6);
                  v404 = *v410[1];
                  result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v280);
                  v286 = *(v410 + 4);
                  if (v286 < v284)
                  {
                    v248 = v417;
                    v7 = v423;
                    v246 = v279;
                    v249 = v278;
                    break;
                  }

                  v47 = v284 >= v286;
                  v7 = v423;
                  v246 = v279;
                  v249 = v278;
                  if (v47)
                  {
                    v287 = *(v410 + 5);
                    if (v287 < v285 || v285 >= v287 && (result < v282 || v282 >= result && ((v288 = *(*v280 + 16), v288 < v283) || v283 >= v288 && ((v289 = *v280[1], v289 < v404) || (v404 >= v289 ? (v290 = *(v280 + 6) >= v398) : (v290 = 1), !v290)))))
                    {
                      v248 = v417;
                      break;
                    }
                  }

                  *v417 = *v248;
                }

                *v248 = v410;
              }
            }
          }

          v247 = v249 - 1;
        }

        while (v249);
        do
        {
          v304 = 0;
          v393 = *v426;
          v305 = (v7 - 2) >> 1;
          v306 = v426;
          do
          {
            v307 = v306;
            v308 = &v306[v304];
            v306 = v308 + 1;
            v309 = 2 * v304;
            v304 = (2 * v304) | 1;
            v310 = v309 + 2;
            if (v309 + 2 < v7)
            {
              v313 = v308[2];
              v312 = v308 + 2;
              v311 = v313;
              v314 = *(v312 - 1);
              v315 = *v313;
              v316 = v7;
              v317 = v306;
              v418 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v313);
              v411 = *(v315 + 16);
              v318 = *(v314 + 16);
              v424 = *(v314 + 20);
              v399 = *(v313 + 6);
              v405 = *v313[1];
              result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v314);
              v7 = v316;
              v319 = *(v313 + 4);
              if (v319 < v318 || (v306 = v317, v318 >= v319) && ((v320 = *(v311 + 5), v320 < v424) || v424 >= v320 && (result < v418 || v418 >= result && ((v321 = *(*v314 + 16), v321 < v411) || v411 >= v321 && ((v322 = **(v314 + 8), v322 < v405) || (v405 >= v322 ? (v323 = *(v314 + 24) >= v399) : (v323 = 1), !v323))))))
              {
                v306 = v312;
                v304 = v310;
              }
            }

            *v307 = *v306;
          }

          while (v304 <= v305);
          v324 = a2 - 1;
          v211 = v306 == --a2;
          if (v211)
          {
            *v306 = v393;
          }

          else
          {
            *v306 = *v324;
            *v324 = v393;
            v325 = (v306 - v426 + 8) >> 3;
            v326 = v325 - 2;
            if (v325 >= 2)
            {
              v327 = v326 >> 1;
              v328 = &v426[v326 >> 1];
              v329 = *v328;
              v330 = *v306;
              v331 = **v306;
              v425 = v7;
              v332 = v306;
              v333 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v331);
              v334 = *(v331 + 16);
              v419 = *v330[1];
              v336 = *(v329 + 4);
              v335 = *(v329 + 5);
              v412 = *(v330 + 6);
              result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v329);
              v7 = v425;
              v337 = *(v330 + 4);
              if (v337 < v336 || v336 >= v337 && ((v352 = *(v330 + 5), v352 < v335) || v335 >= v352 && (result < v333 || v333 >= result && ((v353 = *(*v329 + 16), v353 < v334) || v334 >= v353 && ((v354 = *v329[1], v354 < v419) || (v419 >= v354 ? (v355 = *(v329 + 6) >= v412) : (v355 = 1), !v355))))))
              {
                v338 = *v332;
                *v332 = *v328;
                if (v326 >= 2)
                {
                  while (1)
                  {
                    v340 = v327 - 1;
                    v327 = (v327 - 1) >> 1;
                    v339 = &v426[v327];
                    v341 = *v339;
                    v342 = *v338;
                    v343 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v338);
                    v344 = *(v342 + 16);
                    v420 = *v338[1];
                    v345 = *(v341 + 4);
                    v346 = *(v341 + 5);
                    v413 = *(v338 + 6);
                    result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v341);
                    v347 = *(v338 + 4);
                    if (v347 >= v345)
                    {
                      if (v345 < v347)
                      {
                        break;
                      }

                      v348 = *(v338 + 5);
                      if (v348 >= v346)
                      {
                        if (v346 < v348)
                        {
                          break;
                        }

                        if (result >= v343)
                        {
                          if (v343 < result)
                          {
                            break;
                          }

                          v349 = *(*v341 + 16);
                          if (v349 >= v344)
                          {
                            if (v344 < v349)
                            {
                              break;
                            }

                            v350 = *v341[1];
                            if (v350 >= v420 && (v420 < v350 || *(v341 + 6) >= v413))
                            {
                              break;
                            }
                          }
                        }
                      }
                    }

                    *v328 = *v339;
                    v328 = &v426[v327];
                    if (v340 <= 1)
                    {
                      goto LABEL_380;
                    }
                  }
                }

                v339 = v328;
LABEL_380:
                *v339 = v338;
                v7 = v425;
              }
            }
          }
        }

        while (v7-- > 2);
      }

      return result;
    }

    v10 = v7 >> 1;
    v11 = &v9[v7 >> 1];
    if (v7 < 0x81)
    {
      v406 = a3 - 1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_27:
      v32 = 0;
      v33 = *v9;
      while (1)
      {
        v34 = v9[v32 + 1];
        v35 = *v33;
        v36 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
        v37 = *(v35 + 16);
        v38 = *v33[1];
        v40 = *(v34 + 4);
        v39 = *(v34 + 5);
        v41 = *(v33 + 6);
        v42 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v34);
        v43 = *(v33 + 4);
        if (v43 >= v40)
        {
          if (v40 < v43)
          {
            break;
          }

          v44 = *(v33 + 5);
          if (v44 >= v39)
          {
            if (v39 < v44)
            {
              break;
            }

            if (v42 >= v36)
            {
              if (v36 < v42)
              {
                break;
              }

              v45 = *(*v34 + 16);
              if (v45 >= v37)
              {
                if (v37 < v45)
                {
                  break;
                }

                v46 = *v34[1];
                if (v46 >= v38)
                {
                  v47 = v38 < v46 || *(v34 + 6) >= v41;
                  if (v47)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

        ++v32;
      }

      v400 = &v9[v32];
      v421 = &v9[v32 + 1];
      v48 = a2 - 1;
      if (v32 * 8)
      {
        while (1)
        {
          v51 = v48;
          v68 = *v48;
          v69 = *v33;
          v70 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
          v71 = *(v69 + 16);
          v72 = *v33[1];
          v73 = *(v68 + 4);
          v74 = *(v68 + 5);
          v75 = *(v33 + 6);
          v76 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v68);
          v77 = *(v33 + 4);
          if (v77 < v73)
          {
            break;
          }

          v9 = v426;
          if (v73 >= v77)
          {
            v78 = *(v33 + 5);
            if (v78 < v74 || v74 >= v78 && (v76 < v70 || v70 >= v76 && ((v79 = *(*v68 + 16), v79 < v71) || v71 >= v79 && ((v80 = *v68[1], v80 < v72) || (v72 >= v80 ? (v81 = *(v68 + 6) >= v75) : (v81 = 1), !v81)))))
            {
LABEL_81:
              v5 = a2;
              v49 = v51;
              v67 = v400;
              if (v421 >= v51)
              {
                goto LABEL_119;
              }

              goto LABEL_84;
            }
          }

          v48 = v51 - 1;
        }
      }

      else
      {
        v5 = a2;
        v49 = a2;
        if (v421 >= a2)
        {
          v67 = v400;
LABEL_119:
          if (v67 == v9)
          {
            goto LABEL_121;
          }

LABEL_120:
          *v9 = *v67;
          goto LABEL_121;
        }

        for (i = a2 - 1; ; i = v49 - 1)
        {
          v51 = i;
          v52 = *i;
          v53 = *v33;
          v54 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
          v55 = *(v53 + 16);
          v56 = *v33[1];
          v57 = *(v52 + 4);
          v58 = *(v52 + 5);
          v59 = *(v33 + 6);
          v60 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v52);
          v61 = *(v33 + 4);
          if (v61 < v57)
          {
            break;
          }

          v9 = v426;
          if (v57 < v61)
          {
            goto LABEL_54;
          }

          v62 = *(v33 + 5);
          if (v62 < v58)
          {
            goto LABEL_81;
          }

          if (v58 < v62)
          {
            goto LABEL_54;
          }

          if (v60 < v54)
          {
            goto LABEL_81;
          }

          if (v54 < v60)
          {
            goto LABEL_54;
          }

          v63 = *(*v52 + 16);
          if (v63 < v55)
          {
            goto LABEL_81;
          }

          if (v55 >= v63)
          {
            v64 = *v52[1];
            if (v64 < v56)
            {
              goto LABEL_81;
            }

            v66 = v56 < v64 || *(v52 + 6) >= v59;
            v49 = v51;
            if (v421 >= v51 || !v66)
            {
LABEL_65:
              v5 = a2;
              v67 = v400;
              if (v421 >= v49)
              {
                goto LABEL_119;
              }

              goto LABEL_84;
            }
          }

          else
          {
LABEL_54:
            v49 = v51;
            if (v421 >= v51)
            {
              goto LABEL_65;
            }
          }
        }
      }

      v5 = a2;
      v9 = v426;
      v49 = v51;
      v67 = v400;
      if (v421 >= v51)
      {
        goto LABEL_119;
      }

LABEL_84:
      v82 = v421;
      v401 = v49;
      v83 = v49;
      do
      {
        v84 = *v82;
        *v82++ = *v83;
        *v83 = v84;
        while (1)
        {
          v85 = *v82;
          v86 = *v33;
          v87 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
          v88 = *(v86 + 16);
          v89 = *v33[1];
          v90 = *(v85 + 4);
          v91 = *(v85 + 5);
          v92 = *(v33 + 6);
          v93 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v85);
          v94 = *(v33 + 4);
          if (v94 >= v90)
          {
            if (v90 < v94)
            {
              break;
            }

            v95 = *(v33 + 5);
            if (v95 >= v91)
            {
              if (v91 < v95)
              {
                break;
              }

              if (v93 >= v87)
              {
                if (v87 < v93)
                {
                  break;
                }

                v96 = *(*v85 + 16);
                if (v96 >= v88)
                {
                  if (v88 < v96)
                  {
                    break;
                  }

                  v97 = *v85[1];
                  if (v97 >= v89 && (v89 < v97 || *(v85 + 6) >= v92))
                  {
                    break;
                  }
                }
              }
            }
          }

          ++v82;
        }

        while (1)
        {
          v100 = *--v83;
          v99 = v100;
          v101 = *v33;
          v102 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
          v103 = *(v101 + 16);
          v104 = *v33[1];
          v105 = *(v100 + 16);
          v106 = *(v100 + 20);
          v107 = *(v33 + 6);
          v108 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v100);
          v109 = *(v33 + 4);
          if (v109 < v105)
          {
            break;
          }

          if (v105 >= v109)
          {
            v110 = *(v33 + 5);
            if (v110 < v106)
            {
              break;
            }

            if (v106 >= v110)
            {
              if (v108 < v102)
              {
                break;
              }

              if (v102 >= v108)
              {
                v111 = *(*v99 + 16);
                if (v111 < v103)
                {
                  break;
                }

                if (v103 >= v111)
                {
                  v112 = **(v99 + 8);
                  if (v112 < v104)
                  {
                    break;
                  }

                  if (v104 >= v112 && *(v99 + 24) < v107)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      while (v82 < v83);
      v67 = v82 - 1;
      v5 = a2;
      v9 = v426;
      v49 = v401;
      if (v67 != v426)
      {
        goto LABEL_120;
      }

LABEL_121:
      *v67 = v33;
      a3 = v406;
      if (v421 < v49)
      {
        goto LABEL_124;
      }

      j = v67 + 1;
      if (result)
      {
        a2 = v67;
        if (v114)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v114)
      {
LABEL_124:
        a4 = 0;
        j = v67 + 1;
      }
    }

    else
    {
      v12 = v9 + 1;
      v13 = v10;
      v14 = &v9[v13];
      v15 = &v9[v13 - 1];
      v16 = v15;
      v9 = v426;
      v17 = *v426;
      *v426 = *v14;
      *v14 = v17;
      v406 = a3 - 1;
      if (a4)
      {
        goto LABEL_27;
      }

LABEL_16:
      v18 = *(v9 - 1);
      v19 = *v9;
      v20 = **v9;
      v21 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v20);
      v22 = *(v20 + 16);
      v23 = *v19[1];
      v25 = *(v18 + 16);
      v24 = *(v18 + 20);
      v26 = *(v19 + 6);
      v27 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v18);
      v28 = *(v19 + 4);
      if (v28 < v25)
      {
        goto LABEL_27;
      }

      if (v25 >= v28)
      {
        v29 = *(v19 + 5);
        if (v29 < v24)
        {
          goto LABEL_27;
        }

        if (v24 >= v29)
        {
          if (v27 < v21)
          {
            goto LABEL_27;
          }

          if (v21 >= v27)
          {
            v30 = *(*v18 + 16);
            if (v30 < v22)
            {
              goto LABEL_27;
            }

            if (v22 >= v30)
            {
              v31 = **(v18 + 8);
              if (v31 < v23 || v23 >= v31 && *(v18 + 24) < v26)
              {
                goto LABEL_27;
              }
            }
          }
        }
      }

      v115 = *v9;
      v116 = *v414;
      v117 = **v414;
      v118 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v117);
      v119 = *(v117 + 16);
      v120 = *v116[1];
      v122 = *(v115 + 4);
      v121 = *(v115 + 5);
      v123 = *(v116 + 6);
      result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
      v124 = *(v116 + 4);
      if (v124 < v122 || v122 >= v124 && ((v196 = *(v116 + 5), v196 < v121) || v121 >= v196 && (result < v118 || v118 >= result && ((v197 = *(*v115 + 16), v197 < v119) || v119 >= v197 && ((v198 = *v115[1], v198 < v120) || v120 >= v198 && *(v115 + 6) < v123)))))
      {
        for (j = v426 + 1; ; ++j)
        {
          v125 = *j;
          v126 = **j;
          v127 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v126);
          v128 = *(v126 + 16);
          v129 = *v125[1];
          v131 = *(v115 + 4);
          v130 = *(v115 + 5);
          v132 = *(v125 + 6);
          result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
          v133 = *(v125 + 4);
          if (v133 < v131)
          {
            break;
          }

          if (v131 >= v133)
          {
            v134 = *(v125 + 5);
            if (v134 < v130)
            {
              break;
            }

            if (v130 >= v134)
            {
              if (result < v127)
              {
                break;
              }

              if (v127 >= result)
              {
                v135 = *(*v115 + 16);
                if (v135 < v128)
                {
                  break;
                }

                if (v128 >= v135)
                {
                  v136 = *v115[1];
                  if (v136 < v129)
                  {
                    break;
                  }

                  if (v129 >= v136 && *(v115 + 6) < v132)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

LABEL_141:
        v138 = a2;
      }

      else
      {
        for (j = v426 + 1; ; ++j)
        {
          v138 = a2;
          if (j >= a2)
          {
            break;
          }

          v183 = *j;
          v184 = **j;
          v185 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v184);
          v186 = *(v184 + 16);
          v187 = *v183[1];
          v189 = *(v115 + 4);
          v188 = *(v115 + 5);
          v190 = *(v183 + 6);
          result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
          v191 = *(v183 + 4);
          if (v191 < v189)
          {
            goto LABEL_141;
          }

          if (v189 >= v191)
          {
            v192 = *(v183 + 5);
            if (v192 < v188)
            {
              goto LABEL_141;
            }

            if (v188 >= v192)
            {
              if (result < v185)
              {
                goto LABEL_141;
              }

              if (v185 >= result)
              {
                v193 = *(*v115 + 16);
                if (v193 < v186)
                {
                  goto LABEL_141;
                }

                if (v186 >= v193)
                {
                  v194 = *v115[1];
                  if (v194 < v187)
                  {
                    goto LABEL_141;
                  }

                  if (v187 >= v194 && *(v115 + 6) < v190)
                  {
                    goto LABEL_141;
                  }
                }
              }
            }
          }
        }
      }

      k = v138;
      if (j < v138)
      {
        for (k = a2 - 1; ; --k)
        {
          v140 = *k;
          v141 = **k;
          v142 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v141);
          v143 = *(v141 + 16);
          v144 = *v140[1];
          v146 = *(v115 + 4);
          v145 = *(v115 + 5);
          v147 = *(v140 + 6);
          result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
          v148 = *(v140 + 4);
          if (v148 >= v146)
          {
            if (v146 < v148)
            {
              break;
            }

            v149 = *(v140 + 5);
            if (v149 >= v145)
            {
              if (v145 < v149)
              {
                break;
              }

              if (result >= v142)
              {
                if (v142 < result)
                {
                  break;
                }

                v150 = *(*v115 + 16);
                if (v150 >= v143)
                {
                  if (v143 < v150)
                  {
                    break;
                  }

                  v151 = *v115[1];
                  if (v151 >= v144 && (v144 < v151 || *(v115 + 6) >= v147))
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      while (j < k)
      {
        v153 = *j;
        *j++ = *k;
        *k = v153;
        while (1)
        {
          v154 = *j;
          v155 = **j;
          v156 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v155);
          v157 = *(v155 + 16);
          v158 = *v154[1];
          v160 = *(v115 + 4);
          v159 = *(v115 + 5);
          v161 = *(v154 + 6);
          v162 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
          v163 = *(v154 + 4);
          if (v163 < v160)
          {
            break;
          }

          if (v160 >= v163)
          {
            v164 = *(v154 + 5);
            if (v164 < v159)
            {
              break;
            }

            if (v159 >= v164)
            {
              if (v162 < v156)
              {
                break;
              }

              if (v156 >= v162)
              {
                v165 = *(*v115 + 16);
                if (v165 < v157)
                {
                  break;
                }

                if (v157 >= v165)
                {
                  v166 = *v115[1];
                  if (v166 < v158)
                  {
                    break;
                  }

                  if (v158 >= v166 && *(v115 + 6) < v161)
                  {
                    break;
                  }
                }
              }
            }
          }

          ++j;
        }

        while (1)
        {
          do
          {
            v169 = *--k;
            v168 = v169;
            v170 = *v169;
            v171 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v169);
            v172 = *(v170 + 16);
            v173 = **(v169 + 8);
            v175 = *(v115 + 4);
            v174 = *(v115 + 5);
            v176 = *(v169 + 24);
            result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
            v177 = *(v169 + 16);
          }

          while (v177 < v175);
          if (v175 < v177)
          {
            break;
          }

          v178 = *(v168 + 20);
          if (v178 >= v174)
          {
            if (v174 < v178)
            {
              break;
            }

            if (result >= v171)
            {
              if (v171 < result)
              {
                break;
              }

              v179 = *(*v115 + 16);
              if (v179 >= v172)
              {
                if (v172 < v179)
                {
                  break;
                }

                v180 = *v115[1];
                if (v180 >= v173 && (v173 < v180 || *(v115 + 6) >= v176))
                {
                  break;
                }
              }
            }
          }
        }
      }

      v182 = j - 1;
      if (j - 1 != v426)
      {
        *v426 = *v182;
      }

      a4 = 0;
      *v182 = v115;
      v5 = a2;
      a3 = v406;
    }
  }

  v210 = v9 + 1;
  v211 = v9 == v5 || v210 == v5;
  v212 = v211;
  if ((a4 & 1) == 0)
  {
    if ((v212 & 1) == 0)
    {
      do
      {
        v360 = v426;
        v359 = v210;
        v362 = *v426;
        v361 = v426[1];
        v363 = **v426;
        v364 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v363);
        v365 = *(v363 + 16);
        v366 = *v362[1];
        v368 = *(v361 + 4);
        v367 = *(v361 + 5);
        v369 = *(v362 + 6);
        result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v361);
        v370 = *(v362 + 4);
        v426 = v359;
        if (v370 < v368 || v368 >= v370 && ((v387 = *(v362 + 5), v387 < v367) || v367 >= v387 && (result < v364 || v364 >= result && ((v388 = *(*v361 + 16), v388 < v365) || v365 >= v388 && ((v389 = *v361[1], v389 < v366) || (v366 >= v389 ? (v390 = *(v361 + 6) >= v369) : (v390 = 1), !v390))))))
        {
          v371 = *v359;
          while (1)
          {
            do
            {
              v372 = v360;
              v360[1] = *v360;
              v374 = *--v360;
              v373 = v374;
              v375 = *v374;
              v376 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v374);
              v377 = *(v375 + 16);
              v378 = **(v374 + 8);
              v380 = *(v371 + 4);
              v379 = *(v371 + 5);
              v381 = *(v374 + 24);
              result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v371);
              v382 = *(v374 + 16);
            }

            while (v382 < v380);
            if (v380 < v382)
            {
              break;
            }

            v383 = *(v373 + 20);
            if (v383 >= v379)
            {
              if (v379 < v383)
              {
                break;
              }

              if (result >= v376)
              {
                if (v376 < result)
                {
                  break;
                }

                v384 = *(*v371 + 16);
                if (v384 >= v377)
                {
                  if (v377 < v384)
                  {
                    break;
                  }

                  v385 = *v371[1];
                  if (v385 >= v378 && (v378 < v385 || *(v371 + 6) >= v381))
                  {
                    break;
                  }
                }
              }
            }
          }

          *v372 = v371;
          v359 = v426;
        }

        v210 = v359 + 1;
      }

      while (v359 + 1 != a2);
    }

    return result;
  }

  if (v212)
  {
    return result;
  }

  v213 = 0;
  v214 = j;
  while (2)
  {
    v415 = v210;
    v217 = *v214;
    v216 = v214[1];
    v218 = **v214;
    v219 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v218);
    v220 = *(v218 + 16);
    v221 = *v217[1];
    v222 = *(v216 + 4);
    v223 = *(v216 + 5);
    v224 = *(v217 + 6);
    result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v216);
    v225 = *(v217 + 4);
    if (v225 >= v222)
    {
      if (v222 < v225)
      {
        goto LABEL_246;
      }

      v242 = *(v217 + 5);
      if (v242 >= v223)
      {
        if (v223 < v242)
        {
          goto LABEL_246;
        }

        if (result >= v219)
        {
          if (v219 < result)
          {
            goto LABEL_246;
          }

          v243 = *(*v216 + 16);
          if (v243 >= v220)
          {
            if (v220 < v243)
            {
              goto LABEL_246;
            }

            v244 = *v216[1];
            if (v244 >= v221 && (v221 < v244 || *(v216 + 6) >= v224))
            {
              goto LABEL_246;
            }
          }
        }
      }
    }

    v226 = v214[1];
    v214[1] = *v214;
    v227 = v426;
    v215 = v426;
    if (v214 == v426)
    {
      goto LABEL_245;
    }

    v407 = v213;
    v228 = v213;
    while (2)
    {
      v229 = (v227 + v228);
      v230 = *(v227 + v228 - 8);
      v231 = *v230;
      v232 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v230);
      v233 = *(v231 + 16);
      v234 = **(v230 + 8);
      v235 = *(v226 + 4);
      v236 = *(v226 + 5);
      v422 = *(v230 + 24);
      result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v226);
      v237 = *(v230 + 16);
      if (v237 < v235)
      {
        goto LABEL_250;
      }

      if (v235 < v237)
      {
        goto LABEL_265;
      }

      v238 = *(v230 + 20);
      if (v238 < v236)
      {
        goto LABEL_250;
      }

      if (v236 < v238)
      {
        goto LABEL_265;
      }

      if (result < v232)
      {
        goto LABEL_250;
      }

      if (v232 < result)
      {
        goto LABEL_265;
      }

      v239 = *(*v226 + 16);
      if (v239 < v233)
      {
LABEL_250:
        --v214;
        *v229 = *(v229 - 1);
        v228 -= 8;
        v227 = v426;
        if (!v228)
        {
          v215 = v426;
          goto LABEL_244;
        }

        continue;
      }

      break;
    }

    if (v233 >= v239)
    {
      v240 = *v226[1];
      if (v240 >= v234 && (v234 < v240 || *(v226 + 6) >= v422))
      {
LABEL_265:
        v215 = v214;
        goto LABEL_244;
      }

      goto LABEL_250;
    }

    v215 = (v426 + v228);
LABEL_244:
    v213 = v407;
LABEL_245:
    *v215 = v226;
LABEL_246:
    v214 = v415;
    v210 = v415 + 1;
    v213 += 8;
    if (v415 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}