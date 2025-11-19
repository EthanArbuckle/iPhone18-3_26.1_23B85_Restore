void sub_1E078A030(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__hash_node<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        v5 = v2;
        std::default_delete<GPU::MemrefBufferPool>::operator()[abi:ne200100]((v2 + 3), v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void std::__shared_ptr_emplace<GPU::MemrefHeap>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B4BAA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12E5B90);
}

uint64_t *std::__hash_table<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::__unordered_map_hasher<GPU::MemrefBufferPool::Kind,std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::hash<GPU::MemrefBufferPool::Kind>,std::equal_to<GPU::MemrefBufferPool::Kind>,true>,std::__unordered_map_equal<GPU::MemrefBufferPool::Kind,std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::equal_to<GPU::MemrefBufferPool::Kind>,std::hash<GPU::MemrefBufferPool::Kind>,true>,std::allocator<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>>>::__emplace_unique_key_args<GPU::MemrefBufferPool::Kind,std::piecewise_construct_t const&,std::tuple<GPU::MemrefBufferPool::Kind const&>,std::tuple<>>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
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
        if (*(v6 + 4) == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
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

    if (v8 >= v2)
    {
      v8 %= v2;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1E078A438(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>,mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>::LookupBucketFor<mlir::Value>(uint64_t result, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (result + 24 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
LABEL_3:
      *a4 = v8;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v9 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v9 == -8192;
        }

        if (v12)
        {
          v10 = v8;
        }

        v13 = v7 + v11++;
        v7 = v13 & v6;
        v8 = (result + 24 * (v13 & v6));
        v9 = *v8;
        if (*v8 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v10)
      {
        v8 = v10;
      }

      *a4 = v8;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>,mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>::grow(uint64_t a1, int a2)
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
              v27 = 0x9DDFEA08EB382D69 * ((8 * *v20 - 0xAE502812AA7333) ^ HIDWORD(*v20));
              v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v26) ^ (v27 >> 47) ^ v27);
              LODWORD(v27) = -348639895 * ((v28 >> 47) ^ v28);
              v29 = *(a1 + 16) - 1;
              v30 = v29 & v27;
              v25 = *a1 + 24 * v30;
              v31 = *v25;
              if (v26 != *v25)
              {
                v32 = 0;
                v33 = 1;
                while (v31 != -4096)
                {
                  if (v32)
                  {
                    v34 = 0;
                  }

                  else
                  {
                    v34 = v31 == -8192;
                  }

                  if (v34)
                  {
                    v32 = v25;
                  }

                  v35 = v30 + v33++;
                  v30 = v35 & v29;
                  v25 = *a1 + 24 * (v35 & v29);
                  v31 = *v25;
                  if (v26 == *v25)
                  {
                    goto LABEL_26;
                  }
                }

                if (v32)
                {
                  v25 = v32;
                }
              }

LABEL_26:
              *v25 = v26;
              *(v25 + 8) = *(v20 + 8);
              *(v20 + 1) = 0;
              *(v20 + 2) = 0;
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

void *std::__tree<std::shared_ptr<GPU::MemrefHeap>,BOOL (*)(std::shared_ptr<GPU::MemrefHeap>,std::shared_ptr<GPU::MemrefHeap>),std::allocator<std::shared_ptr<GPU::MemrefHeap>>>::__find_equal<std::shared_ptr<GPU::MemrefHeap>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      v8 = v4;
      v9 = *(a1 + 24);
      v10 = a3[1];
      v28 = *a3;
      v29 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = v8[5];
      v26 = v8[4];
      v27 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = v9(&v28, &v26);
      v13 = v27;
      if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
        v14 = v29;
        if (v29)
        {
LABEL_11:
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }
        }
      }

      else
      {
        v14 = v29;
        if (v29)
        {
          goto LABEL_11;
        }
      }

      if (v12)
      {
        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v15 = *(a1 + 24);
        v16 = v8[5];
        v24 = v8[4];
        v25 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = a3[1];
        v22 = *a3;
        v23 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v18 = v15(&v24, &v22);
        v19 = v23;
        if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
          v20 = v25;
          if (v25)
          {
LABEL_22:
            if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v20->__on_zero_shared)(v20);
              std::__shared_weak_count::__release_weak(v20);
            }
          }
        }

        else
        {
          v20 = v25;
          if (v25)
          {
            goto LABEL_22;
          }
        }

        if (!v18)
        {
          goto LABEL_29;
        }

        v5 = v8 + 1;
        v4 = v8[1];
        if (!v4)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v8 = (a1 + 8);
LABEL_29:
  *a2 = v8;
  return v5;
}

void sub_1E078AA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_1E078AA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<GPU::MemrefBuffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B4BAF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12E5B90);
}

void std::__shared_ptr_emplace<GPU::MemrefBuffer>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = *(a1 + 24);
  }
}

uint64_t std::__tree<std::shared_ptr<GPU::MemrefBuffer>,BOOL (*)(std::shared_ptr<GPU::MemrefBuffer>,std::shared_ptr<GPU::MemrefBuffer>),std::allocator<std::shared_ptr<GPU::MemrefBuffer>>>::__lower_bound<std::shared_ptr<GPU::MemrefBuffer>>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v9 = *(a1 + 24);
      v10 = *(v5 + 40);
      v18 = *(v5 + 32);
      v19 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = a2[1];
      v16 = *a2;
      v17 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = v9(&v18, &v16);
      v13 = v17;
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
        v14 = v19;
        if (v19)
        {
LABEL_14:
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }
        }
      }

      else
      {
        v14 = v19;
        if (v19)
        {
          goto LABEL_14;
        }
      }

      if (v12)
      {
        v8 = 8;
      }

      else
      {
        a4 = v5;
        v8 = 0;
      }

      v5 = *(v5 + v8);
    }

    while (v5);
  }

  return a4;
}

void sub_1E078ACC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::shared_ptr<GPU::MemrefHeap>,BOOL (*)(std::shared_ptr<GPU::MemrefHeap>,std::shared_ptr<GPU::MemrefHeap>),std::allocator<std::shared_ptr<GPU::MemrefHeap>>>::__lower_bound<std::shared_ptr<GPU::MemrefHeap>>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v9 = *(a1 + 24);
      v10 = *(v5 + 40);
      v18 = *(v5 + 32);
      v19 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = a2[1];
      v16 = *a2;
      v17 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = v9(&v18, &v16);
      v13 = v17;
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
        v14 = v19;
        if (v19)
        {
LABEL_14:
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }
        }
      }

      else
      {
        v14 = v19;
        if (v19)
        {
          goto LABEL_14;
        }
      }

      if (v12)
      {
        v8 = 8;
      }

      else
      {
        a4 = v5;
        v8 = 0;
      }

      v5 = *(v5 + v8);
    }

    while (v5);
  }

  return a4;
}

void sub_1E078AE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v16 = v14[1];
      v17 = *v16;
      v14[1] = *v16;
      if (v17)
      {
        *(v17 + 16) = v14;
      }

      v18 = v14[2];
      v16[2] = v18;
      v18[*v18 != v14] = v16;
      *v16 = v14;
      v14[2] = v16;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v19 = *v7;
    if (*v7 && *(v19 + 24) != 1)
    {
      v20 = v7[1];
      if (v20 && (v20[3] & 1) == 0)
      {
LABEL_65:
        v19 = v7;
      }

      else
      {
        *(v19 + 24) = 1;
        *(v7 + 24) = 0;
        v28 = v19[1];
        *v7 = v28;
        if (v28)
        {
          *(v28 + 16) = v7;
        }

        v29 = v7[2];
        v29[*v29 != v7] = v19;
        v19[1] = v7;
        v19[2] = v29;
        v7[2] = v19;
        v20 = v7;
      }

      v30 = v19[2];
      *(v19 + 24) = *(v30 + 24);
      *(v30 + 24) = 1;
      *(v20 + 24) = 1;
      v31 = *(v30 + 8);
      v32 = *v31;
      *(v30 + 8) = *v31;
      if (v32)
      {
        *(v32 + 16) = v30;
      }

      v33 = *(v30 + 16);
      v31[2] = v33;
      v33[*v33 != v30] = v31;
      *v31 = v30;
      *(v30 + 16) = v31;
      return result;
    }

    v20 = v7[1];
    if (v20 && *(v20 + 24) != 1)
    {
      goto LABEL_65;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v21 = v15[1];
    *v14 = v21;
    if (v21)
    {
      v21[2] = v14;
    }

    v22 = v14[2];
    v22[*v22 != v14] = v15;
    v15[1] = v14;
    v15[2] = v22;
    v14[2] = v15;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_69;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_69:
    v25 = v7;
    goto LABEL_70;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v26 = *v25;
  v7[1] = *v25;
  if (v26)
  {
    *(v26 + 16) = v7;
  }

  v27 = v7[2];
  v25[2] = v27;
  v27[*v27 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_70:
  v34 = v25[2];
  *(v25 + 24) = *(v34 + 24);
  *(v34 + 24) = 1;
  *(v24 + 24) = 1;
  v35 = *v34;
  v36 = *(*v34 + 8);
  *v34 = v36;
  if (v36)
  {
    *(v36 + 16) = v34;
  }

  v37 = v34[2];
  v37[*v37 != v34] = v35;
  *(v35 + 8) = v34;
  *(v35 + 16) = v37;
  v34[2] = v35;
  return result;
}

uint64_t std::__hash_table<std::shared_ptr<GPU::MemrefBuffer>,std::hash<std::shared_ptr<GPU::MemrefBuffer>>,std::equal_to<std::shared_ptr<GPU::MemrefBuffer>>,std::allocator<std::shared_ptr<GPU::MemrefBuffer>>>::__emplace_unique_key_args<std::shared_ptr<GPU::MemrefBuffer>,std::shared_ptr<GPU::MemrefBuffer> const&>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = 0x9DDFEA08EB382D69 * v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * v4;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
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
        if (v10[2] == a2)
        {
          return 0;
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

  if (v10[2] != a2)
  {
    goto LABEL_12;
  }

  return 0;
}

void sub_1E078B700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::shared_ptr<GPU::MemrefBuffer>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<GPU::MemrefBuffer>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__hash_node<std::shared_ptr<GPU::MemrefBuffer>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<GPU::MemrefBuffer>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = v2;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          v2 = v5;
        }
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

char *std::__stable_sort<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(char *result, char *a2, uint64_t **a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v6 = *(a2 - 1);
      v7 = *result;
      if (*(**a3 + 8 * v6) > *(**a3 + 8 * *result))
      {
        *result = v6;
        *(a2 - 1) = v7;
      }

      return result;
    }

    if (a4 > 128)
    {
      v18 = a4 >> 1;
      v19 = &result[8 * (a4 >> 1)];
      v20 = a4 - (a4 >> 1);
      v21 = result;
      if (a4 <= a6)
      {
        v27 = a5;
        std::__stable_sort_move<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(result, v19, a3, a4 >> 1, a5);
        v28 = &v27[v18];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(v19, a2, a3, v20, v28);
        v29 = &v27[a4];
        v30 = *a3;
        v31 = v21;
        v32 = v28;
        do
        {
          if (v32 == v29)
          {
            if (v27 == v28)
            {
              return result;
            }

            v48 = v28 - v27 - 8;
            if (v48 >= 0x38)
            {
              if ((v31 - v27) >= 0x20)
              {
                v50 = v21 + 16;
                v51 = (v48 >> 3) + 1;
                v52 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                v21 += v52 * 8;
                v49 = &v27[v52];
                v53 = (v27 + 2);
                v54 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v55 = *v53;
                  *(v50 - 1) = *(v53 - 1);
                  *v50 = v55;
                  v53 += 2;
                  v50 += 2;
                  v54 -= 4;
                }

                while (v54);
                if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return result;
                }
              }

              else
              {
                v49 = v27;
              }
            }

            else
            {
              v49 = v27;
            }

            do
            {
              v56 = *v49++;
              *v21 = v56;
              v21 += 8;
            }

            while (v49 != v28);
            return result;
          }

          v33 = v32;
          v34 = *v32;
          v35 = *(*v30 + 8 * v34) > *(*v30 + 8 * *v27);
          if (*(*v30 + 8 * v34) <= *(*v30 + 8 * *v27))
          {
            v36 = *v27;
          }

          else
          {
            v36 = v34;
          }

          v27 += *(*v30 + 8 * v34) <= *(*v30 + 8 * *v27);
          v37 = v35;
          v32 = &v33[v37];
          *v21 = v36;
          v21 += 8;
          v31 += 8;
        }

        while (v27 != v28);
        if (v32 != v29)
        {
          v38 = v29 - v33 - v37 * 8 - 8;
          if (v38 <= 0x57)
          {
            goto LABEL_47;
          }

          if ((v31 - v33 - v37 * 8) < 0x20)
          {
            goto LABEL_47;
          }

          v39 = 0;
          v40 = (v38 >> 3) + 1;
          v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
          v42 = &v21[v41];
          v32 = (v32 + v41);
          v43 = &v33[v37 + 2];
          v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v45 = &v21[v39];
            v46 = *v43;
            *v45 = *(v43 - 1);
            *(v45 + 1) = v46;
            v43 += 4;
            v39 += 32;
            v44 -= 4;
          }

          while (v44);
          v21 = v42;
          if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_47:
            do
            {
              v47 = *v32++;
              *v21 = v47;
              v21 += 8;
            }

            while (v32 != v29);
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(result, v19, a3, a4 >> 1, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(v19, a2, a3, v20, a5, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(v21, v19, a2, a3, v18, v20, a5, a6);
      }
    }

    else if (result != a2)
    {
      v8 = result + 8;
      if (result + 8 != a2)
      {
        v9 = **a3;
        v10 = 8;
        v11 = result;
        do
        {
          v14 = *v11;
          v13 = *(v11 + 1);
          v11 = v8;
          if (*(v9 + 8 * v13) > *(v9 + 8 * v14))
          {
            v15 = v10;
            do
            {
              *&result[v15] = v14;
              v16 = v15 - 8;
              if (v15 == 8)
              {
                v12 = result;
                goto LABEL_11;
              }

              v14 = *&result[v15 - 16];
              v15 -= 8;
            }

            while (*(v9 + 8 * v13) > *(v9 + 8 * v14));
            v12 = &result[v16];
LABEL_11:
            *v12 = v13;
          }

          v8 = v11 + 8;
          v10 += 8;
        }

        while (v11 + 8 != a2);
      }
    }
  }

  return result;
}

