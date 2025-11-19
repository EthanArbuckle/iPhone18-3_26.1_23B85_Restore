void *std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 <= (v7 - *result) >> 2)
  {
    v17 = result[1];
    v18 = v17 - v8;
    if (a4 <= (v17 - v8) >> 2)
    {
      v21 = a3 - __src;
      if (v21)
      {
        result = memmove(*result, __src, v21);
      }

      v22 = v8 + v21;
      goto LABEL_28;
    }

    v19 = &__src[v18];
    if (v17 != v8)
    {
      result = memmove(*result, __src, v18);
    }

    v20 = v6[1];
    v23 = v20;
    if (v19 != a3)
    {
      v24 = &a3[v8] - &__src[v17] - 4;
      if (v24 >= 0x1C)
      {
        v23 = v6[1];
        if (v8 + v20 - &__src[v17] >= 0x20)
        {
          v25 = (v24 >> 2) + 1;
          v26 = 4 * (v25 & 0x7FFFFFFFFFFFFFF8);
          v19 += v26;
          v23 = (v20 + v26);
          v27 = (v20 + 16);
          v28 = &__src[v17 - v8 + 16];
          v29 = v25 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v30 = *v28;
            *(v27 - 1) = *(v28 - 1);
            *v27 = v30;
            v27 += 2;
            v28 += 32;
            v29 -= 8;
          }

          while (v29);
          if (v25 == (v25 & 0x7FFFFFFFFFFFFFF8))
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        v23 = v6[1];
      }

      do
      {
        v31 = *v19;
        v19 += 4;
        *v23 = v31;
        v23 += 4;
      }

      while (v19 != a3);
    }

LABEL_27:
    v22 = v23;
LABEL_28:
    v6[1] = v22;
    return result;
  }

  if (v8)
  {
    result[1] = v8;
    v9 = v8;
    v10 = a4;
    operator delete(v9);
    a4 = v10;
    v7 = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  if (a4 >> 62)
  {
    goto LABEL_29;
  }

  v11 = v7 >> 1;
  if (v7 >> 1 <= a4)
  {
    v11 = a4;
  }

  v12 = v7 >= 0x7FFFFFFFFFFFFFFCLL;
  v13 = 0x3FFFFFFFFFFFFFFFLL;
  if (!v12)
  {
    v13 = v11;
  }

  if (v13 >> 62)
  {
LABEL_29:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v14 = 4 * v13;
  result = operator new(4 * v13);
  v15 = result;
  *v6 = result;
  v6[2] = result + v14;
  if (__src != a3)
  {
    v16 = ((a3 - __src - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    result = memcpy(result, __src, v16);
    v15 += v16;
  }

  v6[1] = v15;
  return result;
}

void std::__shared_ptr_emplace<mlir::anec::ANECIRUnit>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B2E830;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t mlir::OpBuilder::create<mlir::anec::MatMul,mlir::detail::TypedValue<mlir::MemRefType>,mlir::mps::ConstantOp &,mlir::FloatAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::MatMul,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::MatMul::build(a1, v19, *a3, *a4 - 16, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::MatMul,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value &,mlir::Value &>(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v13);
  mlir::anec::GOC::build(v15, v22, *a3, *a4, *a5, *a6);
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

uint64_t mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::mps::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value &,mlir::Value &>(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v13);
  mlir::anec::GOC::build(v15, v22, *a3, *a4, *a5, *a6 - 16);
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

uint64_t mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::mps::ConstantOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value &,mlir::Value &>(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v13);
  mlir::anec::GOC::build(v15, v22, *a3, *a4, *a5 - 16, *a6);
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

void mlir::anec::validateAndBroadcastShapes(mlir::ValueRange,llvm::SmallVector<long long,6u> &)::$_1::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[6] = *MEMORY[0x1E69E9840];
  v8 = (a4 + 16);
  *a4 = a4 + 16;
  *(a4 + 12) = 6;
  if (a3 < 7)
  {
    if (!a3)
    {
      *(a4 + 8) = 0;
      if (!a2)
      {
        return;
      }

LABEL_15:
      v19[0] = v20;
      v19[1] = 0xC00000000;
      mlir::anec::getANEDefaultLayout(a2, v19);
    }
  }

  else
  {
    *(a4 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, v8, a3, 8);
    v8 = *a4;
  }

  memset_pattern16(v8, &unk_1E096FAE0, 8 * a3);
  *(a4 + 8) = a3;
  if (a2 != a3)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    v9 = 0;
    if (a3 < 4)
    {
      goto LABEL_11;
    }

    if (v8 - a1 < 0x20)
    {
      goto LABEL_11;
    }

    v9 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (a1 + 16);
    v11 = v8 + 1;
    v12 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v13 = *v10;
      *(v11 - 1) = *(v10 - 1);
      *v11 = v13;
      v10 += 2;
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    if (v9 != a3)
    {
LABEL_11:
      v14 = a3 - v9;
      v15 = 8 * v9;
      v16 = (a1 + 8 * v9);
      v17 = (v8 + v15);
      do
      {
        v18 = *v16++;
        *v17++ = v18;
        --v14;
      }

      while (v14);
    }
  }
}

void *mlir::anec::ANECIRPoolUnit::Create@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x120uLL);
  *v6 = &unk_1F5B2E868;
  v7 = (v6 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 8));
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = *a2;
    *(v6 + 3) = *(a2 + 16);
  }

  *(v6 + 8) = 5;
  *(v6 + 5) = 0;
  v6[48] = 1;
  *(v6 + 7) = @"Pooling";
  *(v6 + 8) = v6 + 80;
  *(v6 + 9) = 0x100000000;
  *(v6 + 14) = v6 + 128;
  *(v6 + 15) = 0x300000000;
  *(v6 + 11) = vdupq_n_s64(1uLL);
  *(v6 + 12) = 0u;
  *(v6 + 13) = 0u;
  *(v6 + 14) = 0u;
  *(v6 + 30) = 0;
  *v6 = &unk_1F5B34398;
  *(v6 + 62) = a1;
  *(v6 + 16) = vdupq_n_s64(2uLL);
  *(v6 + 34) = 0;
  v6[280] = 1;
  *a3 = v6;
  result = operator new(0x20uLL);
  *result = &unk_1F5B2E8C0;
  result[1] = 0;
  result[2] = 0;
  result[3] = v6;
  a3[1] = result;
  return result;
}

void mlir::anec::ANECIRUnit::~ANECIRUnit(mlir::anec::ANECIRUnit *this)
{
  *this = &unk_1F5B34308;
  v2 = *(this + 14);
  if (v2 != this + 128)
  {
    free(v2);
  }

  v3 = *(this + 8);
  v4 = *(this + 18);
  if (v4)
  {
    v5 = 32 * v4;
    v6 = &v3[32 * v4 - 9];
    v7 = -v5;
    v8 = v6;
    do
    {
      v9 = *v8;
      v8 -= 32;
      if (v9 < 0)
      {
        operator delete(*(v6 - 23));
      }

      v6 = v8;
      v7 += 32;
    }

    while (v7);
    v3 = *(this + 8);
  }

  if (v3 != this + 80)
  {
    free(v3);
  }

  v10 = *(this + 5);
  *(this + 5) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *this = &unk_1F5B2E868;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  mlir::anec::ANECIRUnit::~ANECIRUnit(this);

  operator delete(v1);
}

double mlir::anec::PrependProcNameToNameAndShorten(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a3, a1);
  mlir::anec::PrependProcNameToName(a1);
  if (!v4)
  {
    if (*(a1 + 23) < 0)
    {
      v6 = *(a1 + 8);
      if (v6 < 0x40)
      {
        std::string::__init_copy_ctor_external(&v22, *a1, v6);
        if (*(a1 + 23) < 0)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      v7 = *a1;
    }

    else
    {
      if (*(a1 + 23) <= 0x3Fu)
      {
        v22 = *a1;
        if (*(a1 + 23) < 0)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      v7 = a1;
    }

    v8 = operator new(0x30uLL);
    v24.__r_.__value_.__r.__words[0] = v8;
    *&v24.__r_.__value_.__r.__words[1] = xmmword_1E0982A20;
    v9 = *(v7 + 4);
    v11 = *v7;
    v10 = *(v7 + 1);
    v8[20] = *(v7 + 20);
    *(v8 + 4) = v9;
    *v8 = v11;
    *(v8 + 1) = v10;
    *(v8 + 42) = 0;
    v12 = std::string::append(&v24, "_");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = *(a1 + 23);
    if (v14 >= 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = *a1;
    }

    if (v14 >= 0)
    {
      v16 = *(a1 + 23);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    v17 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v23, v15, v16);
    std::to_string(&v23, v17);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v23;
    }

    else
    {
      v18 = v23.__r_.__value_.__r.__words[0];
    }

    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v23.__r_.__value_.__l.__size_;
    }

    v20 = std::string::append(&v25, v18, size);
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_25:
        if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }
    }

    else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if (*(a1 + 23) < 0)
      {
LABEL_27:
        operator delete(*a1);
      }

LABEL_28:
      result = *&v22.__r_.__value_.__l.__data_;
      *a1 = v22;
      return result;
    }

LABEL_32:
    operator delete(v24.__r_.__value_.__l.__data_);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  return result;
}

void mlir::anec::PrependProcNameToName(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  std::operator+<char>();
  v2 = std::string::append(&v10, "__");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v11.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v11.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v7 = std::string::append(&v11, v5, v6);
  v8 = v7->__r_.__value_.__r.__words[0];
  v12[0] = v7->__r_.__value_.__l.__size_;
  *(v12 + 7) = *(&v7->__r_.__value_.__r.__words[1] + 7);
  v9 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v8;
  *(a1 + 8) = v12[0];
  *(a1 + 15) = *(v12 + 7);
  *(a1 + 23) = v9;
  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v10.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_13;
  }
}

uint64_t **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, uint64_t a2)
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

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v21, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = v2[23];
    if (v14 >= 0)
    {
      v15 = v2[23];
    }

    else
    {
      v15 = *(v2 + 1);
    }

    if (v14 < 0)
    {
      v2 = *v2;
    }

    do
    {
      v16 = v13[1];
      if (v8 == v16)
      {
        v17 = *(v13 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v13[3];
        }

        if (v17 == v15)
        {
          v19 = v18 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v19, v2, v15))
          {
            return v13;
          }
        }
      }

      else
      {
        if (v10 <= 1)
        {
          v16 &= *&v7 - 1;
        }

        else if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    while (1)
    {
      while (1)
      {
        v11 = v6;
        v14 = v6[4];
        v12 = v6 + 4;
        v13 = v14;
        v15 = *(v12 + 23);
        if (v15 >= 0)
        {
          v16 = *(v12 + 23);
        }

        else
        {
          v16 = v12[1];
        }

        if (v15 >= 0)
        {
          v17 = v12;
        }

        else
        {
          v17 = v13;
        }

        if (v16 >= v9)
        {
          v18 = v9;
        }

        else
        {
          v18 = v16;
        }

        v19 = memcmp(v10, v17, v18);
        v20 = v9 < v16;
        if (v19)
        {
          v20 = v19 < 0;
        }

        if (!v20)
        {
          break;
        }

        v6 = *v11;
        v7 = v11;
        if (!*v11)
        {
          goto LABEL_27;
        }
      }

      v21 = memcmp(v17, v10, v18);
      v22 = v16 < v9;
      if (v21)
      {
        v22 = v21 < 0;
      }

      if (!v22)
      {
        return v11;
      }

      v6 = v11[1];
      if (!v6)
      {
        v7 = v11 + 1;
        goto LABEL_27;
      }
    }
  }

  else
  {
    v11 = a1 + 1;
LABEL_27:
    v23 = operator new(0x50uLL);
    v24 = v23;
    v25 = *a4;
    if (*(*a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external((v23 + 32), *v25, *(v25 + 1));
    }

    else
    {
      v26 = *v25;
      *(v23 + 6) = *(v25 + 2);
      *(v23 + 2) = v26;
    }

    v24[7] = 0;
    v24[8] = 0;
    v24[9] = 0;
    *v24 = 0;
    v24[1] = 0;
    v24[2] = v11;
    *v7 = v24;
    v27 = **a1;
    v28 = v24;
    if (v27)
    {
      *a1 = v27;
      v28 = *v7;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v28);
    a1[2] = (a1[2] + 1);
  }

  return v24;
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRPoolUnit *,std::shared_ptr<mlir::anec::ANECIRPoolUnit>::__shared_ptr_default_delete<mlir::anec::ANECIRPoolUnit,mlir::anec::ANECIRPoolUnit>,std::allocator<mlir::anec::ANECIRPoolUnit>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRPoolUnit *,std::shared_ptr<mlir::anec::ANECIRPoolUnit>::__shared_ptr_default_delete<mlir::anec::ANECIRPoolUnit,mlir::anec::ANECIRPoolUnit>,std::allocator<mlir::anec::ANECIRPoolUnit>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    mlir::anec::ANECIRUnit::~ANECIRUnit(v1);

    operator delete(v2);
  }
}

void ZinIrReductionUnitInfo::~ZinIrReductionUnitInfo(ZinIrReductionUnitInfo *this)
{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
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
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
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
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRGOCUnit *,std::shared_ptr<mlir::anec::ANECIRGOCUnit>::__shared_ptr_default_delete<mlir::anec::ANECIRGOCUnit,mlir::anec::ANECIRGOCUnit>,std::allocator<mlir::anec::ANECIRGOCUnit>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRGOCUnit *,std::shared_ptr<mlir::anec::ANECIRGOCUnit>::__shared_ptr_default_delete<mlir::anec::ANECIRGOCUnit,mlir::anec::ANECIRGOCUnit>,std::allocator<mlir::anec::ANECIRGOCUnit>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    mlir::anec::ANECIRUnit::~ANECIRUnit(v1);

    operator delete(v2);
  }
}

void llvm::SmallVectorTemplateBase<std::pair<std::string,mlir::anec::ANECIRDataType>,false>::grow(uint64_t a1, unint64_t a2)
{
  v18 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v18);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = &v6[32 * v7];
    v9 = v5;
    do
    {
      v10 = *v6;
      *(v9 + 16) = *(v6 + 2);
      *v9 = v10;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(v9 + 24) = *(v6 + 6);
      v9 += 32;
      v6 += 32;
    }

    while (v6 != v8);
    v6 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 32 * v11;
      v13 = &v6[32 * v11 - 9];
      v14 = -v12;
      v15 = v13;
      do
      {
        v16 = *v15;
        v15 -= 32;
        if (v16 < 0)
        {
          operator delete(*(v13 - 23));
        }

        v13 = v15;
        v14 += 32;
      }

      while (v14);
      v6 = *a1;
    }
  }

  v17 = v18;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v17;
}

void **std::map<ZinIrDimension,__CFString const*>::map[abi:nn200100](void **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      v8 = std::__tree<std::__value_type<ZinIrDimension,__CFString const*>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,__CFString const*>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,__CFString const*>>>::__find_equal<ZinIrDimension>(a1, v4, &v15, &v14, a2);
      if (!*v8)
      {
        v9 = v8;
        v10 = operator new(0x30uLL);
        v10[2] = *a2;
        v11 = v15;
        *v10 = 0;
        *(v10 + 1) = 0;
        *(v10 + 2) = v11;
        *v9 = v10;
        v12 = **a1;
        if (v12)
        {
          *a1 = v12;
          v7 = *v9;
        }

        else
        {
          v7 = v10;
        }

        std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v7);
        a1[2] = (a1[2] + 1);
      }

      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<ZinIrDimension,__CFString const*>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,__CFString const*>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,__CFString const*>>>::__find_equal<ZinIrDimension>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 32);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
    }

    else
    {
      v19 = a1 + 1;
    }

