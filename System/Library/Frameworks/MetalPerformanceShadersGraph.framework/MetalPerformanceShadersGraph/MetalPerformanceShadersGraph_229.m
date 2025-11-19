void *std::__hash_table<std::__hash_value_type<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong}>,std::__unordered_map_hasher<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong},std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}* {__strong}>>::__emplace_unique_key_args<unsigned long,unsigned long &,objc_object  {objcproto9MTLBuffer}*&>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (v6[2] == a2)
        {
          return result;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1E061E4F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unsigned __int8 *mlir::detail::unpackQuantizedData<std::complex<float>>(unsigned __int8 *result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 == 6 || a5 == 3)
  {
    if (a4)
    {
      v5 = 0;
      v6 = 2;
      if (a5 == 3)
      {
        v6 = 5;
      }

      v7 = (a3 + 4);
      do
      {
        v8 = result[v5 >> 3] >> (v5 & 7);
        if ((v5 & 7) > v6)
        {
          v9 = (v5 >> 3) + 1;
          if (v9 < a2)
          {
            v8 |= result[v9] << (8 - (v5 & 7));
          }
        }

        *(v7 - 1) = (v8 & ~(-1 << a5));
        *v7 = 0.0;
        v7 += 2;
        v5 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else if (a2)
  {
    v10 = 0;
    v11 = ~(-1 << a5);
    v12 = 8 / a5;
    do
    {
      v13 = a4 - v10 * v12;
      if (v13 >= v12)
      {
        v13 = 8 / a5;
      }

      if (v13)
      {
        v14 = *result;
        v15 = a3 + 8 * v10 * v12;
        *v15 = (v11 & v14);
        *(v15 + 4) = 0;
        if (v13 != 1)
        {
          *(v15 + 8) = ((v14 >> a5) & v11);
          *(v15 + 12) = 0;
          if (v13 >= 3)
          {
            *(v15 + 16) = ((v14 >> (2 * a5)) & v11);
            *(v15 + 20) = 0;
            if (v13 != 3)
            {
              *(v15 + 24) = ((v14 >> (3 * a5)) & v11);
              *(v15 + 28) = 0;
              if (v13 >= 5)
              {
                *(v15 + 32) = ((v14 >> (4 * a5)) & v11);
                *(v15 + 36) = 0;
                if (v13 != 5)
                {
                  *(v15 + 40) = ((v14 >> (5 * a5)) & v11);
                  *(v15 + 44) = 0;
                  if (v13 >= 7)
                  {
                    *(v15 + 48) = ((v14 >> (6 * a5)) & v11);
                    *(v15 + 52) = 0;
                    if (v13 != 7)
                    {
                      *(v15 + 56) = ((v14 >> (7 * a5)) & v11);
                      *(v15 + 60) = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v10;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<void *,mlir::ElementsAttr>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::ElementsAttr>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::ElementsAttr>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::ElementsAttr>>>::__emplace_unique_key_args<void *,void *,mlir::ElementsAttr&>(void *a1, uint64_t *a2)
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

void std::__shared_ptr_pointer<MPSKernelDAG *,std::shared_ptr<MPSKernelDAG>::__shared_ptr_default_delete<MPSKernelDAG,MPSKernelDAG>,std::allocator<MPSKernelDAG>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__shared_ptr_pointer<MPSKernelDAG *,std::shared_ptr<MPSKernelDAG>::__shared_ptr_default_delete<MPSKernelDAG,MPSKernelDAG>,std::allocator<MPSKernelDAG>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MPSKernelDAG *,std::shared_ptr<MPSKernelDAG>::__shared_ptr_default_delete<MPSKernelDAG,MPSKernelDAG>,std::allocator<MPSKernelDAG>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E09A0260)
  {
    if (((v2 & 0x80000001E09A0260 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E09A0260))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E09A0260 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::shrink_and_clear(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
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
    llvm::deallocate_buffer(*result, (16 * v1));
  }

  *(result + 8) = 0;
  if (v1)
  {
    v5 = *result;
    v6 = (v1 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = v6 + 1;
      v8 = (v6 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v9 = (v5 + 16 * v8);
      v10 = (v5 + 16);
      v11 = v8;
      do
      {
        *(v10 - 2) = -4096;
        *v10 = -4096;
        v10 += 4;
        v11 -= 2;
      }

      while (v11);
      if (v7 == v8)
      {
        return result;
      }
    }

    else
    {
      v9 = *result;
    }

    v12 = (v5 + 16 * v1);
    do
    {
      *v9 = -4096;
      v9 = (v9 + 16);
    }

    while (v9 != v12);
  }

  return result;
}

uint64_t llvm::DenseMap<void *,mlir::ElementsAttr,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::ElementsAttr>>::shrink_and_clear(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
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
    llvm::deallocate_buffer(*result, (24 * v1));
  }

  *(result + 8) = 0;
  if (v1)
  {
    v5 = *result;
    v6 = 24 * v1 - 24;
    if (v6 < 0x18)
    {
      v7 = *result;
LABEL_14:
      v11 = (v5 + 24 * v1);
      do
      {
        *v7 = -4096;
        v7 = (v7 + 24);
      }

      while (v7 != v11);
      return result;
    }

    v8 = v6 / 0x18 + 1;
    v7 = (v5 + 24 * (v8 & 0x1FFFFFFFFFFFFFFELL));
    v9 = *result;
    v10 = v8 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v9 = -4096;
      *(v9 + 3) = -4096;
      v9 = (v9 + 48);
      v10 -= 2;
    }

    while (v10);
    if (v8 != (v8 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>,void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::LookupBucketFor<void *>(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (result + 16 * v5);
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
        v6 = (result + 16 * (v11 & v4));
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

void *llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::grow(uint64_t a1, int a2)
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
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = ((v24 >> 4) ^ (v24 >> 9)) & v16;
          v23 = (*a1 + 16 * v25);
          v26 = *v23;
          if (v24 != *v23)
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
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = (*a1 + 16 * (v30 & v16));
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

void *llvm::DenseMap<void *,mlir::ElementsAttr,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::ElementsAttr>>::grow(uint64_t a1, int a2)
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
      v12 = &result[3 * (v16 & 0x1FFFFFFFFFFFFFFELL)];
      v17 = result;
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
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v26 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v27 = *(a1 + 16) - 1;
              v28 = v27 & ((v26 >> 4) ^ (v26 >> 9));
              v25 = *a1 + 24 * v28;
              v29 = *v25;
              if (v26 != *v25)
              {
                v30 = 0;
                v31 = 1;
                while (v29 != -4096)
                {
                  if (v30)
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v32 = v29 == -8192;
                  }

                  if (v32)
                  {
                    v30 = v25;
                  }

                  v33 = v28 + v31++;
                  v28 = v33 & v27;
                  v25 = *a1 + 24 * (v33 & v27);
                  v29 = *v25;
                  if (v26 == *v25)
                  {
                    goto LABEL_26;
                  }
                }

                if (v30)
                {
                  v25 = v30;
                }
              }

LABEL_26:
              *v25 = v26;
              *(v25 + 8) = *(v20 + 8);
              ++*(a1 + 8);
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

    v19 = &result[3 * v10];
    do
    {
      *v12 = -4096;
      v12 += 3;
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
LABEL_21:
      v24 = &result[3 * v13];
      do
      {
        *v15 = -4096;
        v15 += 3;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x18 + 1;
    v15 = &result[3 * (v21 & 0x1FFFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v22 = -4096;
      v22[3] = -4096;
      v22 += 6;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t std::function<void ()(void)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

uint64_t std::__function::__func<GPURegionRuntime::ParallelTIAndFoldHelper::runOnRegion(llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::ElementsAttr>,llvm::ArrayRef<mlir::Type>)::$_0,std::allocator<GPURegionRuntime::ParallelTIAndFoldHelper::runOnRegion(llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::ElementsAttr>,llvm::ArrayRef<mlir::Type>)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B42950;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GPURegionRuntime::ParallelTIAndFoldHelper::runOnRegion(llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::ElementsAttr>,llvm::ArrayRef<mlir::Type>)::$_0,std::allocator<GPURegionRuntime::ParallelTIAndFoldHelper::runOnRegion(llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::ElementsAttr>,llvm::ArrayRef<mlir::Type>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = *(v1 + 72);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      GPURegionRuntime::TIAndFoldHelper::runOnOp(v1, v5);
      std::mutex::lock((v1 + 320));
      ++*(v1 + 312);
      std::mutex::unlock((v1 + 320));
      std::condition_variable::notify_all((v1 + 384));
      v4 -= 8;
    }

    while (v4);
  }
}

uint64_t std::__function::__func<GPURegionRuntime::ParallelTIAndFoldHelper::runOnRegion(llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::ElementsAttr>,llvm::ArrayRef<mlir::Type>)::$_0,std::allocator<GPURegionRuntime::ParallelTIAndFoldHelper::runOnRegion(llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::ElementsAttr>,llvm::ArrayRef<mlir::Type>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN16GPURegionRuntime23ParallelTIAndFoldHelper11runOnRegionEN4llvm8ArrayRefIN4mlir4TypeEEENS2_INS3_12ElementsAttrEEES5_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN16GPURegionRuntime23ParallelTIAndFoldHelper11runOnRegionEN4llvm8ArrayRefIN4mlir4TypeEEENS2_INS3_12ElementsAttrEEES5_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN16GPURegionRuntime23ParallelTIAndFoldHelper11runOnRegionEN4llvm8ArrayRefIN4mlir4TypeEEENS2_INS3_12ElementsAttrEEES5_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN16GPURegionRuntime23ParallelTIAndFoldHelper11runOnRegionEN4llvm8ArrayRefIN4mlir4TypeEEENS2_INS3_12ElementsAttrEEES5_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(uint64_t a1, int a2)
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
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v25 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = ((v25 >> 4) ^ (v25 >> 9)) & v16;
          v23 = &result[2 * v26];
          v27 = *v23;
          if (v25 != *v23)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v23;
              }

              v31 = v26 + v29++;
              v26 = v31 & v16;
              v23 = &result[2 * (v31 & v16)];
              v27 = *v23;
              if (v25 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v28)
            {
              v23 = v28;
            }
          }

LABEL_23:
          v24 = *(v17 + 1);
          *v23 = v25;
          v23[1] = v24;
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::LookupBucketFor<mlir::func::FuncOp>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v6 & (v3 - 1);
    v9 = (*a1 + 16 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 16 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
LABEL_5:
    *a3 = v9;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::grow(uint64_t a1, int a2)
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
  *a1 = result;
  if (v4)
  {
    v10 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v15 = &result[2 * v14];
      v16 = result + 2;
      v17 = v14;
      do
      {
        *(v16 - 2) = -4096;
        *v16 = -4096;
        v16 += 4;
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

    v18 = &result[2 * v11];
    do
    {
      *v15 = -4096;
      v15 += 2;
    }

    while (v15 != v18);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = (v6 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v11 = &v7[2 * v10];
      v12 = v7 + 2;
      v13 = v10;
      do
      {
        *(v12 - 2) = -4096;
        *v12 = -4096;
        v12 += 4;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *a1;
    }

    v14 = &v7[2 * v6];
    do
    {
      *v11 = -4096;
      v11 += 2;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v17 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v18 = 0x9DDFEA08EB382D69 * ((8 * *v4 - 0xAE502812AA7333) ^ HIDWORD(*v4));
        v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v17) ^ (v18 >> 47) ^ v18);
        LODWORD(v18) = -348639895 * ((v19 >> 47) ^ v19);
        v20 = *(a1 + 16) - 1;
        v21 = v20 & v18;
        v15 = (*a1 + 16 * v21);
        v22 = *v15;
        if (v17 != *v15)
        {
          v23 = 0;
          v24 = 1;
          while (v22 != -4096)
          {
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v25 = v22 == -8192;
            }

            if (v25)
            {
              v23 = v15;
            }

            v26 = v21 + v24++;
            v21 = v26 & v20;
            v15 = (*a1 + 16 * (v26 & v20));
            v22 = *v15;
            if (v17 == *v15)
            {
              goto LABEL_14;
            }
          }

          if (v23)
          {
            v15 = v23;
          }
        }

LABEL_14:
        *v15 = v17;
        v16 = v4[1];
        v4[1] = 0;
        v15[1] = v16;
        ++*(a1 + 8);
      }

      v4 += 2;
    }

    while (v4 != a3);
  }
}

void llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::~DenseMap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = 16 * v2;
    v5 = (v3 + 8);
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
      }

      v5 += 2;
      v4 -= 16;
    }

    while (v4);
    v3 = *a1;
    v6 = (16 * *(a1 + 16));
  }

  else
  {
    v6 = 0;
  }

  llvm::deallocate_buffer(v3, v6);
}

{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = 16 * v2;
    v5 = (v3 + 8);
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
      }

      v5 += 2;
      v4 -= 16;
    }

    while (v4);
    v3 = *a1;
    v6 = (16 * *(a1 + 16));
  }

  else
  {
    v6 = 0;
  }

  llvm::deallocate_buffer(v3, v6);
}

void std::default_delete<GPU::ANEHelper::CompiledProduct>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 48);
    v4 = *(a2 + 32);
    if (v3)
    {
      v5 = 352 * v3;
      v6 = (v4 + 8);
      do
      {
        if ((*(v6 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          GPU::ANEHelper::ProcedureInfo::~ProcedureInfo(v6);
        }

        v6 = (v6 + 352);
        v5 -= 352;
      }

      while (v5);
      v4 = *(a2 + 32);
      v7 = 352 * *(a2 + 48);
    }

    else
    {
      v7 = 0;
    }

    llvm::deallocate_buffer(v4, v7);
  }
}

void sub_1E061FD0C()
{

  JUMPOUT(0x1E12E5B90);
}

void GPU::ANEHelper::ProcedureInfo::~ProcedureInfo(GPU::ANEHelper::ProcedureInfo *this)
{
  std::__tree<unsigned long long>::destroy(this + 320, *(this + 41));
  v2 = *(this + 34);
  if (v2 != this + 288)
  {
    free(v2);
  }

  std::__tree<unsigned long long>::destroy(this + 248, *(this + 32));
  v3 = *(this + 25);
  if (v3 != this + 216)
  {
    free(v3);
  }

  v4 = *(this + 16);
  if (v4 != this + 152)
  {
    free(v4);
  }

  v5 = *(this + 8);
  if (v5 != this + 80)
  {
    free(v5);
  }

  v6 = *(this + 2);
  if (v6 != this + 32)
  {
    free(v6);
  }
}

void std::__tree<unsigned long long>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned long long>::destroy(a1, *a2);
    std::__tree<unsigned long long>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

GPU::detail::SpecializationGPUDataLoader **std::unique_ptr<GPU::detail::SpecializationGPUDataLoader>::~unique_ptr[abi:ne200100](GPU::detail::SpecializationGPUDataLoader **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    GPU::detail::SpecializationGPUDataLoader::~SpecializationGPUDataLoader(v2);
  }

  return a1;
}

void GPU::detail::SpecializationGPUDataLoader::~SpecializationGPUDataLoader(GPU::detail::SpecializationGPUDataLoader *this)
{
  v1 = *(this + 4);
  v2 = *this;
  if (v1)
  {
    v3 = v2 + 32 * v1;
    do
    {
      if ((*v2 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *(v2 + 24);
        v4 = *(v2 + 8);
        if (v6)
        {
          v7 = v6 << 6;
          v8 = v4 + 31;
          do
          {
            if ((*(v8 - 31) | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              if (*(v8 + 17))
              {
                GPU::detail::ReadDataFromFileCache::decrementRefCount(*(v8 + 25), (v8 - 23));
              }

              if (*v8 < 0)
              {
                operator delete(*(v8 - 23));
              }
            }

            v8 += 64;
            v7 -= 64;
          }

          while (v7);
          v4 = *(v2 + 8);
          v5 = (*(v2 + 24) << 6);
        }

        else
        {
          v5 = 0;
        }

        llvm::deallocate_buffer(v4, v5);
      }

      v2 += 32;
    }

    while (v2 != v3);
    v2 = *this;
    v9 = (32 * *(this + 4));
  }

  else
  {
    v9 = 0;
  }

  llvm::deallocate_buffer(v2, v9);
}

uint64_t std::unordered_map<ObjCMapKeyWrapper,std::unique_ptr<RuntimeSpecialization>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 3);
      *(v2 + 3) = 0;
      if (v4)
      {
        RuntimeSpecialization::~RuntimeSpecialization(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>>>,mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>>>::destroyAll(uint64_t *result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = *result;
    do
    {
      if ((*v2 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v5 = *(v2 + 24);
        v3 = *(v2 + 8);
        if (v5)
        {
          v6 = v3 + 32 * v5;
          do
          {
            if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              if (*(v3 + 20))
              {
                v7 = *(v3 + 16);
                if (v7)
                {
                  v8 = 0;
                  do
                  {
                    v9 = *(*(v3 + 8) + v8);
                    if (v9 != -8 && v9 != 0)
                    {
                      llvm::deallocate_buffer(v9, (*v9 + 9));
                    }

                    v8 += 8;
                  }

                  while (8 * v7 != v8);
                }
              }

              free(*(v3 + 8));
            }

            v3 += 32;
          }

          while (v3 != v6);
          v3 = *(v2 + 8);
          v4 = (32 * *(v2 + 24));
        }

        else
        {
          v4 = 0;
        }

        llvm::deallocate_buffer(v3, v4);
      }

      v2 += 32;
    }

    while (v2 != *result + 32 * v1);
  }

  return result;
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<ObjCMapKeyWrapper,std::unique_ptr<RuntimeSpecialization>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ObjCMapKeyWrapper,std::unique_ptr<RuntimeSpecialization>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = *(v1 + 24);
      *(v1 + 24) = 0;
      if (v3)
      {
        RuntimeSpecialization::~RuntimeSpecialization(v3);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

RuntimeSpecialization **std::unique_ptr<RuntimeSpecialization>::~unique_ptr[abi:ne200100](RuntimeSpecialization **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    RuntimeSpecialization::~RuntimeSpecialization(v2);
  }

  return a1;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN10MPSRuntime25aneStreamingSessionSignalEP28MPSGraphAneSessionDescriptorNS1_4func6FuncOpEP21RuntimeSpecializationP19NSMutableDictionaryE3__0NS1_9placement10RegionCallEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESV_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t result, mlir::Operation *a2)
{
  if (a2)
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
    {
      v2 = *result;
      v10 = a2;
      v3 = *v2;
      result = mlir::placement::RegionCall::getRegionType(&v10);
      if (result == 1)
      {
        v9 = v10;
        v4 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((v3 + 248), &v9);
        if (!v4)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v5 = *(v4[3] + 120);
        *v2[1] = v5;
        CurrentProcedureInfo = GPU::ANERegionCallOpHandler::getCurrentProcedureInfo(v5);
        result = GPU::ANEHelper::aneStreamingSessionSignal(*(v3 + 600), *v2[3], CurrentProcedureInfo, *v2[4]);
        *v2[2] &= result;
        v7 = *v2[5];
        if (v7)
        {
          *(v3 + 688) = v7;
          v8 = GPU::ANERegionCallOpHandler::getCurrentProcedureInfo(*v2[1]);
          result = GPU::ANEHelper::aneStreamingSessionSignal(*(v3 + 600), *v2[3], v8, *v2[4]);
          *v2[2] &= result;
          *(v3 + 688) = 0;
        }
      }
    }
  }

  return result;
}

void sub_1E0620874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t MILToMLIR::matchAndRewriteConv(MILToMLIR *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  v349 = *MEMORY[0x1E69E9840];
  v5 = (*(*this + 56))(this, a2, a3);
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v323, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    v323.__r_.__value_.__r.__words[2] = *(v5 + 16);
    *&v323.__r_.__value_.__l.__data_ = v6;
  }

  size = SHIBYTE(v323.__r_.__value_.__r.__words[2]);
  if ((v323.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v323;
  }

  else
  {
    v8 = v323.__r_.__value_.__r.__words[0];
  }

  if ((v323.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v323.__r_.__value_.__l.__size_;
  }

  v9 = v8 + size;
  if (size >= 14)
  {
    v10 = v8;
    do
    {
      v11 = memchr(v10, 99, size - 13);
      if (!v11)
      {
        break;
      }

      if (*v11 == 0x6172745F766E6F63 && *(v11 + 6) == 0x65736F70736E6172)
      {
        goto LABEL_18;
      }

      v10 = (v11 + 1);
      size = v9 - v10;
    }

    while (v9 - v10 > 13);
  }

  v11 = v9;
LABEL_18:
  v14 = v11 == v9 || v11 - v8 == -1;
  v294 = v14;
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a2, this);
  ArgValue = MILToMLIRRewriter::getArgValue(a2, this, "x");
  v321 = MILToMLIRRewriter::getArgValue(a2, this, "weight");
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a2, this, "bias");
  v319 = 0;
  v318 = 2;
  v16 = (*(*this + 160))(this);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](v316, v16);
  v315 = 1;
  v348 = 6;
  strcpy(&__s2, "groups");
  v17 = v317[0];
  v293 = LocationForOp;
  if (!v317[0])
  {
    goto LABEL_63;
  }

  v18 = v317;
  do
  {
    v19 = v18;
    v20 = (v17 + 32);
    v21 = v17[55];
    v22 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(v17 + 5);
    }

    if (v22 >= 0)
    {
      v23 = v17 + 32;
    }

    else
    {
      v23 = *(v17 + 4);
    }

    if (v21 >= 6)
    {
      v24 = 6;
    }

    else
    {
      v24 = v21;
    }

    v25 = v21 < 6;
    v26 = memcmp(v23, &__s2, v24);
    v27 = v26 < 0;
    if (!v26)
    {
      v27 = v25;
    }

    if (v27)
    {
      v28 = 8;
    }

    else
    {
      v28 = 0;
    }

    if (v27)
    {
      v18 = v19;
    }

    else
    {
      v18 = v17;
    }

    v17 = *&v17[v28];
  }

  while (v17);
  if (v18 == v317)
  {
    goto LABEL_63;
  }

  if (v27)
  {
    v29 = (v19 + 4);
  }

  else
  {
    v29 = v20;
  }

  v30 = *(v18 + 55);
  v31 = v30;
  if ((v30 & 0x80u) != 0)
  {
    v30 = v18[5];
  }

  if (v31 >= 0)
  {
    v32 = v29;
  }

  else
  {
    v32 = *v29;
  }

  if (v30 >= 6)
  {
    v33 = 6;
  }

  else
  {
    v33 = v30;
  }

  v34 = v30 > 6;
  v35 = memcmp(&__s2, v32, v33);
  v36 = v35 < 0;
  if (!v35)
  {
    v36 = v34;
  }

  if (v36 || v18[8] - v18[7] != 16)
  {
    goto LABEL_63;
  }

  v348 = 6;
  strcpy(&__s2, "groups");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (v348 < 0)
  {
    v38 = ParameterValue;
    operator delete(__s2);
    ParameterValue = v38;
  }

  (*(*ParameterValue + 40))(ParameterValue);
  Data = MIL::IRTensorValue::GetDataView<int>();
  if (v40)
  {
    v315 = *Data;
    v41 = v315 > 1;
  }

  else
  {
LABEL_63:
    v41 = 0;
  }

  if (*(*(*(v321 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v42 = *(v321 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v42 = 0;
  }

  v314 = v42;
  __s2 = v347;
  memset_pattern16(v347, &unk_1E096FAE0, 0x20uLL);
  v346 = 0x400000004;
  if (v42)
  {
    LODWORD(v346) = 0;
    Value = mlir::ArrayAttr::getValue(&v314);
    if (v44)
    {
      v45 = v346;
      v46 = 8 * v44;
      do
      {
        v47 = *Value;
        if (v45 >= HIDWORD(v346))
        {
          v48 = Value;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__s2, v347, v45 + 1, 8);
          v45 = v346;
          Value = v48;
        }

        __s2[v45] = v47;
        v45 = v346 + 1;
        LODWORD(v346) = v346 + 1;
        ++Value;
        v46 -= 8;
      }

      while (v46);
    }
  }

  if (!v314)
  {
    goto LABEL_88;
  }

  if ((*__s2 == 1 || v41) && __s2[1] == 1 && v294)
  {
    v49 = 0;
    v50 = 1;
    goto LABEL_92;
  }

  if (!v294)
  {
    v55 = *(v321 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v55 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v55 = 0;
    }

    *&__p = v55;
    mlir::ArrayAttr::getValue(&__p);
    if (v56 == 4)
    {
      *&__p = 4;
      v57 = mlir::IntegerType::get(*(a2 + 23), 32, 1u);
      v54 = mlir::RankedTensorType::get(&__p, 1, v57, 0);
      if (!v54)
      {
        v59 = 0;
        goto LABEL_91;
      }

      goto LABEL_87;
    }

LABEL_88:
    v49 = 0;
    v50 = 0;
    goto LABEL_92;
  }

  v51 = *(v321 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v51 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v51 = 0;
  }

  *&__p = v51;
  mlir::ArrayAttr::getValue(&__p);
  if (v52 != 4)
  {
    goto LABEL_88;
  }

  *&__p = 4;
  v53 = mlir::IntegerType::get(*(a2 + 23), 32, 1u);
  v54 = mlir::RankedTensorType::get(&__p, 1, v53, 0);
  if (!v54)
  {
    v59 = 0;
    goto LABEL_91;
  }

LABEL_87:
  v58 = v54;
  v59 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
  v54 = v58;
LABEL_91:
  __p = xmmword_1E097BC90;
  v311 = mlir::DenseElementsAttr::getFromRawBuffer(v54, v59, &__p, 16, 4, 1, 1);
  *&__p = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 184), v293, &v311);
  v50 = 0;
  v321 = mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value &,mlir::mps::ConstantOp &>(a2 + 23, v293, &v321, &__p) - 16;
  v318 = 3;
  v49 = 1;
LABEL_92:
  BYTE7(v328[0]) = 1;
  LOWORD(__p) = 120;
  ParameterType = MIL::IROperation::GetParameterType();
  if (SBYTE7(v328[0]) < 0)
  {
    v61 = ParameterType;
    operator delete(__p);
    ParameterType = v61;
  }

  v62 = MIL::IRValueType::AsTensorType(ParameterType);
  v63 = MIL::IRTensorValueType::Rank(v62);
  if (v63 <= 2)
  {
    operator new();
  }

  v292 = v63;
  v289 = v63 == 3;
  if (v63 == 3)
  {
    v64 = 1;
  }

  else
  {
    v64 = 2;
  }

  if (v63 >= 5)
  {
    v64 = 3;
  }

  v290 = v64;
  v291 = v50;
  BYTE7(v328[0]) = 8;
  strcpy(&__p, "pad_type");
  v65 = v317[0];
  if (!v317[0])
  {
    goto LABEL_134;
  }

  v66 = v317;
  do
  {
    v67 = v66;
    v68 = (v65 + 32);
    v69 = v65[55];
    v70 = v69;
    if ((v69 & 0x80u) != 0)
    {
      v69 = *(v65 + 5);
    }

    if (v70 >= 0)
    {
      v71 = v65 + 32;
    }

    else
    {
      v71 = *(v65 + 4);
    }

    if (v69 >= 8)
    {
      v72 = 8;
    }

    else
    {
      v72 = v69;
    }

    v73 = v69 < 8;
    v74 = memcmp(v71, &__p, v72);
    v75 = v74 < 0;
    if (!v74)
    {
      v75 = v73;
    }

    if (v75)
    {
      v76 = 8;
    }

    else
    {
      v76 = 0;
    }

    if (v75)
    {
      v66 = v67;
    }

    else
    {
      v66 = v65;
    }

    v65 = *&v65[v76];
  }

  while (v65);
  if (v66 == v317)
  {
    goto LABEL_134;
  }

  if (v75)
  {
    v77 = (v67 + 4);
  }

  else
  {
    v77 = v68;
  }

  v78 = *(v66 + 55);
  v79 = v78;
  if ((v78 & 0x80u) != 0)
  {
    v78 = v66[5];
  }

  if (v79 >= 0)
  {
    v80 = v77;
  }

  else
  {
    v80 = *v77;
  }

  if (v78 >= 8)
  {
    v81 = 8;
  }

  else
  {
    v81 = v78;
  }

  v82 = v78 > 8;
  v83 = memcmp(&__p, v80, v81);
  v84 = v83 < 0;
  if (!v83)
  {
    v84 = v82;
  }

  if (v84)
  {
LABEL_134:
    operator new();
  }

  if (v66[8] - v66[7] != 16)
  {
    operator new();
  }

  BYTE7(v328[0]) = 8;
  strcpy(&__p, "pad_type");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  if (SBYTE7(v328[0]) < 0)
  {
    operator delete(__p);
  }

  v310 = 0;
  if ((v313 & 0x80) == 0)
  {
    if (v313 <= 5u)
    {
      if (v313 != 4)
      {
        if (v313 != 5)
        {
          goto LABEL_265;
        }

        if (v311 != 1768710518 || BYTE4(v311) != 100)
        {
          goto LABEL_265;
        }

        goto LABEL_163;
      }

      v90 = v311;
LABEL_181:
      if (v90 != 1701667187)
      {
        goto LABEL_265;
      }

      v310 = 2;
      v285 = 1;
LABEL_183:
      v343 = 0;
      v344 = 0;
      v341 = 0uLL;
      v342 = 0;
      goto LABEL_184;
    }

    if (v313 != 10)
    {
      goto LABEL_265;
    }

    if (v311 != 0x776F6C5F656D6173 || v312 != 29285)
    {
      goto LABEL_265;
    }

LABEL_177:
    v285 = 0;
    v310 = 4;
    goto LABEL_183;
  }

  if (v312 > 5)
  {
    if (v312 != 10)
    {
      goto LABEL_265;
    }

    if (*v311 != 0x776F6C5F656D6173 || *(v311 + 4) != 29285)
    {
      goto LABEL_265;
    }

    goto LABEL_177;
  }

  if (v312 == 4)
  {
    v90 = *v311;
    goto LABEL_181;
  }

  if (v312 == 5 && *v311 == 1768710518 && *(v311 + 4) == 100)
  {
LABEL_163:
    v285 = 1;
    v310 = 1;
    goto LABEL_183;
  }

LABEL_265:
  v343 = 0;
  v344 = 0;
  v341 = 0uLL;
  v342 = 0;
  BYTE7(v328[0]) = 3;
  LODWORD(__p) = 6578544;
  v143 = v317[0];
  if (!v317[0])
  {
    goto LABEL_299;
  }

  v144 = v317;
  do
  {
    v145 = v144;
    v146 = (v143 + 32);
    v147 = v143[55];
    v148 = v147;
    if ((v147 & 0x80u) != 0)
    {
      v147 = *(v143 + 5);
    }

    if (v148 >= 0)
    {
      v149 = v143 + 32;
    }

    else
    {
      v149 = *(v143 + 4);
    }

    if (v147 >= 3)
    {
      v150 = 3;
    }

    else
    {
      v150 = v147;
    }

    v151 = v147 < 3;
    v152 = memcmp(v149, &__p, v150);
    v153 = v152 < 0;
    if (!v152)
    {
      v153 = v151;
    }

    if (v153)
    {
      v154 = 8;
    }

    else
    {
      v154 = 0;
    }

    if (v153)
    {
      v144 = v145;
    }

    else
    {
      v144 = v143;
    }

    v143 = *&v143[v154];
  }

  while (v143);
  if (v144 == v317)
  {
    goto LABEL_299;
  }

  if (v153)
  {
    v155 = (v145 + 4);
  }

  else
  {
    v155 = v146;
  }

  v156 = *(v144 + 55);
  v157 = v156;
  if ((v156 & 0x80u) != 0)
  {
    v156 = v144[5];
  }

  if (v157 >= 0)
  {
    v158 = v155;
  }

  else
  {
    v158 = *v155;
  }

  if (v156 >= 3)
  {
    v159 = 3;
  }

  else
  {
    v159 = v156;
  }

  v160 = v156 > 3;
  v161 = memcmp(&__p, v158, v159);
  v162 = v161 < 0;
  if (!v161)
  {
    v162 = v160;
  }

  if (v162)
  {
LABEL_299:
    operator new();
  }

  if (v144[8] - v144[7] != 16)
  {
    operator new();
  }

  BYTE7(v328[0]) = 3;
  LODWORD(__p) = 6578544;
  v163 = MIL::IROperation::TryGetParameterValue();
  if (SBYTE7(v328[0]) < 0)
  {
    v164 = v163;
    operator delete(__p);
    v163 = v164;
  }

  (*(*v163 + 40))(v163);
  v165 = MIL::IRTensorValue::GetDataView<int>();
  if (v166 >> 1 == 2)
  {
    v285 = 0;
    v182 = *(v165 + 4);
    v183 = *(v165 + 8);
    v184 = *(v165 + 12);
    LODWORD(v344) = *v165;
    HIDWORD(v344) = v183;
    v343 = __PAIR64__(v184, v182);
    *(&v341 + 1) = __PAIR64__(v182, v344);
    v342 = __PAIR64__(v184, v183);
  }

  else if (v166 >> 1 == 1)
  {
    v285 = 0;
    v167 = *(v165 + 4);
    HIDWORD(v344) = *v165;
    HIDWORD(v343) = v167;
    v342 = __PAIR64__(v167, HIDWORD(v344));
  }

  else
  {
    v285 = 0;
    if (v166 >= 6)
    {
      v341 = *v165;
      v342 = *(v165 + 16);
    }
  }

LABEL_184:
  v340 = 1;
  v339 = 0x100000001;
  v338 = 1;
  v337 = 0x100000001;
  BYTE7(v328[0]) = 7;
  strcpy(&__p, "strides");
  v91 = v317[0];
  if (v317[0])
  {
    v92 = v317;
    do
    {
      v93 = v92;
      v94 = (v91 + 32);
      v95 = v91[55];
      v96 = v95;
      if ((v95 & 0x80u) != 0)
      {
        v95 = *(v91 + 5);
      }

      if (v96 >= 0)
      {
        v97 = v91 + 32;
      }

      else
      {
        v97 = *(v91 + 4);
      }

      if (v95 >= 7)
      {
        v98 = 7;
      }

      else
      {
        v98 = v95;
      }

      v99 = v95 < 7;
      v100 = memcmp(v97, &__p, v98);
      v101 = v100 < 0;
      if (!v100)
      {
        v101 = v99;
      }

      if (v101)
      {
        v102 = 8;
      }

      else
      {
        v102 = 0;
      }

      if (v101)
      {
        v92 = v93;
      }

      else
      {
        v92 = v91;
      }

      v91 = *&v91[v102];
    }

    while (v91);
    if (v92 != v317)
    {
      if (v101)
      {
        v103 = (v93 + 4);
      }

      else
      {
        v103 = v94;
      }

      v104 = *(v92 + 55);
      v105 = v104;
      if ((v104 & 0x80u) != 0)
      {
        v104 = v92[5];
      }

      if (v105 >= 0)
      {
        v106 = v103;
      }

      else
      {
        v106 = *v103;
      }

      if (v104 >= 7)
      {
        v107 = 7;
      }

      else
      {
        v107 = v104;
      }

      v108 = v104 > 7;
      v109 = memcmp(&__p, v106, v107);
      v110 = v109 < 0;
      if (!v109)
      {
        v110 = v108;
      }

      if (!v110)
      {
        if (v92[8] - v92[7] == 16)
        {
          BYTE7(v328[0]) = 7;
          strcpy(&__p, "strides");
          v169 = MIL::IROperation::TryGetParameterValue();
          if (SBYTE7(v328[0]) < 0)
          {
            v170 = v169;
            operator delete(__p);
            v169 = v170;
          }

          (*(*v169 + 40))(v169);
          v171 = MIL::IRTensorValue::GetDataView<int>();
          if (v172 == 2)
          {
            v198 = v171[1];
            LODWORD(v339) = *v171;
            HIDWORD(v339) = v198;
            v286 = v339;
            HIDWORD(v337) = v339;
            v338 = v198;
            v287 = 1;
            v288 = v198;
            goto LABEL_220;
          }

          if (v172 == 1)
          {
            HIDWORD(v339) = *v171;
            v288 = HIDWORD(v339);
            v338 = HIDWORD(v339);
            v287 = 1;
            goto LABEL_219;
          }

          if (v172 >= 3)
          {
            v199 = v171[1];
            v286 = *v171;
            LODWORD(v339) = *v171;
            HIDWORD(v339) = v199;
            v287 = v171[2];
            v288 = v199;
            v340 = v287;
            goto LABEL_220;
          }
        }

        v288 = 1;
        v287 = 1;
        goto LABEL_219;
      }
    }
  }

  v287 = 1;
  v288 = 1;
LABEL_219:
  v286 = 1;
LABEL_220:
  v336 = 1;
  v335 = 0x100000001;
  v334 = 1;
  v333 = 0x100000001;
  BYTE7(v328[0]) = 9;
  strcpy(&__p, "dilations");
  v111 = v317[0];
  if (!v317[0])
  {
    goto LABEL_254;
  }

  v112 = v317;
  do
  {
    v113 = v112;
    v114 = (v111 + 32);
    v115 = v111[55];
    v116 = v115;
    if ((v115 & 0x80u) != 0)
    {
      v115 = *(v111 + 5);
    }

    if (v116 >= 0)
    {
      v117 = v111 + 32;
    }

    else
    {
      v117 = *(v111 + 4);
    }

    if (v115 >= 9)
    {
      v118 = 9;
    }

    else
    {
      v118 = v115;
    }

    v119 = v115 < 9;
    v120 = memcmp(v117, &__p, v118);
    v121 = v120 < 0;
    if (!v120)
    {
      v121 = v119;
    }

    if (v121)
    {
      v122 = 8;
    }

    else
    {
      v122 = 0;
    }

    if (v121)
    {
      v112 = v113;
    }

    else
    {
      v112 = v111;
    }

    v111 = *&v111[v122];
  }

  while (v111);
  if (v112 == v317)
  {
    goto LABEL_254;
  }

  if (v121)
  {
    v123 = (v113 + 4);
  }

  else
  {
    v123 = v114;
  }

  v124 = *(v112 + 55);
  v125 = v124;
  if ((v124 & 0x80u) != 0)
  {
    v124 = v112[5];
  }

  if (v125 >= 0)
  {
    v126 = v123;
  }

  else
  {
    v126 = *v123;
  }

  if (v124 >= 9)
  {
    v127 = 9;
  }

  else
  {
    v127 = v124;
  }

  v128 = v124 > 9;
  v129 = memcmp(&__p, v126, v127);
  v130 = v129 < 0;
  if (!v129)
  {
    v130 = v128;
  }

  if (v130)
  {
LABEL_254:
    v131 = 1;
    v132 = 1;
    v133 = 1;
  }

  else if (v112[8] - v112[7] == 16)
  {
    BYTE7(v328[0]) = 9;
    strcpy(&__p, "dilations");
    v173 = MIL::IROperation::TryGetParameterValue();
    if (SBYTE7(v328[0]) < 0)
    {
      v174 = v173;
      operator delete(__p);
      v173 = v174;
    }

    (*(*v173 + 40))(v173);
    v175 = MIL::IRTensorValue::GetDataView<int>();
    switch(v176)
    {
      case 3uLL:
        v131 = *v175;
        v132 = v175[1];
        LODWORD(v335) = *v175;
        HIDWORD(v335) = v132;
        v133 = v175[2];
        v336 = v175[2];
        break;
      case 2uLL:
        v131 = *v175;
        v132 = v175[1];
        v335 = __PAIR64__(v132, v131);
        HIDWORD(v333) = v131;
        v334 = v132;
        v133 = 1;
        break;
      case 1uLL:
        v132 = *v175;
        HIDWORD(v335) = v132;
        v334 = v132;
        v133 = 1;
        v131 = 1;
        break;
      default:
        if (v176 >= 4)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "Only up to rank 2 convolutions supported currently.");
          MILToMLIRRewriter::notifyFailure(a2, this, &__p);
          if (SBYTE7(v328[0]) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_302;
        }

        v133 = 1;
        v131 = 1;
        v132 = 1;
        break;
    }
  }

  else
  {
    v133 = 1;
    v131 = 1;
    v132 = 1;
  }

  if ((*(*this + 192))(this) != 1)
  {
    operator new();
  }

  v309 = 0;
  v308 = -4;
  if (!v50)
  {
    if (v292 == 3)
    {
      LODWORD(v331) = 2;
      std::vector<int>::vector[abi:ne200100](&__p, &v331, 1uLL);
      *v329 = 2;
      std::vector<int>::vector[abi:ne200100](&v331, v329, 1uLL);
      v134 = 0;
      *v329 = 1;
      IntegerType = mlir::Builder::getIntegerType(a2 + 23, 32, 1);
      v140 = mlir::RankedTensorType::get(v329, 1, IntegerType, 0);
      if (v140)
      {
        v141 = v140;
        v142 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v140 + 8);
        v140 = v141;
      }

      else
      {
        v142 = 0;
      }

      *v329 = mlir::DenseElementsAttr::getFromRawBuffer(v140, v142, __p, *(&__p + 1) - __p, 4, 1, 1);
      v309 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 184), v293, v329);
      ArgValue = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::mps::ConstantOp &>((a2 + 184), v293, &ArgValue, &v309) - 16;
      v321 = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::mps::ConstantOp &>((a2 + 184), v293, &v321, &v309) - 16;
      if (v331)
      {
        *(&v331 + 1) = v331;
        operator delete(v331);
      }

      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (v294)
      {
        *&v331 = 0;
        v168 = 1;
        goto LABEL_398;
      }

      v168 = 1;
      goto LABEL_386;
    }

    goto LABEL_311;
  }

  if (v290 == 1)
  {
    LODWORD(v331) = 2;
    std::vector<int>::vector[abi:ne200100](&__p, &v331, 1uLL);
    *v329 = 0;
    std::vector<int>::vector[abi:ne200100](&v331, v329, 1uLL);
    v134 = v50;
    *v329 = 1;
    v178 = mlir::Builder::getIntegerType(a2 + 23, 32, 1);
    v179 = mlir::RankedTensorType::get(v329, 1, v178, 0);
    v180 = v179;
    if (v179)
    {
      v181 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v179 + 8);
    }

    else
    {
      v181 = 0;
    }

    v296 = mlir::DenseElementsAttr::getFromRawBuffer(v180, v181, v331, *(&v331 + 1) - v331, 4, 1, 1);
    *v329 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 184), v293, &v296);
    if (v180)
    {
      v201 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v180 + 8);
    }

    else
    {
      v201 = 0;
    }

    v296 = mlir::DenseElementsAttr::getFromRawBuffer(v180, v201, __p, *(&__p + 1) - __p, 4, 1, 1);
    v309 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 184), v293, &v296);
    ArgValue = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::mps::ConstantOp &>((a2 + 184), v293, &ArgValue, &v309) - 16;
    v202 = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::mps::ConstantOp &>((a2 + 184), v293, &v321, v329);
    v168 = v289;
    goto LABEL_379;
  }

  if (v290 != 2)
  {
LABEL_311:
    if (v292 <= 4)
    {
      v168 = 0;
      v134 = v291;
      goto LABEL_383;
    }

    if (v41)
    {
      if (v346 != 5)
      {
        goto LABEL_340;
      }

      v177 = __s2;
    }

    else
    {
      v177 = __s2;
      if (*__s2 != 1 || v346 != 5)
      {
        goto LABEL_340;
      }
    }

    if (v177[1] == 1)
    {
      *&__p = 1;
      v185 = mlir::Builder::getIntegerType(a2 + 23, 32, 1);
      v186 = mlir::RankedTensorType::get(&__p, 1, v185, 0);
      LODWORD(__p) = 1;
      llvm::SmallVector<int,1u>::SmallVector(&v331, &__p, 1);
      if (v186)
      {
        v187 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v186 + 8);
      }

      else
      {
        v187 = 0;
      }

      *&__p = mlir::DenseElementsAttr::getFromRawBuffer(v186, v187, v331, 4 * DWORD2(v331), 4, 1, 1);
      v296 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 184), v293, &__p);
      v321 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::mps::ConstantOp &>((a2 + 184), v293, &v321, &v296) - 16;
      *&v324 = 0;
      if (v294)
      {
        MILToMLIR::arrayToU64Attr(a2 + 23, &v339, 3);
      }

      *&__p = 4;
      v256 = mlir::Builder::getIntegerType(a2 + 23, 32, 1);
      v257 = mlir::RankedTensorType::get(&__p, 1, v256, 0);
      *v329 = xmmword_1E09A0640;
      *&v329[16] = 1;
      llvm::SmallVector<int,5u>::SmallVector(&__p, v329, 5);
      v258 = *(v321 + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*v258 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v258 = 0;
      }

      *v329 = v258;
      v259 = mlir::ArrayAttr::getValue(v329);
      std::string::basic_string[abi:ne200100]<0>(v329, "output_shape");
      v260 = std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::find[abi:ne200100](v316, v329);
      if (v330 < 0)
      {
        v261 = v260;
        operator delete(*v329);
        v260 = v261;
      }

      if (v317 == v260 || *(v260 + 64) - *(v260 + 56) != 16)
      {
        *v329 = 0;
        goto LABEL_485;
      }

      std::string::basic_string[abi:ne200100]<0>(v329, "output_shape");
      v262 = MIL::IROperation::TryGetParameterValue();
      if (v330 < 0)
      {
        operator delete(*v329);
      }

      if (!(*(*v262 + 40))(v262))
      {
        *v329 = 0;
        goto LABEL_485;
      }

      v263 = MIL::IRTensorValue::GetDataView<int>();
      switch(v264)
      {
        case 1uLL:
          v265 = __p;
          *(__p + 12) = *v263;
          break;
        case 3uLL:
          v265 = __p;
          *(__p + 8) = *v263;
          v265[3] = v263[1];
          v265[4] = v263[2];
          break;
        case 2uLL:
          v265 = __p;
          *(__p + 8) = *v263;
          v265[3] = v263[1];
          if (v49)
          {
            v266 = (v259 + 16);
LABEL_535:
            v265[1] = *v266;
            if (v257)
            {
              v284 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v257 + 8);
              v265 = __p;
            }

            else
            {
              v284 = 0;
            }

            v307 = mlir::DenseElementsAttr::getFromRawBuffer(v257, v284, v265, 4 * DWORD2(__p), 4, 1, 1);
            *v329 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 184), v293, &v307) - 16;
