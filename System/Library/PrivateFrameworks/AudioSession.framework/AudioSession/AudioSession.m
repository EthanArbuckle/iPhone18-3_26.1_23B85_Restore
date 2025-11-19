uint64_t std::__shared_ptr_emplace<avas::WorkloopPool::BlockInfo>::__shared_ptr_emplace[abi:ne200100]<avas::WorkloopPool::DispatchID const&,void({block_pointer} {__strong}&)(void),std::shared_ptr<caulk::semaphore> const&,std::allocator<avas::WorkloopPool::BlockInfo>,0>(uint64_t a1, _OWORD *a2, void *a3, uint64_t *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F59990B8;
  *(a1 + 24) = *a2;
  v6 = MEMORY[0x1E12C3210](*a3);
  v8 = *a4;
  v7 = a4[1];
  *(a1 + 40) = v6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void avas::WorkloopPool::dispatchCommon(os_unfair_lock_s *a1, uint64_t a2, void *a3, int a4)
{
  v8 = a3;
  if (a4)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN5caulk9semaphoreENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v6 = 0;
  v7 = 0;
  os_unfair_lock_lock(a1 + 4);
  std::allocate_shared[abi:ne200100]<avas::WorkloopPool::BlockInfo,std::allocator<avas::WorkloopPool::BlockInfo>,avas::WorkloopPool::DispatchID const&,void({block_pointer} {__strong}&)(void),std::shared_ptr<caulk::semaphore> const&,0>();
}

void ___ZN4avas12WorkloopPool14dispatchCommonERKNS0_10DispatchIDEU13block_pointerFvvEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 40);
      if (v5)
      {
        avas::WorkloopPool::handleBlocks(v5, *(a1 + 32));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::deque<std::shared_ptr<avas::WorkloopPool::BlockInfo>>::push_back(void *result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 32 * (v5 - v6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<std::shared_ptr<avas::WorkloopPool::BlockInfo>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v8 + v3[4];
  }

  v10 = *a2;
  *(*(v6 + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9) = *a2;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
    v8 = v3[5];
  }

  v3[5] = v8 + 1;
  return result;
}

uint64_t __copy_helper_block_ea8_40c45_ZTSKNSt3__18weak_ptrIN4avas12WorkloopPoolEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void avas::WorkloopPool::handleBlocks(uint64_t a1, void *a2)
{
  v15 = a2;
  os_unfair_lock_lock((a1 + 16));
  v3 = *(a1 + 56);
  for (i = *(a1 + 64); i != v3; i = *(a1 + 64))
  {
    v5 = *(a1 + 80);
    v6 = v3 + 8 * (v5 >> 8);
    v7 = (*v6 + 16 * v5);
    v8 = *(v3 + (((*(a1 + 88) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 88) + v5);
    if (v7 != v8)
    {
      while (a1 + 104 != std::__tree<avas::WorkloopPool::DispatchID>::find<avas::WorkloopPool::DispatchID>(a1 + 96, *v7))
      {
        v7 += 2;
        if ((v7 - *v6) == 4096)
        {
          v9 = *(v6 + 8);
          v6 += 8;
          v7 = v9;
        }

        if (v7 == v8)
        {
          v7 = v8;
          break;
        }
      }

      v3 = *(a1 + 56);
      i = *(a1 + 64);
    }

    if (i == v3)
    {
      v11 = 0;
    }

    else
    {
      v10 = *(a1 + 88) + *(a1 + 80);
      v11 = *(v3 + ((v10 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v10;
    }

    if (v11 == v7)
    {
      break;
    }

    v13 = *v7;
    v12 = v7[1];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::deque<std::shared_ptr<avas::WorkloopPool::BlockInfo>>::erase((a1 + 48), v6, v7);
    std::__tree<avas::WorkloopPool::DispatchID>::__emplace_unique_key_args<avas::WorkloopPool::DispatchID,avas::WorkloopPool::DispatchID const&>(a1 + 96, v13);
    os_unfair_lock_unlock((a1 + 16));
    (*(*(v13 + 16) + 16))();
    v14 = *(v13 + 24);
    if (v14)
    {
      caulk::semaphore::signal(v14);
    }

    os_unfair_lock_lock((a1 + 16));
    std::__tree<avas::WorkloopPool::DispatchID>::__erase_unique<avas::WorkloopPool::DispatchID>((a1 + 96), v13);
    os_unfair_lock_unlock((a1 + 16));
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    os_unfair_lock_lock((a1 + 16));
    v3 = *(a1 + 56);
  }

  std::vector<NSObject  {objcproto20OS_dispatch_workloop}* {__strong}>::push_back[abi:ne200100]((a1 + 24), &v15);
  os_unfair_lock_unlock((a1 + 16));
}

void sub_1DE8986EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  os_unfair_lock_unlock(v10 + 4);

  _Unwind_Resume(a1);
}

uint64_t std::__tree<avas::WorkloopPool::DispatchID>::find<avas::WorkloopPool::DispatchID>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = avas::WorkloopPool::DispatchID::operator<(v3 + 28, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || avas::WorkloopPool::DispatchID::operator<(a2, v5 + 28))
  {
    return v2;
  }

  return v5;
}

uint64_t *std::deque<std::shared_ptr<avas::WorkloopPool::BlockInfo>>::erase(int64x2_t *a1, char *a2, char *a3)
{
  v4 = a1[2].u64[0];
  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 8));
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = &(*v6)[16 * v4];
  }

  v35 = v6;
  v36 = v7;
  if (a3 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = (&a3[-*a2] >> 4) + 32 * (a2 - v6) - ((v7 - *v6) >> 4);
  }

  v9 = std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo>*,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo>**,long,256l>::operator+[abi:ne200100](&v35, v8);
  v11 = v9;
  v12 = v10;
  v13 = a1[2].i64[1];
  if (v8 <= (v13 - 1) >> 1)
  {
    v18 = (v10 - *v9) >> 4;
    if (v18 < 0)
    {
      v27 = 254 - v18;
      v20 = &v9[-(v27 >> 8)];
      v21 = *v20 + 16 * ~v27;
    }

    else
    {
      v19 = v18 + 1;
      v20 = &v9[v19 >> 8];
      v21 = *v20 + 16 * v19;
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo>*,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo>**,long,256l>,std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo>*,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo>**,long,256l>,0>(v35, v36, v9, v10, v20, v21, v37);
    v28 = *(v36 + 1);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    a1[2] = vaddq_s64(a1[2], xmmword_1DE8DDC30);
    std::deque<std::shared_ptr<avas::WorkloopPool::BlockInfo>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
  }

  else
  {
    v14 = (v10 - *v9) >> 4;
    if (v14 < 0)
    {
      v22 = 254 - v14;
      v16 = &v9[-(v22 >> 8)];
      v17 = &(*v16)[~v22];
    }

    else
    {
      v15 = v14 + 1;
      v16 = &v9[v15 >> 8];
      v17 = &(*v16)[v15];
    }

    v23 = a1[2].i64[0] + v13;
    v24 = a1->i64[1];
    v25 = (v24 + 8 * (v23 >> 8));
    if (a1[1].i64[0] == v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = &(*v25)[v23];
    }

    v37[0].n128_u64[0] = v11;
    v37[0].n128_u64[1] = v12;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo>*,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo>**,long,256l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo>*,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo>**,long,256l>,std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo>*,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo>**,long,256l>>>(v16, v17, v25, v26, v37);
    v29 = *(v37[0].n128_u64[1] + 8);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    --a1[2].i64[1];
    std::deque<std::shared_ptr<avas::WorkloopPool::BlockInfo>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
  }

  v30 = a1[2].u64[0];
  v31 = a1->i64[1];
  v32 = (v31 + 8 * (v30 >> 8));
  if (a1[1].i64[0] == v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = *v32 + 16 * v30;
  }

  v37[0].n128_u64[0] = v32;
  v37[0].n128_u64[1] = v33;
  return std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo>*,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo>**,long,256l>::operator+[abi:ne200100](v37, v8);
}

__n128 std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo>*,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo>**,long,256l>,std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo>*,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo>**,long,256l>,0>@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, char *a5@<X5>, uint64_t a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo> **,long,256l>,0>(v16, v18, v13, v14, &v21);
      v14 = v22.n128_i64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4096;
    }

    v12 = *v17 + 4096;
    v11 = a2;
  }

  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo> **,long,256l>,0>(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

uint64_t *std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo>*,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo>**,long,256l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 4);
    if (v4 < 1)
    {
      result -= (255 - v4) >> 8;
      v6 = *result;
    }

    else
    {
      result += v4 >> 8;
      v5 = *result;
    }
  }

  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo> **,long,256l>,0>@<X0>(char *a1@<X1>, char *a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, char **a5@<X8>)
{
  v5 = a3;
  if (a1 == a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = a2;
    v9 = a4 - *a3;
    if ((a2 - a1) >> 4 >= v9 >> 4)
    {
      v10 = v9 >> 4;
    }

    else
    {
      v10 = (a2 - a1) >> 4;
    }

    v11 = &a2[-16 * v10];
    result = std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo> *>(&v19, v11, a2, a4);
    if (v11 != a1)
    {
      do
      {
        v15 = *(v5 - 1);
        v5 -= 8;
        v14 = v15;
        v16 = (v11 - a1) >> 4;
        if (v16 >= 256)
        {
          v16 = 256;
        }

        v17 = &v11[-16 * v16];
        result = std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo> *>(&v19, v17, v11, v14 + 4096);
        v11 = v17;
      }

      while (v17 != a1);
    }

    a4 = v13;
    if (*v5 + 4096 == v13)
    {
      v18 = *(v5 + 1);
      v5 += 8;
      a4 = v18;
    }
  }

  *a5 = v8;
  a5[1] = v5;
  a5[2] = a4;
  return result;
}

uint64_t std::__tree<avas::WorkloopPool::DispatchID>::__emplace_unique_key_args<avas::WorkloopPool::DispatchID,avas::WorkloopPool::DispatchID const&>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<avas::WorkloopPool::DispatchID>::__find_equal<avas::WorkloopPool::DispatchID>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::deque<std::shared_ptr<avas::WorkloopPool::BlockInfo>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

uint64_t *std::__tree<avas::WorkloopPool::DispatchID>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *std::__tree<avas::WorkloopPool::DispatchID>::__find_equal<avas::WorkloopPool::DispatchID>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!avas::WorkloopPool::DispatchID::operator<(a3, v4 + 28))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!avas::WorkloopPool::DispatchID::operator<(v7 + 28, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::__tree<avas::WorkloopPool::DispatchID>::__erase_unique<avas::WorkloopPool::DispatchID>(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<avas::WorkloopPool::DispatchID>::find<avas::WorkloopPool::DispatchID>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<avas::WorkloopPool::DispatchID>::__remove_node_pointer(a1, v3);
  operator delete(v4);
  return 1;
}

unint64_t avas::WorkloopPool::DispatchID::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 != v3)
  {
    return v2 < v3;
  }

  v4 = *(a1 + 12);
  v5 = *(a2 + 12);
  if (v4 == 1 && (v5 & 1) != 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    v8 = v6 >= v7;
    v9 = v6 == v7;
    v10 = 255;
    if (v8)
    {
      v10 = 1;
    }

    if (v9)
    {
      v10 = 0;
    }
  }

  else
  {
    v12 = 255;
    if (((v4 ^ 1) & v5) == 0)
    {
      v12 = 1;
    }

    if ((v5 | v4))
    {
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 >> 7;
}

uint64_t *std::__tree<avas::WorkloopPool::DispatchID>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
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
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
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
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void std::__destroy_at[abi:ne200100]<avas::WorkloopPool::BlockInfo,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
}

id std::vector<NSObject  {objcproto20OS_dispatch_workloop}* {__strong}>::push_back[abi:ne200100](void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>>(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    std::vector<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_1DE89952C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void CreateDispatchQueueWithTarget(uint64_t a1@<X0>, void *a2@<X1>, id *a3@<X8>)
{
  target = a2;
  v5 = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(v5, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  *a3 = dispatch_queue_create_with_target_V2(v7, v6, target);
  v8 = applesauce::dispatch::v1::queue::operator*(a3);

  if (!v8)
  {
    v10 = _os_crash();
    avas::WorkloopPool::WorkloopPool(v10);
  }

  v9 = applesauce::dispatch::v1::queue::operator*(a3);
  dispatch_activate(v9);
}

void sub_1DE899618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  applesauce::dispatch::v1::queue::~queue(v10);

  _Unwind_Resume(a1);
}

id CreateRootDispatchQueue()
{
  v5 = *MEMORY[0x1E69E9840];
  pthread_attr_init(&v4);
  v3 = 0;
  pthread_attr_getschedparam(&v4, &v3);
  v3.sched_priority = 47;
  pthread_attr_setschedparam(&v4, &v3);
  pthread_attr_setschedpolicy(&v4, 4);
  v0 = dispatch_pthread_root_queue_create();
  pthread_attr_destroy(&v4);
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

void sub_1DE899700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, pthread_attr_t *a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __destroy_helper_block_ea8_40c45_ZTSKNSt3__18weak_ptrIN4avas12WorkloopPoolEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

id sessionManagerXPCInterface()
{
  {
    sessionManagerXPCInterface::intf = sessionManagerXPCInterface::$_0::operator()();
  }

  v0 = sessionManagerXPCInterface::intf;

  return v0;
}

id sessionManagerXPCInterface::$_0::operator()()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F599D1C8];
  v1 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v1 setWithObjects:{v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [v0 setXPCType:MEMORY[0x1E69E9F08] forSelector:sel_createSession_sourceAuditToken_sourceSessionID_nameOrDeviceUID_clientProcessName_clientProcessBundleID_useCaseIdentifier_reply_ argumentIndex:2 ofReply:1];
  [v0 setClasses:v10 forSelector:sel_getProperty_propertyName_MXProperty_reply_ argumentIndex:1 ofReply:1];
  [v0 setClasses:v10 forSelector:sel_setApplicationProperty_clientID_propertyID_propertyValue_reply_ argumentIndex:3 ofReply:0];
  [v0 setClasses:v10 forSelector:sel_updateApplicationProperty_clientID_propertyID_propertyValue_context_reply_ argumentIndex:3 ofReply:0];
  [v0 setClasses:v10 forSelector:sel_getApplicationProperty_clientID_propertyID_isMXProperty_reply_ argumentIndex:1 ofReply:1];
  [v0 setClasses:v10 forSelector:sel_setMXPropertyOnAllSessions_clientID_MXProperty_values_reply_ argumentIndex:3 ofReply:0];
  [v0 setClasses:v10 forSelector:sel_getMXPropertyGenericPipe_propertyName_reply_ argumentIndex:1 ofReply:1];
  v11 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v11 forSelector:sel_getEnhanceDialogueLevelWithReply_ argumentIndex:1 ofReply:1];

  return v0;
}

id sessionManagerXPCCallbackInterface()
{
  {
    sessionManagerXPCCallbackInterface::intf = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F599D228];
  }

  v0 = sessionManagerXPCCallbackInterface::intf;

  return v0;
}

BOOL FormatNSErrorForReturn(int a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_35;
  }

  if (a1 > 1768386161)
  {
    if (a1 <= 1852794998)
    {
      if (a1 == 1768386162)
      {
        v7 = 0;
        goto LABEL_30;
      }

      v8 = 1768843583;
LABEL_19:
      if (a1 != v8)
      {
        goto LABEL_36;
      }

      v7 = 1836282486;
      if (!v5 && a3)
      {
        v6 = @"Session initialization error. Recent media server termination?";
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (a1 == 1852794999)
    {
LABEL_26:
      v7 = 561145203;
      if (!v5 && a3)
      {
        v6 = @"Resource not available";
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (a1 == 1886681407)
    {
LABEL_13:
      v7 = 2003329396;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        FormatNSErrorForReturn(a1);
      }

      goto LABEL_30;
    }

    if (a1 != 1919839847)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (a1 > 561145202)
    {
      if (a1 != 561145203)
      {
        if (a1 != 561211770 && a1 != 1063477620)
        {
LABEL_36:
          v7 = a1;
          if (!a3)
          {
            goto LABEL_35;
          }

LABEL_31:
          if (!v6)
          {
            v9 = MEMORY[0x1E695E0F8];
            goto LABEL_34;
          }

LABEL_32:
          v12 = *MEMORY[0x1E696A578];
          v13[0] = v6;
          v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
LABEL_34:
          *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v7 userInfo:v9];

          goto LABEL_35;
        }

        goto LABEL_13;
      }

      goto LABEL_26;
    }

    if (a1 != 560030580)
    {
      v8 = 560557673;
      goto LABEL_19;
    }
  }

  v7 = 560030580;
  if (!v5 && a3)
  {
    v6 = @"Operation not permitted while session has running audio I/Os";
    goto LABEL_32;
  }

LABEL_30:
  if (a3)
  {
    goto LABEL_31;
  }

LABEL_35:

  v10 = *MEMORY[0x1E69E9840];
  return a1 == 0;
}

void *std::deque<std::shared_ptr<avas::WorkloopPool::BlockInfo>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::allocator<std::shared_ptr<avas::WorkloopPool::BlockInfo> *>>::emplace_back<std::shared_ptr<avas::WorkloopPool::BlockInfo> *&>(a1, &v10);
}

