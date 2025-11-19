uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::mps::ReadDataFromFileOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseSetPair<mlir::mps::ReadDataFromFileOp>>,mlir::mps::ReadDataFromFileOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseSetPair<mlir::mps::ReadDataFromFileOp>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = HIDWORD(*a2);
    v7 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v6);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)));
    v8 = v4 - 1;
    v9 = v6 & (v4 - 1);
    v10 = (*result + 8 * v9);
    v11 = *v10;
    if (*a2 == *v10)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_10;
    }

    v14 = 0;
    v15 = 1;
    while (v11 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11 == -8192;
      }

      if (v16)
      {
        v14 = v10;
      }

      v17 = v9 + v15++;
      v9 = v17 & v8;
      v10 = (v5 + 8 * (v17 & v8));
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v10 = v14;
    }
  }

  else
  {
    v10 = 0;
  }

  v20 = v10;
  v13 = *(result + 8);
  if (4 * v13 + 4 >= 3 * v4)
  {
    v4 *= 2;
    goto LABEL_24;
  }

  if (v4 + ~v13 - *(result + 12) <= v4 >> 3)
  {
LABEL_24:
    v18 = result;
    v19 = a3;
    llvm::DenseMap<mlir::mps::ReadDataFromFileOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseSetPair<mlir::mps::ReadDataFromFileOp>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v18, a2, &v20);
    result = v18;
    a3 = v19;
    v13 = *(v18 + 8);
    v10 = v20;
  }

  *(result + 8) = v13 + 1;
  if (*v10 != -4096)
  {
    --*(result + 12);
  }

  *v10 = *a2;
  v5 = *result;
  v4 = *(result + 16);
  v12 = 1;
LABEL_10:
  *a3 = v10;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v12;
  return result;
}

int64x2_t *llvm::DenseMap<mlir::mps::ReadDataFromFileOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseSetPair<mlir::mps::ReadDataFromFileOp>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (8 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::mps::ReadDataFromFileOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseSetPair<mlir::mps::ReadDataFromFileOp>>,mlir::mps::ReadDataFromFileOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseSetPair<mlir::mps::ReadDataFromFileOp>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v13 = result;
    if (v12 < 3)
    {
      goto LABEL_13;
    }

    v14 = v12 + 1;
    v13 = &result->i8[8 * (v14 & 0x3FFFFFFFFFFFFFFCLL)];
    v15 = result + 1;
    v16 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v17 = v14 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v15[-1] = v16;
      *v15 = v16;
      v15 += 2;
      v17 -= 4;
    }

    while (v17);
    if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_13:
      v18 = &result->i8[8 * v11];
      do
      {
        *v13 = -4096;
        v13 += 8;
      }

      while (v13 != v18);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::mps::ReadDataFromFileOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseSetPair<mlir::mps::ReadDataFromFileOp>>,mlir::mps::ReadDataFromFileOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseSetPair<mlir::mps::ReadDataFromFileOp>>::moveFromOldBuckets(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = (v3 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v6 = *result;
    if (v5 < 3)
    {
      goto LABEL_6;
    }

    v7 = v5 + 1;
    v6 = (v4 + 8 * (v7 & 0x3FFFFFFFFFFFFFFCLL));
    v8 = v4 + 1;
    v9 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v10 = v7 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v8[-1] = v9;
      *v8 = v9;
      v8 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v7 != (v7 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_6:
      v11 = (v4 + 8 * v3);
      do
      {
        v6->i64[0] = -4096;
        v6 = (v6 + 8);
      }

      while (v6 != v11);
    }
  }

  for (; a2 != a3; ++a2)
  {
    v13 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
      v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v13) ^ (v14 >> 47) ^ v14);
      LODWORD(v14) = -348639895 * ((v15 >> 47) ^ v15);
      v16 = *(result + 16) - 1;
      v17 = v16 & v14;
      v12 = (*result + 8 * v17);
      v18 = *v12;
      if (v13 != *v12)
      {
        v19 = 0;
        v20 = 1;
        while (v18 != -4096)
        {
          if (v19)
          {
            v21 = 0;
          }

          else
          {
            v21 = v18 == -8192;
          }

          if (v21)
          {
            v19 = v12;
          }

          v22 = v17 + v20++;
          v17 = v22 & v16;
          v12 = (*result + 8 * (v22 & v16));
          v18 = *v12;
          if (v13 == *v12)
          {
            goto LABEL_12;
          }
        }

        if (v19)
        {
          v12 = v19;
        }
      }

LABEL_12:
      *v12 = v13;
      ++*(result + 8);
    }
  }

  return result;
}

std::string *std::__fs::filesystem::operator/[abi:nn200100]@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a3->__pn_, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {

    return std::string::operator=(&a3->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a3).__size_)
    {
      std::string::push_back(&a3->__pn_, 47);
    }

    v6 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v6 >= 0)
    {
      v7 = this;
    }

    else
    {
      v7 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v6 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    return std::string::append(&a3->__pn_, v7, size);
  }
}

std::string *std::string::append[abi:nn200100]<char const*,0>(std::string *this, std::string *a2, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v5 = a3 - a2;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v9 = this->__r_.__value_.__r.__words[2];
    v6 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v8 = this->__r_.__value_.__r.__words[0];
    v7 = HIBYTE(v9);
    if (this->__r_.__value_.__r.__words[0] > a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    v6 = 22;
    LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
    v8 = this;
    if (this > a2)
    {
      goto LABEL_12;
    }
  }

  if ((&v8->__r_.__value_.__l.__data_ + size + 1) <= a2)
  {
LABEL_12:
    if (v6 - size < v5)
    {
      v11 = a3;
      v12 = a2;
      std::string::__grow_by(this, v6, size - v6 + v5, size, size, 0, 0);
      a3 = v11;
      a2 = v12;
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
    }

    v13 = this;
    if ((v7 & 0x80) != 0)
    {
      v13 = this->__r_.__value_.__r.__words[0];
    }

    v14 = v13 + size;
    if (a3 != a2)
    {
      memmove(v13 + size, a2, v5);
    }

    v14[v5] = 0;
    v15 = v5 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
    }

    return this;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (v5 <= 0x16)
  {
    HIBYTE(v25) = a3 - a2;
    p_dst = &__dst;
    if (a3 == a2)
    {
      goto LABEL_25;
    }

LABEL_24:
    memcpy(p_dst, a2, v5);
    goto LABEL_25;
  }

  if ((v5 | 7) == 0x17)
  {
    v16 = 25;
  }

  else
  {
    v16 = (v5 | 7) + 1;
  }

  v17 = a2;
  v18 = a3;
  v19 = operator new(v16);
  a2 = v17;
  p_dst = v19;
  v24 = v5;
  v25 = v16 | 0x8000000000000000;
  __dst = v19;
  if (v18 != a2)
  {
    goto LABEL_24;
  }

LABEL_25:
  *(p_dst + v5) = 0;
  if (v25 >= 0)
  {
    v20 = &__dst;
  }

  else
  {
    v20 = __dst;
  }

  if (v25 >= 0)
  {
    v21 = HIBYTE(v25);
  }

  else
  {
    v21 = v24;
  }

  std::string::append(this, v20, v21);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst);
  }

  return this;
}

char *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 **a4)
{
  v6 = a2;
  v8 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v9 = v8;
  }

  v10 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v41, a2, v9);
  v11 = v10;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = vcnt_s8(v12);
    v13.i16[0] = vaddlv_u8(v13);
    v14 = v13.u32[0];
    if (v13.u32[0] > 1uLL)
    {
      v4 = v10;
      if (v10 >= v12)
      {
        v4 = v10 % v12;
      }
    }

    else
    {
      v4 = (v12 - 1) & v10;
    }

    v15 = *(*a1 + 8 * v4);
    if (v15)
    {
      v16 = *v15;
      if (*v15)
      {
        v17 = v6[23];
        if (v17 >= 0)
        {
          v18 = v6[23];
        }

        else
        {
          v18 = *(v6 + 1);
        }

        if (v17 < 0)
        {
          v6 = *v6;
        }

        do
        {
          v19 = *(v16 + 1);
          if (v19 == v11)
          {
            v20 = v16[39];
            v21 = v20;
            if ((v20 & 0x80u) != 0)
            {
              v20 = *(v16 + 3);
            }

            if (v20 == v18)
            {
              v22 = v21 >= 0 ? v16 + 16 : *(v16 + 2);
              if (!memcmp(v22, v6, v18))
              {
                return v16;
              }
            }
          }

          else
          {
            if (v14 <= 1)
            {
              v19 &= v12 - 1;
            }

            else if (v19 >= v12)
            {
              v19 %= v12;
            }

            if (v19 != v4)
            {
              break;
            }
          }

          v16 = *v16;
        }

        while (v16);
      }
    }
  }

  v23 = operator new(0x40uLL);
  v16 = v23;
  *v23 = 0;
  *(v23 + 1) = v11;
  v24 = *a4;
  if (*(*a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v23 + 16), *v24, *(v24 + 1));
  }

  else
  {
    v25 = *v24;
    *(v23 + 4) = *(v24 + 2);
    *(v23 + 1) = v25;
  }

  *(v16 + 5) = 0;
  *(v16 + 6) = 0;
  *(v16 + 7) = 0;
  v26 = (*(a1 + 24) + 1);
  v27 = *(a1 + 32);
  if (!v12 || (v27 * v12) < v26)
  {
    v28 = 1;
    if (v12 >= 3)
    {
      v28 = (v12 & (v12 - 1)) != 0;
    }

    v29 = v28 | (2 * v12);
    v30 = vcvtps_u32_f32(v26 / v27);
    if (v29 <= v30)
    {
      prime = v30;
    }

    else
    {
      prime = v29;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v32 = *(a1 + 8);
    if (prime > *&v32)
    {
      goto LABEL_48;
    }

    if (prime < *&v32)
    {
      v33 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (*&v32 < 3uLL || (v34 = vcnt_s8(v32), v34.i16[0] = vaddlv_u8(v34), v34.u32[0] > 1uLL))
      {
        v36 = prime;
        v33 = std::__next_prime(v33);
        prime = v36;
      }

      else
      {
        v35 = 1 << -__clz(v33 - 1);
        if (v33 >= 2)
        {
          v33 = v35;
        }
      }

      if (prime <= v33)
      {
        prime = v33;
      }

      if (prime < *&v32)
      {
LABEL_48:
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
      }
    }

    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v4 = v11 % v12;
      }

      else
      {
        v4 = v11;
      }
    }

    else
    {
      v4 = (v12 - 1) & v11;
    }
  }

  v37 = *a1;
  v38 = *(*a1 + 8 * v4);
  if (v38)
  {
    *v16 = *v38;
LABEL_72:
    *v38 = v16;
    goto LABEL_73;
  }

  *v16 = *(a1 + 16);
  *(a1 + 16) = v16;
  *(v37 + 8 * v4) = a1 + 16;
  if (*v16)
  {
    v39 = *(*v16 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v39 >= v12)
      {
        v39 %= v12;
      }
    }

    else
    {
      v39 &= v12 - 1;
    }

    v38 = (*a1 + 8 * v39);
    goto LABEL_72;
  }

LABEL_73:
  ++*(a1 + 24);
  return v16;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 <= 0x40)
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
      v15 = *(a2 + a3 - 8) + v8;
      v16 = __ROR8__(v15 + v14, 52);
      v17 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v18 = *(a2 + a3 - 24) + v14 + v6;
      v19 = v18 + v15;
      v20 = 0x9AE16A3B2F90404FLL;
      v21 = 0xC3A5C85C97CB3127 * (v19 + v17) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + v16 + __ROR8__(v18, 31));
      v22 = v17 - 0x3C5A37A36834CED9 * (v21 ^ (v21 >> 47));
      return (v22 ^ (v22 >> 47)) * v20;
    }

    v29 = *(a2 + a3 - 48);
    v30 = *(a2 + a3 - 40);
    v31 = *(a2 + a3 - 24);
    v32 = *(a2 + a3 - 56);
    v33 = *(a2 + a3 - 16);
    v34 = *(a2 + a3 - 8);
    v35 = v32 + v33;
    v36 = 0x9DDFEA08EB382D69 * (v31 ^ ((0x9DDFEA08EB382D69 * (v31 ^ (v29 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v31 ^ (v29 + a3))));
    v37 = 0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47));
    v38 = *(a2 + a3 - 64) + a3;
    v39 = v38 + v32 + v29;
    v40 = __ROR8__(v39, 44) + v38;
    v41 = __ROR8__(v30 + v38 + v37, 21);
    v42 = v39 + v30;
    v43 = v40 + v41;
    v44 = v35 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
    v45 = v44 + v31 + v33;
    v46 = v45 + v34;
    v47 = __ROR8__(v45, 44) + v44 + __ROR8__(v44 + v30 + v34, 21);
    v49 = *a2;
    v48 = a2 + 4;
    v50 = v49 - 0x4B6D499041670D8DLL * v30;
    v51 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v52 = *(v48 - 3);
      v53 = v50 + v42 + v35 + v52;
      v54 = v48[2];
      v55 = v48[3];
      v56 = v48[1];
      v35 = v56 + v42 - 0x4B6D499041670D8DLL * __ROR8__(v35 + v43 + v54, 42);
      v57 = v37 + v46;
      v58 = *(v48 - 2);
      v59 = *(v48 - 1);
      v60 = *(v48 - 4) - 0x4B6D499041670D8DLL * v43;
      v61 = v60 + v46 + v59;
      v62 = v60 + v52 + v58;
      v42 = v62 + v59;
      v63 = __ROR8__(v62, 44) + v60;
      v64 = (0xB492B66FBE98F273 * __ROR8__(v53, 37)) ^ v47;
      v50 = 0xB492B66FBE98F273 * __ROR8__(v57, 33);
      v43 = v63 + __ROR8__(v61 + v64, 21);
      v65 = v50 + v47 + *v48;
      v46 = v65 + v56 + v54 + v55;
      v47 = __ROR8__(v65 + v56 + v54, 44) + v65 + __ROR8__(v35 + v58 + v65 + v55, 21);
      v48 += 8;
      v37 = v64;
      v51 += 64;
    }

    while (v51);
    v66 = v64 - 0x4B6D499041670D8DLL * (v35 ^ (v35 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v46 ^ ((0x9DDFEA08EB382D69 * (v46 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v46 ^ v42)))) ^ ((0x9DDFEA08EB382D69 * (v46 ^ ((0x9DDFEA08EB382D69 * (v46 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v46 ^ v42)))) >> 47));
    v67 = v50 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v47 ^ ((0x9DDFEA08EB382D69 * (v47 ^ v43)) >> 47) ^ (0x9DDFEA08EB382D69 * (v47 ^ v43)))) ^ ((0x9DDFEA08EB382D69 * (v47 ^ ((0x9DDFEA08EB382D69 * (v47 ^ v43)) >> 47) ^ (0x9DDFEA08EB382D69 * (v47 ^ v43)))) >> 47));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v67 ^ ((0x9DDFEA08EB382D69 * (v67 ^ v66)) >> 47) ^ (0x9DDFEA08EB382D69 * (v67 ^ v66)))) ^ ((0x9DDFEA08EB382D69 * (v67 ^ ((0x9DDFEA08EB382D69 * (v67 ^ v66)) >> 47) ^ (0x9DDFEA08EB382D69 * (v67 ^ v66)))) >> 47));
  }

  else
  {
    if (a3 > 0x10)
    {
      v23 = a2[1];
      v24 = 0xB492B66FBE98F273 * *a2;
      v25 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v24 - v23, 43);
      v26 = v24 + a3 + __ROR8__(v23 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
      v20 = 0x9DDFEA08EB382D69;
      v27 = 0x9DDFEA08EB382D69 * ((v25 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v26);
      v28 = v26 ^ (v27 >> 47) ^ v27;
LABEL_8:
      v22 = 0x9DDFEA08EB382D69 * v28;
      return (v22 ^ (v22 >> 47)) * v20;
    }

    if (a3 >= 9)
    {
      v3 = *(a2 + a3 - 8);
      v4 = __ROR8__(v3 + a3, a3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
    }

    if (a3 >= 4)
    {
      v68 = *(a2 + a3 - 4);
      v20 = 0x9DDFEA08EB382D69;
      v69 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v68);
      v28 = v68 ^ (v69 >> 47) ^ v69;
      goto LABEL_8;
    }

    result = 0x9AE16A3B2F90404FLL;
    if (a3)
    {
      v70 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v70 ^ (v70 >> 47));
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (a2 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v4 = operator new(8 * a2);
    v5 = *a1;
    *a1 = v4;
    if (v5)
    {
      operator delete(v5);
    }

    v6 = 0;
    *(a1 + 8) = a2;
    do
    {
      *(*a1 + 8 * v6++) = 0;
    }

    while (a2 != v6);
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = v7[1];
      v9 = vcnt_s8(a2);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      *(*a1 + 8 * v8) = a1 + 16;
      v11 = *v7;
      if (*v7)
      {
        do
        {
          v12 = v11[1];
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= a2)
            {
              v12 %= a2;
            }
          }

          else
          {
            v12 &= a2 - 1;
          }

          if (v12 != v8)
          {
            v13 = *a1;
            if (!*(*a1 + 8 * v12))
            {
              v13[v12] = v7;
              goto LABEL_19;
            }

            *v7 = *v11;
            *v11 = *v13[v12];
            *v13[v12] = v11;
            v11 = v7;
          }

          v12 = v8;
LABEL_19:
          v7 = v11;
          v11 = *v11;
          v8 = v12;
        }

        while (v11);
      }
    }
  }

  else
  {
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      operator delete(v10);
    }

    *(a1 + 8) = 0;
  }
}

void mlir::mps::anonymous namespace::CopyDataFilesPass::~CopyDataFilesPass(mlir::mps::_anonymous_namespace_::CopyDataFilesPass *this)
{
  *this = &unk_1F5AFC8C0;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 592);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);
  *this = &unk_1F5B01A70;
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  if (*(this + 73))
  {
    v3 = *(this + 72);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(*(this + 35) + v4);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v4 += 8;
      }

      while (8 * v3 != v4);
    }
  }

  free(*(this + 35));
  v7 = *(this + 29);
  if (v7 != this + 248)
  {
    free(v7);
  }

  v8 = *(this + 23);
  if (v8 != this + 200)
  {
    free(v8);
  }

  v9 = *(this + 16);
  if (v9)
  {
    *(this + 17) = v9;
    operator delete(v9);
  }

  if (*(this + 120) == 1)
  {
    v10 = *(this + 8);
    if (v10 != *(this + 7))
    {
      free(v10);
    }
  }
}

{

  operator delete(v1);
}

void mlir::mps::anonymous namespace::CopyDataFilesPass::runOnOperation(mlir::mps::_anonymous_namespace_::CopyDataFilesPass *this)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v54 = 0;
  v55 = 0;
  v51[0] = &v54;
  v56 = 0x2000000000;
  v57.__r_.__value_.__r.__words[0] = v51;
  mlir::detail::walk<mlir::ForwardIterator>(v2, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps12_GLOBAL__N_120getFilesUsedInModuleES3_E3__0NSB_18ReadDataFromFileOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v57, 1);
  if (!HIDWORD(v55))
  {
    free(v54);
    return;
  }

  v3 = *(this + 743);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if (*(this + 743))
    {
      goto LABEL_4;
    }

LABEL_44:
    LOWORD(v53) = 257;
    mlir::Operation::emitOpError(v2, v51, &v57);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v57, "newBasePath has not been set");
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    if (v57.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v57);
    }

    if (v65 == 1)
    {
      if (v64 != &v65)
      {
        free(v64);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v63;
        v25 = __p;
        if (v63 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v63 = v23;
        operator delete(v25);
      }

      v26 = v60;
      if (v60)
      {
        v27 = v61;
        v28 = v60;
        if (v61 != v60)
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
          v28 = v60;
        }

        v61 = v26;
        operator delete(v28);
      }

      if (v58 != v59)
      {
        free(v58);
      }
    }

    goto LABEL_91;
  }

  if (!*(this + 91))
  {
    goto LABEL_44;
  }

LABEL_4:
  *v51 = 0u;
  *v52 = 0u;
  v53 = 1065353216;
  v4 = *(this + 495);
  if (v4 >= 0)
  {
    v5 = this + 472;
  }

  else
  {
    v5 = *(this + 59);
  }

  v6 = *(v2 + 3);
  if (v4 >= 0)
  {
    v7 = *(this + 495);
  }

  else
  {
    v7 = *(this + 60);
  }

  if ((v3 & 0x80000000) == 0)
  {
    v8 = this + 720;
  }

  else
  {
    v8 = *(this + 90);
  }

  if ((v3 & 0x80000000) == 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = *(this + 91);
  }

  llvm::StringMap<llvm::DenseSet<mlir::mps::ReadDataFromFileOp,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>>,llvm::MallocAllocator>::StringMap(&v48, &v54);
  v11 = v57.__r_.__value_.__r.__words[0];
  if (LODWORD(v57.__r_.__value_.__r.__words[1]))
  {
    v12 = v57.__r_.__value_.__r.__words[0] + 24 * LODWORD(v57.__r_.__value_.__r.__words[1]) - 1;
    v13 = -24 * LODWORD(v57.__r_.__value_.__r.__words[1]);
    v14 = v12;
    do
    {
      v15 = *v14;
      v14 -= 24;
      if (v15 < 0)
      {
        operator delete(*(v12 - 23));
      }

      v12 = v14;
      v13 += 24;
    }

    while (v13);
    v11 = v57.__r_.__value_.__r.__words[0];
  }

  if (v11 != &v57.__r_.__value_.__r.__words[2])
  {
    free(v11);
  }

  if (v50 && v49)
  {
    v16 = 0;
    do
    {
      v17 = *(v48 + v16);
      if (v17 != -8 && v17 != 0)
      {
        llvm::deallocate_buffer(*(v17 + 8), (8 * *(v17 + 24)));
      }

      v16 += 8;
    }

    while (8 * v49 != v16);
  }

  free(v48);
  if (v10)
  {
    if (v55)
    {
        ;
      }
    }

    else
    {
      i = v54;
    }

    if (i != (v54 + 8 * v55))
    {
      llvm::deallocate_buffer(0, 0);
    }

    v22 = 1;
  }

  else
  {
    v47 = 257;
    mlir::Operation::emitOpError(v2, &__dst, &v57);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v57, "failed to copy files");
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
    if (v57.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v57);
    }

    if (v65 == 1)
    {
      if (v64 != &v65)
      {
        free(v64);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v63;
        v34 = __p;
        if (v63 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v63 = v32;
        operator delete(v34);
      }

      v35 = v60;
      if (v60)
      {
        v36 = v61;
        v37 = v60;
        if (v61 != v60)
        {
          do
          {
            v39 = *--v36;
            v38 = v39;
            *v36 = 0;
            if (v39)
            {
              operator delete[](v38);
            }
          }

          while (v36 != v35);
          v37 = v60;
        }

        v61 = v35;
        operator delete(v37);
      }

      if (v58 != v59)
      {
        free(v58);
      }
    }
  }

  v40 = v52[0];
  if (v52[0])
  {
    do
    {
      v45 = *v40;
      if (*(v40 + 63) < 0)
      {
        operator delete(v40[5]);
        if (*(v40 + 39) < 0)
        {
LABEL_105:
          operator delete(v40[2]);
        }
      }

      else if (*(v40 + 39) < 0)
      {
        goto LABEL_105;
      }

      operator delete(v40);
      v40 = v45;
    }

    while (v45);
  }

  v41 = v51[0];
  v51[0] = 0;
  if (v41)
  {
    operator delete(v41);
  }

LABEL_91:
  if (HIDWORD(v55) && v55)
  {
    v42 = 0;
    do
    {
      v43 = *(v54 + v42);
      if (v43 != -8 && v43 != 0)
      {
        llvm::deallocate_buffer(*(v43 + 8), (8 * *(v43 + 24)));
      }

      v42 += 8;
    }

    while (8 * v55 != v42);
  }

  free(v54);
  if (!v22)
  {
    *(this + 5) |= 4uLL;
  }
}