LABEL_485:
            MILToMLIR::arrayToU64Attr(a2 + 23, &v339, 3);
          }

          break;
        default:
          if (v264 < 4)
          {
            std::string::basic_string[abi:ne200100]<0>(v329, "Invalid output shape.");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(v329, "1d, 2d convolutions supported currently.");
          }

          MILToMLIRRewriter::notifyFailure(a2, this, v329);
          if (v330 < 0)
          {
            operator delete(*v329);
          }

          if (__p != v328)
          {
            free(__p);
          }

          if (v331 != &v332)
          {
            free(v331);
          }

          goto LABEL_302;
      }

      v266 = (v259 + 8);
      goto LABEL_535;
    }

LABEL_340:
    v188 = *(v321 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v188 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v188 = 0;
    }

    *&__p = v188;
    v189 = mlir::ArrayAttr::getValue(&__p);
    v191 = v190;
    v192 = *(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v192 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v192 = 0;
    }

    *&__p = v192;
    v193 = mlir::ArrayAttr::getValue(&__p);
    v307 = -1;
    if (v191 == 5 && v194 == 5)
    {
      if (v286 == 1 && v189[2] == 1 && ((v285 & 1) != 0 || !v341))
      {
        v195 = 0;
        v196 = 0;
        v197 = 2;
      }

      else if (v288 == 1 && v189[3] == 1 && ((v285 & 1) != 0 || !*(&v341 + 1)))
      {
        v196 = 0;
        v195 = 1;
        v197 = 3;
      }

      else
      {
        if (v287 != 1 || v189[4] != 1 || (v285 & 1) == 0 && v342)
        {
          goto LABEL_413;
        }

        v195 = 1;
        v197 = 4;
        v196 = 1;
      }

      v307 = v197;
      if (v294)
      {
        v295 = v196;
        v215 = v133;
        v216 = v193;
        *&__p = 1;
        v217 = mlir::Builder::getIntegerType(a2 + 23, 32, 1);
        v218 = mlir::RankedTensorType::get(&__p, 1, v217, 0);
        LODWORD(__p) = v197;
        llvm::SmallVector<int,1u>::SmallVector(&v331, &__p, 1);
        v219 = v293;
        if (v218)
        {
          v220 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v218 + 8);
        }

        else
        {
          v220 = 0;
        }

        *&__p = mlir::DenseElementsAttr::getFromRawBuffer(v218, v220, v331, 4 * DWORD2(v331), 4, 1, 1);
        v296 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 184), v293, &__p);
        if (*v216 == 1)
        {
          LODWORD(__p) = 0;
          ArgValue = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,long long &>(a2 + 23, v293, &ArgValue, &__p, &v307) - 16;
          ArgValue = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::mps::ConstantOp &>((a2 + 184), v293, &ArgValue, &v296) - 16;
        }

        else
        {
          LODWORD(__p) = v197 - 1;
          *v329 = v197;
          ArgValue = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int &,int>(a2 + 23, v293, &ArgValue, &__p, v329) - 16;
          LODWORD(__p) = v197 - 2;
          if (v195)
          {
            *v329 = v197 - 1;
            ArgValue = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int &,int>(a2 + 23, v293, &ArgValue, &__p, v329) - 16;
            LODWORD(__p) = v197 - 3;
            if (v295)
            {
              *v329 = v197 - 2;
              ArgValue = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int &,int>(a2 + 23, v293, &ArgValue, &__p, v329) - 16;
              LODWORD(__p) = v197 - 4;
            }
          }

          *&__p = 4;
          v267 = mlir::Builder::getIntegerType(a2 + 23, 32, 1);
          v268 = mlir::RankedTensorType::get(&__p, 1, v267, 0);
          *v329 = *(v216 + 8 * v197) * *v216;
          *&v329[4] = vuzp1q_s32(*(v216 + 8), *(v216 + 24));
          llvm::SmallVector<int,5u>::SmallVector(&__p, v329, 5);
          v269 = __p + 4 * v197;
          v270 = DWORD2(__p);
          v271 = __p + 4 * DWORD2(__p);
          if (v271 != v269 + 4)
          {
            memmove(v269, (v269 + 4), v271 - (v269 + 4));
            v270 = DWORD2(__p);
          }

          v272 = v270 - 1;
          DWORD2(__p) = v272;
          if (v268)
          {
            v273 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v268 + 8);
            v272 = DWORD2(__p);
          }

          else
          {
            v273 = 0;
          }

          *&v324 = mlir::DenseElementsAttr::getFromRawBuffer(v268, v273, __p, 4 * v272, 4, 1, 1);
          *v329 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 184), v293, &v324);
          ArgValue = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a2 + 23, v293, &ArgValue, v329) - 16;
          if (__p != v328)
          {
            free(__p);
          }

          v219 = v293;
        }

        v321 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::mps::ConstantOp &>((a2 + 184), v219, &v321, &v296) - 16;
        *&v324 = v287;
        v305 = v215;
        v306 = v288;
        v303 = v342;
        v304 = v132;
        v301 = SDWORD2(v341);
        v302 = SHIDWORD(v342);
        v300 = SHIDWORD(v341);
        if (v197 == 4)
        {
          *&v324 = v288;
          v305 = v132;
          v306 = v286;
          v303 = SDWORD2(v341);
          v304 = v131;
          v302 = SHIDWORD(v341);
        }

        else
        {
          if (v197 != 3)
          {
            goto LABEL_514;
          }

          *&v324 = v287;
          v305 = v215;
          v306 = v286;
          v303 = v342;
          v304 = v131;
          v302 = SHIDWORD(v342);
        }

        v300 = SDWORD1(v341);
        v301 = v341;