void sub_1DE899F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const void **std::__split_buffer<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::allocator<std::shared_ptr<avas::WorkloopPool::BlockInfo> *> &>::emplace_front<std::shared_ptr<avas::WorkloopPool::BlockInfo> *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t avas::IsStandardMXNotificationName(avas *this, NSString *a2)
{
  v2 = this;
  MXNotificationNames = avas::GetMXNotificationNames(v2);
  v4 = v2;
  v5 = *(MXNotificationNames + 1);
  if (*MXNotificationNames == v5)
  {
    v8 = 0;
  }

  else
  {
    v6 = *MXNotificationNames + 8;
    do
    {
      v7 = [(avas *)v4 isEqualToString:*(v6 - 8)];
      v8 = v7;
      if (v6 == v5)
      {
        v9 = 1;
      }

      else
      {
        v9 = v7;
      }

      v6 += 8;
    }

    while ((v9 & 1) == 0);
  }

  return v8;
}

void *std::__split_buffer<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::allocator<std::shared_ptr<avas::WorkloopPool::BlockInfo> *> &>::emplace_back<std::shared_ptr<avas::WorkloopPool::BlockInfo> *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

__int128 *avas::GetMXNotificationNames(avas *this)
{
  {
    avas::GetMXNotificationNames(void)::mxNotificationNames = v2;
    qword_1ED6F6C40 = v3;
    v3 = 0;
    v2 = 0uLL;
    v4 = &v2;
    std::vector<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  return &avas::GetMXNotificationNames(void)::mxNotificationNames;
}

void anonymous namespace::BuildMXNotificationsForPlatform(void *a1@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69AFB00];
  v7[1] = *MEMORY[0x1E69AFB60];
  v7[2] = *MEMORY[0x1E69AFB80];
  v7[3] = *MEMORY[0x1E69AFB08];
  v7[4] = *MEMORY[0x1E69AFAE0];
  v7[5] = *MEMORY[0x1E69AFB70];
  v7[6] = *MEMORY[0x1E69AFB68];
  v7[7] = *MEMORY[0x1E69AEDA8];
  v7[8] = *MEMORY[0x1E69AFB28];
  v7[9] = *MEMORY[0x1E69AFB20];
  v7[10] = *MEMORY[0x1E69AFC20];
  v7[11] = *MEMORY[0x1E69AFBC8];
  v7[12] = *MEMORY[0x1E69AFBB8];
  v7[13] = *MEMORY[0x1E69AFBC0];
  v7[14] = *MEMORY[0x1E69B0788];
  v7[15] = *MEMORY[0x1E69AFBF8];
  v7[16] = *MEMORY[0x1E69AFBD0];
  v7[17] = *MEMORY[0x1E69AFB30];
  v7[18] = *MEMORY[0x1E69AFBF0];
  v7[19] = *MEMORY[0x1E69B0758];
  v7[20] = *MEMORY[0x1E69AFB40];
  v7[21] = *MEMORY[0x1E69AFB50];
  v7[22] = *MEMORY[0x1E69AFB48];
  v7[23] = *MEMORY[0x1E69AFB58];
  v7[24] = *MEMORY[0x1E69AFB18];
  v7[25] = *MEMORY[0x1E69AFB10];
  v7[26] = *MEMORY[0x1E69AFC10];
  v7[27] = *MEMORY[0x1E69AFBE0];
  v7[28] = *MEMORY[0x1E69AFB38];
  v7[29] = *MEMORY[0x1E69AFC08];
  v7[30] = *MEMORY[0x1E69AFBE8];
  v7[31] = *MEMORY[0x1E69AFB98];
  v7[32] = *MEMORY[0x1E69AFC18];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(a1, v7, &v8, 0x21uLL);
  for (i = 32; i != -1; --i)
  {
  }

  {
    avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
  }

  if (avas::AudioSessionMuteEnabled(void)::enabled == 1)
  {
    v6[0] = *MEMORY[0x1E69AFBA0];
    std::vector<NSString * {__strong}>::push_back[abi:ne200100](a1, v6);
  }

  {
    avas::EnhanceDialogueBriocheEnabled(void)::enhanceDialogueBriocheEnabled = _os_feature_enabled_impl();
  }

  if (avas::EnhanceDialogueBriocheEnabled(void)::enhanceDialogueBriocheEnabled == 1)
  {
    v5 = *MEMORY[0x1E69AFAF0];
    std::vector<NSString * {__strong}>::push_back[abi:ne200100](a1, &v5);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1DE89A760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<NSString * {__strong}>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>>(a1, a2);
  }

  std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<NSString * {__strong}>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::__split_buffer<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::allocator<std::shared_ptr<avas::WorkloopPool::BlockInfo> *>>::emplace_back<std::shared_ptr<avas::WorkloopPool::BlockInfo> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo>*,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo>**,long,256l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo>*,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo>**,long,256l>,std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo>*,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo>**,long,256l>>>(__int128 **a1, __int128 *a2, __int128 **a3, __int128 *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  else
  {
    v10 = a1 + 1;
    v7 = *a5;
    v8 = *(a5 + 8);
    for (i = *a1 + 256; ; i = v12 + 256)
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo> **,long,256l>,0>(a2, i, v7, v8, &v14);
      v8 = *(&v15 + 1);
      v7 = v15;
      *a5 = v15;
      *(a5 + 8) = v8;
      if (v10 == a3)
      {
        break;
      }

      v12 = *v10++;
      a2 = v12;
    }

    a2 = *v10;
  }

  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo> **,long,256l>,0>(a2, a4, v7, v8, &v14);
  result = *&v15;
  *a5 = v15;
  return result;
}

uint64_t std::deque<std::shared_ptr<avas::WorkloopPool::BlockInfo>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x100)
  {
    a2 = 1;
  }

  if (v5 < 0x200)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::__deque_iterator<std::shared_ptr<avas::WorkloopPool::BlockInfo>,std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo>&,std::shared_ptr<avas::WorkloopPool::BlockInfo> **,long,256l>,0>(__int128 *a1@<X1>, __int128 *a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X4>, __int128 **a5@<X8>)
{
  v5 = a3;
  i = a1;
  if (a1 != a2)
  {
    v9 = *a3 - a4 + 4096;
    if (a2 - a1 >= v9 >> 4)
    {
      v10 = v9 >> 4;
    }

    else
    {
      v10 = a2 - a1;
    }

    for (i = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo> *>(&v16, a1, &a1[v10], a4); i != a2; i = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo> *,std::shared_ptr<avas::WorkloopPool::BlockInfo> *>(&v16, i, &i[v14], v12))
    {
      v13 = *(v5 + 1);
      v5 = (v5 + 8);
      v12 = v13;
      v14 = a2 - i;
      if (v14 >= 256)
      {
        v14 = 256;
      }
    }

    a4 = v11;
    if (*v5 + 4096 == v11)
    {
      v15 = *(v5 + 1);
      v5 = (v5 + 8);
      a4 = v15;
    }
  }

  *a5 = i;
  a5[1] = v5;
  a5[2] = a4;
}

void virtual thunk toCAException::~CAException(CAException *this)
{
  std::exception::~exception((this + *(*this - 24)));
}

{
  std::exception::~exception((this + *(*this - 24)));

  JUMPOUT(0x1E12C2EB0);
}

void CAException::~CAException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1E12C2EB0);
}

void CAXException::~CAXException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1E12C2EB0);
}

id avas::NotificationDelegateCollection::GetCombinedPropertyNotificationsOfInterest(avas::NotificationDelegateCollection *this)
{
  v2 = [MEMORY[0x1E695DFA8] set];
  for (i = *(this + 2); i; i = *i)
  {
    v4 = [i[4] propertyNotificationsOfInterest];
    [v2 unionSet:v4];
  }

  return v2;
}

void sub_1DE89B6DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v24 = *(v22 - 80);
  if (v24)
  {
    os_unfair_lock_unlock(v24);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::SessionCollection::SessionPresentingIterator::~SessionPresentingIterator(avas::server::SessionCollection::SessionPresentingIterator *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

avas::server::SessionCollection::SessionPresentingIterator *avas::server::SessionCollection::SessionPresentingIterator::operator++(avas::server::SessionCollection::SessionPresentingIterator *this)
{
  v2 = *this;
  if (*this == *(this + 1))
  {
    v6 = *(this + 2);
    v7 = v6[1];
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
        v8 = v6[2];
        v5 = *v8 == v6;
        v6 = v8;
      }

      while (!v5);
    }

    *(this + 2) = v8;
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *this = v4;
  }

  avas::server::SessionCollection::SessionPresentingIterator::EvaluateCurrent(this);
  return this;
}

void sub_1DE89B9F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v24 = *(v22 - 80);
  if (v24)
  {
    os_unfair_lock_unlock(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE89BC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v26 = *(v24 - 80);
  if (v26)
  {
    os_unfair_lock_unlock(v26);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::SessionCollection::SessionPresentingIterator::GetAudioSessionInfo(avas::server::SessionCollection::SessionPresentingIterator *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 8);
  if (v3)
  {
    v4 = *(this + 9);
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v5 = *(this + 11);
    if (v5)
    {
      v6 = (*(*v5 + 104))(v5);

      avas::server::IONodeSessionInfo::GetSiblingSession(v6, a2);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
    }
  }
}

void sub_1DE89C054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, os_unfair_lock_t lock)
{
  if (lock)
  {
    os_unfair_lock_unlock(lock);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE89C170(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void avas::NotificationDelegateCollection::GetDelegatesForNotifications(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  for (i = *(a1 + 16); i; i = *i)
  {
    v7 = i[3];
    v8 = i[4];
    v9 = [v8 filterPropertyNotifications:v5];
    if ([v9 count])
    {
      v10 = v7;
      v11 = v9;
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::push_back[abi:ne200100](a3, &v10);
    }
  }
}

void sub_1DE89C274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, id a10)
{
  std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void sub_1DE89C440(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void avas::NotificationDelegateCollection::GetDelegatesForInterruptions(avas::NotificationDelegateCollection *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  for (i = *(this + 2); i; i = *i)
  {
    v4 = i[2];
    v5 = i[3];
    v6 = i[4];
    if ([v6 wantsInterruptions])
    {
      std::vector<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::push_back[abi:ne200100](a2, &v5);
    }
  }
}

void sub_1DE89C678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::__hash_table<avas::MatchedSession,avas::MatchedSessionHash,avas::MatchedSessionEqual,std::allocator<avas::MatchedSession>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_1DE89C818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::__hash_table<avas::MatchedSession,avas::MatchedSessionHash,avas::MatchedSessionEqual,std::allocator<avas::MatchedSession>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_1DE89C9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::__hash_table<avas::MatchedSession,avas::MatchedSessionHash,avas::MatchedSessionEqual,std::allocator<avas::MatchedSession>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_1DE89CA5C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

unint64_t avas::NotificationDelegateCollection::AddDelegate(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5] + 1;
  a1[5] = v4;
  v8[0] = v4;
  v8[2] = v8;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1, v8);
  v6 = v5[3];
  v5[3] = v3;

  return v8[0];
}

void sub_1DE89CCB8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2);

  _Unwind_Resume(a1);
}

BOOL avas::NotificationDelegateCollection::UpdateDelegateFilter(avas::NotificationDelegateCollection *this, unint64_t a2, AVAudioNotificationFilter *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::find<unsigned long long>(this, &v9);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 4, a3);
  }

  return v7 != 0;
}

uint64_t avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  avas::server::SessionCollection::SessionPresentingIterator::EvaluateCurrent(a1);
  return a1;
}

void sub_1DE89CE24(_Unwind_Exception *a1)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(v1);
  _Unwind_Resume(a1);
}

void avas::server::SessionCollection::SessionPresentingIterator::EvaluateCurrent(avas::server::SessionCollection::SessionPresentingIterator *this)
{
  v2 = *this;
  if (*this != *(this + 1))
  {
    v3 = *(v2 + 32);
    v5 = *(v2 + 40);
    v4 = *(v2 + 48);
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    *(this + 14) = v3;
    v6 = *(this + 9);
    *(this + 8) = v5;
    *(this + 9) = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    *(this + 20) = 0;
    v7 = *(this + 12);
    *(this + 11) = 0;
    *(this + 12) = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v8 = this + 32;
    v9 = this + 56;

LABEL_10:
    std::pair<unsigned int,std::shared_ptr<avas::server::ISessionPresenting>>::operator=[abi:ne200100]<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>,0>(v8, v9);
    return;
  }

  v10 = *(this + 2);
  v11 = *(this + 3);
  *(this + 14) = 0;
  v12 = *(this + 9);
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v10 != v11)
  {
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      v10 = *(this + 2);
    }

    v13 = *(v10 + 32);
    v15 = *(v10 + 40);
    v14 = *(v10 + 48);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    *(this + 20) = v13;
    v16 = *(this + 12);
    *(this + 11) = v15;
    *(this + 12) = v14;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v8 = this + 32;
    v9 = this + 80;

    goto LABEL_10;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  *(this + 20) = 0;
  v17 = *(this + 12);
  *(this + 11) = 0;
  *(this + 12) = 0;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  *(this + 8) = 0;
  v18 = *(this + 6);
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v18)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

uint64_t std::pair<unsigned int,std::shared_ptr<avas::server::ISessionPresenting>>::operator=[abi:ne200100]<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void avas::server::IONodeSessionInfo::GetSiblingSession(os_unfair_lock_s *this@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock(this + 8);
  v4 = *&this[14]._os_unfair_lock_opaque;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  os_unfair_lock_unlock(this + 8);
}

uint64_t std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__emplace_back_slow_path<NSArray * {__strong}>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *v3 = v4;
    result = (v3 + 1);
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__emplace_back_slow_path<NSArray * {__strong}>(void *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>>(a1, v6);
  }

  v14 = 0;
  v15 = 16 * v5;
  *(&v16 + 1) = 0;
  v9 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *(16 * v5) = v9;
  *&v16 = 16 * v5 + 16;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>,NSArray * {__strong}*>(a1, v3, v4, 0);
  v10 = *a1;
  *a1 = 0;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::~__split_buffer(&v14);
  return v13;
}

void sub_1DE89D1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>,NSArray * {__strong}*>(uint64_t a1, void **a2, void **a3, _OWORD *a4)
{
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      v4[1] = 0;
      v4 += 2;
      *a4++ = v5;
    }

    while (v4 != a3);
    v10 = a4;
  }

  v8 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>,NSArray * {__strong}*,std::allocator<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>,NSArray * {__strong}*>>::~__exception_guard_exceptions[abi:ne200100](v7);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>,NSArray * {__strong}*,std::allocator<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>>(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 2;
    }

    while (v4 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>,NSArray * {__strong}*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>,std::reverse_iterator<NSArray * {__strong}*>,NSArray * {__strong}*>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>,std::reverse_iterator<NSArray * {__strong}*>,NSArray * {__strong}*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 16);
      v6 -= 16;
    }

    while (v6 != a5);
  }
}

uint64_t std::__split_buffer<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }
}

void std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 16)
  {

    v5 = *(i - 16);
  }

  *(a1 + 8) = a2;
}