char *std::__stable_sort_move<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(char *result, char *a2, uint64_t **a3, uint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    if (a4 == 1)
    {
LABEL_8:
      *a5 = *result;
      return result;
    }

    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v5 = a2 - 8;
      v6 = v7;
      v8 = **a3;
      v9 = *(v8 + 8 * v7);
      v10 = *(v8 + 8 * *result);
      if (v9 <= v10)
      {
        v6 = *result;
      }

      *a5++ = v6;
      if (v9 <= v10)
      {
        result = v5;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v23 = a4 >> 1;
      v24 = a4 >> 1;
      v25 = &result[v24 * 8];
      v26 = result;
      v30 = a5;
      (std::__stable_sort<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(v25, a2, a3, a4 - v23, &v30[v24], a4 - v23);
      v31 = *a3;
      v32 = v30;
      v33 = v26;
      v34 = v25;
      do
      {
        if (v34 == a2)
        {
          if (v33 == v25)
          {
            return result;
          }

          v50 = &v26[8 * v23] - v33 - 8;
          if (v50 >= 0x38)
          {
            if ((v32 - v33) >= 0x20)
            {
              v52 = v30 + 2;
              v53 = (v50 >> 3) + 1;
              v54 = 8 * (v53 & 0x3FFFFFFFFFFFFFFCLL);
              v30 = (v30 + v54);
              v51 = &v33[v54];
              v55 = (v33 + 16);
              v56 = v53 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v57 = *v55;
                *(v52 - 1) = *(v55 - 1);
                *v52 = v57;
                v55 += 2;
                v52 += 2;
                v56 -= 4;
              }

              while (v56);
              if (v53 == (v53 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v51 = v33;
            }
          }

          else
          {
            v51 = v33;
          }

          do
          {
            v58 = *v51++;
            *v30++ = v58;
          }

          while (v51 != v25);
          return result;
        }

        v35 = v34;
        v36 = *v34;
        v37 = *(*v31 + 8 * v36) <= *(*v31 + 8 * *v33);
        if (*(*v31 + 8 * v36) <= *(*v31 + 8 * *v33))
        {
          v38 = *v33;
        }

        else
        {
          v38 = v36;
        }

        v39 = 8 * (*(*v31 + 8 * v36) > *(*v31 + 8 * *v33));
        v34 = &v35[v39];
        v33 += 8 * v37;
        *v30++ = v38;
        v32 += 8;
      }

      while (v33 != v25);
      if (v34 != a2)
      {
        v40 = a2 - v35 - v39 - 8;
        if (v40 < 0x58)
        {
          goto LABEL_48;
        }

        if ((v32 - &v35[v39]) < 0x20)
        {
          goto LABEL_48;
        }

        v41 = 0;
        v42 = (v40 >> 3) + 1;
        v43 = v42 & 0x3FFFFFFFFFFFFFFCLL;
        v44 = &v30[v43];
        v34 += v43 * 8;
        v45 = &v35[v39 + 16];
        v46 = v42 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v47 = &v30[v41];
          v48 = *v45;
          *v47 = *(v45 - 1);
          *(v47 + 1) = v48;
          v45 += 32;
          v41 += 4;
          v46 -= 4;
        }

        while (v46);
        v30 = v44;
        if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_48:
          do
          {
            v49 = *v34;
            v34 += 8;
            *v30++ = v49;
          }

          while (v34 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v11 = *a3;
      v12 = *result;
      result += 8;
      *a5 = v12;
      if (result != a2)
      {
        v13 = 0;
        v14 = *v11;
        v15 = a5;
        v16 = a5;
        do
        {
          while (1)
          {
            v18 = *v16++;
            v17 = v18;
            if (*(v14 + 8 * *result) > *(v14 + 8 * v18))
            {
              break;
            }

            *v16 = *result;
            result += 8;
            v13 += 8;
            v15 = v16;
            if (result == a2)
            {
              return result;
            }
          }

          v15[1] = v17;
          v19 = a5;
          if (v15 != a5)
          {
            v20 = v13;
            while (1)
            {
              v19 = (a5 + v20);
              v21 = *(a5 + v20 - 8);
              if (*(v14 + 8 * *result) <= *(v14 + 8 * v21))
              {
                break;
              }

              *v19 = v21;
              v20 -= 8;
              if (!v20)
              {
                v19 = a5;
                break;
              }
            }
          }

          v22 = *result;
          result += 8;
          *v19 = v22;
          v13 += 8;
          v15 = v16;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(char *result, char *a2, char *a3, uint64_t **a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (a5 > a8 && a6 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v9 = 0;
    v10 = 0;
    v11 = **a4;
    while (1)
    {
      v12 = *&result[8 * v10];
      if (*(v11 + 8 * *a2) > *(v11 + 8 * v12))
      {
        break;
      }

      ++v10;
      v9 -= 8;
      if (a5 == v10)
      {
        return result;
      }
    }

    v13 = a5 - v10;
    v14 = &result[-v9];
    if (a5 - v10 >= a6)
    {
      if (a5 - 1 == v10)
      {
        *&result[8 * v10] = *a2;
        *a2 = v12;
        return result;
      }

      v23 = v13 / 2;
      v25 = &result[8 * (v13 / 2)];
      if (a3 == a2)
      {
        v16 = a2;
        v18 = &v25[-v9];
        v15 = 0;
        v24 = a2;
        if (&v25[-v9] != a2)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v26 = (a3 - a2) >> 3;
        v16 = a2;
        do
        {
          v27 = v26 >> 1;
          v28 = &v16[8 * (v26 >> 1)];
          v30 = *v28;
          v29 = v28 + 8;
          v26 += ~(v26 >> 1);
          if (*(v11 + 8 * v30) > *(v11 + 8 * *&v25[8 * v10]))
          {
            v16 = v29;
          }

          else
          {
            v26 = v27;
          }
        }

        while (v26);
        v18 = &v25[-v9];
        v15 = (v16 - a2) >> 3;
        v24 = v16;
        if (&v25[-v9] != a2)
        {
LABEL_29:
          v24 = v18;
          if (a2 != v16)
          {
            v31 = v18 + 8;
            if (v18 + 8 == a2)
            {
              v106 = *v18;
              v108 = a7;
              v38 = v16 - a2;
              v110 = &result[-v9];
              v112 = a3;
              v39 = a5;
              v40 = a6;
              v41 = a4;
              v42 = v23;
              memmove(v18, v18 + 8, v16 - a2);
              v23 = v42;
              a7 = v108;
              v14 = v110;
              a4 = v41;
              a6 = v40;
              a5 = v39;
              a3 = v112;
              v24 = &v18[v38];
              *&v18[v38] = v106;
            }

            else
            {
              v32 = a2 + 8;
              if (a2 + 8 == v16)
              {
                v43 = *(v16 - 1);
                v24 = v18 + 8;
                if (v16 - 8 != v18)
                {
                  v111 = &result[-v9];
                  v113 = a3;
                  v44 = a5;
                  v45 = a6;
                  v107 = *(v16 - 1);
                  v109 = a7;
                  v46 = a4;
                  v47 = v23;
                  memmove(v18 + 8, v18, v16 - 8 - v18);
                  v43 = v107;
                  a7 = v109;
                  v23 = v47;
                  v14 = v111;
                  a3 = v113;
                  a4 = v46;
                  a6 = v45;
                  a5 = v44;
                }

                *v18 = v43;
              }

              else
              {
                v33 = a2 - v18;
                v34 = (a2 - v18) >> 3;
                v35 = (v16 - a2) >> 3;
                if (v34 == v35)
                {
                  do
                  {
                    v36 = *(v31 - 1);
                    *(v31 - 1) = *(v32 - 1);
                    *(v32 - 1) = v36;
                    if (v31 == a2)
                    {
                      break;
                    }

                    v31 += 8;
                    v37 = v32 == v16;
                    v32 += 8;
                  }

                  while (!v37);
                  v24 = a2;
                }

                else
                {
                  v48 = (a2 - v18) >> 3;
                  do
                  {
                    v49 = v48;
                    v48 = v35;
                    v35 = v49 % v35;
                  }

                  while (v35);
                  v50 = &v18[8 * v48];
                  do
                  {
                    v52 = *(v50 - 1);
                    v50 -= 8;
                    v51 = v52;
                    v53 = &v50[v33];
                    v54 = v50;
                    do
                    {
                      v55 = v54;
                      v54 = v53;
                      *v55 = *v53;
                      v56 = (v16 - v53) >> 3;
                      v57 = __OFSUB__(v34, v56);
                      v59 = v34 - v56;
                      v58 = (v59 < 0) ^ v57;
                      v53 = &v18[8 * v59];
                      if (v58)
                      {
                        v53 = v54 + v33;
                      }
                    }

                    while (v53 != v50);
                    *v54 = v51;
                  }

                  while (v50 != v18);
                  v24 = &v18[v16 - a2];
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v15 = a6 / 2;
      v16 = &a2[8 * (a6 / 2)];
      if (v14 == a2)
      {
        v18 = &result[-v9];
        v23 = 0;
        v24 = &a2[8 * (a6 / 2)];
      }

      else
      {
        v17 = (a2 - result + v9) >> 3;
        v18 = &result[-v9];
        do
        {
          v19 = v17 >> 1;
          v20 = &v18[8 * (v17 >> 1)];
          v22 = *v20;
          v21 = v20 + 8;
          v17 += ~(v17 >> 1);
          if (*(v11 + 8 * *v16) > *(v11 + 8 * v22))
          {
            v17 = v19;
          }

          else
          {
            v18 = v21;
          }
        }

        while (v17);
        v23 = (v18 - v14) >> 3;
        v24 = &a2[8 * (a6 / 2)];
        if (v18 != a2)
        {
          goto LABEL_29;
        }
      }
    }

    v60 = a5 - v23 - v10;
    v61 = a6 - v15;
    if (v23 + v15 >= a6 + a5 - (v23 + v15) - v10)
    {
      v65 = a4;
      v66 = a7;
      v67 = v23;
      v68 = v14;
      std::__inplace_merge<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(v24, v16);
      result = v68;
      a3 = v24;
      a5 = v67;
      a6 = v15;
      a2 = v18;
      a7 = v66;
      a4 = v65;
      if (!v15)
      {
        return result;
      }
    }

    else
    {
      v62 = a3;
      v63 = a4;
      v64 = a7;
      std::__inplace_merge<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(v14, v18);
      a3 = v62;
      result = v24;
      a5 = v60;
      a6 = v61;
      a2 = v16;
      a7 = v64;
      a4 = v63;
      if (!v61)
      {
        return result;
      }
    }
  }

  if (a5 <= a6)
  {
    if (result != a2)
    {
      v82 = a2 - result - 8;
      v83 = a7;
      v84 = result;
      if (v82 < 0x18)
      {
        goto LABEL_100;
      }

      v83 = a7;
      v84 = result;
      if ((a7 - result) <= 0x1F)
      {
        goto LABEL_100;
      }

      v85 = (v82 >> 3) + 1;
      v86 = 8 * (v85 & 0x3FFFFFFFFFFFFFFCLL);
      v83 = &a7[v86];
      v84 = &result[v86];
      v87 = (result + 16);
      v88 = a7 + 16;
      v89 = v85 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v90 = *v87;
        *(v88 - 1) = *(v87 - 1);
        *v88 = v90;
        v87 += 2;
        v88 += 2;
        v89 -= 4;
      }

      while (v89);
      if (v85 != (v85 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_100:
        do
        {
          v91 = *v84;
          v84 += 8;
          *v83 = v91;
          v83 += 8;
        }

        while (v84 != a2);
      }

      v92 = *a4;
      while (a2 != a3)
      {
        v93 = *a2;
        v94 = *(*v92 + 8 * *a2) > *(*v92 + 8 * *a7);
        if (*(*v92 + 8 * *a2) <= *(*v92 + 8 * *a7))
        {
          v93 = *a7;
        }

        a7 += 8 * (*(*v92 + 8 * *a2) <= *(*v92 + 8 * *a7));
        a2 += 8 * v94;
        *result = v93;
        result += 8;
        if (a7 == v83)
        {
          return result;
        }
      }

      return memmove(result, a7, v83 - a7);
    }
  }

  else if (a2 != a3)
  {
    v69 = a3 - a2 - 8;
    v70 = a7;
    v71 = a2;
    if (v69 < 0x18)
    {
      goto LABEL_101;
    }

    v70 = a7;
    v71 = a2;
    if ((a7 - a2) <= 0x1F)
    {
      goto LABEL_101;
    }

    v72 = (v69 >> 3) + 1;
    v73 = 8 * (v72 & 0x3FFFFFFFFFFFFFFCLL);
    v70 = &a7[v73];
    v71 = &a2[v73];
    v74 = (a2 + 16);
    v75 = a7 + 16;
    v76 = v72 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v77 = *v74;
      *(v75 - 1) = *(v74 - 1);
      *v75 = v77;
      v74 += 2;
      v75 += 2;
      v76 -= 4;
    }

    while (v76);
    if (v72 != (v72 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_101:
      do
      {
        v78 = *v71;
        v71 += 8;
        *v70 = v78;
        v70 += 8;
      }

      while (v71 != a3);
    }

    v79 = *a4;
    v80 = a3;
    while (a2 != result)
    {
      v81 = *(a2 - 1);
      if (*(*v79 + 8 * *(v70 - 1)) > *(*v79 + 8 * v81))
      {
        a2 -= 8;
      }

      else
      {
        v81 = *(v70 - 1);
        v70 -= 8;
      }

      *(a3 - 1) = v81;
      a3 -= 8;
      v80 -= 8;
      if (v70 == a7)
      {
        return result;
      }
    }

    v95 = v70 - a7;
    if (v70 != a7)
    {
      v96 = v95 - 8;
      if ((v95 - 8) < 0x48 || (v70 - v80) < 0x20)
      {
        v97 = v70;
        goto LABEL_88;
      }

      v100 = a3 - 16;
      v101 = (v96 >> 3) + 1;
      v102 = 8 * (v101 & 0x3FFFFFFFFFFFFFFCLL);
      v97 = &v70[-v102];
      a3 -= v102;
      v103 = v70 - 16;
      v104 = v101 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v105 = *v103;
        *(v100 - 1) = *(v103 - 1);
        *v100 = v105;
        v100 -= 32;
        v103 -= 32;
        v104 -= 4;
      }

      while (v104);
      if (v101 != (v101 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_88:
        v98 = a3 - 8;
        do
        {
          v99 = *(v97 - 1);
          v97 -= 8;
          *v98 = v99;
          v98 -= 8;
        }

        while (v97 != a7);
      }
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>,mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::LookupBucketFor<mlir::Value>(uint64_t result, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (result + 16 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
LABEL_3:
      *a4 = v8;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v9 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v9 == -8192;
        }

        if (v12)
        {
          v10 = v8;
        }

        v13 = v7 + v11++;
        v7 = v13 & v6;
        v8 = (result + 16 * (v13 & v6));
        v9 = *v8;
        if (*v8 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v10)
      {
        v8 = v10;
      }

      *a4 = v8;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>,mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::grow(uint64_t a1, int a2)
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
        goto LABEL_10;
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
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0x9DDFEA08EB382D69 * ((8 * *v16 - 0xAE502812AA7333) ^ (*v16 >> 32));
          v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v25 >> 47) ^ v25);
          LODWORD(v25) = -348639895 * ((v26 >> 47) ^ v26);
          v27 = *(a1 + 16) - 1;
          v28 = v27 & v25;
          v22 = (*a1 + 16 * v28);
          v29 = *v22;
          if (v24 != *v22)
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
                v30 = v22;
              }

              v33 = v28 + v31++;
              v28 = v33 & v27;
              v22 = (*a1 + 16 * (v33 & v27));
              v29 = *v22;
              if (v24 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v30)
            {
              v22 = v30;
            }
          }

LABEL_24:
          *v22 = v24;
          v23 = v16[1];
          v16[1] = 0;
          v22[1] = v23;
          ++*(a1 + 8);
        }

        v16 += 2;
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -4096;
      *v19 = -4096;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

void llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::shrink_and_clear(_DWORD *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  if (v2)
  {
    v4 = 16 * v2;
    v5 = (*a1 + 8);
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
      }

      v5 += 2;
      v4 -= 16;
    }

    while (v4);
  }

  if (v3)
  {
    v6 = 1 << (33 - __clz(v3 - 1));
    if (v6 <= 64)
    {
      v7 = 64;
    }

    else
    {
      v7 = v6;
    }

    v8 = *a1;
    if (v7 != a1[4])
    {
      llvm::deallocate_buffer(v8, (16 * v2));
    }

    *(a1 + 1) = 0;
    v9 = v8;
    if (((v7 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_23;
    }

    v10 = ((v7 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v9 = (v8 + 16 * (v10 & 0x1FFFFFFFFFFFFFFELL));
    v11 = (v8 + 16);
    v12 = v10 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v11 - 2) = -4096;
      *v11 = -4096;
      v11 += 4;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_23:
      do
      {
        *v9 = -4096;
        v9 = (v9 + 16);
      }

      while (v9 != (v8 + 16 * v7));
    }
  }

  else
  {
    if (a1[4])
    {
      llvm::deallocate_buffer(*a1, (16 * v2));
    }

    *(a1 + 1) = 0;
  }
}

void MPSSymbolTable::insertOpInSymbolTable(llvm::StringMapImpl *a1@<X0>, uint64_t a2@<X1>, const unsigned __int8 *a3@<X2>, std::string *a4@<X8>)
{
  v7 = *(a2 + 23);
  v8 = v7;
  v9 = *a2;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v9 = a2;
  }

  if (!v7)
  {
    goto LABEL_66;
  }

  v10 = v9;
  if (v7 < 8)
  {
LABEL_99:
    v37 = &v9[v7];
    do
    {
      if (*v10 == 46)
      {
        *v10 = 95;
      }

      ++v10;
    }

    while (v10 != v37);
    goto LABEL_65;
  }

  if (v7 < 0x10)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v11 = v7 & 0xFFFFFFFFFFFFFFF0;
  v15 = v9 + 7;
  v16.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
  v16.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
  v17 = v7 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v18 = vceqq_s8(*(v15 - 7), v16);
    if (v18.i8[0])
    {
      *(v15 - 7) = 95;
      if ((v18.i8[1] & 1) == 0)
      {
LABEL_33:
        if ((v18.i8[2] & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_50;
      }
    }

    else if ((v18.i8[1] & 1) == 0)
    {
      goto LABEL_33;
    }

    *(v15 - 6) = 95;
    if ((v18.i8[2] & 1) == 0)
    {
LABEL_34:
      if ((v18.i8[3] & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_51;
    }

LABEL_50:
    *(v15 - 5) = 95;
    if ((v18.i8[3] & 1) == 0)
    {
LABEL_35:
      if ((v18.i8[4] & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_52;
    }

LABEL_51:
    *(v15 - 4) = 95;
    if ((v18.i8[4] & 1) == 0)
    {
LABEL_36:
      if ((v18.i8[5] & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_53;
    }

LABEL_52:
    *(v15 - 3) = 95;
    if ((v18.i8[5] & 1) == 0)
    {
LABEL_37:
      if ((v18.i8[6] & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_54;
    }

LABEL_53:
    *(v15 - 2) = 95;
    if ((v18.i8[6] & 1) == 0)
    {
LABEL_38:
      if ((v18.i8[7] & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_55;
    }

LABEL_54:
    *(v15 - 1) = 95;
    if ((v18.i8[7] & 1) == 0)
    {
LABEL_39:
      if ((v18.i8[8] & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_56;
    }

LABEL_55:
    *v15 = 95;
    if ((v18.i8[8] & 1) == 0)
    {
LABEL_40:
      if ((v18.i8[9] & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_57;
    }

LABEL_56:
    v15[1] = 95;
    if ((v18.i8[9] & 1) == 0)
    {
LABEL_41:
      if ((v18.i8[10] & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_58;
    }

LABEL_57:
    v15[2] = 95;
    if ((v18.i8[10] & 1) == 0)
    {
LABEL_42:
      if ((v18.i8[11] & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

LABEL_58:
    v15[3] = 95;
    if ((v18.i8[11] & 1) == 0)
    {
LABEL_43:
      if ((v18.i8[12] & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_60;
    }

LABEL_59:
    v15[4] = 95;
    if ((v18.i8[12] & 1) == 0)
    {
LABEL_44:
      if ((v18.i8[13] & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }

LABEL_60:
    v15[5] = 95;
    if ((v18.i8[13] & 1) == 0)
    {
LABEL_45:
      if (v18.i8[14])
      {
        goto LABEL_62;
      }

      goto LABEL_46;
    }

LABEL_61:
    v15[6] = 95;
    if (v18.i8[14])
    {
LABEL_62:
      v15[7] = 95;
      if ((v18.i8[15] & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_63;
    }

LABEL_46:
    if ((v18.i8[15] & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_63:
    v15[8] = 95;
LABEL_30:
    v15 += 16;
    v17 -= 16;
  }

  while (v17);
  if (v7 == v11)
  {
    goto LABEL_65;
  }

  if ((v7 & 8) == 0)
  {
    v10 = &v9[v11];
    goto LABEL_99;
  }

LABEL_8:
  v10 = &v9[v7 & 0xFFFFFFFFFFFFFFF8];
  v12 = v11 - (v7 & 0xFFFFFFFFFFFFFFF8);
  v13 = &v9[v11 + 3];
  while (2)
  {
    v14 = vceq_s8(*(v13 - 3), 0x2E2E2E2E2E2E2E2ELL);
    if (v14.i8[0])
    {
      *(v13 - 3) = 95;
      if (v14.i8[1])
      {
        goto LABEL_20;
      }

LABEL_12:
      if ((v14.i8[2] & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_21:
      *(v13 - 1) = 95;
      if (v14.i8[3])
      {
        goto LABEL_22;
      }

LABEL_14:
      if ((v14.i8[4] & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_23:
      v13[1] = 95;
      if (v14.i8[5])
      {
        goto LABEL_24;
      }

LABEL_16:
      if ((v14.i8[6] & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_25:
      v13[3] = 95;
      if (v14.i8[7])
      {
LABEL_26:
        v13[4] = 95;
      }
    }

    else
    {
      if ((v14.i8[1] & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_20:
      *(v13 - 2) = 95;
      if (v14.i8[2])
      {
        goto LABEL_21;
      }

LABEL_13:
      if ((v14.i8[3] & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_22:
      *v13 = 95;
      if (v14.i8[4])
      {
        goto LABEL_23;
      }

LABEL_15:
      if ((v14.i8[5] & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_24:
      v13[2] = 95;
      if (v14.i8[6])
      {
        goto LABEL_25;
      }

LABEL_17:
      if (v14.i8[7])
      {
        goto LABEL_26;
      }
    }

    v13 += 8;
    v12 += 8;
    if (v12)
    {
      continue;
    }

    break;
  }

  if (v7 != (v7 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_99;
  }

LABEL_65:
  v8 = *(a2 + 23);
LABEL_66:
  if ((v8 & 0x80) != 0)
  {
    v22 = *a2;
    v21 = *(a2 + 8);
    v42 = *a2;
    v43 = v21;
    std::string::__init_copy_ctor_external(&__p, v22, v21);
    v20 = v42;
    v19 = v21;
  }

  else
  {
    v19 = v8;
    v42 = a2;
    v43 = v8;
    __p = *a2;
    v20 = a2;
    v21 = v8;
  }

  v23 = llvm::StringMapImpl::hash(v20, v19, a3);
  v24 = llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace_with_hash<std::string>(a1, v20, v19, v23, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v25 = v24;
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v25 & 1) == 0)
    {
LABEL_75:
      v26 = 1;
      do
      {
        std::string::resize(a2, v21, 0);
        std::string::push_back(a2, 95);
        std::to_string(&v41, v26);
        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &v41;
        }

        else
        {
          v27 = v41.__r_.__value_.__r.__words[0];
        }

        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v41.__r_.__value_.__l.__size_;
        }

        std::string::append(a2, v27, size);
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        v29 = *(a2 + 23);
        v30 = *(a2 + 8);
        if (v29 >= 0)
        {
          v31 = a2;
        }

        else
        {
          v31 = *a2;
        }

        if (v29 >= 0)
        {
          v32 = *(a2 + 23);
        }

        else
        {
          v32 = *(a2 + 8);
        }

        v38 = v31;
        v39 = v32;
        if (v29 < 0)
        {
          std::string::__init_copy_ctor_external(&v40, *a2, v30);
          v33 = v38;
          v29 = v39;
        }

        else
        {
          v40 = *a2;
          v33 = a2;
        }

        v34 = llvm::StringMapImpl::hash(v33, v29, v30);
        v35 = llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace_with_hash<std::string>(a1, v33, v29, v34, &v40);
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          v36 = v35;
          operator delete(v40.__r_.__value_.__l.__data_);
          v35 = v36;
        }

        ++v26;
      }

      while ((v35 & 1) == 0);
    }
  }

  else if ((v24 & 1) == 0)
  {
    goto LABEL_75;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a4, *a2, *(a2 + 8));
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *a2;
    a4->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }
}

void sub_1E078CECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MPSSymbolTable::insertOp(int8x8_t *this@<X0>, unint64_t a2@<X1>, NSString *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = [(NSString *)v7 UTF8String];
    v10 = strlen(v9);
    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v10;
    if (v10 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v33) = v10;
    if (v10)
    {
      memmove(__dst, v9, v10);
      *(__dst + v12) = 0;
      if (!a2)
      {
LABEL_14:
        MPSSymbolTable::insertOpInSymbolTable(this, __dst, v11, a4);
        goto LABEL_50;
      }
    }

    else
    {
      LOBYTE(__dst[0]) = 0;
      if (!a2)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v30 = *(*(a2 + 48) + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(&v30);
    if (AttrData)
    {
      v15 = v13;
      if (v13 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v13 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v33) = v13;
      if (v13)
      {
        memmove(__dst, AttrData, v13);
      }

      *(__dst + v15) = 0;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v33 = 0;
    }
  }

  v30 = a2;
  v16 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(&this[3], &v30);
  if (v16)
  {
    if (*(v16 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(a4, v16[3], v16[4]);
      goto LABEL_50;
    }

    v18 = *(v16 + 3);
    *(a4 + 16) = v16[5];
    *a4 = v18;
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_51:
    operator delete(__dst[0]);
    goto LABEL_52;
  }

  MPSSymbolTable::insertOpInSymbolTable(this, __dst, v17, a4);
  v30 = a2;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
    a2 = v30;
  }

  else
  {
    __p = *a4;
  }

  v19 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v20 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v19 >> 47) ^ v19);
  v21 = v20 ^ (v20 >> 47);
  v22 = 0x9DDFEA08EB382D69 * v21;
  v23 = this[4];
  if (!*&v23)
  {
    goto LABEL_48;
  }

  v24 = vcnt_s8(v23);
  v24.i16[0] = vaddlv_u8(v24);
  if (v24.u32[0] > 1uLL)
  {
    v25 = 0x9DDFEA08EB382D69 * v21;
    if (v22 >= *&v23)
    {
      v25 = v22 % *&v23;
    }
  }

  else
  {
    v25 = v22 & (*&v23 - 1);
  }

  v26 = *(*&this[3] + 8 * v25);
  if (!v26 || (v27 = *v26) == 0)
  {
LABEL_48:
    operator new();
  }

  if (v24.u32[0] < 2uLL)
  {
    while (1)
    {
      v29 = v27[1];
      if (v29 == v22)
      {
        if (v27[2] == a2)
        {
          goto LABEL_49;
        }
      }

      else if ((v29 & (*&v23 - 1)) != v25)
      {
        goto LABEL_48;
      }

      v27 = *v27;
      if (!v27)
      {
        goto LABEL_48;
      }
    }
  }

  while (1)
  {
    v28 = v27[1];
    if (v28 == v22)
    {
      break;
    }

    if (v28 >= *&v23)
    {
      v28 %= *&v23;
    }

    if (v28 != v25)
    {
      goto LABEL_48;
    }

LABEL_38:
    v27 = *v27;
    if (!v27)
    {
      goto LABEL_48;
    }
  }

  if (v27[2] != a2)
  {
    goto LABEL_38;
  }

LABEL_49:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_50:
  if (SHIBYTE(v33) < 0)
  {
    goto LABEL_51;
  }

LABEL_52:
}

void sub_1E078D494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (*(v23 + 23) < 0)
  {
    operator delete(*v23);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_1E078EB88(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E078F59C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_1E07906A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, void *a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E0790B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  llvm::raw_ostream::~raw_ostream(va);
  if (*(v12 - 17) < 0)
  {
    operator delete(*(v12 - 40));
  }

  _Unwind_Resume(a1);
}

void sub_1E0792048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  std::__tree<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>>>::destroy(a37);

  _Unwind_Resume(a1);
}

llvm **llvm::unique_function<BOOL ()(mlir::Location)>::~unique_function(llvm *a1)
{
  v1 = a1;
  v2 = *(a1 + 3);
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(*v1, v1[1]);
    }
  }

  return v1;
}

{
  v1 = a1;
  v2 = *(a1 + 3);
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(*v1, v1[1]);
    }
  }

  return v1;
}

uint64_t llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace_with_hash<std::string>(llvm::StringMapImpl *a1, const void *a2, size_t a3, unsigned int a4, uint64_t a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = *a1;
  v11 = v9;
  v12 = *(*a1 + 8 * v9);
  if (v12 == -8)
  {
    --*(a1 + 4);
  }

  else if (v12)
  {
    return 0;
  }

  buffer = llvm::allocate_buffer(a3 + 33, 8uLL);
  v15 = buffer;
  v16 = buffer + 32;
  if (a3)
  {
    memcpy(buffer + 32, a2, a3);
  }

  v16[a3] = 0;
  *v15 = a3;
  *(v15 + 8) = *a5;
  *(v15 + 3) = *(a5 + 16);
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  *(v10 + 8 * v11) = v15;
  ++*(a1 + 3);
  v17 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v11));
  if (*v17)
  {
    v18 = *v17 == -8;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    do
    {
      v20 = v17[1];
      ++v17;
      v19 = v20;
      if (v20)
      {
        v21 = v19 == -8;
      }

      else
      {
        v21 = 1;
      }
    }

    while (v21);
  }

  return 1;
}

void std::__shared_ptr_emplace<mlir::MLIRContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B4BBA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12E5B90);
}

void std::__tree<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void sub_1E0793FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  if (!__n)
  {
    return this;
  }

  v5 = this;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n > value - end)
  {
    begin = this->__begin_;
    v9 = __n + end - this->__begin_;
    if (v9 >> 62)
    {
      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v10 = value - begin;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v27 = 4 * (__position.__i_ - begin);
    v28 = (v27 + 4 * __n);
    v29 = *__x;
    v30 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v31 = v27;
    if (v30 < 7)
    {
      goto LABEL_59;
    }

    v32 = v30 + 1;
    v31 = (v27 + 4 * (v32 & 0x7FFFFFFFFFFFFFF8));
    v33 = vdupq_n_s32(v29);
    v34 = (v27 + 16);
    v35 = v32 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v34[-1] = v33;
      *v34 = v33;
      v34 += 2;
      v35 -= 8;
    }

    while (v35);
    if (v32 != (v32 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_59:
      do
      {
        *v31++ = v29;
      }

      while (v31 != v28);
    }

    v36 = this->__end_ - __position.__i_;
    memcpy((v27 + 4 * __n), __position.__i_, v36);
    v37 = (v28 + v36);
    v5[1].__i_ = __position.__i_;
    i = v5->__i_;
    v39 = (__position.__i_ - v5->__i_);
    v40 = (v27 - v39);
    this = memcpy((v27 - v39), v5->__i_, v39);
    v5->__i_ = v40;
    v5[1].__i_ = v37;
    v5[2].__i_ = 0;
    if (i)
    {

      operator delete(i);
    }

    return this;
  }

  v12 = end - __position.__i_;
  v13 = 4 * __n;
  if (__n <= v12)
  {
    v14 = this->__end_;
    v12 = __n;
    v22 = &__position.__i_[v13 / 4];
    v23 = &end[v13 / 0xFFFFFFFFFFFFFFFCLL];
    v24 = v14;
    if (end < v13)
    {
      goto LABEL_40;
    }

    goto LABEL_22;
  }

  v14 = &end[__n - v12];
  v15 = *__x;
  v16 = v13 - (end - __position.__i_) - 4;
  v17 = this->__end_;
  if (v16 < 0x1C)
  {
    goto LABEL_60;
  }

  v18 = (v16 >> 2) + 1;
  v17 = &end[v18 & 0x7FFFFFFFFFFFFFF8];
  v19 = vdupq_n_s32(v15);
  v20 = (end + 4);
  v21 = v18 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v20[-1] = v19;
    *v20 = v19;
    v20 += 2;
    v21 -= 8;
  }

  while (v21);
  if (v18 != (v18 & 0x7FFFFFFFFFFFFFF8))
  {
LABEL_60:
    do
    {
      *v17++ = v15;
    }

    while (v17 != v14);
  }

  this->__end_ = v14;
  if (end != __position.__i_)
  {
    v22 = &__position.__i_[v13 / 4];
    v23 = &v14[v13 / 0xFFFFFFFFFFFFFFFCLL];
    v24 = &end[__n - v12];
    if (&v14[v13 / 0xFFFFFFFFFFFFFFFCLL] >= end)
    {
      goto LABEL_40;
    }

LABEL_22:
    v25 = v23 + 1;
    if (end > v23 + 1)
    {
      v25 = end;
    }

    v26 = &v25[v13 / 4] + ~v14;
    if (v26 > 0x1B)
    {
      v24 = v14;
      if (4 * __n >= 0x20)
      {
        v41 = (v26 >> 2) + 1;
        v42 = v41 & 0x7FFFFFFFFFFFFFF8;
        v43 = &v23[v42];
        v24 = &v14[v42];
        v44 = v14 + 4;
        v45 = (v23 + 4);
        v46 = v41 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v47 = *v45;
          *(v44 - 1) = *(v45 - 1);
          *v44 = v47;
          v44 += 2;
          v45 += 2;
          v46 -= 8;
        }

        while (v46);
        v23 = v43;
        if (v41 == (v41 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_40:
          this->__end_ = v24;
          if (v14 != v22)
          {
            v49 = __n;
            v50 = __x;
            this = memmove(v22, __position.__i_, v14 - v22);
            __n = v49;
            __x = v50;
          }

          if (__position.__i_ <= __x)
          {
            if (v5[1].__i_ <= __x)
            {
              v51 = 0;
            }

            else
            {
              v51 = __n;
            }

            __x += v51;
          }

          v52 = *__x;
          if (v12 >= 8)
          {
            v53 = &__position.__i_[v12 & 0xFFFFFFFFFFFFFFF8];
            v54 = v12 & 7;
            v55 = vdupq_n_s32(v52);
            v56 = (__position.__i_ + 4);
            v57 = v12 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              *(v56 - 1) = v55;
              *v56 = v55;
              v56 += 8;
              v57 -= 8;
            }

            while (v57);
            if (v12 == (v12 & 0xFFFFFFFFFFFFFFF8))
            {
              return this;
            }
          }

          else
          {
            v53 = __position.__i_;
            v54 = v12;
          }

          do
          {
            *v53++ = v52;
            --v54;
          }

          while (v54);
          return this;
        }
      }
    }

    else
    {
      v24 = v14;
    }

    do
    {
      v48 = *v23++;
      *v24++ = v48;
    }

    while (v23 < end);
    goto LABEL_40;
  }

  return this;
}

id padSizeScaleOffsetForLayout(MPSGraph *a1, MPSGraphTensor *a2, MPSGraphTensor *a3, MPSGraphTensor *a4, MPSGraphTensorNamedDataLayout a5, NSString *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v33 = a1;
  v34 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (a5 >= MPSGraphTensorNamedDataLayoutHW || ((0x33u >> a5) & 1) == 0)
  {
    v19 = v34;
    v16 = v11;
    v17 = v12;
    goto LABEL_7;
  }

  v14 = qword_1E86D4B60[a5];
  v32 = qword_1E86D4B90[a5];
  v15 = v34;
  v16 = v11;
  v17 = v12;
  if (!v15)
  {
    goto LABEL_26;
  }

  if (v13)
  {
    v18 = [(NSString *)v13 stringByAppendingString:@"/pad0"];
  }

  else
  {
    v18 = @"resize/pad0";
  }

  v19 = [(MPSGraph *)v33 padTensor:v15 withPaddingMode:0 leftPadding:v14 rightPadding:v32 constantValue:v18 name:-1.0];

  if (v13)
  {

    v15 = v19;
LABEL_26:
    if (!v16)
    {
LABEL_36:
      if (!v17)
      {
        v19 = v15;
        goto LABEL_7;
      }

      if (v13)
      {
        v28 = [(NSString *)v13 stringByAppendingString:@"/pad2"];
        v29 = 0;
      }

      else
      {
        v28 = @"resize/pad2";
        v29 = 1;
      }

      v19 = v15;
      goto LABEL_42;
    }

    if (v13)
    {
      v25 = [(NSString *)v13 stringByAppendingString:@"/pad1"];
      v31 = 0;
    }

    else
    {
      v25 = @"resize/pad1";
      v31 = 1;
    }

    v19 = v15;
LABEL_33:
    v26 = v14;
    v27 = [(MPSGraph *)v33 padTensor:v16 withPaddingMode:0 leftPadding:v14 rightPadding:v32 constantValue:v25 name:1.0];

    if ((v31 & 1) == 0)
    {
    }

    v15 = v19;
    v16 = v27;
    v14 = v26;
    goto LABEL_36;
  }

  if (v16)
  {
    v25 = @"resize/pad1";
    v31 = 1;
    goto LABEL_33;
  }

  if (!v17)
  {
    v17 = 0;
    goto LABEL_7;
  }

  v28 = @"resize/pad2";
  v29 = 1;
LABEL_42:
  v30 = [(MPSGraph *)v33 padTensor:v17 withPaddingMode:0 leftPadding:v14 rightPadding:v32 constantValue:v28 name:0.0];

  if ((v29 & 1) == 0)
  {
  }

  v17 = v30;
LABEL_7:
  v20 = v19;
  if (v19)
  {
    v35 = v19;
    v21 = v16;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_12:
    v21 = [MEMORY[0x1E695DFB0] null];
    v36 = v21;
    v22 = v17;
    if (v17)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v20 = [MEMORY[0x1E695DFB0] null];
  v35 = v20;
  v21 = v16;
  if (!v16)
  {
    goto LABEL_12;
  }

LABEL_9:
  v36 = v21;
  v22 = v17;
  if (v17)
  {
    goto LABEL_14;
  }

LABEL_13:
  v22 = [MEMORY[0x1E695DFB0] null];
LABEL_14:
  v37 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:3];
  if (!v17)
  {
  }

  if (!v16)
  {
  }

  if (!v19)
  {
  }

  return v23;
}

void sub_1E0794AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, _Unwind_Exception *exception_object, void *a12, void *a13)
{
  if ((v19 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void GPU::MakeListOpHandler::encodeOp(GPU::MakeListOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v11 = *(this + 3);
  if (*(v11 + 9))
  {
    v3 = v11 - 16;
  }

  else
  {
    v3 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  ResultElementType = mlir::mpsx::FPToIntClampedOp::getResultElementType(&v11);
  v6 = getMPSGraphType(ResultElementType);
  if ((mlir::mpsx::MakeListOp::getMaxSize(&v11) & 0x100000000) != 0)
  {
    MaxSize = mlir::mpsx::MakeListOp::getMaxSize(&v11);
    if ((MaxSize & 0x100000000) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v7 = MaxSize;
  }

  else
  {
    v7 = -1;
  }

  v9 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  if (v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = [[MPSGraphListData alloc] initEmptyListWithDevice:*(*(this + 2) + 48) maxSize:v7 elementType:v6];

  BaseRuntime::setTensorDataToDataMap(*(this + 2), NextResultAtOffset, v10);
}

void GPU::ListPushBackOpHandler::encodeOp(GPU::ListPushBackOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v3 = *(this + 3);
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
  v7 = *(*(v3 + 72) + 56);
  v8 = (*(**(this + 2) + 48))(*(this + 2), v4, 0);
  if (!v8 || (objc_opt_class(), objc_opt_isKindOfClass(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v16 = v8;
  v9 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  if (!v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ([v16 maxSize] != -1)
  {
    v10 = [v16 list];
    [v10 count];
    [v16 maxSize];
  }

  if ([v16 maxSize] != -1)
  {
    v11 = [v16 list];
    v12 = [v11 count];
    v13 = [v16 maxSize];

    if (v12 >= v13)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  v14 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  if (v14 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15 = [v16 clonedList];

  BaseRuntime::setTensorDataToDataMap(*(this + 2), NextResultAtOffset, v15);
  [v15 pushBackElement:v9];
}

void GPU::ListPopBackOpHandler::encodeOp(GPU::ListPopBackOpHandler *this, void **a2)
{
  v4 = *(this + 3);
  v5 = *(*(v4 + 72) + 24);
  if (*(v4 + 36))
  {
    v6 = v4 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 1);
  v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  if (*(v4 + 36))
  {
    v9 = v4 - 16;
  }

  else
  {
    v9 = 0;
  }

  v10 = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  v11 = (*(**(this + 2) + 48))(*(this + 2), v5, 0);
  if (!v11 || (objc_opt_class(), objc_opt_isKindOfClass(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v25 = v11;
  v12 = [v25 elementType];
  v13 = [v25 list];
  [v13 count];

  v14 = [v25 list];
  v15 = [v14 count];

  if (!v15 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = (*(**(this + 2) + 48))(*(this + 2), v10, 0);
  if (v16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = [v25 clonedList];

  v18 = [v17 popBackElement];
  if (!v18 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  BaseRuntime::setTensorDataToDataMap(*(this + 2), v10, v17);
  v19 = (*(**(this + 2) + 48))(*(this + 2), v8, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v12;
    v20 = a2;
    v21 = [v18 mpsndarray];
    if (!v21 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v22 = *(this + 2);
    v23 = GPU::EncodeDescriptor::getcomputeEncoder(v20);
    GPURegionRuntime::copyNDArrayToTarget(v22, v23, v20[1], this + 15, v21, v19, v8, 0);

    v12 = v24;
  }

  else
  {
    if (v19 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    BaseRuntime::setTensorDataToDataMap(*(this + 2), v8, v18);
  }
}

void GPU::MakeListOpHandler::~MakeListOpHandler(GPU::MakeListOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ListPushBackOpHandler::~ListPushBackOpHandler(GPU::ListPushBackOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ListPopBackOpHandler::~ListPopBackOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void sub_1E07986D8(_Unwind_Exception *a1)
{
  if (v4)
  {

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E07986C0);
}

void sub_1E0798810(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1E0798E20()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E0798DD8);
}

void sub_1E0798E30()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E0798DDCLL);
}

void sub_1E0798E40()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E0798DE0);
}

void sub_1E0798E50()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E0798DE4);
}

void sub_1E0798E60()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E0798DE8);
}

void sub_1E07998C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, void *a25, void *a26, void *a27)
{
  if (*(v30 - 128))
  {
  }

  _Unwind_Resume(a1);
}

void sub_1E0799F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  mlir::OperationState::~OperationState(&a38);

  _Unwind_Resume(a1);
}

void sub_1E079A18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_1E079C9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E079CF90(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ConstantOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, uint64_t a3, unsigned int a4, void *a5)
{
  v9 = a5;
  v28 = 260;
  v27[0] = a3;
  StringAttr = mlir::Builder::getStringAttr(a2, v27);
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

    v26 = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = (&__dst + v15);
  }

  else
  {
    v26 = 12;
    v24 = 1953390964;
    __dst = *"mps.constant";
    v16 = &v25;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, &__dst, v11, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v28) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v27[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v28) = v18;
  v19 = mlir::Builder::getStringAttr(a2, v27);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    operator delete(__dst);
    goto LABEL_16;
  }

  if (v26 < 0)
  {
    goto LABEL_18;
  }

LABEL_16:

  return v20;
}

void sub_1E079D7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_1E079DAA4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1E079E1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E079E240);
}

void sub_1E079E230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E079E240);
  }

  JUMPOUT(0x1E079E1FCLL);
}

void sub_1E079E4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);

    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else
  {

    if ((a14 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a9);

  _Unwind_Resume(a1);
}

void sub_1E079E8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void EmitterObjC::helper<mlir::mps::PoolAvgOp>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v150 = *MEMORY[0x1E69E9840];
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PoolAvgOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v146 = v5;
  v6 = *(*(v5 + 72) + 24);
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v146);
  Strides = mlir::mps::Conv3DOp::getStrides(&v146);
  v142 = 0;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v146);
  v141[0] = 0;
  v141[1] = 0;
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v146);
  if (PaddingStyle >= 5)
  {
    MEMORY[0x1E12E55D0](v141, "MPSGraphPaddingStyleTF_SAME");
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else
  {
    MEMORY[0x1E12E55D0](v141, off_1E86D4BC0[PaddingStyle]);
  }

  Offsets = mlir::mps::StencilOp::getOffsets(&v146);
  v140 = v10;
  *(&v138.__r_.__value_.__s + 23) = 2;
  strcpy(&v138, "@[");
  *(&v137.__r_.__value_.__s + 23) = 2;
  strcpy(&v137, "@[");
  *(&v136.__r_.__value_.__s + 23) = 2;
  strcpy(&v136, "@[");
  *(&v135.__r_.__value_.__s + 23) = 2;
  strcpy(&v135, "@[");
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&WindowSizes, &v147);
  v111 = v6;
  v113 = NextResultAtOffset;
  size = v147.__r_.__value_.__l.__size_;
  v121 = v147.__r_.__value_.__r.__words[0];
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&Strides, &v147);
  v12 = v147.__r_.__value_.__l.__size_;
  v119 = v147.__r_.__value_.__r.__words[0];
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&InputAttributeNames, &v147);
  v112 = a1;
  if ((v140 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v13 = v147.__r_.__value_.__l.__size_;
  v115 = a3;
  v117 = v147.__r_.__value_.__r.__words[0];
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&Offsets, &v147);
  v14 = *&v147.__r_.__value_.__l.__data_;
  v15 = 4;
  do
  {
    while (1)
    {
      if (v15 != 4)
      {
        v17 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = v138.__r_.__value_.__l.__size_;
        }

        if (v18 + 2 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v18 + 2 >= 0x17)
        {
          operator new();
        }

        memset(&v147, 0, sizeof(v147));
        *(&v147.__r_.__value_.__s + 23) = v18 + 2;
        if (v18)
        {
          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &v138;
          }

          else
          {
            v19 = v138.__r_.__value_.__r.__words[0];
          }

          memmove(&v147, v19, v18);
        }

        strcpy(&v147 + v18, ", ");
        if (v17 < 0)
        {
          operator delete(v138.__r_.__value_.__l.__data_);
        }

        v138 = v147;
        v20 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = v137.__r_.__value_.__l.__size_;
        }

        if (v21 + 2 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v21 + 2 >= 0x17)
        {
          operator new();
        }

        memset(&v147, 0, sizeof(v147));
        *(&v147.__r_.__value_.__s + 23) = v21 + 2;
        if (v21)
        {
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v137;
          }

          else
          {
            v22 = v137.__r_.__value_.__r.__words[0];
          }

          memmove(&v147, v22, v21);
        }

        strcpy(&v147 + v21, ", ");
        if (v20 < 0)
        {
          operator delete(v137.__r_.__value_.__l.__data_);
        }

        v137 = v147;
        v23 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
        if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v24 = v136.__r_.__value_.__l.__size_;
        }

        if (v24 + 2 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v24 + 2 >= 0x17)
        {
          operator new();
        }

        memset(&v147, 0, sizeof(v147));
        *(&v147.__r_.__value_.__s + 23) = v24 + 2;
        if (v24)
        {
          if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &v136;
          }

          else
          {
            v25 = v136.__r_.__value_.__r.__words[0];
          }

          memmove(&v147, v25, v24);
        }

        strcpy(&v147 + v24, ", ");
        if (v23 < 0)
        {
          operator delete(v136.__r_.__value_.__l.__data_);
        }

        v136 = v147;
      }

      v147.__r_.__value_.__r.__words[0] = v121;
      v147.__r_.__value_.__l.__size_ = size;
      __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
      UInt = mlir::IntegerAttr::getUInt(&__p);
      v124 = v15;
      v147.__r_.__value_.__r.__words[0] = v119;
      v147.__r_.__value_.__l.__size_ = v12;
      __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
      v27 = mlir::IntegerAttr::getUInt(&__p);
      v147.__r_.__value_.__r.__words[0] = v117;
      v147.__r_.__value_.__l.__size_ = v13;
      v28 = v13;
      __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
      v29 = mlir::IntegerAttr::getUInt(&__p);
      if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v138.__r_.__value_.__l.__size_;
      }

      if (v30 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v31 = v29;
      if (v30 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v30 + 1;
      if (v30)
      {
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v138;
        }

        else
        {
          v32 = v138.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v32, v30);
      }

      *(&v147.__r_.__value_.__l.__data_ + v30) = 64;
      std::to_string(&__p, UInt);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = __p.__r_.__value_.__l.__size_;
      }

      v35 = std::string::append(&v147, p_p, v34);
      v36 = v35->__r_.__value_.__r.__words[0];
      *v148 = v35->__r_.__value_.__l.__size_;
      *&v148[7] = *(&v35->__r_.__value_.__r.__words[1] + 7);
      v37 = HIBYTE(v35->__r_.__value_.__r.__words[2]);
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      v138.__r_.__value_.__r.__words[0] = v36;
      v138.__r_.__value_.__l.__size_ = *v148;
      *(&v138.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
      *(&v138.__r_.__value_.__s + 23) = v37;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_77;
        }
      }

      else if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      operator delete(v147.__r_.__value_.__l.__data_);
LABEL_77:
      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = v137.__r_.__value_.__l.__size_;
      }

      if (v38 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v38 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v38 + 1;
      if (v38)
      {
        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = &v137;
        }

        else
        {
          v39 = v137.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v39, v38);
      }

      *(&v147.__r_.__value_.__l.__data_ + v38) = 64;
      std::to_string(&__p, v27);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &__p;
      }

      else
      {
        v40 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = __p.__r_.__value_.__l.__size_;
      }

      v42 = std::string::append(&v147, v40, v41);
      v43 = v42->__r_.__value_.__r.__words[0];
      *v148 = v42->__r_.__value_.__l.__size_;
      *&v148[7] = *(&v42->__r_.__value_.__r.__words[1] + 7);
      v44 = HIBYTE(v42->__r_.__value_.__r.__words[2]);
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      v137.__r_.__value_.__r.__words[0] = v43;
      v137.__r_.__value_.__l.__size_ = *v148;
      *(&v137.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
      *(&v137.__r_.__value_.__s + 23) = v44;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_98;
        }
      }

      else if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_98;
      }

      operator delete(v147.__r_.__value_.__l.__data_);
LABEL_98:
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v136.__r_.__value_.__l.__size_;
      }

      if (v45 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v45 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v45 + 1;
      if (v45)
      {
        if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v136;
        }

        else
        {
          v46 = v136.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v46, v45);
      }

      *(&v147.__r_.__value_.__l.__data_ + v45) = 64;
      std::to_string(&__p, v31);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &__p;
      }

      else
      {
        v47 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v48 = __p.__r_.__value_.__l.__size_;
      }

      v49 = std::string::append(&v147, v47, v48);
      v50 = v49->__r_.__value_.__r.__words[0];
      *v148 = v49->__r_.__value_.__l.__size_;
      *&v148[7] = *(&v49->__r_.__value_.__r.__words[1] + 7);
      v51 = HIBYTE(v49->__r_.__value_.__r.__words[2]);
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      v136.__r_.__value_.__r.__words[0] = v50;
      v136.__r_.__value_.__l.__size_ = *v148;
      *(&v136.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
      *(&v136.__r_.__value_.__s + 23) = v51;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      v16 = v28;
      if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_119;
      }

LABEL_14:
      v13 = v16 + 1;
      ++v12;
      ++size;
      v15 = v124 - 1;
      if (v124 == 1)
      {
        goto LABEL_125;
      }
    }

    v16 = v28;
    if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_119:
    operator delete(v147.__r_.__value_.__l.__data_);
    v13 = v16 + 1;
    ++v12;
    ++size;
    v15 = v124 - 1;
  }

  while (v124 != 1);
LABEL_125:
  v52 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v138.__r_.__value_.__l.__size_;
  }

  if (v53 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v53 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v53 + 1;
  if (v53)
  {
    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = &v138;
    }

    else
    {
      v54 = v138.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v54, v53);
  }

  *(&v147.__r_.__value_.__l.__data_ + v53) = 93;
  if (v52 < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  v138 = v147;
  v55 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v56 = v137.__r_.__value_.__l.__size_;
  }

  if (v56 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v56 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v56 + 1;
  if (v56)
  {
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = &v137;
    }

    else
    {
      v57 = v137.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v57, v56);
  }

  *(&v147.__r_.__value_.__l.__data_ + v56) = 93;
  if (v55 < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  v137 = v147;
  v58 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v59 = v136.__r_.__value_.__l.__size_;
  }

  if (v59 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v59 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v59 + 1;
  if (v59)
  {
    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v136;
    }

    else
    {
      v60 = v136.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v60, v59);
  }

  *(&v147.__r_.__value_.__l.__data_ + v59) = 93;
  if (v58 < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  v136 = v147;
  *&v147.__r_.__value_.__l.__data_ = v14;
  __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
  v61 = mlir::IntegerAttr::getUInt(&__p);
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v62 = v135.__r_.__value_.__l.__size_;
  }

  if (v62 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_303:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v63 = v61;
  if (v62 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v62 + 1;
  if (v62)
  {
    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &v135;
    }

    else
    {
      v64 = v135.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v64, v62);
  }

  *(&v147.__r_.__value_.__l.__data_ + v62) = 64;
  std::to_string(&__p, v63);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v65 = &__p;
  }

  else
  {
    v65 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v66 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v66 = __p.__r_.__value_.__l.__size_;
  }

  v67 = std::string::append(&v147, v65, v66);
  v68 = v67->__r_.__value_.__r.__words[0];
  *v148 = v67->__r_.__value_.__l.__size_;
  *&v148[7] = *(&v67->__r_.__value_.__r.__words[1] + 7);
  v69 = HIBYTE(v67->__r_.__value_.__r.__words[2]);
  v67->__r_.__value_.__l.__size_ = 0;
  v67->__r_.__value_.__r.__words[2] = 0;
  v67->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  v135.__r_.__value_.__r.__words[0] = v68;
  v135.__r_.__value_.__l.__size_ = *v148;
  *(&v135.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
  *(&v135.__r_.__value_.__s + 23) = v69;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_290;
    }
  }

  else
  {
    if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_185;
    }

LABEL_290:
    operator delete(v147.__r_.__value_.__l.__data_);
  }

LABEL_185:
  v70 = *(&v14 + 1) + 1;
  v71 = 7;
  while (2)
  {
    while (2)
    {
      v72 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v73 = v135.__r_.__value_.__l.__size_;
      }

      if (v73 + 2 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v73 + 2 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v73 + 2;
      if (v73)
      {
        if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v74 = &v135;
        }

        else
        {
          v74 = v135.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v74, v73);
      }

      strcpy(&v147 + v73, ", ");
      if (v72 < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      v135 = v147;
      v147.__r_.__value_.__r.__words[0] = v14;
      v147.__r_.__value_.__l.__size_ = v70;
      __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
      v75 = mlir::IntegerAttr::getUInt(&__p);
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v76 = v135.__r_.__value_.__l.__size_;
      }

      if (v76 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_303;
      }

      v77 = v75;
      if (v76 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v76 + 1;
      if (v76)
      {
        if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v78 = &v135;
        }

        else
        {
          v78 = v135.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v78, v76);
      }

      *(&v147.__r_.__value_.__l.__data_ + v76) = 64;
      std::to_string(&__p, v77);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v79 = &__p;
      }

      else
      {
        v79 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v80 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v80 = __p.__r_.__value_.__l.__size_;
      }

      v81 = std::string::append(&v147, v79, v80);
      v82 = v81->__r_.__value_.__r.__words[0];
      *v148 = v81->__r_.__value_.__l.__size_;
      *&v148[7] = *(&v81->__r_.__value_.__r.__words[1] + 7);
      v83 = HIBYTE(v81->__r_.__value_.__r.__words[2]);
      v81->__r_.__value_.__l.__size_ = 0;
      v81->__r_.__value_.__r.__words[2] = 0;
      v81->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      v135.__r_.__value_.__r.__words[0] = v82;
      v135.__r_.__value_.__l.__size_ = *v148;
      *(&v135.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
      *(&v135.__r_.__value_.__s + 23) = v83;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
        {
          break;
        }

        goto LABEL_187;
      }

      if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_187:
        ++v70;
        if (!--v71)
        {
          goto LABEL_223;
        }

        continue;
      }

      break;
    }

    operator delete(v147.__r_.__value_.__l.__data_);
    ++v70;
    if (--v71)
    {
      continue;
    }

    break;
  }

LABEL_223:
  v84 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v85 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v85 = v135.__r_.__value_.__l.__size_;
  }

  if (v85 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v85 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v85 + 1;
  if (v85)
  {
    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v86 = &v135;
    }

    else
    {
      v86 = v135.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v86, v85);
  }

  *(&v147.__r_.__value_.__l.__data_ + v85) = 93;
  if (v84 < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  v135 = v147;
  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v146);
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v146);
  v89 = MEMORY[0x1E696AEC0];
  (*(*v112 + 32))(&v147, v112, v113);
  if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v90 = &v147;
  }

  else
  {
    v90 = v147.__r_.__value_.__r.__words[0];
  }

  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = &v138;
  }

  else
  {
    v91 = v138.__r_.__value_.__r.__words[0];
  }

  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v92 = &v137;
  }

  else
  {
    v92 = v137.__r_.__value_.__r.__words[0];
  }

  v93 = &v136;
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v93 = v136.__r_.__value_.__r.__words[0];
  }

  v123 = v93;
  v125 = v92;
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v94 = &v135;
  }

  else
  {
    v94 = v135.__r_.__value_.__r.__words[0];
  }

  v95 = v141;
  if (v142 < 0)
  {
    v95 = v141[0];
  }

  v120 = v95;
  v122 = v94;
  (*(*v112 + 32))(&__p, v112, v113);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v96 = &__p;
  }

  else
  {
    v96 = __p.__r_.__value_.__r.__words[0];
  }

  v118 = v96;
  if (InferredResultTypes)
  {
    v97 = "YES";
  }

  else
  {
    v97 = "NO";
  }

  (*(*v112 + 32))(v148, v112, v113);
  v114 = v91;
  if (v149 >= 0)
  {
    v98 = v148;
  }

  else
  {
    v98 = *v148;
  }

  if (ResetAfter)
  {
    v99 = "YES";
  }

  else
  {
    v99 = "NO";
  }

  (*(*v112 + 32))(v132, v112, v113);
  if (v133 >= 0)
  {
    v100 = v132;
  }

  else
  {
    v100 = v132[0];
  }

  v101 = v115;
  if (*(v115 + 23) < 0)
  {
    v101 = *v115;
  }

  v116 = v101;
  v131 = v111;
  v129[0] = &v131;
  v102 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((v112 + 256), &v131);
  v103 = v102 + 3;
  if (*(v102 + 47) < 0)
  {
    v103 = *v103;
  }

  (*(*v112 + 32))(v129, v112, v113);
  v104 = v130;
  v105 = v129[0];
  v127 = 0;
  LOBYTE(v126) = 0;
  EmitObjC::emitTensorName(v112, v113, &v126, &v128);
  v106 = v129;
  if (v104 < 0)
  {
    v106 = v105;
  }

  if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v107 = &v128;
  }

  else
  {
    v107 = v128.__r_.__value_.__r.__words[0];
  }

  v108 = [v89 stringWithFormat:@"\n    MPSGraphPooling4DOpDescriptor *%spoolDesc =\n    [MPSGraphPooling4DOpDescriptor descriptorWithKernelSizes:%s\n                                                     strides:%s\n                                               dilationRates:%s\n                                               paddingValues:%s\n                                                paddingStyle:%s]\n    %spoolDesc.ceilMode = %s;\n    %spoolDesc.includeZeroPadToAverage = %s;\n    \n    MPSGraphTensor *%s =\n    [graph %sPooling4DWithSourceTensor:%s\n                             descriptor:%spoolDesc\n                                   name:%s];\n    ", v90, v114, v125, v123, v122, v120, v118, v97, v98, v99, v100, v116, v103, v106, v107];;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
    if (v127 < 0)
    {
      goto LABEL_292;
    }

LABEL_278:
    if ((v130 & 0x80000000) == 0)
    {
      goto LABEL_279;
    }

LABEL_293:
    operator delete(v129[0]);
    if (v133 < 0)
    {
      goto LABEL_294;
    }

LABEL_280:
    if ((v149 & 0x80000000) == 0)
    {
      goto LABEL_281;
    }

LABEL_295:
    operator delete(*v148);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_296;
    }

LABEL_282:
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_297:
      operator delete(v147.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((v127 & 0x80000000) == 0)
    {
      goto LABEL_278;
    }

LABEL_292:
    operator delete(v126);
    if (v130 < 0)
    {
      goto LABEL_293;
    }

LABEL_279:
    if ((v133 & 0x80000000) == 0)
    {
      goto LABEL_280;
    }

LABEL_294:
    operator delete(v132[0]);
    if (v149 < 0)
    {
      goto LABEL_295;
    }

LABEL_281:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_282;
    }

LABEL_296:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_297;
    }
  }

  v109 = [*(v112 + 216) stringByAppendingString:v108];
  v110 = *(v112 + 216);
  *(v112 + 216) = v109;

  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_299;
    }