LABEL_514:
        v274 = mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value &,mlir::Value &,int &,unsigned long &,unsigned long &,unsigned long &,unsigned long &,unsigned long &,unsigned long &,unsigned long &,unsigned long &,mlir::mps::PaddingStyle &,mlir::mps::TensorDataLayout &,mlir::mps::TensorDataLayout &>(a2 + 23, v219, &ArgValue, &v321, &v315, &v324, &v306, &v305, &v304, &v303, &v302, &v301, &v300, &v310, &v319, &v318);
        v299 = v274 - 16;
        if (OptionalArgValue)
        {
          *&__p = mlir::getElementTypeOrSelf((*(v274 - 8) & 0xFFFFFFFFFFFFFFF8));
          ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(OptionalArgValue + 8) & 0xFFFFFFFFFFFFFFF8));
          if (__p != ElementTypeOrSelf)
          {
            OptionalArgValue = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a2 + 23, v219, &OptionalArgValue, &__p) - 16;
            v219 = v293;
          }

          *v329 = 0;
          v274 = mlir::OpBuilder::create<mlir::mps::BiasAddOp,mlir::Value &,mlir::Value &,mlir::mps::TensorDataLayout>(a2 + 23, v219, &v299, &OptionalArgValue, v329);
          v299 = v274 - 16;
        }

        v276 = *(v274 - 8) & 0xFFFFFFFFFFFFFFF8;
        if (v276)
        {
          v277 = *(*v276 + 136);
          if (v277 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v277 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
          {
            v276 = 0;
          }
        }

        *&__p = v276;
        v279 = mlir::ArrayAttr::getValue(&__p);
        *v329 = *v216;
        *&v329[4] = *(v216 + 8 * v197);
        *&v329[8] = vmovn_s64(*(v279 + 8));
        *&v329[16] = *(v279 + 24);
        llvm::SmallVector<int,5u>::SmallVector(&__p, v329, 5);
        *v329 = 5;
        v280 = mlir::Builder::getIntegerType(a2 + 23, 32, 1);
        v281 = mlir::RankedTensorType::get(v329, 1, v280, 0);
        if (v281)
        {
          v282 = v281;
          v283 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v281 + 8);
          v281 = v282;
        }

        else
        {
          v283 = 0;
        }

        *v329 = mlir::DenseElementsAttr::getFromRawBuffer(v281, v283, __p, 4 * DWORD2(__p), 4, 1, 1);
        v298 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 184), v293, v329);
        v299 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a2 + 23, v293, &v299, &v298) - 16;
        *v329 = 1;
        v297 = 2;
        v299 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int &,int>(a2 + 23, v293, &v299, v329, &v297) - 16;
        *v329 = 2;
        if (v195)
        {
          v297 = 3;
          v299 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int &,int>(a2 + 23, v293, &v299, v329, &v297) - 16;
          *v329 = 3;
          if (v295)
          {
            v297 = 4;
            v299 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int &,int>(a2 + 23, v293, &v299, v329, &v297) - 16;
            *v329 = 4;
          }
        }

        (*(*this + 200))(v329, this);
        MILToMLIRRewriter::setValue();
      }
    }

LABEL_413:
    v319 = 7;
    *&__p = 5;
    v221 = mlir::IntegerType::get(*(a2 + 23), 32, 1u);
    v222 = mlir::RankedTensorType::get(&__p, 1, v221, 0);
    v223 = v133;
    if (v222)
    {
      v224 = v222;
      v225 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v222 + 8);
      v222 = v224;
    }

    else
    {
      v225 = 0;
    }

    LODWORD(v328[0]) = 0;
    __p = xmmword_1E09A062C;
    *&v331 = mlir::DenseElementsAttr::getFromRawBuffer(v222, v225, &__p, 20, 4, 1, 1);
    *&__p = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 184), v293, &v331);
    v321 = mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value &,mlir::mps::ConstantOp &>(a2 + 23, v293, &v321, &__p) - 16;
    v318 = 10;
    v306 = 0;
    *&v226 = v342;
    *(&v226 + 1) = SHIDWORD(v342);
    v227 = v226;
    *&v226 = SDWORD2(v341);
    *(&v226 + 1) = SHIDWORD(v341);
    __p = v227;
    v328[0] = v226;
    *&v226 = v341;
    *(&v226 + 1) = SDWORD1(v341);
    v328[1] = v226;
    std::vector<unsigned long long>::vector[abi:ne200100](&v331, &__p, 6uLL);
    *&__p = v287;
    *(&__p + 1) = v288;
    *&v328[0] = v286;
    std::vector<unsigned long long>::vector[abi:ne200100](v329, &__p, 3uLL);
    *&__p = v223;
    *(&__p + 1) = v132;
    *&v328[0] = v131;
    std::vector<unsigned long long>::vector[abi:ne200100](&v296, &__p, 3uLL);
    if (v294)
    {
      v306 = mlir::OpBuilder::create<mlir::mps::Conv3DOp,mlir::Value &,mlir::Value &,int &,std::vector<unsigned long long> &,std::vector<unsigned long long> &,std::vector<unsigned long long> &,mlir::mps::PaddingStyle &,mlir::mps::TensorDataLayout &,mlir::mps::TensorDataLayout &>(a2 + 23, v293, &ArgValue, &v321, &v315, v329, &v296, &v331, &v310, &v319, &v318) - 16;
    }

    else
    {
      *&__p = 5;
      v228 = mlir::Builder::getIntegerType(a2 + 23, 32, 1);
      v229 = mlir::RankedTensorType::get(&__p, 1, v228, 0);
      v324 = xmmword_1E09A0640;
      v325 = 1;
      llvm::SmallVector<int,4u>::SmallVector(&__p, &v324, 5);
      std::string::basic_string[abi:ne200100]<0>(&v324, "output_shape");
      v230 = std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::find[abi:ne200100](v316, &v324);
      if (v326 < 0)
      {
        v231 = v230;
        operator delete(v324);
        v230 = v231;
      }

      if (v317 == v230 || *(v230 + 64) - *(v230 + 56) != 16)
      {
        goto LABEL_435;
      }

      std::string::basic_string[abi:ne200100]<0>(&v324, "output_shape");
      v232 = MIL::IROperation::TryGetParameterValue();
      if (v326 < 0)
      {
        v233 = v232;
        operator delete(v324);
        v232 = v233;
      }

      if ((*(*v232 + 40))(v232))
      {
        v234 = MIL::IRTensorValue::GetDataView<int>();
        if (v235)
        {
          v236 = 0;
          v237 = __p;
          if (v235 < 8)
          {
            goto LABEL_431;
          }

          if ((__p - v234) <= 0x1F)
          {
            goto LABEL_431;
          }

          v236 = v235 & 0xFFFFFFFFFFFFFFF8;
          v238 = (v234 + 16);
          v239 = (__p + 16);
          v240 = v235 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v241 = *v238;
            *(v239 - 1) = *(v238 - 1);
            *v239 = v241;
            v238 += 2;
            v239 += 2;
            v240 -= 8;
          }

          while (v240);
          if (v235 != v236)
          {
LABEL_431:
            v242 = v235 - v236;
            v243 = 4 * v236;
            v244 = (v237 + v243);
            v245 = (v234 + v243);
            do
            {
              v246 = *v245++;
              *v244++ = v246;
              --v242;
            }

            while (v242);
          }
        }

        if (v229)
        {
          v247 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v229 + 8);
        }

        else
        {
          v247 = 0;
        }

        v305 = mlir::DenseElementsAttr::getFromRawBuffer(v229, v247, __p, 4 * DWORD2(__p), 4, 1, 1);
        *&v324 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 184), v293, &v305) - 16;
      }

      else
      {
LABEL_435:
        *&v324 = 0;
      }

      v306 = mlir::OpBuilder::create<mlir::mps::Conv3DDataGradientOp,mlir::Value &,mlir::Value &,mlir::Value &,int &,std::vector<unsigned long long> &,std::vector<unsigned long long> &,std::vector<unsigned long long> &,mlir::mps::PaddingStyle &,mlir::mps::TensorDataLayout &,mlir::mps::TensorDataLayout &>(a2 + 23, v293, &ArgValue, &v321, &v324, &v315, v329, &v296, &v331, &v310, &v319, &v318) - 16;
      if (__p != v328)
      {
        free(__p);
      }
    }

    if (OptionalArgValue)
    {
      *&v324 = 0x200000001;
      DWORD2(v324) = 3;
      std::vector<int>::vector[abi:ne200100](&__p, &v324, 3uLL);
      *&v324 = 3;
      v248 = mlir::Builder::getIntegerType(a2 + 23, 32, 1);
      v249 = mlir::RankedTensorType::get(&v324, 1, v248, 0);
      if (v249)
      {
        v250 = v249;
        v251 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v249 + 8);
        v249 = v250;
      }

      else
      {
        v251 = 0;
      }

      v305 = mlir::DenseElementsAttr::getFromRawBuffer(v249, v251, __p, *(&__p + 1) - __p, 4, 1, 1);
      *&v324 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 184), v293, &v305);
      v305 = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::mps::ConstantOp &>((a2 + 184), v293, &OptionalArgValue, &v324) - 16;
      v304 = mlir::getElementTypeOrSelf((*(v306 + 8) & 0xFFFFFFFFFFFFFFF8));
      v252 = mlir::getElementTypeOrSelf((*(v305 + 8) & 0xFFFFFFFFFFFFFFF8));
      if (v304 != v252)
      {
        v305 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a2 + 23, v293, &v305, &v304) - 16;
      }

      v306 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(a2 + 23, v293, &v306, &v305) - 16;
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }
    }

    (*(*this + 200))(&__p, this);
    MILToMLIRRewriter::setValue();
  }

  LODWORD(v331) = 1;
  std::vector<int>::vector[abi:ne200100](&__p, &v331, 1uLL);
  *v329 = 0;
  std::vector<int>::vector[abi:ne200100](&v331, v329, 1uLL);
  v134 = v50;
  *v329 = 1;
  v135 = mlir::Builder::getIntegerType(a2 + 23, 32, 1);
  v136 = mlir::RankedTensorType::get(v329, 1, v135, 0);
  v137 = v136;
  if (v136)
  {
    v138 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v136 + 8);
  }

  else
  {
    v138 = 0;
  }

  v296 = mlir::DenseElementsAttr::getFromRawBuffer(v137, v138, __p, *(&__p + 1) - __p, 4, 1, 1);
  *v329 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 184), v293, &v296);
  if (v137)
  {
    v200 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v137 + 8);
  }

  else
  {
    v200 = 0;
  }

  *&v324 = mlir::DenseElementsAttr::getFromRawBuffer(v137, v200, v331, *(&v331 + 1) - v331, 4, 1, 1);
  v296 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 184), v293, &v324);
  v321 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::mps::ConstantOp &>((a2 + 184), v293, &v321, v329) - 16;
  v202 = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::mps::ConstantOp &>((a2 + 184), v293, &v321, &v296);
  v168 = v289;
LABEL_379:
  v321 = v202 - 16;
  v308 = -3;
  if (v331)
  {
    *(&v331 + 1) = v331;
    operator delete(v331);
  }

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

LABEL_383:
  if (v294)
  {
    *&v331 = 0;
    if (v134)
    {
      MILToMLIR::arrayToU64Attr(a2 + 23, &v337, 3);
    }

LABEL_398:
    v213 = mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value &,mlir::Value &,int &,int &,int &,int &,int &,int &,int &,int &,int &,mlir::mps::PaddingStyle &,mlir::mps::TensorDataLayout &,mlir::mps::TensorDataLayout &>(a2 + 23, v293, &ArgValue, &v321, &v315, &v339 + 1, &v339, &v335 + 1, &v335, &v344 + 1, &v343 + 1, &v344, &v343, &v310, &v319, &v318);
    *&v331 = v213 - 16;
    if (OptionalArgValue)
    {
      *&__p = mlir::getElementTypeOrSelf((*(v213 - 8) & 0xFFFFFFFFFFFFFFF8));
      v214 = mlir::getElementTypeOrSelf((*(OptionalArgValue + 8) & 0xFFFFFFFFFFFFFFF8));
      if (__p != v214)
      {
        OptionalArgValue = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a2 + 23, v293, &OptionalArgValue, &__p) - 16;
      }

      *v329 = 0;
      *&v331 = mlir::OpBuilder::create<mlir::mps::BiasAddOp,mlir::Value &,mlir::Value &,mlir::mps::TensorDataLayout>(a2 + 23, v293, &v331, &OptionalArgValue, v329) - 16;
    }

    if (v168)
    {
      *&v331 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::mps::ConstantOp &>((a2 + 184), v293, &v331, &v309) - 16;
    }

    (*(*this + 200))(&__p, this);
    MILToMLIRRewriter::setValue();
  }

LABEL_386:
  *&__p = 4;
  v203 = mlir::Builder::getIntegerType(a2 + 23, 32, 1);
  v204 = mlir::RankedTensorType::get(&__p, 1, v203, 0);
  v331 = xmmword_1E09A02B0;
  llvm::SmallVector<int,4u>::SmallVector(&__p, &v331, 4);
  std::string::basic_string[abi:ne200100]<0>(&v331, "output_shape");
  v205 = std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::find[abi:ne200100](v316, &v331);
  if (SHIBYTE(v332) < 0)
  {
    v206 = v205;
    operator delete(v331);
    v205 = v206;
  }

  if (v317 == v205 || *(v205 + 64) - *(v205 + 56) != 16)
  {
    goto LABEL_396;
  }

  std::string::basic_string[abi:ne200100]<0>(&v331, "output_shape");
  v207 = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(v332) < 0)
  {
    v208 = v207;
    operator delete(v331);
    v207 = v208;
  }

  if (!(*(*v207 + 40))(v207))
  {
LABEL_396:
    *v329 = 0;
    v296 = 0;
    if (!v134)
    {
      goto LABEL_460;
    }

    goto LABEL_397;
  }

  v209 = MIL::IRTensorValue::GetDataView<int>();
  if (v210 == 3)
  {
    v212 = v209 + 2;
    v211 = __p;
    goto LABEL_452;
  }

  if (v210 == 4)
  {
    v211 = __p;
    *(__p + 8) = v209[2];
    v212 = v209 + 3;
LABEL_452:
    v211[3] = *v212;
    v211[1] = v209[1];
    *v211 = *v209;
    goto LABEL_453;
  }

  if (v210 < 5)
  {
    if (v210)
    {
LABEL_453:
      if (v204)
      {
        v253 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v204 + 8);
      }

      else
      {
        v253 = 0;
      }

      *&v331 = mlir::DenseElementsAttr::getFromRawBuffer(v204, v253, __p, 4 * DWORD2(__p), 4, 1, 1);
      *v329 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 184), v293, &v331) - 16;
      v296 = 0;
      if (!v134)
      {
LABEL_460:
        v254 = mlir::OpBuilder::create<mlir::mps::Conv2DDataGradientOp,mlir::Value &,mlir::Value &,mlir::Value &,int &,int &,int &,int &,int &,int &,int &,int &,int &,mlir::mps::PaddingStyle &,mlir::mps::TensorDataLayout &,mlir::mps::TensorDataLayout &>(a2 + 23, v293, &ArgValue, &v321, v329, &v315, &v339 + 1, &v339, &v335 + 1, &v335, &v344 + 1, &v343 + 1, &v344, &v343, &v310, &v319, &v318);
        v296 = (v254 - 16);
        if (OptionalArgValue)
        {
          *&v331 = mlir::getElementTypeOrSelf((*(v254 - 8) & 0xFFFFFFFFFFFFFFF8));
          v255 = mlir::getElementTypeOrSelf((*(OptionalArgValue + 8) & 0xFFFFFFFFFFFFFFF8));
          if (v331 != v255)
          {
            OptionalArgValue = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a2 + 23, v293, &OptionalArgValue, &v331) - 16;
          }

          LODWORD(v324) = 0;
          v296 = (mlir::OpBuilder::create<mlir::mps::BiasAddOp,mlir::Value &,mlir::Value &,mlir::mps::TensorDataLayout>(a2 + 23, v293, &v296, &OptionalArgValue, &v324) - 16);
        }

        if (v168)
        {
          v296 = (mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::mps::ConstantOp &>((a2 + 184), v293, &v296, &v309) - 16);
        }

        (*(*this + 200))(&v331, this);
        MILToMLIRRewriter::setValue();
      }

LABEL_397:
      MILToMLIR::arrayToU64Attr(a2 + 23, &v337, 3);
    }

    std::string::basic_string[abi:ne200100]<0>(&v331, "Invalid output shape.");
    MILToMLIRRewriter::notifyFailure(a2, this, &v331);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v331, "1d, 2d convolutions supported currently.");
    MILToMLIRRewriter::notifyFailure(a2, this, &v331);
  }

  if (SHIBYTE(v332) < 0)
  {
    operator delete(v331);
  }

  if (__p != v328)
  {
    free(__p);
  }

LABEL_302:
  if (v313 < 0)
  {
    operator delete(v311);
  }

  if (__s2 != v347)
  {
    free(__s2);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(v316, v317[0]);
  if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v323.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E0623BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (a72 != &a73)
  {
    free(a72);
  }

  if (STACK[0x220] != &STACK[0x230])
  {
    free(STACK[0x220]);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  v75 = *(v73 - 152);
  if (v75 != a26)
  {
    free(v75);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a55, a56);
  if (a67 < 0)
  {
    operator delete(a62);
  }

  _Unwind_Resume(a1);
}

void MILToMLIR::PadPattern::matchAndRewrite(MILToMLIR::PadPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v39[2] = *MEMORY[0x1E69E9840];
  MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v36[4] = ArgValue;
  v36[2] = 0;
  v36[3] = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "constant_val");
  v5 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](v35, v5);
  HIBYTE(v39[0]) = 3;
  LODWORD(__s2[0]) = 6578544;
  v6 = v36[0];
  if (v36[0])
  {
    v7 = v36;
    do
    {
      v8 = v7;
      v9 = (v6 + 32);
      v10 = *(v6 + 55);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v6 + 40);
      }

      if (v11 >= 0)
      {
        v12 = (v6 + 32);
      }

      else
      {
        v12 = *(v6 + 32);
      }

      if (v10 >= 3)
      {
        v13 = 3;
      }

      else
      {
        v13 = v10;
      }

      v14 = v10 < 3;
      v15 = memcmp(v12, __s2, v13);
      v16 = v15 < 0;
      if (!v15)
      {
        v16 = v14;
      }

      if (v16)
      {
        v17 = 8;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v7 = v8;
      }

      else
      {
        v7 = v6;
      }

      v6 = *(v6 + v17);
    }

    while (v6);
    if (v7 != v36)
    {
      if (v16)
      {
        v18 = (v8 + 4);
      }

      else
      {
        v18 = v9;
      }

      v19 = *(v7 + 55);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = v7[5];
      }

      if (v20 >= 0)
      {
        v21 = v18;
      }

      else
      {
        v21 = *v18;
      }

      if (v19 >= 3)
      {
        v22 = 3;
      }

      else
      {
        v22 = v19;
      }

      v23 = v19 > 3;
      v24 = memcmp(__s2, v21, v22);
      v25 = v24 < 0;
      if (!v24)
      {
        v25 = v23;
      }

      if (!v25)
      {
        if (v7[8] - v7[7] == 16)
        {
          HIBYTE(v39[0]) = 3;
          LODWORD(__s2[0]) = 6578544;
          ParameterValue = MIL::IROperation::TryGetParameterValue();
          if (SHIBYTE(v39[0]) < 0)
          {
            v27 = ParameterValue;
            operator delete(__s2[0]);
            ParameterValue = v27;
          }

          if (ParameterValue)
          {
            (*(*ParameterValue + 40))(ParameterValue);
            MIL::IRTensorValue::GetDataView<int>();
            HIBYTE(v39[0]) = 1;
            LOWORD(__s2[0]) = 120;
            ParameterType = MIL::IROperation::GetParameterType();
            v29 = MIL::IRValueType::AsTensorType(ParameterType);
            v30 = MIL::IRTensorValueType::Rank(v29);
            if (SHIBYTE(v39[0]) < 0)
            {
              operator delete(__s2[0]);
            }

            v39[0] = v30;
            v39[1] = 2;
            __s2[0] = v39;
            __s2[1] = 0x200000002;
            v37 = *(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8;
            Context = mlir::Attribute::getContext(&v37);
            v32 = mlir::IntegerType::get(Context, 32, 1u);
            v33 = mlir::RankedTensorType::get(v39, 2, v32, 0);
            if (v33)
            {
              mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
            }

            operator new();
          }

          operator new();
        }

        operator new();
      }
    }
  }

  operator new();
}