id std::vector<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::push_back[abi:ne200100](void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>>(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    std::vector<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_1DE89D690(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,void *>>>::operator()[abi:ne200100](uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::remove(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<avas::MatchedSession,avas::MatchedSessionHash,avas::MatchedSessionEqual,std::allocator<avas::MatchedSession>>::__emplace_unique_key_args<avas::MatchedSession,avas::MatchedSession>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v2 ^ (2 * v3);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v2 ^ (2 * v3);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 + 0x1FFFFFFFFLL);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 5) != v3 || *(v9 + 4) != v2)
  {
    goto LABEL_21;
  }

  return v9;
}

uint64_t std::__hash_table<avas::MatchedSession,avas::MatchedSessionHash,avas::MatchedSessionEqual,std::allocator<avas::MatchedSession>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1DE89E648(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id avac::CreateInProcessNotificationCenterServer(avac *this)
{
    v2 = {;
    v1 = vars8;
  }

  return v2;
}

uint64_t avas::SetInProcessNotificationCenterServerFactory()
{

  return MEMORY[0x1EEE66BB8]();
}

id NSErrorWithString(NSString *a1, int a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v9 = *MEMORY[0x1E696A578];
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:a2 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t FormatNSErrorForReturnUnimplemented(void *a1)
{
  if (a1)
  {
    *a1 = NSErrorWithString(&cfstr_NotYetImplemen.isa, -4);
  }

  return 0;
}

BOOL FormatNSErrorForReturn(id a1, void *a2)
{
  if (a1 && a2)
  {
    a1 = a1;
    *a2 = a1;
  }

  return a1 == 0;
}

__int128 *avas::GetSpecialMXNotificationNames(avas *this)
{
  {
    avas::GetSpecialMXNotificationNames(void)::mxNotificationNames = v2;
    qword_1ECDAF4C0 = v3;
    v3 = 0;
    v2 = 0uLL;
    v4 = &v2;
    std::vector<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  return &avas::GetSpecialMXNotificationNames(void)::mxNotificationNames;
}

void anonymous namespace::BuildSpecialMXNotificationNames(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E69AFBB0];
  v5[1] = *MEMORY[0x1E69AFBD8];
  v5[2] = *MEMORY[0x1E69AFC00];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(a1, v5, &v6, 3uLL);
  for (i = 2; i != -1; --i)
  {
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1DE89F424(_Unwind_Exception *a1)
{
  for (i = 16; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void *std::vector<NSString * {__strong}>::push_back[abi:ne200100](void *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *result) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *result;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>>(result, v11);
    }

    v13[0] = 0;
    v13[1] = 8 * v8;
    v13[3] = 0;
    v12 = *a2;
    *a2 = 0;
    *(8 * v8) = v12;
    v13[2] = 8 * v8 + 8;
    std::vector<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::__swap_out_circular_buffer(result, v13);
    v7 = v3[1];
    result = std::__split_buffer<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::~__split_buffer(v13);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
    result[1] = v7;
  }

  v3[1] = v7;
  return result;
}

void sub_1DE89F534(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t avas::client::SessionState::default_instance(avas::client::SessionState *this)
{
  {
    operator new();
  }

  return avas::client::SessionState::default_instance(void)::gInstance;
}

double avas::client::SessionState::SessionState(avas::client::SessionState *this)
{
  *this = &unk_1F5998E20;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 309) = 0;
  return result;
}

{
  *this = &unk_1F5998E20;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 309) = 0;
  return result;
}

avas::client::SessionState *avas::client::SessionState::SessionState(avas::client::SessionState *this, const avas::client::SessionState *a2)
{
  *this = &unk_1F5998E20;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  avas::client::SessionState::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5998E20;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  avas::client::SessionState::copy_from(this, a2);
  return this;
}

__n128 avas::client::SessionState::copy_from(avas::client::SessionState *this, const avas::client::SessionState *a2)
{
  caulk::xstring::assign((this + 64), (a2 + 64));
  caulk::xstring::assign((this + 80), (a2 + 80));
  caulk::xstring::assign((this + 96), (a2 + 96));
  caulk::xstring::assign((this + 112), (a2 + 112));
  caulk::xstring::assign((this + 128), (a2 + 128));
  caulk::xstring::assign((this + 144), (a2 + 144));
  caulk::xstring::assign((this + 160), (a2 + 160));
  v4 = *(a2 + 26);
  if (v4)
  {
    v5 = avas::client::SessionState::mutableActivationContext(this);
    avas::ActivationContext::operator=(v5, v4);
  }

  caulk::xstring::assign((this + 176), (a2 + 176));
  v6 = *(a2 + 27);
  if (v6)
  {
    v7 = avas::client::SessionState::mutableTurnByTurnPref(this);
    avas::client::TurnByTurnPref::copy_from(v7, v6);
  }

  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  if (*(a2 + 2) != *(a2 + 3))
  {
    operator new();
  }

  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 5);
  if (*(a2 + 5) != *(a2 + 6))
  {
    operator new();
  }

  caulk::xstring::assign((this + 192), (a2 + 192));
  *(this + 1) = *(a2 + 1);
  v8 = *(a2 + 15);
  *(this + 14) = *(a2 + 14);
  *(this + 15) = v8;
  result = *(a2 + 16);
  v10 = *(a2 + 17);
  v11 = *(a2 + 18);
  *(this + 301) = *(a2 + 301);
  *(this + 17) = v10;
  *(this + 18) = v11;
  *(this + 16) = result;
  return result;
}

uint64_t avas::client::SessionState::activationContext(avas::client::SessionState *this)
{
  result = *(this + 26);
  if (!result)
  {
    return avas::ActivationContext::default_instance(0);
  }

  return result;
}

uint64_t avas::client::SessionState::mutableActivationContext(avas::client::SessionState *this)
{
  if (!*(this + 26))
  {
    operator new();
  }

  return *(this + 26);
}

uint64_t avas::client::SessionState::turnByTurnPref(avas::client::SessionState *this)
{
  result = *(this + 27);
  if (!result)
  {
    return avas::client::TurnByTurnPref::default_instance(0);
  }

  return result;
}

uint64_t avas::client::SessionState::mutableTurnByTurnPref(avas::client::SessionState *this)
{
  if (!*(this + 27))
  {
    operator new();
  }

  return *(this + 27);
}

avas::client::PortPrefs *avas::client::PortPrefs::PortPrefs(avas::client::PortPrefs *this, const avas::client::PortPrefs *a2)
{
  *this = &unk_1F5998E58;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  avas::client::PortPrefs::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5998E58;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  avas::client::PortPrefs::copy_from(this, a2);
  return this;
}

avas::client::IOControllerPrefs *avas::client::IOControllerPrefs::IOControllerPrefs(avas::client::IOControllerPrefs *this, __n128 *a2)
{
  *this = &unk_1F5998EC8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  avas::client::IOControllerPrefs::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5998EC8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  avas::client::IOControllerPrefs::copy_from(this, a2);
  return this;
}

uint64_t avas::client::SessionState::SessionState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5998E20;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  avas::client::SessionState::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5998E20;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  avas::client::SessionState::move_from(a1, a2);
  return a1;
}

__n128 avas::client::SessionState::move_from(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v17 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v16);
  v16 = 0;
  v17 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v16);
  v16 = 0;
  v17 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v16);
  v16 = 0;
  v17 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v16);
  v16 = 0;
  v17 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v16);
  v16 = 0;
  v17 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v16);
  v16 = 0;
  v17 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v16);
  v4 = *(a1 + 208);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = v4;
  v16 = 0;
  v17 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v16);
  v5 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = v5;
  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v6;
  v7 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v7;
  v8 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  v9 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v9;
  v10 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v10;
  v11 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v11;
  v16 = 0;
  v17 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v16);
  *(a1 + 8) = *(a2 + 8);
  v12 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v12;
  result = *(a2 + 256);
  v14 = *(a2 + 272);
  v15 = *(a2 + 288);
  *(a1 + 301) = *(a2 + 301);
  *(a1 + 272) = v14;
  *(a1 + 288) = v15;
  *(a1 + 256) = result;
  return result;
}

double avas::client::SessionState::clear(avas::client::SessionState *this)
{
  caulk::xstring::clear((this + 64));
  caulk::xstring::clear((this + 80));
  caulk::xstring::clear((this + 96));
  caulk::xstring::clear((this + 112));
  caulk::xstring::clear((this + 128));
  caulk::xstring::clear((this + 144));
  caulk::xstring::clear((this + 160));
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::xstring::clear((this + 176));
  v3 = *(this + 27);
  *(this + 27) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 5);
  caulk::xstring::clear((this + 192));
  result = 0.0;
  *(this + 14) = 0u;
  v5 = (this + 224);
  *(v5 - 27) = 0;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  *(v5 + 77) = 0u;
  return result;
}

void *std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

BOOL avas::client::SessionState::isInitialized(avas::client::SessionState *this)
{
  for (i = *(this + 2); i != *(this + 3); i += 8)
  {
    for (j = *(*i + 16); j != *(*i + 24); j += 8)
    {
      if ((*(*j + 8) & 1) == 0)
      {
        return 0;
      }
    }

    if ((*(*i + 8) & 1) == 0)
    {
      return 0;
    }
  }

  v4 = *(this + 5);
  v5 = *(this + 6);
  while (v4 != v5)
  {
    if (!avas::client::IOControllerPrefs::isInitialized(*v4))
    {
      return 0;
    }

    ++v4;
  }

  if ((~*(this + 2) & 0x1EF) == 0)
  {
    return (~*(this + 3) & 0x38) == 0;
  }

  return 0;
}