LABEL_285:
    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_286;
    }

LABEL_300:
    operator delete(v137.__r_.__value_.__l.__data_);
    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_301;
    }

LABEL_287:
    if (SHIBYTE(v142) < 0)
    {
LABEL_302:
      operator delete(v141[0]);
    }
  }

  else
  {
    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_285;
    }

LABEL_299:
    operator delete(v136.__r_.__value_.__l.__data_);
    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_300;
    }

LABEL_286:
    if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_287;
    }

LABEL_301:
    operator delete(v138.__r_.__value_.__l.__data_);
    if (SHIBYTE(v142) < 0)
    {
      goto LABEL_302;
    }
  }
}

void sub_1E07A0D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a56 < 0)
  {
    operator delete(__p);
    if ((a63 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a63 & 0x80000000) == 0)
  {
LABEL_3:
    if (a70 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  operator delete(a58);
  if (a70 < 0)
  {
LABEL_4:
    operator delete(a65);
    if ((a73 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  if ((a73 & 0x80000000) == 0)
  {
LABEL_5:
    if (*(v73 - 217) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a72);
  if (*(v73 - 217) < 0)
  {
LABEL_6:
    operator delete(*(v73 - 240));
    _Unwind_Resume(a1);
  }

LABEL_11:
  _Unwind_Resume(a1);
}

void EmitterObjC::helper<mlir::mps::PoolMaxOp>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v150 = *MEMORY[0x1E69E9840];
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PoolMaxOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v146 = v5;
  v6 = *(*(v5 + 72) + 24);
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  WindowSizes = mlir::mps::PoolMaxGradientOp::getWindowSizes(&v146);
  Strides = mlir::mps::PoolMaxGradientOp::getStrides(&v146);
  v142 = 0;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v146);
  v141[0] = 0;
  v141[1] = 0;
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v146);
  if (WeightsLayout >= 5)
  {
    MEMORY[0x1E12E55D0](v141, "MPSGraphPaddingStyleTF_SAME");
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else
  {
    MEMORY[0x1E12E55D0](v141, off_1E86D4BC0[WeightsLayout]);
  }

  Offsets = mlir::mps::StencilOp::getOffsets(&v146);
  v140 = v10;
  *(&v138.__r_.__value_.__s + 23) = 2;
  strcpy(&v138, "@[");
  *(&v137.__r_.__value_.__s + 23) = 2;
  strcpy(&v137, "@[");
  *(&v136.__r_.__value_.__s + 23) = 2;
  strcpy(&v136, "@[");
  *(&v135.__r_.__value_.__s + 23) = 2;
  strcpy(&v135, "@[");
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&WindowSizes, &v147);
  v111 = v6;
  v113 = NextResultAtOffset;
  size = v147.__r_.__value_.__l.__size_;
  v121 = v147.__r_.__value_.__r.__words[0];
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&Strides, &v147);
  v12 = v147.__r_.__value_.__l.__size_;
  v119 = v147.__r_.__value_.__r.__words[0];
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&InputAttributeNames, &v147);
  v112 = a1;
  if ((v140 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v13 = v147.__r_.__value_.__l.__size_;
  v115 = a3;
  v117 = v147.__r_.__value_.__r.__words[0];
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&Offsets, &v147);
  v14 = *&v147.__r_.__value_.__l.__data_;
  v15 = 4;
  do
  {
    while (1)
    {
      if (v15 != 4)
      {
        v17 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = v138.__r_.__value_.__l.__size_;
        }

        if (v18 + 2 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v18 + 2 >= 0x17)
        {
          operator new();
        }

        memset(&v147, 0, sizeof(v147));
        *(&v147.__r_.__value_.__s + 23) = v18 + 2;
        if (v18)
        {
          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &v138;
          }

          else
          {
            v19 = v138.__r_.__value_.__r.__words[0];
          }

          memmove(&v147, v19, v18);
        }

        strcpy(&v147 + v18, ", ");
        if (v17 < 0)
        {
          operator delete(v138.__r_.__value_.__l.__data_);
        }

        v138 = v147;
        v20 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = v137.__r_.__value_.__l.__size_;
        }

        if (v21 + 2 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v21 + 2 >= 0x17)
        {
          operator new();
        }

        memset(&v147, 0, sizeof(v147));
        *(&v147.__r_.__value_.__s + 23) = v21 + 2;
        if (v21)
        {
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v137;
          }

          else
          {
            v22 = v137.__r_.__value_.__r.__words[0];
          }

          memmove(&v147, v22, v21);
        }

        strcpy(&v147 + v21, ", ");
        if (v20 < 0)
        {
          operator delete(v137.__r_.__value_.__l.__data_);
        }

        v137 = v147;
        v23 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
        if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v24 = v136.__r_.__value_.__l.__size_;
        }

        if (v24 + 2 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v24 + 2 >= 0x17)
        {
          operator new();
        }

        memset(&v147, 0, sizeof(v147));
        *(&v147.__r_.__value_.__s + 23) = v24 + 2;
        if (v24)
        {
          if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &v136;
          }

          else
          {
            v25 = v136.__r_.__value_.__r.__words[0];
          }

          memmove(&v147, v25, v24);
        }

        strcpy(&v147 + v24, ", ");
        if (v23 < 0)
        {
          operator delete(v136.__r_.__value_.__l.__data_);
        }

        v136 = v147;
      }

      v147.__r_.__value_.__r.__words[0] = v121;
      v147.__r_.__value_.__l.__size_ = size;
      __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
      UInt = mlir::IntegerAttr::getUInt(&__p);
      v124 = v15;
      v147.__r_.__value_.__r.__words[0] = v119;
      v147.__r_.__value_.__l.__size_ = v12;
      __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
      v27 = mlir::IntegerAttr::getUInt(&__p);
      v147.__r_.__value_.__r.__words[0] = v117;
      v147.__r_.__value_.__l.__size_ = v13;
      v28 = v13;
      __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
      v29 = mlir::IntegerAttr::getUInt(&__p);
      if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v138.__r_.__value_.__l.__size_;
      }

      if (v30 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v31 = v29;
      if (v30 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v30 + 1;
      if (v30)
      {
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v138;
        }

        else
        {
          v32 = v138.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v32, v30);
      }

      *(&v147.__r_.__value_.__l.__data_ + v30) = 64;
      std::to_string(&__p, UInt);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = __p.__r_.__value_.__l.__size_;
      }

      v35 = std::string::append(&v147, p_p, v34);
      v36 = v35->__r_.__value_.__r.__words[0];
      *v148 = v35->__r_.__value_.__l.__size_;
      *&v148[7] = *(&v35->__r_.__value_.__r.__words[1] + 7);
      v37 = HIBYTE(v35->__r_.__value_.__r.__words[2]);
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      v138.__r_.__value_.__r.__words[0] = v36;
      v138.__r_.__value_.__l.__size_ = *v148;
      *(&v138.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
      *(&v138.__r_.__value_.__s + 23) = v37;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_77;
        }
      }

      else if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      operator delete(v147.__r_.__value_.__l.__data_);