uint64_t std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](uint64_t a1, const void ***a2)
{
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      if (!*std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__find_equal<std::string>(a1, v3, &v11, &v10, v5 + 4))
      {
        std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__construct_node<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>> const&>();
      }

      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v4);
  }

  return a1;
}

uint64_t std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::find[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  v3 = __sz >= v2;
  v4 = __sz - v2;
  if (v4 != 0 && v3)
  {
    std::vector<int>::__append(this, v4);
  }

  else if (!v3)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v20 = 1283;
    v19[2] = "mps.constant";
    v19[3] = 12;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  mlir::OperationState::OperationState(v22, a2, v9);
  v11 = *a3;
  v12 = *a4;
  if (v12)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v12 + 8);
  }

  mlir::mps::ConstantOp::build(a1, v22, v11, v12);
  v13 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v14;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PadOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::mps::PaddingMode>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned int *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.pad";
    v21[3] = 7;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  mlir::mps::PadOp::build(a1, v24, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v16;
}

uint64_t MILToMLIR::CropPattern::matchAndRewrite(MILToMLIR::CropPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v75[1] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v73 = ArgValue;
  v74 = 0;
  v75[0] = 0;
  v5 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](v71, v5);
  v70 = 11;
  strcpy(__s2, "crop_height");
  v6 = v72[0];
  if (!v72[0])
  {
    goto LABEL_35;
  }

  v65 = a3;
  v7 = v72;
  v8 = v72[0];
  do
  {
    v9 = v7;
    v10 = (v8 + 32);
    v11 = v8[55];
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v8 + 5);
    }

    if (v12 >= 0)
    {
      v13 = v8 + 32;
    }

    else
    {
      v13 = *(v8 + 4);
    }

    if (v11 >= 0xB)
    {
      v14 = 11;
    }

    else
    {
      v14 = v11;
    }

    v15 = v11 < 0xB;
    v16 = memcmp(v13, __s2, v14);
    v17 = v16 < 0;
    if (!v16)
    {
      v17 = v15;
    }

    if (v17)
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v7 = v9;
    }

    else
    {
      v7 = v8;
    }

    v8 = *&v8[v18];
  }

  while (v8);
  if (v7 == v72)
  {
    goto LABEL_35;
  }

  if (v17)
  {
    v19 = (v9 + 4);
  }

  else
  {
    v19 = v10;
  }

  v20 = *(v7 + 55);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = v7[5];
  }

  if (v21 >= 0)
  {
    v22 = v19;
  }

  else
  {
    v22 = *v19;
  }

  if (v20 >= 0xB)
  {
    v23 = 11;
  }

  else
  {
    v23 = v20;
  }

  v24 = v20 > 0xB;
  v25 = memcmp(__s2, v22, v23);
  v26 = v25 < 0;
  if (!v25)
  {
    v26 = v24;
  }

  if (v26)
  {
LABEL_35:
    operator new();
  }

  if (v7[8] - v7[7] != 16)
  {
    operator new();
  }

  v70 = 10;
  strcpy(__s2, "crop_width");
  v28 = v72;
  do
  {
    v29 = v28;
    v30 = (v6 + 32);
    v31 = v6[55];
    v32 = v31;
    if ((v31 & 0x80u) != 0)
    {
      v31 = *(v6 + 5);
    }

    if (v32 >= 0)
    {
      v33 = v6 + 32;
    }

    else
    {
      v33 = *(v6 + 4);
    }

    if (v31 >= 0xA)
    {
      v34 = 10;
    }

    else
    {
      v34 = v31;
    }

    v35 = v31 < 0xA;
    v36 = memcmp(v33, __s2, v34);
    v37 = v36 < 0;
    if (!v36)
    {
      v37 = v35;
    }

    if (v37)
    {
      v38 = 8;
    }

    else
    {
      v38 = 0;
    }

    if (!v37)
    {
      v28 = v6;
    }

    v6 = *&v6[v38];
  }

  while (v6);
  if (v28 == v72)
  {
    goto LABEL_72;
  }

  if (v37)
  {
    v39 = (v29 + 4);
  }

  else
  {
    v39 = v30;
  }

  v40 = *(v28 + 55);
  v41 = v40;
  if ((v40 & 0x80u) != 0)
  {
    v40 = v28[5];
  }

  if (v41 >= 0)
  {
    v42 = v39;
  }

  else
  {
    v42 = *v39;
  }

  if (v40 >= 0xA)
  {
    v43 = 10;
  }

  else
  {
    v43 = v40;
  }

  v44 = v40 > 0xA;
  v45 = memcmp(__s2, v42, v43);
  v46 = v45 < 0;
  if (!v45)
  {
    v46 = v44;
  }

  if (v46)
  {
LABEL_72:
    operator new();
  }

  if (v28[8] - v28[7] != 16)
  {
    operator new();
  }

  v70 = 11;
  strcpy(__s2, "crop_height");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (v70 < 0)
  {
    v48 = ParameterValue;
    operator delete(__s2[0]);
    ParameterValue = v48;
  }

  (*(*ParameterValue + 40))(ParameterValue);
  Data = MIL::IRTensorValue::GetDataView<int>();
  if (v50 != 2)
  {
    operator new();
  }

  v51 = Data;
  v70 = 10;
  strcpy(__s2, "crop_width");
  v52 = MIL::IROperation::TryGetParameterValue();
  if (v70 < 0)
  {
    v53 = v52;
    operator delete(__s2[0]);
    v52 = v53;
  }

  (*(*v52 + 40))(v52);
  v54 = MIL::IRTensorValue::GetDataView<int>();
  if (v55 == 2)
  {
    LODWORD(v75[0]) = *v54;
    HIDWORD(v75[0]) = *v51;
    v56 = v51[1];
    LODWORD(v74) = v54[1];
    HIDWORD(v74) = v56;
    __s2[0] = (*(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8);
    Context = mlir::Attribute::getContext(__s2);
    v58 = mlir::IntegerType::get(Context, 32, 1u);
    v59 = mlir::RankedTensorType::get(0, 0, v58, 0);
    v60 = v59;
    if (v59)
    {
      v61 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v59 + 8);
    }

    else
    {
      v61 = 0;
    }

    LODWORD(v67) = -1;
    __s2[0] = mlir::DenseElementsAttr::getFromRawBuffer(v60, v61, &v67, 4, 4, 1, 1);
    v68 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((v65 + 184), LocationForOp, __s2) - 16;
    if (v60)
    {
      v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
    }

    else
    {
      v62 = 0;
    }

    LODWORD(v66) = -2;
    __s2[0] = mlir::DenseElementsAttr::getFromRawBuffer(v60, v62, &v66, 4, 4, 1, 1);
    v67 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((v65 + 184), LocationForOp, __s2) - 16;
    v66 = mlir::OpBuilder::create<mlir::mps::CropOp,mlir::Value &,mlir::Value &,int &,int &>(v65 + 23, LocationForOp, &v73, &v68, v75, &v74) - 16;
    mlir::OpBuilder::create<mlir::mps::CropOp,mlir::Value &,mlir::Value &,int &,int &>(v65 + 23, LocationForOp, &v66, &v67, v75 + 1, &v74 + 1);
    (*(*a2 + 200))(__s2, a2);
    MILToMLIRRewriter::setValue();
  }

  std::string::basic_string[abi:ne200100]<0>(__s2, "Unexpected length for 'crop_width'");
  MILToMLIRRewriter::notifyFailure(v65, a2, __s2);
  if (v70 < 0)
  {
    operator delete(__s2[0]);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(v71, v72[0]);
  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::CropOp,mlir::Value &,mlir::Value &,int &,int &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int *a5, int *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.crop";
    v21[3] = 8;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  mlir::mps::CropOp::build(a1, v24, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v16;
}

uint64_t MILToMLIR::UpsampleBilinearPattern::matchAndRewrite(MILToMLIR::UpsampleBilinearPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v88 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v5 = a2;
  v6 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](v82, v6);
  v81 = 13;
  strcpy(__s2, "align_corners");
  v7 = v83[0];
  if (!v83[0])
  {
    goto LABEL_35;
  }

  v8 = v83;
  do
  {
    v9 = v8;
    v10 = (v7 + 32);
    v11 = v7[55];
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v7 + 5);
    }

    if (v12 >= 0)
    {
      v13 = v7 + 32;
    }

    else
    {
      v13 = *(v7 + 4);
    }

    if (v11 >= 0xD)
    {
      v14 = 13;
    }

    else
    {
      v14 = v11;
    }

    v15 = v11 < 0xD;
    v16 = memcmp(v13, __s2, v14);
    v17 = v16 < 0;
    if (!v16)
    {
      v17 = v15;
    }

    if (v17)
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v8 = v9;
    }

    else
    {
      v8 = v7;
    }

    v7 = *&v7[v18];
  }

  while (v7);
  if (v8 == v83)
  {
    goto LABEL_35;
  }

  if (v17)
  {
    v19 = (v9 + 4);
  }

  else
  {
    v19 = v10;
  }

  v20 = *(v8 + 55);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = v8[5];
  }

  if (v21 >= 0)
  {
    v22 = v19;
  }

  else
  {
    v22 = *v19;
  }

  if (v20 >= 0xD)
  {
    v23 = 13;
  }

  else
  {
    v23 = v20;
  }

  v24 = v20 > 0xD;
  v25 = memcmp(__s2, v22, v23);
  v26 = v25 < 0;
  if (!v25)
  {
    v26 = v24;
  }

  if (v26)
  {
LABEL_35:
    operator new();
  }

  if (v8[8] - v8[7] != 16)
  {
    operator new();
  }

  v81 = 13;
  strcpy(__s2, "align_corners");
  MIL::IROperation::GetParameterValue();
  if (v81 < 0)
  {
    operator delete(*__s2);
  }

  v84 = MIL::IRValue::GetScalar<BOOL>();
  v81 = 1;
  strcpy(__s2, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  if (v81 < 0)
  {
    v29 = ParameterType;
    operator delete(*__s2);
    ParameterType = v29;
  }

  v30 = MIL::IRValueType::AsTensorType(ParameterType);
  v31 = (*(*v30 + 96))(v30);
  v32 = (v31[1] - *v31) >> 3;
  if (v32 <= 1)
  {
    operator new();
  }

  if (v32 >= 5)
  {
    operator new();
  }

  if ((*(*v5 + 192))(v5) != 1)
  {
    operator new();
  }

  v79 = mlir::OpBuilder::create<mlir::mps::ShapeOp,mlir::Value>((a3 + 23), LocationForOp, &ArgValue) - 16;
  v78 = -1;
  v77 = 1;
  *__s2 = -1;
  v76 = mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::Value &,int &,int,int &>(a3 + 23, LocationForOp, &v79, &v78, __s2, &v77) - 16;
  *__s2 = -2;
  v75 = mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::Value &,int &,int,int &>(a3 + 23, LocationForOp, &v79, &v78, __s2, &v77) - 16;
  *__s2 = *(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8;
  Context = mlir::Attribute::getContext(__s2);
  v34 = mlir::IntegerType::get(Context, 32, 1u);
  v35 = mlir::RankedTensorType::get(0, 0, v34, 0);
  if (v35)
  {
    v36 = v35;
    v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8);
    v35 = v36;
  }

  else
  {
    v37 = 0;
  }

  LODWORD(v86[0]) = -1;
  *__s2 = mlir::DenseElementsAttr::getFromRawBuffer(v35, v37, v86, 4, 4, 1, 1);
  v74 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, __s2) - 16;
  v72 = 2;
  v73 = 0;
  v38 = mlir::OpBuilder::create<mlir::mps::CropOp,mlir::Value &,mlir::Value &,unsigned int &,unsigned int &>(a3 + 23, LocationForOp, &v79, &v74, &v73, &v72);
  v81 = 19;
  strcpy(__s2, "scale_factor_height");
  ParameterValue = MIL::IROperation::GetParameterValue();
  if (v81 < 0)
  {
    operator delete(*__s2);
  }

  v40 = MEMORY[0x1E12E5340](ParameterValue);
  if (v40)
  {
    v41 = *v40;
  }

  else
  {
    v42 = MEMORY[0x1E12E5350](ParameterValue);
    if (v42)
    {
      v41 = *v42;
    }

    else
    {
      v43 = MEMORY[0x1E12E5330](ParameterValue);
      if (!v43)
      {
        std::string::basic_string[abi:ne200100]<0>(__s2, "unexpected type for scale_factor_height");
        MILToMLIRRewriter::notifyFailure(a3, v5, __s2);
        goto LABEL_36;
      }

      MIL::Fp16::GetFloat(v43);
      v41 = v44;
    }
  }

  v81 = 18;
  strcpy(__s2, "scale_factor_width");
  v45 = MIL::IROperation::GetParameterValue();
  if (v81 < 0)
  {
    operator delete(*__s2);
  }

  v46 = MEMORY[0x1E12E5340](v45);
  if (v46)
  {
    v47 = *v46;
    goto LABEL_70;
  }

  v48 = MEMORY[0x1E12E5350](v45);
  if (v48)
  {
    v47 = *v48;
    goto LABEL_70;
  }

  v49 = MEMORY[0x1E12E5330](v45);
  if (v49)
  {
    MIL::Fp16::GetFloat(v49);
    v47 = v50;
LABEL_70:
    *__s2 = *(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8;
    v51 = mlir::Attribute::getContext(__s2);
    v71 = mlir::Float32Type::get(v51, v52);
    *__s2 = 1;
    v53 = mlir::RankedTensorType::get(__s2, 1, v71, 0);
    ConstantOpFromScalar = createConstantOpFromScalar((a3 + 23), LocationForOp, v53, v47);
    v69 = createConstantOpFromScalar((a3 + 23), LocationForOp, v53, v41);
    v68 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::FloatType &>(a3 + 23, LocationForOp, &v76, &v71);
    v67 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::FloatType &>(a3 + 23, LocationForOp, &v75, &v71);
    v66 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::CastOp &,mlir::Value &>(a3 + 23, LocationForOp, &v68, &ConstantOpFromScalar);
    v65 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::CastOp &,mlir::Value &>(a3 + 23, LocationForOp, &v67, &v69);
    v64 = mlir::IntegerType::get(a3[23], 32, 1u);
    v63 = mlir::OpBuilder::create<mlir::mps::FloorOp,mlir::mps::MultiplyOp &>((a3 + 23), LocationForOp, &v66);
    v62 = mlir::OpBuilder::create<mlir::mps::FloorOp,mlir::mps::MultiplyOp &>((a3 + 23), LocationForOp, &v65);
    v54 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::mps::FloorOp &,mlir::IntegerType &>(a3 + 23, LocationForOp, &v63, &v64);
    v55 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::mps::FloorOp &,mlir::IntegerType &>(a3 + 23, LocationForOp, &v62, &v64);
    v86[0] = (v38 - 16);
    v86[1] = (v55 - 16);
    v87 = v54 - 16;
    std::vector<mlir::Value>::vector[abi:ne200100](__s2, v86, 3uLL);
    LOBYTE(v86[0]) = 0;
    v61 = mlir::OpBuilder::create<mlir::mps::ConcatOp,std::vector<mlir::Value> &,mlir::Value&,BOOL>(a3 + 23, LocationForOp, __s2, &v74, v86);
    v60 = 1;
    v59 = 1;
    std::string::basic_string[abi:ne200100]<0>(v86, "half_pixel_centers");
    v56 = MIL::IROperation::TryGetParameterValue();
    if (SHIBYTE(v87) < 0)
    {
      v57 = v56;
      operator delete(v86[0]);
      v56 = v57;
    }

    if (v56)
    {
      v59 = MIL::IRValue::GetScalar<BOOL>();
    }

    mlir::OpBuilder::create<mlir::mps::ResizeOp,mlir::Value &,mlir::mps::ConcatOp &,decltype(nullptr),decltype(nullptr),mlir::mps::SamplingMode &,BOOL &,BOOL &,decltype(nullptr)>(a3 + 23, LocationForOp, &ArgValue, &v61, &v60, &v59, &v84);
    (*(*v5 + 200))(v86, v5);
    MILToMLIRRewriter::setValue();
  }

  std::string::basic_string[abi:ne200100]<0>(__s2, "unexpected type for scale_factor_width");
  MILToMLIRRewriter::notifyFailure(a3, v5, __s2);
LABEL_36:
  if (v81 < 0)
  {
    operator delete(*__s2);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(v82, v83[0]);
  return 0;
}

void sub_1E062655C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, char *a36)
{
  if (a34 < 0)
  {
    operator delete(a29);
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a35, a36);
    _Unwind_Resume(a1);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a35, a36);
  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::Value &,int &,int,int &>(uint64_t **a1, uint64_t a2, uint64_t *a3, int *a4, int *a5, int *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.slice";
    v21[3] = 9;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  mlir::mps::SliceOp::build(a1, v24, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::mps::CropOp,mlir::Value &,mlir::Value &,unsigned int &,unsigned int &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int *a5, int *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.crop";
    v21[3] = 8;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  mlir::mps::CropOp::build(a1, v24, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::FloatType &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.cast";
    v17[3] = 8;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::CastOp::build(a1, v20, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::CastOp &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.multiply";
    v17[3] = 12;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ATan2Op::build(a1, v20, *a3 - 16, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::mps::FloorOp,mlir::mps::MultiplyOp &>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::FloorOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.floor";
    v15[3] = 9;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3 - 16);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::FloorOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::CastOp,mlir::mps::FloorOp &,mlir::IntegerType &>(mlir::UnknownLoc **a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.cast";
    v17[3] = 8;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::CastOp::build(a1, v20, *a3 - 16, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ResizeOp,mlir::Value &,mlir::mps::ConcatOp &,decltype(nullptr),decltype(nullptr),mlir::mps::SamplingMode &,BOOL &,BOOL &,decltype(nullptr)>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, void *a4, unsigned int *a5, unsigned __int8 *a6, unsigned __int8 *a7)
{
  v26[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ResizeOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    v24 = 1283;
    v23[2] = "mps.resize";
    v23[3] = 10;
    v22 = 259;
    llvm::operator+(v23, &v21, v25);
    llvm::report_fatal_error(v25, 1);
  }

  mlir::OperationState::OperationState(v26, a2, v15);
  mlir::mps::ResizeOp::build(a1, v26, *a3, *a4 - 16, 0, 0, *a5, *a6, *a7, 0);
  v17 = mlir::OpBuilder::create(a1, v26);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ResizeOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v26);
  return v18;
}

uint64_t MILToMLIR::ResizePattern::matchAndRewrite(MILToMLIR::ResizePattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v6 = (this + 8);
  v7 = *(this + 31);
  if (v7 < 0)
  {
    if (*(this + 2) != 15)
    {
LABEL_12:
      v11 = 0;
      goto LABEL_13;
    }

    v6 = *v6;
  }

  else if (v7 != 15)
  {
    goto LABEL_12;
  }

  v8 = *v6;
  v9 = *(v6 + 7);
  v11 = v8 == 0x625F657A69736572 && v9 == 0x7261656E696C6962;
LABEL_13:
  v62 = 1;
  v12 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](v60, v12);
  if (!v11)
  {
    goto LABEL_117;
  }

  v59 = 13;
  strcpy(&__s2, "sampling_mode");
  v13 = v61[0];
  if (!v61[0])
  {
    goto LABEL_48;
  }

  v14 = v61;
  do
  {
    v15 = v14;
    v16 = (v13 + 32);
    v17 = v13[55];
    v18 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(v13 + 5);
    }

    if (v18 >= 0)
    {
      v19 = v13 + 32;
    }

    else
    {
      v19 = *(v13 + 4);
    }

    if (v17 >= 0xD)
    {
      v20 = 13;
    }

    else
    {
      v20 = v17;
    }

    v21 = v17 < 0xD;
    v22 = memcmp(v19, &__s2, v20);
    v23 = v22 < 0;
    if (!v22)
    {
      v23 = v21;
    }

    if (v23)
    {
      v24 = 8;
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v14 = v15;
    }

    else
    {
      v14 = v13;
    }

    v13 = *&v13[v24];
  }

  while (v13);
  if (v14 == v61)
  {
    goto LABEL_48;
  }

  if (v23)
  {
    v25 = (v15 + 4);
  }

  else
  {
    v25 = v16;
  }

  v26 = *(v14 + 55);
  v27 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v26 = v14[5];
  }

  if (v27 >= 0)
  {
    v28 = v25;
  }

  else
  {
    v28 = *v25;
  }

  if (v26 >= 0xD)
  {
    v29 = 13;
  }

  else
  {
    v29 = v26;
  }

  v30 = v26 > 0xD;
  v31 = memcmp(&__s2, v28, v29);
  v32 = v31 < 0;
  if (!v31)
  {
    v32 = v30;
  }

  if (v32)
  {
LABEL_48:
    operator new();
  }

  if (v14[8] - v14[7] != 16)
  {
    operator new();
  }

  v56 = 13;
  strcpy(__p, "sampling_mode");
  MIL::IROperation::GetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  v33 = v59;
  if (v59 < 0)
  {
    if (*(&__s2 + 1) != 7)
    {
      if (*(&__s2 + 1) == 13)
      {
        if (*__s2 == 0x4F435F4E47494C41 && *(__s2 + 5) == 0x5352454E524F435FLL)
        {
          goto LABEL_89;
        }
      }

      else if (*(&__s2 + 1) == 20)
      {
        v36 = *__s2 == 0x415F544349525453 && *(__s2 + 8) == 0x524F435F4E47494CLL;
        if (v36 && *(__s2 + 16) == 1397900622)
        {
          goto LABEL_89;
        }
      }

      goto LABEL_95;
    }

    v39 = __s2;
LABEL_91:
    v41 = *v39;
    v42 = *(v39 + 3);
    if (v41 == 1095124292 && v42 == 1414288705)
    {
      v62 = 0;
LABEL_99:
      if ((v33 & 0x80) != 0)
      {
        if (*(&__s2 + 1) == 14)
        {
          p_s2 = __s2;
LABEL_104:
          v45 = *p_s2;
          v46 = *(p_s2 + 6);
          if (v45 == 0x435F54455346464FLL && v46 == 0x5352454E524F435FLL)
          {
            operator new();
          }
        }
      }

      else if (v33 == 14)
      {
        p_s2 = &__s2;
        goto LABEL_104;
      }

      v48 = 1;
      goto LABEL_113;
    }

    goto LABEL_95;
  }

  if (v59 == 7)
  {
    v39 = &__s2;
    goto LABEL_91;
  }

  if (v59 != 13)
  {
    if (v59 != 20)
    {
      goto LABEL_95;
    }

    v34 = __s2 == 0x415F544349525453 && *(&__s2 + 1) == 0x524F435F4E47494CLL;
    if (!v34 || v58 != 1397900622)
    {
      goto LABEL_95;
    }

LABEL_89:
    v62 = 257;
    goto LABEL_99;
  }

  if (__s2 == 0x4F435F4E47494C41 && *(&__s2 + 5) == 0x5352454E524F435FLL)
  {
    goto LABEL_89;
  }

LABEL_95:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s2, "OFFSET_CORNERS"))
  {
    v62 = 1;
    v33 = v59;
    goto LABEL_99;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Unexpected value for 'sampling_mode'");
  MILToMLIRRewriter::notifyFailure(a3, a2, __p);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  v48 = 0;
LABEL_113:
  if (v59 < 0)
  {
    operator delete(__s2);
    if (v48)
    {
      goto LABEL_117;
    }
  }

  else if (v48)
  {
LABEL_117:
    v59 = 1;
    LOWORD(__s2) = 120;
    ParameterType = MIL::IROperation::GetParameterType();
    if (v59 < 0)
    {
      v50 = ParameterType;
      operator delete(__s2);
      ParameterType = v50;
    }

    v51 = MIL::IRValueType::AsTensorType(ParameterType);
    v52 = (*(*v51 + 96))(v51);
    v53 = v52[1];
    if (v53 != *v52)
    {
      if (((v53 - *v52) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    operator new();
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(v60, v61[0]);
  return 0;
}

void sub_1E0627BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, char *a30)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a29, a30);
    _Unwind_Resume(a1);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a29, a30);
  _Unwind_Resume(a1);
}