uint64_t avas::client::PortPrefs::isInitialized(avas::client::PortPrefs *this)
{
  for (i = *(this + 2); ; i += 8)
  {
    if (i == *(this + 3))
    {
      return *(this + 8) & 1;
    }

    if ((*(*i + 8) & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

BOOL avas::client::IOControllerPrefs::isInitialized(avas::client::IOControllerPrefs *this)
{
  for (i = *(this + 2); i != *(this + 3); i += 8)
  {
    if ((*(*i + 8) & 1) == 0)
    {
      return 0;
    }
  }

  for (j = *(this + 5); j != *(this + 6); j += 8)
  {
    if ((*(*j + 8) & 1) == 0)
    {
      return 0;
    }
  }

  return (~*(this + 2) & 3) == 0;
}

uint64_t avas::client::SessionState::readFrom(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = *(a2 + 24);
  if (v2 < v3 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v16 = 0;
        v17 = 0;
        v10 = 0;
        v18 = v3 - v2;
        if (v3 < v2)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            return (v4 ^ 1) & 1;
          }

          v13 = v20;
          v21 = *v19;
          a2[1] = v13;
          v10 |= (v21 & 0x7F) << v16;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v18;
          ++v19;
          v20 = v13 + 1;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          v13 = v12;
          a2[1] = v12;
          v14 = *v11++;
          v10 |= (v14 & 0x7F) << v8;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v15 = v9++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        return (v4 ^ 1) & 1;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 99)
      {
        switch(v22)
        {
          case 1:
            if (v13 <= 0xFFFFFFFFFFFFFFF5 && v13 + 10 <= v3)
            {
              v23 = 0;
              v24 = 0;
              v25 = 0;
              v26 = (v7 + v13);
              v27 = v13 + 1;
              do
              {
                a2[1] = v27;
                v28 = *v26++;
                v25 |= (v28 & 0x7F) << v23;
                if ((v28 & 0x80) == 0)
                {
                  goto LABEL_340;
                }

                v23 += 7;
                ++v27;
                v15 = v24++ > 8;
              }

              while (!v15);
LABEL_276:
              LODWORD(v25) = 0;
              goto LABEL_340;
            }

            v193 = 0;
            v194 = 0;
            v25 = 0;
            v139 = v3 >= v13;
            v195 = v3 - v13;
            if (!v139)
            {
              v195 = 0;
            }

            v196 = (v7 + v13);
            v197 = v13 + 1;
            while (v195)
            {
              v198 = *v196;
              a2[1] = v197;
              v25 |= (v198 & 0x7F) << v193;
              if ((v198 & 0x80) == 0)
              {
                goto LABEL_340;
              }

              v193 += 7;
              --v195;
              ++v196;
              ++v197;
              v139 = v194++ >= 9;
              if (v139)
              {
                goto LABEL_276;
              }
            }

            LODWORD(v25) = 0;
            *(a2 + 24) = 1;
LABEL_340:
            *(a1 + 256) = v25;
            v136 = *(a1 + 8) | 1;
            goto LABEL_343;
          case 2:
            if (v13 <= 0xFFFFFFFFFFFFFFF5 && v13 + 10 <= v3)
            {
              v88 = 0;
              v89 = 0;
              v90 = 0;
              v91 = (v7 + v13);
              v92 = v13 + 1;
              do
              {
                a2[1] = v92;
                v93 = *v91++;
                v90 |= (v93 & 0x7F) << v88;
                if ((v93 & 0x80) == 0)
                {
                  goto LABEL_334;
                }

                v88 += 7;
                ++v92;
                v15 = v89++ > 8;
              }

              while (!v15);
LABEL_250:
              LODWORD(v90) = 0;
              goto LABEL_334;
            }

            v175 = 0;
            v176 = 0;
            v90 = 0;
            v139 = v3 >= v13;
            v177 = v3 - v13;
            if (!v139)
            {
              v177 = 0;
            }

            v178 = (v7 + v13);
            v179 = v13 + 1;
            while (v177)
            {
              v180 = *v178;
              a2[1] = v179;
              v90 |= (v180 & 0x7F) << v175;
              if ((v180 & 0x80) == 0)
              {
                goto LABEL_334;
              }

              v175 += 7;
              --v177;
              ++v178;
              ++v179;
              v139 = v176++ >= 9;
              if (v139)
              {
                goto LABEL_250;
              }
            }

            LODWORD(v90) = 0;
            *(a2 + 24) = 1;
LABEL_334:
            *(a1 + 260) = v90;
            v136 = *(a1 + 8) | 2;
            goto LABEL_343;
          case 3:
            if (v13 <= 0xFFFFFFFFFFFFFFF5 && v13 + 10 <= v3)
            {
              v82 = 0;
              v83 = 0;
              v84 = 0;
              v85 = (v7 + v13);
              v86 = v13 + 1;
              do
              {
                a2[1] = v86;
                v87 = *v85++;
                v84 |= (v87 & 0x7F) << v82;
                if ((v87 & 0x80) == 0)
                {
                  goto LABEL_332;
                }

                v82 += 7;
                ++v86;
                v15 = v83++ > 8;
              }

              while (!v15);
LABEL_242:
              LODWORD(v84) = 0;
              goto LABEL_332;
            }

            v169 = 0;
            v170 = 0;
            v84 = 0;
            v139 = v3 >= v13;
            v171 = v3 - v13;
            if (!v139)
            {
              v171 = 0;
            }

            v172 = (v7 + v13);
            v173 = v13 + 1;
            while (v171)
            {
              v174 = *v172;
              a2[1] = v173;
              v84 |= (v174 & 0x7F) << v169;
              if ((v174 & 0x80) == 0)
              {
                goto LABEL_332;
              }

              v169 += 7;
              --v171;
              ++v172;
              ++v173;
              v139 = v170++ >= 9;
              if (v139)
              {
                goto LABEL_242;
              }
            }

            LODWORD(v84) = 0;
            *(a2 + 24) = 1;
LABEL_332:
            *(a1 + 264) = v84;
            v136 = *(a1 + 8) | 4;
            goto LABEL_343;
          case 4:
            if (v13 <= 0xFFFFFFFFFFFFFFF5 && v13 + 10 <= v3)
            {
              v70 = 0;
              v71 = 0;
              v72 = 0;
              v73 = (v7 + v13);
              v74 = v13 + 1;
              do
              {
                a2[1] = v74;
                v75 = *v73++;
                v72 |= (v75 & 0x7F) << v70;
                if ((v75 & 0x80) == 0)
                {
                  goto LABEL_328;
                }

                v70 += 7;
                ++v74;
                v15 = v71++ > 8;
              }

              while (!v15);
LABEL_226:
              LODWORD(v72) = 0;
              goto LABEL_328;
            }

            v157 = 0;
            v158 = 0;
            v72 = 0;
            v139 = v3 >= v13;
            v159 = v3 - v13;
            if (!v139)
            {
              v159 = 0;
            }

            v160 = (v7 + v13);
            v161 = v13 + 1;
            while (v159)
            {
              v162 = *v160;
              a2[1] = v161;
              v72 |= (v162 & 0x7F) << v157;
              if ((v162 & 0x80) == 0)
              {
                goto LABEL_328;
              }

              v157 += 7;
              --v159;
              ++v160;
              ++v161;
              v139 = v158++ >= 9;
              if (v139)
              {
                goto LABEL_226;
              }
            }

            LODWORD(v72) = 0;
            *(a2 + 24) = 1;
LABEL_328:
            *(a1 + 268) = v72;
            v136 = *(a1 + 8) | 8;
            goto LABEL_343;
          case 10:
            PB::Reader::read();
            caulk::xstring::assign();
            v37 = *(a1 + 8) | 0x10;
            goto LABEL_148;
          case 11:
            PB::Reader::read();
            caulk::xstring::assign();
            v37 = *(a1 + 8) | 0x20;
            goto LABEL_148;
          case 12:
            if (v13 <= 0xFFFFFFFFFFFFFFF5 && v13 + 10 <= v3)
            {
              v102 = 0;
              v103 = 0;
              v104 = 0;
              v105 = (v7 + v13);
              v106 = v13 + 1;
              do
              {
                a2[1] = v106;
                v107 = *v105++;
                v104 |= (v107 & 0x7F) << v102;
                if ((v107 & 0x80) == 0)
                {
                  goto LABEL_338;
                }

                v102 += 7;
                ++v106;
                v15 = v103++ > 8;
              }

              while (!v15);
LABEL_266:
              v104 = 0;
              goto LABEL_338;
            }

            v187 = 0;
            v188 = 0;
            v104 = 0;
            v139 = v3 >= v13;
            v189 = v3 - v13;
            if (!v139)
            {
              v189 = 0;
            }

            v190 = (v7 + v13);
            v191 = v13 + 1;
            while (v189)
            {
              v192 = *v190;
              a2[1] = v191;
              v104 |= (v192 & 0x7F) << v187;
              if ((v192 & 0x80) == 0)
              {
                goto LABEL_338;
              }

              v187 += 7;
              --v189;
              ++v190;
              ++v191;
              v139 = v188++ >= 9;
              if (v139)
              {
                goto LABEL_266;
              }
            }

            v104 = 0;
            *(a2 + 24) = 1;
LABEL_338:
            *(a1 + 240) = v104;
            v136 = *(a1 + 8) | 0x40;
            goto LABEL_343;
          case 13:
            if (v13 <= 0xFFFFFFFFFFFFFFF5 && v13 + 10 <= v3)
            {
              v76 = 0;
              v77 = 0;
              v78 = 0;
              v79 = (v7 + v13);
              v80 = v13 + 1;
              do
              {
                a2[1] = v80;
                v81 = *v79++;
                v78 |= (v81 & 0x7F) << v76;
                if ((v81 & 0x80) == 0)
                {
                  goto LABEL_330;
                }

                v76 += 7;
                ++v80;
                v15 = v77++ > 8;
              }

              while (!v15);
LABEL_234:
              LODWORD(v78) = 0;
              goto LABEL_330;
            }

            v163 = 0;
            v164 = 0;
            v78 = 0;
            v139 = v3 >= v13;
            v165 = v3 - v13;
            if (!v139)
            {
              v165 = 0;
            }

            v166 = (v7 + v13);
            v167 = v13 + 1;
            while (v165)
            {
              v168 = *v166;
              a2[1] = v167;
              v78 |= (v168 & 0x7F) << v163;
              if ((v168 & 0x80) == 0)
              {
                goto LABEL_330;
              }

              v163 += 7;
              --v165;
              ++v166;
              ++v167;
              v139 = v164++ >= 9;
              if (v139)
              {
                goto LABEL_234;
              }
            }

            LODWORD(v78) = 0;
            *(a2 + 24) = 1;
LABEL_330:
            *(a1 + 272) = v78;
            v136 = *(a1 + 8) | 0x80;
            goto LABEL_343;
          case 14:
            PB::Reader::read();
            caulk::xstring::assign();
            v37 = *(a1 + 8) | 0x100;
            goto LABEL_148;
          case 15:
            if (v13 <= 0xFFFFFFFFFFFFFFF5 && v13 + 10 <= v3)
            {
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = (v7 + v13);
              v62 = v13 + 1;
              do
              {
                a2[1] = v62;
                v63 = *v61++;
                v60 |= (v63 & 0x7F) << v58;
                if ((v63 & 0x80) == 0)
                {
                  goto LABEL_324;
                }

                v58 += 7;
                ++v62;
                v15 = v59++ > 8;
              }

              while (!v15);
LABEL_210:
              LODWORD(v60) = 0;
              goto LABEL_324;
            }

            v145 = 0;
            v146 = 0;
            v60 = 0;
            v139 = v3 >= v13;
            v147 = v3 - v13;
            if (!v139)
            {
              v147 = 0;
            }

            v148 = (v7 + v13);
            v149 = v13 + 1;
            while (v147)
            {
              v150 = *v148;
              a2[1] = v149;
              v60 |= (v150 & 0x7F) << v145;
              if ((v150 & 0x80) == 0)
              {
                goto LABEL_324;
              }

              v145 += 7;
              --v147;
              ++v148;
              ++v149;
              v139 = v146++ >= 9;
              if (v139)
              {
                goto LABEL_210;
              }
            }

            LODWORD(v60) = 0;
            *(a2 + 24) = 1;
LABEL_324:
            *(a1 + 276) = v60;
            v136 = *(a1 + 8) | 0x200;
            goto LABEL_343;
          case 16:
            PB::Reader::read();
            caulk::xstring::assign();
            v37 = *(a1 + 8) | 0x400;
            goto LABEL_148;
          case 17:
            PB::Reader::read();
            caulk::xstring::assign();
            v37 = *(a1 + 8) | 0x800;
            goto LABEL_148;
          case 18:
            PB::Reader::read();
            caulk::xstring::assign();
            v37 = *(a1 + 8) | 0x1000;
            goto LABEL_148;
          case 19:
            if (v13 >= v3)
            {
              v55 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v54 = *(v7 + v13);
              a2[1] = v13 + 1;
              v55 = v54 != 0;
            }

            *(a1 + 300) = v55;
            v136 = *(a1 + 8) | 0x2000;
            goto LABEL_343;
          case 20:
            if (v13 >= v3)
            {
              v111 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v110 = *(v7 + v13);
              a2[1] = v13 + 1;
              v111 = v110 != 0;
            }

            *(a1 + 301) = v111;
            v136 = *(a1 + 8) | 0x4000;
            goto LABEL_343;
          case 24:
            if (v13 >= v3)
            {
              v53 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v52 = *(v7 + v13);
              a2[1] = v13 + 1;
              v53 = v52 != 0;
            }

            *(a1 + 302) = v53;
            v136 = *(a1 + 8) | 0x8000;
            goto LABEL_343;
          case 25:
            if (v13 <= 0xFFFFFFFFFFFFFFF5 && v13 + 10 <= v3)
            {
              v40 = 0;
              v41 = 0;
              v42 = 0;
              v43 = (v7 + v13);
              v44 = v13 + 1;
              do
              {
                a2[1] = v44;
                v45 = *v43++;
                v42 |= (v45 & 0x7F) << v40;
                if ((v45 & 0x80) == 0)
                {
                  goto LABEL_322;
                }

                v40 += 7;
                ++v44;
                v15 = v41++ > 8;
              }

              while (!v15);
LABEL_190:
              LODWORD(v42) = 0;
              goto LABEL_322;
            }

            v137 = 0;
            v138 = 0;
            v42 = 0;
            v139 = v3 >= v13;
            v140 = v3 - v13;
            if (!v139)
            {
              v140 = 0;
            }

            v141 = (v7 + v13);
            v142 = v13 + 1;
            while (v140)
            {
              v143 = *v141;
              a2[1] = v142;
              v42 |= (v143 & 0x7F) << v137;
              if ((v143 & 0x80) == 0)
              {
                goto LABEL_322;
              }

              v137 += 7;
              --v140;
              ++v141;
              ++v142;
              v139 = v138++ >= 9;
              if (v139)
              {
                goto LABEL_190;
              }
            }

            LODWORD(v42) = 0;
            *(a2 + 24) = 1;
LABEL_322:
            *(a1 + 280) = v42;
            v136 = *(a1 + 8) | 0x10000;
            goto LABEL_343;
          case 30:
            if (v13 >= v3)
            {
              v51 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v50 = *(v7 + v13);
              a2[1] = v13 + 1;
              v51 = v50 != 0;
            }

            *(a1 + 303) = v51;
            v136 = *(a1 + 8) | 0x20000;
            goto LABEL_343;
          case 31:
            if (v13 >= v3)
            {
              v49 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v48 = *(v7 + v13);
              a2[1] = v13 + 1;
              v49 = v48 != 0;
            }

            *(a1 + 304) = v49;
            v136 = *(a1 + 8) | 0x40000;
            goto LABEL_343;
          case 32:
            if (v13 >= v3)
            {
              v113 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v112 = *(v7 + v13);
              a2[1] = v13 + 1;
              v113 = v112 != 0;
            }

            *(a1 + 305) = v113;
            v136 = *(a1 + 8) | 0x80000;
            goto LABEL_343;
          case 33:
            if (v13 >= v3)
            {
              v117 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v116 = *(v7 + v13);
              a2[1] = v13 + 1;
              v117 = v116 != 0;
            }

            *(a1 + 306) = v117;
            v136 = *(a1 + 8) | 0x100000;
            goto LABEL_343;
          case 34:
            if (v13 >= v3)
            {
              v119 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v118 = *(v7 + v13);
              a2[1] = v13 + 1;
              v119 = v118 != 0;
            }

            *(a1 + 307) = v119;
            v136 = *(a1 + 8) | 0x200000;
            goto LABEL_343;
          case 35:
            PB::Reader::read();
            caulk::xstring::assign();
            v37 = *(a1 + 8) | 0x400000;
            goto LABEL_148;
          case 36:
            operator new();
          case 37:
            PB::Reader::read();
            caulk::xstring::assign();
            v37 = *(a1 + 8) | 0x800000;
LABEL_148:
            *(a1 + 8) = v37;
            goto LABEL_349;
          case 38:
            if (v13 <= 0xFFFFFFFFFFFFFFF5 && v13 + 10 <= v3)
            {
              v64 = 0;
              v65 = 0;
              v66 = 0;
              v67 = (v7 + v13);
              v68 = v13 + 1;
              do
              {
                a2[1] = v68;
                v69 = *v67++;
                v66 |= (v69 & 0x7F) << v64;
                if ((v69 & 0x80) == 0)
                {
                  goto LABEL_326;
                }

                v64 += 7;
                ++v68;
                v15 = v65++ > 8;
              }

              while (!v15);
LABEL_218:
              LODWORD(v66) = 0;
              goto LABEL_326;
            }

            v151 = 0;
            v152 = 0;
            v66 = 0;
            v139 = v3 >= v13;
            v153 = v3 - v13;
            if (!v139)
            {
              v153 = 0;
            }

            v154 = (v7 + v13);
            v155 = v13 + 1;
            while (v153)
            {
              v156 = *v154;
              a2[1] = v155;
              v66 |= (v156 & 0x7F) << v151;
              if ((v156 & 0x80) == 0)
              {
                goto LABEL_326;
              }

              v151 += 7;
              --v153;
              ++v154;
              ++v155;
              v139 = v152++ >= 9;
              if (v139)
              {
                goto LABEL_218;
              }
            }

            LODWORD(v66) = 0;
            *(a2 + 24) = 1;
LABEL_326:
            *(a1 + 284) = v66;
            v136 = *(a1 + 8) | 0x1000000;
            goto LABEL_343;
          case 39:
            if (v13 >= v3)
            {
              v95 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v94 = *(v7 + v13);
              a2[1] = v13 + 1;
              v95 = v94 != 0;
            }

            *(a1 + 308) = v95;
            v136 = *(a1 + 8) | 0x2000000;
            goto LABEL_343;
          case 40:
            if (v13 <= 0xFFFFFFFFFFFFFFF5 && v13 + 10 <= v3)
            {
              v96 = 0;
              v97 = 0;
              v98 = 0;
              v99 = (v7 + v13);
              v100 = v13 + 1;
              do
              {
                a2[1] = v100;
                v101 = *v99++;
                v98 |= (v101 & 0x7F) << v96;
                if ((v101 & 0x80) == 0)
                {
                  goto LABEL_336;
                }

                v96 += 7;
                ++v100;
                v15 = v97++ > 8;
              }

              while (!v15);
LABEL_258:
              v98 = 0;
              goto LABEL_336;
            }

            v181 = 0;
            v182 = 0;
            v98 = 0;
            v139 = v3 >= v13;
            v183 = v3 - v13;
            if (!v139)
            {
              v183 = 0;
            }

            v184 = (v7 + v13);
            v185 = v13 + 1;
            while (v183)
            {
              v186 = *v184;
              a2[1] = v185;
              v98 |= (v186 & 0x7F) << v181;
              if ((v186 & 0x80) == 0)
              {
                goto LABEL_336;
              }

              v181 += 7;
              --v183;
              ++v184;
              ++v185;
              v139 = v182++ >= 9;
              if (v139)
              {
                goto LABEL_258;
              }
            }

            v98 = 0;
            *(a2 + 24) = 1;
LABEL_336:
            *(a1 + 248) = v98;
            v136 = *(a1 + 8) | 0x4000000;
            goto LABEL_343;
          case 50:
            if (v13 <= 0xFFFFFFFFFFFFFFF5 && v13 + 10 <= v3)
            {
              v122 = 0;
              v123 = 0;
              v124 = 0;
              v125 = (v7 + v13);
              v126 = v13 + 1;
              do
              {
                a2[1] = v126;
                v127 = *v125++;
                v124 |= (v127 & 0x7F) << v122;
                if ((v127 & 0x80) == 0)
                {
                  goto LABEL_342;
                }

                v122 += 7;
                ++v126;
                v15 = v123++ > 8;
              }

              while (!v15);
LABEL_296:
              LODWORD(v124) = 0;
              goto LABEL_342;
            }

            v199 = 0;
            v200 = 0;
            v124 = 0;
            v139 = v3 >= v13;
            v201 = v3 - v13;
            if (!v139)
            {
              v201 = 0;
            }

            v202 = (v7 + v13);
            v203 = v13 + 1;
            while (v201)
            {
              v204 = *v202;
              a2[1] = v203;
              v124 |= (v204 & 0x7F) << v199;
              if ((v204 & 0x80) == 0)
              {
                goto LABEL_342;
              }

              v199 += 7;
              --v201;
              ++v202;
              ++v203;
              v139 = v200++ >= 9;
              if (v139)
              {
                goto LABEL_296;
              }
            }

            LODWORD(v124) = 0;
            *(a2 + 24) = 1;
LABEL_342:
            *(a1 + 288) = v124;
            v136 = *(a1 + 8) | 0x8000000;
LABEL_343:
            *(a1 + 8) = v136;
            break;
          case 51:
            if (v13 >= v3)
            {
              v121 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v120 = *(v7 + v13);
              a2[1] = v13 + 1;
              v121 = v120 != 0;
            }

            *(a1 + 309) = v121;
            v136 = *(a1 + 8) | 0x10000000;
            goto LABEL_343;
          case 52:
            operator new();
          case 53:
            if (v13 >= v3)
            {
              v47 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v46 = *(v7 + v13);
              a2[1] = v13 + 1;
              v47 = v46 != 0;
            }

            *(a1 + 310) = v47;
            v136 = *(a1 + 8) | 0x20000000;
            goto LABEL_343;
          case 54:
            if (v13 >= v3)
            {
              v39 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v38 = *(v7 + v13);
              a2[1] = v13 + 1;
              v39 = v38 != 0;
            }

            *(a1 + 311) = v39;
            v136 = *(a1 + 8) | 0x40000000;
            goto LABEL_343;
          case 55:
            if (v13 > 0xFFFFFFFFFFFFFFFBLL || v13 + 4 > v3)
            {
              *(a2 + 24) = 1;
            }

            else
            {
              *(a1 + 232) = *(v7 + v13);
              a2[1] += 4;
            }

            v136 = *(a1 + 8) | 0x80000000;
            goto LABEL_343;
          case 56:
            if (v13 >= v3)
            {
              v57 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v56 = *(v7 + v13);
              a2[1] = v13 + 1;
              v57 = v56 != 0;
            }

            *(a1 + 312) = v57;
            v144 = *(a1 + 12) | 1;
            goto LABEL_348;
          case 57:
            if (v13 >= v3)
            {
              v109 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v108 = *(v7 + v13);
              a2[1] = v13 + 1;
              v109 = v108 != 0;
            }

            *(a1 + 313) = v109;
            v144 = *(a1 + 12) | 2;
            goto LABEL_348;
          case 58:
            if (v13 >= v3)
            {
              v115 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v114 = *(v7 + v13);
              a2[1] = v13 + 1;
              v115 = v114 != 0;
            }

            *(a1 + 314) = v115;
            v144 = *(a1 + 12) | 4;
            goto LABEL_348;
          default:
            goto LABEL_349;
        }

        goto LABEL_349;
      }

      if (v22 > 111)
      {
        if (v22 > 150)
        {
          if (v22 == 151)
          {
            if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v3)
            {
              v205 = 0;
              v206 = 0;
              v132 = 0;
              v139 = v3 >= v13;
              v207 = v3 - v13;
              if (!v139)
              {
                v207 = 0;
              }

              v208 = (v7 + v13);
              v209 = v13 + 1;
              while (v207)
              {
                v210 = *v208;
                a2[1] = v209;
                v132 |= (v210 & 0x7F) << v205;
                if ((v210 & 0x80) == 0)
                {
                  goto LABEL_345;
                }

                v205 += 7;
                --v207;
                ++v208;
                ++v209;
                v139 = v206++ >= 9;
                if (v139)
                {
LABEL_306:
                  LODWORD(v132) = 0;
                  goto LABEL_345;
                }
              }

              LODWORD(v132) = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v130 = 0;
              v131 = 0;
              v132 = 0;
              v133 = (v7 + v13);
              v134 = v13 + 1;
              while (1)
              {
                a2[1] = v134;
                v135 = *v133++;
                v132 |= (v135 & 0x7F) << v130;
                if ((v135 & 0x80) == 0)
                {
                  break;
                }

                v130 += 7;
                ++v134;
                v15 = v131++ > 8;
                if (v15)
                {
                  goto LABEL_306;
                }
              }
            }

LABEL_345:
            *(a1 + 292) = v132;
            v144 = *(a1 + 12) | 0x80;
          }

          else
          {
            if (v22 != 152)
            {
              goto LABEL_349;
            }

            if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v3)
            {
              v211 = 0;
              v212 = 0;
              v33 = 0;
              v139 = v3 >= v13;
              v213 = v3 - v13;
              if (!v139)
              {
                v213 = 0;
              }

              v214 = (v7 + v13);
              v215 = v13 + 1;
              while (v213)
              {
                v216 = *v214;
                a2[1] = v215;
                v33 |= (v216 & 0x7F) << v211;
                if ((v216 & 0x80) == 0)
                {
                  goto LABEL_347;
                }

                v211 += 7;
                --v213;
                ++v214;
                ++v215;
                v139 = v212++ >= 9;
                if (v139)
                {
LABEL_316:
                  LODWORD(v33) = 0;
                  goto LABEL_347;
                }
              }

              LODWORD(v33) = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v31 = 0;
              v32 = 0;
              v33 = 0;
              v34 = (v7 + v13);
              v35 = v13 + 1;
              while (1)
              {
                a2[1] = v35;
                v36 = *v34++;
                v33 |= (v36 & 0x7F) << v31;
                if ((v36 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                ++v35;
                v15 = v32++ > 8;
                if (v15)
                {
                  goto LABEL_316;
                }
              }
            }

LABEL_347:
            *(a1 + 296) = v33;
            v144 = *(a1 + 12) | 0x100;
          }
        }

        else if (v22 == 112)
        {
          if (v13 >= v3)
          {
            v129 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v128 = *(v7 + v13);
            a2[1] = v13 + 1;
            v129 = v128 != 0;
          }

          *(a1 + 316) = v129;
          v144 = *(a1 + 12) | 0x20;
        }

        else
        {
          if (v22 != 150)
          {
            goto LABEL_349;
          }

          if (v13 > 0xFFFFFFFFFFFFFFF7 || v13 + 8 > v3)
          {
            *(a2 + 24) = 1;
          }

          else
          {
            *(a1 + 224) = *(v7 + v13);
            a2[1] += 8;
          }

          v144 = *(a1 + 12) | 0x40;
        }
      }

      else
      {
        if (v22 <= 109)
        {
          if (v22 == 100)
          {
            operator new();
          }

          if (v22 == 101)
          {
            operator new();
          }

          goto LABEL_349;
        }

        if (v22 == 110)
        {
          PB::Reader::read();
          caulk::xstring::assign();
          *(a1 + 12) |= 8u;
          goto LABEL_349;
        }

        if (v13 >= v3)
        {
          v30 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v29 = *(v7 + v13);
          a2[1] = v13 + 1;
          v30 = v29 != 0;
        }

        *(a1 + 315) = v30;
        v144 = *(a1 + 12) | 0x10;
      }

LABEL_348:
      *(a1 + 12) = v144;
LABEL_349:
      v2 = a2[1];
      v3 = a2[2];
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (a2[3] & 1) == 0);
  }

  return (v4 ^ 1) & 1;
}

void avas::client::SessionState::writeTo(avas::client::SessionState *this, PB::Writer *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    v6 = *(this + 64);
    PB::Writer::writeVarInt(a2);
    v4 = *(this + 2);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 65);
  PB::Writer::writeVarInt(a2);
  v4 = *(this + 2);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  v8 = *(this + 66);
  PB::Writer::writeVarInt(a2);
  v4 = *(this + 2);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  v9 = *(this + 67);
  PB::Writer::writeVarInt(a2);
  v4 = *(this + 2);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_39:
  caulk::xstring::as_std_string((this + 64), __p);
  PB::Writer::write();
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(this + 2);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_42:
  caulk::xstring::as_std_string((this + 80), __p);
  PB::Writer::write();
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(this + 2);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  v10 = *(this + 30);
  PB::Writer::writeVarInt(a2);
  v4 = *(this + 2);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  v11 = *(this + 68);
  PB::Writer::writeVarInt(a2);
  v4 = *(this + 2);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_47:
  caulk::xstring::as_std_string((this + 96), __p);
  PB::Writer::write();
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(this + 2);
  if ((v4 & 0x200) != 0)
  {
LABEL_11:
    v5 = *(this + 69);
    PB::Writer::writeVarInt(a2);
    v4 = *(this + 2);
  }

LABEL_12:
  if ((v4 & 0x400) != 0)
  {
    caulk::xstring::as_std_string((this + 112), __p);
    PB::Writer::write();
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = *(this + 2);
  }

  if ((v4 & 0x800) != 0)
  {
    caulk::xstring::as_std_string((this + 128), __p);
    PB::Writer::write();
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = *(this + 2);
  }

  if ((v4 & 0x1000) != 0)
  {
    caulk::xstring::as_std_string((this + 144), __p);
    PB::Writer::write();
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = *(this + 2);
  }

  if ((v4 & 0x2000) != 0)
  {
    v12 = *(this + 300);
    PB::Writer::write(a2);
    v4 = *(this + 2);
    if ((v4 & 0x4000) == 0)
    {
LABEL_26:
      if ((v4 & 0x8000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_53;
    }
  }

  else if ((v4 & 0x4000) == 0)
  {
    goto LABEL_26;
  }

  v13 = *(this + 301);
  PB::Writer::write(a2);
  v4 = *(this + 2);
  if ((v4 & 0x8000) == 0)
  {
LABEL_27:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_54;
  }

LABEL_53:
  v14 = *(this + 302);
  PB::Writer::write(a2);
  v4 = *(this + 2);
  if ((v4 & 0x10000) == 0)
  {
LABEL_28:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_55;
  }

LABEL_54:
  v15 = *(this + 70);
  PB::Writer::writeVarInt(a2);
  v4 = *(this + 2);
  if ((v4 & 0x20000) == 0)
  {
LABEL_29:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

LABEL_55:
  v16 = *(this + 303);
  PB::Writer::write(a2);
  v4 = *(this + 2);
  if ((v4 & 0x40000) == 0)
  {
LABEL_30:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_57;
  }

LABEL_56:
  v17 = *(this + 304);
  PB::Writer::write(a2);
  v4 = *(this + 2);
  if ((v4 & 0x80000) == 0)
  {
LABEL_31:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_58;
  }

LABEL_57:
  v18 = *(this + 305);
  PB::Writer::write(a2);
  v4 = *(this + 2);
  if ((v4 & 0x100000) == 0)
  {
LABEL_32:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_59;
  }

LABEL_58:
  v19 = *(this + 306);
  PB::Writer::write(a2);
  v4 = *(this + 2);
  if ((v4 & 0x200000) == 0)
  {
LABEL_33:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

LABEL_59:
  v20 = *(this + 307);
  PB::Writer::write(a2);
  if ((*(this + 2) & 0x400000) == 0)
  {
    goto LABEL_62;
  }

LABEL_60:
  caulk::xstring::as_std_string((this + 160), __p);
  PB::Writer::write();
  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_62:
  v21 = *(this + 26);
  if (v21)
  {
    PB::Writer::writeSubmessage(a2, v21);
  }

  v22 = *(this + 2);
  if ((v22 & 0x800000) != 0)
  {
    caulk::xstring::as_std_string((this + 176), __p);
    PB::Writer::write();
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    v22 = *(this + 2);
  }

  if ((v22 & 0x1000000) != 0)
  {
    v36 = *(this + 71);
    PB::Writer::writeVarInt(a2);
    v22 = *(this + 2);
    if ((v22 & 0x2000000) == 0)
    {
LABEL_70:
      if ((v22 & 0x4000000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_102;
    }
  }

  else if ((v22 & 0x2000000) == 0)
  {
    goto LABEL_70;
  }

  v37 = *(this + 308);
  PB::Writer::write(a2);
  v22 = *(this + 2);
  if ((v22 & 0x4000000) == 0)
  {
LABEL_71:
    if ((v22 & 0x8000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_103;
  }

LABEL_102:
  v38 = *(this + 31);
  PB::Writer::writeVarInt(a2);
  v22 = *(this + 2);
  if ((v22 & 0x8000000) == 0)
  {
LABEL_72:
    if ((v22 & 0x10000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_103:
  v39 = *(this + 72);
  PB::Writer::writeVarInt(a2);
  if ((*(this + 2) & 0x10000000) != 0)
  {
LABEL_73:
    v23 = *(this + 309);
    PB::Writer::write(a2);
  }

LABEL_74:
  v24 = *(this + 27);
  if (v24)
  {
    PB::Writer::writeSubmessage(a2, v24);
  }

  v25 = *(this + 2);
  if ((v25 & 0x20000000) == 0)
  {
    if ((v25 & 0x40000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_106:
    v41 = *(this + 311);
    PB::Writer::write(a2);
    if ((*(this + 2) & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_107;
  }

  v40 = *(this + 310);
  PB::Writer::write(a2);
  v25 = *(this + 2);
  if ((v25 & 0x40000000) != 0)
  {
    goto LABEL_106;
  }

LABEL_78:
  if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

LABEL_107:
  PB::Writer::write(a2, *(this + 58));
LABEL_79:
  v26 = *(this + 3);
  if ((v26 & 1) == 0)
  {
    if ((v26 & 2) == 0)
    {
      goto LABEL_81;
    }

LABEL_109:
    v43 = *(this + 313);
    PB::Writer::write(a2);
    if ((*(this + 3) & 4) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  v42 = *(this + 312);
  PB::Writer::write(a2);
  v26 = *(this + 3);
  if ((v26 & 2) != 0)
  {
    goto LABEL_109;
  }

LABEL_81:
  if ((v26 & 4) != 0)
  {
LABEL_82:
    v27 = *(this + 314);
    PB::Writer::write(a2);
  }

LABEL_83:
  v28 = *(this + 2);
  v29 = *(this + 3);
  while (v28 != v29)
  {
    v30 = *v28++;
    PB::Writer::writeSubmessage(a2, v30);
  }

  v31 = *(this + 5);
  v32 = *(this + 6);
  while (v31 != v32)
  {
    v33 = *v31++;
    PB::Writer::writeSubmessage(a2, v33);
  }

  v34 = *(this + 3);
  if ((v34 & 8) != 0)
  {
    caulk::xstring::as_std_string((this + 192), __p);
    PB::Writer::write();
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    v34 = *(this + 3);
  }

  if ((v34 & 0x10) != 0)
  {
    v44 = *(this + 315);
    PB::Writer::write(a2);
    v34 = *(this + 3);
    if ((v34 & 0x20) == 0)
    {
LABEL_95:
      if ((v34 & 0x40) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_113;
    }
  }

  else if ((v34 & 0x20) == 0)
  {
    goto LABEL_95;
  }

  v45 = *(this + 316);
  PB::Writer::write(a2);
  v34 = *(this + 3);
  if ((v34 & 0x40) == 0)
  {
LABEL_96:
    if ((v34 & 0x80) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_114;
  }

LABEL_113:
  PB::Writer::write(a2, *(this + 28));
  v34 = *(this + 3);
  if ((v34 & 0x80) == 0)
  {
LABEL_97:
    if ((v34 & 0x100) == 0)
    {
      return;
    }

    goto LABEL_98;
  }

LABEL_114:
  v46 = *(this + 73);
  PB::Writer::writeVarInt(a2);
  if ((*(this + 3) & 0x100) == 0)
  {
    return;
  }

LABEL_98:
  v35 = *(this + 74);
  PB::Writer::writeVarInt(a2);
}

void sub_1DE8A2430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::client::SessionState::formatText(avas::client::SessionState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v7 = *(this + 64);
    PB::TextFormatter::format(a2, "sessionToken");
    v5 = *(this + 2);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 65);
  PB::TextFormatter::format(a2, "generationCount");
  v5 = *(this + 2);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  v9 = *(this + 66);
  PB::TextFormatter::format(a2, "originatingProcessToken");
  v5 = *(this + 2);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  v10 = *(this + 67);
  PB::TextFormatter::format(a2, "processOwningIOResources");
  v5 = *(this + 2);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_39:
  caulk::xstring::as_std_string((this + 64), __p);
  PB::TextFormatter::format();
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(this + 2);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_42:
  caulk::xstring::as_std_string((this + 80), __p);
  PB::TextFormatter::format();
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(this + 2);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  v11 = *(this + 30);
  PB::TextFormatter::format(a2, "categoryOptions");
  v5 = *(this + 2);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  v12 = *(this + 68);
  PB::TextFormatter::format(a2, "routeSharingPolicy");
  v5 = *(this + 2);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_47:
  caulk::xstring::as_std_string((this + 96), __p);
  PB::TextFormatter::format();
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(this + 2);
  if ((v5 & 0x200) != 0)
  {
LABEL_11:
    v6 = *(this + 69);
    PB::TextFormatter::format(a2, "outputPortOverride");
    v5 = *(this + 2);
  }

LABEL_12:
  if ((v5 & 0x400) != 0)
  {
    caulk::xstring::as_std_string((this + 112), __p);
    PB::TextFormatter::format();
    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = *(this + 2);
  }

  if ((v5 & 0x800) != 0)
  {
    caulk::xstring::as_std_string((this + 128), __p);
    PB::TextFormatter::format();
    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = *(this + 2);
  }

  if ((v5 & 0x1000) != 0)
  {
    caulk::xstring::as_std_string((this + 144), __p);
    PB::TextFormatter::format();
    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = *(this + 2);
  }

  if ((v5 & 0x2000) != 0)
  {
    v13 = *(this + 300);
    PB::TextFormatter::format(a2, "allowHapticsAndSystemSoundsDuringRecording");
    v5 = *(this + 2);
    if ((v5 & 0x4000) == 0)
    {
LABEL_26:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_53;
    }
  }

  else if ((v5 & 0x4000) == 0)
  {
    goto LABEL_26;
  }

  v14 = *(this + 301);
  PB::TextFormatter::format(a2, "prefersNoInterruptionsFromSystemAlerts");
  v5 = *(this + 2);
  if ((v5 & 0x8000) == 0)
  {
LABEL_27:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_54;
  }

LABEL_53:
  v15 = *(this + 302);
  PB::TextFormatter::format(a2, "microphoneFollowsCamera");
  v5 = *(this + 2);
  if ((v5 & 0x10000) == 0)
  {
LABEL_28:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_55;
  }

LABEL_54:
  v16 = *(this + 70);
  PB::TextFormatter::format(a2, "aggregatedIOPreference");
  v5 = *(this + 2);
  if ((v5 & 0x20000) == 0)
  {
LABEL_29:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

LABEL_55:
  v17 = *(this + 303);
  PB::TextFormatter::format(a2, "forceSoundCheck");
  v5 = *(this + 2);
  if ((v5 & 0x40000) == 0)
  {
LABEL_30:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_57;
  }

LABEL_56:
  v18 = *(this + 304);
  PB::TextFormatter::format(a2, "usingLongFormAudio");
  v5 = *(this + 2);
  if ((v5 & 0x80000) == 0)
  {
LABEL_31:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_58;
  }

LABEL_57:
  v19 = *(this + 305);
  PB::TextFormatter::format(a2, "allowAllBuiltInDataSources");
  v5 = *(this + 2);
  if ((v5 & 0x100000) == 0)
  {
LABEL_32:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_59;
  }

LABEL_58:
  v20 = *(this + 306);
  PB::TextFormatter::format(a2, "fixHardwareFormatToMultiChannel");
  v5 = *(this + 2);
  if ((v5 & 0x200000) == 0)
  {
LABEL_33:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

LABEL_59:
  v21 = *(this + 307);
  PB::TextFormatter::format(a2, "iAmTheAssistant");
  if ((*(this + 2) & 0x400000) == 0)
  {
    goto LABEL_62;
  }

LABEL_60:
  caulk::xstring::as_std_string((this + 160), __p);
  PB::TextFormatter::format();
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_62:
  v22 = *(this + 26);
  if (v22)
  {
    (*(*v22 + 32))(v22, a2, "activationContext");
  }

  v23 = *(this + 2);
  if ((v23 & 0x800000) != 0)
  {
    caulk::xstring::as_std_string((this + 176), __p);
    PB::TextFormatter::format();
    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

    v23 = *(this + 2);
  }

  if ((v23 & 0x1000000) != 0)
  {
    v38 = *(this + 71);
    PB::TextFormatter::format(a2, "interruptionPriority");
    v23 = *(this + 2);
    if ((v23 & 0x2000000) == 0)
    {
LABEL_70:
      if ((v23 & 0x4000000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_100;
    }
  }

  else if ((v23 & 0x2000000) == 0)
  {
    goto LABEL_70;
  }

  v39 = *(this + 308);
  PB::TextFormatter::format(a2, "bypassRingerSwitchPolicy");
  v23 = *(this + 2);
  if ((v23 & 0x4000000) == 0)
  {
LABEL_71:
    if ((v23 & 0x8000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_101;
  }

LABEL_100:
  v40 = *(this + 31);
  PB::TextFormatter::format(a2, "hardwareControlFlags");
  v23 = *(this + 2);
  if ((v23 & 0x8000000) == 0)
  {
LABEL_72:
    if ((v23 & 0x10000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_101:
  v41 = *(this + 72);
  PB::TextFormatter::format(a2, "reporterID");
  if ((*(this + 2) & 0x10000000) != 0)
  {
LABEL_73:
    v24 = *(this + 309);
    PB::TextFormatter::format(a2, "selectIndependentRoutingContext");
  }

LABEL_74:
  v25 = *(this + 27);
  if (v25)
  {
    (*(*v25 + 32))(v25, a2, "turnByTurnPref");
  }

  v26 = *(this + 2);
  if ((v26 & 0x20000000) == 0)
  {
    if ((v26 & 0x40000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_104:
    v43 = *(this + 311);
    PB::TextFormatter::format(a2, "requiresNoAudioResources");
    if ((*(this + 2) & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_105;
  }

  v42 = *(this + 310);
  PB::TextFormatter::format(a2, "voiceProcessingRoutingEnabled");
  v26 = *(this + 2);
  if ((v26 & 0x40000000) != 0)
  {
    goto LABEL_104;
  }

LABEL_78:
  if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

LABEL_105:
  PB::TextFormatter::format(a2, "interruptionFadeDuration", *(this + 58));
LABEL_79:
  v27 = *(this + 3);
  if (v27)
  {
    v44 = *(this + 312);
    PB::TextFormatter::format(a2, "allowMixableAudioWhileRecording");
    v27 = *(this + 3);
    if ((v27 & 2) == 0)
    {
LABEL_81:
      if ((v27 & 4) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }
  }

  else if ((v27 & 2) == 0)
  {
    goto LABEL_81;
  }

  v45 = *(this + 313);
  PB::TextFormatter::format(a2, "recordingFromRemoteInput");
  if ((*(this + 3) & 4) != 0)
  {
LABEL_82:
    v28 = *(this + 314);
    PB::TextFormatter::format(a2, "prefersNoDucking");
  }

LABEL_83:
  v29 = *(this + 2);
  v30 = *(this + 3);
  while (v29 != v30)
  {
    v31 = *v29++;
    (*(*v31 + 32))(v31, a2, "portPrefs");
  }

  v32 = *(this + 5);
  v33 = *(this + 6);
  while (v32 != v33)
  {
    v34 = *v32++;
    (*(*v34 + 32))(v34, a2, "ioControllerPrefs");
  }

  v35 = *(this + 3);
  if ((v35 & 8) != 0)
  {
    caulk::xstring::as_std_string((this + 192), __p);
    PB::TextFormatter::format();
    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

    v35 = *(this + 3);
  }

  if ((v35 & 0x10) != 0)
  {
    v46 = *(this + 315);
    PB::TextFormatter::format(a2, "wantsBackgroundAudio");
    v35 = *(this + 3);
    if ((v35 & 0x20) == 0)
    {
LABEL_93:
      if ((v35 & 0x40) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_111;
    }
  }

  else if ((v35 & 0x20) == 0)
  {
    goto LABEL_93;
  }

  v47 = *(this + 316);
  PB::TextFormatter::format(a2, "wantsMicrophonePermission");
  v35 = *(this + 3);
  if ((v35 & 0x40) == 0)
  {
LABEL_94:
    if ((v35 & 0x80) == 0)
    {
      goto LABEL_95;
    }

LABEL_112:
    v48 = *(this + 73);
    PB::TextFormatter::format(a2, "preferredInputNumberOfChannels");
    if ((*(this + 3) & 0x100) == 0)
    {
      return PB::TextFormatter::endObject(a2);
    }

    goto LABEL_96;
  }

LABEL_111:
  PB::TextFormatter::format(a2, "preferredSampleRate", *(this + 28));
  v35 = *(this + 3);
  if ((v35 & 0x80) != 0)
  {
    goto LABEL_112;
  }

LABEL_95:
  if ((v35 & 0x100) != 0)
  {
LABEL_96:
    v36 = *(this + 74);
    PB::TextFormatter::format(a2, "preferredOutputNumberOfChannels");
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8A2BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::client::SessionState::operator==(void *a1, void *a2)
{
  if (a1[1] != a2[1])
  {
    return 0;
  }

  if (memcmp(a1 + 28, a2 + 28, 0x5DuLL) || caulk::xstring::compare((a1 + 8), (a2 + 8)) || caulk::xstring::compare((a1 + 10), (a2 + 10)) || caulk::xstring::compare((a1 + 12), (a2 + 12)) || caulk::xstring::compare((a1 + 14), (a2 + 14)) || caulk::xstring::compare((a1 + 16), (a2 + 16)) || caulk::xstring::compare((a1 + 18), (a2 + 18)) || caulk::xstring::compare((a1 + 20), (a2 + 20)))
  {
    return 0;
  }

  v5 = a1[26];
  v6 = a2[26];
  if (v5 && v6)
  {
    if (!avas::ActivationContext::operator==(v5, v6))
    {
      return 0;
    }
  }

  else if (v5 | v6)
  {
    return 0;
  }

  if (caulk::xstring::compare((a1 + 22), (a2 + 22)))
  {
    return 0;
  }

  v7 = a1[27];
  v8 = a2[27];
  if (v7 && v8)
  {
    if (avas::client::TurnByTurnPref::operator==(v7, v8))
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v7 | v8)
  {
    return 0;
  }

LABEL_23:
  v10 = a1[2];
  v9 = a1[3];
  v11 = v9 - v10;
  if (v9 - v10 != a2[3] - a2[2])
  {
    return 0;
  }

  if (v9 != v10)
  {
    v12 = 0;
    v13 = v11 >> 3;
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    do
    {
      v15 = *(a1[2] + 8 * v12);
      v16 = v12;
      v17 = *(a2[2] + 8 * v12);
      if (v15)
      {
        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        if (v15 | v17)
        {
          return 0;
        }
      }

      else if (!avas::client::PortPrefs::operator==(v15, v17))
      {
        return 0;
      }

      v12 = v16 + 1;
    }

    while (v14 != v16 + 1);
  }

  v20 = a1[5];
  v19 = a1[6];
  if (v19 - v20 != a2[6] - a2[5])
  {
    return 0;
  }

  if (v19 != v20)
  {
    v21 = 0;
    if (((v19 - v20) >> 3) <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = (v19 - v20) >> 3;
    }

    do
    {
      v23 = *(a1[5] + 8 * v21);
      v24 = *(a2[5] + 8 * v21);
      if (v23)
      {
        v25 = v24 == 0;
      }

      else
      {
        v25 = 1;
      }

      if (v25)
      {
        if (v23 | v24)
        {
          return 0;
        }
      }

      else if (!avas::client::IOControllerPrefs::operator==(v23, v24))
      {
        return 0;
      }

      ++v21;
    }

    while (v22 != v21);
  }

  return caulk::xstring::compare((a1 + 24), (a2 + 24)) == 0;
}

uint64_t avas::client::SessionState::clearActivationContext(avas::client::SessionState *this)
{
  result = *(this + 26);
  *(this + 26) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::client::TurnByTurnPref::default_instance(avas::client::TurnByTurnPref *this)
{
  {
    operator new();
  }

  return avas::client::TurnByTurnPref::default_instance(void)::gInstance;
}

uint64_t avas::client::TurnByTurnPref::TurnByTurnPref(uint64_t this)
{
  *this = &unk_1F5998F38;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F5998F38;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t avas::client::SessionState::clearTurnByTurnPref(avas::client::SessionState *this)
{
  result = *(this + 27);
  *(this + 27) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void avas::client::SessionState::addPortPrefs(avas::client::SessionState *this)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  if (v3 >= v2)
  {
    v5 = this + 16;
    v6 = *(this + 2);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 16;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 2);
    *(this + 2) = v15;
    *(this + 3) = v4;
    v17 = *(this + 4);
    *(this + 4) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 3) = v4;
  operator new();
}

void avas::client::SessionState::addIoControllerPrefs(avas::client::SessionState *this)
{
  v3 = *(this + 6);
  v2 = *(this + 7);
  if (v3 >= v2)
  {
    v5 = this + 40;
    v6 = *(this + 5);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 40;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 5);
    *(this + 5) = v15;
    *(this + 6) = v4;
    v17 = *(this + 7);
    *(this + 7) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 6) = v4;
  operator new();
}

uint64_t avas::client::PortPrefs::default_instance(avas::client::PortPrefs *this)
{
  {
    operator new();
  }

  return avas::client::PortPrefs::default_instance(void)::gInstance;
}

double avas::client::PortPrefs::PortPrefs(avas::client::PortPrefs *this)
{
  *this = &unk_1F5998E58;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 44) = 0u;
  return result;
}

{
  *this = &unk_1F5998E58;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 44) = 0u;
  return result;
}

void *avas::client::PortPrefs::copy_from(avas::client::PortPrefs *this, const avas::client::PortPrefs *a2)
{
  caulk::xstring::assign((this + 40), (a2 + 40));
  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  if (*(a2 + 2) != *(a2 + 3))
  {
    operator new();
  }

  *(this + 2) = *(a2 + 2);
  *(this + 14) = *(a2 + 14);
  return result;
}

uint64_t avas::client::PolarPatternPref::PolarPatternPref(uint64_t result, uint64_t a2)
{
  *result = &unk_1F5998E90;
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  return result;
}

{
  *result = &unk_1F5998E90;
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  return result;
}

{
  *result = &unk_1F5998E90;
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  return result;
}

uint64_t avas::client::PortPrefs::PortPrefs(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5998E58;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  avas::client::PortPrefs::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5998E58;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  avas::client::PortPrefs::move_from(a1, a2);
  return a1;
}

uint64_t avas::client::PortPrefs::move_from(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  result = caulk::xstring::clear(v8);
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v6;
  v7 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v7;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 56) = *(a2 + 56);
  return result;
}

void *avas::client::PortPrefs::clear(avas::client::PortPrefs *this)
{
  caulk::xstring::clear((this + 40));
  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  *(this + 2) = 0;
  *(this + 14) = 0;
  return result;
}

uint64_t avas::client::PortPrefs::readFrom(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 < v2 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v16 = 0;
        v17 = 0;
        v10 = 0;
        v18 = v2 - v3;
        if (v2 < v3)
        {
          v18 = 0;
        }

        v19 = (v7 + v3);
        v20 = v3 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            return (v4 ^ 1) & 1;
          }

          v13 = v20;
          v21 = *v19;
          a2[1] = v13;
          v10 |= (v21 & 0x7F) << v16;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v18;
          ++v19;
          v20 = v13 + 1;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          v13 = v12;
          a2[1] = v12;
          v14 = *v11++;
          v10 |= (v14 & 0x7F) << v8;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v15 = v9++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        operator new();
      }

      if (v22 == 2)
      {
        if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
        {
          v29 = 0;
          v30 = 0;
          v25 = 0;
          v31 = v2 >= v13;
          v32 = v2 - v13;
          if (!v31)
          {
            v32 = 0;
          }

          v33 = (v7 + v13);
          v34 = v13 + 1;
          while (v32)
          {
            v35 = *v33;
            a2[1] = v34;
            v25 |= (v35 & 0x7F) << v29;
            if ((v35 & 0x80) == 0)
            {
              goto LABEL_43;
            }

            v29 += 7;
            --v32;
            ++v33;
            ++v34;
            v31 = v30++ >= 9;
            if (v31)
            {
LABEL_41:
              LODWORD(v25) = 0;
              goto LABEL_43;
            }
          }

          LODWORD(v25) = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v26 = (v7 + v13);
          v27 = v13 + 1;
          while (1)
          {
            a2[1] = v27;
            v28 = *v26++;
            v25 |= (v28 & 0x7F) << v23;
            if ((v28 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            ++v27;
            v15 = v24++ > 8;
            if (v15)
            {
              goto LABEL_41;
            }
          }
        }

LABEL_43:
        *(a1 + 56) = v25;
        *(a1 + 8) |= 2u;
      }

      else if (v22 == 1)
      {
        PB::Reader::read();
        caulk::xstring::assign();
        *(a1 + 8) |= 1u;
      }

      v3 = a2[1];
      v2 = a2[2];
      v4 = *(a2 + 24);
      if (v3 >= v2)
      {
        break;
      }
    }

    while ((a2[3] & 1) == 0);
  }

  return (v4 ^ 1) & 1;
}

void avas::client::PortPrefs::writeTo(avas::client::PortPrefs *this, PB::Writer *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    caulk::xstring::as_std_string((this + 40), &__p);
    PB::Writer::write();
    if (v10 < 0)
    {
      operator delete(__p);
    }

    v4 = *(this + 2);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(this + 14);
    PB::Writer::writeVarInt(a2);
  }

  v7 = *(this + 2);
  v6 = *(this + 3);
  while (v7 != v6)
  {
    v8 = *v7++;
    PB::Writer::writeSubmessage(a2, v8);
  }
}

void sub_1DE8A3C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::client::PortPrefs::formatText(avas::client::PortPrefs *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    caulk::xstring::as_std_string((this + 40), &__p);
    PB::TextFormatter::format();
    if (v12 < 0)
    {
      operator delete(__p);
    }

    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(this + 14);
    PB::TextFormatter::format(a2, "dataSourceID");
  }

  v7 = *(this + 2);
  v8 = *(this + 3);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, a2, "polarPatterns");
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8A3D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::client::PortPrefs::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  if (caulk::xstring::compare((a1 + 40), (a2 + 40)))
  {
    return 0;
  }

  v7 = a1 + 16;
  v6 = *(a1 + 16);
  v5 = *(v7 + 8);
  v8 = v5 - v6;
  v10 = a2 + 16;
  v9 = *(a2 + 16);
  if (v5 - v6 != *(v10 + 8) - v9)
  {
    return 0;
  }

  if (v5 == v6)
  {
    return 1;
  }

  v11 = 0;
  v12 = v8 >> 3;
  if ((v8 >> 3) <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v8 >> 3;
  }

  do
  {
    v14 = *(v6 + 8 * v11);
    v15 = *(v9 + 8 * v11);
    if (v14)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (v14 | v15)
      {
        return 0;
      }
    }

    else if (!avas::client::PolarPatternPref::operator==(v14, v15))
    {
      return 0;
    }

    ++v11;
  }

  while (v13 != v11);
  return v11 >= v12;
}

void avas::client::PortPrefs::addPolarPatterns(avas::client::PortPrefs *this)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  if (v3 >= v2)
  {
    v5 = this + 16;
    v6 = *(this + 2);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 16;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 2);
    *(this + 2) = v15;
    *(this + 3) = v4;
    v17 = *(this + 4);
    *(this + 4) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 3) = v4;
  operator new();
}

uint64_t avas::client::PolarPatternPref::default_instance(avas::client::PolarPatternPref *this)
{
  {
    operator new();
  }

  return avas::client::PolarPatternPref::default_instance(void)::gInstance;
}

uint64_t avas::client::PolarPatternPref::PolarPatternPref(uint64_t this)
{
  *this = &unk_1F5998E90;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_1F5998E90;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

uint64_t avas::client::PolarPatternPref::PolarPatternPref(uint64_t this, const avas::client::PolarPatternPref *a2)
{
  *this = &unk_1F5998E90;
  *(this + 8) = *(a2 + 2);
  *(this + 12) = *(a2 + 12);
  return this;
}

uint64_t avas::client::PolarPatternPref::copy_from(uint64_t this, const avas::client::PolarPatternPref *a2)
{
  *(this + 8) = *(a2 + 2);
  *(this + 12) = *(a2 + 12);
  return this;
}

uint64_t avas::client::PolarPatternPref::operator=(uint64_t result, uint64_t a2)
{
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  return result;
}

{
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  return result;
}

uint64_t avas::client::PolarPatternPref::move_from(uint64_t result, uint64_t a2)
{
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  return result;
}

uint64_t avas::client::PolarPatternPref::clear(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

BOOL avas::client::PolarPatternPref::readFrom(_DWORD *a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 >= v2 || (a2[3] & 1) != 0)
  {
    return (v4 & 1) == 0;
  }

  v4 = 0;
  v5 = *a2;
  while (v3 <= 0xFFFFFFFFFFFFFFF5 && v3 + 10 <= v2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = (v5 + v3);
    v10 = v3 + 1;
    while (1)
    {
      v3 = v10;
      a2[1] = v10;
      v11 = *v9++;
      v8 |= (v11 & 0x7F) << v6;
      if ((v11 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      ++v10;
      v12 = v7++ > 8;
      if (v12)
      {
        v8 = 0;
        break;
      }
    }

LABEL_22:
    if (v4 & 1 | ((v8 & 7) == 4))
    {
      return (v4 & 1) == 0;
    }

    v19 = v8 >> 3;
    if (v19 == 2)
    {
      if (v3 <= 0xFFFFFFFFFFFFFFF5 && v3 + 10 <= v2)
      {
        v26 = 0;
        v27 = 0;
        v22 = 0;
        v28 = (v5 + v3);
        v29 = v3 + 1;
        while (1)
        {
          v3 = v29;
          a2[1] = v29;
          v30 = *v28++;
          v22 |= (v30 & 0x7F) << v26;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          ++v29;
          v12 = v27++ > 8;
          if (v12)
          {
            LODWORD(v22) = 0;
            break;
          }
        }

LABEL_58:
        LODWORD(v19) = 2;
        v37 = a1 + 4;
        goto LABEL_62;
      }

      v38 = 0;
      v39 = 0;
      v22 = 0;
      v40 = *a2;
      if (v3 <= v2)
      {
        v34 = v2;
      }

      else
      {
        v34 = v3;
      }

      while (v34 != v3)
      {
        v41 = v3++;
        v42 = *(v40 + v41);
        a2[1] = v3;
        v22 |= (v42 & 0x7F) << v38;
        if ((v42 & 0x80) == 0)
        {
          goto LABEL_57;
        }

        v38 += 7;
        v12 = v39++ > 8;
        if (v12)
        {
          LODWORD(v22) = 0;
LABEL_57:
          v3 = v41 + 1;
          goto LABEL_58;
        }
      }

      v37 = a1 + 4;
    }

    else
    {
      if (v19 != 1)
      {
        goto LABEL_63;
      }

      if (v3 <= 0xFFFFFFFFFFFFFFF5 && v3 + 10 <= v2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = (v5 + v3);
        v24 = v3 + 1;
        while (1)
        {
          v3 = v24;
          a2[1] = v24;
          v25 = *v23++;
          v22 |= (v25 & 0x7F) << v20;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          ++v24;
          v12 = v21++ > 8;
          if (v12)
          {
            LODWORD(v22) = 0;
            break;
          }
        }

LABEL_48:
        LODWORD(v19) = 1;
        v37 = a1 + 3;
        goto LABEL_62;
      }

      v31 = 0;
      v32 = 0;
      v22 = 0;
      v33 = *a2;
      if (v3 <= v2)
      {
        v34 = v2;
      }

      else
      {
        v34 = v3;
      }

      while (v34 != v3)
      {
        v35 = v3++;
        v36 = *(v33 + v35);
        a2[1] = v3;
        v22 |= (v36 & 0x7F) << v31;
        if ((v36 & 0x80) == 0)
        {
          goto LABEL_47;
        }

        v31 += 7;
        v12 = v32++ > 8;
        if (v12)
        {
          LODWORD(v22) = 0;
LABEL_47:
          v3 = v35 + 1;
          goto LABEL_48;
        }
      }

      v37 = a1 + 3;
    }

    LODWORD(v22) = 0;
    *(a2 + 24) = 1;
    v3 = v34;
LABEL_62:
    *v37 = v22;
    a1[2] |= v19;
LABEL_63:
    v4 = *(a2 + 24);
    if (v3 >= v2 || (a2[3] & 1) != 0)
    {
      return (v4 & 1) == 0;
    }
  }

  v13 = 0;
  v14 = 0;
  v8 = 0;
  v15 = *a2;
  if (v3 <= v2)
  {
    v16 = v2;
  }

  else
  {
    v16 = v3;
  }

  while (v16 != v3)
  {
    v17 = v3++;
    v18 = *(v15 + v17);
    a2[1] = v3;
    v8 |= (v18 & 0x7F) << v13;
    if ((v18 & 0x80) == 0)
    {
      if (v4)
      {
        v8 = 0;
      }

      goto LABEL_21;
    }

    v13 += 7;
    v12 = v14++ > 8;
    if (v12)
    {
      v8 = 0;
LABEL_21:
      v3 = v17 + 1;
      goto LABEL_22;
    }
  }

  v4 = 1;
  *(a2 + 24) = 1;
  return (v4 & 1) == 0;
}

uint64_t avas::client::PolarPatternPref::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 12);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 8);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t avas::client::PolarPatternPref::formatText(avas::client::PolarPatternPref *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 3);
    PB::TextFormatter::format(a2, "dataSourceID");
    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 4);
    PB::TextFormatter::format(a2, "polarPattern");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t avas::client::IOControllerPrefs::default_instance(avas::client::IOControllerPrefs *this)
{
  {
    operator new();
  }

  return avas::client::IOControllerPrefs::default_instance(void)::gInstance;
}

double avas::client::IOControllerPrefs::IOControllerPrefs(avas::client::IOControllerPrefs *this)
{
  *this = &unk_1F5998EC8;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  return result;
}

{
  *this = &unk_1F5998EC8;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  return result;
}

__n128 avas::client::IOControllerPrefs::copy_from(__n128 *this, __n128 *a2)
{
  caulk::xstring::assign(&this[4], &a2[4]);
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this[1].n128_u64);
  if (a2[1].n128_u64[0] != a2[1].n128_u64[1])
  {
    operator new();
  }

  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](&this[2].n128_u64[1]);
  if (a2[2].n128_u64[1] != a2[3].n128_u64[0])
  {
    operator new();
  }

  this->n128_u32[2] = a2->n128_u32[2];
  result = a2[5];
  v5 = a2[6];
  this[5] = result;
  this[6] = v5;
  return result;
}

avas::client::StreamPrefs *avas::client::StreamPrefs::StreamPrefs(avas::client::StreamPrefs *this, caulk::xstring **a2)
{
  *this = &unk_1F5998F00;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  avas::client::StreamPrefs::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5998F00;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  avas::client::StreamPrefs::copy_from(this, a2);
  return this;
}

uint64_t avas::client::IOControllerPrefs::IOControllerPrefs(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5998EC8;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  avas::client::IOControllerPrefs::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5998EC8;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  avas::client::IOControllerPrefs::move_from(a1, a2);
  return a1;
}

__n128 avas::client::IOControllerPrefs::move_from(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(v12);
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  v7 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  v8 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v8;
  v9 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v9;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 80);
  v11 = *(a2 + 96);
  *(a1 + 80) = result;
  *(a1 + 96) = v11;
  return result;
}

double avas::client::IOControllerPrefs::clear(avas::client::IOControllerPrefs *this)
{
  caulk::xstring::clear((this + 64));
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 5);
  *(this + 2) = 0;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  return result;
}

uint64_t avas::client::IOControllerPrefs::readFrom(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 < v2 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v16 = 0;
        v17 = 0;
        v10 = 0;
        v18 = v2 - v3;
        if (v2 < v3)
        {
          v18 = 0;
        }

        v19 = (v7 + v3);
        v20 = v3 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            return (v4 ^ 1) & 1;
          }

          v13 = v20;
          v21 = *v19;
          a2[1] = v13;
          v10 |= (v21 & 0x7F) << v16;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v18;
          ++v19;
          v20 = v13 + 1;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          v13 = v12;
          a2[1] = v12;
          v14 = *v11++;
          v10 |= (v14 & 0x7F) << v8;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v15 = v9++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        return (v4 ^ 1) & 1;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        if (v22 > 3)
        {
          if (v22 != 4)
          {
            if (v22 == 5)
            {
              PB::Reader::read();
              caulk::xstring::assign();
              *(a1 + 8) |= 0x40u;
            }

            goto LABEL_104;
          }

          if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
          {
            v54 = 0;
            v55 = 0;
            v37 = 0;
            v43 = v2 >= v13;
            v56 = v2 - v13;
            if (!v43)
            {
              v56 = 0;
            }

            v57 = (v7 + v13);
            v58 = v13 + 1;
            while (v56)
            {
              v59 = *v57;
              a2[1] = v58;
              v37 |= (v59 & 0x7F) << v54;
              if ((v59 & 0x80) == 0)
              {
                goto LABEL_102;
              }

              v54 += 7;
              --v56;
              ++v57;
              ++v58;
              v43 = v55++ >= 9;
              if (v43)
              {
LABEL_90:
                LODWORD(v37) = 0;
                goto LABEL_102;
              }
            }

            LODWORD(v37) = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v7 + v13);
            v39 = v13 + 1;
            while (1)
            {
              a2[1] = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              ++v39;
              v15 = v36++ > 8;
              if (v15)
              {
                goto LABEL_90;
              }
            }
          }

LABEL_102:
          *(a1 + 104) = v37;
          v60 = *(a1 + 8) | 4;
        }

        else if (v22 == 1)
        {
          if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
          {
            v48 = 0;
            v49 = 0;
            v31 = 0;
            v43 = v2 >= v13;
            v50 = v2 - v13;
            if (!v43)
            {
              v50 = 0;
            }

            v51 = (v7 + v13);
            v52 = v13 + 1;
            while (v50)
            {
              v53 = *v51;
              a2[1] = v52;
              v31 |= (v53 & 0x7F) << v48;
              if ((v53 & 0x80) == 0)
              {
                goto LABEL_100;
              }

              v48 += 7;
              --v50;
              ++v51;
              ++v52;
              v43 = v49++ >= 9;
              if (v43)
              {
LABEL_82:
                LODWORD(v31) = 0;
                goto LABEL_100;
              }
            }

            LODWORD(v31) = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = (v7 + v13);
            v33 = v13 + 1;
            while (1)
            {
              a2[1] = v33;
              v34 = *v32++;
              v31 |= (v34 & 0x7F) << v29;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              ++v33;
              v15 = v30++ > 8;
              if (v15)
              {
                goto LABEL_82;
              }
            }
          }

LABEL_100:
          *(a1 + 100) = v31;
          v60 = *(a1 + 8) | 1;
        }

        else
        {
          if (v22 != 2)
          {
            goto LABEL_104;
          }

          if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
          {
            v41 = 0;
            v42 = 0;
            v25 = 0;
            v43 = v2 >= v13;
            v44 = v2 - v13;
            if (!v43)
            {
              v44 = 0;
            }

            v45 = (v7 + v13);
            v46 = v13 + 1;
            while (v44)
            {
              v47 = *v45;
              a2[1] = v46;
              v25 |= (v47 & 0x7F) << v41;
              if ((v47 & 0x80) == 0)
              {
                goto LABEL_98;
              }

              v41 += 7;
              --v44;
              ++v45;
              ++v46;
              v43 = v42++ >= 9;
              if (v43)
              {
LABEL_74:
                LODWORD(v25) = 0;
                goto LABEL_98;
              }
            }

            LODWORD(v25) = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            v26 = (v7 + v13);
            v27 = v13 + 1;
            while (1)
            {
              a2[1] = v27;
              v28 = *v26++;
              v25 |= (v28 & 0x7F) << v23;
              if ((v28 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              ++v27;
              v15 = v24++ > 8;
              if (v15)
              {
                goto LABEL_74;
              }
            }
          }

LABEL_98:
          *(a1 + 108) = v25;
          v60 = *(a1 + 8) | 2;
        }
      }

      else
      {
        if (v22 <= 7)
        {
          if (v22 == 6)
          {
            operator new();
          }

          if (v22 == 7)
          {
            operator new();
          }

          goto LABEL_104;
        }

        switch(v22)
        {
          case 8:
            if (v13 > 0xFFFFFFFFFFFFFFF7 || v13 + 8 > v2)
            {
              *(a2 + 24) = 1;
            }

            else
            {
              *(a1 + 80) = *(v7 + v13);
              a2[1] += 8;
            }

            v60 = *(a1 + 8) | 8;
            break;
          case 9:
            if (v13 > 0xFFFFFFFFFFFFFFF7 || v13 + 8 > v2)
            {
              *(a2 + 24) = 1;
            }

            else
            {
              *(a1 + 88) = *(v7 + v13);
              a2[1] += 8;
            }

            v60 = *(a1 + 8) | 0x10;
            break;
          case 0xA:
            if (v13 > 0xFFFFFFFFFFFFFFFBLL || v13 + 4 > v2)
            {
              *(a2 + 24) = 1;
            }

            else
            {
              *(a1 + 96) = *(v7 + v13);
              a2[1] += 4;
            }

            v60 = *(a1 + 8) | 0x20;
            break;
          default:
            goto LABEL_104;
        }
      }

      *(a1 + 8) = v60;
LABEL_104:
      v3 = a2[1];
      v2 = a2[2];
      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (a2[3] & 1) == 0);
  }

  return (v4 ^ 1) & 1;
}

void avas::client::IOControllerPrefs::writeTo(avas::client::IOControllerPrefs *this, PB::Writer *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 25);
    PB::Writer::writeVarInt(a2);
    v4 = *(this + 2);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 27);
  PB::Writer::writeVarInt(a2);
  v4 = *(this + 2);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v7 = *(this + 26);
  PB::Writer::writeVarInt(a2);
  v4 = *(this + 2);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::Writer::write(a2, *(this + 10));
  v4 = *(this + 2);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    PB::Writer::write(a2, *(this + 24));
    if ((*(this + 2) & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_13:
  PB::Writer::write(a2, *(this + 11));
  v4 = *(this + 2);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  caulk::xstring::as_std_string((this + 64), &__p);
  PB::Writer::write();
  if (v15 < 0)
  {
    operator delete(__p);
  }

LABEL_17:
  v8 = *(this + 2);
  v9 = *(this + 3);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::Writer::writeSubmessage(a2, v10);
  }

  v12 = *(this + 5);
  v11 = *(this + 6);
  while (v12 != v11)
  {
    v13 = *v12++;
    PB::Writer::writeSubmessage(a2, v13);
  }
}

void sub_1DE8A55F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::client::IOControllerPrefs::formatText(avas::client::IOControllerPrefs *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 25);
    PB::TextFormatter::format(a2, "sessionToken");
    v5 = *(this + 2);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 27);
  PB::TextFormatter::format(a2, "controllerType");
  v5 = *(this + 2);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = *(this + 26);
  PB::TextFormatter::format(a2, "IOBufferFrameSize");
  v5 = *(this + 2);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "frameSizeSampleRate", *(this + 10));
  v5 = *(this + 2);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "IOBufferDuration", *(this + 11));
  v5 = *(this + 2);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "IOUtilization", *(this + 24));
  if ((*(this + 2) & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  caulk::xstring::as_std_string((this + 64), &__p);
  PB::TextFormatter::format();
  if (v17 < 0)
  {
    operator delete(__p);
  }

LABEL_17:
  v9 = *(this + 2);
  v10 = *(this + 3);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(*v11 + 32))(v11, a2, "inputStreamPrefs");
  }

  v12 = *(this + 5);
  v13 = *(this + 6);
  while (v12 != v13)
  {
    v14 = *v12++;
    (*(*v14 + 32))(v14, a2, "outputStreamPrefs");
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8A57F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::client::IOControllerPrefs::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  if (caulk::xstring::compare((a1 + 64), (a2 + 64)))
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v8 - v9 != *(a2 + 24) - *(a2 + 16))
  {
    return 0;
  }

  if (v8 != v9)
  {
    v10 = 0;
    if (((v8 - v9) >> 3) <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = (v8 - v9) >> 3;
    }

    do
    {
      v12 = *(*(a1 + 16) + 8 * v10);
      v13 = *(*(a2 + 16) + 8 * v10);
      if (v12)
      {
        v14 = v13 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        if (v12 | v13)
        {
          return 0;
        }
      }

      else if (!avas::client::StreamPrefs::operator==(v12, v13))
      {
        return 0;
      }

      ++v10;
    }

    while (v11 != v10);
  }

  v16 = *(a1 + 40);
  v15 = *(a1 + 48);
  v17 = v15 - v16;
  if (v15 - v16 != *(a2 + 48) - *(a2 + 40))
  {
    return 0;
  }

  if (v15 == v16)
  {
    return 1;
  }

  v18 = 0;
  v19 = v17 >> 3;
  if ((v17 >> 3) <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v17 >> 3;
  }

  do
  {
    v21 = *(*(a1 + 40) + 8 * v18);
    v22 = *(*(a2 + 40) + 8 * v18);
    if (v21)
    {
      v23 = v22 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      if (v21 | v22)
      {
        return 0;
      }
    }

    else if (!avas::client::StreamPrefs::operator==(v21, v22))
    {
      return 0;
    }

    ++v18;
  }

  while (v20 != v18);
  return v18 >= v19;
}

void avas::client::IOControllerPrefs::addInputStreamPrefs(avas::client::IOControllerPrefs *this)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  if (v3 >= v2)
  {
    v5 = this + 16;
    v6 = *(this + 2);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 16;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 2);
    *(this + 2) = v15;
    *(this + 3) = v4;
    v17 = *(this + 4);
    *(this + 4) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 3) = v4;
  operator new();
}

void avas::client::IOControllerPrefs::addOutputStreamPrefs(avas::client::IOControllerPrefs *this)
{
  v3 = *(this + 6);
  v2 = *(this + 7);
  if (v3 >= v2)
  {
    v5 = this + 40;
    v6 = *(this + 5);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 40;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 5);
    *(this + 5) = v15;
    *(this + 6) = v4;
    v17 = *(this + 7);
    *(this + 7) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 6) = v4;
  operator new();
}

uint64_t avas::client::StreamPrefs::default_instance(avas::client::StreamPrefs *this)
{
  {
    operator new();
  }

  return avas::client::StreamPrefs::default_instance(void)::gInstance;
}

double avas::client::StreamPrefs::StreamPrefs(avas::client::StreamPrefs *this)
{
  *this = &unk_1F5998F00;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  return result;
}

{
  *this = &unk_1F5998F00;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  return result;
}

__n128 avas::client::StreamPrefs::copy_from(caulk::xstring **this, caulk::xstring **a2)
{
  v4 = a2[5];
  if (v4)
  {
    v5 = avas::client::StreamPrefs::mutableStreamFormat(this);
    avas::StreamFormat::operator=(v5, v4);
  }

  if (this != a2)
  {
    std::vector<caulk::xstring>::__assign_with_size[abi:ne200100]<caulk::xstring*,caulk::xstring*>(this + 2, a2[2], a2[3], (a2[3] - a2[2]) >> 4);
  }

  *(this + 2) = *(a2 + 2);
  result = *(a2 + 3);
  *(this + 16) = *(a2 + 16);
  *(this + 3) = result;
  return result;
}

uint64_t avas::client::StreamPrefs::streamFormat(avas::client::StreamPrefs *this)
{
  result = *(this + 5);
  if (!result)
  {
    return avas::StreamFormat::default_instance(0);
  }

  return result;
}

uint64_t avas::client::StreamPrefs::mutableStreamFormat(avas::client::StreamPrefs *this)
{
  if (!*(this + 5))
  {
    operator new();
  }

  return *(this + 5);
}

__n128 avas::client::StreamPrefs::StreamPrefs(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = &unk_1F5998F00;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[2].n128_u64[1] = a2[2].n128_u64[1];
  a2[2].n128_u64[1] = 0;
  v2 = a1[1].n128_u64[0];
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = v2;
  v3 = a1[1].n128_u64[1];
  a1[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v3;
  v4 = a1[2].n128_u64[0];
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v4;
  a1->n128_u32[2] = a2->n128_u32[2];
  result = a2[3];
  a1[4].n128_u32[0] = a2[4].n128_u32[0];
  a1[3] = result;
  return result;
}

{
  a1->n128_u64[0] = &unk_1F5998F00;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[2].n128_u64[1] = a2[2].n128_u64[1];
  a2[2].n128_u64[1] = 0;
  v2 = a1[1].n128_u64[0];
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = v2;
  v3 = a1[1].n128_u64[1];
  a1[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v3;
  v4 = a1[2].n128_u64[0];
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v4;
  a1->n128_u32[2] = a2->n128_u32[2];
  result = a2[3];
  a1[4].n128_u32[0] = a2[4].n128_u32[0];
  a1[3] = result;
  return result;
}

__n128 avas::client::StreamPrefs::move_from(__n128 *a1, __n128 *a2)
{
  v2 = a1[2].n128_u64[1];
  a1[2].n128_u64[1] = a2[2].n128_u64[1];
  a2[2].n128_u64[1] = v2;
  v3 = a1[1].n128_u64[0];
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = v3;
  v4 = a1[1].n128_u64[1];
  a1[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v4;
  v5 = a1[2].n128_u64[0];
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  a1->n128_u32[2] = a2->n128_u32[2];
  result = a2[3];
  a1[4].n128_u32[0] = a2[4].n128_u32[0];
  a1[3] = result;
  return result;
}

__n128 avas::client::StreamPrefs::operator=(__n128 *a1, __n128 *a2)
{
  v2 = a1[2].n128_u64[1];
  a1[2].n128_u64[1] = a2[2].n128_u64[1];
  a2[2].n128_u64[1] = v2;
  v3 = a1[1].n128_u64[0];
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = v3;
  v4 = a1[1].n128_u64[1];
  a1[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v4;
  v5 = a1[2].n128_u64[0];
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  a1->n128_u32[2] = a2->n128_u32[2];
  result = a2[3];
  a1[4].n128_u32[0] = a2[4].n128_u32[0];
  a1[3] = result;
  return result;
}

uint64_t avas::client::StreamPrefs::clear(avas::client::StreamPrefs *this)
{
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = *(this + 2);
  v3 = this + 16;
  result = std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100](v3, v4);
  *(v3 - 2) = 0;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0;
  *(v3 + 12) = 0;
  return result;
}

uint64_t avas::client::StreamPrefs::readFrom(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 < v2 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v16 = 0;
        v17 = 0;
        v10 = 0;
        v18 = v2 - v3;
        if (v2 < v3)
        {
          v18 = 0;
        }

        v19 = (v7 + v3);
        v20 = v3 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            return (v4 ^ 1) & 1;
          }

          v13 = v20;
          v21 = *v19;
          a2[1] = v13;
          v10 |= (v21 & 0x7F) << v16;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v18;
          ++v19;
          v20 = v13 + 1;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          v13 = v12;
          a2[1] = v12;
          v14 = *v11++;
          v10 |= (v14 & 0x7F) << v8;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v15 = v9++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        return (v4 ^ 1) & 1;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 5)
      {
        if (v22 == 6)
        {
          if (v13 > 0xFFFFFFFFFFFFFFF7 || v13 + 8 > v2)
          {
            *(a2 + 24) = 1;
          }

          else
          {
            *(a1 + 48) = *(v7 + v13);
            a2[1] += 8;
          }

          v50 = *(a1 + 8) | 4;
        }

        else
        {
          if (v22 != 7)
          {
            if (v22 == 9)
            {
              v23 = *(a1 + 24);
              if (v23 >= *(a1 + 32))
              {
                v24 = std::vector<caulk::xstring>::__emplace_back_slow_path<>(a1 + 16);
              }

              else
              {
                *v23 = 0;
                v23[1] = 0;
                v24 = (v23 + 2);
              }

              *(a1 + 24) = v24;
              PB::Reader::read();
              caulk::xstring::assign();
            }

            goto LABEL_91;
          }

          if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
          {
            v57 = 0;
            v58 = 0;
            v39 = 0;
            v45 = v2 >= v13;
            v59 = v2 - v13;
            if (!v45)
            {
              v59 = 0;
            }

            v60 = (v7 + v13);
            v61 = v13 + 1;
            while (v59)
            {
              v62 = *v60;
              a2[1] = v61;
              v39 |= (v62 & 0x7F) << v57;
              if ((v62 & 0x80) == 0)
              {
                goto LABEL_89;
              }

              v57 += 7;
              --v59;
              ++v60;
              ++v61;
              v45 = v58++ >= 9;
              if (v45)
              {
LABEL_81:
                LODWORD(v39) = 0;
                goto LABEL_89;
              }
            }

            LODWORD(v39) = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = (v7 + v13);
            v41 = v13 + 1;
            while (1)
            {
              a2[1] = v41;
              v42 = *v40++;
              v39 |= (v42 & 0x7F) << v37;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              ++v41;
              v15 = v38++ > 8;
              if (v15)
              {
                goto LABEL_81;
              }
            }
          }

LABEL_89:
          *(a1 + 64) = v39;
          v50 = *(a1 + 8) | 8;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
            {
              v43 = 0;
              v44 = 0;
              v27 = 0;
              v45 = v2 >= v13;
              v46 = v2 - v13;
              if (!v45)
              {
                v46 = 0;
              }

              v47 = (v7 + v13);
              v48 = v13 + 1;
              while (v46)
              {
                v49 = *v47;
                a2[1] = v48;
                v27 |= (v49 & 0x7F) << v43;
                if ((v49 & 0x80) == 0)
                {
                  goto LABEL_85;
                }

                v43 += 7;
                --v46;
                ++v47;
                ++v48;
                v45 = v44++ >= 9;
                if (v45)
                {
LABEL_63:
                  LODWORD(v27) = 0;
                  goto LABEL_85;
                }
              }

              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v7 + v13);
              v29 = v13 + 1;
              while (1)
              {
                a2[1] = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v15 = v26++ > 8;
                if (v15)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_85:
            *(a1 + 56) = v27;
            v50 = *(a1 + 8) | 1;
            break;
          case 3:
            if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
            {
              v51 = 0;
              v52 = 0;
              v33 = 0;
              v45 = v2 >= v13;
              v53 = v2 - v13;
              if (!v45)
              {
                v53 = 0;
              }

              v54 = (v7 + v13);
              v55 = v13 + 1;
              while (v53)
              {
                v56 = *v54;
                a2[1] = v55;
                v33 |= (v56 & 0x7F) << v51;
                if ((v56 & 0x80) == 0)
                {
                  goto LABEL_87;
                }

                v51 += 7;
                --v53;
                ++v54;
                ++v55;
                v45 = v52++ >= 9;
                if (v45)
                {
LABEL_73:
                  LODWORD(v33) = 0;
                  goto LABEL_87;
                }
              }

              LODWORD(v33) = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v31 = 0;
              v32 = 0;
              v33 = 0;
              v34 = (v7 + v13);
              v35 = v13 + 1;
              while (1)
              {
                a2[1] = v35;
                v36 = *v34++;
                v33 |= (v36 & 0x7F) << v31;
                if ((v36 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                ++v35;
                v15 = v32++ > 8;
                if (v15)
                {
                  goto LABEL_73;
                }
              }
            }

LABEL_87:
            *(a1 + 60) = v33;
            v50 = *(a1 + 8) | 2;
            break;
          case 5:
            operator new();
          default:
            goto LABEL_91;
        }
      }

      *(a1 + 8) = v50;
LABEL_91:
      v3 = a2[1];
      v2 = a2[2];
      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (a2[3] & 1) == 0);
  }

  return (v4 ^ 1) & 1;
}

void sub_1DE8A6674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::client::StreamPrefs::writeTo(avas::client::StreamPrefs *this, PB::Writer *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 14);
    PB::Writer::writeVarInt(a2);
    v4 = *(this + 2);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(this + 15);
    PB::Writer::writeVarInt(a2);
  }

  v7 = *(this + 5);
  if (v7)
  {
    PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(this + 2);
  if ((v8 & 4) != 0)
  {
    PB::Writer::write(a2, *(this + 6));
    v8 = *(this + 2);
  }

  if ((v8 & 8) != 0)
  {
    v9 = *(this + 16);
    PB::Writer::writeVarInt(a2);
  }

  v11 = *(this + 2);
  v10 = *(this + 3);
  while (v11 != v10)
  {
    caulk::xstring::as_std_string(v11, &__p);
    PB::Writer::write();
    if (v13 < 0)
    {
      operator delete(__p);
    }

    v11 = (v11 + 16);
  }
}

void sub_1DE8A6778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::client::StreamPrefs::formatText(avas::client::StreamPrefs *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 14);
    PB::TextFormatter::format(a2, "streamToken");
    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 15);
    PB::TextFormatter::format(a2, "DSPFlavor");
  }

  v8 = *(this + 5);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "streamFormat");
  }

  v9 = *(this + 2);
  if ((v9 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "scalarVolume", *(this + 6));
    v9 = *(this + 2);
  }

  if ((v9 & 8) != 0)
  {
    v10 = *(this + 16);
    PB::TextFormatter::format(a2, "muteState");
  }

  v11 = *(this + 2);
  for (i = *(this + 3); v11 != i; v11 = (v11 + 16))
  {
    caulk::xstring::as_std_string(v11, &__p);
    PB::TextFormatter::format();
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8A68D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::client::StreamPrefs::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a2 + 40);
  if (v7 && v8)
  {
    if (!avas::StreamFormat::operator==(v7, v8))
    {
      return 0;
    }
  }

  else if (v7 | v8)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = v9 - v10;
  if (v9 - v10 == *(a2 + 24) - *(a2 + 16))
  {
    if (v9 == v10)
    {
      return 1;
    }

    v12 = 0;
    v13 = 0;
    v14 = v11 >> 4;
    if ((v11 >> 4) <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v11 >> 4;
    }

    while (!caulk::xstring::compare((*(a1 + 16) + v12), (*(a2 + 16) + v12)))
    {
      ++v13;
      v12 += 16;
      if (v15 == v13)
      {
        return v13 >= v14;
      }
    }
  }

  return 0;
}

uint64_t avas::client::StreamPrefs::clearStreamFormat(avas::client::StreamPrefs *this)
{
  result = *(this + 5);
  *(this + 5) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

avas::client::TurnByTurnPref *avas::client::TurnByTurnPref::TurnByTurnPref(avas::client::TurnByTurnPref *this, const avas::client::TurnByTurnPref *a2)
{
  *this = &unk_1F5998F38;
  *(this + 2) = 0;
  *(this + 3) = 0;
  avas::client::TurnByTurnPref::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5998F38;
  *(this + 2) = 0;
  *(this + 3) = 0;
  avas::client::TurnByTurnPref::copy_from(this, a2);
  return this;
}

uint64_t avas::client::TurnByTurnPref::copy_from(avas::client::TurnByTurnPref *this, const avas::client::TurnByTurnPref *a2)
{
  result = caulk::xstring::assign((this + 16), (a2 + 16));
  *(this + 2) = *(a2 + 2);
  *(this + 32) = *(a2 + 32);
  return result;
}

void *avas::client::TurnByTurnPref::TurnByTurnPref(void *a1, uint64_t a2)
{
  *a1 = &unk_1F5998F38;
  a1[2] = 0;
  a1[3] = 0;
  avas::client::TurnByTurnPref::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5998F38;
  a1[2] = 0;
  a1[3] = 0;
  avas::client::TurnByTurnPref::move_from(a1, a2);
  return a1;
}

uint64_t avas::client::TurnByTurnPref::move_from(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  result = caulk::xstring::clear(v5);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t avas::client::TurnByTurnPref::clear(avas::client::TurnByTurnPref *this)
{
  result = caulk::xstring::clear((this + 16));
  *(this + 2) = 0;
  *(this + 32) = 0;
  return result;
}

BOOL avas::client::TurnByTurnPref::readFrom(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 < v2 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v3);
      v12 = v3 + 1;
      while (1)
      {
        v3 = v12;
        a2[1] = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          v10 = 0;
          break;
        }
      }

LABEL_22:
      if (!(v4 & 1 | ((v10 & 7) == 4)))
      {
        if ((v10 >> 3) == 2)
        {
          if (v3 >= v2)
          {
            v21 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v20 = *(v7 + v3++);
            a2[1] = v3;
            v21 = v20 != 0;
          }

          *(a1 + 32) = v21;
          *(a1 + 8) |= 2u;
        }

        else if ((v10 >> 3) == 1)
        {
          PB::Reader::read();
          caulk::xstring::assign();
          *(a1 + 8) |= 1u;
          v3 = a2[1];
          v2 = a2[2];
        }

        v4 = *(a2 + 24);
        if (v3 < v2 && (a2[3] & 1) == 0)
        {
          continue;
        }
      }

      return (v4 & 1) == 0;
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    if (v3 <= v2)
    {
      v17 = v2;
    }

    else
    {
      v17 = v3;
    }

    while (v17 != v3)
    {
      v18 = v3++;
      v19 = *(v7 + v18);
      a2[1] = v3;
      v10 |= (v19 & 0x7F) << v15;
      if ((v19 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      v14 = v16++ > 8;
      if (v14)
      {
        v10 = 0;
LABEL_21:
        v3 = v18 + 1;
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

  return (v4 & 1) == 0;
}