LABEL_77:
      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = v137.__r_.__value_.__l.__size_;
      }

      if (v38 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v38 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v38 + 1;
      if (v38)
      {
        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = &v137;
        }

        else
        {
          v39 = v137.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v39, v38);
      }

      *(&v147.__r_.__value_.__l.__data_ + v38) = 64;
      std::to_string(&__p, v27);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &__p;
      }

      else
      {
        v40 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = __p.__r_.__value_.__l.__size_;
      }

      v42 = std::string::append(&v147, v40, v41);
      v43 = v42->__r_.__value_.__r.__words[0];
      *v148 = v42->__r_.__value_.__l.__size_;
      *&v148[7] = *(&v42->__r_.__value_.__r.__words[1] + 7);
      v44 = HIBYTE(v42->__r_.__value_.__r.__words[2]);
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      v137.__r_.__value_.__r.__words[0] = v43;
      v137.__r_.__value_.__l.__size_ = *v148;
      *(&v137.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
      *(&v137.__r_.__value_.__s + 23) = v44;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_98;
        }
      }

      else if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_98;
      }

      operator delete(v147.__r_.__value_.__l.__data_);
LABEL_98:
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v136.__r_.__value_.__l.__size_;
      }

      if (v45 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v45 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v45 + 1;
      if (v45)
      {
        if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v136;
        }

        else
        {
          v46 = v136.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v46, v45);
      }

      *(&v147.__r_.__value_.__l.__data_ + v45) = 64;
      std::to_string(&__p, v31);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &__p;
      }

      else
      {
        v47 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v48 = __p.__r_.__value_.__l.__size_;
      }

      v49 = std::string::append(&v147, v47, v48);
      v50 = v49->__r_.__value_.__r.__words[0];
      *v148 = v49->__r_.__value_.__l.__size_;
      *&v148[7] = *(&v49->__r_.__value_.__r.__words[1] + 7);
      v51 = HIBYTE(v49->__r_.__value_.__r.__words[2]);
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      v136.__r_.__value_.__r.__words[0] = v50;
      v136.__r_.__value_.__l.__size_ = *v148;
      *(&v136.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
      *(&v136.__r_.__value_.__s + 23) = v51;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      v16 = v28;
      if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_119;
      }