uint64_t MILToMLIR::UpsampleNearestNeighborPattern::matchAndRewrite(MILToMLIR::UpsampleNearestNeighborPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v63 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v6 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](v57, v6);
  v62 = 1;
  strcpy(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  if (v62 < 0)
  {
    v8 = ParameterType;
    operator delete(*__p);
    ParameterType = v8;
  }

  v9 = MIL::IRValueType::AsTensorType(ParameterType);
  v10 = (*(*v9 + 96))(v9);
  v11 = (v10[1] - *v10) >> 3;
  if (v11 <= 1)
  {
    operator new();
  }

  if (v11 >= 5)
  {
    operator new();
  }

  if ((*(*a2 + 192))(a2) != 1)
  {
    operator new();
  }

  v56 = mlir::OpBuilder::create<mlir::mps::ShapeOp,mlir::Value>((a3 + 23), LocationForOp, &ArgValue) - 16;
  v54 = 1;
  v55 = -1;
  *__p = -1;
  v53 = mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::Value &,int &,int,int &>(a3 + 23, LocationForOp, &v56, &v55, __p, &v54) - 16;
  *__p = -2;
  v52 = mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::Value &,int &,int,int &>(a3 + 23, LocationForOp, &v56, &v55, __p, &v54) - 16;
  *__p = *(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8;
  Context = mlir::Attribute::getContext(__p);
  v13 = mlir::IntegerType::get(Context, 32, 1u);
  v14 = mlir::RankedTensorType::get(0, 0, v13, 0);
  if (v14)
  {
    v15 = v14;
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
    v14 = v15;
  }

  else
  {
    v16 = 0;
  }

  LODWORD(v60[0]) = -1;
  *__p = mlir::DenseElementsAttr::getFromRawBuffer(v14, v16, v60, 4, 4, 1, 1);
  v51 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, __p) - 16;
  v49 = 2;
  v50 = 0;
  mlir::OpBuilder::create<mlir::mps::CropOp,mlir::Value &,mlir::Value &,unsigned int &,unsigned int &>(a3 + 23, LocationForOp, &v56, &v51, &v50, &v49);
  v62 = 19;
  strcpy(__p, "scale_factor_height");
  ParameterValue = MIL::IROperation::GetParameterValue();
  if (v62 < 0)
  {
    operator delete(*__p);
  }

  v19 = MEMORY[0x1E12E5350](ParameterValue);
  if (v19)
  {
    v20 = *v19;
  }

  else
  {
    v21 = MEMORY[0x1E12E5340](ParameterValue);
    if (v21)
    {
      v20 = *v21;
    }

    else
    {
      v22 = MEMORY[0x1E12E5330](ParameterValue);
      if (!v22)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "unexpected type for scale_factor_height");
        MILToMLIRRewriter::notifyFailure(a3, a2, __p);
        goto LABEL_11;
      }

      MIL::Fp16::GetFloat(v22);
      v20 = v23;
    }
  }

  v62 = 18;
  strcpy(__p, "scale_factor_width");
  v24 = MIL::IROperation::GetParameterValue();
  if (v62 < 0)
  {
    operator delete(*__p);
  }

  v25 = MEMORY[0x1E12E5350](v24);
  if (v25)
  {
    v26 = *v25;
    goto LABEL_31;
  }

  v27 = MEMORY[0x1E12E5340](v24);
  if (v27)
  {
    v26 = *v27;
    goto LABEL_31;
  }

  v28 = MEMORY[0x1E12E5330](v24);
  if (v28)
  {
    MIL::Fp16::GetFloat(v28);
    v26 = v29;
LABEL_31:
    *__p = *(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8;
    v30 = mlir::Attribute::getContext(__p);
    v48 = mlir::Float32Type::get(v30, v31);
    *__p = 1;
    v32 = mlir::RankedTensorType::get(__p, 1, v48, 0);
    MPSDataType = getMPSDataType(v32);
    v34 = getConstantDataForScalar(MPSDataType, v26);
    ConstantOp = createConstantOp((a3 + 23), LocationForOp, v34, v32, 1);

    v47 = ConstantOp;
    v36 = getMPSDataType(v32);
    v37 = getConstantDataForScalar(v36, v20);
    v38 = createConstantOp((a3 + 23), LocationForOp, v37, v32, 1);

    v46 = v38;
    v45 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::FloatType &>(a3 + 23, LocationForOp, &v53, &v48);
    v44 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::FloatType &>(a3 + 23, LocationForOp, &v52, &v48);
    v43 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::CastOp &,mlir::Value &>(a3 + 23, LocationForOp, &v45, &v47);
    v42 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::CastOp &,mlir::Value &>(a3 + 23, LocationForOp, &v44, &v46);
    v41 = mlir::IntegerType::get(a3[23], 32, 1u);
    v40 = mlir::OpBuilder::create<mlir::mps::FloorOp,mlir::mps::MultiplyOp &>((a3 + 23), LocationForOp, &v43);
    v39 = mlir::OpBuilder::create<mlir::mps::FloorOp,mlir::mps::MultiplyOp &>((a3 + 23), LocationForOp, &v42);
    mlir::OpBuilder::create<mlir::mps::CastOp,mlir::mps::FloorOp &,mlir::IntegerType &>(a3 + 23, LocationForOp, &v40, &v41);
    mlir::OpBuilder::create<mlir::mps::CastOp,mlir::mps::FloorOp &,mlir::IntegerType &>(a3 + 23, LocationForOp, &v39, &v41);
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "unexpected type for scale_factor_width");
  MILToMLIRRewriter::notifyFailure(a3, a2, __p);
LABEL_11:
  if (v62 < 0)
  {
    operator delete(*__p);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(v57, v58);
  return 0;
}

void sub_1E062861C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, char *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a31, a32);
    _Unwind_Resume(a1);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a31, a32);
  _Unwind_Resume(a1);
}

uint64_t MILToMLIR::SplitPattern::matchAndRewrite(MILToMLIR::SplitPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v3 = a3;
  v62 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(v3, a2, "x");
  v61 = 4;
  strcpy(__p, "axis");
  ParameterValue = MIL::IROperation::GetParameterValue();
  v6 = (*(*ParameterValue + 32))(ParameterValue);
  v7 = MIL::IRValueType::AsTensorType(v6);
  if ((*(*v7 + 88))(v7) != 11)
  {
    operator new();
  }

  MIL::IRValue::AsTensor(ParameterValue);
  v8 = *MIL::IRTensorValue::GetDataView<int>();
  strcpy(__p, "num_splits");
  v9 = MIL::IROperation::TryGetParameterValue();
  v61 = 11;
  strcpy(__p, "split_sizes");
  v10 = MIL::IROperation::TryGetParameterValue();
  memset(&v53, 0, sizeof(v53));
  if (!v10)
  {
    if (!v9)
    {
      operator new();
    }

    v30 = MIL::IRValue::GetScalar<int>();
    v61 = 1;
    LOWORD(__p[0]) = 120;
    ParameterType = MIL::IROperation::GetParameterType();
    v32 = MIL::IRValueType::AsTensorType(ParameterType);
    v33 = (*(*v32 + 96))(v32);
    v34 = v33[1];
    if (v34 != *v33)
    {
      if (((v34 - *v33) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v61 = 12;
    strcpy(__p, "Invalid axis");
    MILToMLIRRewriter::notifyFailure(v3, a2, __p);
    if (v61 < 0)
    {
      operator delete(__p[0]);
    }

    v41 = (*(**(8 * v8) + 16))(*(8 * v8));
    if (!v41)
    {
      operator new();
    }

    v42 = (*(*v41 + 48))(v41);
    if (v42 % v30)
    {
      operator new();
    }

    LODWORD(__p[0]) = v42 / v30;
    std::vector<int>::assign(&v53, v30, __p);
    v50 = v8;
    operator delete(0);
LABEL_21:
    begin = v53.__begin_;
    v54 = LocationForOp;
    Context = mlir::Attribute::getContext(&v54);
    v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, Context);
    if (v29)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v28);
      mlir::mps::SliceOp::build(v3 + 23, __p, ArgValue, v50, 0, *begin);
      mlir::OpBuilder::create((v3 + 184), __p);
      mlir::OperationState::~OperationState(__p);
      operator new();
    }

    v58 = 1283;
    v57[2] = "mps.slice";
    v57[3] = 9;
    v56 = 259;
    llvm::operator+(v57, &v55, &v59);
    llvm::report_fatal_error(&v59, 1);
  }

  (*(*v10 + 40))(v10);
  v49 = v3;
  Data = MIL::IRTensorValue::GetDataView<int>();
  v13 = v12;
  if (v12)
  {
    v14 = Data;
    v50 = v8;
    end = v53.__end_;
    v16 = 4 * v12;
    do
    {
      if (end < v53.__end_cap_.__value_)
      {
        *end++ = *v14;
      }

      else
      {
        v17 = v53.__begin_;
        v18 = end - v53.__begin_;
        v19 = end - v53.__begin_;
        v20 = v19 + 1;
        if ((v19 + 1) >> 62)
        {
          std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
        }

        v21 = v53.__end_cap_.__value_ - v53.__begin_;
        if ((v53.__end_cap_.__value_ - v53.__begin_) >> 1 > v20)
        {
          v20 = v21 >> 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v22 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          if (!(v22 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v23 = end - v53.__begin_;
        v24 = (4 * v19);
        v25 = (4 * v19 - 4 * v23);
        *v24 = *v14;
        end = v24 + 1;
        memcpy(v25, v17, v18);
        v53.__begin_ = v25;
        v53.__end_ = end;
        v53.__end_cap_.__value_ = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      v53.__end_ = end;
      ++v14;
      v16 -= 4;
    }

    while (v16);
    v3 = v49;
    goto LABEL_21;
  }

  if ((*(*a2 + 192))(a2))
  {
    if ((*(*a2 + 192))(a2) != 1)
    {
      operator new();
    }

    OutputType = MIL::IROperation::GetOutputType(a2);
    v36 = (*(*OutputType + 40))(OutputType);
    if (!v36)
    {
      operator new();
    }

    if ((*(*v36 + 16))(v36) != v13)
    {
      operator new();
    }

    (*(*a2 + 200))(__p, a2);
    v59 = __p[0];
    v44 = std::__hash_table<std::__hash_value_type<std::string,std::vector<mlir::Value>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<mlir::Value>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<mlir::Value>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<mlir::Value>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3 + 8, __p[0]);
    std::vector<mlir::Value>::__assign_with_size[abi:ne200100]<mlir::Value*,mlir::Value*>(v44 + 5, 0, 0, 0);
    v45 = __p[0];
    if (__p[0])
    {
      v46 = __p[1];
      v47 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v48 = *(v46 - 1);
          v46 -= 3;
          if (v48 < 0)
          {
            operator delete(*v46);
          }
        }

        while (v46 != v45);
        v47 = __p[0];
      }

      __p[1] = v45;
      operator delete(v47);
    }
  }

  else
  {
    (*(*a2 + 200))(__p, a2);
    v37 = __p[0];
    if (__p[0])
    {
      v38 = __p[1];
      v39 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v40 = *(v38 - 1);
          v38 -= 3;
          if (v40 < 0)
          {
            operator delete(*v38);
          }
        }

        while (v38 != v37);
        v39 = __p[0];
      }

      __p[1] = v37;
      operator delete(v39);
    }
  }

  return 1;
}

void sub_1E0629778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (!a16)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void std::vector<int>::assign(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  v7 = begin;
  if (__n > (value - begin) >> 2)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (!(__n >> 62))
    {
      v8 = value >> 1;
      if (value >> 1 <= __n)
      {
        v8 = __n;
      }

      v9 = value >= 0x7FFFFFFFFFFFFFFCLL;
      v10 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v9)
      {
        v10 = v8;
      }

      if (!(v10 >> 62))
      {
        operator new();
      }
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v12 = end - begin;
  v13 = end - begin;
  if (v13 >= __n)
  {
    v14 = __n;
  }

  else
  {
    v14 = end - begin;
  }

  if (v14)
  {
    v15 = *__u;
    v16 = v14;
    if (v14 < 8)
    {
      goto LABEL_31;
    }

    v7 = &begin[v14 & 0xFFFFFFFFFFFFFFF8];
    v16 = v14 & 7;
    v17 = vdupq_n_s32(v15);
    v18 = (begin + 4);
    v19 = v14 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v18[-1] = v17;
      *v18 = v17;
      v18 += 2;
      v19 -= 8;
    }

    while (v19);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_31:
      do
      {
        *v7++ = v15;
        --v16;
      }

      while (v16);
    }
  }

  v9 = __n >= v13;
  v20 = __n - v13;
  if (v20 != 0 && v9)
  {
    v21 = &end[v20];
    v22 = *__u;
    v23 = 4 * __n - v12 - 4;
    v24 = end;
    if (v23 < 0x1C)
    {
      goto LABEL_32;
    }

    v25 = (v23 >> 2) + 1;
    v24 = &end[v25 & 0x7FFFFFFFFFFFFFF8];
    v26 = vdupq_n_s32(v22);
    v27 = (end + 4);
    v28 = v25 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v27[-1] = v26;
      *v27 = v26;
      v27 += 2;
      v28 -= 8;
    }

    while (v28);
    if (v25 != (v25 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_32:
      do
      {
        *v24++ = v22;
      }

      while (v24 != v21);
    }

    this->__end_ = v21;
  }

  else
  {
    this->__end_ = &begin[__n];
  }
}

void MILToMLIR::StackPattern::matchAndRewrite(MILToMLIR::StackPattern *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  MILToMLIRRewriter::getArgValues(a3, a2, "values", v17);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "axis");
  HIBYTE(v15) = 4;
  strcpy(&__p, "axis");
  ParameterValue = MIL::IROperation::GetParameterValue();
  v7 = (*(*ParameterValue + 32))(ParameterValue);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if ((*(*v8 + 88))(v8) == 11)
  {
    MIL::IRValue::AsTensor(ParameterValue);
    v9 = *MIL::IRTensorValue::GetDataView<int>();
    v10 = mlir::IntegerType::get(*(a3 + 23), 32, 1u);
    v11 = mlir::RankedTensorType::get(0, 0, v10, 0);
    __p = mlir::mps::getConstantAttr<int>(v11, v9);
    v13 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, &__p) - 16;
    __p = 0;
    v15 = 0uLL;
    if (v17[0] != v17[1])
    {
      v12 = *v17[0];
      mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::Value &>((a3 + 184), LocationForOp, &v12, &ArgValue);
      operator new();
    }

    LOBYTE(v12) = 0;
    mlir::OpBuilder::create<mlir::mps::ConcatOp,std::vector<mlir::Value> &,mlir::Value&,BOOL>(a3 + 23, LocationForOp, &__p, &v13, &v12);
    (*(*a2 + 200))(&v12);
    operator new();
  }

  operator new();
}

void sub_1E0629F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22)
{
  std::vector<std::string>::~vector[abi:ne200100](&a10);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void MILToMLIR::InversePattern::matchAndRewrite(MILToMLIR::InversePattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v14 = ArgValue;
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "epsilon");
  if (!OptionalArgValue)
  {
    v8 = mlir::Float32Type::get(a3[23], v7);
    __p = 1;
    v9 = mlir::RankedTensorType::get(&__p, 1, v8, 0);
    __p = mlir::mps::getConstantAttr<double>(v9, 0.0001);
    OptionalArgValue = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &__p) - 16;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
  __p = mlir::TypeAttr::get(ElementTypeOrSelf);
  OptionalArgValue = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &OptionalArgValue, &__p) - 16;
  if ((*(*a2 + 192))(a2) == 1)
  {
    v11 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &v14, &OptionalArgValue);
    mlir::OpBuilder::create<mlir::mps::ReciprocalOp,mlir::mps::AddOp &>((a3 + 23), LocationForOp, &v11);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E062A264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::mps::getConstant<int,double>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, double a4)
{
  Constant = 1;
  v7 = mlir::RankedTensorType::get(&Constant, 1, a3, 0);
  Constant = mlir::mps::getConstantAttr<double>(v7, a4);
  return mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(a1, a2, &Constant);
}

void MILToMLIR::LogarithmPattern::matchAndRewrite(MILToMLIR::LogarithmPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v14 = ArgValue;
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "epsilon");
  if (!OptionalArgValue)
  {
    v8 = mlir::Float32Type::get(a3[23], v7);
    __p = 1;
    v9 = mlir::RankedTensorType::get(&__p, 1, v8, 0);
    __p = mlir::mps::getConstantAttr<double>(v9, 1.0e-45);
    OptionalArgValue = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &__p) - 16;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
  __p = mlir::TypeAttr::get(ElementTypeOrSelf);
  OptionalArgValue = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &OptionalArgValue, &__p) - 16;
  if ((*(*a2 + 192))(a2) == 1)
  {
    v11 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &v14, &OptionalArgValue);
    mlir::OpBuilder::create<mlir::mps::LogarithmOp,mlir::mps::AddOp &>((a3 + 23), LocationForOp, &v11);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E062A5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void MILToMLIR::RsqrtPattern::matchAndRewrite(MILToMLIR::RsqrtPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v14 = ArgValue;
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "epsilon");
  if (!OptionalArgValue)
  {
    v8 = mlir::Float32Type::get(a3[23], v7);
    __p = 1;
    v9 = mlir::RankedTensorType::get(&__p, 1, v8, 0);
    __p = mlir::mps::getConstantAttr<double>(v9, 1.0e-12);
    OptionalArgValue = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &__p) - 16;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
  __p = mlir::TypeAttr::get(ElementTypeOrSelf);
  OptionalArgValue = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &OptionalArgValue, &__p) - 16;
  if ((*(*a2 + 192))(a2) == 1)
  {
    v11 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &v14, &OptionalArgValue);
    mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::mps::AddOp &>((a3 + 23), LocationForOp, &v11);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E062A8A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void MILToMLIR::Range1dPattern::matchAndRewrite(MILToMLIR::Range1dPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "start");
  v26 = MILToMLIRRewriter::getArgValue(a3, a2, "end");
  v25 = MILToMLIRRewriter::getArgValue(a3, a2, "step");
  v24 = mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &v26, &ArgValue) - 16;
  v22 = 0;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v24);
  if (mlir::Type::isIntOrIndex(&ElementTypeOrSelf))
  {
    __p[0] = 1;
    v6 = mlir::RankedTensorType::get(__p, 1, ElementTypeOrSelf, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v6, 1);
    v7 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, __p);
    v8 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &v24, &v25);
    v28 = LocationForOp;
    Context = mlir::Attribute::getContext(&v28);
    v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SubtractOp,void>::id, Context);
    if ((v11 & 1) == 0)
    {
      v32 = 1283;
      v31[2] = "mps.subtract";
      v31[3] = 12;
      v30 = 259;
      llvm::operator+(v31, v29, v33);
      llvm::report_fatal_error(v33, 1);
    }

    mlir::OperationState::OperationState(__p, LocationForOp, v10);
    mlir::mps::ATan2Op::build(a3 + 23, __p, v8 - 16, v7 - 16);
    v12 = mlir::OpBuilder::create((a3 + 23), __p);
    v13 = *(*(v12 + 48) + 16);
    mlir::OperationState::~OperationState(__p);
    if (v13 == &mlir::detail::TypeIDResolver<mlir::mps::SubtractOp,void>::id)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    __p[0] = (v14 - 16);
    v15 = mlir::OpBuilder::create<mlir::mps::DivideOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, __p, &v25);
  }

  else
  {
    __p[0] = (mlir::OpBuilder::create<mlir::mps::DivideOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &v24, &v25) - 16);
    v33[0] = mlir::OpBuilder::create<mlir::mps::CeilOp,mlir::Value &>((a3 + 23), LocationForOp, __p) - 16;
    v16 = mlir::IntegerType::get(a3[23], 32, 1u);
    v31[0] = mlir::TypeAttr::get(v16);
    v15 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, v33, v31);
  }

  v22 = v15 - 16;
  IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, 1);
  v18 = mlir::RankedTensorType::get(0, 0, IntegerType, 0);
  if (v18)
  {
    v19 = v18;
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v18 = v19;
  }

  else
  {
    v20 = 0;
  }

  LODWORD(v33[0]) = 0;
  __p[0] = mlir::DenseElementsAttr::getFromRawBuffer(v18, v20, v33, 4, 4, 1, 1);
  v31[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, __p) - 16;
  v29[0] = mlir::OpBuilder::create<mlir::mps::GetCoordOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &v22, v31) - 16;
  v21 = mlir::getElementTypeOrSelf(v29[0]);
  if (ElementTypeOrSelf != v21)
  {
    v29[0] = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 23, LocationForOp, v29, &ElementTypeOrSelf) - 16;
  }

  v28 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &v25, v29) - 16;
  mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &v28, &ArgValue);
  (*(*a2 + 200))(__p, a2);
  operator new();
}