LABEL_25:
    *a3 = v19;
    return v5;
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 8))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 32);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
      }

      else
      {
        v23 = a1 + 1;
      }

LABEL_41:
      *a3 = v23;
      return v5;
    }
  }
}

void *llvm::format_provider<unsigned long,void>::format(unint64_t *a1, llvm::StringRef *a2, unsigned __int8 *a3, uint64_t a4)
{
  v15 = a3;
  v16 = a4;
  v6 = llvm::support::detail::HelperFunctions::consumeHexStyle(&v15, a2);
  if ((v6 & 0x100000000) == 0)
  {
    if (v16)
    {
      v8 = 0;
      v9 = *v15;
      if (v9 <= 0x63)
      {
        if (v9 != 68)
        {
          if (v9 != 78)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }

LABEL_18:
        v8 = 0;
        ++v15;
        goto LABEL_19;
      }

      if (v9 == 100)
      {
        goto LABEL_18;
      }

      if (v9 == 110)
      {
LABEL_17:
        ++v15;
        v8 = 1;
LABEL_19:
        --v16;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_20:
    v17 = 0;
    if (llvm::consumeUnsignedInteger(&v15, 0xA, &v17, v7))
    {
      v14 = 0;
    }

    else
    {
      v14 = v17;
    }

    return llvm::write_integer(a2, *a1, v14, v8);
  }

  v10 = v6;
  v17 = 0;
  if (llvm::consumeUnsignedInteger(&v15, 0xA, &v17, v7))
  {
    v11 = 0;
  }

  else
  {
    v11 = v17;
  }

  if (llvm::isPrefixedHexStyle(v10))
  {
    v12 = v11 + 2;
  }

  else
  {
    v12 = v11;
  }

  return llvm::write_hex(a2, *a1, v10, v12, 1);
}

void std::vector<ZinIrCoordinateInfo>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2) + 1;
    if (v9 > 0x1555555555555555)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 > 0x1555555555555555)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v12 = a2;
      v13 = operator new(12 * v11);
      a2 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[4 * (v8 >> 2)];
    v15 = &v13[12 * v11];
    *v14 = *a2;
    *(v14 + 2) = *(a2 + 2);
    v6 = v14 + 12;
    v16 = &v14[-v8];
    memcpy(&v14[-v8], v7, v8);
    *a1 = v16;
    *(a1 + 8) = v6;
    *(a1 + 16) = v15;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = (v4 + 12);
  }

  *(a1 + 8) = v6;
}

uint64_t mlir::anec::ANECIROutput::ANECIROutput(uint64_t a1, __int128 *a2, __int128 *a3, int a4, __int128 *a5, __int128 *a6)
{
  *a1 = &unk_1F5B2E868;
  v11 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v11, *a2, *(a2 + 1));
  }

  else
  {
    v12 = *a2;
    v11->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v11->__r_.__value_.__l.__data_ = v12;
  }

  *(a1 + 32) = 1;
  *(a1 + 40) = &unk_1F5B2E9F8;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a5, *(a5 + 1));
    if ((*(a6 + 23) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = *a5;
    *(a1 + 64) = *(a5 + 2);
    *(a1 + 48) = v13;
    if ((*(a6 + 23) & 0x80000000) == 0)
    {
LABEL_6:
      v14 = *a6;
      *(a1 + 88) = *(a6 + 2);
      *(a1 + 72) = v14;
      goto LABEL_9;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 72), *a6, *(a6 + 1));
LABEL_9:
  *a1 = &unk_1F5B2E9B0;
  *(a1 + 40) = &unk_1F5B2E9D8;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 112), *a3, *(a3 + 1));
  }

  else
  {
    v15 = *a3;
    *(a1 + 128) = *(a3 + 2);
    *(a1 + 112) = v15;
  }

  *(a1 + 136) = a4;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void mlir::anec::ANECIROutput::~ANECIROutput(void **this)
{
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  this[5] = &unk_1F5B2E9F8;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(this[6]);
LABEL_5:
  *this = &unk_1F5B2E868;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  this[5] = &unk_1F5B2E9F8;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(this[6]);
LABEL_5:
  *this = &unk_1F5B2E868;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  operator delete(this);
}