uint64_t mlir::mps::MPSCopyDataFilesBase<mlir::mps::anonymous namespace::CopyDataFilesPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x348uLL);
  v5 = *(a1 + 8);
  v4[1] = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  *(v4 + 40) = 0;
  *(v4 + 120) = 0;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  v4[19] = 0u;
  v4[20] = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5AFC8C0;
  *&v7 = "(Optional) If set, all the relative paths will use this as the base path.";
  *(&v7 + 1) = 73;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 344, v4 + 152, "current-base-path", 17, &v7);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *&v7 = "All files will be copied to this path and will be referred to relatievly to this path.";
  *(&v7 + 1) = 86;
  result = mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 37), v4 + 152, "new-base-path", 13, &v7);
  *(v4 + 74) = &unk_1F5AFC930;
  *(v4 + 103) = &unk_1F5AFC9B0;
  *v4 = &unk_1F5AFC850;
  *a2 = v4;
  return result;
}

uint64_t mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v9[0] = a3;
  v9[1] = a4;
  v12 = a2;
  v13 = 0;
  v7 = llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(a1, v9, &v12, a5);
  *(v7 + 240) = 0;
  *v7 = &unk_1F5AFC9F0;
  *(v7 + 232) = &unk_1F5AFCA70;
  v12 = (v7 + 232);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, &v12);
  v10[0] = &unk_1F5AFCB18;
  v10[1] = a1;
  v14 = &v12;
  v11 = v10;
  v12 = &unk_1F5AFCB18;
  v13 = a1;
  std::__function::__value_func<void ()(std::string const&)>::swap[abi:nn200100](&v12, a1 + 200);
  if (v14 == &v12)
  {
    (*(*v14 + 4))(v14);
  }

  else if (v14)
  {
    (*(*v14 + 5))();
  }

  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))();
  }

  return a1;
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v8 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v9 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    v13 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v11 + 1, 8);
    GeneralCategory = v13;
    LODWORD(v11) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 152) = &unk_1F5B3E2B0;
  *(a1 + 160) = 0;
  *a1 = &unk_1F5B3E658;
  *(a1 + 192) = &unk_1F5B3E560;
  *(a1 + 200) = &unk_1F5AFCAD0;
  *(a1 + 224) = a1 + 200;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_4descEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISR_EEFvRKSB_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5AFCB18;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_4descEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISR_EEFvRKSB_EE7__cloneEPNS0_6__baseISV_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5AFCB18;
  a2[1] = v2;
  return result;
}

llvm::StringMapImpl *llvm::StringMap<llvm::DenseSet<mlir::mps::ReadDataFromFileOp,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>>,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x2000000000;
  if (*(a2 + 12))
  {
    llvm::StringMapImpl::init(this, *(a2 + 8));
    v4 = *(this + 2);
    *(this + 12) = *(a2 + 12);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = *(*a2 + 8 * i);
        if (v6)
        {
          v7 = v6 + 1 == 0;
        }

        else
        {
          v7 = 1;
        }

        if (!v7)
        {
          v8 = *v6;
          buffer = llvm::allocate_buffer(*v6 + 33, 8uLL);
          v10 = buffer;
          v11 = (buffer + 4);
          if (v8)
          {
            memcpy(buffer + 4, v6 + 4, v8);
          }

          v11[v8] = 0;
          *v10 = v8;
          v10[1] = 0;
          v10[2] = 0;
          llvm::deallocate_buffer(0, 0);
        }

        *(*this + 8 * i) = v6;
      }
    }
  }

  return this;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(void *a1, uint64_t a2)
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
      if (v16 == v8)
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

uint64_t mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::mps *this, mlir::DialectRegistry *a2)
{
  mlir::DialectRegistry::addExtension<mlir::mps::MPSDialect>(this, mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke);
  mlir::DialectRegistry::addExtension<mlir::mpsx::MPSXDialect>(this, mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_1::__invoke);

  return mlir::DialectRegistry::addExtension<mlir::mps_spi::MPSSPIDialect>(this, mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_2::__invoke);
}

uint64_t mlir::DialectRegistry::addExtension<mlir::mpsx::MPSXDialect>(uint64_t a1, uint64_t *a2)
{
  v4 = operator new(0x50uLL);
  v4[3] = "mpsx";
  v4[4] = 4;
  v4[2] = 0x300000001;
  *v4 = &unk_1F5AFCB60;
  v4[1] = (v4 + 3);
  v4[9] = a2;
  v10 = v4;
  v11 = a2;
  v13 = a2;
  v14 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::try_emplace<unsigned int const&>(a1 + 24, &v13, &v14, &v15);
  v5 = v16;
  if ((v16 & 1) == 0)
  {
    v10 = 0;
LABEL_7:
    (*(*v4 + 8))(v4);
    return v5;
  }

  v6 = *(a1 + 56);
  *(v15 + 8) = v6;
  v13 = &v11;
  v12 = &v10;
  if (v6 >= *(a1 + 60))
  {
    llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::TypeID const&>,std::tuple<std::unique_ptr<mlir::DialectExtensionBase>&&>>(a1 + 48, &std::piecewise_construct, &v13, &v12);
  }

  else
  {
    v7 = (*(a1 + 48) + 16 * v6);
    *v7 = a2;
    v8 = v10;
    v10 = 0;
    v7[1] = v8;
    *(a1 + 56) = v6 + 1;
  }

  v4 = v10;
  v10 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return v5;
}

uint64_t mlir::DialectRegistry::addExtension<mlir::mps_spi::MPSSPIDialect>(uint64_t a1, uint64_t *a2)
{
  v4 = operator new(0x50uLL);
  v4[3] = "mps_spi";
  v4[4] = 7;
  v4[2] = 0x300000001;
  *v4 = &unk_1F5AFCB98;
  v4[1] = (v4 + 3);
  v4[9] = a2;
  v10 = v4;
  v11 = a2;
  v13 = a2;
  v14 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::try_emplace<unsigned int const&>(a1 + 24, &v13, &v14, &v15);
  v5 = v16;
  if ((v16 & 1) == 0)
  {
    v10 = 0;
LABEL_7:
    (*(*v4 + 8))(v4);
    return v5;
  }

  v6 = *(a1 + 56);
  *(v15 + 8) = v6;
  v13 = &v11;
  v12 = &v10;
  if (v6 >= *(a1 + 60))
  {
    llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::TypeID const&>,std::tuple<std::unique_ptr<mlir::DialectExtensionBase>&&>>(a1 + 48, &std::piecewise_construct, &v13, &v12);
  }

  else
  {
    v7 = (*(a1 + 48) + 16 * v6);
    *v7 = a2;
    v8 = v10;
    v10 = 0;
    v7[1] = v8;
    *(a1 + 56) = v6 + 1;
  }

  v4 = v10;
  v10 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return v5;
}

void mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke(uint64_t a1)
{
  v2 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReluOp,void>::id, a1);
  if ((v3 & 1) == 0)
  {
    v181 = 1283;
    v178 = "Attempting to attach an interface to an unregistered operation ";
    v179 = "mps.relu";
    v122 = 8;
    goto LABEL_144;
  }

  v4 = v2;
  v5 = v2[2];
  if (v5 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v2[1];
    Values = mlir::SparseElementsAttr::getValues(v182);
    v5 = v4[2];
  }

  else
  {
    Values = v2[3];
  }

  {
    v159 = v5;
    v123 = Values;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    Values = v123;
    v5 = v159;
  }

  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(Values, v5, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v7 = malloc(8uLL);
  v8 = v7;
  {
    v160 = v7;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v8 = v160;
  }

  mlir::detail::InterfaceMap::insert((v4 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v8);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id, a1);
  if ((v10 & 1) == 0)
  {
    v181 = 1283;
    v178 = "Attempting to attach an interface to an unregistered operation ";
    v179 = "mps.add";
    v122 = 7;
    goto LABEL_144;
  }

  v11 = v9;
  v12 = v9[2];
  if (v12 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v9[1];
    v13 = mlir::SparseElementsAttr::getValues(v182);
    v12 = v11[2];
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = v9[3];
    {
      goto LABEL_12;
    }
  }

  v129 = v13;
  v144 = v12;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v13 = v129;
  v12 = v144;
LABEL_12:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v13, v12, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v14 = malloc(8uLL);
  v15 = v14;
  {
    v161 = v14;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v15 = v161;
  }

  mlir::detail::InterfaceMap::insert((v11 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v15);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, a1);
  if ((v17 & 1) == 0)
  {
    v181 = 1283;
    v124 = "mps.multiply";
LABEL_133:
    v178 = "Attempting to attach an interface to an unregistered operation ";
    v179 = v124;
    v122 = 12;
    goto LABEL_144;
  }

  v18 = v16;
  v19 = v16[2];
  if (v19 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v16[1];
    v20 = mlir::SparseElementsAttr::getValues(v182);
    v19 = v18[2];
    {
      goto LABEL_17;
    }
  }

  else
  {
    v20 = v16[3];
    {
      goto LABEL_17;
    }
  }

  v130 = v20;
  v145 = v19;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v20 = v130;
  v19 = v145;
LABEL_17:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v20, v19, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v21 = malloc(8uLL);
  v22 = v21;
  {
    v162 = v21;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v22 = v162;
  }

  mlir::detail::InterfaceMap::insert((v18 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v22);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherOp,void>::id, a1);
  if ((v24 & 1) == 0)
  {
    v181 = 1283;
    v125 = "mps.gather";
LABEL_127:
    v178 = "Attempting to attach an interface to an unregistered operation ";
    v179 = v125;
    v122 = 10;
    goto LABEL_144;
  }

  v25 = v23;
  v26 = v23[2];
  if (v26 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v23[1];
    v27 = mlir::SparseElementsAttr::getValues(v182);
    v26 = v25[2];
    {
      goto LABEL_22;
    }
  }

  else
  {
    v27 = v23[3];
    {
      goto LABEL_22;
    }
  }

  v131 = v27;
  v146 = v26;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v27 = v131;
  v26 = v146;
LABEL_22:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v27, v26, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v28 = malloc(8uLL);
  v29 = v28;
  {
    v163 = v28;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v29 = v163;
  }

  mlir::detail::InterfaceMap::insert((v25 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v29);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id, a1);
  if ((v31 & 1) == 0)
  {
    v181 = 1283;
    v125 = "mps.matmul";
    goto LABEL_127;
  }

  v32 = v30;
  v33 = v30[2];
  if (v33 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v30[1];
    v34 = mlir::SparseElementsAttr::getValues(v182);
    v33 = v32[2];
    {
      goto LABEL_27;
    }
  }

  else
  {
    v34 = v30[3];
    {
      goto LABEL_27;
    }
  }

  v132 = v34;
  v147 = v33;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v34 = v132;
  v33 = v147;
LABEL_27:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v34, v33, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v35 = malloc(8uLL);
  v36 = v35;
  {
    v164 = v35;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v36 = v164;
  }

  mlir::detail::InterfaceMap::insert((v32 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v36);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExponentOp,void>::id, a1);
  if ((v38 & 1) == 0)
  {
    v181 = 1283;
    v124 = "mps.exponent";
    goto LABEL_133;
  }

  v39 = v37;
  v40 = v37[2];
  if (v40 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v37[1];
    v41 = mlir::SparseElementsAttr::getValues(v182);
    v40 = v39[2];
    {
      goto LABEL_32;
    }
  }

  else
  {
    v41 = v37[3];
    {
      goto LABEL_32;
    }
  }

  v133 = v41;
  v148 = v40;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v41 = v133;
  v40 = v148;
LABEL_32:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v41, v40, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v42 = malloc(8uLL);
  v43 = v42;
  {
    v165 = v42;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v43 = v165;
  }

  mlir::detail::InterfaceMap::insert((v39 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v43);
  v44 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NegativeOp,void>::id, a1);
  if ((v45 & 1) == 0)
  {
    v181 = 1283;
    v124 = "mps.negative";
    goto LABEL_133;
  }

  v46 = v44;
  v47 = v44[2];
  if (v47 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v44[1];
    v48 = mlir::SparseElementsAttr::getValues(v182);
    v47 = v46[2];
    {
      goto LABEL_37;
    }
  }

  else
  {
    v48 = v44[3];
    {
      goto LABEL_37;
    }
  }

  v134 = v48;
  v149 = v47;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v48 = v134;
  v47 = v149;
LABEL_37:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v48, v47, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v49 = malloc(8uLL);
  v50 = v49;
  {
    v166 = v49;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v50 = v166;
  }

  mlir::detail::InterfaceMap::insert((v46 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v50);
  v51 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SubtractOp,void>::id, a1);
  if ((v52 & 1) == 0)
  {
    v181 = 1283;
    v124 = "mps.subtract";
    goto LABEL_133;
  }

  v53 = v51;
  v54 = v51[2];
  if (v54 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v51[1];
    v55 = mlir::SparseElementsAttr::getValues(v182);
    v54 = v53[2];
    {
      goto LABEL_42;
    }
  }

  else
  {
    v55 = v51[3];
    {
      goto LABEL_42;
    }
  }

  v135 = v55;
  v150 = v54;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v55 = v135;
  v54 = v150;
LABEL_42:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v55, v54, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v56 = malloc(8uLL);
  v57 = v56;
  {
    v167 = v56;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v57 = v167;
  }

  mlir::detail::InterfaceMap::insert((v53 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v57);
  v58 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalOp,void>::id, a1);
  if ((v59 & 1) == 0)
  {
    v181 = 1283;
    v178 = "Attempting to attach an interface to an unregistered operation ";
    v179 = "mps.reciprocal";
    v122 = 14;
    goto LABEL_144;
  }

  v60 = v58;
  v61 = v58[2];
  if (v61 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v58[1];
    v62 = mlir::SparseElementsAttr::getValues(v182);
    v61 = v60[2];
    {
      goto LABEL_47;
    }
  }

  else
  {
    v62 = v58[3];
    {
      goto LABEL_47;
    }
  }

  v136 = v62;
  v151 = v61;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v62 = v136;
  v61 = v151;
LABEL_47:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v62, v61, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v63 = malloc(8uLL);
  v64 = v63;
  {
    v168 = v63;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v64 = v168;
  }

  mlir::detail::InterfaceMap::insert((v60 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v64);
  v65 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::IdentityOp,void>::id, a1);
  if ((v66 & 1) == 0)
  {
    v181 = 1283;
    v124 = "mps.identity";
    goto LABEL_133;
  }

  v67 = v65;
  v68 = v65[2];
  if (v68 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v65[1];
    v69 = mlir::SparseElementsAttr::getValues(v182);
    v68 = v67[2];
    {
      goto LABEL_52;
    }
  }

  else
  {
    v69 = v65[3];
    {
      goto LABEL_52;
    }
  }

  v137 = v69;
  v152 = v68;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v69 = v137;
  v68 = v152;
LABEL_52:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v69, v68, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v70 = malloc(8uLL);
  v71 = v70;
  {
    v169 = v70;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v71 = v169;
  }

  mlir::detail::InterfaceMap::insert((v67 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v71);
  v72 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id, a1);
  if ((v73 & 1) == 0)
  {
    v181 = 1283;
    v126 = "mps.permute";
LABEL_138:
    v178 = "Attempting to attach an interface to an unregistered operation ";
    v179 = v126;
    v122 = 11;
    goto LABEL_144;
  }

  v74 = v72;
  v75 = v72[2];
  if (v75 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v72[1];
    v76 = mlir::SparseElementsAttr::getValues(v182);
    v75 = v74[2];
    {
      goto LABEL_57;
    }
  }

  else
  {
    v76 = v72[3];
    {
      goto LABEL_57;
    }
  }

  v138 = v76;
  v153 = v75;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v76 = v138;
  v75 = v153;
LABEL_57:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v76, v75, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v77 = malloc(8uLL);
  v78 = v77;
  {
    v170 = v77;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v78 = v170;
  }

  mlir::detail::InterfaceMap::insert((v74 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v78);
  v79 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id, a1);
  if ((v80 & 1) == 0)
  {
    v181 = 1283;
    v127 = "mps.read_variable";
LABEL_140:
    v178 = "Attempting to attach an interface to an unregistered operation ";
    v179 = v127;
    v122 = 17;
    goto LABEL_144;
  }

  v81 = v79;
  v82 = v79[2];
  if (v82 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v79[1];
    v83 = mlir::SparseElementsAttr::getValues(v182);
    v82 = v81[2];
    {
      goto LABEL_62;
    }
  }

  else
  {
    v83 = v79[3];
    {
      goto LABEL_62;
    }
  }

  v139 = v83;
  v154 = v82;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v83 = v139;
  v82 = v154;
LABEL_62:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v83, v82, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v84 = malloc(8uLL);
  v85 = v84;
  {
    v171 = v84;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v85 = v171;
  }

  mlir::detail::InterfaceMap::insert((v81 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v85);
  v86 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id, a1);
  if ((v87 & 1) == 0)
  {
    v181 = 1283;
    v128 = "mps.variable_from_tensor";
LABEL_142:
    v178 = "Attempting to attach an interface to an unregistered operation ";
    v179 = v128;
    v122 = 24;
    goto LABEL_144;
  }

  v88 = v86;
  v89 = v86[2];
  if (v89 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v86[1];
    v90 = mlir::SparseElementsAttr::getValues(v182);
    v89 = v88[2];
    {
      goto LABEL_67;
    }
  }

  else
  {
    v90 = v86[3];
    {
      goto LABEL_67;
    }
  }

  v140 = v90;
  v155 = v89;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v90 = v140;
  v89 = v155;
LABEL_67:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v90, v89, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v91 = malloc(8uLL);
  v92 = v91;
  {
    v172 = v91;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v92 = v172;
  }

  mlir::detail::InterfaceMap::insert((v88 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v92);
  v93 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, a1);
  if ((v94 & 1) == 0)
  {
    v181 = 1283;
    v126 = "mps.reshape";
    goto LABEL_138;
  }

  v95 = v93;
  v96 = v93[2];
  if (v96 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v93[1];
    v97 = mlir::SparseElementsAttr::getValues(v182);
    v96 = v95[2];
    {
      goto LABEL_72;
    }
  }

  else
  {
    v97 = v93[3];
    {
      goto LABEL_72;
    }
  }

  v141 = v97;
  v156 = v96;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v97 = v141;
  v96 = v156;
LABEL_72:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v97, v96, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v98 = malloc(8uLL);
  v99 = v98;
  {
    v173 = v98;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v99 = v173;
  }

  mlir::detail::InterfaceMap::insert((v95 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v99);
  v100 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id, a1);
  if ((v101 & 1) == 0)
  {
    v181 = 1283;
    v127 = "mps.strided_slice";
    goto LABEL_140;
  }

  v102 = v100;
  v103 = v100[2];
  if (v103 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v100[1];
    v104 = mlir::SparseElementsAttr::getValues(v182);
    v103 = v102[2];
    {
      goto LABEL_77;
    }
  }

  else
  {
    v104 = v100[3];
    {
      goto LABEL_77;
    }
  }

  v142 = v104;
  v157 = v103;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v104 = v142;
  v103 = v157;
LABEL_77:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v104, v103, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v105 = malloc(8uLL);
  v106 = v105;
  {
    v174 = v105;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v106 = v174;
  }

  mlir::detail::InterfaceMap::insert((v102 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v106);
  v107 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceUpdateOp,void>::id, a1);
  if ((v108 & 1) == 0)
  {
    v181 = 1283;
    v128 = "mps.strided_slice_update";
    goto LABEL_142;
  }

  v109 = v107;
  v110 = v107[2];
  if (v110 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v107[1];
    v111 = mlir::SparseElementsAttr::getValues(v182);
    v110 = v109[2];
    {
      goto LABEL_82;
    }
  }

  else
  {
    v111 = v107[3];
    {
      goto LABEL_82;
    }
  }

  v143 = v111;
  v158 = v110;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v111 = v143;
  v110 = v158;
LABEL_82:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v111, v110, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v112 = malloc(8uLL);
  v113 = v112;
  {
    v175 = v112;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v113 = v175;
  }

  mlir::detail::InterfaceMap::insert((v109 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v113);
  v114 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id, a1);
  if ((v115 & 1) == 0)
  {
    v181 = 1283;
    v178 = "Attempting to attach an interface to an unregistered operation ";
    v179 = "mps.transpose";
    v122 = 13;
LABEL_144:
    v180 = v122;
    v176 = ".";
    v177 = 259;
    llvm::operator+(&v178, &v176, v182);
    llvm::report_fatal_error(v182, 1);
  }

  v116 = v114;
  v117 = v114[2];
  if (v117 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v182[0] = v114[1];
    v118 = mlir::SparseElementsAttr::getValues(v182);
    v117 = v116[2];
    {
      goto LABEL_87;
    }
  }

  else
  {
    v118 = v114[3];
    {
      goto LABEL_87;
    }
  }

  v120 = v117;
  v121 = v118;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v118 = v121;
  v117 = v120;
LABEL_87:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v118, v117, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v119 = malloc(8uLL);
  {
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  }

  mlir::detail::InterfaceMap::insert((v116 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v119);
}

const char *llvm::getTypeName<mlir::MapDynamicShapeOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MapDynamicShapeOpInterface]";
  v6 = 82;
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

void mlir::anonymous namespace::mapDynamicShapeNAry(mlir::_anonymous_namespace_ *this@<X0>, uint64_t a2@<X8>)
{
  v26[6] = *MEMORY[0x1E69E9840];
  __src = v26;
  v25 = 0x600000000;
  if ((*(this + 46) & 0x80) == 0)
  {
    goto LABEL_21;
  }

  v4 = *(this + 17);
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = *(this + 9);
  do
  {
    v8 = (*(*(v6 + 32 * v5 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8))
    {
      __dst = 0;
      v22 = 0;
      goto LABEL_7;
    }

    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    __dst = v8;
    v22 = v9;
    if (v8)
    {
      if (mlir::CallOpInterface::getArgOperands(&__dst))
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__dst);
        if (!v11)
        {
          goto LABEL_7;
        }

        v12 = 8 * v11;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_7;
          }
        }
      }

      v7 = v25;
      if (v25 >= HIDWORD(v25))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v26, v25 + 1, 8);
        v7 = v25;
      }

      *(__src + v7) = v5;
      LODWORD(v25) = v25 + 1;
    }

LABEL_7:
    ++v5;
  }

  while (v5 != v4);
  v13 = v25;
  if (v25)
  {
    v14 = v23;
    __dst = v23;
    v22 = 0x600000000;
    goto LABEL_25;
  }

LABEL_20:
  if (HIDWORD(v25))
  {
LABEL_21:
    v15 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v26, 1uLL, 8);
    v15 = v25;
  }

  *(__src + v15) = -1;
  v14 = v23;
  __dst = v23;
  v22 = 0x600000000;
  v16 = __CFADD__(v25, 1);
  v13 = v25 + 1;
  LODWORD(v25) = v25 + 1;
  if (v16)
  {
    v13 = 0;
  }

  else
  {
LABEL_25:
    if (v13 < 7)
    {
      v17 = v13;
LABEL_29:
      memcpy(v14, __src, 8 * v17);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v23, v13, 8);
      v17 = v25;
      if (v25)
      {
        v14 = __dst;
        goto LABEL_29;
      }
    }

    LODWORD(v22) = v13;
  }

  v18 = (a2 + 32);
  *(a2 + 16) = a2 + 32;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x100000000;
  *(a2 + 24) = 0x600000000;
  v19 = 1;
  if ((a2 + 16) != &__dst && v13)
  {
    if (v13 < 7)
    {
      v20 = v13;
LABEL_37:
      memcpy(v18, __dst, 8 * v20);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 16, a2 + 32, v13, 8);
      v20 = v22;
      if (v22)
      {
        v18 = *(a2 + 16);
        goto LABEL_37;
      }
    }

    *(a2 + 24) = v13;
    v19 = *(a2 + 8) + 1;
  }

  *(a2 + 8) = v19;
  if (__dst != v23)
  {
    free(__dst);
  }

  if (__src != v26)
  {
    free(__src);
  }
}

void *llvm::SmallVector<llvm::SmallVector<long long,6u>,1u>::SmallVector(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x100000000;
  v6 = a3 << 6 >> 6;
  if (v6 >= 2)
  {
    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow(a1, v6);
    v7 = *(a1 + 2);
    v8 = *(a1 + 2);
    v9 = a3 << 6;
    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  v7 = 0;
  v8 = 0;
  v9 = a3 << 6;
  if (a3)
  {
LABEL_5:
    v10 = 0;
    v11 = *a1 + (v7 << 6);
    while (1)
    {
      v13 = (v11 + v10);
      v14 = (v11 + v10 + 16);
      *v13 = v14;
      v13[1] = 0x600000000;
      if (a2 == v11)
      {
        goto LABEL_9;
      }

      v15 = a2 + v10;
      v16 = *(a2 + v10 + 8);
      if (!*(a2 + v10 + 8))
      {
        goto LABEL_9;
      }

      if (v16 < 7)
      {
        v12 = *(a2 + v10 + 8);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + v10, v11 + v10 + 16, *(a2 + v10 + 8), 8);
        v12 = *(v15 + 8);
        if (!v12)
        {
          goto LABEL_8;
        }

        v14 = *v13;
      }

      memcpy(v14, *v15, 8 * v12);
LABEL_8:
      *(v13 + 2) = v16;
LABEL_9:
      v10 += 64;
      if (v9 == v10)
      {
        v8 = *(a1 + 2);
        break;
      }
    }
  }

LABEL_16:
  *(a1 + 2) = v8 + (v9 >> 6);
  return a1;
}