LABEL_14:
      v13 = v16 + 1;
      ++v12;
      ++size;
      v15 = v124 - 1;
      if (v124 == 1)
      {
        goto LABEL_125;
      }
    }

    v16 = v28;
    if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_119:
    operator delete(v147.__r_.__value_.__l.__data_);
    v13 = v16 + 1;
    ++v12;
    ++size;
    v15 = v124 - 1;
  }

  while (v124 != 1);
LABEL_125:
  v52 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v138.__r_.__value_.__l.__size_;
  }

  if (v53 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v53 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v53 + 1;
  if (v53)
  {
    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = &v138;
    }

    else
    {
      v54 = v138.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v54, v53);
  }

  *(&v147.__r_.__value_.__l.__data_ + v53) = 93;
  if (v52 < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  v138 = v147;
  v55 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v56 = v137.__r_.__value_.__l.__size_;
  }

  if (v56 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v56 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v56 + 1;
  if (v56)
  {
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = &v137;
    }

    else
    {
      v57 = v137.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v57, v56);
  }

  *(&v147.__r_.__value_.__l.__data_ + v56) = 93;
  if (v55 < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  v137 = v147;
  v58 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v59 = v136.__r_.__value_.__l.__size_;
  }

  if (v59 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v59 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v59 + 1;
  if (v59)
  {
    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v136;
    }

    else
    {
      v60 = v136.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v60, v59);
  }

  *(&v147.__r_.__value_.__l.__data_ + v59) = 93;
  if (v58 < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  v136 = v147;
  *&v147.__r_.__value_.__l.__data_ = v14;
  __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
  v61 = mlir::IntegerAttr::getUInt(&__p);
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v62 = v135.__r_.__value_.__l.__size_;
  }

  if (v62 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_303:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v63 = v61;
  if (v62 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v62 + 1;
  if (v62)
  {
    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &v135;
    }

    else
    {
      v64 = v135.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v64, v62);
  }

  *(&v147.__r_.__value_.__l.__data_ + v62) = 64;
  std::to_string(&__p, v63);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v65 = &__p;
  }

  else
  {
    v65 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v66 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v66 = __p.__r_.__value_.__l.__size_;
  }

  v67 = std::string::append(&v147, v65, v66);
  v68 = v67->__r_.__value_.__r.__words[0];
  *v148 = v67->__r_.__value_.__l.__size_;
  *&v148[7] = *(&v67->__r_.__value_.__r.__words[1] + 7);
  v69 = HIBYTE(v67->__r_.__value_.__r.__words[2]);
  v67->__r_.__value_.__l.__size_ = 0;
  v67->__r_.__value_.__r.__words[2] = 0;
  v67->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  v135.__r_.__value_.__r.__words[0] = v68;
  v135.__r_.__value_.__l.__size_ = *v148;
  *(&v135.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
  *(&v135.__r_.__value_.__s + 23) = v69;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_290;
    }
  }

  else
  {
    if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_185;
    }