void mlir::anec::ANECIROutput::UpdateNamesWithProcName(uint64_t a1, uint64_t a2, uint64_t **a3, void *a4)
{
  v8 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *v8;
    __p.__r_.__value_.__r.__words[2] = *(a1 + 24);
  }

  mlir::anec::PrependProcNameToName(v8);
  mlir::anec::PrependProcNameToNameAndShorten(a1 + 112, a2, a4);
  v11 = v8;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v8, &std::piecewise_construct, &v11);
  std::string::operator=((v9 + 7), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void non-virtual thunk tomlir::anec::ANECIROutput::~ANECIROutput(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  *this = &unk_1F5B2E9F8;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((*(this + 31) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(this[1]);
LABEL_5:
  *(this - 5) = &unk_1F5B2E868;
  if (*(this - 9) < 0)
  {
    v2 = *(this - 4);

    operator delete(v2);
  }
}

{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  *this = &unk_1F5B2E9F8;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((*(this + 31) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(this[1]);
LABEL_5:
  *(this - 5) = &unk_1F5B2E868;
  if (*(this - 9) < 0)
  {
    operator delete(*(this - 4));
  }

  operator delete(this - 5);
}

void mlir::anec::ANECIRProcedureAttributes::~ANECIRProcedureAttributes(void **this)
{
  *this = &unk_1F5B2E9F8;
  if ((*(this + 55) & 0x80000000) == 0)
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[1]);
    return;
  }

  operator delete(this[4]);
  if (*(this + 31) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_1F5B2E9F8;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(this + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1]);
LABEL_3:

  operator delete(this);
}

void std::__shared_ptr_pointer<mlir::anec::ANECIROutput *,std::shared_ptr<mlir::anec::ANECIROutput>::__shared_ptr_default_delete<mlir::anec::ANECIROutput,mlir::anec::ANECIROutput>,std::allocator<mlir::anec::ANECIROutput>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<mlir::anec::ANECIROutput *,std::shared_ptr<mlir::anec::ANECIROutput>::__shared_ptr_default_delete<mlir::anec::ANECIROutput,mlir::anec::ANECIROutput>,std::allocator<mlir::anec::ANECIROutput>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return;
  }

  if (*(v1 + 135) < 0)
  {
    operator delete(v1[14]);
  }

  v1[5] = &unk_1F5B2E9F8;
  if (*(v1 + 95) < 0)
  {
    operator delete(v1[9]);
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    operator delete(v1[6]);
    goto LABEL_6;
  }

  if (*(v1 + 71) < 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v1 = &unk_1F5B2E868;
  if (*(v1 + 31) < 0)
  {
    operator delete(v1[1]);
  }

  operator delete(v1);
}

void *mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.A11Legacy", 14, a2, &mlir::detail::TypeIDResolver<mlir::anec::A11Legacy,void>::id, &v9);
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

  *a1 = &unk_1F5B2EA50;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9A11LegacyEJNS3_7OpTrait9OneRegionENSI_11ZeroResultsENSI_14ZeroSuccessorsENSI_12ZeroOperandsENSI_12OpInvariantsENS3_17SymbolOpInterface5TraitENS3_19CallableOpInterface5TraitENS3_19FunctionOpInterface5TraitENSI_19IsIsolatedFromAboveENSI_8RegionOpENS3_24TargetLegalizerInterface5TraitENS3_25FormableRegionOpInterface5TraitENSG_26RegionPerformanceInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE0EE4ImplENS13_ILS14_1EE4ImplENS13_ILS14_2EE4ImplENS13_ILS14_3EE4ImplENS13_ILS14_4EE4ImplENS13_ILS14_5EE4ImplENS13_ILS14_6EE4ImplENS13_ILS14_7EE4ImplENS3_24ExecutionCostOpInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1O_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9A11LegacyEJNS3_7OpTrait9OneRegionENSI_11ZeroResultsENSI_14ZeroSuccessorsENSI_12ZeroOperandsENSI_12OpInvariantsENS3_17SymbolOpInterface5TraitENS3_19CallableOpInterface5TraitENS3_19FunctionOpInterface5TraitENSI_19IsIsolatedFromAboveENSI_8RegionOpENS3_24TargetLegalizerInterface5TraitENS3_25FormableRegionOpInterface5TraitENSG_26RegionPerformanceInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE0EE4ImplENS13_ILS14_1EE4ImplENS13_ILS14_2EE4ImplENS13_ILS14_3EE4ImplENS13_ILS14_4EE4ImplENS13_ILS14_5EE4ImplENS13_ILS14_6EE4ImplENS13_ILS14_7EE4ImplENS3_24ExecutionCostOpInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1O_vE9CallbacksE[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9A11LegacyEJNS2_7OpTrait9OneRegionENS9_11ZeroResultsENS9_14ZeroSuccessorsENS9_12ZeroOperandsENS9_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENS9_19IsIsolatedFromAboveENS9_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENS7_26RegionPerformanceInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE0EE4ImplENSU_ILSV_1EE4ImplENSU_ILSV_2EE4ImplENSU_ILSV_3EE4ImplENSU_ILSV_4EE4ImplENSU_ILSV_5EE4ImplENSU_ILSV_6EE4ImplENSU_ILSV_7EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS1F_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9A11LegacyEJNS2_7OpTrait9OneRegionENS9_11ZeroResultsENS9_14ZeroSuccessorsENS9_12ZeroOperandsENS9_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENS9_19IsIsolatedFromAboveENS9_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENS7_26RegionPerformanceInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE0EE4ImplENSU_ILSV_1EE4ImplENSU_ILSV_2EE4ImplENSU_ILSV_3EE4ImplENSU_ILSV_4EE4ImplENSU_ILSV_5EE4ImplENSU_ILSV_6EE4ImplENSU_ILSV_7EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS1F_vE9CallbacksE[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9A11LegacyEJNS2_7OpTrait9OneRegionENSD_11ZeroResultsENSD_14ZeroSuccessorsENSD_12ZeroOperandsENSD_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENSD_19IsIsolatedFromAboveENSD_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENSB_26RegionPerformanceInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE0EE4ImplENSY_ILSZ_1EE4ImplENSY_ILSZ_2EE4ImplENSY_ILSZ_3EE4ImplENSY_ILSZ_4EE4ImplENSY_ILSZ_5EE4ImplENSY_ILSZ_6EE4ImplENSY_ILSZ_7EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1J_vE9CallbacksE + 2;
  (_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9A11LegacyEJNS2_7OpTrait9OneRegionENSD_11ZeroResultsENSD_14ZeroSuccessorsENSD_12ZeroOperandsENSD_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENSD_19IsIsolatedFromAboveENSD_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENSB_26RegionPerformanceInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE0EE4ImplENSY_ILSZ_1EE4ImplENSY_ILSZ_2EE4ImplENSY_ILSZ_3EE4ImplENSY_ILSZ_4EE4ImplENSY_ILSZ_5EE4ImplENSY_ILSZ_6EE4ImplENSY_ILSZ_7EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1J_vE9CallbacksE[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::A11Legacy,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::A11Legacy,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(uint64_t a1)
{
  v2 = malloc(0x80uLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(uint64_t a1)
{
  v2 = malloc(0x48uLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getArgumentTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getInputs(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getResultTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getResults(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getArgAttrsAttr(int a1, mlir::Operation *this)
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

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getResAttrsAttr(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 16));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(uint64_t a1)
{
  v2 = malloc(0x38uLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::verifyBody;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::verifyType;
  v2[5] = mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(a1);
  v2[6] = mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(a1);
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::FuncOp>>();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getFunctionType(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::cloneTypeWith(int a1, mlir::Operation *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::clone(&AttrDictionary, a3, a4, a5, a6);
}

uint64_t mlir::detail::FunctionOpInterfaceTrait<mlir::anec::A11Legacy>::verifyBody(mlir::Operation **a1)
{
  v72 = *MEMORY[0x1E69E9840];
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
    v56[0] = "entry block must have ";
    v57 = 259;
    mlir::OpState::emitOpError(a1, v56, &AttrDictionary);
    if (AttrDictionary)
    {
      v58 = 5;
      v59 = v9;
      v17 = &v58;
      v18 = v62;
      if (v63 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v63 > &v58)
        {
          v53 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
          v18 = v62;
          v17 = (v62 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
          v17 = &v58;
          v18 = v62;
        }
      }

      v19 = &v18[24 * v63];
      v20 = *v17;
      *(v19 + 2) = *(v17 + 2);
      *v19 = v20;
      ++v63;
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, " arguments to match function signature");
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v71 != 1)
    {
      return v16;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v69;
      v24 = __p;
      if (v69 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v69 = v22;
      operator delete(v24);
    }

    v25 = v66;
    if (v66)
    {
      v26 = v67;
      v27 = v66;
      if (v67 != v66)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v26 != v25);
        v27 = v66;
      }

      v67 = v25;
      operator delete(v27);
    }

    v51 = v62;
    if (v62 == v65)
    {
      return v16;
    }

LABEL_57:
    free(v51);
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

  v30 = Inputs;
  v56[0] = "type of entry block argument #";
  v57 = 259;
  mlir::OpState::emitOpError(a1, v56, &AttrDictionary);
  if (AttrDictionary)
  {
    v58 = 5;
    v59 = v14;
    v31 = &v58;
    v32 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v54 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v32 = v62;
        v31 = (v62 + v54);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v31 = &v58;
        v32 = v62;
      }
    }

    v33 = &v32[24 * v63];
    v34 = *v31;
    *(v33 + 2) = *(v31 + 2);
    *v33 = v34;
    ++v63;
    if (AttrDictionary)
    {
      mlir::Diagnostic::operator<<(&v61, 40);
      if (AttrDictionary)
      {
        v35 = &v58;
        mlir::DiagnosticArgument::DiagnosticArgument(&v58, v15);
        v36 = v62;
        if (v63 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v63 > &v58)
          {
            v55 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
            v36 = v62;
            v35 = (v62 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
            v35 = &v58;
            v36 = v62;
          }
        }

        v37 = &v36[24 * v63];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v63;
      }
    }
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, ") must match the type of the corresponding argument in ");
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v39, "function signature(");
  mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v40, v30);
  if (*v41)
  {
    v42 = v41;
    mlir::Diagnostic::operator<<((v41 + 1), 41);
    v41 = v42;
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v71)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v69;
      v45 = __p;
      if (v69 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v69 = v43;
      operator delete(v45);
    }

    v46 = v66;
    if (v66)
    {
      v47 = v67;
      v48 = v66;
      if (v67 != v66)
      {
        do
        {
          v50 = *--v47;
          v49 = v50;
          *v47 = 0;
          if (v50)
          {
            operator delete[](v49);
          }
        }

        while (v47 != v46);
        v48 = v66;
      }

      v67 = v46;
      operator delete(v48);
    }

    v51 = v62;
    if (v62 != v65)
    {
      goto LABEL_57;
    }
  }

  return v16;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(uint64_t a1)
{
  v2 = malloc(0x30uLL);
  v3 = v2;
  *v2 = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::legalizeBody;
  v2[1] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::legalizeRegionBody;
  v2[2] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getFunctionType;
  v2[3] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setFunctionType;
  v2[4] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getBody;
  v2[5] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getBodyBlock;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getFunctionType(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

void mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setFunctionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a2 + 48) + 96) + 8);
  v5 = mlir::TypeAttr::get(a3);

  mlir::Operation::setAttr(a2, v4, v5);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getBodyBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    return v2 - 8;
  }

  else
  {
    return 0;
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::isRegionProfitable;
  v2[1] = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::build;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(uint64_t a1)
{
  v2 = malloc(0x20uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getMemoryLinkWidthBytes;
  v2[1] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getMemoryClockRateHz;
  v2[2] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getComputeClockRateHz;
  v2[3] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getNumberOfNEs;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::RegionPerformanceInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

const char *llvm::getTypeName<mlir::anec::RegionPerformanceInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::RegionPerformanceInterface]";
  v6 = 88;
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>(uint64_t a1)
{
  {
    v44 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    a1 = v44;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v45 = a1;
    v46 = v1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
    v1 = v46;
    a1 = v45;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = a1;
    v48 = v1;
    v49 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v49;
    v1 = v48;
    a1 = v47;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = a1;
    v51 = v1;
    v52 = v2;
    v53 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::OpTrait::Stitchable,mlir::DowngraderInterface::Trait>();
    v3 = v53;
    v2 = v52;
    v1 = v51;
    a1 = v50;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v269 = a1;
    v54 = v1;
    v55 = v2;
    v56 = v3;
    v57 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v57;
    v3 = v56;
    v2 = v55;
    v1 = v54;
    a1 = v269;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v252 = v2;
    v270 = a1;
    v58 = v1;
    v59 = v3;
    v60 = v4;
    v61 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v5 = v61;
    v4 = v60;
    v3 = v59;
    v2 = v252;
    a1 = v270;
    v1 = v58;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v253 = v2;
    v271 = a1;
    v62 = v1;
    v63 = v3;
    v236 = v4;
    v64 = v5;
    v65 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v6 = v65;
    v5 = v64;
    v4 = v236;
    v2 = v253;
    v3 = v63;
    v1 = v62;
    a1 = v271;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v254 = v2;
    v272 = a1;
    v66 = v1;
    v67 = v3;
    v221 = v7;
    v237 = v4;
    v68 = v5;
    v69 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v7 = v221;
    v4 = v237;
    v6 = v69;
    v5 = v68;
    v3 = v67;
    v2 = v254;
    a1 = v272;
    v1 = v66;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v255 = v2;
    v273 = a1;
    v70 = v1;
    v71 = v3;
    v222 = v7;
    v238 = v4;
    v72 = v5;
    v73 = v6;
    v207 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v8 = v207;
    v7 = v222;
    v6 = v73;
    v5 = v72;
    v4 = v238;
    v2 = v255;
    v3 = v71;
    v1 = v70;
    a1 = v273;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v256 = v2;
    v274 = a1;
    v74 = v1;
    v75 = v3;
    v223 = v7;
    v239 = v4;
    v76 = v5;
    v77 = v6;
    v208 = v8;
    v194 = v9;
    mlir::anec::parentIsAtLeast<(mlir::anec::Family)2>();
    v9 = v194;
    v8 = v208;
    v7 = v223;
    v6 = v77;
    v5 = v76;
    v4 = v239;
    v2 = v256;
    v3 = v75;
    v1 = v74;
    a1 = v274;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v257 = v2;
    v275 = a1;
    v78 = v1;
    v79 = v3;
    v224 = v7;
    v240 = v4;
    v80 = v5;
    v81 = v6;
    v209 = v8;
    v182 = v10;
    v195 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v10 = v182;
    v9 = v195;
    v8 = v209;
    v7 = v224;
    v6 = v81;
    v5 = v80;
    v4 = v240;
    v2 = v257;
    v3 = v79;
    v1 = v78;
    a1 = v275;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::TargetLegalizerInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v258 = v2;
    v276 = a1;
    v82 = v1;
    v83 = v3;
    v225 = v7;
    v241 = v4;
    v84 = v5;
    v85 = v6;
    v210 = v8;
    v183 = v10;
    v196 = v9;
    v171 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v11 = v171;
    v10 = v183;
    v9 = v196;
    v8 = v210;
    v7 = v225;
    v6 = v85;
    v5 = v84;
    v4 = v241;
    v2 = v258;
    v3 = v83;
    v1 = v82;
    a1 = v276;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FormableRegionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v259 = v2;
    v277 = a1;
    v86 = v1;
    v87 = v3;
    v226 = v7;
    v242 = v4;
    v88 = v5;
    v89 = v6;
    v211 = v8;
    v184 = v10;
    v197 = v9;
    v161 = v12;
    v172 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v12 = v161;
    v11 = v172;
    v10 = v184;
    v9 = v197;
    v8 = v211;
    v7 = v226;
    v6 = v89;
    v5 = v88;
    v4 = v242;
    v2 = v259;
    v3 = v87;
    v1 = v86;
    a1 = v277;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::anec::RegionPerformanceInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::RegionPerformanceInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v260 = v2;
    v278 = a1;
    v90 = v1;
    v91 = v3;
    v227 = v7;
    v243 = v4;
    v92 = v5;
    v93 = v6;
    v212 = v8;
    v185 = v10;
    v198 = v9;
    v162 = v12;
    v173 = v11;
    v152 = v13;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v13 = v152;
    v12 = v162;
    v11 = v173;
    v10 = v185;
    v9 = v198;
    v8 = v212;
    v7 = v227;
    v6 = v93;
    v5 = v92;
    v4 = v243;
    v2 = v260;
    v3 = v91;
    v1 = v90;
    a1 = v278;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v261 = v2;
    v279 = a1;
    v94 = v1;
    v95 = v3;
    v228 = v7;
    v244 = v4;
    v96 = v5;
    v97 = v6;
    v213 = v8;
    v186 = v10;
    v199 = v9;
    v163 = v12;
    v174 = v11;
    v144 = v14;
    v153 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v14 = v144;
    v13 = v153;
    v12 = v163;
    v11 = v174;
    v10 = v186;
    v9 = v199;
    v8 = v213;
    v7 = v228;
    v6 = v97;
    v5 = v96;
    v4 = v244;
    v2 = v261;
    v3 = v95;
    v1 = v94;
    a1 = v279;
  }

  v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v262 = v2;
    v280 = a1;
    v98 = v1;
    v99 = v3;
    v229 = v7;
    v245 = v4;
    v100 = v5;
    v101 = v6;
    v214 = v8;
    v187 = v10;
    v200 = v9;
    v164 = v12;
    v175 = v11;
    v145 = v14;
    v154 = v13;
    v137 = v15;
    mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>();
    v15 = v137;
    v14 = v145;
    v13 = v154;
    v12 = v164;
    v11 = v175;
    v10 = v187;
    v9 = v200;
    v8 = v214;
    v7 = v229;
    v6 = v101;
    v5 = v100;
    v4 = v245;
    v2 = v262;
    v3 = v99;
    v1 = v98;
    a1 = v280;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v263 = v2;
    v281 = a1;
    v102 = v1;
    v103 = v3;
    v230 = v7;
    v246 = v4;
    v104 = v5;
    v105 = v6;
    v215 = v8;
    v188 = v10;
    v201 = v9;
    v165 = v12;
    v176 = v11;
    v146 = v14;
    v155 = v13;
    v131 = v16;
    v138 = v15;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v16 = v131;
    v15 = v138;
    v14 = v146;
    v13 = v155;
    v12 = v165;
    v11 = v176;
    v10 = v188;
    v9 = v201;
    v8 = v215;
    v7 = v230;
    v6 = v105;
    v5 = v104;
    v4 = v246;
    v2 = v263;
    v3 = v103;
    v1 = v102;
    a1 = v281;
  }

  v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v264 = v2;
    v282 = a1;
    v106 = v1;
    v107 = v3;
    v231 = v7;
    v247 = v4;
    v108 = v5;
    v109 = v6;
    v216 = v8;
    v189 = v10;
    v202 = v9;
    v166 = v12;
    v177 = v11;
    v147 = v14;
    v156 = v13;
    v132 = v16;
    v139 = v15;
    v126 = v17;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v17 = v126;
    v16 = v132;
    v15 = v139;
    v14 = v147;
    v13 = v156;
    v12 = v166;
    v11 = v177;
    v10 = v189;
    v9 = v202;
    v8 = v216;
    v7 = v231;
    v6 = v109;
    v5 = v108;
    v4 = v247;
    v2 = v264;
    v3 = v107;
    v1 = v106;
    a1 = v282;
  }

  v18 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v265 = v2;
    v283 = a1;
    v110 = v1;
    v111 = v3;
    v248 = v4;
    v112 = v5;
    v122 = v6;
    v217 = v8;
    v232 = v7;
    v190 = v10;
    v203 = v9;
    v167 = v12;
    v178 = v11;
    v148 = v14;
    v157 = v13;
    v133 = v16;
    v140 = v15;
    v127 = v17;
    mlir::anec::getOpMinimumFamily();
    v17 = v127;
    v16 = v133;
    v15 = v140;
    v14 = v148;
    v13 = v157;
    v12 = v167;
    v11 = v178;
    v10 = v190;
    v9 = v203;
    v8 = v217;
    v7 = v232;
    v6 = v122;
    v5 = v112;
    v4 = v248;
    v2 = v265;
    v3 = v111;
    v1 = v110;
    a1 = v283;
  }

  v19 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v266 = v2;
    v284 = a1;
    v113 = v1;
    v114 = v3;
    v249 = v4;
    v119 = v5;
    v123 = v6;
    v218 = v8;
    v233 = v7;
    v191 = v10;
    v204 = v9;
    v168 = v12;
    v179 = v11;
    v149 = v14;
    v158 = v13;
    v134 = v16;
    v141 = v15;
    v128 = v17;
    mlir::anec::getOpMinimumFamily();
    v17 = v128;
    v16 = v134;
    v15 = v141;
    v14 = v149;
    v13 = v158;
    v12 = v168;
    v11 = v179;
    v10 = v191;
    v9 = v204;
    v8 = v218;
    v7 = v233;
    v5 = v119;
    v6 = v123;
    v4 = v249;
    v2 = v266;
    v3 = v114;
    v1 = v113;
    a1 = v284;
  }

  v20 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v267 = v2;
    v285 = a1;
    v115 = v1;
    v117 = v3;
    v250 = v4;
    v120 = v5;
    v124 = v6;
    v219 = v8;
    v234 = v7;
    v192 = v10;
    v205 = v9;
    v169 = v12;
    v180 = v11;
    v150 = v14;
    v159 = v13;
    v135 = v16;
    v142 = v15;
    v129 = v17;
    mlir::anec::getOpMinimumFamily();
    v17 = v129;
    v16 = v135;
    v15 = v142;
    v14 = v150;
    v13 = v159;
    v12 = v169;
    v11 = v180;
    v10 = v192;
    v9 = v205;
    v8 = v219;
    v7 = v234;
    v5 = v120;
    v6 = v124;
    v4 = v250;
    v2 = v267;
    v3 = v117;
    v1 = v115;
    a1 = v285;
  }

  v21 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v286 = a1;
    v116 = v1;
    v268 = v2;
    v118 = v3;
    v251 = v4;
    v121 = v5;
    v125 = v6;
    v220 = v8;
    v235 = v7;
    v193 = v10;
    v206 = v9;
    v170 = v12;
    v181 = v11;
    v151 = v14;
    v160 = v13;
    v136 = v16;
    v143 = v15;
    v130 = v17;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v17 = v130;
    v16 = v136;
    v15 = v143;
    v14 = v151;
    v13 = v160;
    v12 = v170;
    v11 = v181;
    v10 = v193;
    v9 = v206;
    v8 = v220;
    v7 = v235;
    v5 = v121;
    v6 = v125;
    v4 = v251;
    v2 = v268;
    v1 = v116;
    v3 = v118;
    a1 = v286;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || v19 == a1 || v20 == a1 || v21 == a1 || mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::anec::RegionPerformanceInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::RegionPerformanceInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::RegionPerformanceInterface::Trait<Empty>]";
  v6 = 102;
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

const char *llvm::getTypeName<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::anec::MinimumFamily<mlir::anec::Family::A12>::Impl<Empty>]";
  v6 = 122;
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

const char *llvm::getTypeName<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::anec::MinimumFamily<mlir::anec::Family::A13>::Impl<Empty>]";
  v6 = 122;
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

const char *llvm::getTypeName<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::anec::MinimumFamily<mlir::anec::Family::A15>::Impl<Empty>]";
  v6 = 122;
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

const char *llvm::getTypeName<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::anec::MinimumFamily<mlir::anec::Family::A16>::Impl<Empty>]";
  v6 = 122;
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

const char *llvm::getTypeName<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::anec::MinimumFamily<mlir::anec::Family::A17>::Impl<Empty>]";
  v6 = 122;
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

const char *llvm::getTypeName<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::anec::MinimumFamily<mlir::anec::Family::A18>::Impl<Empty>]";
  v6 = 122;
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

const char *llvm::getTypeName<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::anec::MinimumFamily<mlir::anec::Family::A11Legacy>::Impl<Empty>]";
  v6 = 128;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::anec::A11Legacy,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v10 = *(*(*(a2 + 48) + 96) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v10);
  mlir::function_interface_impl::printFunctionOp(a3, a2, InterfaceFor, 0, AttrData, v9, **(*(a2 + 48) + 96), *(*(*(a2 + 48) + 96) + 16));
}