uint64_t mlir::detail::MapDynamicShapeOpInterfaceInterfaceTraits::FallbackModel<mlir::anonymous namespace::MapGatherOpInterface>::mapDynamicShape@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v41[6] = *MEMORY[0x1E69E9840];
  v31 = a1;
  v4 = *(a1 + 72);
  if ((*(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
    v4 = *(a1 + 72);
  }

  v5 = (*(*(v4 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v30[0] = v5;
  v30[1] = v6;
  if (*(a1 + 36))
  {
    v7 = a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v29[0] = v8;
  v29[1] = v9;
  result = mlir::CallOpInterface::getArgOperands(v30);
  if (result)
  {
    result = mlir::CallOpInterface::getArgOperands(v29);
    if (result)
    {
      if (mlir::CallOpInterface::getArgOperands(v29))
      {
        result = mlir::CallableOpInterface::getArgAttrsAttr(v29);
        if (!v11)
        {
          goto LABEL_24;
        }

        v12 = 8 * v11;
        while (*result != 0x8000000000000000)
        {
          result += 8;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_24;
          }
        }
      }

      mlir::CallableOpInterface::getArgAttrsAttr(v30);
      v14 = v13;
      Count = mlir::pdl_interp::CheckOperandCountOp::getCount(&v31);
      v27 = 0;
      v28 = 0;
      v16 = *(*(v31 + 72) + 88);
      v40[0] = &v27;
      __b[0] = v16;
      result = mlir::Value::getDefiningOp(__b);
      if (result)
      {
        result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v40, result);
        if (result)
        {
          v40[0] = v41;
          v40[1] = 0x600000000;
          mlir::getIntValues<long long>(v27, v28, v40, 1);
          v17 = *v40[0];
          v36 = 0;
          *__b = 0u;
          v37 = v39;
          v38 = 0x600000000;
          mlir::CallableOpInterface::getArgAttrsAttr(v29);
          if (v18 >= 1)
          {
            v19 = v18;
            v20 = 0;
            v21 = v17 + Count;
            v22 = v21 + v14;
            do
            {
              if (*(mlir::CallableOpInterface::getArgAttrsAttr(v29) + 8 * v20) == 0x8000000000000000)
              {
                __src = (v20 >= v21 && v20 <= v22);
                llvm::SetVector<long long,llvm::SmallVector<long long,6u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,2u>::insert(__b, &__src);
              }

              ++v20;
            }

            while (v19 != v20);
          }

          if (!v38)
          {
            __src = -1;
            llvm::SetVector<long long,llvm::SmallVector<long long,6u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,2u>::insert(__b, &__src);
          }

          if (__b[1])
          {
            if (v36 <= 4 * LODWORD(__b[1]) || v36 < 0x41)
            {
              if (v36)
              {
                memset_pattern16(__b[0], &unk_1E0970A00, 8 * v36);
              }

              __b[1] = 0;
            }

            else
            {
              llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::shrink_and_clear(__b);
            }
          }

          __src = v34;
          v33 = 0x600000000;
          if (v38)
          {
            llvm::SmallVectorImpl<unsigned long long>::operator=(&__src, &v37);
            v23 = v33;
          }

          else
          {
            v23 = 0;
          }

          v24 = (a2 + 32);
          *(a2 + 16) = a2 + 32;
          *a2 = a2 + 16;
          *(a2 + 8) = 0x100000000;
          *(a2 + 24) = 0x600000000;
          v25 = 1;
          if ((a2 + 16) == &__src || !v23)
          {
LABEL_52:
            *(a2 + 8) = v25;
            if (__src != v34)
            {
              free(__src);
            }

            if (v37 != v39)
            {
              free(v37);
            }

            llvm::deallocate_buffer(__b[0], (8 * v36));
          }

          if (v23 < 7)
          {
            v26 = v23;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 16, a2 + 32, v23, 8);
            v26 = v33;
            if (!v33)
            {
LABEL_51:
              *(a2 + 24) = v23;
              v25 = *(a2 + 8) + 1;
              goto LABEL_52;
            }

            v24 = *(a2 + 16);
          }

          memcpy(v24, __src, 8 * v26);
          goto LABEL_51;
        }
      }
    }
  }

LABEL_24:
  *(a2 + 32) = -1;
  *(a2 + 16) = a2 + 32;
  *(a2 + 24) = 0x600000001;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x100000001;
  return result;
}

uint64_t llvm::SetVector<long long,llvm::SmallVector<long long,6u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,2u>::insert(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 8))
  {
    v6 = (a1 + 24);
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = v7;
    if (v8)
    {
      v10 = *a2;
      v11 = 8 * v8;
      v9 = *(a1 + 24);
      while (*v9 != v10)
      {
        ++v9;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_14;
        }
      }
    }

    if (v9 == &v7[v8])
    {
      v10 = *a2;
LABEL_14:
      if (v8 >= *(a1 + 36))
      {
        v16 = (a1 + 24);
        v17 = v10;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v8 + 1, 8);
        v10 = v17;
        v6 = v16;
        v8 = *(a1 + 32);
        v7 = *(a1 + 24);
      }

      v7[v8] = v10;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 3)
      {
        v14 = *v6;
        v15 = 8 * v13;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v14++, v18);
          v15 -= 8;
        }

        while (v15);
      }

      return 1;
    }

    return 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, v18);
  if (v18[16] != 1)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *(a1 + 32);
  if (v5 >= *(a1 + 36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v5 + 1, 8);
    LODWORD(v5) = *(a1 + 32);
  }

  *(*(a1 + 24) + 8 * v5) = v4;
  ++*(a1 + 32);
  return 1;
}

void llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::shrink_and_clear(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = 1 << (33 - __clz(v2 - 1));
  if (v3 <= 64)
  {
    v3 = 64;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 != v1)
  {
    llvm::deallocate_buffer(*a1, (8 * v1));
  }

  *(a1 + 8) = 0;
  if (v1)
  {
    v5 = *a1;

    memset_pattern16(v5, &unk_1E0970A00, 8 * v1);
  }
}

void *mlir::detail::MapDynamicShapeOpInterfaceInterfaceTraits::FallbackModel<mlir::anonymous namespace::MapMatMulOpInterface>::mapDynamicShape@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v15 = a1;
  v4 = *(a1 + 72);
  v5 = (*(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    v4 = *(a1 + 72);
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(*(v4 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 36))
  {
    v9 = a1 - 16;
  }

  else
  {
    v9 = 0;
  }

  v10 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  IsNegated = mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v15);
  TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v15);
}

void *mlir::anonymous namespace::mapMatMulOperands@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v41[6] = *MEMORY[0x1E69E9840];
  v33[0] = a5;
  v33[1] = a6;
  result = mlir::CallOpInterface::getArgOperands(v33);
  if (result)
  {
    if (!mlir::CallOpInterface::getArgOperands(v33))
    {
      goto LABEL_8;
    }

    result = mlir::CallableOpInterface::getArgAttrsAttr(v33);
    if (v16)
    {
      v17 = 8 * v16;
      while (*result != 0x8000000000000000)
      {
        ++result;
        v17 -= 8;
        if (!v17)
        {
          goto LABEL_7;
        }
      }

LABEL_8:
      v38 = 0;
      *__b = 0u;
      v39 = v41;
      v40 = 0x600000000;
      mlir::CallableOpInterface::getArgAttrsAttr(v33);
      if (v18 >= 1)
      {
        v19 = v18;
        v20 = 0;
        if (a7)
        {
          v21 = -1;
        }

        else
        {
          v21 = -2;
        }

        v31 = v21;
        if (a8)
        {
          v22 = -2;
        }

        else
        {
          v22 = -1;
        }

        do
        {
          if (*(mlir::CallableOpInterface::getArgAttrsAttr(v33) + 8 * v20) == 0x8000000000000000)
          {
            __src = a1;
            v35 = a2;
            mlir::CallableOpInterface::getArgAttrsAttr(&__src);
            v24 = v23;
            if (v20 + 2 <= v23 && *(mlir::CallableOpInterface::getArgAttrsAttr(&__src) + 8 * v20) == 0x8000000000000000 || v20 == v24 + v31 && *(mlir::CallableOpInterface::getArgAttrsAttr(&__src) + 8 * v20) == 0x8000000000000000)
            {
              __src = 0;
              llvm::SetVector<long long,llvm::SmallVector<long long,6u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,2u>::insert(__b, &__src);
            }

            __src = a3;
            v35 = a4;
            mlir::CallableOpInterface::getArgAttrsAttr(&__src);
            v26 = v25;
            if (v20 + 2 <= v25 && *(mlir::CallableOpInterface::getArgAttrsAttr(&__src) + 8 * v20) == 0x8000000000000000 || v20 == v26 + v22 && *(mlir::CallableOpInterface::getArgAttrsAttr(&__src) + 8 * v20) == 0x8000000000000000)
            {
              __src = 1;
              llvm::SetVector<long long,llvm::SmallVector<long long,6u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,2u>::insert(__b, &__src);
            }
          }

          ++v20;
        }

        while (v19 != v20);
      }

      if (!v40)
      {
        __src = -1;
        llvm::SetVector<long long,llvm::SmallVector<long long,6u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,2u>::insert(__b, &__src);
      }

      if (__b[1])
      {
        if (v38 <= 4 * LODWORD(__b[1]) || v38 < 0x41)
        {
          if (v38)
          {
            memset_pattern16(__b[0], &unk_1E0970A00, 8 * v38);
          }

          __b[1] = 0;
        }

        else
        {
          llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::shrink_and_clear(__b);
        }
      }

      __src = v36;
      v35 = 0x600000000;
      if (v40)
      {
        llvm::SmallVectorImpl<unsigned long long>::operator=(&__src, &v39);
        v27 = v35;
      }

      else
      {
        v27 = 0;
      }

      v28 = (a9 + 32);
      *(a9 + 16) = a9 + 32;
      *a9 = a9 + 16;
      *(a9 + 8) = 0x100000000;
      *(a9 + 24) = 0x600000000;
      v29 = 1;
      if ((a9 + 16) == &__src || !v27)
      {
LABEL_49:
        *(a9 + 8) = v29;
        if (__src != v36)
        {
          free(__src);
        }

        if (v39 != v41)
        {
          free(v39);
        }

        llvm::deallocate_buffer(__b[0], (8 * v38));
      }

      if (v27 < 7)
      {
        v30 = v27;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a9 + 16, a9 + 32, v27, 8);
        v30 = v35;
        if (!v35)
        {
LABEL_48:
          *(a9 + 24) = v27;
          v29 = *(a9 + 8) + 1;
          goto LABEL_49;
        }

        v28 = *(a9 + 16);
      }

      memcpy(v28, __src, 8 * v30);
      goto LABEL_48;
    }
  }

LABEL_7:
  *(a9 + 32) = -1;
  *(a9 + 16) = a9 + 32;
  *(a9 + 24) = 0x600000001;
  *a9 = a9 + 16;
  *(a9 + 8) = 0x100000001;
  return result;
}

void mlir::detail::MapDynamicShapeOpInterfaceInterfaceTraits::FallbackModel<mlir::anonymous namespace::MapPermuteOpInterface>::mapDynamicShape(void *a1@<X8>)
{
  a1[4] = 0;
  a1[2] = a1 + 4;
  a1[3] = 0x600000001;
  *a1 = a1 + 2;
  a1[1] = 0x100000001;
}

int64x2_t *mlir::detail::MapDynamicShapeOpInterfaceInterfaceTraits::FallbackModel<mlir::anonymous namespace::MapReshapeOpInterface>::mapDynamicShape@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  *&v40 = v4;
  *(&v40 + 1) = v5;
  if (*(a1 + 36))
  {
    v6 = a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  *&v39 = v7;
  *(&v39 + 1) = v8;
  result = mlir::CallOpInterface::getArgOperands(&v40);
  if (!result)
  {
    goto LABEL_28;
  }

  result = mlir::CallOpInterface::getArgOperands(&v39);
  if (!result)
  {
    goto LABEL_28;
  }

  if (mlir::CallOpInterface::getArgOperands(&v39))
  {
    result = mlir::CallableOpInterface::getArgAttrsAttr(&v39);
    if (!v10)
    {
LABEL_28:
      *(a2 + 32) = -1;
      *(a2 + 16) = a2 + 32;
      *a2 = a2 + 16;
      *(a2 + 12) = 1;
      *(a2 + 28) = 6;
      goto LABEL_29;
    }

    v11 = 8 * v10;
    while (result->i64[0] != 0x8000000000000000)
    {
      result = (result + 8);
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_28;
      }
    }
  }

  result = mlir::CallableOpInterface::getArgAttrsAttr(&v40);
  if (v12)
  {
    v13 = (v12 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v13 >= 3)
    {
      v16 = v13 + 1;
      v17 = (v13 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v15 = &result->i64[v17];
      v18 = result + 1;
      v19 = 0uLL;
      v20 = vnegq_f64(0);
      v21 = v17;
      v22 = 0uLL;
      do
      {
        v19 = vsubq_s64(v19, vceqq_s64(v18[-1], v20));
        v22 = vsubq_s64(v22, vceqq_s64(*v18, v20));
        v18 += 2;
        v21 -= 4;
      }

      while (v21);
      v14 = vaddvq_s64(vaddq_s64(v22, v19));
      if (v16 == v17)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v14 = 0;
      v15 = result;
    }

    do
    {
      v23 = *v15++;
      if (v23 == 0x8000000000000000)
      {
        ++v14;
      }
    }

    while (v15 != (result + 8 * v12));
LABEL_27:
    if (v14 >= 2)
    {
      goto LABEL_28;
    }
  }

  v41 = v40;
  mlir::CallableOpInterface::getArgAttrsAttr(&v41);
  if (v24 >= 1)
  {
    v25 = 0;
    v26 = 0;
    v27 = 1;
    v28 = 1;
    while (1)
    {
      if (*(mlir::CallableOpInterface::getArgAttrsAttr(&v41) + 8 * v25) != 0x8000000000000000)
      {
        v30 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v41) + 8 * v25);
        if ((v26 & 1) == 0)
        {
          v26 = 0;
          v28 *= v30;
          goto LABEL_34;
        }

        v27 *= v30;
      }

      v26 = 1;
LABEL_34:
      ++v25;
      mlir::CallableOpInterface::getArgAttrsAttr(&v41);
      if (v25 >= v29)
      {
        goto LABEL_39;
      }
    }
  }

  v28 = 1;
  v27 = 1;
LABEL_39:
  v41 = v39;
  result = mlir::CallableOpInterface::getArgAttrsAttr(&v41);
  if (v31 >= 1)
  {
    v32 = 0;
    v33 = 0;
    v34 = 1;
    v35 = 1;
    while (1)
    {
      if (*(mlir::CallableOpInterface::getArgAttrsAttr(&v41) + 8 * v32) != 0x8000000000000000)
      {
        v37 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v41) + 8 * v32);
        if ((v33 & 1) == 0)
        {
          v33 = 0;
          v35 *= v37;
          goto LABEL_43;
        }

        v34 *= v37;
      }

      v33 = 1;
LABEL_43:
      ++v32;
      result = mlir::CallableOpInterface::getArgAttrsAttr(&v41);
      if (v32 >= v36)
      {
        goto LABEL_48;
      }
    }
  }

  v35 = 1;
  v34 = 1;
LABEL_48:
  v38 = (a2 + 32);
  *(a2 + 16) = a2 + 32;
  *a2 = a2 + 16;
  *(a2 + 12) = 1;
  *(a2 + 28) = 6;
  if (v28 == v35 && v27 == v34)
  {
    *v38 = 0;
  }

  else
  {
    *v38 = -1;
  }

LABEL_29:
  *(a2 + 24) = 1;
  *(a2 + 8) = 1;
  return result;
}

void mlir::detail::MapDynamicShapeOpInterfaceInterfaceTraits::FallbackModel<mlir::anonymous namespace::MapStridedSliceOpInterface>::mapDynamicShape(uint64_t a1@<X1>, void *a2@<X8>)
{
  v57[4] = *MEMORY[0x1E69E9840];
  v42 = a1;
  v4 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v41[0] = v4;
  v41[1] = v5;
  if (*(a1 + 36))
  {
    v6 = a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v40[0] = v7;
  v40[1] = v8;
  if (!mlir::CallOpInterface::getArgOperands(v41) || !mlir::CallOpInterface::getArgOperands(v40))
  {
    goto LABEL_17;
  }

  if (!mlir::CallOpInterface::getArgOperands(v40))
  {
    goto LABEL_19;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v40);
  if (!v10)
  {
LABEL_17:
    a2[4] = -1;
    a2[2] = a2 + 4;
    a2[3] = 0x600000001;
    *a2 = a2 + 2;
    a2[1] = 0x100000001;
    return;
  }

  v11 = 8 * v10;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v11 -= 8;
    if (!v11)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v12 = *(*(v42 + 72) + 56);
  v44[0] = &v38;
  v46 = v12;
  DefiningOp = mlir::Value::getDefiningOp(&v46);
  if (DefiningOp)
  {
    mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v44, DefiningOp);
  }

  v14 = *(*(v42 + 72) + 88);
  v44[0] = &v36;
  v46 = v14;
  v15 = mlir::Value::getDefiningOp(&v46);
  if (v15)
  {
    mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v44, v15);
  }

  v16 = *(*(v42 + 72) + 120);
  v44[0] = &v34;
  v46 = v16;
  v17 = mlir::Value::getDefiningOp(&v46);
  if (v17)
  {
    mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v44, v17);
  }

  v55 = v57;
  v56 = 0x400000000;
  v52 = v54;
  v53 = 0x400000000;
  v49 = v51;
  v50 = 0x400000000;
  if (v38)
  {
    mlir::getIntValues<long long>(v38, v39, &v55, 1);
  }

  if (v36)
  {
    mlir::getIntValues<long long>(v36, v37, &v52, 1);
  }

  if (v34)
  {
    mlir::getIntValues<long long>(v34, v35, &v49, 1);
  }

  Index = mlir::pdl::ResultOp::getIndex(&v42);
  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v42);
  Groups = mlir::mps::Conv3DOp::getGroups(&v42);
  v22 = mlir::CallableOpInterface::getArgAttrsAttr(v40);
  v23 = v21;
  v46 = v48;
  v47 = 0x600000000;
  v24 = (8 * v21) >> 3;
  if (v24 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v24, 8);
    v25 = v47;
    v26 = 8 * v23;
    if (!v23)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v25 = 0;
  v26 = 8 * v21;
  if (v21)
  {
LABEL_35:
    memcpy(v46 + 8 * v25, v22, v26);
    v25 = v47;
  }

LABEL_36:
  LODWORD(v47) = v25 + (v26 >> 3);
  mlir::CallableOpInterface::getArgAttrsAttr(v41);
  if (v27 >= 1)
  {
    v28 = 0;
    for (i = 0; i < v30; ++i)
    {
      if ((Groups >> i))
      {
        v44[0] = 1;
        llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v46, v46 + v28, v44);
      }

      mlir::CallableOpInterface::getArgAttrsAttr(v41);
      v28 += 8;
    }
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v41);
  if (v31 < 1)
  {
LABEL_56:
    a2[4] = 0;
    a2[2] = a2 + 4;
    a2[3] = 0x600000000;
    *(a2 + 6) = 1;
    *a2 = a2 + 2;
    a2[1] = 0x100000001;
  }

  else
  {
    v32 = 0;
    while (1)
    {
      if (*(v46 + v32) == 0x8000000000000000 && *(mlir::CallableOpInterface::getArgAttrsAttr(v41) + 8 * v32) == 0x8000000000000000)
      {
        if (v32 >= v50 || *(v49 + v32) != 1 || v32 >= v56 || v55[v32] && ((Index >> v32) & 1) == 0)
        {
          a2[4] = -1;
          a2[2] = a2 + 4;
          a2[3] = 0x600000000;
          *(a2 + 6) = 1;
          *a2 = a2 + 2;
          a2[1] = 0x100000001;
          goto LABEL_58;
        }

        if (v32 >= v53 || v52[v32] && ((Offset >> v32) & 1) == 0)
        {
          break;
        }
      }

      ++v32;
      mlir::CallableOpInterface::getArgAttrsAttr(v41);
      if (v32 >= v33)
      {
        goto LABEL_56;
      }
    }

    v43 = -1;
    llvm::SmallVector<long long,6u>::SmallVector(v44, &v43, 1);
    llvm::SmallVector<llvm::SmallVector<long long,6u>,1u>::SmallVector(a2, v44, 1);
    if (v44[0] != &v45)
    {
      free(v44[0]);
    }
  }

LABEL_58:
  if (v46 != v48)
  {
    free(v46);
  }

  if (v49 != v51)
  {
    free(v49);
  }

  if (v52 != v54)
  {
    free(v52);
  }

  if (v55 != v57)
  {
    free(v55);
  }
}

uint64_t llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (*a1 + 8 * v6 == a2)
  {
    v10 = *a3;
    if (v6 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v6 + 1, 8);
      v6 = *(a1 + 8);
      v5 = *a1;
    }

    *(v5 + 8 * v6) = v10;
    v11 = *(a1 + 8) + 1;
    *(a1 + 8) = v11;
    return *a1 + 8 * v11 - 8;
  }

  else
  {
    v7 = a2 - v5;
    if (v6 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v6 + 1, 8);
      v5 = *a1;
      v6 = *(a1 + 8);
    }

    v8 = (v5 + v7);
    v9 = (v5 + 8 * v6);
    *v9 = *(v9 - 1);
    if (v9 - 1 != v8)
    {
      memmove(v8 + 1, v8, (v9 - 1) - v8);
      LODWORD(v6) = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    *v8 = *a3;
  }

  return v8;
}

void mlir::detail::MapDynamicShapeOpInterfaceInterfaceTraits::FallbackModel<mlir::anonymous namespace::MapStridedSliceUpdateOpInterface>::mapDynamicShape(void *a1@<X8>)
{
  a1[4] = 0;
  a1[2] = a1 + 4;
  a1[3] = 0x600000001;
  *a1 = a1 + 2;
  a1[1] = 0x100000001;
}

void mlir::detail::MapDynamicShapeOpInterfaceInterfaceTraits::FallbackModel<mlir::anonymous namespace::MapTransposeOpInterface>::mapDynamicShape(void *a1@<X8>)
{
  a1[4] = 0;
  a1[2] = a1 + 4;
  a1[3] = 0x600000001;
  *a1 = a1 + 2;
  a1[1] = 0x100000001;
}

void mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_1::__invoke(uint64_t a1)
{
  v1 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::QuantizedMatMulOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v14 = 1283;
    v13[0] = "Attempting to attach an interface to an unregistered operation ";
    v13[2] = "mpsx.quantized_matmul";
    v13[3] = 21;
    v11 = ".";
    v12 = 259;
    llvm::operator+(v13, &v11, v15);
    llvm::report_fatal_error(v15, 1);
  }

  v3 = v1;
  v4 = v1[2];
  if (v4 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v15[0] = v1[1];
    Values = mlir::SparseElementsAttr::getValues(v15);
    v4 = v3[2];
  }

  else
  {
    Values = v1[3];
  }

  {
    v10 = v4;
    v8 = Values;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    Values = v8;
    v4 = v10;
  }

  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(Values, v4, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v6 = malloc(8uLL);
  v7 = v6;
  {
    v9 = v6;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v7 = v9;
  }

  mlir::detail::InterfaceMap::insert((v3 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v7);
}

void *mlir::detail::MapDynamicShapeOpInterfaceInterfaceTraits::FallbackModel<mlir::anonymous namespace::MapQuantizedMatMulOpInterface>::mapDynamicShape@<X0>(mlir::Operation *a1@<X1>, uint64_t a2@<X8>)
{
  v18 = a1;
  ODSOperandIndexAndLength = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v18, 0);
  v4 = (*(*(*(v18 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v18, 4);
  v7 = v18;
  v8 = (*(*(*(v18 + 9) + 32 * v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    v7 = v18;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 9);
  v11 = v7 - 16;
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  TransposeLhs = mlir::mpsx::QuantizedMatMulOp::getTransposeLhs(&v18);
  TransposeRhs = mlir::mpsx::QuantizedMatMulOp::getTransposeRhs(&v18);
}

void mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_2::__invoke(uint64_t a1)
{
  v2 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps_spi::ScaledDotProductAttentionOp,void>::id, a1);
  if ((v3 & 1) == 0)
  {
    v26 = 1283;
    v23 = "Attempting to attach an interface to an unregistered operation ";
    v24 = "mps_spi.sdpa";
    v17 = 12;
    goto LABEL_19;
  }

  v4 = v2;
  v5 = v2[2];
  if (v5 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v27[0] = v2[1];
    Values = mlir::SparseElementsAttr::getValues(v27);
    v5 = v4[2];
  }

  else
  {
    Values = v2[3];
  }

  {
    v19 = v5;
    v18 = Values;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    Values = v18;
    v5 = v19;
  }

  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(Values, v5, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v7 = malloc(8uLL);
  v8 = v7;
  {
    v20 = v7;
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v8 = v20;
  }

  mlir::detail::InterfaceMap::insert((v4 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v8);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps_spi::RMSNormOp,void>::id, a1);
  if ((v10 & 1) == 0)
  {
    v26 = 1283;
    v23 = "Attempting to attach an interface to an unregistered operation ";
    v24 = "mps_spi.rms_norm";
    v17 = 16;
LABEL_19:
    v25 = v17;
    v21 = ".";
    v22 = 259;
    llvm::operator+(&v23, &v21, v27);
    llvm::report_fatal_error(v27, 1);
  }

  v11 = v9;
  v12 = v9[2];
  if (v12 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v27[0] = v9[1];
    v13 = mlir::SparseElementsAttr::getValues(v27);
    v12 = v11[2];
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = v9[3];
    {
      goto LABEL_12;
    }
  }

  v15 = v12;
  v16 = v13;
  mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v13 = v16;
  v12 = v15;
LABEL_12:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v13, v12, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id);
  v14 = malloc(8uLL);
  {
    mlir::mps::registerMapDynamicShapeOpExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  }

  mlir::detail::InterfaceMap::insert((v11 + 4), mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v14);
}

void mlir::detail::MapDynamicShapeOpInterfaceInterfaceTraits::FallbackModel<mlir::anonymous namespace::MapScaledDotProductAttentionOpInterface>::mapDynamicShape(void *a1@<X8>)
{
  a1[4] = 0;
  a1[2] = a1 + 4;
  a1[3] = 0x600000001;
  *a1 = a1 + 2;
  a1[1] = 0x100000001;
}

void mlir::detail::MapDynamicShapeOpInterfaceInterfaceTraits::FallbackModel<mlir::anonymous namespace::MapRMSNormOpInterface>::mapDynamicShape(void *a1@<X8>)
{
  a1[4] = 0;
  a1[2] = a1 + 4;
  a1[3] = 0x600000001;
  *a1 = a1 + 2;
  a1[1] = 0x100000001;
}

void mlir::DialectRegistry::addExtension<mlir::mpsx::MPSXDialect>(void (*)(mlir::MLIRContext *,mlir::mpsx::MPSXDialect *))::Extension::~Extension(mlir::DialectExtensionBase *a1)
{
  mlir::DialectExtensionBase::~DialectExtensionBase(a1);

  operator delete(v1);
}

void mlir::DialectExtension<BOOL mlir::DialectRegistry::addExtension<mlir::mpsx::MPSXDialect>(void (*)(mlir::MLIRContext *,mlir::mpsx::MPSXDialect *))::Extension,mlir::mpsx::MPSXDialect>::clone(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x50uLL);
  v5 = v4;
  *v4 = &unk_1F5AF7ED0;
  v6 = v4 + 3;
  v4[1] = v4 + 3;
  v7 = (v4 + 1);
  v4[2] = 0x300000000;
  if (v4 != a1)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      if (v8 < 4)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 1), v6, *(a1 + 16), 16);
        v9 = *(a1 + 16);
        if (!v9)
        {
LABEL_8:
          *(v5 + 4) = v8;
          goto LABEL_9;
        }

        v6 = *v7;
      }

      memcpy(v6, *(a1 + 8), 16 * v9);
      goto LABEL_8;
    }
  }

LABEL_9:
  *v5 = &unk_1F5AFCB60;
  v5[9] = *(a1 + 72);
  *a2 = v5;
}

void mlir::DialectRegistry::addExtension<mlir::mps_spi::MPSSPIDialect>(void (*)(mlir::MLIRContext *,mlir::mps_spi::MPSSPIDialect *))::Extension::~Extension(mlir::DialectExtensionBase *a1)
{
  mlir::DialectExtensionBase::~DialectExtensionBase(a1);

  operator delete(v1);
}

void mlir::DialectExtension<BOOL mlir::DialectRegistry::addExtension<mlir::mps_spi::MPSSPIDialect>(void (*)(mlir::MLIRContext *,mlir::mps_spi::MPSSPIDialect *))::Extension,mlir::mps_spi::MPSSPIDialect>::clone(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x50uLL);
  v5 = v4;
  *v4 = &unk_1F5AF7ED0;
  v6 = v4 + 3;
  v4[1] = v4 + 3;
  v7 = (v4 + 1);
  v4[2] = 0x300000000;
  if (v4 != a1)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      if (v8 < 4)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 1), v6, *(a1 + 16), 16);
        v9 = *(a1 + 16);
        if (!v9)
        {
LABEL_8:
          *(v5 + 4) = v8;
          goto LABEL_9;
        }

        v6 = *v7;
      }

      memcpy(v6, *(a1 + 8), 16 * v9);
      goto LABEL_8;
    }
  }

LABEL_9:
  *v5 = &unk_1F5AFCB98;
  v5[9] = *(a1 + 72);
  *a2 = v5;
}

uint64_t sub_1DFCA114C()
{
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  *(v1 + 192) = 0;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 216) = 0;
  v3 = &v4;
  v4 = v1;
  mlir::detail::walk<mlir::ForwardIterator>(v0, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::mps::MemrefAllocTransformationBase::buildDependencies(mlir::Operation *)::$_1>, &v3, 1);
  return v1;
}

void mlir::mps::MemrefAllocTransformationBase::resolveDependencies(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v36[8] = *MEMORY[0x1E69E9840];
  v5 = (a3 + 4);
  *a3 = v5;
  a3[1] = v5;
  a3[2] = 16;
  *(a3 + 6) = 0;
  v33 = v36;
  v6 = 1;
  v35 = 8;
  v36[0] = a2;
  do
  {
    v7 = v33[v6 - 1];
    v34 = v6 - 1;
    v8 = *a3;
    if (a3[1] != *a3)
    {
      goto LABEL_4;
    }

    v10 = *(a3 + 5);
    if (!v10)
    {
LABEL_10:
      if (v10 >= *(a3 + 4))
      {
LABEL_4:
        llvm::SmallPtrSetImplBase::insert_imp_big(a3, v7);
        if ((v9 & 1) == 0)
        {
          goto LABEL_2;
        }
      }

      else
      {
        *(a3 + 5) = v10 + 1;
        v8[v10] = v7;
      }

      v13 = *(a1 + 200);
      v14 = *(a1 + 216);
      if (v14)
      {
        v15 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ (v7 >> 32));
        v16 = 0x9DDFEA08EB382D69 * ((v7 >> 32) ^ (v15 >> 47) ^ v15);
        v17 = (v14 - 1) & (-348639895 * ((v16 >> 47) ^ v16));
        v18 = (v13 + 168 * v17);
        v19 = *v18;
        if (v7 == *v18)
        {
          goto LABEL_19;
        }

        v20 = 1;
        while (v19 != -4096)
        {
          v21 = v17 + v20++;
          v17 = v21 & (v14 - 1);
          v18 = (v13 + 168 * v17);
          v19 = *v18;
          if (v7 == *v18)
          {
            goto LABEL_19;
          }
        }
      }

      v18 = (v13 + 168 * v14);
LABEL_19:
      if (v18 != (v13 + 168 * v14))
      {
        v23 = v18[1];
        v22 = v18[2];
        v24 = v18 + 1;
        v25 = v22 == v23;
        v26 = 16;
        if (v25)
        {
          v26 = 20;
        }

        v27 = *(v24 + v26);
        if (v27)
        {
          v28 = 8 * v27;
          v29 = v22;
          while (*v29 >= 0xFFFFFFFFFFFFFFFELL)
          {
            ++v29;
            v28 -= 8;
            if (!v28)
            {
              goto LABEL_2;
            }
          }
        }

        else
        {
          v29 = v22;
        }

        v30 = &v22[v27];
        if (v29 != v30)
        {
          v31 = v34;
          do
          {
            v32 = *v29;
            if (v31 >= v35)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v31 + 1, 8);
              v31 = v34;
            }

            v33[v31] = v32;
            v31 = ++v34;
            do
            {
              ++v29;
            }

            while (v29 != v30 && *v29 >= 0xFFFFFFFFFFFFFFFELL);
          }

          while (v29 != v30);
        }
      }

      goto LABEL_2;
    }

    v11 = 8 * v10;
    v12 = *a3;
    while (*v12 != v7)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_10;
      }
    }

LABEL_2:
    v6 = v34;
  }

  while (v34);
  if (v33 != v36)
  {
    free(v33);
  }
}

uint64_t mlir::mps::MemrefAllocTransformationBase::isLoop(mlir::mps::MemrefAllocTransformationBase *this, mlir::Operation *a2)
{
  if (mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    return 1;
  }

  if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    if (a2)
    {
      v4 = a2;
      InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      return mlir::RegionBranchOpInterface::hasLoop(&v4);
    }

    v4 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v4 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

BOOL mlir::mps::opMayAliasSource(mlir::mps *this, mlir::Operation *a2)
{
  v2 = *(*(this + 6) + 16);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v2 != &mlir::detail::TypeIDResolver<mlir::mps::Flatten2DOp,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::mps::ReinterpretCastOp,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id)
  {
    return v2 == &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id;
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::SparseElementsAttr::getValues(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::LoopLikeOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::LoopLikeOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::LoopLikeOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::LoopLikeOpInterface]";
  v6 = 75;
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

uint64_t OUTLINED_FUNCTION_1_13@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(result + 20) = v3 + 1;
  *(a3 + 8 * v3) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{

  return mlir::ValueRange::dereference_iterator((v31 + 16), a31);
}

uint64_t OUTLINED_FUNCTION_11_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a16 = v17;
  a17 = a1;

  return llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>>>,mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>>>::operator[](v18 + 200, &a16);
}

double mlir::mps::createMemrefViewTransformationPass@<D0>(void *a1@<X8>)
{
  v3 = operator new(0x158uLL);
  result = 0.0;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  v3[7] = 0u;
  v3[8] = 0u;
  v3[12] = 0u;
  v3[13] = 0u;
  v3[14] = 0u;
  v3[15] = 0u;
  v3[16] = 0u;
  v3[17] = 0u;
  *(v3 + 120) = 0;
  v3[8] = 0u;
  v3[9] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[10] = 0u;
  v3[11] = 0u;
  *(v3 + 22) = 0;
  *(v3 + 23) = v3 + 200;
  *(v3 + 49) = 4;
  *(v3 + 29) = v3 + 248;
  *(v3 + 61) = 4;
  *(v3 + 35) = 0;
  *(v3 + 36) = 0;
  *(v3 + 37) = 0x1000000000;
  v3[19] = 0u;
  v3[20] = 0u;
  *(v3 + 42) = 0;
  *v3 = &unk_1F5AFCBD0;
  *a1 = v3;
  return result;
}

void mlir::mps::anonymous namespace::MemrefViewTransformationPass::~MemrefViewTransformationPass(mlir::mps::_anonymous_namespace_::MemrefViewTransformationPass *this)
{
  *this = &unk_1F5B01A70;
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  if (*(this + 73))
  {
    v3 = *(this + 72);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(*(this + 35) + v4);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v4 += 8;
      }

      while (8 * v3 != v4);
    }
  }

  free(*(this + 35));
  v7 = *(this + 29);
  if (v7 != this + 248)
  {
    free(v7);
  }

  v8 = *(this + 23);
  if (v8 != this + 200)
  {
    free(v8);
  }

  v9 = *(this + 16);
  if (v9)
  {
    *(this + 17) = v9;
    operator delete(v9);
  }

  if (*(this + 120) == 1)
  {
    v10 = *(this + 8);
    if (v10 != *(this + 7))
    {
      free(v10);
    }
  }
}

{

  operator delete(v1);
}

void *mlir::mps::MPSMemrefViewTransformationBase<mlir::mps::anonymous namespace::MemrefViewTransformationPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5AFAEA8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id, "mpsx", 4uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFB318;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::MPSSPIDialect,void>::id, "mps_spi", 7uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFCC40;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::placement::PlacementDialect,void>::id, "placement", 9uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AF27A8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::memref::MemRefDialect,void>::id, "memref", 6uLL, v4);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void mlir::mps::anonymous namespace::MemrefViewTransformationPass::runOnOperation(mlir::mps::_anonymous_namespace_::MemrefViewTransformationPass *this)
{
  v190 = *MEMORY[0x1E69E9840];
  v1 = *(this + 5);
  v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
  if ((v1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v1 & 0xFFFFFFFFFFFFFFF8);
  }

  Context = mlir::Attribute::getContext((v2 + 6));
  *__p = 0u;
  *v177 = 0u;
  v178 = &v180;
  v179 = 0x600000000;
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v184 = 0;
  v185 = 0;
  v186 = 0x2800000000;
  v187 = 0;
  v188 = 0;
  v189 = 0x2800000000;
  v3 = mlir::Attribute::getContext((v2 + 6));
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v169, 1);
  mlir::Pattern::Pattern((v4 + 1), "mps.transpose", 13, v169, v3, 0, 0);
  *v4 = &unk_1F5AFCC88;
  if (!v4[9])
  {
    v169 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPSToMemrefTransposeConverter]";
    *&v170 = 113;
    v5 = llvm::StringRef::find(&v169, "DesiredTypeName = ", 0x12uLL, 0);
    if (v170 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v170;
    }

    v7 = &v169[v6];
    v8 = v170 - v6;
    if ((v170 - v6) >= 0x12)
    {
      v9 = 18;
    }

    else
    {
      v9 = v170 - v6;
    }

    v10 = &v7[v9];
    v11 = v8 - v9;
    if (v11 >= v11 - 1)
    {
      --v11;
    }

    v4[8] = v10;
    v4[9] = v11;
  }

  v12 = *(v4 + 22);
  if (v12 > *(v4 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 10), (v4 + 12), v12, 16);
    LODWORD(v12) = *(v4 + 22);
  }

  *(v4 + 22) = v12;
  v13 = __p[1];
  if (__p[1] >= v177[0])
  {
    v15 = __p[0];
    v16 = __p[1] - __p[0];
    v17 = (__p[1] - __p[0]) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      goto LABEL_240;
    }

    v19 = v177[0] - __p[0];
    if ((v177[0] - __p[0]) >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        goto LABEL_241;
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v4;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    __p[0] = v21;
    __p[1] = v14;
    v177[0] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *__p[1] = v4;
    v14 = v13 + 8;
  }

  __p[1] = v14;
  v23 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v169, 1);
  mlir::Pattern::Pattern((v23 + 1), "mps.permute", 11, v169, v3, 0, 0);
  *v23 = &unk_1F5AFCCE8;
  if (!v23[9])
  {
    v169 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPSToMemrefPermuteConverter]";
    *&v170 = 111;
    v24 = llvm::StringRef::find(&v169, "DesiredTypeName = ", 0x12uLL, 0);
    if (v170 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v170;
    }

    v26 = &v169[v25];
    v27 = v170 - v25;
    if ((v170 - v25) >= 0x12)
    {
      v28 = 18;
    }

    else
    {
      v28 = v170 - v25;
    }

    v29 = &v26[v28];
    v30 = v27 - v28;
    if (v30 >= v30 - 1)
    {
      --v30;
    }

    v23[8] = v29;
    v23[9] = v30;
  }

  v31 = *(v23 + 22);
  if (v31 > *(v23 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v23 + 10), (v23 + 12), v31, 16);
    LODWORD(v31) = *(v23 + 22);
  }

  *(v23 + 22) = v31;
  v32 = __p[1];
  if (__p[1] >= v177[0])
  {
    v34 = __p[0];
    v35 = __p[1] - __p[0];
    v36 = (__p[1] - __p[0]) >> 3;
    v37 = v36 + 1;
    if ((v36 + 1) >> 61)
    {
      goto LABEL_240;
    }

    v38 = v177[0] - __p[0];
    if ((v177[0] - __p[0]) >> 2 > v37)
    {
      v37 = v38 >> 2;
    }

    if (v38 >= 0x7FFFFFFFFFFFFFF8)
    {
      v39 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v39 = v37;
    }

    if (v39)
    {
      if (v39 >> 61)
      {
        goto LABEL_241;
      }

      v40 = operator new(8 * v39);
    }

    else
    {
      v40 = 0;
    }

    v41 = &v40[8 * v36];
    *v41 = v23;
    v33 = v41 + 8;
    memcpy(v40, v34, v35);
    __p[0] = v40;
    __p[1] = v33;
    v177[0] = &v40[8 * v39];
    if (v34)
    {
      operator delete(v34);
    }
  }

  else
  {
    *__p[1] = v23;
    v33 = v32 + 8;
  }

  __p[1] = v33;
  v42 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v169, 1);
  mlir::Pattern::Pattern((v42 + 1), "mps.reshape", 11, v169, v3, 0, 0);
  *v42 = &unk_1F5AFCD48;
  if (!v42[9])
  {
    v169 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPSToMemrefReshapeConverter]";
    *&v170 = 111;
    v43 = llvm::StringRef::find(&v169, "DesiredTypeName = ", 0x12uLL, 0);
    if (v170 >= v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = v170;
    }

    v45 = &v169[v44];
    v46 = v170 - v44;
    if ((v170 - v44) >= 0x12)
    {
      v47 = 18;
    }

    else
    {
      v47 = v170 - v44;
    }

    v48 = &v45[v47];
    v49 = v46 - v47;
    if (v49 >= v49 - 1)
    {
      --v49;
    }

    v42[8] = v48;
    v42[9] = v49;
  }

  v50 = *(v42 + 22);
  if (v50 > *(v42 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v42 + 10), (v42 + 12), v50, 16);
    LODWORD(v50) = *(v42 + 22);
  }

  *(v42 + 22) = v50;
  v51 = __p[1];
  if (__p[1] >= v177[0])
  {
    v53 = __p[0];
    v54 = __p[1] - __p[0];
    v55 = (__p[1] - __p[0]) >> 3;
    v56 = v55 + 1;
    if ((v55 + 1) >> 61)
    {
      goto LABEL_240;
    }

    v57 = v177[0] - __p[0];
    if ((v177[0] - __p[0]) >> 2 > v56)
    {
      v56 = v57 >> 2;
    }

    if (v57 >= 0x7FFFFFFFFFFFFFF8)
    {
      v58 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v58 = v56;
    }

    if (v58)
    {
      if (v58 >> 61)
      {
        goto LABEL_241;
      }

      v59 = operator new(8 * v58);
    }

    else
    {
      v59 = 0;
    }

    v60 = &v59[8 * v55];
    *v60 = v42;
    v52 = v60 + 8;
    memcpy(v59, v53, v54);
    __p[0] = v59;
    __p[1] = v52;
    v177[0] = &v59[8 * v58];
    if (v53)
    {
      operator delete(v53);
    }
  }

  else
  {
    *__p[1] = v42;
    v52 = v51 + 8;
  }

  __p[1] = v52;
  v61 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v169, 1);
  mlir::Pattern::Pattern((v61 + 1), "mps.reinterpret_cast", 20, v169, v3, 0, 0);
  *v61 = &unk_1F5AFCDA8;
  if (!v61[9])
  {
    v169 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPSToMemrefReinterpretCastConverter]";
    *&v170 = 119;
    v62 = llvm::StringRef::find(&v169, "DesiredTypeName = ", 0x12uLL, 0);
    if (v170 >= v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = v170;
    }

    v64 = &v169[v63];
    v65 = v170 - v63;
    if ((v170 - v63) >= 0x12)
    {
      v66 = 18;
    }

    else
    {
      v66 = v170 - v63;
    }

    v67 = &v64[v66];
    v68 = v65 - v66;
    if (v68 >= v68 - 1)
    {
      --v68;
    }

    v61[8] = v67;
    v61[9] = v68;
  }

  v69 = *(v61 + 22);
  if (v69 > *(v61 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v61 + 10), (v61 + 12), v69, 16);
    LODWORD(v69) = *(v61 + 22);
  }

  *(v61 + 22) = v69;
  v70 = __p[1];
  if (__p[1] >= v177[0])
  {
    v72 = __p[0];
    v73 = __p[1] - __p[0];
    v74 = (__p[1] - __p[0]) >> 3;
    v75 = v74 + 1;
    if ((v74 + 1) >> 61)
    {
      goto LABEL_240;
    }

    v76 = v177[0] - __p[0];
    if ((v177[0] - __p[0]) >> 2 > v75)
    {
      v75 = v76 >> 2;
    }

    if (v76 >= 0x7FFFFFFFFFFFFFF8)
    {
      v77 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v77 = v75;
    }

    if (v77)
    {
      if (v77 >> 61)
      {
        goto LABEL_241;
      }

      v78 = operator new(8 * v77);
    }

    else
    {
      v78 = 0;
    }

    v79 = &v78[8 * v74];
    *v79 = v61;
    v71 = v79 + 8;
    memcpy(v78, v72, v73);
    __p[0] = v78;
    __p[1] = v71;
    v177[0] = &v78[8 * v77];
    if (v72)
    {
      operator delete(v72);
    }
  }

  else
  {
    *__p[1] = v61;
    v71 = v70 + 8;
  }

  __p[1] = v71;
  v80 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v169, 1);
  mlir::Pattern::Pattern((v80 + 1), "mps.slice", 9, v169, v3, 0, 0);
  *v80 = &unk_1F5AFCE08;
  if (!v80[9])
  {
    v169 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPSToMemrefSliceConverter]";
    *&v170 = 109;
    v81 = llvm::StringRef::find(&v169, "DesiredTypeName = ", 0x12uLL, 0);
    if (v170 >= v81)
    {
      v82 = v81;
    }

    else
    {
      v82 = v170;
    }

    v83 = &v169[v82];
    v84 = v170 - v82;
    if ((v170 - v82) >= 0x12)
    {
      v85 = 18;
    }

    else
    {
      v85 = v170 - v82;
    }

    v86 = &v83[v85];
    v87 = v84 - v85;
    if (v87 >= v87 - 1)
    {
      --v87;
    }

    v80[8] = v86;
    v80[9] = v87;
  }

  v88 = *(v80 + 22);
  if (v88 > *(v80 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v80 + 10), (v80 + 12), v88, 16);
    LODWORD(v88) = *(v80 + 22);
  }

  *(v80 + 22) = v88;
  v89 = __p[1];
  if (__p[1] >= v177[0])
  {
    v91 = __p[0];
    v92 = __p[1] - __p[0];
    v93 = (__p[1] - __p[0]) >> 3;
    v94 = v93 + 1;
    if ((v93 + 1) >> 61)
    {
      goto LABEL_240;
    }

    v95 = v177[0] - __p[0];
    if ((v177[0] - __p[0]) >> 2 > v94)
    {
      v94 = v95 >> 2;
    }

    if (v95 >= 0x7FFFFFFFFFFFFFF8)
    {
      v96 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v96 = v94;
    }

    if (v96)
    {
      if (v96 >> 61)
      {
        goto LABEL_241;
      }

      v97 = operator new(8 * v96);
    }

    else
    {
      v97 = 0;
    }

    v98 = &v97[8 * v93];
    *v98 = v80;
    v90 = v98 + 8;
    memcpy(v97, v91, v92);
    __p[0] = v97;
    __p[1] = v90;
    v177[0] = &v97[8 * v96];
    if (v91)
    {
      operator delete(v91);
    }
  }

  else
  {
    *__p[1] = v80;
    v90 = v89 + 8;
  }

  __p[1] = v90;
  v99 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v169, 1);
  mlir::Pattern::Pattern((v99 + 1), "mps.strided_slice", 17, v169, v3, 0, 0);
  *v99 = &unk_1F5AFCE68;
  if (!v99[9])
  {
    v169 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPSToMemrefStridedSliceConverter]";
    *&v170 = 116;
    v100 = llvm::StringRef::find(&v169, "DesiredTypeName = ", 0x12uLL, 0);
    if (v170 >= v100)
    {
      v101 = v100;
    }

    else
    {
      v101 = v170;
    }

    v102 = &v169[v101];
    v103 = v170 - v101;
    if ((v170 - v101) >= 0x12)
    {
      v104 = 18;
    }

    else
    {
      v104 = v170 - v101;
    }

    v105 = &v102[v104];
    v106 = v103 - v104;
    if (v106 >= v106 - 1)
    {
      --v106;
    }

    v99[8] = v105;
    v99[9] = v106;
  }

  v107 = *(v99 + 22);
  if (v107 > *(v99 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v99 + 10), (v99 + 12), v107, 16);
    LODWORD(v107) = *(v99 + 22);
  }

  *(v99 + 22) = v107;
  v108 = __p[1];
  if (__p[1] >= v177[0])
  {
    v110 = __p[0];
    v111 = __p[1] - __p[0];
    v112 = (__p[1] - __p[0]) >> 3;
    v113 = v112 + 1;
    if ((v112 + 1) >> 61)
    {
      goto LABEL_240;
    }

    v114 = v177[0] - __p[0];
    if ((v177[0] - __p[0]) >> 2 > v113)
    {
      v113 = v114 >> 2;
    }

    if (v114 >= 0x7FFFFFFFFFFFFFF8)
    {
      v115 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v115 = v113;
    }

    if (v115)
    {
      if (v115 >> 61)
      {
        goto LABEL_241;
      }

      v116 = operator new(8 * v115);
    }

    else
    {
      v116 = 0;
    }

    v117 = &v116[8 * v112];
    *v117 = v99;
    v109 = v117 + 8;
    memcpy(v116, v110, v111);
    __p[0] = v116;
    __p[1] = v109;
    v177[0] = &v116[8 * v115];
    if (v110)
    {
      operator delete(v110);
    }
  }

  else
  {
    *__p[1] = v99;
    v109 = v108 + 8;
  }

  __p[1] = v109;
  v118 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v169, 1);
  mlir::Pattern::Pattern((v118 + 1), "mps.strided_slice_update", 24, v169, v3, 0, 0);
  *v118 = &unk_1F5AFCEC8;
  if (!v118[9])
  {
    v169 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPSToMemrefStridedSliceUpdateConverter]";
    *&v170 = 122;
    v119 = llvm::StringRef::find(&v169, "DesiredTypeName = ", 0x12uLL, 0);
    if (v170 >= v119)
    {
      v120 = v119;
    }

    else
    {
      v120 = v170;
    }

    v121 = &v169[v120];
    v122 = v170 - v120;
    if ((v170 - v120) >= 0x12)
    {
      v123 = 18;
    }

    else
    {
      v123 = v170 - v120;
    }

    v124 = &v121[v123];
    v125 = v122 - v123;
    if (v125 >= v125 - 1)
    {
      --v125;
    }

    v118[8] = v124;
    v118[9] = v125;
  }

  v126 = *(v118 + 22);
  if (v126 > *(v118 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v118 + 10), (v118 + 12), v126, 16);
    LODWORD(v126) = *(v118 + 22);
  }

  *(v118 + 22) = v126;
  v127 = __p[1];
  if (__p[1] >= v177[0])
  {
    v129 = __p[0];
    v130 = __p[1] - __p[0];
    v131 = (__p[1] - __p[0]) >> 3;
    v132 = v131 + 1;
    if ((v131 + 1) >> 61)
    {
      goto LABEL_240;
    }

    v133 = v177[0] - __p[0];
    if ((v177[0] - __p[0]) >> 2 > v132)
    {
      v132 = v133 >> 2;
    }

    if (v133 >= 0x7FFFFFFFFFFFFFF8)
    {
      v134 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v134 = v132;
    }

    if (v134)
    {
      if (v134 >> 61)
      {
        goto LABEL_241;
      }

      v135 = operator new(8 * v134);
    }

    else
    {
      v135 = 0;
    }

    v136 = &v135[8 * v131];
    *v136 = v118;
    v128 = v136 + 8;
    memcpy(v135, v129, v130);
    __p[0] = v135;
    __p[1] = v128;
    v177[0] = &v135[8 * v134];
    if (v129)
    {
      operator delete(v129);
    }
  }

  else
  {
    *__p[1] = v118;
    v128 = v127 + 8;
  }

  __p[1] = v128;
  v137 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v169, 1);
  mlir::Pattern::Pattern((v137 + 1), "mps.concat", 10, v169, v3, 0, 0);
  *v137 = &unk_1F5AFCF28;
  if (!v137[9])
  {
    v169 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPSToMemrefConcatConverter]";
    *&v170 = 110;
    v138 = llvm::StringRef::find(&v169, "DesiredTypeName = ", 0x12uLL, 0);
    if (v170 >= v138)
    {
      v139 = v138;
    }

    else
    {
      v139 = v170;
    }

    v140 = &v169[v139];
    v141 = v170 - v139;
    if ((v170 - v139) >= 0x12)
    {
      v142 = 18;
    }

    else
    {
      v142 = v170 - v139;
    }

    v143 = &v140[v142];
    v144 = v141 - v142;
    if (v144 >= v144 - 1)
    {
      --v144;
    }

    v137[8] = v143;
    v137[9] = v144;
  }

  v145 = *(v137 + 22);
  if (v145 > *(v137 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v137 + 10), (v137 + 12), v145, 16);
    LODWORD(v145) = *(v137 + 22);
  }

  *(v137 + 22) = v145;
  v146 = __p[1];
  if (__p[1] < v177[0])
  {
    *__p[1] = v137;
    v147 = v146 + 8;
    goto LABEL_211;
  }

  v148 = __p[0];
  v149 = __p[1] - __p[0];
  v150 = (__p[1] - __p[0]) >> 3;
  v151 = v150 + 1;
  if (!((v150 + 1) >> 61))
  {
    v152 = v177[0] - __p[0];
    if ((v177[0] - __p[0]) >> 2 > v151)
    {
      v151 = v152 >> 2;
    }

    if (v152 >= 0x7FFFFFFFFFFFFFF8)
    {
      v153 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v153 = v151;
    }

    if (!v153)
    {
      v154 = 0;
LABEL_209:
      v155 = &v154[8 * v150];
      *v155 = v137;
      v147 = v155 + 8;
      memcpy(v154, v148, v149);
      __p[0] = v154;
      __p[1] = v147;
      v177[0] = &v154[8 * v153];
      if (v148)
      {
        operator delete(v148);
      }

LABEL_211:
      __p[1] = v147;
      mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(v168, &Context, 0, 0, 0, 0);
      v156 = v2[11];
      if ((v156 & 0x7FFFFF) != 0)
      {
        v157 = (((&v2[4 * ((v156 >> 23) & 1) + 16] + ((v156 >> 21) & 0x7F8)) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10]);
        v174 = 0;
        LOBYTE(v169) = 1;
        HIDWORD(v169) = 0;
        v170 = xmmword_1E097BBC0;
        v171 = 0;
        v172 = 2;
        v173 = 0;
        mlir::applyPatternsAndFoldGreedily(v157, v168, &v169, &v174);
      }

      std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v168);
      if (HIDWORD(v188) && v188)
      {
        v158 = 0;
        do
        {
          v159 = *(v187 + v158);
          if (v159 != -8 && v159 != 0)
          {
            v161 = *v159;
            v162 = *(v159 + 4);
            if (v162 == (v159 + 8))
            {
              (*(*v162 + 32))(v162);
            }

            else if (v162)
            {
              (*(*v162 + 40))(v162);
            }

            llvm::deallocate_buffer(v159, (v161 + 41));
          }

          v158 += 8;
        }

        while (8 * v188 != v158);
      }

      free(v187);
      if (HIDWORD(v185) && v185)
      {
        v163 = 0;
        do
        {
          v164 = *(v184 + v163);
          if (v164 != -8 && v164 != 0)
          {
            v166 = *v164;
            v167 = *(v164 + 4);
            if (v167 == (v164 + 8))
            {
              (*(*v167 + 32))(v167);
            }

            else if (v167)
            {
              (*(*v167 + 40))(v167);
            }

            llvm::deallocate_buffer(v164, (v166 + 41));
          }

          v163 += 8;
        }

        while (8 * v185 != v163);
      }

      free(v184);
      llvm::deallocate_buffer(v181, (16 * v183));
    }

    if (!(v153 >> 61))
    {
      v154 = operator new(8 * v153);
      goto LABEL_209;
    }