LABEL_290:
    operator delete(v147.__r_.__value_.__l.__data_);
  }

LABEL_185:
  v70 = *(&v14 + 1) + 1;
  v71 = 7;
  while (2)
  {
    while (2)
    {
      v72 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v73 = v135.__r_.__value_.__l.__size_;
      }

      if (v73 + 2 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v73 + 2 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v73 + 2;
      if (v73)
      {
        if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v74 = &v135;
        }

        else
        {
          v74 = v135.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v74, v73);
      }

      strcpy(&v147 + v73, ", ");
      if (v72 < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      v135 = v147;
      v147.__r_.__value_.__r.__words[0] = v14;
      v147.__r_.__value_.__l.__size_ = v70;
      __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
      v75 = mlir::IntegerAttr::getUInt(&__p);
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v76 = v135.__r_.__value_.__l.__size_;
      }

      if (v76 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_303;
      }

      v77 = v75;
      if (v76 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v76 + 1;
      if (v76)
      {
        if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v78 = &v135;
        }

        else
        {
          v78 = v135.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v78, v76);
      }

      *(&v147.__r_.__value_.__l.__data_ + v76) = 64;
      std::to_string(&__p, v77);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v79 = &__p;
      }

      else
      {
        v79 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v80 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v80 = __p.__r_.__value_.__l.__size_;
      }

      v81 = std::string::append(&v147, v79, v80);
      v82 = v81->__r_.__value_.__r.__words[0];
      *v148 = v81->__r_.__value_.__l.__size_;
      *&v148[7] = *(&v81->__r_.__value_.__r.__words[1] + 7);
      v83 = HIBYTE(v81->__r_.__value_.__r.__words[2]);
      v81->__r_.__value_.__l.__size_ = 0;
      v81->__r_.__value_.__r.__words[2] = 0;
      v81->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      v135.__r_.__value_.__r.__words[0] = v82;
      v135.__r_.__value_.__l.__size_ = *v148;
      *(&v135.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
      *(&v135.__r_.__value_.__s + 23) = v83;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
        {
          break;
        }

        goto LABEL_187;
      }

      if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_187:
        ++v70;
        if (!--v71)
        {
          goto LABEL_223;
        }

        continue;
      }

      break;
    }

    operator delete(v147.__r_.__value_.__l.__data_);
    ++v70;
    if (--v71)
    {
      continue;
    }

    break;
  }

LABEL_223:
  v84 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v85 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v85 = v135.__r_.__value_.__l.__size_;
  }

  if (v85 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v85 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v85 + 1;
  if (v85)
  {
    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v86 = &v135;
    }

    else
    {
      v86 = v135.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v86, v85);
  }

  *(&v147.__r_.__value_.__l.__data_ + v85) = 93;
  if (v84 < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  v135 = v147;
  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v146);
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v146);
  v89 = MEMORY[0x1E696AEC0];
  (*(*v112 + 32))(&v147, v112, v113);
  if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v90 = &v147;
  }

  else
  {
    v90 = v147.__r_.__value_.__r.__words[0];
  }

  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = &v138;
  }

  else
  {
    v91 = v138.__r_.__value_.__r.__words[0];
  }

  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v92 = &v137;
  }

  else
  {
    v92 = v137.__r_.__value_.__r.__words[0];
  }

  v93 = &v136;
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v93 = v136.__r_.__value_.__r.__words[0];
  }

  v123 = v93;
  v125 = v92;
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v94 = &v135;
  }

  else
  {
    v94 = v135.__r_.__value_.__r.__words[0];
  }

  v95 = v141;
  if (v142 < 0)
  {
    v95 = v141[0];
  }

  v120 = v95;
  v122 = v94;
  (*(*v112 + 32))(&__p, v112, v113);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v96 = &__p;
  }

  else
  {
    v96 = __p.__r_.__value_.__r.__words[0];
  }

  v118 = v96;
  if (InferredResultTypes)
  {
    v97 = "YES";
  }

  else
  {
    v97 = "NO";
  }

  (*(*v112 + 32))(v148, v112, v113);
  v114 = v91;
  if (v149 >= 0)
  {
    v98 = v148;
  }

  else
  {
    v98 = *v148;
  }

  if (ResetAfter)
  {
    v99 = "YES";
  }

  else
  {
    v99 = "NO";
  }

  (*(*v112 + 32))(v132, v112, v113);
  if (v133 >= 0)
  {
    v100 = v132;
  }

  else
  {
    v100 = v132[0];
  }

  v101 = v115;
  if (*(v115 + 23) < 0)
  {
    v101 = *v115;
  }

  v116 = v101;
  v131 = v111;
  v129[0] = &v131;
  v102 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((v112 + 256), &v131);
  v103 = v102 + 3;
  if (*(v102 + 47) < 0)
  {
    v103 = *v103;
  }

  (*(*v112 + 32))(v129, v112, v113);
  v104 = v130;
  v105 = v129[0];
  v127 = 0;
  LOBYTE(v126) = 0;
  EmitObjC::emitTensorName(v112, v113, &v126, &v128);
  v106 = v129;
  if (v104 < 0)
  {
    v106 = v105;
  }

  if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v107 = &v128;
  }

  else
  {
    v107 = v128.__r_.__value_.__r.__words[0];
  }

  v108 = [v89 stringWithFormat:@"\n    MPSGraphPooling4DOpDescriptor *%spoolDesc =\n    [MPSGraphPooling4DOpDescriptor descriptorWithKernelSizes:%s\n                                                     strides:%s\n                                               dilationRates:%s\n                                               paddingValues:%s\n                                                paddingStyle:%s]\n    %spoolDesc.ceilMode = %s;\n    %spoolDesc.includeZeroPadToAverage = %s;\n    \n    MPSGraphTensor *%s =\n    [graph %sPooling4DWithSourceTensor:%s\n                             descriptor:%spoolDesc\n                                   name:%s];\n    ", v90, v114, v125, v123, v122, v120, v118, v97, v98, v99, v100, v116, v103, v106, v107];;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
    if (v127 < 0)
    {
      goto LABEL_292;
    }

LABEL_278:
    if ((v130 & 0x80000000) == 0)
    {
      goto LABEL_279;
    }

LABEL_293:
    operator delete(v129[0]);
    if (v133 < 0)
    {
      goto LABEL_294;
    }

LABEL_280:
    if ((v149 & 0x80000000) == 0)
    {
      goto LABEL_281;
    }

LABEL_295:
    operator delete(*v148);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_296;
    }

LABEL_282:
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_297:
      operator delete(v147.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((v127 & 0x80000000) == 0)
    {
      goto LABEL_278;
    }

LABEL_292:
    operator delete(v126);
    if (v130 < 0)
    {
      goto LABEL_293;
    }

LABEL_279:
    if ((v133 & 0x80000000) == 0)
    {
      goto LABEL_280;
    }

LABEL_294:
    operator delete(v132[0]);
    if (v149 < 0)
    {
      goto LABEL_295;
    }

LABEL_281:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_282;
    }

LABEL_296:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_297;
    }
  }

  v109 = [*(v112 + 216) stringByAppendingString:v108];
  v110 = *(v112 + 216);
  *(v112 + 216) = v109;

  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_299;
    }

LABEL_285:
    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_286;
    }

LABEL_300:
    operator delete(v137.__r_.__value_.__l.__data_);
    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_301;
    }

LABEL_287:
    if (SHIBYTE(v142) < 0)
    {
LABEL_302:
      operator delete(v141[0]);
    }
  }

  else
  {
    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_285;
    }

LABEL_299:
    operator delete(v136.__r_.__value_.__l.__data_);
    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_300;
    }

LABEL_286:
    if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_287;
    }

LABEL_301:
    operator delete(v138.__r_.__value_.__l.__data_);
    if (SHIBYTE(v142) < 0)
    {
      goto LABEL_302;
    }
  }
}