BOOL mlir::detail::SymbolOpInterfaceTrait<mlir::anec::A11Legacy>::verifyTrait(mlir::detail *a1, mlir::Operation *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = a1;
  if (!mlir::detail::verifySymbol(a1, a2))
  {
    return 0;
  }

  v3 = *(a1 + 2);
  if (!v3)
  {
    return 1;
  }

  ParentOp = mlir::Block::getParentOp(v3);
  if (!ParentOp)
  {
    return 1;
  }

  v5 = ParentOp;
  {
    mlir::detail::SymbolOpInterfaceTrait<mlir::anec::A11Legacy>::verifyTrait();
  }

  if (((*(**(v5 + 48) + 32))(*(v5 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) != 0 || *(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

  v16 = "symbol's parent must have the SymbolTable trait";
  v17 = 259;
  mlir::OpState::emitOpError(&v18, &v16, v19);
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

uint64_t mlir::function_interface_impl::verifyTrait<mlir::anec::A11Legacy>(mlir::Operation *a1)
{
  v175 = *MEMORY[0x1E69E9840];
  v164 = a1;
  v166[0] = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(v166);
  v166[0] = mlir::Operation::getAttrDictionary(a1);
  v3 = mlir::ArrayAttr::getValue(v166);
  v5 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 32), **(*(a1 + 6) + 96));
  if (v5)
  {
    v6 = *(*v5 + 136);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
    v8 = v6 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id ? v5 : 0;
    v163 = v8;
    if (v7)
    {
      v166[0] = mlir::Operation::getAttrDictionary(a1);
      v25 = mlir::ArrayAttr::getValue(v166);
      v166[0] = mlir::Operation::getAttrDictionary(v164);
      v26 = mlir::ArrayAttr::getValue(v166);
      v166[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v25, (v26 + 16 * v27 - 16), *(*(*(v164 + 6) + 96) + 8));
      v166[0] = mlir::AffineMapAttr::getValue(v166);
      mlir::FunctionType::getInputs(v166);
      v29 = v28;
      mlir::ArrayAttr::getValue(&v163);
      v30 = v29;
      if (v31 != v29)
      {
        v162 = 257;
        mlir::OpState::emitOpError(&v164, v161, v166);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v166, "expects argument attribute array to have the same number of elements as the number of function arguments, got ");
        v60 = v59;
        mlir::ArrayAttr::getValue(&v163);
        v62 = v60;
        if (*v60)
        {
          v63 = *(v60 + 24);
          LODWORD(v165) = 5;
          *(&v165 + 1) = v61;
          v64 = *(v60 + 32);
          v65 = &v165;
          if (v64 >= *(v60 + 36))
          {
            if (v63 <= &v165 && v63 + 24 * v64 > &v165)
            {
              v150 = &v166[-1] - v63;
              v151 = v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v62 + 24, v62 + 40, v64 + 1, 24);
              v62 = v151;
              v63 = *(v151 + 24);
              v65 = &v150[v63];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v60 + 24, v60 + 40, v64 + 1, 24);
              v62 = v60;
              v63 = *(v60 + 24);
              v65 = &v165;
            }
          }

          v66 = v63 + 24 * *(v62 + 32);
          v67 = *v65;
          *(v66 + 16) = *(v65 + 2);
          *v66 = v67;
          ++*(v62 + 32);
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v62, ", but expected ");
        if (*v68)
        {
          v69 = *(v68 + 24);
          LODWORD(v165) = 5;
          *(&v165 + 1) = v30;
          v70 = *(v68 + 32);
          v71 = &v165;
          if (v70 >= *(v68 + 36))
          {
            if (v69 <= &v165 && v69 + 24 * v70 > &v165)
            {
              v152 = &v166[-1] - v69;
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
              v71 = &v165;
            }
          }

          v72 = v69 + 24 * *(v68 + 32);
          v73 = *v71;
          *(v72 + 16) = *(v71 + 2);
          *v72 = v73;
          ++*(v68 + 32);
        }

        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v68);
        if (v166[0])
        {
          mlir::InFlightDiagnostic::report(v166);
        }

        if (v174 == 1)
        {
          if (v173 != &v174)
          {
            free(v173);
          }

          v74 = __p;
          if (__p)
          {
            v75 = v172;
            v76 = __p;
            if (v172 != __p)
            {
              do
              {
                v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
              }

              while (v75 != v74);
              v76 = __p;
            }

            v172 = v74;
            operator delete(v76);
          }

          v20 = v169;
          if (!v169)
          {
            goto LABEL_184;
          }

          v77 = v170;
          v22 = v169;
          if (v170 == v169)
          {
            goto LABEL_183;
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
          goto LABEL_182;
        }

        return v16;
      }

      if (v29)
      {
        v32 = 0;
        while (1)
        {
          v33 = *(mlir::ArrayAttr::getValue(&v163) + 8 * v32);
          if (!v33)
          {
            v160 = 0;
LABEL_143:
            v162 = 257;
            mlir::OpState::emitOpError(&v164, v161, v166);
            v114 = v113;
            v115 = mlir::ArrayAttr::getValue(&v163);
            if (*v114)
            {
              v116 = *(v115 + 8 * v32);
              v117 = &v165;
              mlir::DiagnosticArgument::DiagnosticArgument(&v165, v116);
              v118 = v114 + 24;
              v119 = *(v114 + 24);
              v120 = *(v114 + 32);
              if (v120 >= *(v114 + 36))
              {
                if (v119 <= &v165 && v119 + 24 * v120 > &v165)
                {
                  v158 = &v166[-1] - v119;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v118, v114 + 40, v120 + 1, 24);
                  v119 = *(v114 + 24);
                  v117 = &v158[v119];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v118, v114 + 40, v120 + 1, 24);
                  v119 = *(v114 + 24);
                  v117 = &v165;
                }
              }

              v121 = v119 + 24 * *(v114 + 32);
              v122 = *v117;
              *(v121 + 16) = *(v117 + 2);
              *v121 = v122;
              ++*(v114 + 32);
            }

            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v123);
            if (v166[0])
            {
              mlir::InFlightDiagnostic::report(v166);
            }

            if (v174 != 1)
            {
              return v16;
            }

            if (v173 != &v174)
            {
              free(v173);
            }

            v124 = __p;
            if (__p)
            {
              v125 = v172;
              v126 = __p;
              if (v172 != __p)
              {
                do
                {
                  v125 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v125 - 1);
                }

                while (v125 != v124);
                v126 = __p;
              }

              v172 = v124;
              operator delete(v126);
            }

            v20 = v169;
            if (!v169)
            {
              goto LABEL_184;
            }

            v127 = v170;
            v22 = v169;
            if (v170 == v169)
            {
              goto LABEL_183;
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
            goto LABEL_182;
          }

          if (*(*v33 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
          {
            v33 = 0;
          }

          v160 = v33;
          if (!v33)
          {
            goto LABEL_143;
          }

          v34 = mlir::AffineMapAttr::getValue(&v160);
          v35 = mlir::DictionaryAttr::end(&v160);
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
          v165 = *v34;
          v166[0] = mlir::CallGraphNode::getCallableRegion(&v165);
          AttrData = mlir::OpaqueAttr::getAttrData(v166);
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

          NameDialect = mlir::NamedAttribute::getNameDialect(&v165);
          if (NameDialect && ((*(*NameDialect + 80))(NameDialect, v164, 0, v32, v165, *(&v165 + 1)) & 1) == 0)
          {
            return 0;
          }

          if (++v34 == v36)
          {
            goto LABEL_45;
          }
        }

        v161[0] = "arguments may only have dialect attributes";
        v162 = 259;
        mlir::OpState::emitOpError(&v164, v161, v166);
        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v166);
        if (v166[0])
        {
          mlir::InFlightDiagnostic::report(v166);
        }

        if (v174 != 1)
        {
          return v16;
        }

        if (v173 != &v174)
        {
          free(v173);
        }

        v101 = __p;
        if (__p)
        {
          v102 = v172;
          v103 = __p;
          if (v172 != __p)
          {
            do
            {
              v102 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v102 - 1);
            }

            while (v102 != v101);
            v103 = __p;
          }

          v172 = v101;
          operator delete(v103);
        }

        v20 = v169;
        if (!v169)
        {
          goto LABEL_184;
        }

        v104 = v170;
        v22 = v169;
        if (v170 == v169)
        {
          goto LABEL_183;
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
        goto LABEL_182;
      }
    }
  }

LABEL_6:
  v166[0] = mlir::Operation::getAttrDictionary(v164);
  v9 = mlir::ArrayAttr::getValue(v166);
  v166[0] = mlir::Operation::getAttrDictionary(v164);
  v10 = mlir::ArrayAttr::getValue(v166);
  v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v9 + 16), (v10 + 16 * v11 - 16), *(*(*(v164 + 6) + 96) + 16));
  if (v12)
  {
    v13 = *(*v12 + 136);
    v14 = v13 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
    v15 = v13 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id ? v12 : 0;
    v163 = v15;
    if (v14)
    {
      v166[0] = mlir::Operation::getAttrDictionary(v164);
      v42 = mlir::ArrayAttr::getValue(v166);
      v166[0] = mlir::Operation::getAttrDictionary(v164);
      v43 = mlir::ArrayAttr::getValue(v166);
      v166[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v42, (v43 + 16 * v44 - 16), *(*(*(v164 + 6) + 96) + 8));
      v166[0] = mlir::AffineMapAttr::getValue(v166);
      mlir::FunctionType::getResults(v166);
      v46 = v45;
      mlir::ArrayAttr::getValue(&v163);
      v47 = v46;
      if (v48 != v46)
      {
        v162 = 257;
        mlir::OpState::emitOpError(&v164, v161, v166);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v166, "expects result attribute array to have the same number of elements as the number of function results, got ");
        v81 = v80;
        mlir::ArrayAttr::getValue(&v163);
        v83 = v81;
        if (*v81)
        {
          v84 = *(v81 + 24);
          LODWORD(v165) = 5;
          *(&v165 + 1) = v82;
          v85 = *(v81 + 32);
          v86 = &v165;
          if (v85 >= *(v81 + 36))
          {
            if (v84 <= &v165 && v84 + 24 * v85 > &v165)
            {
              v154 = &v166[-1] - v84;
              v155 = v83;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v83 + 24, v83 + 40, v85 + 1, 24);
              v83 = v155;
              v84 = *(v155 + 24);
              v86 = &v154[v84];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v81 + 24, v81 + 40, v85 + 1, 24);
              v83 = v81;
              v84 = *(v81 + 24);
              v86 = &v165;
            }
          }

          v87 = v84 + 24 * *(v83 + 32);
          v88 = *v86;
          *(v87 + 16) = *(v86 + 2);
          *v87 = v88;
          ++*(v83 + 32);
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v83, ", but expected ");
        if (*v89)
        {
          v90 = *(v89 + 24);
          LODWORD(v165) = 5;
          *(&v165 + 1) = v47;
          v91 = *(v89 + 32);
          v92 = &v165;
          if (v91 >= *(v89 + 36))
          {
            if (v90 <= &v165 && v90 + 24 * v91 > &v165)
            {
              v156 = &v166[-1] - v90;
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
              v92 = &v165;
            }
          }

          v93 = v90 + 24 * *(v89 + 32);
          v94 = *v92;
          *(v93 + 16) = *(v92 + 2);
          *v93 = v94;
          ++*(v89 + 32);
        }

        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v89);
        if (v166[0])
        {
          mlir::InFlightDiagnostic::report(v166);
        }

        if (v174 == 1)
        {
          if (v173 != &v174)
          {
            free(v173);
          }

          v95 = __p;
          if (__p)
          {
            v96 = v172;
            v97 = __p;
            if (v172 != __p)
            {
              do
              {
                v96 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v96 - 1);
              }

              while (v96 != v95);
              v97 = __p;
            }

            v172 = v95;
            operator delete(v97);
          }

          v20 = v169;
          if (!v169)
          {
            goto LABEL_184;
          }

          v98 = v170;
          v22 = v169;
          if (v170 == v169)
          {
            goto LABEL_183;
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
          goto LABEL_182;
        }

        return v16;
      }

      if (v46)
      {
        v49 = 0;
        while (1)
        {
          v50 = *(mlir::ArrayAttr::getValue(&v163) + 8 * v49);
          if (!v50)
          {
            v160 = 0;
LABEL_163:
            v162 = 257;
            mlir::OpState::emitOpError(&v164, v161, v166);
            v131 = v130;
            v132 = mlir::ArrayAttr::getValue(&v163);
            if (*v131)
            {
              v133 = *(v132 + 8 * v49);
              v134 = &v165;
              mlir::DiagnosticArgument::DiagnosticArgument(&v165, v133);
              v135 = v131 + 24;
              v136 = *(v131 + 24);
              v137 = *(v131 + 32);
              if (v137 >= *(v131 + 36))
              {
                if (v136 <= &v165 && v136 + 24 * v137 > &v165)
                {
                  v159 = &v166[-1] - v136;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v135, v131 + 40, v137 + 1, 24);
                  v136 = *(v131 + 24);
                  v134 = &v159[v136];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v135, v131 + 40, v137 + 1, 24);
                  v136 = *(v131 + 24);
                  v134 = &v165;
                }
              }

              v138 = v136 + 24 * *(v131 + 32);
              v139 = *v134;
              *(v138 + 16) = *(v134 + 2);
              *v138 = v139;
              ++*(v131 + 32);
            }

            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v140);
            if (v166[0])
            {
              mlir::InFlightDiagnostic::report(v166);
            }

            if (v174 != 1)
            {
              return v16;
            }

            if (v173 != &v174)
            {
              free(v173);
            }

            v141 = __p;
            if (__p)
            {
              v142 = v172;
              v143 = __p;
              if (v172 != __p)
              {
                do
                {
                  v142 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v142 - 1);
                }

                while (v142 != v141);
                v143 = __p;
              }

              v172 = v141;
              operator delete(v143);
            }

            v20 = v169;
            if (!v169)
            {
              goto LABEL_184;
            }

            v144 = v170;
            v22 = v169;
            if (v170 == v169)
            {
              goto LABEL_183;
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
            goto LABEL_182;
          }

          if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
          {
            v50 = 0;
          }

          v160 = v50;
          if (!v50)
          {
            goto LABEL_163;
          }

          v51 = mlir::AffineMapAttr::getValue(&v160);
          v52 = mlir::DictionaryAttr::end(&v160);
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
          v165 = *v51;
          v166[0] = mlir::CallGraphNode::getCallableRegion(&v165);
          v54 = mlir::OpaqueAttr::getAttrData(v166);
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

          v58 = mlir::NamedAttribute::getNameDialect(&v165);
          if (v58 && ((*(*v58 + 88))(v58, v164, 0, v49, v165, *(&v165 + 1)) & 1) == 0)
          {
            return 0;
          }

          if (++v51 == v53)
          {
            goto LABEL_63;
          }
        }

        v161[0] = "results may only have dialect attributes";
        v162 = 259;
        mlir::OpState::emitOpError(&v164, v161, v166);
        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v166);
        if (v166[0])
        {
          mlir::InFlightDiagnostic::report(v166);
        }

        if (v174 != 1)
        {
          return v16;
        }

        if (v173 != &v174)
        {
          free(v173);
        }

        v107 = __p;
        if (__p)
        {
          v108 = v172;
          v109 = __p;
          if (v172 != __p)
          {
            do
            {
              v108 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v108 - 1);
            }

            while (v108 != v107);
            v109 = __p;
          }

          v172 = v107;
          operator delete(v109);
        }

        v20 = v169;
        if (!v169)
        {
          goto LABEL_184;
        }

        v110 = v170;
        v22 = v169;
        if (v170 == v169)
        {
          goto LABEL_183;
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
        goto LABEL_182;
      }
    }
  }

LABEL_11:
  if ((*(v164 + 11) & 0x7FFFFF) == 1)
  {
    return mlir::detail::FunctionOpInterfaceTrait<mlir::anec::A11Legacy>::verifyBody(&v164);
  }

  v161[0] = "expects one region";
  v162 = 259;
  mlir::OpState::emitOpError(&v164, v161, v166);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v166);
  if (v166[0])
  {
    mlir::InFlightDiagnostic::report(v166);
  }

  if (v174 == 1)
  {
    if (v173 != &v174)
    {
      free(v173);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v172;
      v19 = __p;
      if (v172 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v172 = v17;
      operator delete(v19);
    }

    v20 = v169;
    if (!v169)
    {
      goto LABEL_184;
    }

    v21 = v170;
    v22 = v169;
    if (v170 == v169)
    {
LABEL_183:
      v170 = v20;
      operator delete(v22);
LABEL_184:
      if (v167 != &v168)
      {
        free(v167);
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
LABEL_182:
    v22 = v169;
    goto LABEL_183;
  }

  return v16;
}

uint64_t mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(uint64_t ParentOp)
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
        mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
      }

      if (!(*(**(ParentOp + 48) + 32))(*(ParentOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        continue;
      }
    }

    return ParentOp;
  }

  return 0;
}