void sub_1E062AD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void **a32)
{
  operator delete(v32);
  std::vector<std::string>::~vector[abi:ne200100](&a32);
  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::CeilOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CeilOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.ceil";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CeilOp,void>::id)
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

uint64_t MILToMLIR::RandomPattern::matchAndRewrite(MILToMLIR::RandomPattern *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  v112 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "shape");
  v105 = 4;
  strcpy(&__p, "seed");
  MIL::IROperation::TryGetParameterValue();
  v6 = MIL::IRValue::GetScalar<int>();
  srand48(v6);
  v7 = mrand48();
  v8 = mrand48();
  v9 = mrand48();
  v10 = mrand48();
  v11 = mrand48();
  v12 = mrand48();
  v110 = 1;
  IntegerType = mlir::Builder::getIntegerType(a3 + 23, 64, 1);
  v14 = mlir::RankedTensorType::get(&v110, 1, IntegerType, 0);
  if (v14)
  {
    v15 = v14;
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
    v14 = v15;
  }

  else
  {
    v16 = 0;
  }

  v106 = (v8 | (v7 << 32));
  __p = mlir::DenseElementsAttr::getFromRawBuffer(v14, v16, &v106, 8, 8, 1, 1);
  v95 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, &__p) - 16;
  v110 = 1;
  v17 = mlir::Builder::getIntegerType(a3 + 23, 64, 1);
  v18 = mlir::RankedTensorType::get(&v110, 1, v17, 0);
  if (v18)
  {
    v19 = v18;
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v18 = v19;
  }

  else
  {
    v20 = 0;
  }

  v106 = (v10 | (v9 << 32));
  __p = mlir::DenseElementsAttr::getFromRawBuffer(v18, v20, &v106, 8, 8, 1, 1);
  v94 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, &__p) - 16;
  v110 = 1;
  v21 = mlir::Builder::getIntegerType(a3 + 23, 64, 1);
  v22 = mlir::RankedTensorType::get(&v110, 1, v21, 0);
  if (v22)
  {
    v23 = v22;
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
    v22 = v23;
  }

  else
  {
    v24 = 0;
  }

  v106 = (v12 | (v11 << 32));
  __p = mlir::DenseElementsAttr::getFromRawBuffer(v22, v24, &v106, 8, 8, 1, 1);
  v93 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, &__p) - 16;
  v92 = mlir::OpBuilder::create<mlir::mps::InitRandomPhiloxStateOp,mlir::Value &,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &v95, &v94, &v93) - 16;
  v25 = (*(*a2 + 56))(a2);
  if (*(v25 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v91, *v25, *(v25 + 8));
  }

  else
  {
    v26 = *v25;
    v91.__r_.__value_.__r.__words[2] = *(v25 + 16);
    *&v91.__r_.__value_.__l.__data_ = v26;
  }

  v90 = 0;
  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v91;
  }

  else
  {
    v27 = v91.__r_.__value_.__r.__words[0];
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v91.__r_.__value_.__l.__size_;
  }

  v29 = v27 + size;
  if (size > 13)
  {
    v30 = size;
    v31 = v27;
    while (1)
    {
      v32 = memchr(v31, 114, v30 - 13);
      if (!v32)
      {
        goto LABEL_31;
      }

      if (*v32 == 0x755F6D6F646E6172 && *(v32 + 6) == 0x6D726F66696E755FLL)
      {
        break;
      }

      v31 = (v32 + 1);
      v30 = v29 - v31;
      if (v29 - v31 < 14)
      {
        goto LABEL_31;
      }
    }

    if (v32 != v29 && v32 - v27 != -1)
    {
      v100 = 0;
      v97 = 0;
      v88 = 0;
      v89 = 0;
      v100 = MILToMLIRRewriter::getArgValue(a3, a2, "low");
      v97 = MILToMLIRRewriter::getArgValue(a3, a2, "high");
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v100);
      v35 = 0;
      goto LABEL_43;
    }

LABEL_31:
    if (size >= 16)
    {
      v36 = size;
      v37 = v27;
      while (1)
      {
        v38 = memchr(v37, 114, v36 - 15);
        if (!v38)
        {
          goto LABEL_49;
        }

        if (*v38 == 0x625F6D6F646E6172 && *(v38 + 1) == 0x696C6C756F6E7265)
        {
          break;
        }

        v37 = (v38 + 1);
        v36 = v29 - v37;
        if (v29 - v37 < 16)
        {
          goto LABEL_49;
        }
      }

      if (v38 != v29 && v38 - v27 != -1)
      {
        v100 = 0;
        v97 = 0;
        v88 = 0;
        v89 = 0;
        v41 = mlir::Float16Type::get(*(a3 + 23), v39);
        __p = 1;
        v42 = mlir::RankedTensorType::get(&__p, 1, v41, 0);
        __p = mlir::mps::getConstantAttr<float>(v42, 0.0);
        v100 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, &__p) - 16;
        v44 = mlir::Float16Type::get(*(a3 + 23), v43);
        __p = 1;
        v45 = mlir::RankedTensorType::get(&__p, 1, v44, 0);
        __p = mlir::mps::getConstantAttr<float>(v45, 1.0);
        v97 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, &__p) - 16;
        v89 = MILToMLIRRewriter::getArgValue(a3, a2, "prob");
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(v89);
        v35 = 1;
LABEL_43:
        v88 = ElementTypeOrSelf;
        v90 = mlir::OpBuilder::create<mlir::mps::RandomUniformOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Type &>((a3 + 184), LocationForOp, &v92, &ArgValue, &v100, &v97, &v88) - 16;
        if (v35)
        {
          __p = 1;
          v46 = mlir::RankedTensorType::get(&__p, 1, v88, 0);
          __p = mlir::mps::getConstantAttr<float>(v46, 0.0);
          v47 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, &__p);
          __p = 1;
          v48 = mlir::RankedTensorType::get(&__p, 1, v88, 0);
          __p = mlir::mps::getConstantAttr<float>(v48, 1.0);
          v49 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, &__p);
          v90 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 23, LocationForOp, &v90, &v88) - 16;
          v50 = mlir::OpBuilder::create<mlir::mps::LessThanOp,mlir::Value &,mlir::Value &>((a3 + 184), LocationForOp, &v90, &v89);
          v102 = LocationForOp;
          Context = mlir::Attribute::getContext(&v102);
          v52 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id, Context);
          if ((v53 & 1) == 0)
          {
            v109 = 1283;
            v107.n128_u64[1] = "mps.select";
            v108 = 10;
            v99 = 259;
            llvm::operator+(&v106, v98, &v110);
            llvm::report_fatal_error(&v110, 1);
          }

          mlir::OperationState::OperationState(&__p, LocationForOp, v52);
          mlir::mps::SelectOp::build(a3 + 184, &__p, v50 - 16, v49 - 16, v47 - 16);
          v54 = mlir::OpBuilder::create((a3 + 184), &__p);
          v55 = *(*(v54 + 48) + 16);
          mlir::OperationState::~OperationState(&__p);
          if (v55 == &mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id)
          {
            v56 = v54;
          }

          else
          {
            v56 = 0;
          }

          v90 = v56 - 16;
        }

        goto LABEL_96;
      }
    }
  }

LABEL_49:
  if (size < 13)
  {
    goto LABEL_96;
  }

  v57 = v27;
  while (1)
  {
    v58 = memchr(v57, 114, size - 12);
    if (!v58)
    {
      goto LABEL_96;
    }

    if (*v58 == 0x6E5F6D6F646E6172 && *(v58 + 5) == 0x6C616D726F6E5F6DLL)
    {
      break;
    }

    v57 = (v58 + 1);
    size = v29 - v57;
    if (v29 - v57 < 13)
    {
      goto LABEL_96;
    }
  }

  if (v58 == v29 || v58 - v27 == -1)
  {
LABEL_96:
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  v105 = 4;
  strcpy(&__p, "mean");
  ParameterValue = MIL::IROperation::GetParameterValue();
  if (v105 < 0)
  {
    operator delete(__p);
  }

  v61 = MEMORY[0x1E12E5340](ParameterValue);
  if (v61)
  {
    v62 = *v61;
  }

  else
  {
    v63 = MEMORY[0x1E12E5350](ParameterValue);
    if (v63)
    {
      v62 = *v63;
    }

    else
    {
      v64 = MEMORY[0x1E12E5330](ParameterValue);
      if (!v64)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "unexpected type for mean");
        MILToMLIRRewriter::notifyFailure(a3, a2, &__p);
        goto LABEL_100;
      }

      MIL::Fp16::GetFloat(v64);
      v62 = v65;
    }
  }

  v105 = 6;
  strcpy(&__p, "stddev");
  v66 = MIL::IROperation::GetParameterValue();
  if (v105 < 0)
  {
    operator delete(__p);
  }

  v67 = MEMORY[0x1E12E5340](v66);
  if (v67)
  {
    v68 = *v67;
    goto LABEL_76;
  }

  v69 = MEMORY[0x1E12E5350](v66);
  if (v69)
  {
    v68 = *v69;
    goto LABEL_76;
  }

  v70 = MEMORY[0x1E12E5330](v66);
  if (v70)
  {
    MIL::Fp16::GetFloat(v70);
    v68 = v71;
LABEL_76:
    v72 = MILToMLIRRewriter::getArgValue(a3, a2, "mean");
    v73 = mlir::getElementTypeOrSelf(v72);
    v74 = llvm::detail::IEEEFloat::IEEEFloat(&__p, v62);
    v75 = llvm::APFloatBase::IEEEsingle(v74);
    llvm::APFloat::Storage::Storage(&v103, &__p, v75);
    llvm::detail::IEEEFloat::~IEEEFloat(&__p);
    llvm::detail::IEEEFloat::IEEEFloat(&__p, v68);
    llvm::APFloat::Storage::Storage(&v101, &__p, v75);
    llvm::detail::IEEEFloat::~IEEEFloat(&__p);
    v97 = LocationForOp;
    v76 = mlir::Attribute::getContext(&v97);
    v77 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RandomNormalOp,void>::id, v76);
    if ((v78 & 1) == 0)
    {
      v109 = 1283;
      v107.n128_u64[1] = "mps.random_normal";
      v108 = 17;
      v99 = 259;
      llvm::operator+(&v106, v98, &v110);
      llvm::report_fatal_error(&v110, 1);
    }

    mlir::OperationState::OperationState(&__p, LocationForOp, v77);
    v79 = v92;
    v80 = ArgValue;
    v81 = v103.n128_u64[0];
    v83 = llvm::APFloatBase::PPCDoubleDouble(v82);
    if (v83 == v81)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v111, &v103);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(v111, &v103);
    }

    if (v83 == v101.n128_u64[0])
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v107, &v101);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&v107, &v101);
    }

    mlir::mps::RandomNormalOp::build(a3 + 23, &__p, v79, v80, v73, &v110, &v106, 0);
    if (v83 == v107.n128_u64[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v107);
      if (v83 != v111[0].n128_u64[0])
      {
        goto LABEL_85;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v107);
      if (v83 != v111[0].n128_u64[0])
      {
LABEL_85:
        llvm::detail::IEEEFloat::~IEEEFloat(v111);
        goto LABEL_88;
      }
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v111);
LABEL_88:
    v84 = mlir::OpBuilder::create((a3 + 184), &__p);
    v85 = *(*(v84 + 48) + 16);
    mlir::OperationState::~OperationState(&__p);
    if (v85 == &mlir::detail::TypeIDResolver<mlir::mps::RandomNormalOp,void>::id)
    {
      v86 = v84;
    }

    else
    {
      v86 = 0;
    }

    v90 = v86 - 16;
    if (v83 == v101.n128_u64[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v101);
      if (v83 != v103.n128_u64[0])
      {
        goto LABEL_93;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v101);
      if (v83 != v103.n128_u64[0])
      {
LABEL_93:
        llvm::detail::IEEEFloat::~IEEEFloat(&v103);
        goto LABEL_96;
      }
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v103);
    goto LABEL_96;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "unexpected type for stddev");
  MILToMLIRRewriter::notifyFailure(a3, a2, &__p);
LABEL_100:
  if (v105 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E062BB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::InitRandomPhiloxStateOp,mlir::Value &,mlir::Value &,mlir::Value &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::InitRandomPhiloxStateOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v20 = 1283;
    v19[2] = "mps.init_random_philox_state";
    v19[3] = 28;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  mlir::mps::InitRandomPhiloxStateOp::build(a1, v22, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::InitRandomPhiloxStateOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v14;
}

uint64_t mlir::mps::getConstant<int,float>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  Constant = 1;
  v5 = mlir::RankedTensorType::get(&Constant, 1, a3, 0);
  Constant = mlir::mps::getConstantAttr<float>(v5, -3.4028e38);
  return mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(a1, a2, &Constant);
}

uint64_t mlir::OpBuilder::create<mlir::mps::RandomUniformOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Type &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v26[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RandomUniformOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    v24 = 1283;
    v23[2] = "mps.random_uniform";
    v23[3] = 18;
    v22 = 259;
    llvm::operator+(v23, &v21, v25);
    llvm::report_fatal_error(v25, 1);
  }

  mlir::OperationState::OperationState(v26, a2, v15);
  mlir::mps::RandomUniformOp::build(a1, v26, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v26);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::RandomUniformOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v26);
  return v18;
}

void MILToMLIR::ReversePattern::matchAndRewrite(MILToMLIR::ReversePattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "axes");
  if (OptionalArgValue)
  {
    mlir::OpBuilder::create<mlir::mps::ReverseOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &OptionalArgValue);
  }

  else
  {
    mlir::OpBuilder::create<mlir::mps::ReverseOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
  }

  (*(*a2 + 200))(&__p, a2);
  operator new();
}

void sub_1E062C194(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E062C1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  operator delete(v10);
  std::vector<std::string>::~vector[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReverseOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReverseOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.reverse";
    v17[3] = 11;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ReverseOp::build(a1, v20, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReverseOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReverseOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReverseOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.reverse";
    v15[3] = 11;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ReverseOp::build(a1, v18, a3, 1uLL, 0, 0);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReverseOp,void>::id)
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

void MILToMLIR::Flatten2DPattern::matchAndRewrite(MILToMLIR::Flatten2DPattern *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v13 = 1;
  v12 = 4;
  strcpy(&__p, "axis");
  if (MIL::IROperation::TryGetParameterValue())
  {
    v13 = MIL::IRValue::GetScalar<int>();
  }

  IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, 1);
  v7 = mlir::RankedTensorType::get(0, 0, IntegerType, 0);
  if (v7)
  {
    v8 = v7;
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  __p = mlir::DenseElementsAttr::getFromRawBuffer(v7, v9, &v13, 4, 4, 1, 1);
  v10 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, &__p) - 16;
  mlir::OpBuilder::create<mlir::mps::Flatten2DOp,mlir::Value &,mlir::Value &>((a3 + 184), LocationForOp, &ArgValue, &v10);
  (*(*a2 + 200))(&__p, a2);
  operator new();
}

void MILToMLIR::TopKPattern::matchAndRewrite(MILToMLIR::TopKPattern *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  v93 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v80 = MILToMLIRRewriter::getArgValue(a3, a2, "k");
  strcpy(__p, "axis");
  MIL::IROperation::GetParameterValue();
  v7 = MIL::IRValue::GetScalar<int>();
  v79 = v7;
  strcpy(__p, "ascending");
  MIL::IROperation::GetParameterValue();
  v8 = MIL::IRValue::GetScalar<BOOL>();
  v87 = 1;
  LOWORD(__p[0]) = 120;
  ParameterType = MIL::IROperation::GetParameterType();
  v10 = MIL::IRValueType::AsTensorType(ParameterType);
  v77 = 0;
  v78 = ArgValue;
  v11 = MIL::IRTensorValueType::Rank(v10) - 1;
  if (v7 != -1 && v11 != v7)
  {
    LODWORD(__p[0]) = -1;
    v78 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int &,int>(a3 + 23, LocationForOp, &v78, &v79, __p) - 16;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
  if (!v8)
  {
LABEL_82:
    __p[0] = mlir::Builder::getIntegerType(a3 + 23, 32, 1);
    v50 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 23, LocationForOp, &v80, __p);
    IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, 1);
    v52 = mlir::RankedTensorType::get(0, 0, IntegerType, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v52, -1);
    v53 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, __p);
    v81.__r_.__value_.__r.__words[0] = LocationForOp;
    Context = mlir::Attribute::getContext(&v81);
    v55 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TopKOp,void>::id, Context);
    if ((v56 & 1) == 0)
    {
      v91 = 1283;
      v90[1] = "mps.top_k";
      v90[2] = 9;
      v85 = 259;
      llvm::operator+(&NextResultAtOffset, &v84, &v92);
      llvm::report_fatal_error(&v92, 1);
    }

    mlir::OperationState::OperationState(__p, LocationForOp, v55);
    mlir::mps::TopKOp::build(a3 + 23, __p, v78, v53 - 16, v50 - 16, 0);
    v57 = mlir::OpBuilder::create((a3 + 184), __p);
    v58 = *(*(v57 + 48) + 16);
    mlir::OperationState::~OperationState(__p);
    if (v58 != &mlir::detail::TypeIDResolver<mlir::mps::TopKOp,void>::id)
    {
      v57 = 0;
    }

    v60 = *(v57 + 36);
    v59 = (v57 + 36);
    if (v60)
    {
      v61 = (v59 - 13);
    }

    else
    {
      v61 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v61, 0);
    if (*v59)
    {
      v62 = (v59 - 13);
    }

    else
    {
      v62 = 0;
    }

    v63 = mlir::detail::OpResultImpl::getNextResultAtOffset(v62, 1);
    v84.__r_.__value_.__r.__words[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v63, 0);
    if (v79 != -1 && v11 != v79)
    {
      LODWORD(__p[0]) = -1;
      v64 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int &,int>(a3 + 23, LocationForOp, &NextResultAtOffset, &v79, __p);
      LODWORD(__p[0]) = -1;
      v65 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int &,int>(a3 + 23, LocationForOp, &v84, &v79, __p);
      NextResultAtOffset = (v64 - 16);
      v84.__r_.__value_.__r.__words[0] = v65 - 16;
    }

    if (v8)
    {
      if (v77)
      {
        v66 = mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &v77, &NextResultAtOffset);
      }

      else
      {
        v66 = mlir::OpBuilder::create<mlir::mps::NegativeOp,mlir::Value &>((a3 + 184), LocationForOp, &NextResultAtOffset);
      }

      NextResultAtOffset = (v66 - 16);
    }

    if ((*(*a2 + 192))(a2) == 2)
    {
      (*(*a2 + 200))(__p, a2);
      OutputType = MIL::IROperation::GetOutputType(a2);
      if (!(*(*OutputType + 24))(OutputType))
      {
        operator new();
      }

      v68 = MIL::IROperation::GetOutputType(a2);
      if (!(*(*v68 + 24))(v68))
      {
        operator new();
      }

      *(&v92.__r_.__value_.__s + 23) = 20;
      strcpy(&v92, "output_indices_dtype");
      ParameterValue = MIL::IROperation::TryGetParameterValue();
      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        v72 = ParameterValue;
        operator delete(v92.__r_.__value_.__l.__data_);
        if (!v72)
        {
          goto LABEL_119;
        }
      }

      else if (!ParameterValue)
      {
        goto LABEL_119;
      }

      MIL::IRValue::GetScalar<std::string>();
      v81.__r_.__value_.__r.__words[0] = MILToMLIRRewriter::getMLIRElemType(a3, &v92);
      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      v84.__r_.__value_.__r.__words[0] = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v84, &v81) - 16;
LABEL_119:
      operator new();
    }

    v87 = 14;
    strcpy(__p, "return_indices");
    v70 = MIL::IROperation::TryGetParameterValue();
    if (v87 < 0)
    {
      v71 = v70;
      operator delete(__p[0]);
      if (!v71)
      {
        goto LABEL_112;
      }
    }

    else if (!v70)
    {
      goto LABEL_112;
    }

    if ((MIL::IRValue::GetScalar<BOOL>() & 1) == 0 && (*(*a2 + 192))(a2) == 1)
    {
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

LABEL_112:
    operator new();
  }

  if (mlir::Type::isSignedInteger(&ElementTypeOrSelf))
  {
    __p[0] = 1;
    v12 = mlir::RankedTensorType::get(__p, 1, ElementTypeOrSelf, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v12, -1);
    v77 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, __p) - 16;
    v13 = mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &v77, &v78);
LABEL_81:
    v78 = v13 - 16;
    goto LABEL_82;
  }

  if (!mlir::Type::isUnsignedInteger(&ElementTypeOrSelf))
  {
    v13 = mlir::OpBuilder::create<mlir::mps::NegativeOp,mlir::Value &>((a3 + 184), LocationForOp, &v78);
    goto LABEL_81;
  }

  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
  __p[0] = 1;
  v15 = mlir::RankedTensorType::get(__p, 1, ElementTypeOrSelf, 0);
  v16 = v15;
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  v18 = mlir::getElementTypeOrSelf(v16);
  v19 = 0xFFFFFFFFFFFFFFFFLL >> -IntOrFloatBitWidth;
  v20 = *(*v18 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    if (!v18)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v22 = v20 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
    if (!v18 || v22)
    {
LABEL_35:
      if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v92.__r_.__value_.__r.__words[0] = v18;
        if (!mlir::Type::isInteger(&v92, 1))
        {
          v73 = mlir::Type::getIntOrFloatBitWidth(&v92);
          isSignedInteger = mlir::Type::isSignedInteger(&v92);
          LODWORD(__p[1]) = v73;
          if (v73 > 0x40)
          {
            llvm::APInt::initSlowCase(__p, v19, isSignedInteger);
          }

          else
          {
            v75 = 0xFFFFFFFFFFFFFFFFLL >> -v73;
            if (!v73)
            {
              v75 = 0;
            }

            __p[0] = (v75 & v19);
          }

          v33 = mlir::DenseElementsAttr::get(v16, v17, __p, 1);
          if (LODWORD(__p[1]) >= 0x41 && __p[0])
          {
            MEMORY[0x1E12E5B60](__p[0], 0x1000C8000313F17);
          }

          goto LABEL_80;
        }

        LOBYTE(__p[0]) = 1;
        v23 = mlir::DenseElementsAttr::get(v16, v17, __p, 1);
      }

      else
      {
        v83 = v18;
        Value = mlir::AffineMapAttr::getValue(&v83);
        if (!mlir::Type::isF32(&Value))
        {
          isF16 = mlir::Type::isF16(&Value);
          _S0 = v19;
          __asm { FCVT            H8, S0 }

          v41 = llvm::APFloatBase::IEEEhalf(isF16);
          __asm { FCVT            S0, H8; __val }

          std::to_string(&v84, _S0);
          if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &v84;
          }

          else
          {
            v43 = v84.__r_.__value_.__r.__words[0];
          }

          if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v84.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v84.__r_.__value_.__l.__size_;
          }

          llvm::APFloat::APFloat(&v92, v41, v43, size);
          std::to_string(&v81, 0.0);
          if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v45 = &v81;
          }

          else
          {
            v45 = v81.__r_.__value_.__r.__words[0];
          }

          if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v46 = SHIBYTE(v81.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v46 = v81.__r_.__value_.__l.__size_;
          }

          v47 = llvm::APFloat::APFloat(&NextResultAtOffset, v41, v45, v46);
          v48 = v92.__r_.__value_.__l.__size_;
          v49 = llvm::APFloatBase::PPCDoubleDouble(v47);
          if (v49 == v48)
          {
            llvm::detail::DoubleAPFloat::DoubleAPFloat(&__p[1], &v92.__r_.__value_.__r.__words[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::IEEEFloat(&__p[1], &v92.__r_.__value_.__r.__words[1]);
          }

          if (v49 == v90[0])
          {
            llvm::detail::DoubleAPFloat::DoubleAPFloat(v88, v90);
          }

          else
          {
            llvm::detail::IEEEFloat::IEEEFloat(v88, v90);
          }

          v33 = mlir::DenseElementsAttr::get(v16, v17, __p, 1);
          if (v49 == v88[0])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v88);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v88);
          }

          if (v49 == __p[1])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&__p[1]);
          }

          if (v49 == v90[0])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v90);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v90);
          }

          if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v81.__r_.__value_.__l.__data_);
          }

          if (v49 == v92.__r_.__value_.__l.__size_)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v92.__r_.__value_.__r.__words[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v92.__r_.__value_.__r.__words[1]);
          }

          if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v84.__r_.__value_.__l.__data_);
          }

          goto LABEL_80;
        }

        *__p = v19;
        HIDWORD(__p[0]) = 0;
        v23 = mlir::DenseElementsAttr::getFromRawBuffer(v16, v17, __p, 8, 8, 0, 1);
      }

      goto LABEL_79;
    }
  }

  NextResultAtOffset = v18;
  if (mlir::Type::isF16(&NextResultAtOffset))
  {
    v24 = std::to_string(&v92, v19);
    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v92;
    }

    else
    {
      v25 = v92.__r_.__value_.__r.__words[0];
    }

    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = SHIBYTE(v92.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v92.__r_.__value_.__l.__size_;
    }

    v27 = llvm::APFloatBase::IEEEhalf(v24);
    llvm::APFloat::APFloat(__p, v27, v25, v26);
    v28 = mlir::DenseElementsAttr::get(v16, v17, __p, 1);
  }

  else
  {
    if (!mlir::Type::isBF16(&NextResultAtOffset))
    {
      if (mlir::Type::isF32(&NextResultAtOffset))
      {
        *__p = v19;
        v23 = mlir::DenseElementsAttr::getFromRawBuffer(v16, v17, __p, 4, 4, 0, 1);
      }

      else
      {
        mlir::Type::isF64(&NextResultAtOffset);
        *__p = v19;
        v23 = mlir::DenseElementsAttr::getFromRawBuffer(v16, v17, __p, 8, 8, 0, 1);
      }

LABEL_79:
      v33 = v23;
      goto LABEL_80;
    }

    v29 = std::to_string(&v92, v19);
    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v92;
    }

    else
    {
      v30 = v92.__r_.__value_.__r.__words[0];
    }

    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = SHIBYTE(v92.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = v92.__r_.__value_.__l.__size_;
    }

    v32 = llvm::APFloatBase::BFloat(v29);
    llvm::APFloat::APFloat(__p, v32, v30, v31);
    v28 = mlir::DenseElementsAttr::get(v16, v17, __p, 1);
  }

  v33 = v28;
  v34 = __p[1];
  if (llvm::APFloatBase::PPCDoubleDouble(v28) == v34)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[1]);
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_59:
      operator delete(v92.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&__p[1]);
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_59;
    }
  }