void sub_1E07A24B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a56 < 0)
  {
    operator delete(__p);
    if ((a63 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a63 & 0x80000000) == 0)
  {
LABEL_3:
    if (a70 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  operator delete(a58);
  if (a70 < 0)
  {
LABEL_4:
    operator delete(a65);
    if ((a73 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  if ((a73 & 0x80000000) == 0)
  {
LABEL_5:
    if (*(v73 - 217) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a72);
  if (*(v73 - 217) < 0)
  {
LABEL_6:
    operator delete(*(v73 - 240));
    _Unwind_Resume(a1);
  }

LABEL_11:
  _Unwind_Resume(a1);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::SortOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, uint64_t a3, unsigned int a4, void *a5)
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
      memmove(&__dst, v13, v14);
    }

    v16 = (&__dst + v15);
  }

  else
  {
    v25 = 8;
    __dst = 0x74726F732E73706DLL;
    v16 = &v24;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, &__dst, v11, &__p);
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
    operator delete(__dst);
    goto LABEL_16;
  }

  if (v25 < 0)
  {
    goto LABEL_18;
  }

LABEL_16:

  return v20;
}

void sub_1E07A2A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::SortOp,mlir::Value &,mlir::Value &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SortOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v20 = 1283;
    v19[2] = "mps.sort";
    v19[3] = 8;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  mlir::mps::SortOp::build(a1, v22, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SortOp,void>::id)
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

void EmitObjC::initializeOps(EmitObjC *this)
{
  v33 = *MEMORY[0x1E69E9840];
  if (qword_1EE17DDD8 != -1)
  {
    dispatch_once(&qword_1EE17DDD8, &__block_literal_global_4);
  }

  Context = mlir::Attribute::getContext((*(this + 7) + 24));
  mlir::PassManager::PassManager(v28, Context, "any", 3uLL, 1);
  WeakRetained = objc_loadWeakRetained(this + 8);
  v4 = ([WeakRetained options] & 2) == 0;

  if (!v4)
  {
    mlir::OpPrintingFlags::OpPrintingFlags(v27);
    v5 = mlir::OpPrintingFlags::elideLargeElementsAttrs(v27, 256);
    v31[0] = &unk_1F5B4BDC0;
    v32 = v31;
    v29[0] = &unk_1F5B4BE40;
    v30 = v29;
    v6 = llvm::dbgs(v5);
    v26[0] = v27[0];
    v26[1] = v27[1];
    v26[2] = v27[2];
    mlir::PassManager::enableIRPrinting(v28, v31, v29, 0, 0, 0, v6, v26);
    if (v30 == v29)
    {
      (*(*v30 + 32))(v30);
      v7 = v32;
      if (v32 != v31)
      {
LABEL_8:
        if (v7)
        {
          (*(*v7 + 40))(v7);
        }

        goto LABEL_12;
      }
    }

    else
    {
      if (v30)
      {
        (*(*v30 + 40))(v30);
      }

      v7 = v32;
      if (v32 != v31)
      {
        goto LABEL_8;
      }
    }

    (*(*v7 + 32))(v7);
LABEL_12:
    mlir::PassManager::enableTiming(v28);
  }

  v8 = objc_loadWeakRetained(this + 8);
  v9 = ([v8[46] compilerOptions] & 0x200) == 0;

  if (!v9)
  {
    mlir::mps::createConvertF32ToF16Pass(v27);
    v10 = *&v27[0];
    *&v27[0] = 0;
    v25 = v10;
    mlir::OpPassManager::addPass(v28, &v25);
    v11 = v25;
    v25 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = *&v27[0];
    *&v27[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  v13 = mlir::OpPassManager::nest(v28, "func.func", 9uLL);
  mlir::createCanonicalizerPass(&v24);
  mlir::OpPassManager::addPass(v13, &v24);
  v14 = v24;
  v24 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15.var0.var0 = *(this + 7);
  if (!mlir::PassManager::run(v28, v15) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = *(((*(this + 7) + 16 * ((*(*(this + 7) + 44) >> 23) & 1) + ((*(*(this + 7) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(this + 7) + 40) + 8);
  if (v17)
  {
    v18 = v17 - 8;
  }

  else
  {
    v18 = 0;
  }

  v23 = @"//\n// Automatic code generation with EmitObjC\n//\n\n#ifndef ModelObjC_h\n#define ModelObjC_h\n\n#import <Foundation/Foundation.h>\n\n";
  *&v27[0] = this;
  *(&v27[0] + 1) = &v23;
  v19 = *(v18 + 40);
  v20 = v18 + 32;
  if (v19 != v18 + 32)
  {
    do
    {
      v21 = *(v19 + 8);
      v22 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v19, v16);
      *&v26[0] = v27;
      mlir::detail::walk<mlir::ForwardIterator>(v22, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN8EmitObjC13initializeOpsEvE3__2NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, v26, 1);
      v19 = v21;
    }

    while (v21 != v20);
  }

  if (_MergedGlobals_66 == 1)
  {
    printf("%s", [*(this + 27) UTF8String]);
  }

  mlir::PassManager::~PassManager(v28);
}

void ___ZN8EmitObjC13initializeOpsEv_block_invoke()
{
  if (getenv("MPSGRAPH_EMIT_OBJC_DUMP"))
  {
    NSLog(&cfstr_MpsgraphEmitOb_0.isa);
    _MergedGlobals_66 = 1;
  }
}

void EmitObjC::initOp(EmitObjC *this, mlir::Block **a2)
{
  v4 = mlir::OpPrintingFlags::OpPrintingFlags(v26);
  mlir::OpPrintingFlags::elideLargeElementsAttrs(v4, 64);
  __p[0] = 0;
  __p[1] = 0;
  v25 = 0;
  v17 = 0;
  v21 = 0;
  v22 = 1;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v16 = &unk_1F5B3FB30;
  v23 = __p;
  llvm::raw_ostream::SetBufferAndMode(&v16, 0, 0, 0);
  mlir::Operation::print(a2, &v16, v26);
  v5 = *(this + 27);
  v6 = __p;
  if (v25 < 0)
  {
    v6 = __p[0];
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n    // %s", v6];
  v8 = [v5 stringByAppendingString:v7];
  v9 = *(this + 27);
  *(this + 27) = v8;

  v27 = *(a2[6] + 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v27);
  v11 = strlen(AttrData);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  v15 = v11;
  if (v11)
  {
    memmove(&__dst, AttrData, v11);
  }

  *(&__dst + v12) = 0;
  v13 = std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::find<std::string>(this + 1, &__dst);
  if (!v13)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  switch(*(v13 + 10))
  {
    case 1:
      EmitObjC::createOp<EmitterObjC::AbsoluteOpHandler>();
    case 2:
      EmitObjC::createOp<EmitterObjC::AbsoluteSquareOpHandler>();
    case 3:
      EmitObjC::createOp<EmitterObjC::ACosOpHandler>();
    case 4:
      EmitObjC::createOp<EmitterObjC::ACoshOpHandler>();
    case 5:
      EmitObjC::createOp<EmitterObjC::AddOpHandler>();
    case 7:
      EmitObjC::createOp<EmitterObjC::AndOpHandler>();
    case 8:
      EmitObjC::createOp<EmitterObjC::ASinOpHandler>();
    case 9:
      EmitObjC::createOp<EmitterObjC::ASinhOpHandler>();
    case 0xA:
      EmitObjC::createOp<EmitterObjC::ATanOpHandler>();
    case 0xB:
      EmitObjC::createOp<EmitterObjC::ATan2OpHandler>();
    case 0xC:
      EmitObjC::createOp<EmitterObjC::ATanhOpHandler>();
    case 0xD:
      EmitObjC::createOp<EmitterObjC::AssignVariableOpHandler>();
    case 0x10:
      EmitObjC::createOp<EmitterObjC::BiasAddOpHandler>();
    case 0x11:
      EmitObjC::createOp<EmitterObjC::BitwiseAndOpHandler>();
    case 0x12:
      EmitObjC::createOp<EmitterObjC::BitwiseLeftShiftOpHandler>();
    case 0x13:
      EmitObjC::createOp<EmitterObjC::BitwiseNotOpHandler>();
    case 0x14:
      EmitObjC::createOp<EmitterObjC::BitwiseOrOpHandler>();
    case 0x15:
      EmitObjC::createOp<EmitterObjC::BitwisePopcountOpHandler>();
    case 0x16:
      EmitObjC::createOp<EmitterObjC::BitwiseRightShiftOpHandler>();
    case 0x17:
      EmitObjC::createOp<EmitterObjC::BitwiseXorOpHandler>();
    case 0x19:
      EmitObjC::createOp<EmitterObjC::BroadcastToOpHandler>();
    case 0x1B:
      EmitObjC::createOp<EmitterObjC::CastOpHandler>();
    case 0x1C:
      EmitObjC::createOp<EmitterObjC::CeilOpHandler>();
    case 0x1D:
      EmitObjC::createOp<EmitterObjC::ClampOpHandler>();
    case 0x1F:
      EmitObjC::createOp<EmitterObjC::ConcatOpHandler>();
    case 0x21:
      EmitObjC::createOp<EmitterObjC::ConjugateOpHandler>();
    case 0x22:
      EmitObjC::createOp<EmitterObjC::Conv2DOpHandler>();
    case 0x23:
      EmitObjC::createOp<EmitterObjC::Conv2DDataGradientOpHandler>();
    case 0x28:
      EmitObjC::createOp<EmitterObjC::ConstantOpHandler>();
    case 0x2A:
      EmitObjC::createOp<EmitterObjC::CosOpHandler>();
    case 0x2B:
      EmitObjC::createOp<EmitterObjC::CoshOpHandler>();
    case 0x2D:
      EmitObjC::createOp<EmitterObjC::CreateComplexOpHandler>();
    case 0x2F:
      EmitObjC::createOp<EmitterObjC::CropOpHandler>();
    case 0x36:
      EmitObjC::createOp<EmitterObjC::DepthToSpace2DOpHandler>();
    case 0x3A:
      EmitObjC::createOp<EmitterObjC::DepthwiseConv3DOpHandler>();
    case 0x3E:
      EmitObjC::createOp<EmitterObjC::DequantizeOpHandler>();
    case 0x40:
      EmitObjC::createOp<EmitterObjC::DivideOpHandler>();
    case 0x43:
      EmitObjC::createOp<EmitterObjC::EqualToOpHandler>();
    case 0x44:
      EmitObjC::createOp<EmitterObjC::ErfOpHandler>();
    case 0x45:
      EmitObjC::createOp<EmitterObjC::ExpandDimsOpHandler>();
    case 0x46:
      EmitObjC::createOp<EmitterObjC::ExponentOpHandler>();
    case 0x47:
      EmitObjC::createOp<EmitterObjC::ExponentBase2OpHandler>();
    case 0x48:
      EmitObjC::createOp<EmitterObjC::ExponentBase10OpHandler>();
    case 0x4E:
      EmitObjC::createOp<EmitterObjC::FloorOpHandler>();
    case 0x53:
      EmitObjC::createOp<EmitterObjC::GatherOpHandler>();
    case 0x57:
      EmitObjC::createOp<EmitterObjC::GreaterThanOpHandler>();
    case 0x58:
      EmitObjC::createOp<EmitterObjC::GreaterThanOrEqualToOpHandler>();
    case 0x5F:
      EmitObjC::createOp<EmitterObjC::ImaginaryPartOpHandler>();
    case 0x60:
      EmitObjC::createOp<EmitterObjC::IsFiniteOpHandler>();
    case 0x61:
      EmitObjC::createOp<EmitterObjC::IsInfiniteOpHandler>();
    case 0x62:
      EmitObjC::createOp<EmitterObjC::IsNaNOpHandler>();
    case 0x64:
      EmitObjC::createOp<EmitterObjC::LessThanOpHandler>();
    case 0x65:
      EmitObjC::createOp<EmitterObjC::LessThanOrEqualToOpHandler>();
    case 0x69:
      EmitObjC::createOp<EmitterObjC::LogarithmOpHandler>();
    case 0x6A:
      EmitObjC::createOp<EmitterObjC::LogarithmBase2OpHandler>();
    case 0x6B:
      EmitObjC::createOp<EmitterObjC::LogarithmBase10OpHandler>();
    case 0x70:
      EmitObjC::createOp<EmitterObjC::MatMulOpHandler>();
    case 0x74:
      EmitObjC::createOp<EmitterObjC::MaximumOpHandler>();
    case 0x77:
      EmitObjC::createOp<EmitterObjC::MinimumOpHandler>();
    case 0x78:
      EmitObjC::createOp<EmitterObjC::ModuloOpHandler>();
    case 0x79:
      EmitObjC::createOp<EmitterObjC::MultiplyOpHandler>();
    case 0x7A:
      EmitObjC::createOp<EmitterObjC::NandOpHandler>();
    case 0x7B:
      EmitObjC::createOp<EmitterObjC::NegativeOpHandler>();
    case 0x7C:
      EmitObjC::createOp<EmitterObjC::NorOpHandler>();
    case 0x7D:
      EmitObjC::createOp<EmitterObjC::NormalizationOpHandler>();
    case 0x7E:
      EmitObjC::createOp<EmitterObjC::NotOpHandler>();
    case 0x7F:
      EmitObjC::createOp<EmitterObjC::NotEqualToOpHandler>();
    case 0x81:
      EmitObjC::createOp<EmitterObjC::OrOpHandler>();
    case 0x82:
      EmitObjC::createOp<EmitterObjC::PadOpHandler>();
    case 0x84:
      EmitObjC::createOp<EmitterObjC::PermuteOpHandler>();
    case 0x85:
      EmitObjC::createOp<EmitterObjC::PoolAvgOpHandler>();
    case 0x89:
      EmitObjC::createOp<EmitterObjC::PoolMaxOpHandler>();
    case 0x8C:
      EmitObjC::createOp<EmitterObjC::PowerOpHandler>();
    case 0x8F:
      EmitObjC::createOp<EmitterObjC::QuantizeOpHandler>();
    case 0x96:
      EmitObjC::createOp<EmitterObjC::ReadVariableOpHandler>();
    case 0x97:
      EmitObjC::createOp<EmitterObjC::RealPartOpHandler>();
    case 0x98:
      EmitObjC::createOp<EmitterObjC::ReciprocalOpHandler>();
    case 0x9D:
      EmitObjC::createOp<EmitterObjC::ReductionMeanOpHandler>();
    case 0xA2:
      EmitObjC::createOp<EmitterObjC::ReductionVarianceOpHandler>();
    case 0xA5:
      EmitObjC::createOp<EmitterObjC::ReinterpretCastOpHandler>();
    case 0xA6:
      EmitObjC::createOp<EmitterObjC::ReluOpHandler>();
    case 0xA7:
      EmitObjC::createOp<EmitterObjC::Relu6OpHandler>();
    case 0xA8:
      EmitObjC::createOp<EmitterObjC::ReshapeOpHandler>();
    case 0xA9:
      EmitObjC::createOp<EmitterObjC::ResizeOpHandler>();
    case 0xAB:
      EmitObjC::createOp<EmitterObjC::ReturnOpHandler>();
    case 0xAE:
      EmitObjC::createOp<EmitterObjC::ReciprocalSquareRootOpHandler>();
    case 0xAF:
      EmitObjC::createOp<EmitterObjC::RintOpHandler>();
    case 0xB1:
      EmitObjC::createOp<EmitterObjC::RoundOpHandler>();
    case 0xB7:
      EmitObjC::createOp<EmitterObjC::SelectOpHandler>();
    case 0xB8:
      EmitObjC::createOp<EmitterObjC::ShapeOpHandler>();
    case 0xB9:
      EmitObjC::createOp<EmitterObjC::SigmoidOpHandler>();
    case 0xBA:
      EmitObjC::createOp<EmitterObjC::SignOpHandler>();
    case 0xBB:
      EmitObjC::createOp<EmitterObjC::SignbitOpHandler>();
    case 0xBC:
      EmitObjC::createOp<EmitterObjC::SinOpHandler>();
    case 0xBF:
      EmitObjC::createOp<EmitterObjC::SinhOpHandler>();
    case 0xC1:
      EmitObjC::createOp<EmitterObjC::SliceOpHandler>();
    case 0xC2:
      EmitObjC::createOp<EmitterObjC::SoftmaxOpHandler>();
    case 0xC6:
      EmitObjC::createOp<EmitterObjC::SpaceToDepth2DOpHandler>();
    case 0xC9:
      EmitObjC::createOp<EmitterObjC::SquareOpHandler>();
    case 0xCA:
      EmitObjC::createOp<EmitterObjC::SquareRootOpHandler>();
    case 0xCB:
      EmitObjC::createOp<EmitterObjC::SqueezeOpHandler>();
    case 0xCE:
      EmitObjC::createOp<EmitterObjC::StridedSliceOpHandler>();
    case 0xD0:
      EmitObjC::createOp<EmitterObjC::StridedSliceUpdateOpHandler>();
    case 0xD2:
      EmitObjC::createOp<EmitterObjC::SubtractOpHandler>();
    case 0xD3:
      EmitObjC::createOp<EmitterObjC::SwishOpHandler>();
    case 0xD4:
      EmitObjC::createOp<EmitterObjC::TanOpHandler>();
    case 0xD5:
      EmitObjC::createOp<EmitterObjC::TanhOpHandler>();
    case 0xDB:
      EmitObjC::createOp<EmitterObjC::TileOpHandler>();
    case 0xDF:
      EmitObjC::createOp<EmitterObjC::TransposeOpHandler>();
    case 0xE4:
      EmitObjC::createOp<EmitterObjC::VariableFromTensorOpHandler>();
    case 0xE7:
      EmitObjC::createOp<EmitterObjC::XorOpHandler>();
    case 0xE8:
      EmitObjC::createOp<EmitterObjC::XnorOpHandler>();
    default:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v15 < 0)
      {
        operator delete(__dst);
        llvm::raw_ostream::~raw_ostream(&v16);
        if ((SHIBYTE(v25) & 0x80000000) == 0)
        {
          return;
        }
      }

      else
      {
        llvm::raw_ostream::~raw_ostream(&v16);
        if ((SHIBYTE(v25) & 0x80000000) == 0)
        {
          return;
        }
      }

      operator delete(__p[0]);
      return;
  }
}

void sub_1E07A43EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a16 < 0)
  {
    operator delete(__p);
    llvm::raw_ostream::~raw_ostream(&a17);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    llvm::raw_ostream::~raw_ostream(&a17);
    if ((a29 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  JUMPOUT(0x1E07A4444);
}

void sub_1E07A442C(_Unwind_Exception *a1)
{
  llvm::raw_ostream::~raw_ostream(v2);
  if (v3 < 0)
  {
    operator delete(v2[7]);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E07A4408);
}

void sub_1E07A4684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A4958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A4C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A4F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A5214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A5538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A581C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A5AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A5C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A5E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A61A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A6488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A65D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A6868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A6B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A6E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A7184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A7468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A777C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A7AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A7BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A7CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A7F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A8064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A82BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A8404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A84D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A859C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A87F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A8AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A8DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A8F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A8FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A90A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A918C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A9274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A950C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A97F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A9B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A9C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A9EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AA188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AA45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AA730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AA878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AAB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AAE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AB118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AB3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AB6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AB994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07ABCA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07ABFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AC2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AC584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AC858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AC9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07ACC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07ACF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AD280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AD5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AD8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07ADBAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07ADEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AE018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AE270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AE584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AE8A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AEA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AEACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AEBD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a11)
  {
    MEMORY[0x1E12E5B90](a11, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AECE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a11)
  {
    MEMORY[0x1E12E5B90](a11, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AEF8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AF100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AF1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AF424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AF6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AF840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AF90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AF9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AFAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AFB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AFC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AFD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AFDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B002C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B0300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B05D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B071C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B07E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B08B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B0980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B0BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B0EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B1180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B1454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B159C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B1668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B1750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B19A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B1C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B1DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B1E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B2128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B2280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B24D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B27AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B28F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B29C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B2A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B2D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B3048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33);
  }

  _Unwind_Resume(exception_object);
}

void EmitObjC::getNewTensorNameForValue(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  *__str = a2;
  if (std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((a1 + 256), __str))
  {
    v12 = a2;
    *__str = &v12;
    v6 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a1 + 256), &v12);
    if (*(v6 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(a3, v6[3], v6[4]);
    }

    else
    {
      v7 = *(v6 + 3);
      *(a3 + 16) = v6[5];
      *a3 = v7;
    }
  }

  else
  {
    snprintf(__str, 0x50uLL, "tensor%lu", *(a1 + 224));
    v8 = strlen(__str);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    *(a3 + 23) = v8;
    if (v8)
    {
      memcpy(a3, __str, v8);
    }

    *(a3 + v9) = 0;
    ++*(a1 + 224);
    v11 = a2;
    v12 = &v11;
    v10 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a1 + 256), &v11);
    std::string::operator=(v10 + 1, a3);
  }
}

void sub_1E07B32AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void EmitObjC::emitObjCDump(id *this, NSString *a2)
{
  v3 = a2;
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained(this + 8);
    v3 = WeakRetained[115];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/emitObjC", v3];
  v6 = objc_loadWeakRetained(this + 8);
  [v6[101] createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/modelObjC.h", v5];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/main.m", v5];
  objc_claimAutoreleasedReturnValue();
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/modelObjCConstants.dat", v5];
  [this[38] writeToFile:objc_claimAutoreleasedReturnValue() atomically:1];
  v8 = this[27];
  v10 = 0;
  [v8 writeToFile:v7 atomically:1 encoding:4 error:&v10];
  v9 = v10;
  operator new();
}

void sub_1E07B3508(_Unwind_Exception *a1)
{
  operator delete(v6);

  _Unwind_Resume(a1);
}

uint64_t EmitterObjC::emitMPSDataType@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if (this > 285212735)
  {
    if (this > 536870927)
    {
      if (this <= 536870975)
      {
        if (this != 536870928)
        {
          if (this == 536870944)
          {
            *(a2 + 23) = 16;
            strcpy(a2, "MPSDataTypeInt32");
            return this;
          }

          goto LABEL_33;
        }

        *(a2 + 23) = 16;
        strcpy(a2, "MPSDataTypeInt16");
      }

      else
      {
        switch(this)
        {
          case 0x20000040:
            *(a2 + 23) = 16;
            strcpy(a2, "MPSDataTypeInt64");
            break;
          case 0x40000001:
            *(a2 + 23) = 17;
            strcpy(a2, "MPSDataTypeUnorm1");
            break;
          case 0x40000008:
            *(a2 + 23) = 17;
            strcpy(a2, "MPSDataTypeUnorm8");
            return this;
          default:
            goto LABEL_33;
        }
      }

      return this;
    }

    if (this <= 536870915)
    {
      if (this == 285212736)
      {
        operator new();
      }

      if (this == 536870914)
      {
        operator new();
      }

      goto LABEL_33;
    }

    if (this == 536870916)
    {
      operator new();
    }

    if (this != 536870920)
    {
      goto LABEL_33;
    }

    v3 = "MPSDataTypeInt8";
LABEL_35:
    *(a2 + 23) = 15;
    *a2 = *v3;
    *(a2 + 7) = *(v3 + 7);
    *(a2 + 15) = 0;
    return this;
  }

  if (this <= 31)
  {
    if (this > 7)
    {
      if (this != 8)
      {
        if (this == 16)
        {
          *(a2 + 23) = 17;
          strcpy(a2, "MPSDataTypeUInt16");
          return this;
        }

        goto LABEL_33;
      }

      *(a2 + 23) = 16;
      strcpy(a2, "MPSDataTypeUInt8");
      return this;
    }

    if (this != -2147483640)
    {
      if (this == -1879048176)
      {
        *(a2 + 23) = 19;
        strcpy(a2, "MPSDataTypeBFloat16");
        return this;
      }

      goto LABEL_33;
    }

    v3 = "MPSDataTypeBool";
    goto LABEL_35;
  }

  if (this <= 268435471)
  {
    if (this != 32)
    {
      if (this == 64)
      {
        *(a2 + 23) = 17;
        strcpy(a2, "MPSDataTypeUInt64");
        return this;
      }

      goto LABEL_33;
    }

    *(a2 + 23) = 17;
    strcpy(a2, "MPSDataTypeUInt32");
  }

  else
  {
    if (this != 268435472)
    {
      if (this == 285212704)
      {
        operator new();
      }

LABEL_33:
      *(a2 + 23) = 18;
      strcpy(a2, "MPSDataTypeFloat32");
      return this;
    }

    *(a2 + 23) = 18;
    strcpy(a2, "MPSDataTypeFloat16");
  }

  return this;
}

void EmitterObjC::emitMPSShape(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v10 = v3;
  if (!v3)
  {
    *(a2 + 23) = 3;
    *a2 = 26990;
    *(a2 + 2) = 108;
LABEL_10:
    *(a2 + 3) = 0;
    goto LABEL_11;
  }

  v4 = [v3 count];
  *(a2 + 23) = 3;
  if (!v4)
  {
    *(a2 + 2) = 93;
    *a2 = 23360;
    goto LABEL_10;
  }

  *a2 = 4217664;
  if ([v10 count])
  {
    v5 = [v10 objectAtIndexedSubscript:0];
    v6 = [v5 stringValue];

    std::string::append(a2, [v6 UTF8String]);
    for (i = 1; [v10 count] > i; ++i)
    {
      std::string::append(a2, ", @");
      v8 = [v10 objectAtIndexedSubscript:i];
      v9 = [v8 stringValue];

      std::string::append(a2, [v9 UTF8String]);
    }
  }

  std::string::append(a2, "]");
LABEL_11:
}

void sub_1E07B3C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

void EmitObjC::~EmitObjC(id *this)
{
  EmitObjC::~EmitObjC(this);

  JUMPOUT(0x1E12E5B90);
}

{
  *this = &unk_1F5B4D810;

  v2 = this[34];
  if (v2)
  {
    do
    {
      v6 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = this[32];
  this[32] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = this[29];
  if (v4)
  {
    this[30] = v4;
    operator delete(v4);
  }

  v5 = this[24];
  if (v5)
  {
    do
    {
      v7 = *v5;
      v8 = v5[3];
      v5[3] = 0;
      if (v8)
      {
        MEMORY[0x1E12E5B90](v8, 0xA1C409BE6959DLL);
      }

      operator delete(v5);
      v5 = v7;
    }

    while (v7);
  }

  v9 = this[22];
  this[22] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  EmitBase::~EmitBase(this);
}

uint64_t std::__function::__func<EmitObjC::initializeOps(void)::$_0,std::allocator<EmitObjC::initializeOps(void)::$_0>,BOOL ()(mlir::Pass *,mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN8EmitObjC13initializeOpsEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN8EmitObjC13initializeOpsEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN8EmitObjC13initializeOpsEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN8EmitObjC13initializeOpsEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<EmitObjC::initializeOps(void)::$_1,std::allocator<EmitObjC::initializeOps(void)::$_1>,BOOL ()(mlir::Pass *,mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN8EmitObjC13initializeOpsEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN8EmitObjC13initializeOpsEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN8EmitObjC13initializeOpsEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN8EmitObjC13initializeOpsEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t **_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN8EmitObjC13initializeOpsEvE3__2NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **result, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v3 = **result;
    v4 = [MEMORY[0x1E695E0F0] mutableCopy];
    v5 = v4;
    v6 = *(v3 + 312);
    if (*(v6 + 1) == 1)
    {
      [v4 addObject:@"NSData * _Nullable data"];
      v6 = *(v3 + 312);
    }

    if (*(v6 + 16) == 1)
    {
      [v5 addObject:@"NSMutableArray<MPSGraphShapedType *> * _Nullable inputTypes"];
      [v5 addObject:@"NSMutableArray<MPSGraphShapedType *> * _Nullable outputTypes"];
      v6 = *(v3 + 312);
    }

    if (*(v6 + 17) == 1)
    {
      [v5 addObject:@"MPSGraphCompilationDescriptor * _Nullable compileDesc"];
      v6 = *(v3 + 312);
    }

    if (*(v6 + 18) == 1)
    {
      [v5 addObject:@"MPSGraphOptimization optimizationLevel"];
      v6 = *(v3 + 312);
    }

    v7 = objc_msgSend(*(v3 + 216), "stringByAppendingFormat:", @"MPSGraphExecutable * _Nonnull %@(\n"), *(v6 + 8);
    v8 = 0;
    v9 = *(v3 + 216);
    *(v3 + 216) = v7;
    while (1)
    {

      v10 = [v5 count];
      v11 = *(v3 + 216);
      if (v8 >= v10)
      {
        break;
      }

      v9 = [v5 objectAtIndexedSubscript:v8];
      if (v8 + 1 == [v5 count])
      {
        v12 = "";
      }

      else
      {
        v12 = ",\n";
      }

      v13 = [v11 stringByAppendingFormat:@"    %@%s", v9, v12];
      v14 = *(v3 + 216);
      *(v3 + 216) = v13;

      ++v8;
    }

    v15 = [*(v3 + 216) stringByAppendingString:@"{\n    MPSGraph *graph = [MPSGraph new]\n\n"]);;
    v16 = *(v3 + 216);
    *(v3 + 216) = v15;

    v18 = *(a2 + 44);
    v19 = (v18 >> 23) & 1;
    v48 = a2 + 64;
    v20 = (v18 >> 21) & 0x7F8;
    v21 = 32 * *(a2 + 40);
    v22 = (((a2 + 64 + 16 * v19 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) + v21);
    if (*v22 == v22 || ((v47 = a2, (v23 = v22[1]) != 0) ? (v24 = v23 - 8) : (v24 = 0), v25 = *(v24 + 48), v26 = *(v24 + 56), v26 == v25))
    {
LABEL_44:
      v40 = ((v48 + 16 * v19 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) + v21;
      *__s = v3;
      for (i = *(v40 + 8); i != v40; i = *(i + 8))
      {
        v42 = i - 8;
        if (!i)
        {
          v42 = 0;
        }

        v43 = *(v42 + 40);
        v44 = v42 + 32;
        if (v43 != v42 + 32)
        {
          do
          {
            v45 = *(v43 + 8);
            v46 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v43, v17);
            mlir::detail::walk<mlir::ForwardIterator>(v46, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<EmitObjC::initializeOps(void)::$_2::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>, __s, 1);
            v43 = v45;
          }

          while (v45 != v44);
        }
      }

      operator new();
    }

    while (1)
    {
      v55 = *v25;
      v27 = getMPSShapeFromMLIR(v55);
      MPSDataType = getMPSDataType((*(v55 + 8) & 0xFFFFFFFFFFFFFFF8));
      v29 = MEMORY[0x1E696AEC0];
      (*(*v3 + 32))(__s, v3, v55);
      if (v57 >= 0)
      {
        v30 = __s;
      }

      else
      {
        v30 = *__s;
      }

      EmitterObjC::emitMPSShape(v27, &v54);
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v54;
      }

      else
      {
        v31 = v54.__r_.__value_.__r.__words[0];
      }

      EmitterObjC::emitMPSDataType(MPSDataType, v52);
      v32 = v53;
      v33 = v52[0];
      v50 = 0;
      LOBYTE(v49) = 0;
      EmitObjC::emitTensorName(v3, v55, &v49, &__p);
      v34 = v52;
      if (v32 < 0)
      {
        v34 = v33;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v36 = [v29 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph placeholderWithShape:%s\n                       dataType:%s\n                           name:%s]\n    ", v30, v31, v34, p_p];;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v50 & 0x80000000) == 0)
        {
LABEL_34:
          if ((v53 & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_41;
        }
      }

      else if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      operator delete(v49);
      if ((v53 & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_42;
      }

LABEL_41:
      operator delete(v52[0]);
      if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if (v57 < 0)
        {
          goto LABEL_43;
        }

        goto LABEL_37;
      }

LABEL_42:
      operator delete(v54.__r_.__value_.__l.__data_);
      if (v57 < 0)
      {
LABEL_43:
        operator delete(*__s);
      }

LABEL_37:
      v37 = [*(v3 + 216) stringByAppendingString:v36];
      v38 = *(v3 + 216);
      *(v3 + 216) = v37;

      std::vector<mlir::Value>::push_back[abi:ne200100](v3 + 232, &v55);
      if (++v25 == v26)
      {
        v39 = *(v47 + 44);
        v19 = (v39 >> 23) & 1;
        v20 = (v39 >> 21) & 0x7F8;
        v21 = 32 * *(v47 + 40);
        goto LABEL_44;
      }
    }
  }

  return result;
}

void sub_1E07B4A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>>>::__emplace_unique_key_args<mlir::Operation *,std::pair<mlir::Operation * const,std::unique_ptr<EmitterObjC::BaseOpHandler>>>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = 0x9DDFEA08EB382D69 * v4;
  v6 = result[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * v4;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*result + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        if (v10[2] == a2)
        {
          return result;
        }
      }

      else if ((v11 & (*&v6 - 1)) != v8)
      {
        goto LABEL_22;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v12 = v10[1];
    if (v12 == v5)
    {
      break;
    }

    if (v12 >= *&v6)
    {
      v12 %= *&v6;
    }

    if (v12 != v8)
    {
      goto LABEL_22;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1E07B50D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        v5 = v2;
        MEMORY[0x1E12E5B90](v4, 0xA1C409BE6959DLL);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void GPU::ImToColOpHandler::encodeNDArrayOp(GPU::ImToColOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v58[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v57 = *(this + 3);
  v6 = *(*(v57 + 72) + 24);
  v44 = v5;
  v46 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v7 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v8 = [v46 mpsndarray];
  v45 = [v7 mpsndarray];
  v9 = objc_alloc_init(MEMORY[0x1E6974748]);
  KernelSizes = mlir::mps::ColToImOp::getKernelSizes(&v57);
  Strides = mlir::mps::ColToImOp::getStrides(&v57);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v57);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v57);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, Strides, 0);
  v10 = Strides;
  NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v10, NumElements);
  if (v52 != v50)
  {
    v22 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
      v23 = v48;
      if (v48 >= 0x41)
      {
        if (v23 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
        {
          v24 = *v47;
          if (!v22)
          {
LABEL_37:
            [v9 setStrideInPixelsY:v24];
            goto LABEL_38;
          }
        }

        else
        {
          v24 = -1;
          if (!v22)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        v24 = v47;
        if (!v22)
        {
          goto LABEL_37;
        }
      }

      if (v22 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_39;
      }

LABEL_38:
      [v9 setStrideInPixelsX:v24];
LABEL_39:
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
      }

      ++v52;
      ++v22;
    }

    while (v52 != v50);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, InputAttributeNames, 0);
  v12 = InputAttributeNames;
  v13 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v12, v13);
  if (v52 != v50)
  {
    v25 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
      v26 = v48;
      if (v48 >= 0x41)
      {
        if (v26 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
        {
          v27 = *v47;
          if (!v25)
          {
LABEL_53:
            [v9 setDilationRateInY:v27];
            goto LABEL_54;
          }
        }

        else
        {
          v27 = -1;
          if (!v25)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
        v27 = v47;
        if (!v25)
        {
          goto LABEL_53;
        }
      }

      if (v25 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_55;
      }

LABEL_54:
      [v9 setDilationRateInX:v27];
LABEL_55:
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
      }

      ++v52;
      ++v25;
    }

    while (v52 != v50);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, KernelSizes, 0);
  v14 = KernelSizes;
  v15 = mlir::DenseElementsAttr::getNumElements(&KernelSizes);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v14, v15);
  if (v52 != v50)
  {
    v28 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
      v29 = v48;
      if (v48 >= 0x41)
      {
        if (v29 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
        {
          v30 = *v47;
          if (!v28)
          {
LABEL_69:
            [v9 setKernelHeight:v30];
            goto LABEL_70;
          }
        }

        else
        {
          v30 = -1;
          if (!v28)
          {
            goto LABEL_69;
          }
        }
      }

      else
      {
        v30 = v47;
        if (!v28)
        {
          goto LABEL_69;
        }
      }

      if (v28 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_71;
      }

LABEL_70:
      [v9 setKernelWidth:v30];
LABEL_71:
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
      }

      ++v52;
      ++v28;
    }

    while (v52 != v50);
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v57);
  if (!StorageType)
  {
    [v9 setDataLayout:0];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, Rewriter, 0);
    v31 = Rewriter;
    v32 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v31, v32);
    if (v52 == v50)
    {
      goto LABEL_75;
    }

    v41 = 0;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
      v42 = v48;
      if (v48 >= 0x41)
      {
        if (v42 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
        {
          v43 = *v47;
          if (v41 > 5)
          {
LABEL_93:
            if (v41 == 6)
            {
              [v9 setPaddingLeft:v43];
            }

            else if (v41 == 7)
            {
              [v9 setPaddingRight:v43];
            }

            goto LABEL_98;
          }
        }

        else
        {
          v43 = -1;
          if (v41 > 5)
          {
            goto LABEL_93;
          }
        }
      }

      else
      {
        v43 = v47;
        if (v41 > 5)
        {
          goto LABEL_93;
        }
      }

      if (v41 == 4)
      {
        [v9 setPaddingTop:v43];
      }

      else if (v41 == 5)
      {
        [v9 setPaddingBottom:v43];
      }

LABEL_98:
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
      }

      ++v52;
      ++v41;
      if (v52 == v50)
      {
        goto LABEL_75;
      }
    }
  }

  if (StorageType == 1)
  {
    [v9 setDataLayout:1];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, Rewriter, 0);
    v17 = Rewriter;
    v18 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v17, v18);
    if (v52 != v50)
    {
      v19 = 0;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
        v20 = v48;
        if (v48 >= 0x41)
        {
          if (v20 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
          {
            v21 = *v47;
            if (v19 > 3)
            {
LABEL_18:
              if (v19 == 4)
              {
                [v9 setPaddingLeft:v21];
              }

              else if (v19 == 5)
              {
                [v9 setPaddingRight:v21];
              }

              goto LABEL_23;
            }
          }

          else
          {
            v21 = -1;
            if (v19 > 3)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
          v21 = v47;
          if (v19 > 3)
          {
            goto LABEL_18;
          }
        }

        if (v19 == 2)
        {
          [v9 setPaddingTop:v21];
        }

        else if (v19 == 3)
        {
          [v9 setPaddingBottom:v21];
        }

LABEL_23:
        if (v48 >= 0x41 && v47)
        {
          MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
        }

        ++v52;
        ++v19;
      }

      while (v52 != v50);
    }
  }

LABEL_75:
  v33 = objc_alloc(MEMORY[0x1E6974750]);
  v34 = [*(*(this + 2) + 48) metalDevice];
  v35 = [v33 initWithDevice:v34 ndArrayIm2colDescriptor:v9];

  objc_storeStrong(this + 1, v35);
  [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v36 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v37 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v38 = *(a2 + 1);
    v39 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v35 encodeToMPSCommandEncoder:v37 commandBuffer:v38 sourceArrays:v36 resultState:0 destinationArray:v8 kernelDAGObject:v39];
  }

  else
  {
    if ((!v8 || !v45) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v36 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v40 = *(a2 + 1);
    v58[0] = v45;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
    [v35 encodeToMPSCommandEncoder:v36 commandBuffer:v40 sourceArrays:v37 destinationArray:v8];
  }
}