uint64_t mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl>(uint64_t ParentOp)
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
        mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
      }

      if (!(*(**(ParentOp + 48) + 32))(*(ParentOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        continue;
      }
    }

    return ParentOp;
  }

  return 0;
}

uint64_t mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl>(uint64_t ParentOp)
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
        mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
      }

      if (!(*(**(ParentOp + 48) + 32))(*(ParentOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        continue;
      }
    }

    return ParentOp;
  }

  return 0;
}

uint64_t mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl>(uint64_t ParentOp)
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
        mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
      }

      if (!(*(**(ParentOp + 48) + 32))(*(ParentOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        continue;
      }
    }

    return ParentOp;
  }

  return 0;
}

uint64_t mlir::Operation::hasTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl>(uint64_t a1)
{
  {
    v3 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    a1 = v3;
  }

  v1 = *(**(a1 + 48) + 32);

  return v1();
}

uint64_t mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl>(uint64_t ParentOp)
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
        mlir::anec::getOpMinimumFamily();
      }

      if (!(*(**(ParentOp + 48) + 32))(*(ParentOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        continue;
      }
    }

    return ParentOp;
  }

  return 0;
}

uint64_t mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl>(uint64_t ParentOp)
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
        mlir::anec::getOpMinimumFamily();
      }

      if (!(*(**(ParentOp + 48) + 32))(*(ParentOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        continue;
      }
    }

    return ParentOp;
  }

  return 0;
}