LABEL_80:
  __p[0] = v33;
  v77 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, __p) - 16;
  v13 = mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &v77, &v78);
  goto LABEL_81;
}

void sub_1E062D6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31, int a32, int a33, __int16 a34, char a35, char a36)
{
  if (a31 >= 0x41)
  {
    if (a30)
    {
      MEMORY[0x1E12E5B60](a30, 0x1000C8000313F17);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int &,int>(uint64_t **a1, uint64_t a2, uint64_t *a3, int *a4, int *a5)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v20 = 1283;
    v19[2] = "mps.transpose";
    v19[3] = 13;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  mlir::mps::TransposeOp::build(a1, v22, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::mps::NegativeOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NegativeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.negative";
    v15[3] = 12;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NegativeOp,void>::id)
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

void MILToMLIR::CropResizePattern::matchAndRewrite(MILToMLIR::CropResizePattern *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  v115 = *MEMORY[0x1E69E9840];
  v5 = (*(*a2 + 56))(a2);
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    if (*(v5 + 8) != 17)
    {
LABEL_15:
      v9 = 0;
      goto LABEL_16;
    }

    v5 = *v5;
  }

  else if (v6 != 17)
  {
    goto LABEL_15;
  }

  v9 = *v5 == 0x72632E3731736F69 && *(v5 + 8) == 0x7A697365725F706FLL && *(v5 + 16) == 101;
LABEL_16:
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v94 = LocationForOp;
  v92 = v9;
  if (!v9)
  {
    *__p = MILToMLIRRewriter::getArgValue(a3, a2, "roi");
    operator new();
  }

  v97 = MILToMLIRRewriter::getArgValue(a3, a2, "boxes");
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "box_indices");
  *__p = 0;
  v11 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(a3 + 23, LocationForOp, __p);
  *__p = 1;
  v12 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(a3 + 23, LocationForOp, __p);
  if (!OptionalArgValue)
  {
    v108 = (mlir::OpBuilder::create<mlir::mps::ShapeOp,mlir::Value>((a3 + 184), LocationForOp, &v97) - 16);
    *__p = 0;
    LODWORD(v113) = 0;
    LODWORD(v101[0]) = 1;
    v13 = mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::Value &,int,int,int>(a3 + 23, LocationForOp, &v108, __p, &v113, v101);
    v105 = LocationForOp;
    Context = mlir::Attribute::getContext(&v105);
    v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GetCoordOp,void>::id, Context);
    if ((v16 & 1) == 0)
    {
      v104 = 1283;
      v102 = "mps.get_coordinates";
      v103 = 19;
      v100 = 259;
      llvm::operator+(v101, v99, &v113);
      llvm::report_fatal_error(&v113, 1);
    }

    mlir::OperationState::OperationState(__p, LocationForOp, v15);
    mlir::mps::GetCoordOp::build(a3 + 23, __p, v13 - 16, v11 - 16);
    v17 = mlir::OpBuilder::create((a3 + 184), __p);
    v18 = *(*(v17 + 48) + 16);
    mlir::OperationState::~OperationState(__p);
    if (v18 == &mlir::detail::TypeIDResolver<mlir::mps::GetCoordOp,void>::id)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    OptionalArgValue = v19 - 16;
  }

  v108 = &v110;
  v109 = 0x200000002;
  v110 = 0x1FFFFFFFFLL;
  *__p = 2;
  IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, 1);
  v21 = mlir::RankedTensorType::get(__p, 1, IntegerType, 0);
  if (v21)
  {
    v22 = v21;
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
    v21 = v22;
  }

  else
  {
    v23 = 0;
  }

  *__p = mlir::DenseElementsAttr::getFromRawBuffer(v21, v23, v108, 4 * v109, 4, 1, 1);
  v95 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, __p) - 16;
  OptionalArgValue = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &OptionalArgValue, &v95) - 16;
  *__p = mlir::getElementTypeOrSelf(v97);
  OptionalArgValue = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 23, LocationForOp, &OptionalArgValue, __p) - 16;
  v105 = &v106.n128_i8[8];
  v106.n128_u64[1] = OptionalArgValue;
  v107 = v97;
  v106.n128_u64[0] = 0x200000002;
  v98 = LocationForOp;
  v24 = mlir::Attribute::getContext(&v98);
  v25 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id, v24);
  if ((v26 & 1) == 0)
  {
    v104 = 1283;
    v102 = "mps.concat";
    v103 = 10;
    v100 = 259;
    llvm::operator+(v101, v99, &v113);
    llvm::report_fatal_error(&v113, 1);
  }

  mlir::OperationState::OperationState(__p, LocationForOp, v25);
  mlir::ValueRange::ValueRange(&v113, v105, v106.n128_u32[0]);
  mlir::mps::ConcatOp::build(a3 + 23, __p, v113, v114[0].n128_u64[0], v12 - 16, 0);
  v27 = mlir::OpBuilder::create((a3 + 184), __p);
  v28 = *(*(v27 + 48) + 16);
  mlir::OperationState::~OperationState(__p);
  if (v28 == &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  if (v105 != &v106.n128_i8[8])
  {
    free(v105);
  }

  if (v108 != &v110)
  {
    free(v108);
  }

  v112 = 13;
  strcpy(__p, "target_height");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (v112 < 0)
  {
    v32 = ParameterValue;
    operator delete(*__p);
    if (v32)
    {
      goto LABEL_37;
    }
  }

  else if (ParameterValue)
  {
LABEL_37:
    v31 = MIL::IRValue::GetScalar<int>();
    goto LABEL_40;
  }

  v31 = 1;
LABEL_40:
  v112 = 12;
  strcpy(__p, "target_width");
  v33 = MIL::IROperation::TryGetParameterValue();
  if (v112 < 0)
  {
    v35 = v33;
    operator delete(*__p);
    if (v35)
    {
      goto LABEL_42;
    }
  }

  else if (v33)
  {
LABEL_42:
    v34 = MIL::IRValue::GetScalar<int>();
    goto LABEL_45;
  }

  v34 = 1;
LABEL_45:
  strcpy(__p, "normalized_coordinates");
  v112 = 22;
  v36 = MIL::IROperation::TryGetParameterValue();
  if (v112 < 0)
  {
    v38 = v36;
    operator delete(*__p);
    if (v38)
    {
      goto LABEL_47;
    }
  }

  else if (v36)
  {
LABEL_47:
    v37 = MIL::IRValue::GetScalar<BOOL>();
    goto LABEL_50;
  }

  v37 = 0;
LABEL_50:
  v112 = 13;
  strcpy(__p, "spatial_scale");
  v39 = MIL::IROperation::TryGetParameterValue();
  v40 = v39;
  if (v112 < 0)
  {
    operator delete(*__p);
    if (v40)
    {
      goto LABEL_52;
    }
  }

  else if (v39)
  {
LABEL_52:
    v41 = (*(*v40 + 40))(v40);
    if (!v41)
    {
      operator new();
    }

    v42 = (*(*v41 + 32))(v41);
    v43 = (*(*v42 + 88))(v42);
    if (v43 == 4)
    {
      *__p = MIL::IRValue::GetScalar<MIL::Fp16>();
      MIL::Fp16::GetFloat(__p);
    }

    else
    {
      if (v43 != 5)
      {
        operator new();
      }

      MIL::IRValue::GetScalar<float>();
    }

    v45 = v44;
LABEL_61:
    v112 = 19;
    strcpy(__p, "box_coordinate_mode");
    v46 = MIL::IROperation::TryGetParameterValue();
    if (v112 < 0)
    {
      v47 = v46;
      operator delete(*__p);
      if (!v47)
      {
        goto LABEL_77;
      }
    }

    else if (!v46)
    {
      goto LABEL_77;
    }

    MIL::IRValue::GetScalar<std::string>();
    if ((v112 & 0x80000000) == 0)
    {
      if (v112 == 19)
      {
        v50 = *__p == 0x5F5352454E524F43 && *&__p[8] == 0x49465F4854444957 && *&__p[11] == 0x54535249465F4854;
        v91 = v50;
LABEL_108:
        v112 = 13;
        strcpy(__p, "sampling_mode");
        v56 = MIL::IROperation::TryGetParameterValue();
        if (v112 < 0)
        {
          v57 = v37;
          v58 = v56;
          operator delete(*__p);
          v59 = v58;
          v37 = v57;
          if (!v59)
          {
LABEL_120:
            v60 = 0;
            goto LABEL_169;
          }
        }

        else if (!v56)
        {
          goto LABEL_120;
        }

        MIL::IRValue::GetScalar<std::string>();
        if ((v112 & 0x80000000) == 0)
        {
          v60 = 0;
          if (v112 > 0xDu)
          {
            if (v112 != 14)
            {
              if (v112 != 20)
              {
                goto LABEL_169;
              }

              if (*__p != 0x415F544349525453 || *&__p[8] != 0x524F435F4E47494CLL || *&__p[16] != 1397900622)
              {
                goto LABEL_120;
              }

              goto LABEL_143;
            }

            v68 = *__p == 0x435F54455346464FLL && *&__p[6] == 0x5352454E524F435FLL;
            v60 = 2 * v68;
          }

          else
          {
            if (v112 != 7)
            {
              if (v112 != 13)
              {
                goto LABEL_169;
              }

              if (*__p != 0x4F435F4E47494C41 || *&__p[5] != 0x5352454E524F435FLL)
              {
                goto LABEL_120;
              }

LABEL_143:
              v60 = 1;
              goto LABEL_169;
            }

            v60 = 0;
          }

LABEL_169:
          v112 = 9;
          strcpy(__p, "pad_value");
          v72 = MIL::IROperation::TryGetParameterValue();
          v73 = v72;
          if (v112 < 0)
          {
            operator delete(*__p);
            if (!v73)
            {
              goto LABEL_181;
            }
          }

          else if (!v72)
          {
            goto LABEL_181;
          }

          v74 = (*(*v73 + 40))(v73);
          if (!v74)
          {
            operator new();
          }

          v75 = (*(*v74 + 32))(v74);
          v76 = (*(*v75 + 88))(v75);
          if (v76 == 4)
          {
            *__p = MIL::IRValue::GetScalar<MIL::Fp16>();
            MIL::Fp16::GetFloat(__p);
          }

          else
          {
            if (v76 != 5)
            {
              operator new();
            }

            MIL::IRValue::GetScalar<float>();
          }

          if (v77 != 0.0)
          {
            operator new();
          }

LABEL_181:
          v78 = llvm::detail::IEEEFloat::IEEEFloat(__p, v45);
          v79 = llvm::APFloatBase::IEEEsingle(v78);
          llvm::APFloat::Storage::Storage(&v106, __p, v79);
          llvm::detail::IEEEFloat::~IEEEFloat(__p);
          v108 = LocationForOp;
          v80 = mlir::Attribute::getContext(&v108);
          v81 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CropResizeOp,void>::id, v80);
          if ((v82 & 1) == 0)
          {
            v104 = 1283;
            v102 = "mps.crop_resize";
            v103 = 15;
            v100 = 259;
            llvm::operator+(v101, v99, &v113);
            llvm::report_fatal_error(&v113, 1);
          }

          mlir::OperationState::OperationState(__p, LocationForOp, v81);
          v83 = v60;
          v84 = v29;
          v85 = v106.n128_u64[0];
          v87 = llvm::APFloatBase::PPCDoubleDouble(v86);
          if (v87 == v85)
          {
            llvm::detail::DoubleAPFloat::DoubleAPFloat(v114, &v106);
          }

          else
          {
            llvm::detail::IEEEFloat::IEEEFloat(v114, &v106);
          }

          mlir::mps::CropResizeOp::build(a3 + 23, __p, ArgValue, v84 - 16, v31, v34, v37, &v113, 1u, v83, v91);
          if (v87 == v114[0].n128_u64[0])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v114);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v114);
          }

          v88 = mlir::OpBuilder::create((a3 + 184), __p);
          v89 = *(*(v88 + 48) + 16);
          mlir::OperationState::~OperationState(__p);
          if (v89 == &mlir::detail::TypeIDResolver<mlir::mps::CropResizeOp,void>::id)
          {
            v90 = v88;
          }

          else
          {
            v90 = 0;
          }

          v98 = v90 - 16;
          if (v87 == v106.n128_u64[0])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v106);
            if (!v92)
            {
              goto LABEL_196;
            }
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v106);
            if (!v92)
            {
LABEL_196:
              (*(*a2 + 200))(__p, a2);
              operator new();
            }
          }

          LODWORD(v113) = 1;
          *__p = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(a3 + 23, v94, &v113);
          v98 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::mps::ConstantOp &>((a3 + 184), v94, &v98, __p) - 16;
          goto LABEL_196;
        }

        if (*&__p[8] == 7)
        {
          v60 = 0;
          v62 = *__p;
        }

        else
        {
          if (*&__p[8] == 13)
          {
            v62 = *__p;
            if (**__p != 0x4F435F4E47494C41 || *(*__p + 5) != 0x5352454E524F435FLL)
            {
              goto LABEL_167;
            }
          }

          else
          {
            if (*&__p[8] != 20)
            {
              v62 = *__p;
              if (*&__p[8] == 14)
              {
                v71 = **__p == 0x435F54455346464FLL && *(*__p + 6) == 0x5352454E524F435FLL;
                v60 = 2 * v71;
                goto LABEL_168;
              }

              goto LABEL_167;
            }

            v62 = *__p;
            if (**__p != 0x415F544349525453 || *(*__p + 8) != 0x524F435F4E47494CLL || *(*__p + 16) != 1397900622)
            {
LABEL_167:
              v60 = 0;
              goto LABEL_168;
            }
          }

          v60 = 1;
        }

LABEL_168:
        operator delete(v62);
        goto LABEL_169;
      }

LABEL_77:
      v91 = 0;
      goto LABEL_108;
    }

    v91 = 0;
    if (*&__p[8] > 22)
    {
      if (*&__p[8] == 23)
      {
        if (**__p ^ 0x535F5245544E4543 | *(*__p + 8) ^ 0x544449575F455A49 | *(*__p + 15) ^ 0x54535249465F4854)
        {
          v53 = 0;
        }

        else
        {
          v53 = 3;
        }
      }

      else
      {
        if (*&__p[8] != 24)
        {
LABEL_107:
          operator delete(*__p);
          goto LABEL_108;
        }

        if (**__p != 0x535F5245544E4543 || *(*__p + 8) != 0x474945485F455A49 || *(*__p + 16) != 0x54535249465F5448)
        {
LABEL_101:
          v91 = 0;
          goto LABEL_107;
        }

        v53 = 2;
      }
    }

    else
    {
      if (*&__p[8] != 19)
      {
        if (*&__p[8] == 20)
        {
          v91 = 0;
        }

        goto LABEL_107;
      }

      if (**__p != 0x5F5352454E524F43 || *(*__p + 8) != 0x49465F4854444957 || *(*__p + 11) != 0x54535249465F4854)
      {
        goto LABEL_101;
      }

      v53 = 1;
    }

    v91 = v53;
    goto LABEL_107;
  }

  v45 = 1.0;
  goto LABEL_61;
}

void sub_1E062EE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::Value &,int,int,int>(uint64_t **a1, uint64_t a2, uint64_t *a3, int *a4, int *a5, int *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.slice";
    v21[3] = 9;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  mlir::mps::SliceOp::build(a1, v24, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v16;
}

void *std::vector<int>::vector[abi:ne200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 62))
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1E062F1D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MILToMLIR::ConstExpressionPattern::matchAndRewrite(MILToMLIR::ConstExpressionPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v4 = a2;
  v163 = *MEMORY[0x1E69E9840];
  v5 = (*(*a2 + 56))(a2);
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v151, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    v151.__r_.__value_.__r.__words[2] = *(v5 + 16);
    *&v151.__r_.__value_.__l.__data_ = v6;
  }

  v150.var0.var0 = MILToMLIRRewriter::getLocationForOp(a3, v4);
  v7 = SHIBYTE(v151.__r_.__value_.__r.__words[2]);
  size = v151.__r_.__value_.__l.__size_;
  v8 = v151.__r_.__value_.__r.__words[0];
  if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v151;
  }

  else
  {
    v10 = v151.__r_.__value_.__r.__words[0];
  }

  if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = SHIBYTE(v151.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v151.__r_.__value_.__l.__size_;
  }

  v143 = v4;
  if (v11 >= 14)
  {
    v12 = v10 + v11;
    v13 = v11;
    v14 = v10;
    do
    {
      v15 = memchr(v14, 99, v13 - 13);
      if (!v15)
      {
        break;
      }

      if (*v15 == 0x70786574736E6F63 && *(v15 + 6) == 0x747361635F727078)
      {
        if (v15 != v12 && v15 - v10 != -1)
        {
          v161 = 10;
          strcpy(__p, "source_val");
          Attribute = MIL::IRObject::GetAttribute();
          v153 = MILToMLIRRewriter::materializeConstant(a3, Attribute, &v150);
          if (v161 < 0)
          {
            operator delete(__p[0]);
          }

          HIBYTE(v162.__end_cap_.__value_) = 12;
          strcpy(&v162, "output_dtype");
          MIL::IRObject::GetAttribute();
          MIL::IRValue::GetScalar<std::string>();
          if (SHIBYTE(v162.__end_cap_.__value_) < 0)
          {
            operator delete(v162.__begin_);
          }

          MLIRElemType = MILToMLIRRewriter::getMLIRElemType(a3, __p);
          mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, v150.var0.var0, &v153, &MLIRElemType);
          (*(*v4 + 200))(&v162, v4);
          operator new();
        }

        break;
      }

      v14 = (v15 + 1);
      v13 = v12 - v14;
    }

    while (v12 - v14 >= 14);
    if (v11 >= 27)
    {
      v18 = v10;
      do
      {
        v19 = memchr(v18, 99, v11 - 26);
        if (!v19)
        {
          break;
        }

        if (*v19 == 0x70786574736E6F63 && *(v19 + 1) == 0x656E696666615F72 && *(v19 + 2) == 0x746E61757165645FLL && *(v19 + 19) == 0x657A69746E617571)
        {
          if (v19 != v12 && v19 - v10 != -1)
          {
            v161 = 14;
            strcpy(__p, "quantized_data");
            v34 = MIL::IRObject::GetAttribute();
            v35 = MILToMLIRRewriter::materializeConstant(a3, v34, &v150);
            if (v161 < 0)
            {
              operator delete(__p[0]);
            }

            v161 = 10;
            strcpy(__p, "zero_point");
            v36 = MIL::IRObject::GetAttribute();
            v37 = MILToMLIRRewriter::materializeConstant(a3, v36, &v150);
            if (v161 < 0)
            {
              operator delete(__p[0]);
            }

            v161 = 5;
            strcpy(__p, "scale");
            v38 = MIL::IRObject::GetAttribute();
            v39 = MILToMLIRRewriter::materializeConstant(a3, v38, &v150);
            if (v161 < 0)
            {
              operator delete(__p[0]);
            }

            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v39);
            v149 = mlir::getElementTypeOrSelf(v37);
            if (mlir::Type::isInteger(&v149, 8) || mlir::Type::isInteger(&v149, 4))
            {
              v161 = 4;
              strcpy(__p, "axis");
              v41 = MIL::IRObject::GetAttribute();
              if (v161 < 0)
              {
                v42 = v41;
                operator delete(__p[0]);
                v41 = v42;
              }

              MIL::IRValue::AsTensor(v41);
              v43 = *MIL::IRTensorValue::GetDataView<int>();
              IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, 1);
              var0 = v150.var0.var0;
              v46 = mlir::TypeAttr::get(ElementTypeOrSelf);
              v47 = mlir::IntegerAttr::get(IntegerType, v43);
              MLIRElemType = var0;
              Context = mlir::Attribute::getContext(&MLIRElemType);
              v49 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id, Context);
              if (v50)
              {
                mlir::OperationState::OperationState(__p, var0, v49);
                mlir::mps::DequantizeOp::build(a3 + 23, __p, v35, v39, v37, v46, v47);
                mlir::OpBuilder::create((a3 + 23), __p);
                mlir::OperationState::~OperationState(__p);
                (*(*v143 + 200))(__p);
                operator new();
              }

              v159 = 1283;
              v157 = "mps.dequantize";
              v158 = 14;
              v155 = 259;
              llvm::operator+(v156, &v153, &v162);
              llvm::report_fatal_error(&v162, 1);
            }

            v7 = HIBYTE(v151.__r_.__value_.__r.__words[2]);
            size = v151.__r_.__value_.__l.__size_;
            v8 = v151.__r_.__value_.__r.__words[0];
          }

          break;
        }

        v18 = (v19 + 1);
        v11 = v12 - v18;
      }

      while (v12 - v18 >= 27);
    }
  }

  if ((v7 & 0x80u) == 0)
  {
    v23 = &v151;
  }

  else
  {
    v23 = v8;
  }

  if ((v7 & 0x80u) == 0)
  {
    v24 = v7;
  }

  else
  {
    v24 = size;
  }

  if (v24 >= 31)
  {
    v25 = v23 + v24;
    v26 = v23;
    do
    {
      v27 = memchr(v26, 99, v24 - 30);
      if (!v27)
      {
        break;
      }

      if (*v27 == 0x70786574736E6F63 && *(v27 + 1) == 0x776B636F6C625F72 && *(v27 + 2) == 0x666968735F657369 && *(v27 + 23) == 0x656C6163735F7466)
      {
        if (v27 != v25 && v27 - v23 != -1)
        {
          ArgValue = MILToMLIRRewriter::getArgValue(a3, v4, "data");
          v149 = ArgValue;
          OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, v4, "offset");
          v147 = MILToMLIRRewriter::getArgValue(a3, v4, "scale");
          v32 = mlir::getElementTypeOrSelf(ArgValue);
          v33 = mlir::getElementTypeOrSelf(v147);
          v146 = 0;
          if (!OptionalArgValue)
          {
            v51 = v150.var0.var0;
            __p[0] = 1;
            v52 = mlir::RankedTensorType::get(__p, 1, v32, 0);
            __p[0] = mlir::mps::getConstantAttr<float>(v52, 0.0);
            OptionalArgValue = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v51, __p) - 16);
          }

          v146 = mlir::getElementTypeOrSelf(OptionalArgValue);
          if (mlir::Type::isInteger(&v146, 8) || mlir::Type::isInteger(&v146, 4))
          {
            v53 = v150.var0.var0;
            v54 = mlir::TypeAttr::get(v33);
            MLIRElemType = v53;
            v55 = mlir::Attribute::getContext(&MLIRElemType);
            v56 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id, v55);
            if (v57)
            {
              mlir::OperationState::OperationState(__p, v53, v56);
              mlir::mps::DequantizeOp::build(a3 + 23, __p, ArgValue, v147, OptionalArgValue, v54, 0);
              mlir::OpBuilder::create((a3 + 23), __p);
              mlir::OperationState::~OperationState(__p);
              (*(*v4 + 200))(__p);
              operator new();
            }

            v159 = 1283;
            v157 = "mps.dequantize";
            v158 = 14;
            v155 = 259;
            llvm::operator+(v156, &v153, &v162);
            llvm::report_fatal_error(&v162, 1);
          }

          if (v146 == v33)
          {
            v162.__begin_ = (mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(a3 + 23, v150.var0.var0, &OptionalArgValue, &v147) - 16);
            v156[0] = (mlir::OpBuilder::create<mlir::mps::NegativeOp,mlir::Value &>((a3 + 23), v150.var0.var0, &v162) - 16);
            v121 = v150.var0.var0;
            __p[0] = 1;
            v122 = mlir::RankedTensorType::get(__p, 1, v32, 0);
            __p[0] = mlir::mps::getConstantAttr<float>(v122, 0.0);
            v153 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v121, __p) - 16);
            v123 = v150.var0.var0;
            __p[0] = mlir::TypeAttr::get(v33);
            MLIRElemType = 0;
            mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr,decltype(nullptr)>(a3 + 23, v123, &v149, &v147, &v153, v156, __p);
            (*(*v4 + 200))(__p);
            MILToMLIRRewriter::setValue();
          }

          v7 = HIBYTE(v151.__r_.__value_.__r.__words[2]);
          size = v151.__r_.__value_.__l.__size_;
          v8 = v151.__r_.__value_.__r.__words[0];
        }

        break;
      }

      v26 = (v27 + 1);
      v24 = v25 - v26;
    }

    while (v25 - v26 >= 31);
  }

  if ((v7 & 0x80u) == 0)
  {
    v58 = &v151;
  }

  else
  {
    v58 = v8;
  }

  if ((v7 & 0x80u) == 0)
  {
    v59 = v7;
  }

  else
  {
    v59 = size;
  }

  if (v59 < 22)
  {
    goto LABEL_152;
  }

  v60 = v58 + v59;
  v61 = v58;
  while (1)
  {
    v62 = memchr(v61, 99, v59 - 21);
    if (!v62)
    {
      goto LABEL_152;
    }

    v63 = *v62 == 0x70786574736E6F63 && *(v62 + 1) == 0x6F745F74756C5F72;
    if (v63 && *(v62 + 14) == 0x65736E65645F6F74)
    {
      break;
    }

    v61 = (v62 + 1);
    v59 = v60 - v61;
    if (v60 - v61 < 22)
    {
      goto LABEL_152;
    }
  }

  if (v62 == v60 || v62 - v58 == -1)
  {
    goto LABEL_152;
  }

  if ((v7 & 0x80) == 0 || size != 28)
  {
    MLIRElemType = 0;
    OptionalArgValue = 0;
    v149 = 0;
    v147 = 0;
LABEL_127:
    v161 = 7;
    strcpy(__p, "indices");
    v73 = MIL::IRObject::GetAttribute();
    v149 = MILToMLIRRewriter::materializeConstant(a3, v73, &v150);
    if (v161 < 0)
    {
      operator delete(__p[0]);
    }

    v161 = 3;
    LODWORD(__p[0]) = 7632236;
    v74 = MIL::IRObject::GetAttribute();
    OptionalArgValue = MILToMLIRRewriter::materializeConstant(a3, v74, &v150);
    if (v161 < 0)
    {
      operator delete(__p[0]);
    }

    v72 = 0;
    v71 = 0;
    goto LABEL_132;
  }

  v67 = *v8 == 0x6F632E3831736F69 && *(v8 + 8) == 0x5F7270786574736ELL && *(v8 + 16) == 0x645F6F745F74756CLL && *(v8 + 24) == 1702063717;
  MLIRElemType = 0;
  OptionalArgValue = 0;
  v149 = 0;
  v147 = 0;
  if (!v67)
  {
    goto LABEL_127;
  }

  v161 = 7;
  strcpy(__p, "indices");
  v68 = (*(*v4 + 128))(v4, __p, 0);
  MLIRElemTypeFromMILValue = getMLIRElemTypeFromMILValue(v68, a3[23]);
  if (v161 < 0)
  {
    v70 = MLIRElemTypeFromMILValue;
    operator delete(__p[0]);
    MLIRElemTypeFromMILValue = v70;
    v4 = v143;
  }

  if (MLIRElemTypeFromMILValue)
  {
    v149 = MILToMLIRRewriter::getArgValue(a3, v4, "indices");
  }

  OptionalArgValue = MILToMLIRRewriter::getArgValue(a3, v4, "lut");
  v147 = mlir::getElementTypeOrSelf(OptionalArgValue);
  if (mlir::Type::isF16(&v147) || mlir::Type::isF32(&v147))
  {
    v71 = 0;
    v72 = 1;
  }

  else
  {
    isInteger = mlir::Type::isInteger(&v147, 8);
    v138 = v150.var0.var0;
    __p[0] = (OptionalArgValue[1] & 0xFFFFFFFFFFFFFFF8);
    if (isInteger)
    {
      v139 = mlir::Attribute::getContext(__p);
      v162.__begin_ = mlir::Float16Type::get(v139, v140);
    }

    else
    {
      v141 = mlir::Attribute::getContext(__p);
      v162.__begin_ = mlir::Float32Type::get(v141, v142);
    }

    OptionalArgValue = (mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 23, v138, &OptionalArgValue, &v162) - 16);
    v72 = 1;
    v71 = 1;
  }