LABEL_241:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

LABEL_240:
  std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
}

double mlir::mps::MPSMemrefViewTransformationBase<mlir::mps::anonymous namespace::MemrefViewTransformationPass>::clonePass@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x158uLL);
  v5 = *(a1 + 8);
  v4[1] = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  *(v4 + 40) = 0;
  *(v4 + 120) = 0;
  result = 0.0;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  v4[19] = 0u;
  v4[20] = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5AFCBD0;
  *a2 = v4;
  return result;
}

void *std::__function::__func<void mlir::DialectRegistry::insert<mlir::placement::PlacementDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::placement::PlacementDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFCC40;
  return result;
}

mlir::placement::PlacementDialect *llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::placement::PlacementDialect * mlir::MLIRContext::getOrLoadDialect<mlir::placement::PlacementDialect>(void)::{lambda(void)#1}>@<X0>(mlir::MLIRContext **a1@<X0>, mlir::placement::PlacementDialect **a2@<X8>)
{
  v3 = *a1;
  v4 = operator new(0x60uLL);
  result = mlir::placement::PlacementDialect::PlacementDialect(v4, v3);
  *a2 = result;
  return result;
}

void mlir::mps::anonymous namespace::MPSToMemrefTransposeConverter::~MPSToMemrefTransposeConverter(mlir::mps::_anonymous_namespace_::MPSToMemrefTransposeConverter *this)
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

uint64_t mlir::mps::anonymous namespace::ViewOpRewritePattern<mlir::mps::TransposeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 + 72) + 24);
  v49 = v6;
  v50 = a2;
  v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8))
  {
    v43[0] = 0uLL;
LABEL_17:
    v15 = "Unranked input types or dynamic shapes are not supported";
    goto LABEL_18;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  *&v43[0] = v7;
  *(&v43[0] + 1) = v8;
  if (!v7 || !mlir::CallOpInterface::getArgOperands(v43) || !mlir::CallOpInterface::getArgOperands(v43))
  {
    goto LABEL_17;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v10)
  {
    v11 = 8 * v10;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

LABEL_11:
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v43[0] = 0uLL;
LABEL_31:
    v15 = "Unranked result types or dynamic shapes are not supported";
LABEL_18:
    *&v43[0] = v15;
    LOWORD(v44) = 259;
    *&v52[0] = v43;
    v16 = *(a3 + 16);
    if (v16)
    {
      goto LABEL_19;
    }

    return 0;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  *&v43[0] = v13;
  *(&v43[0] + 1) = v14;
  if (!v13 || !mlir::CallOpInterface::getArgOperands(v43) || !mlir::CallOpInterface::getArgOperands(v43))
  {
    goto LABEL_31;
  }

  v18 = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v19)
  {
    v20 = 8 * v19;
    while (*v18 != 0x8000000000000000)
    {
      ++v18;
      v20 -= 8;
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_31;
  }

LABEL_29:
  v21 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v21)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  v48[0] = v21;
  v48[1] = v22;
  *&v43[0] = mlir::ElementsAttr::isSplat(v48);
  if (mlir::Type::isInteger(v43, 1))
  {
    *&v43[0] = "Boolean conversion is not supported for mps_spi.strided_array_view()";
    LOWORD(v44) = 259;
    *&v52[0] = v43;
    v16 = *(a3 + 16);
    if (v16)
    {
LABEL_19:
      if (mlir::RewriterBase::Listener::classof(v16))
      {
        (*(*v16 + 88))(v16, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::TransposeOp &>(mlir::mps::TransposeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v52);
      }
    }

    return 0;
  }

  v23 = *(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id)
  {
    return 0;
  }

  v25 = *(*(*(v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v49);
    if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
    {
      NextResultAtOffset = *(*(DefiningOp + 72) + 24);
    }

    else
    {
      v28 = v49;
      do
      {
        v28 = *v28;
        if (!v28)
        {
          v6 = mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>((a3 + 8), *(a2 + 24), &v49) - 16;
          goto LABEL_61;
        }

        v29 = v28[2];
        if (v29)
        {
          v30 = *(*(v29 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id;
        }

        else
        {
          v30 = 0;
        }
      }

      while (!v30);
      if (*(v29 + 36))
      {
        v31 = v29 - 16;
      }

      else
      {
        v31 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0);
    }

    v47 = NextResultAtOffset;
    if (!NextResultAtOffset)
    {
    }
  }

  else
  {
    if (v25 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
    }

LABEL_61:
    v47 = v6;
  }

  v33 = *(a2 + 36);
  if (v33)
  {
    v34 = a2 - 16;
  }

  else
  {
    v34 = 0;
  }

  v51.n128_u64[0] = v34;
  v51.n128_u64[1] = v33;
  mlir::ResultRange::use_begin(&v51, v52);
  v35 = *(a2 + 36);
  if (v35)
  {
    v36 = a2 - 16;
  }

  else
  {
    v36 = 0;
  }

  v51.n128_u64[0] = v36;
  v51.n128_u64[1] = v35;
  mlir::ResultRange::use_end(&v51, v45);
  v44 = v53;
  v37 = v53;
  v43[0] = v52[0];
  v43[1] = v52[1];
  v38 = v46;
  if (v53 != v46)
  {
    while (*(*(*(v37 + 16) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
    {
      mlir::ResultRange::UseIterator::operator++(v52);
      v37 = v53;
      if (v53 == v38)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_73:
  v39 = mlir::Value::getDefiningOp(&v47);
  if (!v39)
  {
    return (*(*a1 + 72))(a1, v47, a2, a3);
  }

  v40 = *(*(v39 + 48) + 16);
  v41 = v40 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id;
  v42 = v40 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id ? v39 : 0;
  *&v52[0] = v42;
  if (!v41 || mlir::placement::RegionCall::getRegionType(v52) != 1)
  {
    return (*(*a1 + 72))(a1, v47, a2, a3);
  }

  *&v43[0] = "Bufferization is not supported for ANE regions";
  LOWORD(v44) = 259;
  return mlir::RewriterBase::notifyMatchFailure<mlir::mps::TransposeOp &>(a3, &v50, v43);
}

uint64_t mlir::mps::anonymous namespace::MPSToMemrefTransposeConverter::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v74[6] = *MEMORY[0x1E69E9840];
  v51 = a2;
  v73[0] = v74;
  v73[1] = 0x600000000;
  v71[0] = v72;
  v71[1] = 0x600000000;
  if (mlir::matchConstantWithIntVector<long long>(*(a3[9] + 56), v73) & 1) != 0 && (mlir::matchConstantWithIntVector<long long>(*(a3[9] + 88), v71))
  {
    v50 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::ArrayAttr::getValue(&v50);
    v9 = v8;
    Value = mlir::ArrayAttr::getValue(&v50);
    mlir::getStridesAndOffset(v50, &v68);
    v11 = *v73[0];
    v12 = *v71[0];
    v65 = v67;
    v67[0] = v11;
    v67[1] = v12;
    *v66 = 0x600000002;
    v63[0] = v64;
    v63[1] = 0x600000000;
    v60 = v62;
    v61 = 0x600000000;
    if (!v9)
    {
      v18 = 2;
      v19 = v67;
      goto LABEL_20;
    }

    if (v9 < 7)
    {
      v13 = 0;
      v14 = v9;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v9, 8);
      v13 = v61;
      v14 = (v9 - v61);
      if (v9 == v61)
      {
        goto LABEL_19;
      }
    }

    bzero(v60 + 8 * v13, 8 * v14);
LABEL_19:
    LODWORD(v61) = v9;
    v19 = v65;
    v18 = v66[0];
LABEL_20:
    if (!mlir::getPositiveAxes(v19, v18, v9, v63, 0, 0, 0))
    {
      v57 = "Failed to extract positive axes";
      v59[8] = 259;
      v54 = &v57;
      v25 = *(a4 + 16);
      if (v25 && mlir::RewriterBase::Listener::classof(v25))
      {
        (*(*v25 + 88))(v25, a3[3], llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::TransposeOp &>(mlir::mps::TransposeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v54);
      }

      v16 = 0;
      goto LABEL_40;
    }

    v20 = v60;
    v21 = v61;
    if (v61)
    {
      v22 = (v61 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v22 < 3)
      {
        v23 = 0;
        v24 = v60;
        do
        {
LABEL_31:
          v24->i64[0] = v23;
          v24 = (v24 + 8);
          ++v23;
        }

        while (v24 != (v20 + 8 * v21));
        goto LABEL_32;
      }

      v26 = v22 + 1;
      v23 = (v22 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v24 = (v60 + 8 * v23);
      v27 = xmmword_1E09700F0;
      v28 = (v60 + 16);
      v29 = vdupq_n_s64(2uLL);
      v30 = vdupq_n_s64(4uLL);
      v31 = v23;
      do
      {
        v28[-1] = v27;
        *v28 = vaddq_s64(v27, v29);
        v27 = vaddq_s64(v27, v30);
        v28 += 2;
        v31 -= 4;
      }

      while (v31);
      if (v26 != v23)
      {
        goto LABEL_31;
      }
    }

LABEL_32:
    v32 = *(v63[0] + 1);
    v33 = v20->i64[*v63[0]];
    v20->i64[*v63[0]] = v20->i64[v32];
    v20->i64[v32] = v33;
    PermutationMap = mlir::AffineMap::getPermutationMap(v20, v21, (*(a1 + 24) & 0xFFFFFFFFFFFFFFF8));
    v57 = mlir::AffineMapAttr::get(PermutationMap);
    v35 = mlir::AffineMapAttr::getValue(&v57);
    mlir::applyPermutationMap<long long>(v35, Value, &v57);
    mlir::applyPermutationMap<long long>(v35, v68, &v54);
    StridedLinearLayoutMap = mlir::makeStridedLinearLayoutMap(v54, v55, v70, (*(a1 + 24) & 0xFFFFFFFFFFFFFFF8));
    v37 = v57;
    v38 = v58;
    RHS = mlir::AffineBinaryOpExpr::getRHS(&v50);
    v49 = mlir::MemRefType::get(v37, v38, RHS, StridedLinearLayoutMap, 0);
    v40 = mlir::OpBuilder::create<mlir::mps_spi::StridedArrayViewOp,mlir::MemRefType &,mlir::Value &,long long &,llvm::SmallVector<long long,6u> &,llvm::SmallVector<long long,6u> &>((a4 + 8), a3[3], &v49, &v51, &v70, &v57, &v54);
    v47 = "transpose";
    v48 = 259;
    StringAttr = mlir::Builder::getStringAttr((a4 + 8), &v47);
    Context = mlir::Attribute::getContext((v40 + 24));
    v53 = 261;
    v52[0] = "op";
    v52[1] = 2;
    v43 = mlir::StringAttr::get(Context, v52);
    mlir::Operation::setAttr(v40, v43, StringAttr);
    v44 = a3[3];
    if (*(v40 + 36))
    {
      v45 = v40 - 16;
    }

    else
    {
      v45 = 0;
    }

    v52[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v45, 0);
    v46 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>((a4 + 8), v44, v52);
    mlir::RewriterBase::replaceOp(a4, a3, v46);
    if (v54 != &v56)
    {
      free(v54);
    }

    if (v57 != v59)
    {
      free(v57);
    }

    v16 = 1;
LABEL_40:
    if (v60 != v62)
    {
      free(v60);
    }

    if (v63[0] != v64)
    {
      free(v63[0]);
    }

    if (v65 != v67)
    {
      free(v65);
    }

    if (v68 != v69)
    {
      free(v68);
    }

    goto LABEL_11;
  }

  v68 = "Failed to get constant axes for transpose op";
  v69[8] = 259;
  v65 = &v68;
  v15 = *(a4 + 16);
  if (v15 && mlir::RewriterBase::Listener::classof(v15))
  {
    (*(*v15 + 88))(v15, a3[3], llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::TransposeOp &>(mlir::mps::TransposeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v65);
  }

  v16 = 0;
LABEL_11:
  if (v71[0] != v72)
  {
    free(v71[0]);
  }

  if (v73[0] != v74)
  {
    free(v73[0]);
  }

  return v16;
}

uint64_t mlir::mps::anonymous namespace::ViewOpRewritePattern<mlir::mps::TransposeOp>::bufferizeViewOp(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a1 - 16;
  if (*(a1 + 36))
  {
    v5 = a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v29 = NextResultAtOffset;
  v7 = *NextResultAtOffset;
  if (*NextResultAtOffset)
  {
    while (*(*(v7[2] + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
    {
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
LABEL_7:
    v8 = (NextResultAtOffset[1] & 0xFFFFFFFFFFFFFFF8);
    if (v8)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    }

    else
    {
      v9 = 0;
    }

    v28[0] = v8;
    v28[1] = v9;
    v11 = *(a1 + 24);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v28);
    v14 = v13;
    isSplat = mlir::ElementsAttr::isSplat(v28);
    v30 = mlir::MemRefType::get(ArgAttrsAttr, v14, isSplat, 0, 0, 0);
    v27 = mlir::OpBuilder::create<mlir::memref::AllocOp,mlir::MemRefType>((a2 + 8), v11, &v30) - 16;
    v16 = mlir::OpBuilder::create<mlir::mpsx::MemrefBackedOp,mlir::Value &>((a2 + 8), *(a1 + 24), &v27);
    v17 = ((v16 + 16 * ((*(v16 + 44) >> 23) & 1) + ((*(v16 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v16 + 40);
    mlir::ValueRange::ValueRange(&v30, 0, 0);
    Block = mlir::OpBuilder::createBlock((a2 + 8), v17, 0, v30, v31, 0, 0);
    v19 = Block[5];
    *(a2 + 24) = Block;
    *(a2 + 32) = v19;
    mlir::Operation::moveBefore(a1, Block, Block + 4);
    mlir::OpBuilder::create<mlir::mpsx::UseMemrefOp,mlir::Value &>((a2 + 8), *(a1 + 24), &v29);
    v20 = *(v16 + 16);
    v22 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v16, v21) + 8);
    *(a2 + 24) = v20;
    *(a2 + 32) = v22;
    v23 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>((a2 + 8), *(a1 + 24), &v27);
    v24 = *(a1 + 36);
    if (v24)
    {
      v25 = v4;
    }

    else
    {
      v25 = 0;
    }

    v30 = v25;
    v31 = v24;
    return 1;
  }
}

double mlir::Operation::getUsers@<D0>(mlir::Operation *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 9);
  v5 = this - 16;
  if (v4)
  {
    v6 = this - 16;
  }

  else
  {
    v6 = 0;
  }

  v13.n128_u64[0] = v6;
  v13.n128_u64[1] = v4;
  mlir::ResultRange::use_begin(&v13, v11);
  v7 = *(this + 9);
  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v13.n128_u64[0] = v8;
  v13.n128_u64[1] = v7;
  mlir::ResultRange::use_end(&v13, (a2 + 40));
  result = *v11;
  v10 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v10;
  *(a2 + 32) = v12;
  return result;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::TransposeOp &>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v6 = a3;
  v4 = *(a1 + 16);
  if (v4 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v4 + 88))(v4, *(v3 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::TransposeOp &>(mlir::mps::TransposeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v6);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>(mlir::UnknownLoc **a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::placement::TensorToMemref::build(a1, v15, a3, 1uLL, 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::memref::AllocOp,mlir::MemRefType>(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::AllocOp,mlir::MemRefType &,llvm::SmallVector<mlir::Value,4u> &,mlir::OperandRange,mlir::IntegerAttr>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::memref::AllocOp::build(a1, v15, *a3, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mpsx::MemrefBackedOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::MemrefBackedOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mpsx::MemrefBackedOp::build(a1, v15, a3, 1uLL);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mpsx::UseMemrefOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::UseMemrefOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::UseMemrefOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::func::ReturnOp::build(a1, v15, a3, 1uLL);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::UseMemrefOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>(mlir::UnknownLoc **a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::placement::MemrefToTensor::build(a1, v15, a3, 1uLL, 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
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

void mlir::applyPermutationMap<long long>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a1;
  v5 = a3 + 16;
  *a3 = a3 + 16;
  *(a3 + 8) = 0x600000000;
  Value = mlir::arith::FastMathFlagsAttr::getValue(&v18);
  if (*(a3 + 12) < Value)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, v5, Value, 8);
  }

  Results = mlir::AffineMap::getResults(&v18);
  if (v8)
  {
    v9 = Results;
    v10 = 8 * v8;
    while (1)
    {
      v11 = *v9;
      v19 = *v9;
      v12 = mlir::arith::FastMathFlagsAttr::getValue(&v19) == 6 ? v11 : 0;
      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v19, v12);
      v17 = v19;
      if (!v19)
      {
        break;
      }

      v13 = *(a2 + 8 * mlir::AffineDimExpr::getPosition(&v17));
      v14 = *(a3 + 8);
      v15 = v13;
      if (v14 >= *(a3 + 12))
      {
        goto LABEL_16;
      }

LABEL_10:
      *(*a3 + 8 * v14) = v15;
      ++*(a3 + 8);
      ++v9;
      v10 -= 8;
      if (!v10)
      {
        return;
      }
    }

    v19 = v11;
    if (mlir::arith::FastMathFlagsAttr::getValue(&v19) == 5)
    {
      v16 = v11;
    }

    else
    {
      v16 = 0;
    }

    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v19, v16);
    v13 = 0;
    v15 = 0;
    v14 = *(a3 + 8);
    if (v14 < *(a3 + 12))
    {
      goto LABEL_10;
    }

LABEL_16:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, v5, v14 + 1, 8);
    v14 = *(a3 + 8);
    v15 = v13;
    goto LABEL_10;
  }
}

uint64_t mlir::OpBuilder::create<mlir::mps_spi::StridedArrayViewOp,mlir::MemRefType &,mlir::Value &,long long &,llvm::SmallVector<long long,6u> &,llvm::SmallVector<long long,6u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void **a5, uint64_t a6, uint64_t a7)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v21 = a2;
  Context = mlir::Attribute::getContext(&v21);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps_spi::StridedArrayViewOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps_spi::StridedArrayViewOp,mlir::MemRefType &,mlir::Value &,long long &,llvm::SmallVector<long long,6u> &,llvm::SmallVector<long long,6u> &>(v24, v23, v22);
  }

  mlir::OperationState::OperationState(v24, a2, v15);
  mlir::mps_spi::StridedArrayViewOp::build(a1, v24, *a3, *a4, *a5, *a6, *(a6 + 8), v17, *a7, *(a7 + 8), 0, 0);
  v18 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps_spi::StridedArrayViewOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v19;
}

void mlir::mps::anonymous namespace::MPSToMemrefPermuteConverter::~MPSToMemrefPermuteConverter(mlir::mps::_anonymous_namespace_::MPSToMemrefPermuteConverter *this)
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

uint64_t mlir::mps::anonymous namespace::ViewOpRewritePattern<mlir::mps::PermuteOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 + 72) + 24);
  v49 = v6;
  v50 = a2;
  v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8))
  {
    v43[0] = 0uLL;
LABEL_17:
    v15 = "Unranked input types or dynamic shapes are not supported";
    goto LABEL_18;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  *&v43[0] = v7;
  *(&v43[0] + 1) = v8;
  if (!v7 || !mlir::CallOpInterface::getArgOperands(v43) || !mlir::CallOpInterface::getArgOperands(v43))
  {
    goto LABEL_17;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v10)
  {
    v11 = 8 * v10;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

LABEL_11:
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v43[0] = 0uLL;
LABEL_31:
    v15 = "Unranked result types or dynamic shapes are not supported";
LABEL_18:
    *&v43[0] = v15;
    LOWORD(v44) = 259;
    *&v52[0] = v43;
    v16 = *(a3 + 16);
    if (v16)
    {
      goto LABEL_19;
    }

    return 0;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  *&v43[0] = v13;
  *(&v43[0] + 1) = v14;
  if (!v13 || !mlir::CallOpInterface::getArgOperands(v43) || !mlir::CallOpInterface::getArgOperands(v43))
  {
    goto LABEL_31;
  }

  v18 = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v19)
  {
    v20 = 8 * v19;
    while (*v18 != 0x8000000000000000)
    {
      ++v18;
      v20 -= 8;
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_31;
  }

LABEL_29:
  v21 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v21)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  v48[0] = v21;
  v48[1] = v22;
  *&v43[0] = mlir::ElementsAttr::isSplat(v48);
  if (mlir::Type::isInteger(v43, 1))
  {
    *&v43[0] = "Boolean conversion is not supported for mps_spi.strided_array_view()";
    LOWORD(v44) = 259;
    *&v52[0] = v43;
    v16 = *(a3 + 16);
    if (v16)
    {
LABEL_19:
      if (mlir::RewriterBase::Listener::classof(v16))
      {
        (*(*v16 + 88))(v16, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::PermuteOp &>(mlir::mps::PermuteOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v52);
      }
    }

    return 0;
  }

  v23 = *(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id)
  {
    return 0;
  }

  v25 = *(*(*(v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v49);
    if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
    {
      NextResultAtOffset = *(*(DefiningOp + 72) + 24);
    }

    else
    {
      v28 = v49;
      do
      {
        v28 = *v28;
        if (!v28)
        {
          v6 = mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>((a3 + 8), *(a2 + 24), &v49) - 16;
          goto LABEL_61;
        }

        v29 = v28[2];
        if (v29)
        {
          v30 = *(*(v29 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id;
        }

        else
        {
          v30 = 0;
        }
      }

      while (!v30);
      if (*(v29 + 36))
      {
        v31 = v29 - 16;
      }

      else
      {
        v31 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0);
    }

    v47 = NextResultAtOffset;
    if (!NextResultAtOffset)
    {
    }
  }

  else
  {
    if (v25 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
    }

LABEL_61:
    v47 = v6;
  }

  v33 = *(a2 + 36);
  if (v33)
  {
    v34 = a2 - 16;
  }

  else
  {
    v34 = 0;
  }

  v51.n128_u64[0] = v34;
  v51.n128_u64[1] = v33;
  mlir::ResultRange::use_begin(&v51, v52);
  v35 = *(a2 + 36);
  if (v35)
  {
    v36 = a2 - 16;
  }

  else
  {
    v36 = 0;
  }

  v51.n128_u64[0] = v36;
  v51.n128_u64[1] = v35;
  mlir::ResultRange::use_end(&v51, v45);
  v44 = v53;
  v37 = v53;
  v43[0] = v52[0];
  v43[1] = v52[1];
  v38 = v46;
  if (v53 != v46)
  {
    while (*(*(*(v37 + 16) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
    {
      mlir::ResultRange::UseIterator::operator++(v52);
      v37 = v53;
      if (v53 == v38)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_73:
  v39 = mlir::Value::getDefiningOp(&v47);
  if (!v39)
  {
    return (*(*a1 + 72))(a1, v47, a2, a3);
  }

  v40 = *(*(v39 + 48) + 16);
  v41 = v40 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id;
  v42 = v40 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id ? v39 : 0;
  *&v52[0] = v42;
  if (!v41 || mlir::placement::RegionCall::getRegionType(v52) != 1)
  {
    return (*(*a1 + 72))(a1, v47, a2, a3);
  }

  *&v43[0] = "Bufferization is not supported for ANE regions";
  LOWORD(v44) = 259;
  return mlir::RewriterBase::notifyMatchFailure<mlir::mps::PermuteOp &>(a3, &v50, v43);
}

uint64_t mlir::mps::anonymous namespace::MPSToMemrefPermuteConverter::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v50[1] = *MEMORY[0x1E69E9840];
  v32 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v33 = a2;
  mlir::ArrayAttr::getValue(&v32);
  v8 = v7;
  Value = mlir::ArrayAttr::getValue(&v32);
  mlir::getStridesAndOffset(v32, &v48);
  v45 = v47;
  v46 = 0x600000000;
  v42 = v44;
  *v43 = 0x600000000;
  if (v8)
  {
    if (v8 < 7)
    {
      v10 = 0;
      v11 = v8;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v8, 8);
      v10 = v43[0];
      v11 = (v8 - v43[0]);
      if (v8 == v43[0])
      {
        goto LABEL_7;
      }
    }

    bzero(v42 + 8 * v10, 8 * v11);
LABEL_7:
    v43[0] = v8;
  }

  if (mlir::matchConstantWithIntVector<long long>(*(a3[9] + 56), &v42))
  {
    if (mlir::getPositiveAxes(v42, v43[0], v8, &v45, 0, 0, 0))
    {
      PermutationMap = mlir::AffineMap::getPermutationMap(v45, v46, (*(a1 + 24) & 0xFFFFFFFFFFFFFFF8));
      v39 = mlir::AffineMapAttr::get(PermutationMap);
      v13 = mlir::AffineMapAttr::getValue(&v39);
      mlir::applyPermutationMap<long long>(v13, Value, &v39);
      mlir::applyPermutationMap<long long>(v13, v48, &v36);
      StridedLinearLayoutMap = mlir::makeStridedLinearLayoutMap(v36, v37, v50[0], (*(a1 + 24) & 0xFFFFFFFFFFFFFFF8));
      v15 = v39;
      v16 = v40;
      RHS = mlir::AffineBinaryOpExpr::getRHS(&v32);
      v31 = mlir::MemRefType::get(v15, v16, RHS, StridedLinearLayoutMap, 0);
      v18 = mlir::OpBuilder::create<mlir::mps_spi::StridedArrayViewOp,mlir::MemRefType &,mlir::Value &,long long &,llvm::SmallVector<long long,6u> &,llvm::SmallVector<long long,6u> &>((a4 + 8), a3[3], &v31, &v33, v50, &v39, &v36);
      v29 = "permute";
      v30 = 259;
      StringAttr = mlir::Builder::getStringAttr((a4 + 8), &v29);
      Context = mlir::Attribute::getContext((v18 + 24));
      v35 = 261;
      v34[0] = "op";
      v34[1] = 2;
      v21 = mlir::StringAttr::get(Context, v34);
      mlir::Operation::setAttr(v18, v21, StringAttr);
      v22 = a3[3];
      if (*(v18 + 36))
      {
        v23 = v18 - 16;
      }

      else
      {
        v23 = 0;
      }

      v34[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
      v24 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>((a4 + 8), v22, v34);
      mlir::RewriterBase::replaceOp(a4, a3, v24);
      if (v36 != &v38)
      {
        free(v36);
      }

      if (v39 != v41)
      {
        free(v39);
      }

      v25 = 1;
      goto LABEL_24;
    }

    v26 = "Failed to extract positive axes";
  }

  else
  {
    v26 = "Failed to get constant axes for permute op";
  }

  v39 = v26;
  v41[8] = 259;
  v36 = &v39;
  v27 = *(a4 + 16);
  if (v27 && mlir::RewriterBase::Listener::classof(v27))
  {
    (*(*v27 + 88))(v27, a3[3], llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::PermuteOp &>(mlir::mps::PermuteOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v36);
  }

  v25 = 0;
LABEL_24:
  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v48 != &v49)
  {
    free(v48);
  }

  return v25;
}

uint64_t mlir::mps::anonymous namespace::ViewOpRewritePattern<mlir::mps::PermuteOp>::bufferizeViewOp(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a1 - 16;
  if (*(a1 + 36))
  {
    v5 = a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v29 = NextResultAtOffset;
  v7 = *NextResultAtOffset;
  if (*NextResultAtOffset)
  {
    while (*(*(v7[2] + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
    {
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
LABEL_7:
    v8 = (NextResultAtOffset[1] & 0xFFFFFFFFFFFFFFF8);
    if (v8)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    }

    else
    {
      v9 = 0;
    }

    v28[0] = v8;
    v28[1] = v9;
    v11 = *(a1 + 24);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v28);
    v14 = v13;
    isSplat = mlir::ElementsAttr::isSplat(v28);
    v30 = mlir::MemRefType::get(ArgAttrsAttr, v14, isSplat, 0, 0, 0);
    v27 = mlir::OpBuilder::create<mlir::memref::AllocOp,mlir::MemRefType>((a2 + 8), v11, &v30) - 16;
    v16 = mlir::OpBuilder::create<mlir::mpsx::MemrefBackedOp,mlir::Value &>((a2 + 8), *(a1 + 24), &v27);
    v17 = ((v16 + 16 * ((*(v16 + 44) >> 23) & 1) + ((*(v16 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v16 + 40);
    mlir::ValueRange::ValueRange(&v30, 0, 0);
    Block = mlir::OpBuilder::createBlock((a2 + 8), v17, 0, v30, v31, 0, 0);
    v19 = Block[5];
    *(a2 + 24) = Block;
    *(a2 + 32) = v19;
    mlir::Operation::moveBefore(a1, Block, Block + 4);
    mlir::OpBuilder::create<mlir::mpsx::UseMemrefOp,mlir::Value &>((a2 + 8), *(a1 + 24), &v29);
    v20 = *(v16 + 16);
    v22 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v16, v21) + 8);
    *(a2 + 24) = v20;
    *(a2 + 32) = v22;
    v23 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>((a2 + 8), *(a1 + 24), &v27);
    v24 = *(a1 + 36);
    if (v24)
    {
      v25 = v4;
    }

    else
    {
      v25 = 0;
    }

    v30 = v25;
    v31 = v24;
    return 1;
  }
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::PermuteOp &>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v6 = a3;
  v4 = *(a1 + 16);
  if (v4 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v4 + 88))(v4, *(v3 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::PermuteOp &>(mlir::mps::PermuteOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v6);
  }

  return 0;
}

void mlir::mps::anonymous namespace::MPSToMemrefReshapeConverter::~MPSToMemrefReshapeConverter(mlir::mps::_anonymous_namespace_::MPSToMemrefReshapeConverter *this)
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

uint64_t mlir::mps::anonymous namespace::ViewOpRewritePattern<mlir::mps::ReshapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 + 72) + 24);
  v49 = v6;
  v50 = a2;
  v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8))
  {
    v43[0] = 0uLL;
LABEL_17:
    v15 = "Unranked input types or dynamic shapes are not supported";
    goto LABEL_18;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  *&v43[0] = v7;
  *(&v43[0] + 1) = v8;
  if (!v7 || !mlir::CallOpInterface::getArgOperands(v43) || !mlir::CallOpInterface::getArgOperands(v43))
  {
    goto LABEL_17;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v10)
  {
    v11 = 8 * v10;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

LABEL_11:
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v43[0] = 0uLL;
LABEL_31:
    v15 = "Unranked result types or dynamic shapes are not supported";
LABEL_18:
    *&v43[0] = v15;
    LOWORD(v44) = 259;
    *&v52[0] = v43;
    v16 = *(a3 + 16);
    if (v16)
    {
      goto LABEL_19;
    }

    return 0;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  *&v43[0] = v13;
  *(&v43[0] + 1) = v14;
  if (!v13 || !mlir::CallOpInterface::getArgOperands(v43) || !mlir::CallOpInterface::getArgOperands(v43))
  {
    goto LABEL_31;
  }

  v18 = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v19)
  {
    v20 = 8 * v19;
    while (*v18 != 0x8000000000000000)
    {
      ++v18;
      v20 -= 8;
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_31;
  }

LABEL_29:
  v21 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v21)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  v48[0] = v21;
  v48[1] = v22;
  *&v43[0] = mlir::ElementsAttr::isSplat(v48);
  if (mlir::Type::isInteger(v43, 1))
  {
    *&v43[0] = "Boolean conversion is not supported for mps_spi.strided_array_view()";
    LOWORD(v44) = 259;
    *&v52[0] = v43;
    v16 = *(a3 + 16);
    if (v16)
    {
LABEL_19:
      if (mlir::RewriterBase::Listener::classof(v16))
      {
        (*(*v16 + 88))(v16, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ReshapeOp &>(mlir::mps::ReshapeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v52);
      }
    }

    return 0;
  }

  v23 = *(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id)
  {
    return 0;
  }

  v25 = *(*(*(v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v49);
    if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
    {
      NextResultAtOffset = *(*(DefiningOp + 72) + 24);
    }

    else
    {
      v28 = v49;
      do
      {
        v28 = *v28;
        if (!v28)
        {
          v6 = mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>((a3 + 8), *(a2 + 24), &v49) - 16;
          goto LABEL_61;
        }

        v29 = v28[2];
        if (v29)
        {
          v30 = *(*(v29 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id;
        }

        else
        {
          v30 = 0;
        }
      }

      while (!v30);
      if (*(v29 + 36))
      {
        v31 = v29 - 16;
      }

      else
      {
        v31 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0);
    }

    v47 = NextResultAtOffset;
    if (!NextResultAtOffset)
    {
    }
  }

  else
  {
    if (v25 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
    }

LABEL_61:
    v47 = v6;
  }

  v33 = *(a2 + 36);
  if (v33)
  {
    v34 = a2 - 16;
  }

  else
  {
    v34 = 0;
  }

  v51.n128_u64[0] = v34;
  v51.n128_u64[1] = v33;
  mlir::ResultRange::use_begin(&v51, v52);
  v35 = *(a2 + 36);
  if (v35)
  {
    v36 = a2 - 16;
  }

  else
  {
    v36 = 0;
  }

  v51.n128_u64[0] = v36;
  v51.n128_u64[1] = v35;
  mlir::ResultRange::use_end(&v51, v45);
  v44 = v53;
  v37 = v53;
  v43[0] = v52[0];
  v43[1] = v52[1];
  v38 = v46;
  if (v53 != v46)
  {
    while (*(*(*(v37 + 16) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
    {
      mlir::ResultRange::UseIterator::operator++(v52);
      v37 = v53;
      if (v53 == v38)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_73:
  v39 = mlir::Value::getDefiningOp(&v47);
  if (!v39)
  {
    return (*(*a1 + 72))(a1, v47, a2, a3);
  }

  v40 = *(*(v39 + 48) + 16);
  v41 = v40 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id;
  v42 = v40 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id ? v39 : 0;
  *&v52[0] = v42;
  if (!v41 || mlir::placement::RegionCall::getRegionType(v52) != 1)
  {
    return (*(*a1 + 72))(a1, v47, a2, a3);
  }

  *&v43[0] = "Bufferization is not supported for ANE regions";
  LOWORD(v44) = 259;
  return mlir::RewriterBase::notifyMatchFailure<mlir::mps::ReshapeOp &>(a3, &v50, v43);
}

uint64_t mlir::mps::anonymous namespace::MPSToMemrefReshapeConverter::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v85 = *MEMORY[0x1E69E9840];
  v70 = a2;
  if (*(a3 + 36))
  {
    v7 = a3 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v69[0] = v8;
  v69[1] = v9;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v69);
  v12 = v11;
  v67 = ArgAttrsAttr;
  v68 = v11;
  v66 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::ArrayAttr::getValue(&v66);
  v15 = v14;
  mlir::getStridesAndOffset(v66, &v75);
  if (v15)
  {
    if (!v12)
    {
      LOBYTE(v71) = 0;
      v74 = 0;
      goto LABEL_68;
    }

    v16 = v75;
    v17 = v76;
    NextResultAtOffset = v84;
    v83 = 0x600000000;
    if (v12 < 7)
    {
      v18 = 0;
      v19 = v12;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&NextResultAtOffset, v84, v12, 8);
      v18 = v83;
      v19 = v12 - v83;
      if (v12 == v83)
      {
LABEL_17:
        LODWORD(v83) = v12;
        v21 = (v15 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v21)
        {
          v22 = v21 + 1;
          v23 = (v21 + 1) & 0x3FFFFFFFFFFFFFFELL;
          v24 = &Value[v23];
          v25 = Value + 1;
          v26 = 1;
          v27 = v23;
          v28 = 1;
          do
          {
            v26 *= *(v25 - 1);
            v28 *= *v25;
            v25 += 2;
            v27 -= 2;
          }

          while (v27);
          v29 = v28 * v26;
          if (v22 == v23)
          {
LABEL_30:
            if (v29)
            {
              v32 = v15 - 1;
              if (v15 - 1 < 0)
              {
                goto LABEL_59;
              }

              v33 = v12 - 1;
              v34 = v16[v17 - 1];
              v35 = 1;
              while (1)
              {
                v36 = v15;
                v15 = v32;
                v35 *= Value[v32];
                if (!v32 || Value[v36 - 2] != 1 && v16[v36 - 2] != v35 * v34)
                {
                  if (v33 < 0)
                  {
                    if (v35 != 1)
                    {
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    v37 = NextResultAtOffset;
                    v38 = 1;
                    while (v38 < v35 || ArgAttrsAttr[v33] == 1)
                    {
                      *&v37[8 * v33] = v38 * v34;
                      v38 *= ArgAttrsAttr[v33];
                      if (v33-- <= 0)
                      {
                        v33 = -1;
                        break;
                      }
                    }

                    if (v38 != v35)
                    {
                      goto LABEL_59;
                    }
                  }

                  if (!v15)
                  {
LABEL_58:
                    if (v33 != -1)
                    {
LABEL_59:
                      LOBYTE(v71) = 0;
                      v74 = 0;
                      goto LABEL_66;
                    }

LABEL_60:
                    v71 = v73;
                    v72 = 0x600000000;
                    if (!v12)
                    {
LABEL_65:
                      v74 = 1;
                      goto LABEL_66;
                    }

LABEL_64:
                    llvm::SmallVectorImpl<unsigned long long>::operator=(&v71, &NextResultAtOffset);
                    goto LABEL_65;
                  }

                  v34 = v16[v36 - 2];
                  v35 = 1;
                }

                v32 = v15 - 1;
                if (v15 < 1)
                {
                  goto LABEL_58;
                }
              }
            }

            if (v15 != v12 || memcmp(Value, ArgAttrsAttr, 8 * v12))
            {
              if ((v12 - 1) < 0)
              {
                goto LABEL_60;
              }

              v40 = NextResultAtOffset;
              *&NextResultAtOffset[8 * v12 - 8] = 1;
              if (v12 != 1)
              {
                v41 = v40 - 16;
                v42 = 1;
                for (i = v12; i != 1; --i)
                {
                  v44 = ArgAttrsAttr[i - 1];
                  if (v44 <= 1)
                  {
                    v44 = 1;
                  }

                  v42 *= v44;
                  *&v41[8 * i] = v42;
                }

                goto LABEL_60;
              }

              v71 = v73;
              v72 = 0x600000000;
              goto LABEL_64;
            }

            v79 = v81;
            v80 = 0x600000000;
            if (v17 < 7)
            {
              if (!v17)
              {
                v64 = 0;
                goto LABEL_85;
              }

              v62 = 0;
              v63 = v81;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v17, 8);
              v62 = v80;
              v63 = v79;
            }

            memcpy(&v63[4 * v62], v16, 8 * v17);
            v64 = v80;
LABEL_85:
            v71 = v73;
            v72 = 0x600000000;
            LODWORD(v80) = v64 + v17;
            if (v64 + v17)
            {
              llvm::SmallVectorImpl<unsigned long long>::operator=(&v71, &v79);
            }

            v74 = 1;
            if (v79 != v81)
            {
              free(v79);
            }

LABEL_66:
            v30 = NextResultAtOffset;
            if (NextResultAtOffset != v84)
            {
              goto LABEL_67;
            }

            goto LABEL_68;
          }
        }

        else
        {
          v29 = 1;
          v24 = Value;
        }

        do
        {
          v31 = *v24++;
          v29 *= v31;
        }

        while (v24 != &Value[v15]);
        goto LABEL_30;
      }
    }

    bzero(&NextResultAtOffset[8 * v18], 8 * v19);
    goto LABEL_17;
  }

  NextResultAtOffset = v84;
  HIDWORD(v83) = 6;
  if (v12 < 7)
  {
    if (!v12)
    {
      v71 = v73;
      v72 = 0x600000000;
      v74 = 1;
      goto LABEL_68;
    }

    memset_pattern16(v84, &unk_1E096FAE0, 8 * v12);
    v20 = v84;
  }

  else
  {
    LODWORD(v83) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&NextResultAtOffset, v84, v12, 8);
    v20 = NextResultAtOffset;
    memset_pattern16(NextResultAtOffset, &unk_1E096FAE0, 8 * v12);
  }

  LODWORD(v83) = v12;
  v71 = v73;
  v72 = 0x600000000;
  if (v12)
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v71, &NextResultAtOffset);
    v20 = NextResultAtOffset;
  }

  v74 = 1;
  if (v20 != v84)
  {
    v30 = v20;
LABEL_67:
    free(v30);
  }

LABEL_68:
  if (v74 == 1)
  {
    v45 = v71;
    v46 = v72;
    v47 = v78;
    Context = mlir::Attribute::getContext(v69);
    StridedLinearLayoutMap = mlir::makeStridedLinearLayoutMap(v45, v46, v47, Context);
    v50 = v67;
    v51 = v68;
    isSplat = mlir::ElementsAttr::isSplat(v69);
    v65 = mlir::MemRefType::get(v50, v51, isSplat, StridedLinearLayoutMap, 0);
    v53 = mlir::OpBuilder::create<mlir::mps_spi::StridedArrayViewOp,mlir::MemRefType &,mlir::Value &,long long &,llvm::ArrayRef<long long> &,llvm::SmallVector<long long,6u> &>(a4 + 1, *(a3 + 24), &v65, &v70, &v78, &v67, &v71);
    v79 = "reshape";
    v81[8] = 259;
    StringAttr = mlir::Builder::getStringAttr(a4 + 1, &v79);
    v55 = mlir::Attribute::getContext((v53 + 24));
    v84[8] = 261;
    NextResultAtOffset = "op";
    v83 = 2;
    v56 = mlir::StringAttr::get(v55, &NextResultAtOffset);
    mlir::Operation::setAttr(v53, v56, StringAttr);
    v57 = *(a3 + 24);
    if (*(v53 + 36))
    {
      v58 = v53 - 16;
    }

    else
    {
      v58 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v58, 0);
    v59 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>(a4 + 1, v57, &NextResultAtOffset);
    mlir::RewriterBase::replaceOp(a4, a3, v59);
    v60 = 1;
  }

  else
  {
  }

  if (v74 == 1 && v71 != v73)
  {
    free(v71);
  }

  if (v75 != &v77)
  {
    free(v75);
  }

  return v60;
}

uint64_t mlir::mps::anonymous namespace::ViewOpRewritePattern<mlir::mps::ReshapeOp>::bufferizeViewOp(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a1 - 16;
  if (*(a1 + 36))
  {
    v5 = a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v29 = NextResultAtOffset;
  v7 = *NextResultAtOffset;
  if (*NextResultAtOffset)
  {
    while (*(*(v7[2] + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
    {
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
LABEL_7:
    v8 = (NextResultAtOffset[1] & 0xFFFFFFFFFFFFFFF8);
    if (v8)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    }

    else
    {
      v9 = 0;
    }

    v28[0] = v8;
    v28[1] = v9;
    v11 = *(a1 + 24);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v28);
    v14 = v13;
    isSplat = mlir::ElementsAttr::isSplat(v28);
    v30 = mlir::MemRefType::get(ArgAttrsAttr, v14, isSplat, 0, 0, 0);
    v27 = mlir::OpBuilder::create<mlir::memref::AllocOp,mlir::MemRefType>((a2 + 8), v11, &v30) - 16;
    v16 = mlir::OpBuilder::create<mlir::mpsx::MemrefBackedOp,mlir::Value &>((a2 + 8), *(a1 + 24), &v27);
    v17 = ((v16 + 16 * ((*(v16 + 44) >> 23) & 1) + ((*(v16 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v16 + 40);
    mlir::ValueRange::ValueRange(&v30, 0, 0);
    Block = mlir::OpBuilder::createBlock((a2 + 8), v17, 0, v30, v31, 0, 0);
    v19 = Block[5];
    *(a2 + 24) = Block;
    *(a2 + 32) = v19;
    mlir::Operation::moveBefore(a1, Block, Block + 4);
    mlir::OpBuilder::create<mlir::mpsx::UseMemrefOp,mlir::Value &>((a2 + 8), *(a1 + 24), &v29);
    v20 = *(v16 + 16);
    v22 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v16, v21) + 8);
    *(a2 + 24) = v20;
    *(a2 + 32) = v22;
    v23 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>((a2 + 8), *(a1 + 24), &v27);
    v24 = *(a1 + 36);
    if (v24)
    {
      v25 = v4;
    }

    else
    {
      v25 = 0;
    }

    v30 = v25;
    v31 = v24;
    return 1;
  }
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::ReshapeOp &>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v6 = a3;
  v4 = *(a1 + 16);
  if (v4 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v4 + 88))(v4, *(v3 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ReshapeOp &>(mlir::mps::ReshapeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v6);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps_spi::StridedArrayViewOp,mlir::MemRefType &,mlir::Value &,long long &,llvm::ArrayRef<long long> &,llvm::SmallVector<long long,6u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void **a5, uint64_t a6, uint64_t a7)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v21 = a2;
  Context = mlir::Attribute::getContext(&v21);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps_spi::StridedArrayViewOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps_spi::StridedArrayViewOp,mlir::MemRefType &,mlir::Value &,long long &,llvm::SmallVector<long long,6u> &,llvm::SmallVector<long long,6u> &>(v24, v23, v22);
  }

  mlir::OperationState::OperationState(v24, a2, v15);
  mlir::mps_spi::StridedArrayViewOp::build(a1, v24, *a3, *a4, *a5, *a6, *(a6 + 8), v17, *a7, *(a7 + 8), 0, 0);
  v18 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps_spi::StridedArrayViewOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v19;
}

void mlir::mps::anonymous namespace::MPSToMemrefReinterpretCastConverter::~MPSToMemrefReinterpretCastConverter(mlir::mps::_anonymous_namespace_::MPSToMemrefReinterpretCastConverter *this)
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

uint64_t mlir::mps::anonymous namespace::ViewOpRewritePattern<mlir::mps::ReinterpretCastOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 + 72) + 24);
  v49 = v6;
  v50 = a2;
  v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8))
  {
    v43[0] = 0uLL;
LABEL_17:
    v15 = "Unranked input types or dynamic shapes are not supported";
    goto LABEL_18;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  *&v43[0] = v7;
  *(&v43[0] + 1) = v8;
  if (!v7 || !mlir::CallOpInterface::getArgOperands(v43) || !mlir::CallOpInterface::getArgOperands(v43))
  {
    goto LABEL_17;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v10)
  {
    v11 = 8 * v10;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

LABEL_11:
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v43[0] = 0uLL;
LABEL_31:
    v15 = "Unranked result types or dynamic shapes are not supported";
LABEL_18:
    *&v43[0] = v15;
    LOWORD(v44) = 259;
    *&v52[0] = v43;
    v16 = *(a3 + 16);
    if (v16)
    {
      goto LABEL_19;
    }

    return 0;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  *&v43[0] = v13;
  *(&v43[0] + 1) = v14;
  if (!v13 || !mlir::CallOpInterface::getArgOperands(v43) || !mlir::CallOpInterface::getArgOperands(v43))
  {
    goto LABEL_31;
  }

  v18 = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v19)
  {
    v20 = 8 * v19;
    while (*v18 != 0x8000000000000000)
    {
      ++v18;
      v20 -= 8;
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_31;
  }

LABEL_29:
  v21 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v21)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  v48[0] = v21;
  v48[1] = v22;
  *&v43[0] = mlir::ElementsAttr::isSplat(v48);
  if (mlir::Type::isInteger(v43, 1))
  {
    *&v43[0] = "Boolean conversion is not supported for mps_spi.strided_array_view()";
    LOWORD(v44) = 259;
    *&v52[0] = v43;
    v16 = *(a3 + 16);
    if (v16)
    {
LABEL_19:
      if (mlir::RewriterBase::Listener::classof(v16))
      {
        (*(*v16 + 88))(v16, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ReinterpretCastOp &>(mlir::mps::ReinterpretCastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v52);
      }
    }

    return 0;
  }

  v23 = *(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id)
  {
    return 0;
  }

  v25 = *(*(*(v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v49);
    if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
    {
      NextResultAtOffset = *(*(DefiningOp + 72) + 24);
    }

    else
    {
      v28 = v49;
      do
      {
        v28 = *v28;
        if (!v28)
        {
          v6 = mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>((a3 + 8), *(a2 + 24), &v49) - 16;
          goto LABEL_61;
        }

        v29 = v28[2];
        if (v29)
        {
          v30 = *(*(v29 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id;
        }

        else
        {
          v30 = 0;
        }
      }

      while (!v30);
      if (*(v29 + 36))
      {
        v31 = v29 - 16;
      }

      else
      {
        v31 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0);
    }

    v47 = NextResultAtOffset;
    if (!NextResultAtOffset)
    {
    }
  }

  else
  {
    if (v25 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
    }

LABEL_61:
    v47 = v6;
  }

  v33 = *(a2 + 36);
  if (v33)
  {
    v34 = a2 - 16;
  }

  else
  {
    v34 = 0;
  }

  v51.n128_u64[0] = v34;
  v51.n128_u64[1] = v33;
  mlir::ResultRange::use_begin(&v51, v52);
  v35 = *(a2 + 36);
  if (v35)
  {
    v36 = a2 - 16;
  }

  else
  {
    v36 = 0;
  }

  v51.n128_u64[0] = v36;
  v51.n128_u64[1] = v35;
  mlir::ResultRange::use_end(&v51, v45);
  v44 = v53;
  v37 = v53;
  v43[0] = v52[0];
  v43[1] = v52[1];
  v38 = v46;
  if (v53 != v46)
  {
    while (*(*(*(v37 + 16) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
    {
      mlir::ResultRange::UseIterator::operator++(v52);
      v37 = v53;
      if (v53 == v38)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_73:
  v39 = mlir::Value::getDefiningOp(&v47);
  if (!v39)
  {
    return (*(*a1 + 72))(a1, v47, a2, a3);
  }

  v40 = *(*(v39 + 48) + 16);
  v41 = v40 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id;
  v42 = v40 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id ? v39 : 0;
  *&v52[0] = v42;
  if (!v41 || mlir::placement::RegionCall::getRegionType(v52) != 1)
  {
    return (*(*a1 + 72))(a1, v47, a2, a3);
  }

  *&v43[0] = "Bufferization is not supported for ANE regions";
  LOWORD(v44) = 259;
  return mlir::RewriterBase::notifyMatchFailure<mlir::mps::ReinterpretCastOp &>(a3, &v50, v43);
}

uint64_t mlir::mps::anonymous namespace::MPSToMemrefReinterpretCastConverter::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76[1] = *MEMORY[0x1E69E9840];
  v70 = a2;
  if (*(a3 + 36))
  {
    v7 = a3 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v69 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v9 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v68[0] = v9;
  v68[1] = v10;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v69);
  if (mlir::Type::isInteger(&RHS, 1) || (v71[0] = mlir::ElementsAttr::isSplat(v68), mlir::Type::isInteger(v71, 1)))
  {
    RHS = "Boolean conversion is not supported for mps.reinterpret_cast()";
    v75[8] = 259;
    v71[0] = &RHS;
    v11 = *(a4 + 16);
    if (v11)
    {
      if (mlir::RewriterBase::Listener::classof(v11))
      {
        (*(*v11 + 88))(v11, *(a3 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ReinterpretCastOp &>(mlir::mps::ReinterpretCastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v71);
      }
    }

    return 0;
  }

  mlir::ArrayAttr::getValue(&v69);
  v14 = v13;
  mlir::getStridesAndOffset(v69, &RHS);
  v15 = v14 - 1;
  if (*(RHS + v14 - 1) != 1)
  {
LABEL_19:
    v71[0] = "Transposed input is not supported when bufferizing mps.reinterpret_cast()";
    v72 = 259;
    v64[0] = v71;
    v20 = *(a4 + 16);
    if (v20 && mlir::RewriterBase::Listener::classof(v20))
    {
      (*(*v20 + 88))(v20, *(a3 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ReinterpretCastOp &>(mlir::mps::ReinterpretCastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v64);
    }

    result = 0;
    goto LABEL_52;
  }

  v16 = (RHS + 8);
  v17 = 1;
  while (v74 + v17 != 2)
  {
    v18 = *(v16 - 1);
    v19 = *v16;
    --v17;
    ++v16;
    if (v18 <= v19)
    {
      if (-v17 < v74 - 1)
      {
        goto LABEL_19;
      }

      break;
    }
  }

  ElementTypeByteWidth = mlir::getElementTypeByteWidth(v69);
  v22 = mlir::getElementTypeByteWidth(v68[0]);
  if (ElementTypeByteWidth > v22)
  {
    v23 = (v14 - 2);
    if (v14 - 2 < 0)
    {
      goto LABEL_48;
    }

    v24 = RHS;
    v25 = ElementTypeByteWidth / v22;
    if (v14 == 2)
    {
      v28 = (v14 - 2);
    }

    else
    {
      v26 = v23 + 1;
      v27 = (v23 + 1) & 0xFFFFFFFELL;
      v28 = v23 - v27;
      v29 = (RHS + 8 * v23);
      v30 = v27;
      do
      {
        v31 = *v29 * v25;
        *(v29 - 1) *= v25;
        *v29 = v31;
        v29 -= 2;
        v30 -= 2;
      }

      while (v30);
      if (v26 == v27)
      {
        goto LABEL_48;
      }
    }

    do
    {
      v24[v28--] *= v25;
    }

    while (v28 != -1);
    goto LABEL_48;
  }

  if (ElementTypeByteWidth < v22 && (v15 & 0x80000000) == 0)
  {
    v32 = RHS;
    v33 = v22 / ElementTypeByteWidth;
    v34 = v15 & 0x7FFFFFFF;
    if (((v14 - 1) & 0x7FFFFFFF) != 0)
    {
      v35 = v34 + 1;
      v36 = (v34 + 1) & 0xFFFFFFFELL;
      v37 = v34 - v36;
      v38 = (RHS + 8 * v34);
      v39 = v36;
      do
      {
        v40 = *(v38 - 1);
        v41 = *v38;
        v42 = v40 == 0;
        v43 = (v40 - (v40 != 0)) / v33;
        if (!v42)
        {
          ++v43;
        }

        v42 = v41 == 0;
        v44 = (v41 - (v41 != 0)) / v33;
        if (!v42)
        {
          ++v44;
        }

        *(v38 - 1) = v43;
        *v38 = v44;
        v38 -= 2;
        v39 -= 2;
      }

      while (v39);
      if (v35 == v36)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v37 = 0;
    }

    do
    {
      v45 = v32[v37];
      v42 = v45 == 0;
      v46 = (v45 - (v45 != 0)) / v33;
      if (!v42)
      {
        ++v46;
      }

      v32[v37--] = v46;
    }

    while (v37 != -1);
  }

LABEL_48:
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v68);
  v49 = v48;
  v67[0] = ArgAttrsAttr;
  v67[1] = v48;
  v50 = RHS;
  v51 = v74;
  v52 = v76[0];
  Context = mlir::Attribute::getContext(v68);
  StridedLinearLayoutMap = mlir::makeStridedLinearLayoutMap(v50, v51, v52, Context);
  isSplat = mlir::ElementsAttr::isSplat(v68);
  v66 = mlir::MemRefType::get(ArgAttrsAttr, v49, isSplat, StridedLinearLayoutMap, 0);
  v56 = mlir::OpBuilder::create<mlir::mps_spi::StridedArrayViewOp,mlir::MemRefType &,mlir::Value &,long long &,llvm::ArrayRef<long long> &,llvm::SmallVector<long long,6u> &>((a4 + 8), *(a3 + 24), &v66, &v70, v76, v67, &RHS);
  v64[0] = "reinterpret_cast";
  v65 = 259;
  StringAttr = mlir::Builder::getStringAttr((a4 + 8), v64);
  v58 = mlir::Attribute::getContext((v56 + 24));
  v72 = 261;
  v71[0] = "op";
  v71[1] = 2;
  v59 = mlir::StringAttr::get(v58, v71);
  mlir::Operation::setAttr(v56, v59, StringAttr);
  v60 = *(a3 + 24);
  if (*(v56 + 36))
  {
    v61 = v56 - 16;
  }

  else
  {
    v61 = 0;
  }

  v71[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v61, 0);
  v62 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>((a4 + 8), v60, v71);
  mlir::RewriterBase::replaceOp(a4, a3, v62);
  result = 1;
LABEL_52:
  if (RHS != v75)
  {
    v63 = result;
    free(RHS);
    return v63;
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::ViewOpRewritePattern<mlir::mps::ReinterpretCastOp>::bufferizeViewOp(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a1 - 16;
  if (*(a1 + 36))
  {
    v5 = a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v29 = NextResultAtOffset;
  v7 = *NextResultAtOffset;
  if (*NextResultAtOffset)
  {
    while (*(*(v7[2] + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
    {
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
LABEL_7:
    v8 = (NextResultAtOffset[1] & 0xFFFFFFFFFFFFFFF8);
    if (v8)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    }

    else
    {
      v9 = 0;
    }

    v28[0] = v8;
    v28[1] = v9;
    v11 = *(a1 + 24);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v28);
    v14 = v13;
    isSplat = mlir::ElementsAttr::isSplat(v28);
    v30 = mlir::MemRefType::get(ArgAttrsAttr, v14, isSplat, 0, 0, 0);
    v27 = mlir::OpBuilder::create<mlir::memref::AllocOp,mlir::MemRefType>((a2 + 8), v11, &v30) - 16;
    v16 = mlir::OpBuilder::create<mlir::mpsx::MemrefBackedOp,mlir::Value &>((a2 + 8), *(a1 + 24), &v27);
    v17 = ((v16 + 16 * ((*(v16 + 44) >> 23) & 1) + ((*(v16 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v16 + 40);
    mlir::ValueRange::ValueRange(&v30, 0, 0);
    Block = mlir::OpBuilder::createBlock((a2 + 8), v17, 0, v30, v31, 0, 0);
    v19 = Block[5];
    *(a2 + 24) = Block;
    *(a2 + 32) = v19;
    mlir::Operation::moveBefore(a1, Block, Block + 4);
    mlir::OpBuilder::create<mlir::mpsx::UseMemrefOp,mlir::Value &>((a2 + 8), *(a1 + 24), &v29);
    v20 = *(v16 + 16);
    v22 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v16, v21) + 8);
    *(a2 + 24) = v20;
    *(a2 + 32) = v22;
    v23 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>((a2 + 8), *(a1 + 24), &v27);
    v24 = *(a1 + 36);
    if (v24)
    {
      v25 = v4;
    }

    else
    {
      v25 = 0;
    }

    v30 = v25;
    v31 = v24;
    return 1;
  }
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::ReinterpretCastOp &>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v6 = a3;
  v4 = *(a1 + 16);
  if (v4 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v4 + 88))(v4, *(v3 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ReinterpretCastOp &>(mlir::mps::ReinterpretCastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v6);
  }

  return 0;
}

void mlir::mps::anonymous namespace::MPSToMemrefSliceConverter::~MPSToMemrefSliceConverter(mlir::mps::_anonymous_namespace_::MPSToMemrefSliceConverter *this)
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

uint64_t mlir::mps::anonymous namespace::ViewOpRewritePattern<mlir::mps::SliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 + 72) + 24);
  v49 = v6;
  v50 = a2;
  v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8))
  {
    v43[0] = 0uLL;
LABEL_17:
    v15 = "Unranked input types or dynamic shapes are not supported";
    goto LABEL_18;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  *&v43[0] = v7;
  *(&v43[0] + 1) = v8;
  if (!v7 || !mlir::CallOpInterface::getArgOperands(v43) || !mlir::CallOpInterface::getArgOperands(v43))
  {
    goto LABEL_17;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v10)
  {
    v11 = 8 * v10;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

LABEL_11:
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v43[0] = 0uLL;
LABEL_31:
    v15 = "Unranked result types or dynamic shapes are not supported";
LABEL_18:
    *&v43[0] = v15;
    LOWORD(v44) = 259;
    *&v52[0] = v43;
    v16 = *(a3 + 16);
    if (v16)
    {
      goto LABEL_19;
    }

    return 0;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  *&v43[0] = v13;
  *(&v43[0] + 1) = v14;
  if (!v13 || !mlir::CallOpInterface::getArgOperands(v43) || !mlir::CallOpInterface::getArgOperands(v43))
  {
    goto LABEL_31;
  }

  v18 = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v19)
  {
    v20 = 8 * v19;
    while (*v18 != 0x8000000000000000)
    {
      ++v18;
      v20 -= 8;
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_31;
  }

LABEL_29:
  v21 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v21)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  v48[0] = v21;
  v48[1] = v22;
  *&v43[0] = mlir::ElementsAttr::isSplat(v48);
  if (mlir::Type::isInteger(v43, 1))
  {
    *&v43[0] = "Boolean conversion is not supported for mps_spi.strided_array_view()";
    LOWORD(v44) = 259;
    *&v52[0] = v43;
    v16 = *(a3 + 16);
    if (v16)
    {
LABEL_19:
      if (mlir::RewriterBase::Listener::classof(v16))
      {
        (*(*v16 + 88))(v16, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::SliceOp &>(mlir::mps::SliceOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v52);
      }
    }

    return 0;
  }

  v23 = *(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id)
  {
    return 0;
  }

  v25 = *(*(*(v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v49);
    if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
    {
      NextResultAtOffset = *(*(DefiningOp + 72) + 24);
    }

    else
    {
      v28 = v49;
      do
      {
        v28 = *v28;
        if (!v28)
        {
          v6 = mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>((a3 + 8), *(a2 + 24), &v49) - 16;
          goto LABEL_61;
        }

        v29 = v28[2];
        if (v29)
        {
          v30 = *(*(v29 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id;
        }

        else
        {
          v30 = 0;
        }
      }

      while (!v30);
      if (*(v29 + 36))
      {
        v31 = v29 - 16;
      }

      else
      {
        v31 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0);
    }

    v47 = NextResultAtOffset;
    if (!NextResultAtOffset)
    {
    }
  }

  else
  {
    if (v25 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
    }

LABEL_61:
    v47 = v6;
  }

  v33 = *(a2 + 36);
  if (v33)
  {
    v34 = a2 - 16;
  }

  else
  {
    v34 = 0;
  }

  v51.n128_u64[0] = v34;
  v51.n128_u64[1] = v33;
  mlir::ResultRange::use_begin(&v51, v52);
  v35 = *(a2 + 36);
  if (v35)
  {
    v36 = a2 - 16;
  }

  else
  {
    v36 = 0;
  }

  v51.n128_u64[0] = v36;
  v51.n128_u64[1] = v35;
  mlir::ResultRange::use_end(&v51, v45);
  v44 = v53;
  v37 = v53;
  v43[0] = v52[0];
  v43[1] = v52[1];
  v38 = v46;
  if (v53 != v46)
  {
    while (*(*(*(v37 + 16) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
    {
      mlir::ResultRange::UseIterator::operator++(v52);
      v37 = v53;
      if (v53 == v38)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_73:
  v39 = mlir::Value::getDefiningOp(&v47);
  if (!v39)
  {
    return (*(*a1 + 72))(a1, v47, a2, a3);
  }

  v40 = *(*(v39 + 48) + 16);
  v41 = v40 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id;
  v42 = v40 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id ? v39 : 0;
  *&v52[0] = v42;
  if (!v41 || mlir::placement::RegionCall::getRegionType(v52) != 1)
  {
    return (*(*a1 + 72))(a1, v47, a2, a3);
  }

  *&v43[0] = "Bufferization is not supported for ANE regions";
  LOWORD(v44) = 259;
  return mlir::RewriterBase::notifyMatchFailure<mlir::mps::SliceOp &>(a3, &v50, v43);
}

uint64_t mlir::mps::anonymous namespace::MPSToMemrefSliceConverter::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v101[1] = *MEMORY[0x1E69E9840];
  v73 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v73);
  v8 = v7;
  v9 = v7;
  v87 = v90;
  v89 = 6;
  if (v7 <= 6uLL)
  {
    if (!v7)
    {
      v8 = 0;
      v88 = 0;
      v84 = v86;
      HIDWORD(v85) = 6;
      goto LABEL_6;
    }

    v10 = 8 * v7;
    bzero(v90, v10);
    v88 = v8;
    v84 = v86;
    HIDWORD(v85) = 6;
    v11 = v86;
  }

  else
  {
    v88 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v7, 8);
    v10 = 8 * v9;
    bzero(v87, 8 * v9);
    v88 = v8;
    v84 = v86;
    v85 = 0x600000000;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v9, 8);
    v11 = v84;
  }

  bzero(v11, v10);
LABEL_6:
  LODWORD(v85) = v8;
  v82[0] = v83;
  v82[1] = 0x600000000;
  if ((mlir::matchConstantWithIntVector<long long>(*(a3[9] + 56), v82) & 1) == 0 || (v12 = (v9 & (*v82[0] >> 63)) + *v82[0], v12 >= v9))
  {
LABEL_13:
    v97 = v19;
    v100 = 259;
    v94 = &v97;
    v20 = *(a4 + 16);
    if (v20 && mlir::RewriterBase::Listener::classof(v20))
    {
      (*(*v20 + 88))(v20, a3[3], llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::SliceOp &>(mlir::mps::SliceOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v94);
    }

    goto LABEL_16;
  }

  if ((mlir::matchConstantWithIntVector<long long>(*(a3[9] + 88), v82) & 1) == 0)
  {
    goto LABEL_13;
  }

  *(v87 + v12) = *v82[0];
  if ((mlir::matchConstantWithIntVector<long long>(*(a3[9] + 120), v82) & 1) == 0)
  {
    goto LABEL_13;
  }

  *(v84 + v12) = *v82[0] + *(v87 + v12);
  v78 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v79 = a2;
  mlir::ArrayAttr::getValue(&v78);
  v14 = v13;
  __src = mlir::ArrayAttr::getValue(&v78);
  v16 = v15;
  v17 = (*(a3 - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  v77[0] = v17;
  v77[1] = v18;
  mlir::getStridesAndOffset(v78, &v97);
  if (*&v97[8 * (v14 - 1)] != 1)
  {
LABEL_32:
    v94 = "Transposed input is not supported when bufferizing mps.strided_slice()";
    v96[8] = 259;
    v91 = &v94;
    v28 = *(a4 + 16);
    if (v28 && mlir::RewriterBase::Listener::classof(*(a4 + 16)))
    {
      (*(*v28 + 88))(v28, a3[3], llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::SliceOp &>(mlir::mps::SliceOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v91);
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_36;
  }

  v23 = ~(1 << v12);
  v24 = v98 - 1;
  v25 = (v97 + 8);
  while (v24)
  {
    v26 = *(v25 - 1);
    v27 = *v25++;
    --v24;
    if (v26 < v27)
    {
      goto LABEL_32;
    }
  }

  v94 = v96;
  v95 = 0x600000000;
  v34 = (8 * v16) >> 3;
  if (v34 < 7)
  {
    v35 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v96, v34, 8);
    v35 = v95;
  }

  if (v16)
  {
    memcpy(&v94[8 * v35], __src, 8 * v16);
    v35 = v95;
  }

  LODWORD(v95) = v35 + v16;
  v91 = v93;
  v92 = 0x600000000;
  v36 = v98;
  if (v98)
  {
    if (v98 < 7)
    {
      v38 = v93;
      v37 = v98;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v98, 8);
      v37 = v98;
      if (!v98)
      {
LABEL_54:
        LODWORD(v92) = v36;
        goto LABEL_55;
      }

      v38 = v91;
    }

    memcpy(v38, v97, 8 * v37);
    goto LABEL_54;
  }

LABEL_55:
  if (v14)
  {
    v39 = 0;
    v40 = ~(1 << v12);
    do
    {
      v41 = v88;
      v42 = 1 << v39;
      if (v88 <= v39)
      {
        if (v88 >= v89)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 8);
          v41 = v88;
        }

        *(v87 + v41) = 0;
        ++v88;
        v40 |= v42;
      }

      v43 = v85;
      if (v85 <= v39)
      {
        if (v85 >= HIDWORD(v85))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v85 + 1, 8);
          v43 = v85;
        }

        *(v84 + v43) = 0;
        LODWORD(v85) = v85 + 1;
        v23 |= v42;
      }

      ++v39;
    }

    while (v14 != v39);
    v44 = 0;
    v45 = v97;
    v46 = v87;
    v47 = v94;
    v48 = v84;
    do
    {
      v49 = *(__src + v44);
      v50 = (v49 & (v46[v44] >> 63)) + v46[v44];
      v51 = v49 - 1;
      if (v50 < v49)
      {
        v51 = (v49 & (v46[v44] >> 63)) + v46[v44];
      }

      if (v50 > -1 && ((1 << v44) & v40) == 0)
      {
        v53 = v51;
      }

      else
      {
        v53 = 0;
      }

      if (((1 << v44) & v23) == 0)
      {
        v54 = (v49 & (v48[v44] >> 63)) + v48[v44];
        if (v54 <= v53)
        {
          v54 = v53 + 1;
        }

        if (v54 < v49)
        {
          v49 = v54;
        }
      }

      v101[0] = v101[0] + v53 * *&v45[8 * v44];
      *&v47[8 * v44++] = v49 - v53;
    }

    while (v14 != v44);
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v77);
  if (v56 == v95 && !memcmp(v94, ArgAttrsAttr, 8 * v95))
  {
    v58 = v91;
    v59 = v92;
    v60 = v101[0];
    Context = mlir::Attribute::getContext(v77);
    StridedLinearLayoutMap = mlir::makeStridedLinearLayoutMap(v58, v59, v60, Context);
    v63 = v94;
    v64 = v95;
    isSplat = mlir::ElementsAttr::isSplat(v77);
    v76 = mlir::MemRefType::get(v63, v64, isSplat, StridedLinearLayoutMap, 0);
    v66 = mlir::OpBuilder::create<mlir::mps_spi::StridedArrayViewOp,mlir::MemRefType &,mlir::Value &,long long &,llvm::SmallVector<long long,6u> &,llvm::SmallVector<long long,6u> &>((a4 + 8), a3[3], &v76, &v79, v101, &v94, &v91);
    v75 = 261;
    v74[0] = "slice";
    v74[1] = 5;
    StringAttr = mlir::Builder::getStringAttr((a4 + 8), v74);
    v68 = mlir::Attribute::getContext((v66 + 24));
    v81 = 261;
    v80[0] = "op";
    v80[1] = 2;
    v69 = mlir::StringAttr::get(v68, v80);
    mlir::Operation::setAttr(v66, v69, StringAttr);
    if (*(v66 + 36))
    {
      v70 = v66 - 16;
    }

    else
    {
      v70 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v70, 0);
    v31 = NextResultAtOffset & 0xFFFFFFFFFFFFFF00;
    v29 = NextResultAtOffset;
    v30 = 1;
  }

  else
  {
    v80[0] = "Shapes mismatch when bufferizing the slice op";
    v81 = 259;
    v74[0] = v80;
    v57 = *(a4 + 16);
    if (v57 && mlir::RewriterBase::Listener::classof(*(a4 + 16)))
    {
      (*(*v57 + 88))(v57, a3[3], llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::SliceOp &>(mlir::mps::SliceOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v74);
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  if (v91 != v93)
  {
    free(v91);
  }

  if (v94 != v96)
  {
    free(v94);
  }

LABEL_36:
  if (v97 != &v99)
  {
    free(v97);
  }

  v94 = (v31 | v29);
  LOBYTE(v95) = v30;
  if ((v30 & 1) == 0)
  {
    v97 = "failed to bufferize the slice op";
    v100 = 259;
    v91 = &v97;
    v33 = *(a4 + 16);
    if (v33 && mlir::RewriterBase::Listener::classof(v33))
    {
      (*(*v33 + 88))(v33, a3[3], llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::SliceOp &>(mlir::mps::SliceOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v91);
    }

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  v32 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>((a4 + 8), a3[3], &v94);
  mlir::RewriterBase::replaceOp(a4, a3, v32);
  v21 = 1;
LABEL_17:
  if (v82[0] != v83)
  {
    free(v82[0]);
  }

  if (v84 != v86)
  {
    free(v84);
  }

  if (v87 != v90)
  {
    free(v87);
  }

  return v21;
}

uint64_t mlir::mps::anonymous namespace::ViewOpRewritePattern<mlir::mps::SliceOp>::bufferizeViewOp(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a1 - 16;
  if (*(a1 + 36))
  {
    v5 = a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v29 = NextResultAtOffset;
  v7 = *NextResultAtOffset;
  if (*NextResultAtOffset)
  {
    while (*(*(v7[2] + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
    {
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
LABEL_7:
    v8 = (NextResultAtOffset[1] & 0xFFFFFFFFFFFFFFF8);
    if (v8)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    }

    else
    {
      v9 = 0;
    }

    v28[0] = v8;
    v28[1] = v9;
    v11 = *(a1 + 24);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v28);
    v14 = v13;
    isSplat = mlir::ElementsAttr::isSplat(v28);
    v30 = mlir::MemRefType::get(ArgAttrsAttr, v14, isSplat, 0, 0, 0);
    v27 = mlir::OpBuilder::create<mlir::memref::AllocOp,mlir::MemRefType>((a2 + 8), v11, &v30) - 16;
    v16 = mlir::OpBuilder::create<mlir::mpsx::MemrefBackedOp,mlir::Value &>((a2 + 8), *(a1 + 24), &v27);
    v17 = ((v16 + 16 * ((*(v16 + 44) >> 23) & 1) + ((*(v16 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v16 + 40);
    mlir::ValueRange::ValueRange(&v30, 0, 0);
    Block = mlir::OpBuilder::createBlock((a2 + 8), v17, 0, v30, v31, 0, 0);
    v19 = Block[5];
    *(a2 + 24) = Block;
    *(a2 + 32) = v19;
    mlir::Operation::moveBefore(a1, Block, Block + 4);
    mlir::OpBuilder::create<mlir::mpsx::UseMemrefOp,mlir::Value &>((a2 + 8), *(a1 + 24), &v29);
    v20 = *(v16 + 16);
    v22 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v16, v21) + 8);
    *(a2 + 24) = v20;
    *(a2 + 32) = v22;
    v23 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>((a2 + 8), *(a1 + 24), &v27);
    v24 = *(a1 + 36);
    if (v24)
    {
      v25 = v4;
    }

    else
    {
      v25 = 0;
    }

    v30 = v25;
    v31 = v24;
    return 1;
  }
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::SliceOp &>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v6 = a3;
  v4 = *(a1 + 16);
  if (v4 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v4 + 88))(v4, *(v3 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::SliceOp &>(mlir::mps::SliceOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v6);
  }

  return 0;
}

void mlir::mps::anonymous namespace::MPSToMemrefStridedSliceConverter::~MPSToMemrefStridedSliceConverter(mlir::mps::_anonymous_namespace_::MPSToMemrefStridedSliceConverter *this)
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

uint64_t mlir::mps::anonymous namespace::ViewOpRewritePattern<mlir::mps::StridedSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 + 72) + 24);
  v49 = v6;
  v50 = a2;
  v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8))
  {
    v43[0] = 0uLL;
LABEL_17:
    v15 = "Unranked input types or dynamic shapes are not supported";
    goto LABEL_18;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  *&v43[0] = v7;
  *(&v43[0] + 1) = v8;
  if (!v7 || !mlir::CallOpInterface::getArgOperands(v43) || !mlir::CallOpInterface::getArgOperands(v43))
  {
    goto LABEL_17;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v10)
  {
    v11 = 8 * v10;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

LABEL_11:
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v43[0] = 0uLL;
LABEL_31:
    v15 = "Unranked result types or dynamic shapes are not supported";
LABEL_18:
    *&v43[0] = v15;
    LOWORD(v44) = 259;
    *&v52[0] = v43;
    v16 = *(a3 + 16);
    if (v16)
    {
      goto LABEL_19;
    }

    return 0;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  *&v43[0] = v13;
  *(&v43[0] + 1) = v14;
  if (!v13 || !mlir::CallOpInterface::getArgOperands(v43) || !mlir::CallOpInterface::getArgOperands(v43))
  {
    goto LABEL_31;
  }

  v18 = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v19)
  {
    v20 = 8 * v19;
    while (*v18 != 0x8000000000000000)
    {
      ++v18;
      v20 -= 8;
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_31;
  }

LABEL_29:
  v21 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v21)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  v48[0] = v21;
  v48[1] = v22;
  *&v43[0] = mlir::ElementsAttr::isSplat(v48);
  if (mlir::Type::isInteger(v43, 1))
  {
    *&v43[0] = "Boolean conversion is not supported for mps_spi.strided_array_view()";
    LOWORD(v44) = 259;
    *&v52[0] = v43;
    v16 = *(a3 + 16);
    if (v16)
    {
LABEL_19:
      if (mlir::RewriterBase::Listener::classof(v16))
      {
        (*(*v16 + 88))(v16, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::StridedSliceOp &>(mlir::mps::StridedSliceOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v52);
      }
    }

    return 0;
  }

  v23 = *(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id)
  {
    return 0;
  }

  v25 = *(*(*(v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v49);
    if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
    {
      NextResultAtOffset = *(*(DefiningOp + 72) + 24);
    }

    else
    {
      v28 = v49;
      do
      {
        v28 = *v28;
        if (!v28)
        {
          v6 = mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>((a3 + 8), *(a2 + 24), &v49) - 16;
          goto LABEL_61;
        }

        v29 = v28[2];
        if (v29)
        {
          v30 = *(*(v29 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id;
        }

        else
        {
          v30 = 0;
        }
      }

      while (!v30);
      if (*(v29 + 36))
      {
        v31 = v29 - 16;
      }

      else
      {
        v31 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0);
    }

    v47 = NextResultAtOffset;
    if (!NextResultAtOffset)
    {
    }
  }

  else
  {
    if (v25 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
    }

LABEL_61:
    v47 = v6;
  }

  v33 = *(a2 + 36);
  if (v33)
  {
    v34 = a2 - 16;
  }

  else
  {
    v34 = 0;
  }

  v51.n128_u64[0] = v34;
  v51.n128_u64[1] = v33;
  mlir::ResultRange::use_begin(&v51, v52);
  v35 = *(a2 + 36);
  if (v35)
  {
    v36 = a2 - 16;
  }

  else
  {
    v36 = 0;
  }

  v51.n128_u64[0] = v36;
  v51.n128_u64[1] = v35;
  mlir::ResultRange::use_end(&v51, v45);
  v44 = v53;
  v37 = v53;
  v43[0] = v52[0];
  v43[1] = v52[1];
  v38 = v46;
  if (v53 != v46)
  {
    while (*(*(*(v37 + 16) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
    {
      mlir::ResultRange::UseIterator::operator++(v52);
      v37 = v53;
      if (v53 == v38)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_73:
  v39 = mlir::Value::getDefiningOp(&v47);
  if (!v39)
  {
    return (*(*a1 + 72))(a1, v47, a2, a3);
  }

  v40 = *(*(v39 + 48) + 16);
  v41 = v40 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id;
  v42 = v40 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id ? v39 : 0;
  *&v52[0] = v42;
  if (!v41 || mlir::placement::RegionCall::getRegionType(v52) != 1)
  {
    return (*(*a1 + 72))(a1, v47, a2, a3);
  }

  *&v43[0] = "Bufferization is not supported for ANE regions";
  LOWORD(v44) = 259;
  return mlir::RewriterBase::notifyMatchFailure<mlir::mps::StridedSliceOp &>(a3, &v50, v43);
}

uint64_t mlir::mps::anonymous namespace::MPSToMemrefStridedSliceConverter::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, mlir::Operation *a3, uint64_t a4)
{
  v116[1] = *MEMORY[0x1E69E9840];
  v88 = a3;
  v103 = v105;
  v104 = 0x600000000;
  v100 = v102;
  v101 = 0x600000000;
  v97 = v99;
  v98 = 0x600000000;
  if ((mlir::matchConstantWithIntVector<long long>(*(*(a3 + 9) + 56), &v103) & 1) == 0)
  {
    v115 = 259;
    v109 = &v112;
    v13 = *(a4 + 16);
    if (!v13 || !mlir::RewriterBase::Listener::classof(v13))
    {
      goto LABEL_19;
    }

    v14 = *(a3 + 3);
    goto LABEL_18;
  }

  if ((mlir::matchConstantWithIntVector<long long>(*(*(a3 + 9) + 88), &v100) & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((mlir::matchConstantWithIntVector<long long>(*(*(v88 + 9) + 120), &v97) & 1) == 0)
  {
LABEL_15:
    v112 = v12;
    v115 = 259;
    v15 = v88;
    v109 = &v112;
    v13 = *(a4 + 16);
    if (!v13 || !mlir::RewriterBase::Listener::classof(v13))
    {
      goto LABEL_19;
    }

    v14 = *(v15 + 3);
LABEL_18:
    (*(*v13 + 88))(v13, v14, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::StridedSliceOp &>(mlir::mps::StridedSliceOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v109);
LABEL_19:
    v16 = 0;
    goto LABEL_20;
  }

  Index = mlir::pdl::ResultOp::getIndex(&v88);
  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v88);
  Groups = mlir::mps::Conv3DOp::getGroups(&v88);
  v9 = Groups;
  if (v98)
  {
    v10 = 0;
    v11 = 8 * v98;
    while (*(v97 + v10) == 1 || ((Groups >> v10) & 1) != 0)
    {
      ++v10;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_27;
      }
    }

    v12 = "Non-unit strides are not supported for bufferizing strided_slice op";
    goto LABEL_15;
  }

LABEL_27:
  v87 = a4;
  v18 = v88;
  v93 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v94 = a2;
  mlir::ArrayAttr::getValue(&v93);
  v20 = v19;
  Value = mlir::ArrayAttr::getValue(&v93);
  v23 = v22;
  v85 = v18;
  v24 = (*(v18 - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v24)
  {
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  v92[0] = v24;
  v92[1] = v25;
  mlir::getStridesAndOffset(v93, &v112);
  if (*&v112[8 * (v20 - 1)] != 1)
  {
LABEL_34:
    v109 = "Transposed input is not supported when bufferizing mps.strided_slice()";
    v111[8] = 259;
    v30 = v88;
    v106 = &v109;
    v31 = *(a4 + 16);
    if (v31 && mlir::RewriterBase::Listener::classof(*(a4 + 16)))
    {
      (*(*v31 + 88))(v31, *(v30 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::StridedSliceOp &>(mlir::mps::StridedSliceOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v106);
    }

    v32 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_38;
  }

  v26 = v113 - 1;
  v27 = (v112 + 8);
  while (v26)
  {
    v28 = *(v27 - 1);
    v29 = *v27++;
    --v26;
    if (v28 < v29)
    {
      goto LABEL_34;
    }
  }

  v109 = v111;
  v110 = 0x600000000;
  v38 = (8 * v23) >> 3;
  if (v38 < 7)
  {
    v39 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v111, v38, 8);
    v39 = v110;
  }

  if (v23)
  {
    memcpy(&v109[8 * v39], Value, 8 * v23);
    v39 = v110;
  }

  v40 = Index;
  LODWORD(v110) = v39 + v23;
  v106 = v108;
  v107 = 0x600000000;
  v41 = v113;
  if (v113)
  {
    if (v113 < 7)
    {
      v43 = v108;
      v42 = v113;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v108, v113, 8);
      v42 = v113;
      if (!v113)
      {
LABEL_56:
        LODWORD(v107) = v41;
        v40 = Index;
        goto LABEL_57;
      }

      v43 = v106;
    }

    memcpy(v43, v112, 8 * v42);
    goto LABEL_56;
  }

LABEL_57:
  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      v45 = v104;
      if (v104 <= i)
      {
        if (v104 >= HIDWORD(v104))
        {
          v48 = v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v105, v104 + 1, 8);
          LODWORD(v40) = v48;
          v45 = v104;
        }

        *(v103 + v45) = 0;
        LODWORD(v104) = v104 + 1;
        v40 = (1 << i) | v40;
      }

      v46 = v101;
      if (v101 <= i)
      {
        if (v101 >= HIDWORD(v101))
        {
          v47 = v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v102, v101 + 1, 8);
          v40 = v47;
          v46 = v101;
        }

        *(v100 + v46) = 0;
        LODWORD(v101) = v101 + 1;
        Offset = ((1 << i) | Offset);
      }
    }

    v49 = 0;
    v50 = 0;
    do
    {
      v51 = *(Value + v49);
      v52 = (1 << v49) & Offset;
      v53 = (1 << v49) & v9;
      if (((1 << v49) & v40) == 0 || !v52 || !v53)
      {
        v54 = (v51 & (*(v100 + v49) >> 63)) + *(v100 + v49);
        v55 = (v51 & (*(v103 + v49) >> 63)) + *(v103 + v49);
        v56 = v51 - 1;
        if (v55 < v51)
        {
          v56 = (v51 & (*(v103 + v49) >> 63)) + *(v103 + v49);
        }

        if (v55 > -1 && ((1 << v49) & v40) == 0)
        {
          v58 = v56;
        }

        else
        {
          v58 = 0;
        }

        if (v54 <= v58)
        {
          v54 = v58 + 1;
        }

        if (v54 >= v51)
        {
          v54 = *(Value + v49);
        }

        if (!v52)
        {
          v51 = v54;
        }

        v116[0] = v116[0] + v58 * *&v112[8 * v49];
        if (v53)
        {
          v59 = Offset;
          v60 = v40;
          v61 = &v109[8 * v50];
          v62 = v110;
          v63 = &v109[8 * v110];
          if (v63 != v61 + 8)
          {
            memmove(v61, v61 + 8, v63 - (v61 + 8));
            v62 = v110;
          }

          LODWORD(v110) = v62 - 1;
          v64 = v106 + 8 * v50;
          v65 = v107;
          v66 = v106 + 8 * v107;
          if (v66 != v64 + 8)
          {
            memmove(v64, v64 + 8, v66 - (v64 + 8));
            v65 = v107;
          }

          v40 = v60;
          LODWORD(v107) = v65 - 1;
          Offset = v59;
          goto LABEL_71;
        }

        *&v109[8 * v50] = v51 - v58;
      }

      ++v50;
LABEL_71:
      ++v49;
    }

    while (v20 != v49);
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v92);
  if (v68 == v110 && !memcmp(v109, ArgAttrsAttr, 8 * v110))
  {
    v71 = v106;
    v72 = v107;
    v73 = v116[0];
    Context = mlir::Attribute::getContext(v92);
    StridedLinearLayoutMap = mlir::makeStridedLinearLayoutMap(v71, v72, v73, Context);
    v76 = v109;
    v77 = v110;
    isSplat = mlir::ElementsAttr::isSplat(v92);
    v91 = mlir::MemRefType::get(v76, v77, isSplat, StridedLinearLayoutMap, 0);
    a4 = v87;
    v79 = mlir::OpBuilder::create<mlir::mps_spi::StridedArrayViewOp,mlir::MemRefType &,mlir::Value &,long long &,llvm::SmallVector<long long,6u> &,llvm::SmallVector<long long,6u> &>((v87 + 8), *(v85 + 3), &v91, &v94, v116, &v109, &v106);
    v90 = 261;
    v89[0] = "strided_slice";
    v89[1] = 13;
    StringAttr = mlir::Builder::getStringAttr((v87 + 8), v89);
    v81 = mlir::Attribute::getContext((v79 + 24));
    v96 = 261;
    v95[0] = "op";
    v95[1] = 2;
    v82 = mlir::StringAttr::get(v81, v95);
    mlir::Operation::setAttr(v79, v82, StringAttr);
    if (*(v79 + 36))
    {
      v83 = v79 - 16;
    }

    else
    {
      v83 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v83, 0);
    v34 = NextResultAtOffset & 0xFFFFFFFFFFFFFF00;
    v32 = NextResultAtOffset;
    v33 = 1;
  }

  else
  {
    v95[0] = "Shapes mismatch when bufferizing the slice op";
    v96 = 259;
    v69 = v88;
    v89[0] = v95;
    a4 = v87;
    v70 = *(v87 + 16);
    if (v70 && mlir::RewriterBase::Listener::classof(*(v87 + 16)))
    {
      (*(*v70 + 88))(v70, *(v69 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::StridedSliceOp &>(mlir::mps::StridedSliceOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v89);
    }

    v32 = 0;
    v33 = 0;
    v34 = 0;
  }

  if (v106 != v108)
  {
    free(v106);
  }

  if (v109 != v111)
  {
    free(v109);
  }

LABEL_38:
  if (v112 != &v114)
  {
    free(v112);
  }

  v109 = (v34 | v32);
  LOBYTE(v110) = v33;
  if ((v33 & 1) == 0)
  {
    v112 = "failed to bufferize the slice op";
    v115 = 259;
    v36 = v88;
    v106 = &v112;
    v37 = *(a4 + 16);
    if (v37 && mlir::RewriterBase::Listener::classof(v37))
    {
      (*(*v37 + 88))(v37, *(v36 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::StridedSliceOp &>(mlir::mps::StridedSliceOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v106);
    }

    goto LABEL_19;
  }

  v35 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>((a4 + 8), *(v88 + 3), &v109);
  mlir::RewriterBase::replaceOp(a4, v88, v35);
  v16 = 1;
LABEL_20:
  if (v97 != v99)
  {
    free(v97);
  }

  if (v100 != v102)
  {
    free(v100);
  }

  if (v103 != v105)
  {
    free(v103);
  }

  return v16;
}