uint64_t mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl>(uint64_t ParentOp)
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
        mlir::anec::getOpMinimumFamily();
      }

      if (!(*(**(ParentOp + 48) + 32))(*(ParentOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        continue;
      }
    }

    return ParentOp;
  }

  return 0;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::A12>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A12>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A12>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A12>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A12>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A12>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A12>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.A12", 8, a2, &mlir::detail::TypeIDResolver<mlir::anec::A12,void>::id, &v9);
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

  *a1 = &unk_1F5B2EB18;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A12>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::A12>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A12>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::A12,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::A12,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::A12,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::A12,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::A12>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::A12,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::A12,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::A12,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::A12,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::anec::A12>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::A12,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::A12,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::A12,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::A12,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A12>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::A12,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A12>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::A12,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::A12>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A12>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>>(uint64_t a1)
{
  v2 = malloc(0x80uLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A12>>(uint64_t a1)
{
  v2 = malloc(0x48uLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::getArgumentTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getInputs(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::getResultTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getResults(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::getArgAttrsAttr(int a1, mlir::Operation *this)
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

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::getResAttrsAttr(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 16));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A12>>(uint64_t a1)
{
  v2 = malloc(0x38uLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::verifyBody;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::verifyType;
  v2[5] = mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(a1);
  v2[6] = mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(a1);
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::FuncOp>>();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::getFunctionType(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::cloneTypeWith(int a1, mlir::Operation *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::clone(&AttrDictionary, a3, a4, a5, a6);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A12>>(uint64_t a1)
{
  v2 = malloc(0x30uLL);
  v3 = v2;
  *v2 = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A12>::legalizeBody;
  v2[1] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A12>::legalizeRegionBody;
  v2[2] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A12>::getFunctionType;
  v2[3] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A12>::setFunctionType;
  v2[4] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A12>::getBody;
  v2[5] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A12>::getBodyBlock;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A12>::getFunctionType(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

void mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A12>::setFunctionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a2 + 48) + 96) + 8);
  v5 = mlir::TypeAttr::get(a3);

  mlir::Operation::setAttr(a2, v4, v5);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A12>::getBodyBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    return v2 - 8;
  }

  else
  {
    return 0;
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A12>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::isRegionProfitable;
  v2[1] = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::build;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A12>>(uint64_t a1)
{
  v2 = malloc(0x20uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A12>::getMemoryLinkWidthBytes;
  v2[1] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A12>::getMemoryClockRateHz;
  v2[2] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A12>::getComputeClockRateHz;
  v2[3] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A12>::getNumberOfNEs;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::RegionPerformanceInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A12>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A12>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>(uint64_t a1)
{
  {
    v135 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    a1 = v135;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v121 = v1;
    v136 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
    v1 = v121;
    a1 = v136;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v122 = v1;
    v137 = a1;
    v108 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v108;
    v1 = v122;
    a1 = v137;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v123 = v1;
    v138 = a1;
    v96 = v3;
    v109 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::OpTrait::Stitchable,mlir::DowngraderInterface::Trait>();
    v3 = v96;
    v2 = v109;
    v1 = v123;
    a1 = v138;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v124 = v1;
    v139 = a1;
    v97 = v3;
    v110 = v2;
    v85 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v85;
    v3 = v97;
    v2 = v110;
    v1 = v124;
    a1 = v139;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v125 = v1;
    v140 = a1;
    v98 = v3;
    v111 = v2;
    v75 = v5;
    v86 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v5 = v75;
    v4 = v86;
    v3 = v98;
    v2 = v111;
    v1 = v125;
    a1 = v140;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v126 = v1;
    v141 = a1;
    v99 = v3;
    v112 = v2;
    v76 = v5;
    v87 = v4;
    v66 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v6 = v66;
    v5 = v76;
    v4 = v87;
    v3 = v99;
    v2 = v112;
    v1 = v126;
    a1 = v141;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v127 = v1;
    v142 = a1;
    v100 = v3;
    v113 = v2;
    v77 = v5;
    v88 = v4;
    v67 = v6;
    v58 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v7 = v58;
    v6 = v67;
    v5 = v77;
    v4 = v88;
    v3 = v100;
    v2 = v113;
    v1 = v127;
    a1 = v142;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v128 = v1;
    v143 = a1;
    v101 = v3;
    v114 = v2;
    v78 = v5;
    v89 = v4;
    v68 = v6;
    v51 = v8;
    v59 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v8 = v51;
    v7 = v59;
    v6 = v68;
    v5 = v78;
    v4 = v89;
    v3 = v101;
    v2 = v114;
    v1 = v128;
    a1 = v143;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v129 = v1;
    v144 = a1;
    v102 = v3;
    v115 = v2;
    v79 = v5;
    v90 = v4;
    v69 = v6;
    v52 = v8;
    v60 = v7;
    v45 = v9;
    mlir::anec::parentIsAtLeast<(mlir::anec::Family)2>();
    v9 = v45;
    v8 = v52;
    v7 = v60;
    v6 = v69;
    v5 = v79;
    v4 = v90;
    v3 = v102;
    v2 = v115;
    v1 = v129;
    a1 = v144;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v130 = v1;
    v145 = a1;
    v103 = v3;
    v116 = v2;
    v80 = v5;
    v91 = v4;
    v70 = v6;
    v53 = v8;
    v61 = v7;
    v40 = v10;
    v46 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v10 = v40;
    v9 = v46;
    v8 = v53;
    v7 = v61;
    v6 = v70;
    v5 = v80;
    v4 = v91;
    v3 = v103;
    v2 = v116;
    v1 = v130;
    a1 = v145;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::TargetLegalizerInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v131 = v1;
    v146 = a1;
    v104 = v3;
    v117 = v2;
    v81 = v5;
    v92 = v4;
    v71 = v6;
    v54 = v8;
    v62 = v7;
    v41 = v10;
    v47 = v9;
    v36 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v11 = v36;
    v10 = v41;
    v9 = v47;
    v8 = v54;
    v7 = v62;
    v6 = v71;
    v5 = v81;
    v4 = v92;
    v3 = v104;
    v2 = v117;
    v1 = v131;
    a1 = v146;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FormableRegionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v132 = v1;
    v147 = a1;
    v105 = v3;
    v118 = v2;
    v82 = v5;
    v93 = v4;
    v72 = v6;
    v55 = v8;
    v63 = v7;
    v42 = v10;
    v48 = v9;
    v33 = v12;
    v37 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v12 = v33;
    v11 = v37;
    v10 = v42;
    v9 = v48;
    v8 = v55;
    v7 = v63;
    v6 = v72;
    v5 = v82;
    v4 = v93;
    v3 = v105;
    v2 = v118;
    v1 = v132;
    a1 = v147;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::anec::RegionPerformanceInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::RegionPerformanceInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v133 = v1;
    v148 = a1;
    v106 = v3;
    v119 = v2;
    v83 = v5;
    v94 = v4;
    v73 = v6;
    v56 = v8;
    v64 = v7;
    v43 = v10;
    v49 = v9;
    v34 = v12;
    v38 = v11;
    v31 = v13;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v13 = v31;
    v12 = v34;
    v11 = v38;
    v10 = v43;
    v9 = v49;
    v8 = v56;
    v7 = v64;
    v6 = v73;
    v5 = v83;
    v4 = v94;
    v3 = v106;
    v2 = v119;
    v1 = v133;
    a1 = v148;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v134 = v1;
    v149 = a1;
    v107 = v3;
    v120 = v2;
    v84 = v5;
    v95 = v4;
    v74 = v6;
    v57 = v8;
    v65 = v7;
    v44 = v10;
    v50 = v9;
    v35 = v12;
    v39 = v11;
    v30 = v14;
    v32 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v14 = v30;
    v13 = v32;
    v12 = v35;
    v11 = v39;
    v10 = v44;
    v9 = v50;
    v8 = v57;
    v7 = v65;
    v6 = v74;
    v5 = v84;
    v4 = v95;
    v3 = v107;
    v2 = v120;
    v1 = v134;
    a1 = v149;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::anec::A12,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v10 = *(*(*(a2 + 48) + 96) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v10);
  mlir::function_interface_impl::printFunctionOp(a3, a2, InterfaceFor, 0, AttrData, v9, **(*(a2 + 48) + 96), *(*(*(a2 + 48) + 96) + 16));
}

void *mlir::RegisteredOperationName::Model<mlir::anec::A13>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A13>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A13>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A13>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A13>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A13>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A13>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.A13", 8, a2, &mlir::detail::TypeIDResolver<mlir::anec::A13,void>::id, &v9);
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

  *a1 = &unk_1F5B2EBE0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A13>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::A13>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A13>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec3A13EJNS3_7OpTrait9OneRegionENSI_11ZeroResultsENSI_14ZeroSuccessorsENSI_12ZeroOperandsENSI_12OpInvariantsENS3_17SymbolOpInterface5TraitENS3_19CallableOpInterface5TraitENS3_19FunctionOpInterface5TraitENSI_19IsIsolatedFromAboveENSI_8RegionOpENS3_24TargetLegalizerInterface5TraitENS3_25FormableRegionOpInterface5TraitENSG_26RegionPerformanceInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE0EE4ImplENS13_ILS14_1EE4ImplENS3_24ExecutionCostOpInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1C_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec3A13EJNS3_7OpTrait9OneRegionENSI_11ZeroResultsENSI_14ZeroSuccessorsENSI_12ZeroOperandsENSI_12OpInvariantsENS3_17SymbolOpInterface5TraitENS3_19CallableOpInterface5TraitENS3_19FunctionOpInterface5TraitENSI_19IsIsolatedFromAboveENSI_8RegionOpENS3_24TargetLegalizerInterface5TraitENS3_25FormableRegionOpInterface5TraitENSG_26RegionPerformanceInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE0EE4ImplENS13_ILS14_1EE4ImplENS3_24ExecutionCostOpInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1C_vE9CallbacksE[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::A13>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec3A13EJNS2_7OpTrait9OneRegionENS9_11ZeroResultsENS9_14ZeroSuccessorsENS9_12ZeroOperandsENS9_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENS9_19IsIsolatedFromAboveENS9_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENS7_26RegionPerformanceInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE0EE4ImplENSU_ILSV_1EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS13_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec3A13EJNS2_7OpTrait9OneRegionENS9_11ZeroResultsENS9_14ZeroSuccessorsENS9_12ZeroOperandsENS9_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENS9_19IsIsolatedFromAboveENS9_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENS7_26RegionPerformanceInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE0EE4ImplENSU_ILSV_1EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS13_vE9CallbacksE[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::anec::A13>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec3A13EJNS2_7OpTrait9OneRegionENSD_11ZeroResultsENSD_14ZeroSuccessorsENSD_12ZeroOperandsENSD_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENSD_19IsIsolatedFromAboveENSD_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENSB_26RegionPerformanceInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE0EE4ImplENSY_ILSZ_1EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS17_vE9CallbacksE + 2;
  (_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec3A13EJNS2_7OpTrait9OneRegionENSD_11ZeroResultsENSD_14ZeroSuccessorsENSD_12ZeroOperandsENSD_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENSD_19IsIsolatedFromAboveENSD_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENSB_26RegionPerformanceInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE0EE4ImplENSY_ILSZ_1EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS17_vE9CallbacksE[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A13>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::A13,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A13>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::A13,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::A13>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A13>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>>(uint64_t a1)
{
  v2 = malloc(0x80uLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A13>>(uint64_t a1)
{
  v2 = malloc(0x48uLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::getArgumentTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getInputs(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::getResultTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getResults(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::getArgAttrsAttr(int a1, mlir::Operation *this)
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

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::getResAttrsAttr(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 16));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A13>>(uint64_t a1)
{
  v2 = malloc(0x38uLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::verifyBody;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::verifyType;
  v2[5] = mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(a1);
  v2[6] = mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(a1);
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::FuncOp>>();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::getFunctionType(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::cloneTypeWith(int a1, mlir::Operation *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::clone(&AttrDictionary, a3, a4, a5, a6);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A13>>(uint64_t a1)
{
  v2 = malloc(0x30uLL);
  v3 = v2;
  *v2 = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A13>::legalizeBody;
  v2[1] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A13>::legalizeRegionBody;
  v2[2] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A13>::getFunctionType;
  v2[3] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A13>::setFunctionType;
  v2[4] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A13>::getBody;
  v2[5] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A13>::getBodyBlock;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A13>::getFunctionType(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

void mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A13>::setFunctionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a2 + 48) + 96) + 8);
  v5 = mlir::TypeAttr::get(a3);

  mlir::Operation::setAttr(a2, v4, v5);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A13>::getBodyBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    return v2 - 8;
  }

  else
  {
    return 0;
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A13>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::isRegionProfitable;
  v2[1] = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::build;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A13>>(uint64_t a1)
{
  v2 = malloc(0x20uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A13>::getMemoryLinkWidthBytes;
  v2[1] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A13>::getMemoryClockRateHz;
  v2[2] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A13>::getComputeClockRateHz;
  v2[3] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A13>::getNumberOfNEs;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::RegionPerformanceInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A13>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A13>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::ExecutionCostOpInterface::Trait>(uint64_t a1)
{
  {
    v152 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    a1 = v152;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v137 = v1;
    v153 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
    v1 = v137;
    a1 = v153;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v138 = v1;
    v154 = a1;
    v123 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v123;
    v1 = v138;
    a1 = v154;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v139 = v1;
    v155 = a1;
    v110 = v3;
    v124 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::OpTrait::Stitchable,mlir::DowngraderInterface::Trait>();
    v3 = v110;
    v2 = v124;
    v1 = v139;
    a1 = v155;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v140 = v1;
    v156 = a1;
    v111 = v3;
    v125 = v2;
    v98 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v98;
    v3 = v111;
    v2 = v125;
    v1 = v140;
    a1 = v156;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v141 = v1;
    v157 = a1;
    v112 = v3;
    v126 = v2;
    v87 = v5;
    v99 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v5 = v87;
    v4 = v99;
    v3 = v112;
    v2 = v126;
    v1 = v141;
    a1 = v157;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v142 = v1;
    v158 = a1;
    v113 = v3;
    v127 = v2;
    v88 = v5;
    v100 = v4;
    v77 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v6 = v77;
    v5 = v88;
    v4 = v100;
    v3 = v113;
    v2 = v127;
    v1 = v142;
    a1 = v158;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v143 = v1;
    v159 = a1;
    v114 = v3;
    v128 = v2;
    v89 = v5;
    v101 = v4;
    v78 = v6;
    v68 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v7 = v68;
    v6 = v78;
    v5 = v89;
    v4 = v101;
    v3 = v114;
    v2 = v128;
    v1 = v143;
    a1 = v159;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v144 = v1;
    v160 = a1;
    v115 = v3;
    v129 = v2;
    v90 = v5;
    v102 = v4;
    v79 = v6;
    v60 = v8;
    v69 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v8 = v60;
    v7 = v69;
    v6 = v79;
    v5 = v90;
    v4 = v102;
    v3 = v115;
    v2 = v129;
    v1 = v144;
    a1 = v160;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v145 = v1;
    v161 = a1;
    v116 = v3;
    v130 = v2;
    v91 = v5;
    v103 = v4;
    v80 = v6;
    v61 = v8;
    v70 = v7;
    v53 = v9;
    mlir::anec::parentIsAtLeast<(mlir::anec::Family)2>();
    v9 = v53;
    v8 = v61;
    v7 = v70;
    v6 = v80;
    v5 = v91;
    v4 = v103;
    v3 = v116;
    v2 = v130;
    v1 = v145;
    a1 = v161;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v146 = v1;
    v162 = a1;
    v117 = v3;
    v131 = v2;
    v92 = v5;
    v104 = v4;
    v81 = v6;
    v62 = v8;
    v71 = v7;
    v47 = v10;
    v54 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v10 = v47;
    v9 = v54;
    v8 = v62;
    v7 = v71;
    v6 = v81;
    v5 = v92;
    v4 = v104;
    v3 = v117;
    v2 = v131;
    v1 = v146;
    a1 = v162;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::TargetLegalizerInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v147 = v1;
    v163 = a1;
    v118 = v3;
    v132 = v2;
    v93 = v5;
    v105 = v4;
    v82 = v6;
    v63 = v8;
    v72 = v7;
    v48 = v10;
    v55 = v9;
    v42 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v11 = v42;
    v10 = v48;
    v9 = v55;
    v8 = v63;
    v7 = v72;
    v6 = v82;
    v5 = v93;
    v4 = v105;
    v3 = v118;
    v2 = v132;
    v1 = v147;
    a1 = v163;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FormableRegionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v148 = v1;
    v164 = a1;
    v119 = v3;
    v133 = v2;
    v94 = v5;
    v106 = v4;
    v83 = v6;
    v64 = v8;
    v73 = v7;
    v49 = v10;
    v56 = v9;
    v38 = v12;
    v43 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v12 = v38;
    v11 = v43;
    v10 = v49;
    v9 = v56;
    v8 = v64;
    v7 = v73;
    v6 = v83;
    v5 = v94;
    v4 = v106;
    v3 = v119;
    v2 = v133;
    v1 = v148;
    a1 = v164;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::anec::RegionPerformanceInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::RegionPerformanceInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v149 = v1;
    v165 = a1;
    v120 = v3;
    v134 = v2;
    v95 = v5;
    v107 = v4;
    v84 = v6;
    v65 = v8;
    v74 = v7;
    v50 = v10;
    v57 = v9;
    v39 = v12;
    v44 = v11;
    v35 = v13;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v13 = v35;
    v12 = v39;
    v11 = v44;
    v10 = v50;
    v9 = v57;
    v8 = v65;
    v7 = v74;
    v6 = v84;
    v5 = v95;
    v4 = v107;
    v3 = v120;
    v2 = v134;
    v1 = v149;
    a1 = v165;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v150 = v1;
    v166 = a1;
    v121 = v3;
    v135 = v2;
    v96 = v5;
    v108 = v4;
    v85 = v6;
    v66 = v8;
    v75 = v7;
    v51 = v10;
    v58 = v9;
    v40 = v12;
    v45 = v11;
    v33 = v14;
    v36 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v14 = v33;
    v13 = v36;
    v12 = v40;
    v11 = v45;
    v10 = v51;
    v9 = v58;
    v8 = v66;
    v7 = v75;
    v6 = v85;
    v5 = v96;
    v4 = v108;
    v3 = v121;
    v2 = v135;
    v1 = v150;
    a1 = v166;
  }

  v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v151 = v1;
    v167 = a1;
    v122 = v3;
    v136 = v2;
    v97 = v5;
    v109 = v4;
    v86 = v6;
    v67 = v8;
    v76 = v7;
    v52 = v10;
    v59 = v9;
    v41 = v12;
    v46 = v11;
    v34 = v14;
    v37 = v13;
    v32 = v15;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v15 = v32;
    v14 = v34;
    v13 = v37;
    v12 = v41;
    v11 = v46;
    v10 = v52;
    v9 = v59;
    v8 = v67;
    v7 = v76;
    v6 = v86;
    v5 = v97;
    v4 = v109;
    v3 = v122;
    v2 = v136;
    v1 = v151;
    a1 = v167;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::anec::A13,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v10 = *(*(*(a2 + 48) + 96) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v10);
  mlir::function_interface_impl::printFunctionOp(a3, a2, InterfaceFor, 0, AttrData, v9, **(*(a2 + 48) + 96), *(*(*(a2 + 48) + 96) + 16));
}

void *mlir::RegisteredOperationName::Model<mlir::anec::A14>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A14>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A14>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A14>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A14>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A14>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A14>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.A14", 8, a2, &mlir::detail::TypeIDResolver<mlir::anec::A14,void>::id, &v9);
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

  *a1 = &unk_1F5B2ECA8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A14>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::A14>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A14>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec3A14EJNS3_7OpTrait9OneRegionENSI_11ZeroResultsENSI_14ZeroSuccessorsENSI_12ZeroOperandsENSI_12OpInvariantsENS3_17SymbolOpInterface5TraitENS3_19CallableOpInterface5TraitENS3_19FunctionOpInterface5TraitENSI_19IsIsolatedFromAboveENSI_8RegionOpENS3_24TargetLegalizerInterface5TraitENS3_25FormableRegionOpInterface5TraitENSG_26RegionPerformanceInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE0EE4ImplENS13_ILS14_1EE4ImplENS13_ILS14_2EE4ImplENS3_24ExecutionCostOpInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec3A14EJNS3_7OpTrait9OneRegionENSI_11ZeroResultsENSI_14ZeroSuccessorsENSI_12ZeroOperandsENSI_12OpInvariantsENS3_17SymbolOpInterface5TraitENS3_19CallableOpInterface5TraitENS3_19FunctionOpInterface5TraitENSI_19IsIsolatedFromAboveENSI_8RegionOpENS3_24TargetLegalizerInterface5TraitENS3_25FormableRegionOpInterface5TraitENSG_26RegionPerformanceInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE0EE4ImplENS13_ILS14_1EE4ImplENS13_ILS14_2EE4ImplENS3_24ExecutionCostOpInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::A14>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec3A14EJNS2_7OpTrait9OneRegionENS9_11ZeroResultsENS9_14ZeroSuccessorsENS9_12ZeroOperandsENS9_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENS9_19IsIsolatedFromAboveENS9_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENS7_26RegionPerformanceInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE0EE4ImplENSU_ILSV_1EE4ImplENSU_ILSV_2EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec3A14EJNS2_7OpTrait9OneRegionENS9_11ZeroResultsENS9_14ZeroSuccessorsENS9_12ZeroOperandsENS9_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENS9_19IsIsolatedFromAboveENS9_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENS7_26RegionPerformanceInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE0EE4ImplENSU_ILSV_1EE4ImplENSU_ILSV_2EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::anec::A14>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec3A14EJNS2_7OpTrait9OneRegionENSD_11ZeroResultsENSD_14ZeroSuccessorsENSD_12ZeroOperandsENSD_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENSD_19IsIsolatedFromAboveENSD_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENSB_26RegionPerformanceInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE0EE4ImplENSY_ILSZ_1EE4ImplENSY_ILSZ_2EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE + 2;
  (_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec3A14EJNS2_7OpTrait9OneRegionENSD_11ZeroResultsENSD_14ZeroSuccessorsENSD_12ZeroOperandsENSD_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENSD_19IsIsolatedFromAboveENSD_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENSB_26RegionPerformanceInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE0EE4ImplENSY_ILSZ_1EE4ImplENSY_ILSZ_2EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A14>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::A14,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A14>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::A14,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::A14>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A14>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>>(uint64_t a1)
{
  v2 = malloc(0x80uLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A14>>(uint64_t a1)
{
  v2 = malloc(0x48uLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::getArgumentTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getInputs(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::getResultTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getResults(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::getArgAttrsAttr(int a1, mlir::Operation *this)
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

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::getResAttrsAttr(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 16));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A14>>(uint64_t a1)
{
  v2 = malloc(0x38uLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::verifyBody;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::verifyType;
  v2[5] = mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(a1);
  v2[6] = mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(a1);
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::FuncOp>>();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::getFunctionType(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::cloneTypeWith(int a1, mlir::Operation *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::clone(&AttrDictionary, a3, a4, a5, a6);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A14>>(uint64_t a1)
{
  v2 = malloc(0x30uLL);
  v3 = v2;
  *v2 = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A14>::legalizeBody;
  v2[1] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A14>::legalizeRegionBody;
  v2[2] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A14>::getFunctionType;
  v2[3] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A14>::setFunctionType;
  v2[4] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A14>::getBody;
  v2[5] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A14>::getBodyBlock;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A14>::getFunctionType(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

void mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A14>::setFunctionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a2 + 48) + 96) + 8);
  v5 = mlir::TypeAttr::get(a3);

  mlir::Operation::setAttr(a2, v4, v5);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A14>::getBodyBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    return v2 - 8;
  }

  else
  {
    return 0;
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A14>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::isRegionProfitable;
  v2[1] = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::build;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A14>>(uint64_t a1)
{
  v2 = malloc(0x20uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A14>::getMemoryLinkWidthBytes;
  v2[1] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A14>::getMemoryClockRateHz;
  v2[2] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A14>::getComputeClockRateHz;
  v2[3] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A14>::getNumberOfNEs;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::RegionPerformanceInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A14>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A14>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::ExecutionCostOpInterface::Trait>(uint64_t a1)
{
  {
    v170 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    a1 = v170;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v154 = v1;
    v171 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
    v1 = v154;
    a1 = v171;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v155 = v1;
    v172 = a1;
    v139 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v139;
    v1 = v155;
    a1 = v172;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v156 = v1;
    v173 = a1;
    v125 = v3;
    v140 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::OpTrait::Stitchable,mlir::DowngraderInterface::Trait>();
    v3 = v125;
    v2 = v140;
    v1 = v156;
    a1 = v173;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v157 = v1;
    v174 = a1;
    v126 = v3;
    v141 = v2;
    v112 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v112;
    v3 = v126;
    v2 = v141;
    v1 = v157;
    a1 = v174;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v158 = v1;
    v175 = a1;
    v127 = v3;
    v142 = v2;
    v100 = v5;
    v113 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v5 = v100;
    v4 = v113;
    v3 = v127;
    v2 = v142;
    v1 = v158;
    a1 = v175;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v159 = v1;
    v176 = a1;
    v128 = v3;
    v143 = v2;
    v101 = v5;
    v114 = v4;
    v89 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v6 = v89;
    v5 = v101;
    v4 = v114;
    v3 = v128;
    v2 = v143;
    v1 = v159;
    a1 = v176;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v160 = v1;
    v177 = a1;
    v129 = v3;
    v144 = v2;
    v102 = v5;
    v115 = v4;
    v79 = v7;
    v90 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v7 = v79;
    v6 = v90;
    v5 = v102;
    v4 = v115;
    v3 = v129;
    v2 = v144;
    v1 = v160;
    a1 = v177;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v161 = v1;
    v178 = a1;
    v130 = v3;
    v145 = v2;
    v103 = v5;
    v116 = v4;
    v80 = v7;
    v91 = v6;
    v70 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v8 = v70;
    v7 = v80;
    v6 = v91;
    v5 = v103;
    v4 = v116;
    v3 = v130;
    v2 = v145;
    v1 = v161;
    a1 = v178;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v162 = v1;
    v179 = a1;
    v131 = v3;
    v146 = v2;
    v104 = v5;
    v117 = v4;
    v81 = v7;
    v92 = v6;
    v62 = v9;
    v71 = v8;
    mlir::anec::parentIsAtLeast<(mlir::anec::Family)2>();
    v9 = v62;
    v8 = v71;
    v7 = v81;
    v6 = v92;
    v5 = v104;
    v4 = v117;
    v3 = v131;
    v2 = v146;
    v1 = v162;
    a1 = v179;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v163 = v1;
    v180 = a1;
    v132 = v3;
    v147 = v2;
    v105 = v5;
    v118 = v4;
    v82 = v7;
    v93 = v6;
    v63 = v9;
    v72 = v8;
    v55 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v10 = v55;
    v9 = v63;
    v8 = v72;
    v7 = v82;
    v6 = v93;
    v5 = v105;
    v4 = v118;
    v3 = v132;
    v2 = v147;
    v1 = v163;
    a1 = v180;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::TargetLegalizerInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v164 = v1;
    v181 = a1;
    v133 = v3;
    v148 = v2;
    v106 = v5;
    v119 = v4;
    v83 = v7;
    v94 = v6;
    v64 = v9;
    v73 = v8;
    v49 = v11;
    v56 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v11 = v49;
    v10 = v56;
    v9 = v64;
    v8 = v73;
    v7 = v83;
    v6 = v94;
    v5 = v106;
    v4 = v119;
    v3 = v133;
    v2 = v148;
    v1 = v164;
    a1 = v181;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FormableRegionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v165 = v1;
    v182 = a1;
    v134 = v3;
    v149 = v2;
    v107 = v5;
    v120 = v4;
    v84 = v7;
    v95 = v6;
    v65 = v9;
    v74 = v8;
    v50 = v11;
    v57 = v10;
    v44 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v12 = v44;
    v11 = v50;
    v10 = v57;
    v9 = v65;
    v8 = v74;
    v7 = v84;
    v6 = v95;
    v5 = v107;
    v4 = v120;
    v3 = v134;
    v2 = v149;
    v1 = v165;
    a1 = v182;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::anec::RegionPerformanceInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::RegionPerformanceInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v166 = v1;
    v183 = a1;
    v135 = v3;
    v150 = v2;
    v108 = v5;
    v121 = v4;
    v85 = v7;
    v96 = v6;
    v66 = v9;
    v75 = v8;
    v51 = v11;
    v58 = v10;
    v40 = v13;
    v45 = v12;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v13 = v40;
    v12 = v45;
    v11 = v51;
    v10 = v58;
    v9 = v66;
    v8 = v75;
    v7 = v85;
    v6 = v96;
    v5 = v108;
    v4 = v121;
    v3 = v135;
    v2 = v150;
    v1 = v166;
    a1 = v183;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v167 = v1;
    v184 = a1;
    v136 = v3;
    v151 = v2;
    v109 = v5;
    v122 = v4;
    v86 = v7;
    v97 = v6;
    v67 = v9;
    v76 = v8;
    v52 = v11;
    v59 = v10;
    v41 = v13;
    v46 = v12;
    v37 = v14;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v14 = v37;
    v13 = v41;
    v12 = v46;
    v11 = v52;
    v10 = v59;
    v9 = v67;
    v8 = v76;
    v7 = v86;
    v6 = v97;
    v5 = v109;
    v4 = v122;
    v3 = v136;
    v2 = v151;
    v1 = v167;
    a1 = v184;
  }

  v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v168 = v1;
    v185 = a1;
    v137 = v3;
    v152 = v2;
    v110 = v5;
    v123 = v4;
    v87 = v7;
    v98 = v6;
    v68 = v9;
    v77 = v8;
    v53 = v11;
    v60 = v10;
    v42 = v13;
    v47 = v12;
    v35 = v15;
    v38 = v14;
    mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>();
    v15 = v35;
    v14 = v38;
    v13 = v42;
    v12 = v47;
    v11 = v53;
    v10 = v60;
    v9 = v68;
    v8 = v77;
    v7 = v87;
    v6 = v98;
    v5 = v110;
    v4 = v123;
    v3 = v137;
    v2 = v152;
    v1 = v168;
    a1 = v185;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v169 = v1;
    v186 = a1;
    v138 = v3;
    v153 = v2;
    v111 = v5;
    v124 = v4;
    v88 = v7;
    v99 = v6;
    v69 = v9;
    v78 = v8;
    v54 = v11;
    v61 = v10;
    v43 = v13;
    v48 = v12;
    v36 = v15;
    v39 = v14;
    v34 = v16;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v16 = v34;
    v15 = v36;
    v14 = v39;
    v13 = v43;
    v12 = v48;
    v11 = v54;
    v10 = v61;
    v9 = v69;
    v8 = v78;
    v7 = v88;
    v6 = v99;
    v5 = v111;
    v4 = v124;
    v3 = v138;
    v2 = v153;
    v1 = v169;
    a1 = v186;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::anec::A14,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v10 = *(*(*(a2 + 48) + 96) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v10);
  mlir::function_interface_impl::printFunctionOp(a3, a2, InterfaceFor, 0, AttrData, v9, **(*(a2 + 48) + 96), *(*(*(a2 + 48) + 96) + 16));
}

void *mlir::RegisteredOperationName::Model<mlir::anec::A15>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A15>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A15>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A15>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A15>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A15>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A15>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.A15", 8, a2, &mlir::detail::TypeIDResolver<mlir::anec::A15,void>::id, &v9);
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

  *a1 = &unk_1F5B2ED70;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A15>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::A15>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A15>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec3A15EJNS3_7OpTrait9OneRegionENSI_11ZeroResultsENSI_14ZeroSuccessorsENSI_12ZeroOperandsENSI_12OpInvariantsENS3_17SymbolOpInterface5TraitENS3_19CallableOpInterface5TraitENS3_19FunctionOpInterface5TraitENSI_19IsIsolatedFromAboveENSI_8RegionOpENS3_24TargetLegalizerInterface5TraitENS3_25FormableRegionOpInterface5TraitENSG_26RegionPerformanceInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE0EE4ImplENS13_ILS14_1EE4ImplENS13_ILS14_2EE4ImplENS13_ILS14_3EE4ImplENS3_24ExecutionCostOpInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1G_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec3A15EJNS3_7OpTrait9OneRegionENSI_11ZeroResultsENSI_14ZeroSuccessorsENSI_12ZeroOperandsENSI_12OpInvariantsENS3_17SymbolOpInterface5TraitENS3_19CallableOpInterface5TraitENS3_19FunctionOpInterface5TraitENSI_19IsIsolatedFromAboveENSI_8RegionOpENS3_24TargetLegalizerInterface5TraitENS3_25FormableRegionOpInterface5TraitENSG_26RegionPerformanceInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE0EE4ImplENS13_ILS14_1EE4ImplENS13_ILS14_2EE4ImplENS13_ILS14_3EE4ImplENS3_24ExecutionCostOpInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1G_vE9CallbacksE[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::A15>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec3A15EJNS2_7OpTrait9OneRegionENS9_11ZeroResultsENS9_14ZeroSuccessorsENS9_12ZeroOperandsENS9_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENS9_19IsIsolatedFromAboveENS9_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENS7_26RegionPerformanceInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE0EE4ImplENSU_ILSV_1EE4ImplENSU_ILSV_2EE4ImplENSU_ILSV_3EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS17_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec3A15EJNS2_7OpTrait9OneRegionENS9_11ZeroResultsENS9_14ZeroSuccessorsENS9_12ZeroOperandsENS9_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENS9_19IsIsolatedFromAboveENS9_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENS7_26RegionPerformanceInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE0EE4ImplENSU_ILSV_1EE4ImplENSU_ILSV_2EE4ImplENSU_ILSV_3EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS17_vE9CallbacksE[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::anec::A15>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec3A15EJNS2_7OpTrait9OneRegionENSD_11ZeroResultsENSD_14ZeroSuccessorsENSD_12ZeroOperandsENSD_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENSD_19IsIsolatedFromAboveENSD_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENSB_26RegionPerformanceInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE0EE4ImplENSY_ILSZ_1EE4ImplENSY_ILSZ_2EE4ImplENSY_ILSZ_3EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1B_vE9CallbacksE + 2;
  (_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec3A15EJNS2_7OpTrait9OneRegionENSD_11ZeroResultsENSD_14ZeroSuccessorsENSD_12ZeroOperandsENSD_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENSD_19IsIsolatedFromAboveENSD_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENSB_26RegionPerformanceInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE0EE4ImplENSY_ILSZ_1EE4ImplENSY_ILSZ_2EE4ImplENSY_ILSZ_3EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1B_vE9CallbacksE[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A15>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::A15,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A15>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::A15,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::A15>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A15>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>>(uint64_t a1)
{
  v2 = malloc(0x80uLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A15>>(uint64_t a1)
{
  v2 = malloc(0x48uLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::getArgumentTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getInputs(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::getResultTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getResults(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::getArgAttrsAttr(int a1, mlir::Operation *this)
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

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::getResAttrsAttr(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 16));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A15>>(uint64_t a1)
{
  v2 = malloc(0x38uLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::verifyBody;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::verifyType;
  v2[5] = mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(a1);
  v2[6] = mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(a1);
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::FuncOp>>();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::getFunctionType(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::cloneTypeWith(int a1, mlir::Operation *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::clone(&AttrDictionary, a3, a4, a5, a6);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A15>>(uint64_t a1)
{
  v2 = malloc(0x30uLL);
  v3 = v2;
  *v2 = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A15>::legalizeBody;
  v2[1] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A15>::legalizeRegionBody;
  v2[2] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A15>::getFunctionType;
  v2[3] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A15>::setFunctionType;
  v2[4] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A15>::getBody;
  v2[5] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A15>::getBodyBlock;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A15>::getFunctionType(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

void mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A15>::setFunctionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a2 + 48) + 96) + 8);
  v5 = mlir::TypeAttr::get(a3);

  mlir::Operation::setAttr(a2, v4, v5);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A15>::getBodyBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    return v2 - 8;
  }

  else
  {
    return 0;
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A15>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::isRegionProfitable;
  v2[1] = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::build;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A15>>(uint64_t a1)
{
  v2 = malloc(0x20uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A15>::getMemoryLinkWidthBytes;
  v2[1] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A15>::getMemoryClockRateHz;
  v2[2] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A15>::getComputeClockRateHz;
  v2[3] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A15>::getNumberOfNEs;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::RegionPerformanceInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A15>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A15>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::ExecutionCostOpInterface::Trait>(uint64_t a1)
{
  {
    v189 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    a1 = v189;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v172 = v1;
    v190 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
    v1 = v172;
    a1 = v190;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v173 = v1;
    v191 = a1;
    v156 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v156;
    v1 = v173;
    a1 = v191;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v174 = v1;
    v192 = a1;
    v141 = v3;
    v157 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::OpTrait::Stitchable,mlir::DowngraderInterface::Trait>();
    v3 = v141;
    v2 = v157;
    v1 = v174;
    a1 = v192;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v175 = v1;
    v193 = a1;
    v142 = v3;
    v158 = v2;
    v127 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v127;
    v3 = v142;
    v2 = v158;
    v1 = v175;
    a1 = v193;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v176 = v1;
    v194 = a1;
    v143 = v3;
    v159 = v2;
    v114 = v5;
    v128 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v5 = v114;
    v4 = v128;
    v3 = v143;
    v2 = v159;
    v1 = v176;
    a1 = v194;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v177 = v1;
    v195 = a1;
    v144 = v3;
    v160 = v2;
    v115 = v5;
    v129 = v4;
    v102 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v6 = v102;
    v5 = v115;
    v4 = v129;
    v3 = v144;
    v2 = v160;
    v1 = v177;
    a1 = v195;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v178 = v1;
    v196 = a1;
    v145 = v3;
    v161 = v2;
    v116 = v5;
    v130 = v4;
    v103 = v6;
    v91 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v7 = v91;
    v6 = v103;
    v5 = v116;
    v4 = v130;
    v3 = v145;
    v2 = v161;
    v1 = v178;
    a1 = v196;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v179 = v1;
    v197 = a1;
    v146 = v3;
    v162 = v2;
    v117 = v5;
    v131 = v4;
    v104 = v6;
    v81 = v8;
    v92 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v8 = v81;
    v7 = v92;
    v6 = v104;
    v5 = v117;
    v4 = v131;
    v3 = v146;
    v2 = v162;
    v1 = v179;
    a1 = v197;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v180 = v1;
    v198 = a1;
    v147 = v3;
    v163 = v2;
    v118 = v5;
    v132 = v4;
    v105 = v6;
    v82 = v8;
    v93 = v7;
    v72 = v9;
    mlir::anec::parentIsAtLeast<(mlir::anec::Family)2>();
    v9 = v72;
    v8 = v82;
    v7 = v93;
    v6 = v105;
    v5 = v118;
    v4 = v132;
    v3 = v147;
    v2 = v163;
    v1 = v180;
    a1 = v198;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v181 = v1;
    v199 = a1;
    v148 = v3;
    v164 = v2;
    v119 = v5;
    v133 = v4;
    v106 = v6;
    v83 = v8;
    v94 = v7;
    v64 = v10;
    v73 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v10 = v64;
    v9 = v73;
    v8 = v83;
    v7 = v94;
    v6 = v106;
    v5 = v119;
    v4 = v133;
    v3 = v148;
    v2 = v164;
    v1 = v181;
    a1 = v199;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::TargetLegalizerInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v182 = v1;
    v200 = a1;
    v149 = v3;
    v165 = v2;
    v120 = v5;
    v134 = v4;
    v107 = v6;
    v84 = v8;
    v95 = v7;
    v65 = v10;
    v74 = v9;
    v57 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v11 = v57;
    v10 = v65;
    v9 = v74;
    v8 = v84;
    v7 = v95;
    v6 = v107;
    v5 = v120;
    v4 = v134;
    v3 = v149;
    v2 = v165;
    v1 = v182;
    a1 = v200;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FormableRegionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v183 = v1;
    v201 = a1;
    v150 = v3;
    v166 = v2;
    v121 = v5;
    v135 = v4;
    v108 = v6;
    v85 = v8;
    v96 = v7;
    v66 = v10;
    v75 = v9;
    v51 = v12;
    v58 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v12 = v51;
    v11 = v58;
    v10 = v66;
    v9 = v75;
    v8 = v85;
    v7 = v96;
    v6 = v108;
    v5 = v121;
    v4 = v135;
    v3 = v150;
    v2 = v166;
    v1 = v183;
    a1 = v201;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::anec::RegionPerformanceInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::RegionPerformanceInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v184 = v1;
    v202 = a1;
    v151 = v3;
    v167 = v2;
    v122 = v5;
    v136 = v4;
    v109 = v6;
    v86 = v8;
    v97 = v7;
    v67 = v10;
    v76 = v9;
    v52 = v12;
    v59 = v11;
    v46 = v13;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v13 = v46;
    v12 = v52;
    v11 = v59;
    v10 = v67;
    v9 = v76;
    v8 = v86;
    v7 = v97;
    v6 = v109;
    v5 = v122;
    v4 = v136;
    v3 = v151;
    v2 = v167;
    v1 = v184;
    a1 = v202;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v185 = v1;
    v203 = a1;
    v152 = v3;
    v168 = v2;
    v123 = v5;
    v137 = v4;
    v110 = v6;
    v87 = v8;
    v98 = v7;
    v68 = v10;
    v77 = v9;
    v53 = v12;
    v60 = v11;
    v42 = v14;
    v47 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v14 = v42;
    v13 = v47;
    v12 = v53;
    v11 = v60;
    v10 = v68;
    v9 = v77;
    v8 = v87;
    v7 = v98;
    v6 = v110;
    v5 = v123;
    v4 = v137;
    v3 = v152;
    v2 = v168;
    v1 = v185;
    a1 = v203;
  }

  v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v186 = v1;
    v204 = a1;
    v153 = v3;
    v169 = v2;
    v124 = v5;
    v138 = v4;
    v111 = v6;
    v88 = v8;
    v99 = v7;
    v69 = v10;
    v78 = v9;
    v54 = v12;
    v61 = v11;
    v43 = v14;
    v48 = v13;
    v39 = v15;
    mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>();
    v15 = v39;
    v14 = v43;
    v13 = v48;
    v12 = v54;
    v11 = v61;
    v10 = v69;
    v9 = v78;
    v8 = v88;
    v7 = v99;
    v6 = v111;
    v5 = v124;
    v4 = v138;
    v3 = v153;
    v2 = v169;
    v1 = v186;
    a1 = v204;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v187 = v1;
    v205 = a1;
    v154 = v3;
    v170 = v2;
    v125 = v5;
    v139 = v4;
    v112 = v6;
    v89 = v8;
    v100 = v7;
    v70 = v10;
    v79 = v9;
    v55 = v12;
    v62 = v11;
    v44 = v14;
    v49 = v13;
    v37 = v16;
    v40 = v15;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v16 = v37;
    v15 = v40;
    v14 = v44;
    v13 = v49;
    v12 = v55;
    v11 = v62;
    v10 = v70;
    v9 = v79;
    v8 = v89;
    v7 = v100;
    v6 = v112;
    v5 = v125;
    v4 = v139;
    v3 = v154;
    v2 = v170;
    v1 = v187;
    a1 = v205;
  }

  v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v188 = v1;
    v206 = a1;
    v155 = v3;
    v171 = v2;
    v126 = v5;
    v140 = v4;
    v113 = v6;
    v90 = v8;
    v101 = v7;
    v71 = v10;
    v80 = v9;
    v56 = v12;
    v63 = v11;
    v45 = v14;
    v50 = v13;
    v38 = v16;
    v41 = v15;
    v36 = v17;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v17 = v36;
    v16 = v38;
    v15 = v41;
    v14 = v45;
    v13 = v50;
    v12 = v56;
    v11 = v63;
    v10 = v71;
    v9 = v80;
    v8 = v90;
    v7 = v101;
    v6 = v113;
    v5 = v126;
    v4 = v140;
    v3 = v155;
    v2 = v171;
    v1 = v188;
    a1 = v206;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::anec::A15,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v10 = *(*(*(a2 + 48) + 96) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v10);
  mlir::function_interface_impl::printFunctionOp(a3, a2, InterfaceFor, 0, AttrData, v9, **(*(a2 + 48) + 96), *(*(*(a2 + 48) + 96) + 16));
}

void *mlir::RegisteredOperationName::Model<mlir::anec::A16>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A16>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A16>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A16>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A16>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A16>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A16>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.A16", 8, a2, &mlir::detail::TypeIDResolver<mlir::anec::A16,void>::id, &v9);
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

  *a1 = &unk_1F5B2EE38;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A16>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::anec::A16>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A16>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec3A16EJNS3_7OpTrait9OneRegionENSI_11ZeroResultsENSI_14ZeroSuccessorsENSI_12ZeroOperandsENSI_12OpInvariantsENS3_17SymbolOpInterface5TraitENS3_19CallableOpInterface5TraitENS3_19FunctionOpInterface5TraitENSI_19IsIsolatedFromAboveENSI_8RegionOpENS3_24TargetLegalizerInterface5TraitENS3_25FormableRegionOpInterface5TraitENSG_26RegionPerformanceInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE0EE4ImplENS13_ILS14_1EE4ImplENS13_ILS14_2EE4ImplENS13_ILS14_3EE4ImplENS13_ILS14_4EE4ImplENS3_24ExecutionCostOpInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1I_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec3A16EJNS3_7OpTrait9OneRegionENSI_11ZeroResultsENSI_14ZeroSuccessorsENSI_12ZeroOperandsENSI_12OpInvariantsENS3_17SymbolOpInterface5TraitENS3_19CallableOpInterface5TraitENS3_19FunctionOpInterface5TraitENSI_19IsIsolatedFromAboveENSI_8RegionOpENS3_24TargetLegalizerInterface5TraitENS3_25FormableRegionOpInterface5TraitENSG_26RegionPerformanceInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE0EE4ImplENS13_ILS14_1EE4ImplENS13_ILS14_2EE4ImplENS13_ILS14_3EE4ImplENS13_ILS14_4EE4ImplENS3_24ExecutionCostOpInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1I_vE9CallbacksE[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::anec::A16>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec3A16EJNS2_7OpTrait9OneRegionENS9_11ZeroResultsENS9_14ZeroSuccessorsENS9_12ZeroOperandsENS9_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENS9_19IsIsolatedFromAboveENS9_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENS7_26RegionPerformanceInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE0EE4ImplENSU_ILSV_1EE4ImplENSU_ILSV_2EE4ImplENSU_ILSV_3EE4ImplENSU_ILSV_4EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS19_vE9CallbacksE + 2;
  result = (_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec3A16EJNS2_7OpTrait9OneRegionENS9_11ZeroResultsENS9_14ZeroSuccessorsENS9_12ZeroOperandsENS9_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENS9_19IsIsolatedFromAboveENS9_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENS7_26RegionPerformanceInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE0EE4ImplENSU_ILSV_1EE4ImplENSU_ILSV_2EE4ImplENSU_ILSV_3EE4ImplENSU_ILSV_4EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS19_vE9CallbacksE[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::anec::A16>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec3A16EJNS2_7OpTrait9OneRegionENSD_11ZeroResultsENSD_14ZeroSuccessorsENSD_12ZeroOperandsENSD_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENSD_19IsIsolatedFromAboveENSD_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENSB_26RegionPerformanceInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE0EE4ImplENSY_ILSZ_1EE4ImplENSY_ILSZ_2EE4ImplENSY_ILSZ_3EE4ImplENSY_ILSZ_4EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1D_vE9CallbacksE + 2;
  (_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec3A16EJNS2_7OpTrait9OneRegionENSD_11ZeroResultsENSD_14ZeroSuccessorsENSD_12ZeroOperandsENSD_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENSD_19IsIsolatedFromAboveENSD_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENSB_26RegionPerformanceInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE0EE4ImplENSY_ILSZ_1EE4ImplENSY_ILSZ_2EE4ImplENSY_ILSZ_3EE4ImplENSY_ILSZ_4EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1D_vE9CallbacksE[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A16>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::A16,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A16>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::anec::A16,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::anec::A16>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A16>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>>(uint64_t a1)
{
  v2 = malloc(0x80uLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A16>>(uint64_t a1)
{
  v2 = malloc(0x48uLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::getArgumentTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getInputs(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::getResultTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getResults(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::getArgAttrsAttr(int a1, mlir::Operation *this)
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

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::getResAttrsAttr(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 16));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A16>>(uint64_t a1)
{
  v2 = malloc(0x38uLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::verifyBody;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::verifyType;
  v2[5] = mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(a1);
  v2[6] = mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(a1);
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::FuncOp>>();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::getFunctionType(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::cloneTypeWith(int a1, mlir::Operation *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::clone(&AttrDictionary, a3, a4, a5, a6);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A16>>(uint64_t a1)
{
  v2 = malloc(0x30uLL);
  v3 = v2;
  *v2 = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A16>::legalizeBody;
  v2[1] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A16>::legalizeRegionBody;
  v2[2] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A16>::getFunctionType;
  v2[3] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A16>::setFunctionType;
  v2[4] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A16>::getBody;
  v2[5] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A16>::getBodyBlock;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A16>::getFunctionType(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

void mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A16>::setFunctionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a2 + 48) + 96) + 8);
  v5 = mlir::TypeAttr::get(a3);

  mlir::Operation::setAttr(a2, v4, v5);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A16>::getBodyBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    return v2 - 8;
  }

  else
  {
    return 0;
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A16>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::isRegionProfitable;
  v2[1] = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::build;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A16>>(uint64_t a1)
{
  v2 = malloc(0x20uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A16>::getMemoryLinkWidthBytes;
  v2[1] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A16>::getMemoryClockRateHz;
  v2[2] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A16>::getComputeClockRateHz;
  v2[3] = mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A16>::getNumberOfNEs;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::RegionPerformanceInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A16>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A16>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::ExecutionCostOpInterface::Trait>(uint64_t a1)
{
  {
    v38 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    a1 = v38;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v209 = a1;
    v39 = v1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
    v1 = v39;
    a1 = v209;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v192 = v2;
    v210 = a1;
    v40 = v1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v192;
    a1 = v210;
    v1 = v40;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v193 = v2;
    v211 = a1;
    v41 = v1;
    v176 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::OpTrait::Stitchable,mlir::DowngraderInterface::Trait>();
    v3 = v176;
    v2 = v193;
    v1 = v41;
    a1 = v211;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v194 = v2;
    v212 = a1;
    v42 = v1;
    v161 = v4;
    v177 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v161;
    v3 = v177;
    v2 = v194;
    a1 = v212;
    v1 = v42;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v195 = v2;
    v213 = a1;
    v43 = v1;
    v162 = v4;
    v178 = v3;
    v147 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v5 = v147;
    v4 = v162;
    v3 = v178;
    v2 = v195;
    v1 = v43;
    a1 = v213;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v196 = v2;
    v214 = a1;
    v44 = v1;
    v163 = v4;
    v179 = v3;
    v134 = v6;
    v148 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v6 = v134;
    v5 = v148;
    v4 = v163;
    v3 = v179;
    v2 = v196;
    a1 = v214;
    v1 = v44;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v197 = v2;
    v215 = a1;
    v45 = v1;
    v164 = v4;
    v180 = v3;
    v135 = v6;
    v149 = v5;
    v122 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v7 = v122;
    v6 = v135;
    v5 = v149;
    v4 = v164;
    v3 = v180;
    v2 = v197;
    v1 = v45;
    a1 = v215;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v198 = v2;
    v216 = a1;
    v46 = v1;
    v165 = v4;
    v181 = v3;
    v136 = v6;
    v150 = v5;
    v123 = v7;
    v111 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v8 = v111;
    v7 = v123;
    v6 = v136;
    v5 = v150;
    v4 = v165;
    v3 = v181;
    v2 = v198;
    v1 = v46;
    a1 = v216;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v199 = v2;
    v217 = a1;
    v47 = v1;
    v166 = v4;
    v182 = v3;
    v137 = v6;
    v151 = v5;
    v124 = v7;
    v101 = v9;
    v112 = v8;
    mlir::anec::parentIsAtLeast<(mlir::anec::Family)2>();
    v9 = v101;
    v8 = v112;
    v7 = v124;
    v6 = v137;
    v5 = v151;
    v4 = v166;
    v3 = v182;
    v2 = v199;
    v1 = v47;
    a1 = v217;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v200 = v2;
    v218 = a1;
    v48 = v1;
    v167 = v4;
    v183 = v3;
    v138 = v6;
    v152 = v5;
    v125 = v7;
    v102 = v9;
    v113 = v8;
    v92 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v10 = v92;
    v9 = v102;
    v8 = v113;
    v7 = v125;
    v6 = v138;
    v5 = v152;
    v4 = v167;
    v3 = v183;
    v2 = v200;
    v1 = v48;
    a1 = v218;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::TargetLegalizerInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v201 = v2;
    v219 = a1;
    v49 = v1;
    v168 = v4;
    v184 = v3;
    v139 = v6;
    v153 = v5;
    v126 = v7;
    v103 = v9;
    v114 = v8;
    v84 = v11;
    v93 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v11 = v84;
    v10 = v93;
    v9 = v103;
    v8 = v114;
    v7 = v126;
    v6 = v139;
    v5 = v153;
    v4 = v168;
    v3 = v184;
    v2 = v201;
    v1 = v49;
    a1 = v219;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FormableRegionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v202 = v2;
    v220 = a1;
    v50 = v1;
    v169 = v4;
    v185 = v3;
    v140 = v6;
    v154 = v5;
    v127 = v7;
    v104 = v9;
    v115 = v8;
    v85 = v11;
    v94 = v10;
    v77 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v12 = v77;
    v11 = v85;
    v10 = v94;
    v9 = v104;
    v8 = v115;
    v7 = v127;
    v6 = v140;
    v5 = v154;
    v4 = v169;
    v3 = v185;
    v2 = v202;
    v1 = v50;
    a1 = v220;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::anec::RegionPerformanceInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::RegionPerformanceInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v203 = v2;
    v221 = a1;
    v51 = v1;
    v170 = v4;
    v186 = v3;
    v141 = v6;
    v155 = v5;
    v128 = v7;
    v105 = v9;
    v116 = v8;
    v86 = v11;
    v95 = v10;
    v71 = v13;
    v78 = v12;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v13 = v71;
    v12 = v78;
    v11 = v86;
    v10 = v95;
    v9 = v105;
    v8 = v116;
    v7 = v128;
    v6 = v141;
    v5 = v155;
    v4 = v170;
    v3 = v186;
    v2 = v203;
    v1 = v51;
    a1 = v221;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v204 = v2;
    v222 = a1;
    v52 = v1;
    v171 = v4;
    v187 = v3;
    v142 = v6;
    v156 = v5;
    v129 = v7;
    v106 = v9;
    v117 = v8;
    v87 = v11;
    v96 = v10;
    v72 = v13;
    v79 = v12;
    v66 = v14;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v14 = v66;
    v13 = v72;
    v12 = v79;
    v11 = v87;
    v10 = v96;
    v9 = v106;
    v8 = v117;
    v7 = v129;
    v6 = v142;
    v5 = v156;
    v4 = v171;
    v3 = v187;
    v2 = v204;
    v1 = v52;
    a1 = v222;
  }

  v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v205 = v2;
    v223 = a1;
    v53 = v1;
    v172 = v4;
    v188 = v3;
    v143 = v6;
    v157 = v5;
    v130 = v7;
    v107 = v9;
    v118 = v8;
    v88 = v11;
    v97 = v10;
    v73 = v13;
    v80 = v12;
    v62 = v15;
    v67 = v14;
    mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>();
    v15 = v62;
    v14 = v67;
    v13 = v73;
    v12 = v80;
    v11 = v88;
    v10 = v97;
    v9 = v107;
    v8 = v118;
    v7 = v130;
    v6 = v143;
    v5 = v157;
    v4 = v172;
    v3 = v188;
    v2 = v205;
    v1 = v53;
    a1 = v223;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v206 = v2;
    v224 = a1;
    v54 = v1;
    v173 = v4;
    v189 = v3;
    v144 = v6;
    v158 = v5;
    v131 = v7;
    v108 = v9;
    v119 = v8;
    v89 = v11;
    v98 = v10;
    v74 = v13;
    v81 = v12;
    v63 = v15;
    v68 = v14;
    v59 = v16;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v16 = v59;
    v15 = v63;
    v14 = v68;
    v13 = v74;
    v12 = v81;
    v11 = v89;
    v10 = v98;
    v9 = v108;
    v8 = v119;
    v7 = v131;
    v6 = v144;
    v5 = v158;
    v4 = v173;
    v3 = v189;
    v2 = v206;
    v1 = v54;
    a1 = v224;
  }

  v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v207 = v2;
    v225 = a1;
    v55 = v1;
    v174 = v4;
    v190 = v3;
    v145 = v6;
    v159 = v5;
    v132 = v7;
    v109 = v9;
    v120 = v8;
    v90 = v11;
    v99 = v10;
    v75 = v13;
    v82 = v12;
    v64 = v15;
    v69 = v14;
    v57 = v17;
    v60 = v16;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v17 = v57;
    v16 = v60;
    v15 = v64;
    v14 = v69;
    v13 = v75;
    v12 = v82;
    v11 = v90;
    v10 = v99;
    v9 = v109;
    v8 = v120;
    v7 = v132;
    v6 = v145;
    v5 = v159;
    v4 = v174;
    v3 = v190;
    v2 = v207;
    v1 = v55;
    a1 = v225;
  }

  v18 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v226 = a1;
    v56 = v1;
    v191 = v3;
    v208 = v2;
    v160 = v5;
    v175 = v4;
    v133 = v7;
    v146 = v6;
    v110 = v9;
    v121 = v8;
    v91 = v11;
    v100 = v10;
    v76 = v13;
    v83 = v12;
    v65 = v15;
    v70 = v14;
    v58 = v17;
    v61 = v16;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v17 = v58;
    v16 = v61;
    v15 = v65;
    v14 = v70;
    v13 = v76;
    v12 = v83;
    v11 = v91;
    v10 = v100;
    v9 = v110;
    v8 = v121;
    v7 = v133;
    v6 = v146;
    v5 = v160;
    v4 = v175;
    v3 = v191;
    v2 = v208;
    v1 = v56;
    a1 = v226;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::anec::A16,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v10 = *(*(*(a2 + 48) + 96) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v10);
  mlir::function_interface_impl::printFunctionOp(a3, a2, InterfaceFor, 0, AttrData, v9, **(*(a2 + 48) + 96), *(*(*(a2 + 48) + 96) + 16));
}

void *mlir::RegisteredOperationName::Model<mlir::anec::A17>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A17>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A17>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A17>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A17>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A17>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A17>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A17>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.A17", 8, a2, &mlir::detail::TypeIDResolver<mlir::anec::A17,void>::id, &v9);
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

  *a1 = &unk_1F5B2EF00;
  return a1;
}