LABEL_132:
  v75 = OptionalArgValue[1] & 0xFFFFFFFFFFFFFFF8;
  if (*(*v75 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v75 = 0;
  }

  v146 = v75;
  Value = mlir::ArrayAttr::getValue(&v146);
  v78 = Value + 8 * v77;
  v79 = *(v78 - 8);
  if (!v72)
  {
    if (v79 == 256)
    {
      v161 = 5;
      strcpy(__p, "shape");
      v91 = MIL::IRObject::TryGetAttribute();
      if (v161 < 0)
      {
        v92 = v91;
        operator delete(__p[0]);
        v91 = v92;
      }

      if (v91)
      {
        (*(*v91 + 40))(v91);
        Data = MIL::IRTensorValue::GetDataView<unsigned int>();
        v95 = v94;
        v162.__begin_ = v94;
        llvm::SmallVector<long long,4u>::SmallVector(__p, &v162, 1);
        v96 = __p[0];
        v97 = LODWORD(__p[1]);
        v162.__begin_ = (OptionalArgValue[1] & 0xFFFFFFFFFFFFFFF8);
        v98 = mlir::Attribute::getContext(&v162);
        v99 = mlir::IntegerType::get(v98, 32, 1u);
        v100 = mlir::RankedTensorType::get(v96, v97, v99, 0);
        v101 = v100;
        if (v100)
        {
          v102 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v100 + 8);
        }

        else
        {
          v102 = 0;
        }

        v153 = v101;
        v154 = v102;
        memset(&v162, 0, sizeof(v162));
        std::vector<int>::resize(&v162, v95);
        begin = v162.__begin_;
        v126 = v95 - 1;
        if (v95 != 1)
        {
          v127 = 0;
          if (v126 < 8)
          {
            goto LABEL_225;
          }

          if (v162.__begin_ - Data <= 0x1F)
          {
            goto LABEL_225;
          }

          v127 = v126 & 0xFFFFFFFFFFFFFFF8;
          v128 = (Data + 16);
          v129 = v162.__begin_ + 4;
          v130 = v126 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v131 = *v128;
            *(v129 - 1) = *(v128 - 1);
            *v129 = v131;
            v128 += 2;
            v129 += 8;
            v130 -= 8;
          }

          while (v130);
          if (v126 != v127)
          {
LABEL_225:
            v132 = ~v127 + v95;
            v133 = 4 * v127;
            v134 = &begin[v127];
            v135 = (Data + v133);
            do
            {
              v136 = *v135++;
              *v134++ = v136;
              --v132;
            }

            while (v132);
          }
        }

        begin[v126] = *(Data + 4 * v126);
        v145 = mlir::DenseElementsAttr::getFromRawBuffer(v153, v154, begin, 4 * v95, 4, 1, 1);
        v144 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr &>((a3 + 23), v150.var0.var0, &v153, &v145);
        v149 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3 + 23, v150.var0.var0, &v149, &v144) - 16;
        mlir::OpBuilder::create<mlir::mps::DequantizeLUTOp,mlir::Value &,mlir::Value &,mlir::IntegerAttr &>(a3 + 23, v150.var0.var0, &v149, &OptionalArgValue, &MLIRElemType);
        (*(*v143 + 200))(v156);
        MILToMLIRRewriter::setValue();
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Couldn't get value for parameter: shape");
      v103 = MILToMLIRRewriter::notifyFailure(a3, v143, __p);
      if (v161 < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v151.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return v103;
        }

LABEL_211:
        operator delete(v151.__r_.__value_.__l.__data_);
        return v103;
      }

LABEL_210:
      if ((SHIBYTE(v151.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v103;
      }

      goto LABEL_211;
    }

LABEL_152:
    if (MILToMLIRRewriter::hasMutableConstantAttribute(a3, v143))
    {
      operator new();
    }

    if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v104 = &v151;
    }

    else
    {
      v104 = v151.__r_.__value_.__r.__words[0];
    }

    if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v105 = SHIBYTE(v151.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v105 = v151.__r_.__value_.__l.__size_;
    }

    if (v105 >= 23)
    {
      v106 = v104 + v105;
      v107 = v105;
      v108 = v104;
      while (1)
      {
        v109 = memchr(v108, 99, v107 - 22);
        if (!v109)
        {
          goto LABEL_177;
        }

        v110 = *v109 == 0x70786574736E6F63 && *(v109 + 1) == 0x6F745F74756C5F72;
        if (v110 && *(v109 + 15) == 0x6573726170735F6FLL)
        {
          break;
        }

        v108 = (v109 + 1);
        v107 = v106 - v108;
        if (v106 - v108 < 23)
        {
          goto LABEL_177;
        }
      }

      if (v109 != v106 && v109 - v104 != -1)
      {
LABEL_197:
        v118 = (*(*v143 + 64))(v143);
        (*(*v118 + 248))(__p);
        if ((__p[1] - __p[0]) == 32)
        {
          MILToMLIRRewriter::materializeConstant(a3, *__p[0], &v150);
          MILToMLIRRewriter::materializeConstant(a3, *(__p[0] + 2), &v150);
          (*(*v143 + 200))(&v162, v143);
          operator new();
        }

        operator new();
      }

LABEL_177:
      if (v105 >= 38)
      {
        v112 = v104;
        while (1)
        {
          v113 = memchr(v112, 99, v105 - 37);
          if (!v113)
          {
            goto LABEL_199;
          }

          v114 = *v113 == 0x70786574736E6F63 && *(v113 + 1) == 0x6573726170735F72;
          v115 = v114 && *(v113 + 2) == 0x69776B636F6C625FLL;
          v116 = v115 && *(v113 + 3) == 0x74666968735F6573;
          if (v116 && *(v113 + 30) == 0x656C6163735F7466)
          {
            break;
          }

          v112 = (v113 + 1);
          v105 = v106 - v112;
          if (v106 - v112 < 38)
          {
            goto LABEL_199;
          }
        }

        if (v113 != v106 && v113 - v104 != -1)
        {
          goto LABEL_197;
        }
      }
    }

LABEL_199:
    v119 = (*(*v143 + 64))(v143);
    (*(*v119 + 112))(&v162);
    if (!v162.__begin_)
    {
      operator new();
    }

    if (MILToMLIRRewriter::materializeConstant(a3, v162.__begin_, &v150))
    {
      (*(*v143 + 200))(__p, v143);
      operator new();
    }

    v103 = 0;
    end = v162.__end_;
    if (v162.__end_ && !atomic_fetch_add(v162.__end_ + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (end->__on_zero_shared)(end);
      std::__shared_weak_count::__release_weak(end);
      if ((SHIBYTE(v151.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v103;
      }

      goto LABEL_211;
    }

    goto LABEL_210;
  }

  if (v79 != 1)
  {
    goto LABEL_152;
  }

  v80 = *(v78 - 16);
  if (((v80 - 4) > 0x3C || ((1 << (v80 - 4)) & 0x1000000000001011) == 0) && v80 != 256)
  {
    goto LABEL_152;
  }

  v161 = 11;
  strcpy(__p, "vector_axis");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (v161 < 0)
  {
    operator delete(__p[0]);
  }

  if (!ParameterValue)
  {
LABEL_144:
    LODWORD(v162.__begin_) = -1;
    std::vector<int>::vector[abi:ne200100](__p, &v162, 1uLL);
    v162.__begin_ = 1;
    v86 = mlir::Builder::getIntegerType(a3 + 23, 32, 1);
    v87 = mlir::RankedTensorType::get(&v162, 1, v86, 0);
    v88 = v150.var0.var0;
    if (v87)
    {
      v89 = v87;
      v90 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v87 + 8);
      v87 = v89;
    }

    else
    {
      v90 = 0;
    }

    v156[0] = mlir::DenseElementsAttr::getFromRawBuffer(v87, v90, __p[0], __p[1] - __p[0], 4, 1, 1);
    v162.__begin_ = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v88, v156);
    OptionalArgValue = (mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::mps::ConstantOp &>((a3 + 23), v150.var0.var0, &OptionalArgValue, &v162) - 16);
    MLIRElemType = 0;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v162.__begin_ = (mlir::OpBuilder::create<mlir::mps::DequantizeLUTOp,mlir::Value &,mlir::Value &,mlir::IntegerAttr &>(a3 + 23, v150.var0.var0, &v149, &OptionalArgValue, &MLIRElemType) - 16);
    if (v71)
    {
      v162.__begin_ = (mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 23, v150.var0.var0, &v162, &v147) - 16);
    }

    (*(*v143 + 200))(__p, v143);
    MILToMLIRRewriter::setValue();
  }

  v82 = (*(*ParameterValue + 32))(ParameterValue);
  v83 = MIL::IRValueType::AsTensorType(v82);
  if ((*(*v83 + 88))(v83) == 11)
  {
    MIL::IRValue::AsTensor(ParameterValue);
    v84 = *MIL::IRTensorValue::GetDataView<int>();
    v85 = mlir::Builder::getIntegerType(a3 + 23, 32, 1);
    MLIRElemType = mlir::IntegerAttr::get(v85, v84);
    goto LABEL_144;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "unexpected type for axis");
  MILToMLIRRewriter::notifyFailure(a3, v4, __p);
  if (v161 < 0)
  {
    operator delete(__p[0]);
  }

  v103 = 0;
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_211;
  }

  return v103;
}

void sub_1E0630DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MILToMLIR::ReshapeLikePattern::matchAndRewrite(MILToMLIR::ReshapeLikePattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v53 = a3;
  MILToMLIRRewriter::getArgValues(a3, a2, "ref_tensors", &v63);
  v61 = 6;
  strcpy(__p, "begins");
  v55 = a2;
  MILToMLIR::getVariadicConstants<int>(&v62, a2, __p);
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(v59[2]) = 4;
  strcpy(v59, "ends");
  MILToMLIR::getVariadicConstants<int>(__p, a2, v59);
  if (SHIBYTE(v59[2]) < 0)
  {
    operator delete(v59[0]);
  }

  HIBYTE(v59[2]) = 9;
  strcpy(v59, "end_masks");
  v5 = (*(*a2 + 160))(a2);
  v6 = v5 + 8;
  v7 = *(v5 + 8);
  if (!v7)
  {
    goto LABEL_44;
  }

  v8 = SHIBYTE(v59[2]) >= 0 ? HIBYTE(v59[2]) : v59[1];
  v9 = SHIBYTE(v59[2]) >= 0 ? v59 : v59[0];
  v10 = v5 + 8;
  do
  {
    v11 = *(v7 + 55);
    if (v11 >= 0)
    {
      v12 = *(v7 + 55);
    }

    else
    {
      v12 = *(v7 + 40);
    }

    if (v11 >= 0)
    {
      v13 = (v7 + 32);
    }

    else
    {
      v13 = *(v7 + 32);
    }

    if (v8 >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v8;
    }

    v15 = memcmp(v13, v9, v14);
    v16 = v12 < v8;
    if (v15)
    {
      v16 = v15 < 0;
    }

    v17 = !v16;
    if (v16)
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v10 = v7;
    }

    v7 = *(v7 + v18);
  }

  while (v7);
  if (v10 == v6)
  {
    goto LABEL_44;
  }

  v19 = *(v10 + 55);
  if (v19 >= 0)
  {
    v20 = *(v10 + 55);
  }

  else
  {
    v20 = *(v10 + 40);
  }

  if (v19 >= 0)
  {
    v21 = (v10 + 32);
  }

  else
  {
    v21 = *(v10 + 32);
  }

  if (v20 >= v8)
  {
    v22 = v8;
  }

  else
  {
    v22 = v20;
  }

  v23 = memcmp(v9, v21, v22);
  v24 = v8 < v20;
  if (v23)
  {
    v24 = v23 < 0;
  }

  if (v24)
  {
LABEL_44:
    v10 = v6;
  }

  if (v10 == (*(*v55 + 160))(v55) + 8 || (v25 = (*(*v55 + 152))(v55, v59)) == 0)
  {
    v57 = 1;
    if (SHIBYTE(v59[2]) < 0)
    {
      goto LABEL_76;
    }

LABEL_61:
    v37 = v63;
    if (v64 == v63)
    {
      goto LABEL_77;
    }

    goto LABEL_62;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v54 = v25;
  do
  {
    ParameterValue = MIL::IROperation::TryGetParameterValue();
    (*(*ParameterValue + 40))(ParameterValue);
    Data = MIL::IRTensorValue::GetDataView<BOOL>();
    v56 = v28;
    if (v31)
    {
      v32 = Data;
      v33 = (Data + v31);
      do
      {
        while (1)
        {
          v26 = v27 + 1;
          v34 = v27 >> 6;
          if (!v27)
          {
            if ((v26 & 0x8000000000000000) != 0)
            {
              goto LABEL_91;
            }

            v35 = (v27 & 0x3FFFFFFFFFFFFFC0) + 64;
            if (v27 < v35)
            {
              if ((v35 & 0x8000000000000000) == 0)
              {
                operator new();
              }

LABEL_91:
              std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
            }
          }

          v36 = 1 << v27;
          if (*v32)
          {
            break;
          }

          *(8 * v34) &= ~v36;
          ++v32;
          ++v27;
          if (v32 == v33)
          {
            goto LABEL_48;
          }
        }

        *(8 * v34) |= v36;
        ++v32;
        ++v27;
      }

      while (v32 != v33);
    }

LABEL_48:
    v28 = v56 + 1;
  }

  while (v56 + 1 != v54);
  v57 = v26 == 0;
  if ((SHIBYTE(v59[2]) & 0x80000000) == 0)
  {
    goto LABEL_61;
  }

LABEL_76:
  operator delete(v59[0]);
  v37 = v63;
  if (v64 == v63)
  {
LABEL_77:
    v59[0] = 0;
    IntegerType = mlir::Builder::getIntegerType(v53 + 23, 32, 1);
    v47 = mlir::RankedTensorType::get(v59, 1, IntegerType, 0);
    if (v47)
    {
      v48 = v47;
      v49 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v47 + 8);
      v47 = v48;
    }

    else
    {
      v49 = 0;
    }

    v59[0] = mlir::DenseElementsAttr::getFromRawBuffer(v47, v49, 0, 0, 4, 1, 1);
    v58 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((v53 + 184), LocationForOp, v59);
    mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(v53 + 23, LocationForOp, &ArgValue, &v58);
    (*(*v55 + 200))(v59);
    operator new();
  }

LABEL_62:
  v38 = 0;
  while (1)
  {
    v39 = (*(v37[v38] + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v39 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v39 = 0;
    }

    v59[0] = v39;
    mlir::ArrayAttr::getValue(v59);
    v41 = *(__p[0] + v38);
    if (!v57 && ((*((v38 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v38) & 1) != 0)
    {
      v41 = v40;
    }

    v42 = *(v62 + v38);
    v43 = v40 & (v42 >> 31);
    v44 = (v43 + v42);
    if (v43 + v42 < 0 || v40 <= v44)
    {
      operator new();
    }

    v45 = (v40 & (v41 >> 31)) + v41;
    if ((v45 & 0x80000000) != 0 || v40 < v45)
    {
      break;
    }

    if (v44 < v45)
    {
      operator new();
    }

    ++v38;
    v37 = v63;
    if (v38 >= (v64 - v63) >> 3)
    {
      goto LABEL_77;
    }
  }

  HIBYTE(v59[2]) = 21;
  v50 = MILToMLIRRewriter::notifyFailure(v53, v59);
  if (SHIBYTE(v59[2]) < 0)
  {
    operator delete(v59[0]);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v62)
  {
    operator delete(v62);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  return v50;
}

void sub_1E063197C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if (!v33)
    {
LABEL_3:
      if (!v34)
      {
LABEL_8:
        if (a23)
        {
          operator delete(a23);
        }

        if (a29)
        {
          operator delete(a29);
        }

        if (a32)
        {
          operator delete(a32);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v34);
      goto LABEL_8;
    }
  }

  else if (!v33)
  {
    goto LABEL_3;
  }

  operator delete(v33);
  if (!v34)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void MILToMLIR::getVariadicConstants<int>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = (*(*a2 + 160))(a2);
  v4 = v3 + 8;
  v5 = *(v3 + 8);
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = *(a3 + 23);
  v7 = v6 >= 0 ? *(a3 + 23) : *(a3 + 8);
  v8 = v6 >= 0 ? a3 : *a3;
  v9 = v3 + 8;
  do
  {
    v10 = *(v5 + 55);
    if (v10 >= 0)
    {
      v11 = *(v5 + 55);
    }

    else
    {
      v11 = *(v5 + 40);
    }

    if (v10 >= 0)
    {
      v12 = (v5 + 32);
    }

    else
    {
      v12 = *(v5 + 32);
    }

    if (v7 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v7;
    }

    v14 = memcmp(v12, v8, v13);
    v15 = v11 < v7;
    if (v14)
    {
      v15 = v14 < 0;
    }

    v16 = !v15;
    if (v15)
    {
      v17 = 8;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v9 = v5;
    }

    v5 = *(v5 + v17);
  }

  while (v5);
  if (v9 == v4)
  {
    goto LABEL_40;
  }

  v18 = *(v9 + 55);
  if (v18 >= 0)
  {
    v19 = *(v9 + 55);
  }

  else
  {
    v19 = *(v9 + 40);
  }

  if (v18 >= 0)
  {
    v20 = (v9 + 32);
  }

  else
  {
    v20 = *(v9 + 32);
  }

  if (v19 >= v7)
  {
    v21 = v7;
  }

  else
  {
    v21 = v19;
  }

  v22 = memcmp(v8, v20, v21);
  v23 = v7 < v19;
  if (v22)
  {
    v23 = v22 < 0;
  }

  if (v23)
  {
LABEL_40:
    v9 = v4;
  }

  if (v9 != (*(*a2 + 160))(a2) + 8)
  {
    v27 = (*(*a2 + 152))(a2, a3);
    if (v27)
    {
      for (i = 0; i != v27; ++i)
      {
        ParameterValue = MIL::IROperation::TryGetParameterValue();
        (*(*ParameterValue + 40))(ParameterValue);
        MIL::IRTensorValue::GetDataView<int>();
        if (v26)
        {
          operator new();
        }
      }
    }
  }
}