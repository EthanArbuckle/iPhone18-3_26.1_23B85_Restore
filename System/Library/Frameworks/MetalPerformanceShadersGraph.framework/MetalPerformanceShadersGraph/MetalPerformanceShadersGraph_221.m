uint64_t llvm::StdThreadPool::StdThreadPool(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  *a1 = &unk_1F5B3F448;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  llvm::sys::RWMutexImpl::RWMutexImpl((a1 + 32));
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1018212795;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1018212795;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 288) = 1;
  *(a1 + 292) = a2;
  *(a1 + 300) = llvm::ThreadPoolStrategy::compute_thread_count(&v5);
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 316) = 0;
  return a1;
}

BOOL llvm::StdThreadPool::grow(pthread_rwlock_t **this, int a2)
{
  llvm::sys::RWMutexImpl::lock(this + 4);
  v4 = this[1];
  v5 = this[2];
  v6 = (v5 - v4) >> 3;
  v7 = *(this + 75);
  if (v6 < v7)
  {
    v8 = (v5 - v4) >> 3;
    for (i = v7 >= a2 ? a2 : *(this + 75); i > v8; v6 = v8)
    {
      v12 = this[3];
      if (v5 < v12)
      {
        v10 = operator new(0x10uLL);
        *v10 = this;
        v10[2] = v8;
        v11 = llvm::llvm_execute_on_thread_impl(llvm::thread::ThreadProxy<std::tuple<llvm::StdThreadPool::grow(int)::$_0>>, v10, 0x100800000);
        v5->__sig = v11;
        if (!v11)
        {
          operator delete(v10);
        }

        v5 = (v5 + 8);
        goto LABEL_10;
      }

      if ((v6 + 1) >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v13 = v12 - v4;
      v14 = v13 >> 2;
      if (v13 >> 2 <= v6 + 1)
      {
        v14 = v6 + 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        if (v15 >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v16 = operator new(8 * v15);
      }

      else
      {
        v16 = 0;
      }

      v17 = &v16[8 * v6];
      v18 = operator new(0x10uLL);
      *v18 = this;
      v18[2] = v8;
      v19 = llvm::llvm_execute_on_thread_impl(llvm::thread::ThreadProxy<std::tuple<llvm::StdThreadPool::grow(int)::$_0>>, v18, 0x100800000);
      *v17 = v19;
      if (v19)
      {
        v20 = this[1];
        v21 = this[2];
        v22 = v17 - (v21 - v20);
        v23 = v21 - v20;
        v24 = 0uLL;
        if (v21 != v20)
        {
          goto LABEL_26;
        }
      }

      else
      {
        operator delete(v18);
        v20 = this[1];
        v21 = this[2];
        v22 = v17 - (v21 - v20);
        v23 = v21 - v20;
        v24 = 0uLL;
        if (v21 != v20)
        {
LABEL_26:
          v25 = v23 - 8;
          v26 = v20;
          v27 = v22;
          if ((v23 - 8) < 0x38)
          {
            goto LABEL_46;
          }

          if (v20 < &v16[(v25 & 0xFFFFFFFFFFFFFFF8) + 8 * v6 - v23 + 8])
          {
            v26 = v20;
            v27 = v22;
            if (v22 < &v20->__opaque[v25 & 0xFFFFFFFFFFFFFFF8])
            {
              goto LABEL_46;
            }
          }

          v28 = v23 >> 3;
          v29 = (v25 >> 3) + 1;
          v30 = 8 * (v29 & 0x3FFFFFFFFFFFFFFCLL);
          v26 = (v20 + v30);
          v27 = (v22 + v30);
          v31 = &v16[8 * v6 + 16 + -8 * v28];
          v32 = &v20->__opaque[8];
          v33 = v29 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v34 = *(v32 - 1);
            v35 = *v32;
            *(v32 - 1) = v24;
            *v32 = v24;
            *(v31 - 1) = v34;
            *v31 = v35;
            v31 += 32;
            v32 += 32;
            v33 -= 4;
          }

          while (v33);
          v36 = v20;
          if (v29 != (v29 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_46:
            do
            {
              sig = v26->__sig;
              v26->__sig = 0;
              v26 = (v26 + 8);
              *v27++ = sig;
            }

            while (v26 != v21);
            v36 = v20;
          }

          do
          {
            if (v36->__sig)
            {
              std::terminate();
            }

            v36 = (v36 + 8);
          }

          while (v36 != v21);
        }
      }

      v5 = (v17 + 1);
      this[1] = v22;
      this[2] = (v17 + 1);
      this[3] = &v16[8 * v15];
      if (v20)
      {
        operator delete(v20);
      }

LABEL_10:
      this[2] = v5;
      v4 = this[1];
      v8 = (v5 - v4) >> 3;
    }
  }

  return llvm::sys::RWMutexImpl::unlock_shared(this + 4);
}

uint64_t llvm::StdThreadPool::processTasks(uint64_t a1, uint64_t a2)
{
  v4 = QOS_CLASS_UNSPECIFIED;
  v5 = 0;
  v67 = *MEMORY[0x1E69E9840];
  v6 = (a1 + 96);
  v7 = (a2 >> 4) ^ (a2 >> 9);
  do
  {
    v66 = 0;
    v63 = 0;
    __lk.__m_ = v6;
    __lk.__owns_ = 1;
    std::mutex::lock(v6);
    v9 = *(a1 + 316);
    v10 = v9 == v4;
    v11 = *(a1 + 304);
    v12 = v11 != v5;
    v13 = *(a1 + 288);
    if (v13 == 1)
    {
      if (*(a1 + 88))
      {
        v14 = 0;
      }

      else
      {
        v14 = v11 == v5;
      }

      if (v14)
      {
        while (1)
        {
          if (!v10)
          {
            pthread_set_qos_class_self_np(v9, 0);
            goto LABEL_38;
          }

          if (a2)
          {
            v16 = *(a1 + 280);
            if (!v16)
            {
              goto LABEL_76;
            }

            v17 = *(a1 + 264);
            v18 = v16 - 1;
            v19 = v18 & v7;
            v20 = *(v17 + 16 * (v18 & v7));
            if (v20 != a2)
            {
              break;
            }
          }

LABEL_20:
          std::condition_variable::wait((a1 + 160), &__lk);
          v9 = *(a1 + 316);
          v10 = v9 == v4;
          v11 = *(a1 + 304);
          v12 = v11 != v5;
          LOBYTE(v13) = *(a1 + 288);
          if ((v13 & 1) == 0 || *(a1 + 88) || v11 != v5)
          {
            goto LABEL_10;
          }
        }

        v21 = 1;
        while (v20 != -4096)
        {
          v22 = v19 + v21++;
          v19 = v22 & v18;
          v20 = *(v17 + 16 * (v22 & v18));
          if (v20 == a2)
          {
            goto LABEL_20;
          }
        }

LABEL_76:
        v15 = 1;
        goto LABEL_77;
      }

      LOBYTE(v13) = 1;
    }

LABEL_10:
    if (!v10)
    {
      pthread_set_qos_class_self_np(v9, 0);
      if (!v12)
      {
LABEL_38:
        v23 = 0;
        v24 = 2;
        v4 = v9;
        if (!__lk.__owns_)
        {
          goto LABEL_40;
        }

LABEL_39:
        std::mutex::unlock(__lk.__m_);
        goto LABEL_40;
      }

      v4 = v9;
LABEL_30:
      if (v5)
      {
        os_activity_scope_leave(&state);
      }

      if (v11)
      {
        os_activity_scope_enter(v11, &state);
        v23 = 0;
        v24 = 2;
        v5 = v11;
        if (__lk.__owns_)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v5 = 0;
        v23 = 0;
        v24 = 2;
        if (__lk.__owns_)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_40;
    }

    if (v12)
    {
      goto LABEL_30;
    }

    if (v13)
    {
LABEL_81:
      ++*(a1 + 256);
      v49 = *(a1 + 80);
      v50 = *(*(a1 + 56) + 8 * (v49 / 0x66));
      v51 = v66;
      v66 = 0;
      if (v51 == v65)
      {
        (*(*v51 + 32))(v51);
      }

      else if (v51)
      {
        (*(*v51 + 40))(v51);
      }

      v52 = v50 + 40 * (v49 % 0x66);
      v53 = *(v52 + 24);
      if (v53)
      {
        if (v53 == v52)
        {
          v66 = v65;
          (*(**(v52 + 24) + 24))(*(v52 + 24), v65);
        }

        else
        {
          v66 = *(v52 + 24);
          *(v52 + 24) = 0;
        }
      }

      else
      {
        v66 = 0;
      }

      v54 = *(a1 + 80);
      v55 = *(*(a1 + 56) + 8 * (v54 / 0x66));
      v56 = v54 % 0x66;
      v63 = *(v55 + 40 * v56 + 32);
      if (v63)
      {
        v57 = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[](a1 + 264, &v63);
        ++*v57;
        v58 = *(a1 + 80);
        v55 = *(*(a1 + 56) + 8 * (v58 / 0x66));
        v56 = v58 % 0x66;
      }

      v59 = v55 + 40 * v56;
      v60 = *(v59 + 24);
      if (v60 == v59)
      {
        (*(*v60 + 32))(v60);
      }

      else if (v60)
      {
        (*(*v60 + 40))(v60);
      }

      v61 = vaddq_s64(*(a1 + 80), xmmword_1E097DF30);
      *(a1 + 80) = v61;
      if (v61.i64[0] >= 0xCCuLL)
      {
        operator delete(**(a1 + 56));
        v24 = 0;
        *(a1 + 56) += 8;
        *(a1 + 80) -= 102;
        v23 = 1;
        if (__lk.__owns_)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v24 = 0;
        v23 = 1;
        if (__lk.__owns_)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_40;
    }

    if (*(a1 + 88))
    {
      v15 = 0;
      if (!a2)
      {
        goto LABEL_81;
      }

LABEL_77:
      if (!v15)
      {
        goto LABEL_81;
      }
    }

    if (v5)
    {
      os_activity_scope_leave(&state);
      v5 = 0;
      v23 = 0;
      v24 = 1;
      if (__lk.__owns_)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v23 = 0;
      v24 = 1;
      if (__lk.__owns_)
      {
        goto LABEL_39;
      }
    }

LABEL_40:
    if (!v23)
    {
      goto LABEL_63;
    }

    if (!v66)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    (*(*v66 + 48))(v66);
    std::mutex::lock(v6);
    v25 = *(a1 + 256) - 1;
    *(a1 + 256) = v25;
    v26 = v63;
    if (!v63)
    {
      goto LABEL_59;
    }

    v27 = *(a1 + 264);
    v28 = *(a1 + 280);
    if (v28)
    {
      v29 = (v28 - 1) & ((v63 >> 4) ^ (v63 >> 9));
      v30 = *(v27 + 16 * v29);
      if (v30 == v63)
      {
        goto LABEL_50;
      }

      v31 = 1;
      while (v30 != -4096)
      {
        v32 = v29 + v31++;
        v29 = v32 & (v28 - 1);
        v30 = *(v27 + 16 * v29);
        if (v30 == v63)
        {
          goto LABEL_50;
        }
      }
    }

    v29 = *(a1 + 280);
LABEL_50:
    v33 = v27 + 16 * v29;
    v34 = *(v33 + 8) - 1;
    *(v33 + 8) = v34;
    if (v34)
    {
      if (v26)
      {
        goto LABEL_52;
      }
    }

    else
    {
      *v33 = -8192;
      *(a1 + 272) = vadd_s32(*(a1 + 272), 0x1FFFFFFFFLL);
      v26 = v63;
      if (v63)
      {
LABEL_52:
        if (!v28)
        {
          goto LABEL_66;
        }

        v35 = v28 - 1;
        v36 = (v28 - 1) & ((v26 >> 4) ^ (v26 >> 9));
        v37 = *(v27 + 16 * v36);
        if (v37 != v26)
        {
          v38 = 1;
          while (v37 != -4096)
          {
            v39 = v36 + v38++;
            v36 = v39 & v35;
            v37 = *(v27 + 16 * v36);
            if (v37 == v26)
            {
              goto LABEL_61;
            }
          }

LABEL_66:
          v40 = *(a1 + 56);
          if (*(a1 + 64) != v40)
          {
            v41 = *(a1 + 80);
            v42 = (v40 + 8 * (v41 / 0x66));
            v43 = *v42;
            v44 = *v42 + 40 * (v41 % 0x66);
            v45 = *(v40 + 8 * ((*(a1 + 88) + v41) / 0x66)) + 40 * ((*(a1 + 88) + v41) % 0x66);
            while (v44 != v45)
            {
              if (*(v44 + 32) == v26)
              {
                goto LABEL_61;
              }

              v44 += 40;
              if (v44 - v43 == 4080)
              {
                v46 = v42[1];
                ++v42;
                v43 = v46;
                v44 = v46;
              }
            }
          }

          v47 = 1;
          v48 = *(a1 + 312);
          if (v48 == 1)
          {
LABEL_73:
            os_release(*(a1 + 304));
            *(a1 + 304) = 0;
          }

LABEL_74:
          std::mutex::unlock(v6);
          std::condition_variable::notify_all((a1 + 208));
          if ((v47 | v48) == 1)
          {
            std::condition_variable::notify_all((a1 + 160));
          }

          goto LABEL_62;
        }

        goto LABEL_61;
      }
    }

LABEL_59:
    if (!v25 && !*(a1 + 88))
    {
      v47 = 0;
      v48 = *(a1 + 312);
      if (v48 == 1)
      {
        goto LABEL_73;
      }

      goto LABEL_74;
    }

LABEL_61:
    std::mutex::unlock(v6);
LABEL_62:
    v24 = 0;
LABEL_63:
    result = v66;
    if (v66 == v65)
    {
      result = (*(*v66 + 32))(v66);
    }

    else if (v66)
    {
      result = (*(*v66 + 40))();
    }
  }

  while ((v24 | 2) == 2);
  return result;
}

void llvm::StdThreadPool::wait(llvm::StdThreadPool *this)
{
  v2.__m_ = (this + 96);
  v2.__owns_ = 1;
  std::mutex::lock((this + 96));
  while (*(this + 64) || *(this + 11))
  {
    std::condition_variable::wait((this + 208), &v2);
  }

  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

void llvm::StdThreadPool::wait(uint64_t a1, uint64_t a2)
{
  llvm::sys::RWMutexImpl::lock_shared((a1 + 32));
  current_id_impl = llvm::llvm_thread_get_current_id_impl();
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 == v7)
  {
LABEL_5:
    llvm::sys::RWMutexImpl::unlock_shared((a1 + 32));
    v24.__m_ = (a1 + 96);
    v24.__owns_ = 1;
    std::mutex::lock((a1 + 96));
    v9 = (a2 >> 4) ^ (a2 >> 9);
    v10 = *(a1 + 280);
    if (v10)
    {
      while (1)
      {
        v11 = *(a1 + 264);
        v12 = v10 - 1;
        v13 = v12 & v9;
        v14 = *(v11 + 16 * (v12 & v9));
        if (v14 != a2)
        {
          break;
        }

LABEL_7:
        std::condition_variable::wait((a1 + 208), &v24);
        v10 = *(a1 + 280);
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      v15 = 1;
      while (v14 != -4096)
      {
        v16 = v13 + v15++;
        v13 = v16 & v12;
        v14 = *(v11 + 16 * v13);
        if (v14 == a2)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_13:
    v17 = *(a1 + 56);
    if (*(a1 + 64) != v17)
    {
      v18 = *(a1 + 80);
      v19 = (v17 + 8 * (v18 / 0x66));
      v20 = *v19;
      v21 = *v19 + 40 * (v18 % 0x66);
      v22 = *(v17 + 8 * ((*(a1 + 88) + v18) / 0x66)) + 40 * ((*(a1 + 88) + v18) % 0x66);
      while (v21 != v22)
      {
        if (*(v21 + 32) == a2)
        {
          goto LABEL_7;
        }

        v21 += 40;
        if (v21 - v20 == 4080)
        {
          v23 = v19[1];
          ++v19;
          v20 = v23;
          v21 = v23;
        }
      }
    }

    if (v24.__owns_)
    {
      std::mutex::unlock(v24.__m_);
    }
  }

  else
  {
    v8 = current_id_impl;
    while (v8 != MPSGraphDelegateCompiler.precompilationDescriptor.modify(*v6, v5))
    {
      if (++v6 == v7)
      {
        goto LABEL_5;
      }
    }

    llvm::sys::RWMutexImpl::unlock_shared((a1 + 32));

    llvm::StdThreadPool::processTasks(a1, a2);
  }
}

void llvm::StdThreadPool::~StdThreadPool(llvm::StdThreadPool *this)
{
  *this = &unk_1F5B3F448;
  std::mutex::lock((this + 96));
  *(this + 288) = 0;
  std::mutex::unlock((this + 96));
  std::condition_variable::notify_all((this + 160));
  llvm::sys::RWMutexImpl::lock_shared(this + 4);
  v3 = *(this + 1);
  for (i = *(this + 2); v3 != i; ++v3)
  {
    llvm::llvm_thread_join_impl(*v3, v2);
    *v3 = 0;
  }

  llvm::sys::RWMutexImpl::unlock_shared(this + 4);
  llvm::deallocate_buffer(*(this + 33), (16 * *(this + 70)));
}

{
  llvm::StdThreadPool::~StdThreadPool(this);
}

void sub_1E0589E4C(void *__p)
{

  operator delete(__p);
}

BOOL llvm::StdThreadPool::setActivity(llvm::StdThreadPool *this, void *a2, char a3)
{
  std::mutex::lock((this + 96));
  *(this + 38) = a2;
  os_retain(a2);
  *(this + 312) = a3;
  std::mutex::unlock((this + 96));
  std::condition_variable::notify_all((this + 160));
  v6 = *(this + 75);

  return llvm::StdThreadPool::grow(this, v6);
}

void llvm::StdThreadPool::clearActivity(llvm::StdThreadPool *this)
{
  std::mutex::lock((this + 96));
  if (*(this + 64) || *(this + 11))
  {
    *(this + 312) = 1;

    std::mutex::unlock((this + 96));
  }

  else
  {
    os_release(*(this + 38));
    *(this + 38) = 0;
    std::mutex::unlock((this + 96));

    std::condition_variable::notify_all((this + 160));
  }
}

void llvm::StdThreadPool::raiseQOSIfNeeded(llvm::StdThreadPool *this, qos_class_t a2)
{
  std::mutex::lock((this + 96));
  if (*(this + 79) >= a2)
  {

    std::mutex::unlock((this + 96));
  }

  else
  {
    *(this + 79) = a2;
    std::mutex::unlock((this + 96));

    std::condition_variable::notify_all((this + 160));
  }
}

BOOL llvm::StdThreadPool::asyncEnqueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 96));
  v6 = *(a2 + 24);
  if (v6)
  {
    if (v6 == a2)
    {
      v11 = v10;
      (*(*v6 + 24))(v6, v10);
    }

    else
    {
      v11 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = a3;
  std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::emplace_back<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>((a1 + 48), v10);
  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))();
  }

  v7 = *(a1 + 256);
  v8 = *(a1 + 88);
  std::mutex::unlock((a1 + 96));
  std::condition_variable::notify_one((a1 + 160));
  return llvm::StdThreadPool::grow(a1, v7 + v8);
}

uint64_t std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::emplace_back<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 102 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
    v9 = *(a2 + 24);
    if (v9)
    {
LABEL_7:
      if (v9 == a2)
      {
        *(v8 + 24) = v8;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v8);
        v4 = a1[1];
        v5 = a1[2];
      }

      else
      {
        *(v8 + 24) = v9;
        *(a2 + 24) = 0;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
    v9 = *(a2 + 24);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  *(v8 + 24) = 0;
LABEL_12:
  *(v8 + 32) = *(a2 + 32);
  v10 = a1[4];
  v11 = a1[5] + 1;
  a1[5] = v11;
  v12 = v10 + v11;
  v13 = (v4 + 8 * (v12 / 0x66));
  v14 = *v13 + 40 * (v12 % 0x66);
  if (v5 == v4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if (v15 == *v13)
  {
    return *(v13 - 1) + 4040;
  }

  else
  {
    return v15 - 40;
  }
}

void std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::__add_back_capacity(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0x66;
  v4 = v2 - 102;
  if (v3)
  {
    *(a1 + 32) = v4;
    goto LABEL_4;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9 = v7 - v8;
  v10 = v6 - *a1;
  if (v7 - v8 < v10)
  {
    if (v6 != v7)
    {
      v46 = operator new(0xFF0uLL);
      return;
    }

    v46 = operator new(0xFF0uLL);
    std::__split_buffer<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *,std::allocator<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *>>::emplace_front<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *>(a1, &v46);
LABEL_4:
    v5 = *(a1 + 8);
    v46 = *v5;
    *(a1 + 8) = v5 + 1;
    return;
  }

  v11 = v10 >> 2;
  if (v6 == *a1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >> 61)
  {
    goto LABEL_48;
  }

  v13 = 8 * v12;
  v14 = operator new(8 * v12);
  v15 = &v14[v9];
  v16 = &v14[v13];
  v17 = operator new(0xFF0uLL);
  if (v9 != v13)
  {
    goto LABEL_15;
  }

  if (v9 < 1)
  {
    if (v7 == v8)
    {
      v21 = 1;
    }

    else
    {
      v21 = v9 >> 2;
    }

    if (!(v21 >> 61))
    {
      v22 = v17;
      v23 = 8 * v21;
      v24 = operator new(8 * v21);
      v15 = &v24[8 * (v21 >> 2)];
      v16 = &v24[v23];
      operator delete(v14);
      v25 = *(a1 + 8);
      v7 = *(a1 + 16);
      v14 = v24;
      *v15 = v22;
      v18 = v15 + 8;
      if (v7 == v25)
      {
        goto LABEL_16;
      }

LABEL_31:
      while (v15 != v14)
      {
        v26 = v15;
LABEL_30:
        v27 = *(v7 - 8);
        v7 -= 8;
        *(v26 - 1) = v27;
        v19 = v26 - 8;
        v15 = v19;
        if (v7 == *(a1 + 8))
        {
          goto LABEL_17;
        }
      }

      if (v18 < v16)
      {
        v26 = &v15[8 * ((((v16 - v18) >> 3) + 1 + ((((v16 - v18) >> 3) + 1) >> 63)) >> 1)];
        v29 = v18 - v15;
        v28 = v18 == v15;
        v18 += 8 * ((((v16 - v18) >> 3) + 1 + ((((v16 - v18) >> 3) + 1) >> 63)) >> 1);
        if (!v28)
        {
          memmove(v26, v15, v29);
        }

        goto LABEL_30;
      }

      v30 = (v16 - v15) >> 2;
      if (v16 == v15)
      {
        v30 = 1;
      }

      if (v30 >> 61)
      {
        goto LABEL_48;
      }

      v31 = (v30 + 3) >> 2;
      v32 = 8 * v30;
      v33 = operator new(8 * v30);
      v34 = v33;
      v26 = &v33[8 * v31];
      v35 = v18 - v15;
      v28 = v18 == v15;
      v18 = v26;
      if (!v28)
      {
        v18 = &v26[v35];
        v36 = v35 - 8;
        if (v36 >= 0x18 && (&v33[8 * v31] - v15) >= 0x20)
        {
          v40 = (v36 >> 3) + 1;
          v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
          v37 = &v26[v41];
          v38 = &v15[v41];
          v42 = (v15 + 16);
          v43 = &v33[8 * v31 + 16];
          v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v45 = *v42;
            *(v43 - 1) = *(v42 - 1);
            *v43 = v45;
            v42 += 2;
            v43 += 32;
            v44 -= 4;
          }

          while (v44);
          if (v40 == (v40 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_43;
          }
        }

        else
        {
          v37 = &v33[8 * v31];
          v38 = v15;
        }

        do
        {
          v39 = *v38;
          v38 += 8;
          *v37 = v39;
          v37 += 8;
        }

        while (v37 != v18);
      }

LABEL_43:
      v16 = &v33[v32];
      operator delete(v14);
      v14 = v34;
      goto LABEL_30;
    }

LABEL_48:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v15 -= ((v9 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_15:
  *v15 = v17;
  v18 = v15 + 8;
  if (v7 != v8)
  {
    goto LABEL_31;
  }

LABEL_16:
  v19 = v15;
LABEL_17:
  v20 = *a1;
  *a1 = v14;
  *(a1 + 8) = v19;
  *(a1 + 16) = v18;
  *(a1 + 24) = v16;
  if (v20)
  {

    operator delete(v20);
  }
}

void std::__split_buffer<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *,std::allocator<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *>>::emplace_front<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *>(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v8 >= v7)
    {
      v11 = v7 - v4;
      v10 = v11 == 0;
      v12 = v11 >> 2;
      if (v10)
      {
        v12 = 1;
      }

      if (v12 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v13 = (v12 + 3) >> 2;
      v14 = 8 * v12;
      v15 = operator new(8 * v12);
      v6 = &v15[8 * v13];
      v16 = v6;
      v17 = v8 - v4;
      if (v8 != v4)
      {
        v16 = &v6[v17];
        v18 = v17 - 8;
        v19 = &v15[8 * v13];
        v20 = v4;
        if (v18 < 0x38)
        {
          goto LABEL_24;
        }

        v21 = &v15[8 * v13];
        v19 = v21;
        v20 = v4;
        if ((v21 - v4) < 0x20)
        {
          goto LABEL_24;
        }

        v22 = (v18 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v19 = &v6[v23];
        v20 = &v4[v23];
        v24 = (v4 + 16);
        v25 = v21 + 16;
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_24:
          do
          {
            v28 = *v20;
            v20 += 8;
            *v19 = v28;
            v19 += 8;
          }

          while (v19 != v16);
        }
      }

      *a1 = v15;
      *(a1 + 8) = v6;
      *(a1 + 16) = v16;
      *(a1 + 24) = &v15[v14];
      if (v4)
      {
        operator delete(v5);
        v6 = *(a1 + 8);
      }
    }

    else
    {
      v9 = (((v7 - v8) >> 3) + 1) / 2;
      v6 = &v4[8 * v9];
      if (v8 != v4)
      {
        memmove(&v4[8 * v9], v4, v8 - v4);
        v8 = *(a1 + 16);
      }

      *(a1 + 16) = &v8[8 * v9];
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  *(v6 - 1) = *a2;
  *(a1 + 8) = v6 - 8;
}

uint64_t std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v4 = *(a1 + 32);
  v5 = &v2[v4 / 0x66];
  v6 = *v5 + 40 * (v4 % 0x66);
  v7 = v2[(*(a1 + 40) + v4) / 0x66] + 40 * ((*(a1 + 40) + v4) % 0x66);
  if (v6 == v7)
  {
    goto LABEL_13;
  }

  do
  {
    v8 = *(v6 + 24);
    if (v8 == v6)
    {
      (*(*v8 + 32))(v8);
      v6 += 40;
      if (v6 - *v5 != 4080)
      {
        continue;
      }

LABEL_11:
      v9 = v5[1];
      ++v5;
      v6 = v9;
      continue;
    }

    if (v8)
    {
      (*(*v8 + 40))(v8);
    }

    v6 += 40;
    if (v6 - *v5 == 4080)
    {
      goto LABEL_11;
    }
  }

  while (v6 != v7);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
LABEL_13:
  *(a1 + 40) = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

LABEL_15:
  if (v10 == 1)
  {
    v11 = 51;
LABEL_20:
    *(a1 + 32) = v11;
  }

  else if (v10 == 2)
  {
    v11 = 102;
    goto LABEL_20;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::thread::ThreadProxy<std::tuple<llvm::StdThreadPool::grow(int)::$_0>>(uint64_t *a1, const llvm::Twine *a2)
{
  v3 = *a1;
  v5[0] = "llvm-worker-{0}";
  v5[1] = 15;
  v5[2] = &v8;
  v5[3] = 1;
  v6 = 1;
  v7[0] = &unk_1F5B3F4B0;
  v7[1] = a1 + 1;
  v8 = v7;
  v10 = 263;
  v9 = v5;
  llvm::set_thread_name(&v9, a2);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify(v3 + 292, *(a1 + 2));
  llvm::StdThreadPool::processTasks(v3, 0);
  operator delete(a1);
  return 0;
}

void llvm::initTimerOptions(llvm *this)
{
  if (atomic_load_explicit(qword_1EE17D050, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_1EE17D068, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (atomic_load_explicit(&qword_1EE17D068, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(qword_1EE17D080, memory_order_acquire))
      {
        return;
      }

LABEL_7:
      return;
    }
  }

  if (!atomic_load_explicit(qword_1EE17D080, memory_order_acquire))
  {
    goto LABEL_7;
  }
}

llvm *llvm::CreateInfoOutputFile@<X0>(llvm **a1@<X8>)
{
  if (atomic_load_explicit(qword_1EE17D098, memory_order_acquire))
  {
    v3 = qword_1EE17D098[0];
    v4 = *(qword_1EE17D098[0] + 23);
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17D098, llvm::object_creator<std::string>::call, llvm::object_deleter<std::string>::call);
    v3 = qword_1EE17D098[0];
    v4 = *(qword_1EE17D098[0] + 23);
    if ((v4 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (v4 != 1)
      {
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_19;
      }

      if (*v3 == 45)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }
  }

  v5 = *(v3 + 8);
  if (!v5)
  {
LABEL_19:
    v13 = operator new(0x60uLL);
    v14 = 2;
LABEL_22:
    result = llvm::raw_fd_ostream::raw_fd_ostream(v13, v14, 0, 0, 0);
    *a1 = result;
    return result;
  }

  if (v5 == 1 && **v3 == 45)
  {
LABEL_21:
    v13 = operator new(0x60uLL);
    v14 = 1;
    goto LABEL_22;
  }

LABEL_10:
  v21 = 0;
  v22 = std::system_category();
  v6 = operator new(0x60uLL);
  v7 = v6;
  if (v4 >= 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = *v3;
  }

  if (v4 >= 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = *(v3 + 8);
  }

  result = llvm::raw_fd_ostream::raw_fd_ostream(v6, v8, v9, &v21, 7);
  if (v21)
  {
    v11 = llvm::errs(result);
    v12 = v11[4];
    if (v11[3] - v12 > 0x1FuLL)
    {
      qmemcpy(v12, "Error opening info-output-file '", 32);
      v11[4] += 32;
    }

    else
    {
      v11 = llvm::raw_ostream::write(v11, "Error opening info-output-file '", 0x20uLL);
    }

    v15 = *(v3 + 23);
    if (v15 >= 0)
    {
      v16 = v3;
    }

    else
    {
      v16 = *v3;
    }

    if (v15 >= 0)
    {
      v17 = *(v3 + 23);
    }

    else
    {
      v17 = *(v3 + 8);
    }

    v18 = llvm::raw_ostream::write(v11, v16, v17);
    v19 = v18[4];
    if (v18[3] - v19 > 0xFuLL)
    {
      *v19 = *" for appending!\n";
      v18[4] += 16;
    }

    else
    {
      llvm::raw_ostream::write(v18, " for appending!\n", 0x10uLL);
    }

    v20 = operator new(0x60uLL);
    *a1 = llvm::raw_fd_ostream::raw_fd_ostream(v20, 2, 0, 0, 0);
    return (*(*v7 + 8))(v7);
  }

  else
  {
    *a1 = v7;
  }

  return result;
}

void *llvm::object_creator<std::string>::call()
{
  result = operator new(0x18uLL);
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  return result;
}

void llvm::object_deleter<std::string>::call(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 23) < 0)
    {
      v2 = a1;
      operator delete(*a1);
      a1 = v2;
    }

    operator delete(a1);
  }
}

uint64_t anonymous namespace::CreateTrackSpace::call(_anonymous_namespace_::CreateTrackSpace *this)
{
  v1 = operator new(0xC0uLL);
  *&v4 = "Enable -time-passes memory tracking (this may be slow)";
  *(&v4 + 1) = 54;
  v3 = 1;
  return llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [13],llvm::cl::desc,llvm::cl::OptionHidden>(v1, "track-memory", &v4, &v3);
}

uint64_t llvm::object_deleter<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>::call(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [13],llvm::cl::desc,llvm::cl::OptionHidden>(uint64_t a1, const char *a2, _OWORD *a3, _WORD *a4)
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
    v14 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v11 + 1, 8);
    GeneralCategory = v14;
    LODWORD(v11) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5AFB2B0;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5B3E720;
  *(a1 + 152) = &unk_1F5B3E320;
  *(a1 + 160) = &unk_1F5AFB2D0;
  *(a1 + 184) = a1 + 160;
  v12 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v12);
  *(a1 + 32) = *a3;
  *(a1 + 10) = (32 * (*a4 & 3)) | *(a1 + 10) & 0xFF9F;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t anonymous namespace::CreateInfoOutputFilename::call(_anonymous_namespace_::CreateInfoOutputFilename *this)
{
  v1 = operator new(0xD8uLL);
  *&v6 = "filename";
  *(&v6 + 1) = 8;
  *&v5 = "File to append -stats and -timer output to";
  *(&v5 + 1) = 42;
  v4 = 1;
  if (!atomic_load_explicit(qword_1EE17D098, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1EE17D098, llvm::object_creator<std::string>::call, llvm::object_deleter<std::string>::call);
  }

  v3 = qword_1EE17D098[0];
  return llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::opt<char [17],llvm::cl::value_desc,llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::LocationClass<std::string>>(v1, "info-output-file", &v6, &v5, &v4, &v3);
}

uint64_t llvm::object_deleter<llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>>::call(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::opt<char [17],llvm::cl::value_desc,llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::LocationClass<std::string>>(uint64_t a1, char *a2, _OWORD *a3, _OWORD *a4, _WORD *a5, const std::string **a6)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v12 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v13 = a1 + 64;
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
  v15 = *(a1 + 72);
  if (v15 >= *(a1 + 76))
  {
    v17 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v12, v15 + 1, 8);
    GeneralCategory = v17;
    LODWORD(v15) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v15) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5B3E2B0;
  *a1 = &unk_1F5B3F4F8;
  *(a1 + 176) = &unk_1F5B3E560;
  *(a1 + 184) = &unk_1F5B3F5A8;
  *(a1 + 208) = a1 + 184;
  llvm::cl::apply<llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>,char [17],llvm::cl::value_desc,llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::LocationClass<std::string>>(a1, a2, a3, a4, a5, a6);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

std::string *llvm::cl::apply<llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>,char [17],llvm::cl::value_desc,llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::LocationClass<std::string>>(uint64_t a1, char *__s, _OWORD *a3, _OWORD *a4, _WORD *a5, const std::string **a6)
{
  v12 = strlen(__s);
  v13 = llvm::cl::Option::setArgStr(a1, __s, v12);
  *(a1 + 48) = *a3;
  *(a1 + 32) = *a4;
  *(a1 + 10) = (32 * (*a5 & 3)) | *(a1 + 10) & 0xFF9F;
  if (*(a1 + 128))
  {
    v17 = "cl::location(x) specified more than once!";
    v18 = 259;
    v14 = llvm::errs(v13);
    return llvm::cl::Option::error(a1, &v17, 0, 0, v14);
  }

  else
  {
    v16 = *a6;
    *(a1 + 128) = *a6;
    *(a1 + 168) = 1;

    return std::string::operator=((a1 + 144), v16);
  }
}

uint64_t llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, __int16 a2, int a3, int a4, void *__src, size_t __len)
{
  memset(&__p, 0, sizeof(__p));
  if (!__src)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_14;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_19;
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (__len | 7) + 1;
    }

    v11 = __src;
    v12 = operator new(v10);
    __src = v11;
    p_dst = v12;
    __dst.__r_.__value_.__l.__size_ = __len;
    __dst.__r_.__value_.__r.__words[2] = v10 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v12;
LABEL_12:
    memmove(p_dst, __src, __len);
    p_dst->__r_.__value_.__s.__data_[__len] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *(&__dst.__r_.__value_.__s + 23) = __len;
  p_dst = &__dst;
  if (__len)
  {
    goto LABEL_12;
  }

  __dst.__r_.__value_.__s.__data_[0] = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_13:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_14:
  __p = __dst;
  std::string::operator=(*(a1 + 128), &__p);
  *(a1 + 12) = a2;
  v13 = *(a1 + 208);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_19:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  (*(*v13 + 48))(v13, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::~opt(uint64_t a1)
{
  *a1 = &unk_1F5B3F4F8;
  v2 = a1 + 184;
  v3 = *(a1 + 208);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 + 136) = &unk_1F5AFCAB0;
    if ((*(a1 + 167) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 + 136) = &unk_1F5AFCAB0;
    if ((*(a1 + 167) & 0x80000000) == 0)
    {
LABEL_5:
      *a1 = &unk_1F5B3E1D8;
      v4 = *(a1 + 96);
      if (v4 == *(a1 + 88))
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  operator delete(*(a1 + 144));
  *a1 = &unk_1F5B3E1D8;
  v4 = *(a1 + 96);
  if (v4 != *(a1 + 88))
  {
LABEL_6:
    free(v4);
  }

LABEL_7:
  v5 = *(a1 + 64);
  if (v5 != (a1 + 80))
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::~opt(char *__p)
{
  *__p = &unk_1F5B3F4F8;
  v2 = __p + 184;
  v3 = *(__p + 26);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(__p + 17) = &unk_1F5AFCAB0;
    if ((__p[167] & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(__p + 17) = &unk_1F5AFCAB0;
    if ((__p[167] & 0x80000000) == 0)
    {
LABEL_5:
      *__p = &unk_1F5B3E1D8;
      v4 = *(__p + 12);
      if (v4 == *(__p + 11))
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  operator delete(*(__p + 18));
  *__p = &unk_1F5B3E1D8;
  v4 = *(__p + 12);
  if (v4 != *(__p + 11))
  {
LABEL_6:
    free(v4);
  }

LABEL_7:
  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

void *llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  v5 = *(a1 + 128);
  if ((a3 & 1) != 0 || *(a1 + 168) != 1)
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 167);
  if (v6 >= 0)
  {
    v7 = *(a1 + 167);
  }

  else
  {
    v7 = *(a1 + 152);
  }

  v8 = *(v5 + 23);
  v9 = v8;
  if (v8 < 0)
  {
    v8 = v5[1];
  }

  if (v7 != v8 || (v6 >= 0 ? (v10 = (a1 + 144)) : (v10 = *(a1 + 144)), v9 >= 0 ? (v11 = v5) : (v11 = *v5), result = memcmp(v10, v11, v7), result))
  {
LABEL_16:
    v13 = *(v5 + 23);
    if (v13 >= 0)
    {
      v14 = v5;
    }

    else
    {
      v14 = *v5;
    }

    if (v13 >= 0)
    {
      v15 = *(v5 + 23);
    }

    else
    {
      v15 = v5[1];
    }

    return llvm::cl::parser<std::string>::printOptionDiff((a1 + 176), a1, v14, v15, a1 + 136, a2);
  }

  return result;
}

void llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::setDefault(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    v3 = (a1 + 144);
    v4 = *(a1 + 128);

    std::string::operator=(v4, v3);
  }

  else
  {
    v6 = v1;
    v7 = v2;
    memset(&__str, 0, sizeof(__str));
    std::string::operator=(*(a1 + 128), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void *std::__function::__func<llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1},std::allocator<llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1}>,void ()(std::string const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B3F5A8;
  return result;
}

uint64_t std::__function::__func<llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1},std::allocator<llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1}>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E099E4AFLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E099E4AFLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E099E4AFLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E099E4AFLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t anonymous namespace::CreateSortTimers::call(_anonymous_namespace_::CreateSortTimers *this)
{
  v1 = operator new(0xC0uLL);
  *&v6 = "In the report, sort the timers in each group in wall clock time order";
  *(&v6 + 1) = 69;
  v4 = 1;
  v5 = &v4;
  v3 = 1;
  return llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [12],llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(v1, "sort-timers", &v6, &v5, &v3);
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [12],llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(uint64_t a1, const char *a2, _OWORD *a3, _BYTE **a4, _WORD *a5)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v10 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v11 = a1 + 64;
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
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    v17 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v13 + 1, 8);
    GeneralCategory = v17;
    LODWORD(v13) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5AFB2B0;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5B3E720;
  *(a1 + 152) = &unk_1F5B3E320;
  *(a1 + 160) = &unk_1F5AFB2D0;
  *(a1 + 184) = a1 + 160;
  v14 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v14);
  *(a1 + 32) = *a3;
  v15 = *a4;
  *(a1 + 128) = **a4;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v15;
  *(a1 + 10) = (32 * (*a5 & 3)) | *(a1 + 10) & 0xFF9F;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void llvm::CleanupInstaller::~CleanupInstaller(llvm::CleanupInstaller *this)
{
  v2 = *(this + 23);
  v3 = v2;
  v4 = *(this + 1);
  if ((v2 & 0x80u) == 0)
  {
    v5 = *(this + 23);
  }

  else
  {
    v5 = *(this + 1);
  }

  if (v5 == 1)
  {
    v6 = *this;
    if ((v2 & 0x80u) == 0)
    {
      v6 = this;
    }

    if (*v6 == 45)
    {
      if ((v2 & 0x80) == 0)
      {
        return;
      }

LABEL_19:
      operator delete(*this);
      return;
    }
  }

  if ((*(this + 24) & 1) == 0)
  {
    v10 = 260;
    v9 = this;
    llvm::sys::fs::remove(&v9, 1);
    v2 = *(this + 23);
    v4 = *(this + 1);
    v3 = *(this + 23);
  }

  if (v3 >= 0)
  {
    v7 = this;
  }

  else
  {
    v7 = *this;
  }

  if (v3 >= 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = v4;
  }

  llvm::sys::DontRemoveFileOnSignal(v7, v8);
  if ((*(this + 23) & 0x80) != 0)
  {
    goto LABEL_19;
  }
}

void *llvm::ToolOutputFile::ToolOutputFile(void *__dst, _BYTE *__src, size_t __len, uint64_t a4, int a5)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (__len | 7) + 1;
    }

    v13 = operator new(v12);
    __dst[1] = __len;
    __dst[2] = v12 | 0x8000000000000000;
    *__dst = v13;
    memmove(v13, __src, __len);
    v10 = &v13[__len];
    goto LABEL_11;
  }

  *(__dst + 23) = __len;
  v10 = __dst;
  if (!__len)
  {
LABEL_11:
    *v10 = 0;
    *(__dst + 24) = 0;
    goto LABEL_12;
  }

  memmove(__dst, __src, __len);
  *(__dst + __len) = 0;
  *(__dst + 24) = 0;
  if (__len != 1 || *__src != 45)
  {
LABEL_12:
    llvm::sys::RemoveFileOnSignal(__src, __len);
    *(__dst + 32) = 0;
    v11 = (__dst + 4);
    *(__dst + 128) = 0;
    if (__len != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  *(__dst + 32) = 0;
  v11 = (__dst + 4);
  *(__dst + 128) = 0;
LABEL_13:
  if (*__src == 45)
  {
    __dst[17] = llvm::outs(v11);
    v14 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v14;
    return __dst;
  }

LABEL_15:
  v15 = llvm::raw_fd_ostream::raw_fd_ostream(v11, __src, __len, a4, a5);
  *(__dst + 128) = 1;
  __dst[17] = v15;
  if (*a4)
  {
    *(__dst + 24) = 1;
  }

  return __dst;
}

void llvm::Twine::str(llvm::Twine *this@<X0>, std::string *a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(this + 32);
  if (v3 != 7)
  {
    if (v3 == 4 && *(this + 33) == 1)
    {
      v4 = *this;
      if (*(*this + 23) < 0)
      {
        v14 = *v4;
        v15 = *(v4 + 1);

        std::string::__init_copy_ctor_external(a2, v14, v15);
      }

      else
      {
        v5 = *v4;
        a2->__r_.__value_.__r.__words[2] = *(v4 + 2);
        *&a2->__r_.__value_.__l.__data_ = v5;
      }

      return;
    }

LABEL_10:
    v16 = &v18;
    v17 = xmmword_1E0971960;
    v7 = llvm::Twine::toStringRef(this, &v16);
    if (!v7)
    {
      a2->__r_.__value_.__r.__words[0] = 0;
      a2->__r_.__value_.__l.__size_ = 0;
      a2->__r_.__value_.__r.__words[2] = 0;
      v11 = v16;
      if (v16 == &v18)
      {
        return;
      }

LABEL_23:
      free(v11);
      return;
    }

    v9 = v8;
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v10 = v7;
    if (v8 >= 0x17)
    {
      if ((v8 | 7) == 0x17)
      {
        v12 = 25;
      }

      else
      {
        v12 = (v8 | 7) + 1;
      }

      v13 = operator new(v12);
      a2->__r_.__value_.__l.__size_ = v9;
      a2->__r_.__value_.__r.__words[2] = v12 | 0x8000000000000000;
      a2->__r_.__value_.__r.__words[0] = v13;
      a2 = v13;
    }

    else
    {
      *(&a2->__r_.__value_.__s + 23) = v8;
      if (!v8)
      {
LABEL_22:
        a2->__r_.__value_.__s.__data_[v9] = 0;
        v11 = v16;
        if (v16 == &v18)
        {
          return;
        }

        goto LABEL_23;
      }
    }

    memmove(a2, v10, v9);
    goto LABEL_22;
  }

  if (*(this + 33) != 1)
  {
    goto LABEL_10;
  }

  v6 = *this;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  LODWORD(v17) = 0;
  v20 = 0;
  v21 = 1;
  v18 = 0;
  v19 = 0;
  *(&v17 + 1) = 0;
  v16 = &unk_1F5B3FB30;
  v22 = a2;
  llvm::raw_ostream::SetBufferAndMode(&v16, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v16, v6);
  if (v19 != *(&v17 + 1))
  {
    llvm::raw_ostream::flush_nonempty(&v16);
  }

  llvm::raw_ostream::~raw_ostream(&v16);
}

const char *llvm::Twine::toStringRef(unsigned __int8 *a1, uint64_t a2)
{
  if (a1[33] != 1)
  {
    goto LABEL_12;
  }

  v3 = a1[32];
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      return *a1;
    }

    goto LABEL_12;
  }

  if (v3 == 1)
  {
    return 0;
  }

  if (v3 == 3)
  {
    v8 = *a1;
    if (*a1)
    {
      strlen(v8);
      return v8;
    }

    return 0;
  }

  if (v3 != 4)
  {
LABEL_12:
    v10 = 2;
    v14 = 0;
    v15 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v9 = &unk_1F5B3FBC0;
    v16 = a2;
    v6 = llvm::raw_ostream::SetBufferAndMode(&v9, 0, 0, 0);
    v7 = llvm::Twine::printOneChild(v6, &v9, *a1, *(a1 + 1), a1[32]);
    llvm::Twine::printOneChild(v7, &v9, *(a1 + 2), *(a1 + 3), a1[33]);
    llvm::raw_ostream::~raw_ostream(&v9);
    return *a2;
  }

  if (*(*a1 + 23) >= 0)
  {
    return *a1;
  }

  else
  {
    return **a1;
  }
}

void llvm::Twine::toVector(uint64_t a1, uint64_t a2)
{
  v6 = 2;
  v10 = 0;
  v11 = 1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v5 = &unk_1F5B3FBC0;
  v12 = a2;
  v3 = llvm::raw_ostream::SetBufferAndMode(&v5, 0, 0, 0);
  v4 = llvm::Twine::printOneChild(v3, &v5, *a1, *(a1 + 8), *(a1 + 32));
  llvm::Twine::printOneChild(v4, &v5, *(a1 + 16), *(a1 + 24), *(a1 + 33));
  llvm::raw_ostream::~raw_ostream(&v5);
}

llvm::raw_ostream *llvm::Twine::print(llvm::Twine *this, llvm::raw_ostream *a2)
{
  v4 = llvm::Twine::printOneChild(this, a2, *this, *(this + 1), *(this + 32));
  v5 = *(this + 2);
  v6 = *(this + 3);
  v7 = *(this + 33);

  return llvm::Twine::printOneChild(v4, a2, v5, v6, v7);
}

uint64_t llvm::Twine::toNullTerminatedStringRef(uint64_t a1, void *a2)
{
  if (*(a1 + 33) != 1 || (v4 = *(a1 + 32), v4 < 2))
  {
LABEL_9:
    v11 = 2;
    v15 = 0;
    v16 = 1;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v10 = &unk_1F5B3FBC0;
    v17 = a2;
    v7 = llvm::raw_ostream::SetBufferAndMode(&v10, 0, 0, 0);
    v8 = llvm::Twine::printOneChild(v7, &v10, *a1, *(a1 + 8), *(a1 + 32));
    llvm::Twine::printOneChild(v8, &v10, *(a1 + 16), *(a1 + 24), *(a1 + 33));
    llvm::raw_ostream::~raw_ostream(&v10);
    v9 = a2[1];
    if ((v9 + 1) > a2[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v9 + 1, 1);
      v9 = a2[1];
    }

    *(*a2 + v9) = 0;
    return *a2;
  }

  if (v4 == 6)
  {
    return *a1;
  }

  if (v4 != 4)
  {
    if (v4 == 3)
    {
      v5 = *a1;
      if (!*a1)
      {
        return 0;
      }

      strlen(*a1);
      return v5;
    }

    goto LABEL_9;
  }

  result = *a1;
  if ((*(*a1 + 23) & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

llvm::raw_ostream *llvm::Twine::printOneChild(llvm::raw_ostream *result, llvm::raw_ostream *a2, uint64_t a3, size_t a4, unsigned __int8 a5)
{
  v7 = a5;
  if (a5 == 2)
  {
    do
    {
      result = llvm::Twine::printOneChild(result, a2, *a3, *(a3 + 8), *(a3 + 32));
      v8 = *(a3 + 33);
      v9 = a3 + 16;
      a3 = *(a3 + 16);
      a4 = *(v9 + 8);
      v7 = v8;
    }

    while (v8 == 2);
  }

  if (v7 > 9)
  {
    if (v7 > 12)
    {
      if (v7 == 13)
      {
        v17 = *a3;
        v18 = a2;

        return llvm::raw_ostream::operator<<(v18, v17);
      }

      if (v7 != 14)
      {
        if (v7 == 15)
        {
          v16 = *a3;

          return llvm::raw_ostream::write_hex(a2, v16);
        }

        return result;
      }

      v14 = *a3;
      v15 = a2;
    }

    else if (v7 == 10)
    {
      v14 = a3;
      v15 = a2;
    }

    else
    {
      if (v7 == 11)
      {
        v17 = *a3;
        v18 = a2;

        return llvm::raw_ostream::operator<<(v18, v17);
      }

      v14 = *a3;
      v15 = a2;
    }

    return llvm::raw_ostream::operator<<(v15, v14);
  }

  if (v7 > 6)
  {
    if (v7 == 7)
    {

      return llvm::raw_ostream::operator<<(a2, a3);
    }

    if (v7 == 8)
    {
      v20 = *(a2 + 4);
      if (v20 >= *(a2 + 3))
      {

        return llvm::raw_ostream::write(a2, a3);
      }

      else
      {
        *(a2 + 4) = v20 + 1;
        *v20 = a3;
      }

      return result;
    }

    v17 = a3;
    v18 = a2;

    return llvm::raw_ostream::operator<<(v18, v17);
  }

  if ((v7 - 5) < 2)
  {
    result = *(a2 + 4);
    if (a4 > *(a2 + 3) - result)
    {
      v13 = a2;
      v11 = a3;
      v12 = a4;

      return llvm::raw_ostream::write(v13, v11, v12);
    }

    if (a4)
    {
      v21 = a3;
      v22 = a4;
      result = memcpy(result, v21, a4);
      *(a2 + 4) += v22;
    }
  }

  else if (v7 == 3)
  {
    if (a3)
    {
      v19 = strlen(a3);
      result = *(a2 + 4);
      if (v19 > *(a2 + 3) - result)
      {
        v13 = a2;
        v11 = a3;
        v12 = v19;

        return llvm::raw_ostream::write(v13, v11, v12);
      }

      if (v19)
      {
        result = memcpy(result, a3, v19);
        *(a2 + 4) += v19;
      }
    }
  }

  else if (v7 == 4)
  {
    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (v10 >= 0)
    {
      v12 = *(a3 + 23);
    }

    else
    {
      v12 = *(a3 + 8);
    }

    v13 = a2;

    return llvm::raw_ostream::write(v13, v11, v12);
  }

  return result;
}

void llvm::initTypeSizeOptions(llvm *this)
{
  if (!atomic_load_explicit(&ScalableErrorAsWarning, memory_order_acquire))
  {
  }
}

uint64_t anonymous namespace::CreateScalableErrorAsWarning::call(_anonymous_namespace_::CreateScalableErrorAsWarning *this)
{
  v1 = operator new(0xC0uLL);
  v4 = 1;
  *&v3 = "Treat issues where a fixed-width property is requested from a scalable type as a warning, instead of an error";
  *(&v3 + 1) = 109;
  return llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [38],llvm::cl::OptionHidden,llvm::cl::desc>(v1, "treat-scalable-fixed-error-as-warning", &v4, &v3);
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [38],llvm::cl::OptionHidden,llvm::cl::desc>(uint64_t a1, const char *a2, _WORD *a3, _OWORD *a4)
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
    v14 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v11 + 1, 8);
    GeneralCategory = v14;
    LODWORD(v11) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5AFB2B0;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5B3E720;
  *(a1 + 152) = &unk_1F5B3E320;
  *(a1 + 160) = &unk_1F5AFB2D0;
  *(a1 + 184) = a1 + 160;
  v12 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v12);
  *(a1 + 10) = (32 * (*a3 & 3)) | *(a1 + 10) & 0xFF9F;
  *(a1 + 32) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void llvm::vfs::File::getObjectRefForContent(_BYTE *a1@<X8>)
{
  a1[16] &= ~1u;
  *a1 = 0;
  a1[8] = 0;
}

void *llvm::vfs::FileSystem::getBufferForFile@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 48))(v19);
  if (v20)
  {
    v14 = v19[0];
    v15 = v19[1];
    goto LABEL_6;
  }

  if (a6)
  {
    result = (*(*v19[0] + 40))(&v16);
    if (v18)
    {
      v14 = v16;
      v15 = v17;
LABEL_6:
      *(a7 + 16) |= 1u;
      *a7 = v14;
      *(a7 + 8) = v15;
      if (v20)
      {
        return result;
      }

      goto LABEL_10;
    }

    *a6 = v16;
    *(a6 + 8) = v17;
  }

  result = (*(*v19[0] + 32))(v19[0], a2, a3, a4, a5);
  if (v20)
  {
    return result;
  }

LABEL_10:
  result = v19[0];
  v19[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

unint64_t llvm::vfs::FileSystem::makeAbsolute(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 261;
  v4 = *(a2 + 8);
  v8[0] = *a2;
  v8[1] = v4;
  if (llvm::sys::path::is_absolute(v8, 0))
  {
    std::system_category();
    return 0;
  }

  else
  {
    (*(*a1 + 72))(&__p, a1);
    if (v12)
    {
      v6 = __p & 0xFFFFFFFF00000000;
      v7 = __p;
    }

    else
    {
      v9 = 260;
      v8[0] = &__p;
      llvm::sys::fs::make_absolute(v8, a2);
      std::system_category();
      v6 = 0;
      v7 = 0;
      if ((v12 & 1) == 0 && v11 < 0)
      {
        operator delete(__p);
      }
    }

    return v7 | v6;
  }
}

uint64_t llvm::vfs::FileSystem::exists(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  (*(*a1 + 40))(&__p);
  v1 = v7;
  v2 = v6;
  if ((v7 & 1) == 0 && v5 < 0)
  {
    operator delete(__p);
  }

  return (v2 > 1) & ~v1;
}

void llvm::vfs::getRealFileSystem(void *a1@<X8>)
{
  if (atomic_load_explicit(&qword_1EE17D118, memory_order_acquire))
  {
    v2 = _MergedGlobals_57;
    *a1 = _MergedGlobals_57;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    llvm::vfs::getRealFileSystem();
    v2 = _MergedGlobals_57;
    *a1 = _MergedGlobals_57;
    if (!v2)
    {
      return;
    }
  }

  atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
}

atomic_uint **llvm::IntrusiveRefCntPtr<llvm::vfs::FileSystem>::~IntrusiveRefCntPtr(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      return v2;
    }
  }

  return result;
}

uint64_t llvm::vfs::FileSystem::getDirectoryEntry@<X0>(const llvm::Twine *a1@<X1>, uint64_t a2@<X8>)
{
  *&v10.__val_ = std::generic_category();
  llvm::errorCodeToError(0x2D, v10, &v8);
  v5 = v8;
  v8 = 0;
  v9 = v5;
  llvm::FileError::build(a1, 0, 0, &v9, &v7);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  result = v8;
  if (v8)
  {
    result = (*(*v8 + 8))(v8);
  }

  *(a2 + 8) |= 1u;
  *a2 = v7;
  return result;
}

uint64_t std::optional<llvm::ErrorOr<anonymous namespace::RealFileSystem::WorkingDirectory>>::operator=[abi:nn200100]<anonymous namespace::RealFileSystem::WorkingDirectory,void>(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 312) == 1)
  {
    v13 = 0;
    v7 = v9;
    v4 = xmmword_1E0971D70;
    v8 = xmmword_1E0971D70;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<char>::operator=(&v7, a2);
      v4 = xmmword_1E0971D70;
    }

    v10 = v12;
    v11 = v4;
    if (*(a2 + 160))
    {
      llvm::SmallVectorImpl<char>::operator=(&v10, a2 + 152);
    }

    if ((v13 & 1) == 0)
    {
      if (v10 != v12)
      {
        free(v10);
      }

      if (v7 != v9)
      {
        free(v7);
      }
    }
  }

  else
  {
    *(a1 + 304) &= ~1u;
    *a1 = a1 + 24;
    v5 = xmmword_1E0971D70;
    *(a1 + 8) = xmmword_1E0971D70;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<char>::operator=(a1, a2);
      v5 = xmmword_1E0971D70;
    }

    *(a1 + 152) = a1 + 176;
    *(a1 + 160) = v5;
    if (*(a2 + 160))
    {
      llvm::SmallVectorImpl<char>::operator=(a1 + 152, a2 + 152);
    }

    *(a1 + 312) = 1;
  }

  return a1;
}

void anonymous namespace::RealFileSystem::~RealFileSystem(void **this)
{
  *this = &unk_1F5B3F6D0;
  if (*(this + 328) == 1 && (this[40] & 1) == 0)
  {
    if (this[21] != this + 24)
    {
      v1 = this;
      free(this[21]);
      this = v1;
    }

    if (this[2] != this + 5)
    {
      free(this[2]);
    }
  }
}

{
  *this = &unk_1F5B3F6D0;
  if (*(this + 328) == 1 && (this[40] & 1) == 0)
  {
    if (this[21] != this + 24)
    {
      v2 = this;
      free(this[21]);
      this = v2;
    }

    if (this[2] != this + 5)
    {
      v3 = this;
      free(this[2]);
      this = v3;
    }
  }

  operator delete(this);
}

void anonymous namespace::RealFileSystem::status(_anonymous_namespace_::RealFileSystem *this@<X0>, const llvm::Twine *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v22[0].st_mtimespec.tv_nsec = 0;
  v22[0].st_ctimespec.tv_sec = &v22[0].st_birthtimespec.tv_nsec;
  *&v22[0].st_ctimespec.tv_nsec = xmmword_1E0971960;
  memset(v22, 0, 44);
  *(&v22[0].st_atimespec.tv_nsec + 4) = 0xFFFFLL;
  WORD2(v22[0].st_mtimespec.tv_sec) = 0;
  if (*(this + 328) == 1 && (*(this + 320) & 1) == 0)
  {
    llvm::Twine::toVector(a2, &v22[0].st_ctimespec);
    *&v19[16] = 261;
    v10 = *(this + 22);
    st_ctimespec.tv_sec = *(this + 21);
    st_ctimespec.tv_nsec = v10;
    llvm::sys::fs::make_absolute(&st_ctimespec, &v22[0].st_ctimespec);
    *&v19[16] = 261;
    st_ctimespec = v22[0].st_ctimespec;
    v6 = llvm::sys::fs::status(&st_ctimespec, v22, 1);
    if (v6)
    {
LABEL_4:
      *(a3 + 80) |= 1u;
      *a3 = v6;
      *(a3 + 8) = v7;
      tv_sec = v22[0].st_ctimespec.tv_sec;
      if (v22[0].st_ctimespec.tv_sec == &v22[0].st_birthtimespec.tv_nsec)
      {
        return;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v5 = *(a2 + 1);
    st_ctimespec = *a2;
    *v19 = v5;
    *&v19[16] = *(a2 + 4);
    v6 = llvm::sys::fs::status(&st_ctimespec, v22, 1);
    if (v6)
    {
      goto LABEL_4;
    }
  }

  UniqueID = llvm::sys::fs::file_status::getUniqueID(v22);
  v13 = v12;
  LastModificationTime = llvm::sys::fs::basic_file_status::getLastModificationTime(v22);
  v15 = v22[0].st_atimespec.tv_sec;
  tv_nsec = v22[0].st_atimespec.tv_nsec;
  v17 = *&v22[0].st_rdev;
  llvm::Twine::str(a2, &st_ctimespec);
  *&v19[8] = UniqueID;
  *&v19[16] = v13;
  *&v20 = LastModificationTime;
  *(&v20 + 1) = v17;
  *&v21 = v15;
  *(&v21 + 1) = tv_nsec;
  *(a3 + 80) &= ~1u;
  *a3 = st_ctimespec;
  *(a3 + 16) = *v19;
  *(a3 + 72) = 0;
  *(a3 + 56) = v21;
  *(a3 + 40) = v20;
  *(a3 + 24) = *&v19[8];
  tv_sec = v22[0].st_ctimespec.tv_sec;
  if (v22[0].st_ctimespec.tv_sec == &v22[0].st_birthtimespec.tv_nsec)
  {
    return;
  }

LABEL_5:
  free(tv_sec);
}

void anonymous namespace::RealFileSystem::openFileForRead(_anonymous_namespace_::RealFileSystem *this@<X0>, const llvm::Twine *a2@<X1>, uint64_t a3@<X8>)
{
  v30[32] = *MEMORY[0x1E69E9840];
  v28 = v30;
  v29 = xmmword_1E0971960;
  *v26 = v27;
  *&v26[8] = xmmword_1E0971960;
  if (*(this + 328) == 1 && (*(this + 320) & 1) == 0)
  {
    llvm::Twine::toVector(a2, v26);
    LOWORD(v23) = 261;
    v7 = *(this + 22);
    *&v22[0] = *(this + 21);
    *(&v22[0] + 1) = v7;
    llvm::sys::fs::make_absolute(v22, v26);
    LOWORD(v23) = 261;
    v22[0] = *v26;
  }

  else
  {
    v5 = *(a2 + 1);
    v22[0] = *a2;
    v22[1] = v5;
    v23 = *(a2 + 4);
  }

  llvm::sys::fs::openNativeFileForRead(v22, 0, &v28, &v24);
  if ((v25 & 1) == 0)
  {
    v11 = operator new(0x78uLL);
    v12 = v24;
    llvm::Twine::str(a2, &__p);
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v16 = v28;
    v15 = v29;
    *v11 = &unk_1F5B3F788;
    *(v11 + 2) = v12;
    LOWORD(v23) = 261;
    *&v22[0] = p_p;
    *(&v22[0] + 1) = size;
    llvm::Twine::str(v22, (v11 + 16));
    v11[88] = 0;
    *(v11 + 72) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 40) = 0u;
    v17 = v11 + 96;
    if (!v16)
    {
      *v17 = 0;
      *(v11 + 13) = 0;
      *(v11 + 14) = 0;
      *(a3 + 16) &= ~1u;
      *a3 = v11;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_25:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_26;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v15 | 7) + 1;
      }

      v17 = operator new(v18);
      *(v11 + 13) = v15;
      *(v11 + 14) = v18 | 0x8000000000000000;
      *(v11 + 12) = v17;
    }

    else
    {
      v11[119] = v15;
      if (!v15)
      {
LABEL_24:
        *(v17 + v15) = 0;
        *(a3 + 16) &= ~1u;
        *a3 = v11;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    memmove(v17, v16, v15);
    goto LABEL_24;
  }

  v8 = v24;
  v24 = 0;
  v21 = v8;
  v9 = llvm::errorToErrorCode(&v21);
  *(a3 + 16) |= 1u;
  *a3 = v9;
  *(a3 + 8) = v10;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

LABEL_26:
  if (v25)
  {
    v19 = v24;
    v24 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  if (*v26 != v27)
  {
    free(*v26);
  }

  if (v28 != v30)
  {
    free(v28);
  }
}

void anonymous namespace::RealFileSystem::dir_begin(_anonymous_namespace_::RealFileSystem *this@<X0>, const llvm::Twine *a2@<X1>, std::error_code *a3@<X2>, void *a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = xmmword_1E0971D70;
  if (*(this + 328) == 1 && (*(this + 320) & 1) == 0)
  {
    llvm::Twine::toVector(a2, &v24);
    v28 = 261;
    v8 = *(this + 22);
    *&v27[0] = *(this + 21);
    *(&v27[0] + 1) = v8;
    llvm::sys::fs::make_absolute(v27, &v24);
    LOWORD(v22) = 261;
    v21[0] = __PAIR128__(v25, v24);
  }

  else
  {
    v6 = *(a2 + 1);
    v21[0] = *a2;
    v21[1] = v6;
    v22 = *(a2 + 4);
  }

  v9 = operator new(0x58uLL);
  v9->__shared_owners_ = 0;
  v9->__vftable = &unk_1F5B3F7F0;
  v9[1].__shared_owners_ = 0;
  v9[1].__shared_weak_owners_ = 0;
  v9[2].__vftable = 0;
  LODWORD(v9[2].__shared_owners_) = 9;
  v9->__shared_weak_owners_ = 0;
  v9[1].__vftable = &unk_1F5B3F840;
  llvm::sys::fs::directory_iterator::directory_iterator(&v9[2].__shared_weak_owners_, v21, a3, 1);
  shared_weak_owners = v9[2].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    v11 = *(shared_weak_owners + 31);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(shared_weak_owners + 16);
    }

    if (v11)
    {
      if (v12 < 0)
      {
        std::string::__init_copy_ctor_external(&v23, *(shared_weak_owners + 8), *(shared_weak_owners + 16));
        shared_weak_owners = v9[2].__shared_weak_owners_;
        v14 = *(shared_weak_owners + 32);
        if (v14 != 9)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13 = *(shared_weak_owners + 8);
        v23.__r_.__value_.__r.__words[2] = *(shared_weak_owners + 24);
        *&v23.__r_.__value_.__l.__data_ = v13;
        v14 = *(shared_weak_owners + 32);
        if (v14 != 9)
        {
          goto LABEL_14;
        }
      }

      llvm::sys::fs::directory_entry::status((shared_weak_owners + 8), v27);
      if (v30)
      {
        v14 = 9;
      }

      else
      {
        v14 = v29;
      }

LABEL_14:
      *&v27[0] = v23.__r_.__value_.__l.__size_;
      v15 = v23.__r_.__value_.__r.__words[0];
      *(v27 + 7) = *(&v23.__r_.__value_.__r.__words[1] + 7);
      v16 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      memset(&v23, 0, sizeof(v23));
      if (SHIBYTE(v9[2].__vftable) < 0)
      {
        operator delete(v9[1].__shared_owners_);
        v18 = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
        v19 = *&v27[0];
        v9[1].__shared_owners_ = v15;
        v9[1].__shared_weak_owners_ = v19;
        *(&v9[1].__shared_weak_owners_ + 7) = *(v27 + 7);
        HIBYTE(v9[2].__vftable) = v16;
        LODWORD(v9[2].__shared_owners_) = v14;
        if (v18 < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v17 = *&v27[0];
        v9[1].__shared_owners_ = v15;
        v9[1].__shared_weak_owners_ = v17;
        *(&v9[1].__shared_weak_owners_ + 7) = *(v27 + 7);
        HIBYTE(v9[2].__vftable) = v16;
        LODWORD(v9[2].__shared_owners_) = v14;
      }
    }
  }

  *a4 = v9 + 1;
  a4[1] = v9;
  v20 = HIBYTE(v9[2].__vftable);
  if ((v20 & 0x80u) != 0)
  {
    v20 = v9[1].__shared_weak_owners_;
  }

  if (!v20)
  {
    *a4 = 0;
    a4[1] = 0;
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  if (v24 != v26)
  {
    free(v24);
  }
}

unint64_t anonymous namespace::RealFileSystem::setCurrentWorkingDirectory(_anonymous_namespace_::RealFileSystem *this, const llvm::Twine *a2)
{
  v33[16] = *MEMORY[0x1E69E9840];
  if ((*(this + 328) & 1) == 0)
  {
    v4 = llvm::sys::fs::set_current_path(a2, a2);
    v5 = v4;
    v6 = HIDWORD(v4);
    return v5 | (v6 << 32);
  }

  v31 = v33;
  v32 = xmmword_1E0971D70;
  v28 = v30;
  v29 = xmmword_1E0971D70;
  v25 = v27;
  v26 = xmmword_1E0971D70;
  if (*(this + 320))
  {
    v3 = *(a2 + 1);
    *v20 = *a2;
    *&v20[16] = v3;
    v21 = *(a2 + 4);
  }

  else
  {
    llvm::Twine::toVector(a2, &v25);
    LOWORD(v21) = 261;
    v7 = *(this + 22);
    *v20 = *(this + 21);
    *&v20[8] = v7;
    llvm::sys::fs::make_absolute(v20, &v25);
    LOWORD(v21) = 261;
    *v20 = v25;
    *&v20[8] = v26;
  }

  llvm::Twine::toVector(v20, &v31);
  v19 = 0;
  LOWORD(v21) = 261;
  *v20 = v31;
  *&v20[8] = v32;
  is_directory = llvm::sys::fs::is_directory(v20, &v19, v8);
  v5 = is_directory;
  if (is_directory)
  {
    v6 = HIDWORD(is_directory);
    v10 = v25;
    if (v25 == v27)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v19)
  {
    LOWORD(v21) = 261;
    *v20 = v31;
    *&v20[8] = v32;
    v11 = llvm::sys::fs::real_path(v20, &v28, 0);
    v5 = v11;
    v6 = HIDWORD(v11);
    if (v11)
    {
      v10 = v25;
      if (v25 == v27)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    *v20 = &v20[24];
    *&v20[8] = xmmword_1E0971D70;
    v13 = v32;
    if (!v32)
    {
LABEL_27:
      v22 = v24;
      v23 = xmmword_1E0971D70;
      v16 = v29;
      if (!v29)
      {
        goto LABEL_34;
      }

      if (v29 < 0x81)
      {
        v18 = v24;
        v17 = v29;
      }

      else
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&v22, v24, v29, 1);
        v17 = v29;
        if (!v29)
        {
LABEL_33:
          *&v23 = v16;
LABEL_34:
          if (v22 != v24)
          {
            free(v22);
          }

          if (*v20 != &v20[24])
          {
            free(*v20);
          }

          std::system_category();
          v5 = 0;
          v10 = v25;
          if (v25 == v27)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        v18 = v22;
      }

      memcpy(v18, v28, v17);
      goto LABEL_33;
    }

    if (v32 < 0x81)
    {
      v15 = &v20[24];
      v14 = v32;
    }

    else
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v20, &v20[24], v32, 1);
      v14 = v32;
      if (!v32)
      {
LABEL_26:
        *&v20[8] = v13;
        goto LABEL_27;
      }

      v15 = *v20;
    }

    memcpy(v15, v31, v14);
    goto LABEL_26;
  }

  v5 = 20;
  std::generic_category();
  LODWORD(v6) = 0;
  v10 = v25;
  if (v25 != v27)
  {
LABEL_14:
    free(v10);
  }

LABEL_15:
  if (v28 != v30)
  {
    free(v28);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  return v5 | (v6 << 32);
}

void anonymous namespace::RealFileSystem::getCurrentWorkingDirectory(_anonymous_namespace_::RealFileSystem *this@<X0>, uint64_t a2@<X8>)
{
  v19[16] = *MEMORY[0x1E69E9840];
  if (*(this + 328) == 1)
  {
    if (*(this + 320))
    {
      v4 = *(this + 2);
      v3 = *(this + 3);
      *(a2 + 24) |= 1u;
      *a2 = v4;
      *(a2 + 8) = v3;
      return;
    }

    v8 = *(this + 3);
    if (v8 <= 0x7FFFFFFFFFFFFFF7)
    {
      v9 = *(this + 2);
      if (v8 >= 0x17)
      {
        if ((v8 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v8 | 7) + 1;
        }

        v10 = operator new(v14);
        *&__dst[8] = v8;
        *&__dst[16] = v14 | 0x8000000000000000;
        *__dst = v10;
      }

      else
      {
        __dst[23] = *(this + 3);
        v10 = __dst;
        if (!v8)
        {
          goto LABEL_20;
        }
      }

      memmove(v10, v9, v8);
LABEL_20:
      v10[v8] = 0;
      *(a2 + 24) &= ~1u;
      *a2 = *__dst;
      *(a2 + 16) = *&__dst[16];
      return;
    }

LABEL_29:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  *__dst = v19;
  *&__dst[8] = xmmword_1E0971D70;
  v5 = llvm::sys::fs::current_path(__dst);
  if (!v5)
  {
    v11 = *&__dst[8];
    if (*&__dst[8] > 0x7FFFFFFFFFFFFFF7uLL)
    {
      goto LABEL_29;
    }

    v12 = *__dst;
    if (*&__dst[8] >= 0x17uLL)
    {
      if ((*&__dst[8] | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (*&__dst[8] | 7) + 1;
      }

      v13 = operator new(v15);
      *(&v16 + 1) = v11;
      v17 = v15 | 0x8000000000000000;
      *&v16 = v13;
    }

    else
    {
      HIBYTE(v17) = __dst[8];
      v13 = &v16;
      if (!*&__dst[8])
      {
LABEL_26:
        *(v13 + v11) = 0;
        *(a2 + 24) &= ~1u;
        *a2 = v16;
        v7 = *__dst;
        *(a2 + 16) = v17;
        if (v7 == v19)
        {
          return;
        }

        goto LABEL_27;
      }
    }

    memmove(v13, v12, v11);
    goto LABEL_26;
  }

  *(a2 + 24) |= 1u;
  *a2 = v5;
  *(a2 + 8) = v6;
  v7 = *__dst;
  if (*__dst == v19)
  {
    return;
  }

LABEL_27:
  free(v7);
}

unint64_t anonymous namespace::RealFileSystem::getRealPath(uint64_t a1, uint64_t a2, void *a3)
{
  v13[32] = *MEMORY[0x1E69E9840];
  v11 = v13;
  v12 = xmmword_1E0971960;
  if (*(a1 + 328) == 1 && (*(a1 + 320) & 1) == 0)
  {
    llvm::Twine::toVector(a2, &v11);
    LOWORD(v10) = 261;
    v6 = *(a1 + 176);
    *&v9[0] = *(a1 + 168);
    *(&v9[0] + 1) = v6;
    llvm::sys::fs::make_absolute(v9, &v11);
    LOWORD(v10) = 261;
    v9[0] = __PAIR128__(v12, v11);
  }

  else
  {
    v4 = *(a2 + 16);
    v9[0] = *a2;
    v9[1] = v4;
    v10 = *(a2 + 32);
  }

  result = llvm::sys::fs::real_path(v9, a3, 0);
  if (v11 != v13)
  {
    v8 = result;
    free(v11);
    return v8;
  }

  return result;
}

uint64_t anonymous namespace::RealFileSystem::isLocal(_anonymous_namespace_::RealFileSystem *this, const llvm::Twine *a2, const llvm::Twine *a3)
{
  v15[32] = *MEMORY[0x1E69E9840];
  v13 = v15;
  v14 = xmmword_1E0971960;
  if (*(this + 328) == 1 && (*(this + 320) & 1) == 0)
  {
    llvm::Twine::toVector(a2, &v13);
    LOWORD(v12) = 261;
    v9 = *(this + 22);
    *&v11[0] = *(this + 21);
    *(&v11[0] + 1) = v9;
    llvm::sys::fs::make_absolute(v11, &v13);
    LOWORD(v12) = 261;
    v11[0] = __PAIR128__(v14, v13);
    result = llvm::sys::fs::is_local(v11, a3, v10);
    v6 = v13;
    if (v13 == v15)
    {
      return result;
    }
  }

  else
  {
    v4 = *(a2 + 1);
    v11[0] = *a2;
    v11[1] = v4;
    v12 = *(a2 + 4);
    result = llvm::sys::fs::is_local(v11, a3, a3);
    v6 = v13;
    if (v13 == v15)
    {
      return result;
    }
  }

  v7 = result;
  free(v6);
  return v7;
}

void *anonymous namespace::RealFileSystem::printImpl(void *result, llvm::raw_ostream *this, uint64_t a3, int a4)
{
  v5 = result;
  if (a4)
  {
    v6 = a4;
    do
    {
      while (1)
      {
        v7 = *(this + 4);
        if (*(this + 3) - v7 > 1uLL)
        {
          break;
        }

        result = llvm::raw_ostream::write(this, "  ", 2uLL);
        if (!--v6)
        {
          goto LABEL_6;
        }
      }

      *v7 = 8224;
      *(this + 4) += 2;
      --v6;
    }

    while (v6);
  }

LABEL_6:
  v8 = *(this + 4);
  if (*(this + 3) - v8 > 0x14uLL)
  {
    qmemcpy(v8, "RealFileSystem using ", 21);
    *(this + 4) += 21;
    v9 = *(this + 4);
    v10 = *(this + 3) - v9;
    if (*(v5 + 328) != 1)
    {
LABEL_8:
      if (v10 > 6)
      {
        *(v9 + 3) = 1936942435;
        *v9 = 1668248176;
        *(this + 4) += 7;
        v11 = *(this + 4);
        if ((*(this + 3) - v11) <= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        result = llvm::raw_ostream::write(this, "process", 7uLL);
        v11 = *(this + 4);
        if ((*(this + 3) - v11) <= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_14:
      *(v11 + 4) = 10;
      *v11 = 1146569504;
      *(this + 4) += 5;
      return result;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(this, "RealFileSystem using ", 0x15uLL);
    v9 = *(this + 4);
    v10 = *(this + 3) - v9;
    if (*(v5 + 328) != 1)
    {
      goto LABEL_8;
    }
  }

  if (v10 > 2)
  {
    *(v9 + 2) = 110;
    *v9 = 30575;
    *(this + 4) += 3;
    v11 = *(this + 4);
    if ((*(this + 3) - v11) > 4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(this, "own", 3uLL);
    v11 = *(this + 4);
    if ((*(this + 3) - v11) > 4)
    {
      goto LABEL_14;
    }
  }

LABEL_18:

  return llvm::raw_ostream::write(this, " CWD\n", 5uLL);
}

uint64_t llvm::ErrorOr<anonymous namespace::RealFileSystem::WorkingDirectory>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  if ((*(a1 + 304) & 1) == 0)
  {
    v4 = *(a1 + 152);
    if (v4 != (a1 + 176))
    {
      free(v4);
    }

    if (*a1 != a1 + 24)
    {
      free(*a1);
    }
  }

  v5 = *(a1 + 304);
  if ((*(a2 + 304) & 1) == 0)
  {
    *(a1 + 304) = v5 & 0xFE;
    *a1 = a1 + 24;
    v8 = xmmword_1E0971D70;
    *(a1 + 8) = xmmword_1E0971D70;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<char>::operator=(a1, a2);
      v8 = xmmword_1E0971D70;
    }

    *(a1 + 152) = a1 + 176;
    *(a1 + 160) = v8;
    if (*(a2 + 160))
    {
      llvm::SmallVectorImpl<char>::operator=(a1 + 152, a2 + 152);
    }

    return a1;
  }

  *(a1 + 304) = v5 | 1;
  if (*(a2 + 304))
  {
    v6 = *(a2 + 8);
    *a1 = *a2;
  }

  else
  {
    v6 = std::system_category();
    *a1 = 0;
  }

  *(a1 + 8) = v6;
  return a1;
}

void anonymous namespace::RealFile::~RealFile(_anonymous_namespace_::RealFile *this, int *a2)
{
  *this = &unk_1F5B3F788;
  llvm::sys::fs::closeFile((this + 8), a2);
  *(this + 2) = -1;
  if ((*(this + 119) & 0x80000000) == 0)
  {
    if ((*(this + 39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(*(this + 2));
    return;
  }

  operator delete(*(this + 12));
  if (*(this + 39) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_1F5B3F788;
  llvm::sys::fs::closeFile((this + 8), a2);
  *(this + 2) = -1;
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
    if ((*(this + 39) & 0x80000000) == 0)
    {
LABEL_3:
      v3 = this;

      goto LABEL_5;
    }
  }

  else if ((*(this + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(this + 2));
  v3 = this;

LABEL_5:
  operator delete(v3);
}

void anonymous namespace::RealFile::status(_anonymous_namespace_::RealFile *this@<X0>, llvm::sys::fs::file_status *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = this + 16;
  if (!*(this + 20))
  {
    memset(&v24, 0, 44);
    *(&v24.st_atimespec.tv_nsec + 4) = 0xFFFFLL;
    WORD2(v24.st_mtimespec.tv_sec) = 0;
    v24.st_mtimespec.tv_nsec = 0;
    v6 = llvm::sys::fs::status(*(this + 2), &v24, a2);
    if (v6)
    {
      *(a3 + 80) |= 1u;
      *a3 = v6;
      *(a3 + 8) = v7;
      return;
    }

    v8 = *(this + 39);
    v9 = *(this + 2);
    if (v8 >= 0)
    {
      v9 = v5;
    }

    if (v8 < 0)
    {
      v8 = *(this + 3);
    }

    v18 = 261;
    v17[0] = v9;
    v17[1] = v8;
    UniqueID = llvm::sys::fs::file_status::getUniqueID(&v24);
    v12 = v11;
    LastModificationTime = llvm::sys::fs::basic_file_status::getLastModificationTime(&v24);
    tv_sec = v24.st_atimespec.tv_sec;
    tv_nsec = v24.st_atimespec.tv_nsec;
    v16 = *&v24.st_rdev;
    llvm::Twine::str(v17, &v19);
    *&v20 = UniqueID;
    *(&v20 + 1) = v12;
    *&v21 = LastModificationTime;
    *(&v21 + 1) = v16;
    *&v22 = tv_sec;
    *(&v22 + 1) = tv_nsec;
    v23 = 0;
    if (*(this + 39) < 0)
    {
      operator delete(*v5);
    }

    *v5 = v19;
    *(this + 40) = v20;
    *(this + 56) = v21;
    *(this + 72) = v22;
    *(this + 88) = v23;
    *(a3 + 80) &= ~1u;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    std::string::__init_copy_ctor_external(a3, *(this + 2), *(this + 3));
    goto LABEL_14;
  }

  *(a3 + 80) &= ~1u;
  if (*(this + 39) < 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  *a3 = *v5;
  *(a3 + 16) = *(v5 + 2);
LABEL_14:
  *(a3 + 24) = *(this + 40);
  *(a3 + 40) = *(this + 56);
  *(a3 + 56) = *(this + 72);
  *(a3 + 72) = *(this + 88);
}

double anonymous namespace::RealFile::getName@<D0>(_anonymous_namespace_::RealFile *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 119) < 0)
  {
    v3 = *(this + 13);
    if (v3)
    {
      std::string::__init_copy_ctor_external(&v13, *(this + 12), v3);
      goto LABEL_24;
    }

LABEL_6:
    v6 = *(this + 2);
    v4 = (this + 16);
    v5 = v6;
    v7 = *(v4 + 23);
    if (v7 >= 0)
    {
      v8 = v4;
    }

    else
    {
      v8 = v5;
    }

    if (v7 >= 0)
    {
      v9 = *(v4 + 23);
    }

    else
    {
      v9 = v4[1];
    }

    if (!v8)
    {
      memset(&v13, 0, sizeof(v13));
      goto LABEL_24;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    if (v9 >= 0x17)
    {
      if ((v9 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v9 | 7) + 1;
      }

      v10 = operator new(v11);
      v13.__r_.__value_.__l.__size_ = v9;
      v13.__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
      v13.__r_.__value_.__r.__words[0] = v10;
    }

    else
    {
      *(&v13.__r_.__value_.__s + 23) = v9;
      v10 = &v13;
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    memmove(v10, v8, v9);
LABEL_23:
    v10->__r_.__value_.__s.__data_[v9] = 0;
    goto LABEL_24;
  }

  if (!*(this + 119))
  {
    goto LABEL_6;
  }

  v13 = *(this + 4);
LABEL_24:
  a2[1].__r_.__value_.__s.__data_[0] &= ~1u;
  result = *&v13.__r_.__value_.__l.__data_;
  *a2 = v13;
  return result;
}

uint64_t anonymous namespace::RealFile::close(_anonymous_namespace_::RealFile *this, int *a2)
{
  result = llvm::sys::fs::closeFile((this + 8), a2);
  *(this + 2) = -1;
  return result;
}

void anonymous namespace::RealFile::setPath(_anonymous_namespace_::RealFile *this, const llvm::Twine *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  llvm::Twine::str(a2, &__p);
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  *(this + 4) = __p;
  (*(*this + 16))(&__p, this);
  v4 = v21;
  if ((v21 & 1) == 0)
  {
    v9 = v16;
    v5 = v17;
    v6 = v19;
    v7 = v20;
    v8 = v18;
    llvm::Twine::str(a2, &v10);
    v11 = v9;
    *&v12 = v5;
    *(&v12 + 1) = v8;
    *&v13 = v6;
    *(&v13 + 1) = v7;
    v14 = 0;
    if (*(this + 39) < 0)
    {
      operator delete(*(this + 2));
    }

    *(this + 16) = v10;
    *(this + 40) = v11;
    *(this + 56) = v12;
    *(this + 72) = v13;
    *(this + 88) = v14;
    v4 = v21;
  }

  if ((v4 & 1) == 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void std::__shared_ptr_emplace<anonymous namespace::RealFSDirIter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B3F7F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void anonymous namespace::RealFSDirIter::~RealFSDirIter(_anonymous_namespace_::RealFSDirIter *this)
{
  *this = &unk_1F5B3F840;
  v1 = *(this + 6);
  if (!v1 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    *this = &unk_1F5B3F628;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_6:
    operator delete(*(this + 1));
    return;
  }

  v2 = this;
  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  this = v2;
  *v2 = &unk_1F5B3F628;
  if (v2[31] < 0)
  {
    goto LABEL_6;
  }
}

{
  *this = &unk_1F5B3F840;
  v1 = *(this + 6);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
    *v2 = &unk_1F5B3F628;
    if ((v2[31] & 0x80000000) == 0)
    {
LABEL_4:

      goto LABEL_6;
    }
  }

  else
  {
    *this = &unk_1F5B3F628;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  v3 = this;
  operator delete(*(this + 1));
  this = v3;

LABEL_6:
  operator delete(this);
}

unint64_t anonymous namespace::RealFSDirIter::increment(_anonymous_namespace_::RealFSDirIter *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = llvm::sys::fs::detail::directory_iterator_increment(*(this + 5));
  v3 = *(this + 5);
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = *(v3 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(v3 + 16);
  }

  if (!v4)
  {
LABEL_16:
    v10 = 0;
    v8 = 0;
    v9 = 0;
    *(v17 + 7) = 0;
    v17[0] = 0;
    v7 = 9;
    if (*(this + 31) < 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    v14 = v17[0];
    *(this + 1) = v8;
    *(this + 2) = v14;
    *(this + 23) = *(v17 + 7);
    *(this + 31) = v9;
    *(this + 8) = v7;
    return v2;
  }

  if (v5 < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v3 + 8), *(v3 + 16));
    v3 = *(this + 5);
    v7 = *(v3 + 32);
    if (v7 != 9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *(v3 + 8);
    __p.__r_.__value_.__r.__words[2] = *(v3 + 24);
    *&__p.__r_.__value_.__l.__data_ = v6;
    v7 = *(v3 + 32);
    if (v7 != 9)
    {
      goto LABEL_10;
    }
  }

  llvm::sys::fs::directory_entry::status((v3 + 8), v17);
  if (v19)
  {
    v7 = 9;
  }

  else
  {
    v7 = v18;
  }

LABEL_10:
  v17[0] = __p.__r_.__value_.__l.__size_;
  v8 = __p.__r_.__value_.__r.__words[0];
  *(v17 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
  v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  memset(&__p, 0, sizeof(__p));
  v10 = 1;
  if ((*(this + 31) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  operator delete(*(this + 1));
  v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  v12 = v17[0];
  *(this + 1) = v8;
  *(this + 2) = v12;
  *(this + 23) = *(v17 + 7);
  *(this + 31) = v9;
  *(this + 8) = v7;
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == 1)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

llvm::sys::fs::directory_iterator *llvm::sys::fs::directory_iterator::directory_iterator(llvm::sys::fs::directory_iterator *this, void ***a2, std::error_code *a3, char a4)
{
  v4 = a4;
  v20[16] = *MEMORY[0x1E69E9840];
  *(this + 16) = a4;
  v8 = operator new(0x70uLL);
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = &unk_1F5B3F880;
  *(v8 + 7) = 0;
  *(v8 + 40) = 0u;
  *(v8 + 14) = 9;
  v8[60] = 1;
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 92) = 0u;
  *(v8 + 27) = 0xFFFF;
  *(v8 + 24) = 0u;
  v9 = (v8 + 24);
  *this = v8 + 24;
  *(this + 1) = v8;
  v10 = *(a2 + 33);
  v18 = v20;
  v19 = xmmword_1E0971D70;
  if (v10 != 1)
  {
LABEL_14:
    llvm::Twine::toVector(a2, &v18);
    v13 = v18;
    v14 = v19;
    v4 = *(this + 16);
    goto LABEL_15;
  }

  v11 = *(a2 + 32);
  if (v11 > 4)
  {
    if (v11 - 5 < 2)
    {
      v13 = *a2;
      v14 = a2[1];
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v11 == 1)
  {
    goto LABEL_20;
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v12 = *(*a2 + 23);
      if (v12 >= 0)
      {
        v13 = *a2;
      }

      else
      {
        v13 = **a2;
      }

      if (v12 >= 0)
      {
        v14 = *(*a2 + 23);
      }

      else
      {
        v14 = (*a2)[1];
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!*a2)
  {
LABEL_20:
    v14 = 0;
    v13 = 0;
  }

  else
  {
    v17 = strlen(*a2);
    v13 = *a2;
    v14 = v17;
  }

LABEL_15:
  *&a3->__val_ = llvm::sys::fs::detail::directory_iterator_construct(v9, v13, v14, v4 & 1);
  a3->__cat_ = v15;
  if (v18 != v20)
  {
    free(v18);
  }

  return this;
}

void std::__shared_ptr_emplace<llvm::sys::fs::detail::DirIterState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B3F880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<llvm::sys::fs::detail::DirIterState>::__on_zero_shared(uint64_t a1)
{
  llvm::sys::fs::detail::directory_iterator_destruct(a1 + 24);
  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

uint64_t llvm::FileError::build@<X0>(llvm::Twine *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v9 = *a4;
  *a4 = 0;
  v15 = &v16;
  v16 = 0;
  v17 = v9;
  llvm::handleErrors<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>(&v17, &v15, &v18);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v10 = operator new(0x38uLL);
  v11 = v16;
  v16 = 0;
  *(v10 + 1) = 0;
  v12 = (v10 + 8);
  *v10 = &unk_1F5B3F188;
  v10[40] = 0;
  *(v10 + 6) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  v10[32] = 0;
  llvm::Twine::str(a1, &v18);
  if (v10[31] < 0)
  {
    operator delete(*v12);
  }

  *v12 = *&v18.__r_.__value_.__l.__data_;
  *(v10 + 3) = *(&v18.__r_.__value_.__l + 2);
  v13 = *(v10 + 6);
  *(v10 + 6) = v11;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  *(v10 + 4) = a2;
  v10[40] = a3;
  *a5 = v10;
  result = v16;
  v16 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t llvm::handleErrors<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>@<X0>(uint64_t result@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v4 + 48))(v4, &llvm::ErrorList::ID))
    {
      v6 = v4[1];
      v7 = v4[2];
      if (v6 == v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        do
        {
          v12 = v8;
          v9 = *v6;
          *v6 = 0;
          if ((*(*v9 + 48))(v9, &llvm::ErrorInfoBase::ID))
          {
            v10 = **a2;
            **a2 = v9;
            if (v10)
            {
              (*(*v10 + 8))(v10);
            }

            v9 = 0;
          }

          v11 = v9;
          llvm::ErrorList::join(&v12, &v11, &v13);
          v8 = v13;
          v13 = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          if (v12)
          {
            (*(*v12 + 8))(v12);
          }

          ++v6;
        }

        while (v6 != v7);
      }

      *a3 = v8;
      return (*(*v4 + 8))(v4);
    }

    else
    {
      result = (*(*v4 + 48))(v4, &llvm::ErrorInfoBase::ID);
      if (result)
      {
        result = **a2;
        **a2 = v4;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        v4 = 0;
      }

      *a3 = v4;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void llvm::initWithColorOptions(llvm *this)
{
  if (!atomic_load_explicit(&UseColor, memory_order_acquire))
  {
  }
}

uint64_t DefaultAutoDetectFunction(const llvm::raw_ostream *a1)
{
  if (atomic_load_explicit(&UseColor, memory_order_acquire))
  {
    if (*(UseColor + 128))
    {
LABEL_3:
      if (!atomic_load_explicit(&UseColor, memory_order_acquire))
      {
      }

      return *(UseColor + 128) == 1;
    }
  }

  else
  {
    v2 = a1;
    a1 = v2;
    if (*(UseColor + 128))
    {
      goto LABEL_3;
    }
  }

  v3 = *(*a1 + 56);

  return v3();
}

void *llvm::WithColor::error(void *a1, const void *a2, size_t a3, char a4)
{
  if (!a3)
  {
LABEL_5:
    v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks;
    if (a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = a1[4];
  if (a3 <= a1[3] - v6)
  {
    memcpy(v6, a2, a3);
    v8 = (a1[4] + a3);
    a1[4] = v8;
    v7 = a1;
    if (a1[3] - v8 > 1uLL)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(a1, a2, a3);
    v8 = v7[4];
    if (v7[3] - v8 > 1uLL)
    {
LABEL_4:
      *v8 = 8250;
      v7[4] += 2;
      goto LABEL_5;
    }
  }

  llvm::raw_ostream::write(v7, ": ", 2uLL);
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks;
  if (a4)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((v9[392])(a1))
  {
    (*(*a1 + 24))(a1, 1, 1, 0);
  }

LABEL_11:
  v11 = a1[4];
  if (a1[3] - v11 > 6uLL)
  {
    *(v11 + 3) = 540701295;
    *v11 = 1869771365;
    a1[4] += 7;
    v12 = a1;
    if (a4)
    {
      return v12;
    }
  }

  else
  {
    v12 = llvm::raw_ostream::write(a1, "error: ", 7uLL);
    if (a4)
    {
      return v12;
    }
  }

  if (!(v9[392])(a1))
  {
    return v12;
  }

  (*(*a1 + 32))(a1);
  return v12;
}

void *llvm::WithColor::warning(void *a1, const void *a2, size_t a3, char a4)
{
  if (!a3)
  {
LABEL_5:
    v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks;
    if (a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = a1[4];
  if (a3 <= a1[3] - v6)
  {
    memcpy(v6, a2, a3);
    v8 = (a1[4] + a3);
    a1[4] = v8;
    v7 = a1;
    if (a1[3] - v8 > 1uLL)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(a1, a2, a3);
    v8 = v7[4];
    if (v7[3] - v8 > 1uLL)
    {
LABEL_4:
      *v8 = 8250;
      v7[4] += 2;
      goto LABEL_5;
    }
  }

  llvm::raw_ostream::write(v7, ": ", 2uLL);
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks;
  if (a4)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((v9[392])(a1))
  {
    (*(*a1 + 24))(a1, 5, 1, 0);
  }

LABEL_11:
  v11 = a1[4];
  if ((a1[3] - v11) > 8)
  {
    *(v11 + 8) = 32;
    *v11 = *"warning: ";
    a1[4] += 9;
    v12 = a1;
    if (a4)
    {
      return v12;
    }
  }

  else
  {
    v12 = llvm::raw_ostream::write(a1, "warning: ", 9uLL);
    if (a4)
    {
      return v12;
    }
  }

  if (!(v9[392])(a1))
  {
    return v12;
  }

  (*(*a1 + 32))(a1);
  return v12;
}

void *llvm::WithColor::note(void *a1, const void *a2, size_t a3, char a4)
{
  if (!a3)
  {
LABEL_5:
    v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks;
    if (a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = a1[4];
  if (a3 <= a1[3] - v6)
  {
    memcpy(v6, a2, a3);
    v8 = (a1[4] + a3);
    a1[4] = v8;
    v7 = a1;
    if (a1[3] - v8 > 1uLL)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(a1, a2, a3);
    v8 = v7[4];
    if (v7[3] - v8 > 1uLL)
    {
LABEL_4:
      *v8 = 8250;
      v7[4] += 2;
      goto LABEL_5;
    }
  }

  llvm::raw_ostream::write(v7, ": ", 2uLL);
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks;
  if (a4)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((v9[392])(a1))
  {
    (*(*a1 + 24))(a1, 0, 1, 0);
  }

LABEL_11:
  v11 = a1[4];
  if ((a1[3] - v11) > 5)
  {
    *(v11 + 4) = 8250;
    *v11 = 1702129518;
    a1[4] += 6;
    v12 = a1;
    if (a4)
    {
      return v12;
    }
  }

  else
  {
    v12 = llvm::raw_ostream::write(a1, "note: ", 6uLL);
    if (a4)
    {
      return v12;
    }
  }

  if (!(v9[392])(a1))
  {
    return v12;
  }

  (*(*a1 + 32))(a1);
  return v12;
}

void *llvm::WithColor::remark(void *a1, const void *a2, size_t a3, char a4)
{
  if (!a3)
  {
LABEL_5:
    v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks;
    if (a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = a1[4];
  if (a3 <= a1[3] - v6)
  {
    memcpy(v6, a2, a3);
    v8 = (a1[4] + a3);
    a1[4] = v8;
    v7 = a1;
    if (a1[3] - v8 > 1uLL)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(a1, a2, a3);
    v8 = v7[4];
    if (v7[3] - v8 > 1uLL)
    {
LABEL_4:
      *v8 = 8250;
      v7[4] += 2;
      goto LABEL_5;
    }
  }

  llvm::raw_ostream::write(v7, ": ", 2uLL);
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks;
  if (a4)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((v9[392])(a1))
  {
    (*(*a1 + 24))(a1, 4, 1, 0);
  }

LABEL_11:
  v11 = a1[4];
  if (a1[3] - v11 > 7uLL)
  {
    *v11 = 0x203A6B72616D6572;
    a1[4] += 8;
    v12 = a1;
    if (a4)
    {
      return v12;
    }
  }

  else
  {
    v12 = llvm::raw_ostream::write(a1, "remark: ", 8uLL);
    if (a4)
    {
      return v12;
    }
  }

  if (!(v9[392])(a1))
  {
    return v12;
  }

  (*(*a1 + 32))(a1);
  return v12;
}

void llvm::WithColor::~WithColor(llvm::WithColor *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    if (v2 != 1)
    {
      return;
    }
  }

  else if (!llvm::WithColor::AutoDetectFunction(*this))
  {
    return;
  }

  (*(**this + 32))();
}

uint64_t llvm::WithColor::changeColor(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    if (!llvm::WithColor::AutoDetectFunction(*a1))
    {
      return a1;
    }

    goto LABEL_3;
  }

  if (v2 == 1)
  {
LABEL_3:
    (*(**a1 + 24))();
  }

  return a1;
}

uint64_t anonymous namespace::CreateUseColor::call(_anonymous_namespace_::CreateUseColor *this)
{
  v1 = operator new(0xC0uLL);
  if ((atomic_load_explicit(&_MergedGlobals_58, memory_order_acquire) & 1) == 0)
  {
    v3 = v1;
    v1 = v3;
  }

  v7 = &qword_1EE17D128;
  *&v6 = "Use colors in output (default=autodetect)";
  *(&v6 + 1) = 41;
  v4 = 0;
  v5 = &v4;
  return llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::opt<char [6],llvm::cl::cat,llvm::cl::desc,llvm::cl::initializer<llvm::cl::BOOLOrDefault>>(v1, "color", &v7, &v6, &v5);
}

uint64_t llvm::object_deleter<llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>>::call(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::opt<char [6],llvm::cl::cat,llvm::cl::desc,llvm::cl::initializer<llvm::cl::BOOLOrDefault>>(uint64_t a1, const char *a2, llvm::cl::OptionCategory **a3, _OWORD *a4, int **a5)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v10 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v11 = a1 + 64;
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
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    v17 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v13 + 1, 8);
    GeneralCategory = v17;
    LODWORD(v13) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5B3E260;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5B3F8D0;
  *(a1 + 152) = &unk_1F5B3E380;
  *(a1 + 160) = &unk_1F5B3F980;
  *(a1 + 184) = a1 + 160;
  v14 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v14);
  llvm::cl::Option::addCategory(a1, *a3);
  *(a1 + 32) = *a4;
  v15 = **a5;
  *(a1 + 128) = v15;
  *(a1 + 148) = 1;
  *(a1 + 144) = v15;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v11 = 0;
  result = llvm::cl::parser<llvm::cl::BOOLOrDefault>::parse((a1 + 152), a1, a3, a4, a5, a6, &v11);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 128) = v11;
    *(a1 + 12) = a2;
    v10 = *(a1 + 184);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v11);
      return v9;
    }

    else
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::getValueExpectedFlagDefault();
    }
  }

  return result;
}

void *llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::~opt(void *a1)
{
  *a1 = &unk_1F5B3F8D0;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::~opt(char *__p)
{
  *__p = &unk_1F5B3F8D0;
  v2 = __p + 160;
  v3 = *(__p + 23);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
      goto LABEL_5;
    }
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

void llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 148) != 1 || *(a1 + 144) != *(a1 + 128))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(a1 + 128);
    v7 = *(a1 + 144);
    v8 = *(a1 + 148);
    v6 = &unk_1F5B3E260;
    llvm::cl::parser<llvm::cl::BOOLOrDefault>::printOptionDiff((a1 + 152), a1, v5, &v6, a2);
  }
}

uint64_t llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

void *std::__function::__func<llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::{lambda(llvm::cl::BOOLOrDefault const&)#1},std::allocator<llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::{lambda(llvm::cl::BOOLOrDefault const&)#1}>,void ()(llvm::cl::BOOLOrDefault const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B3F980;
  return result;
}

uint64_t std::__function::__func<llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::{lambda(llvm::cl::BOOLOrDefault const&)#1},std::allocator<llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::{lambda(llvm::cl::BOOLOrDefault const&)#1}>,void ()(llvm::cl::BOOLOrDefault const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E099E7AFLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E099E7AFLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E099E7AFLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E099E7AFLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void llvm::raw_ostream::~raw_ostream(llvm::raw_ostream *this)
{
  *this = &unk_1F5B3FA10;
  if (*(this + 11) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      operator delete[](v1);
    }
  }
}

void llvm::raw_ostream::SetBuffered(llvm::raw_ostream *this)
{
  v2 = (*(*this + 88))(this);
  v4 = (this + 16);
  v3 = *(this + 2);
  v5 = *(this + 4);
  if (v2)
  {
    v6 = v2;
    if (v5 != v3)
    {
      *(this + 4) = v3;
      (*(*this + 72))(this);
    }

    v7 = operator new[](v6);
    if (*(this + 11) == 1)
    {
      v8 = *v4;
      if (*v4)
      {
        v9 = v7;
        operator delete[](v8);
        v7 = v9;
      }
    }

    *(this + 2) = v7;
    *(this + 3) = &v7[v6];
    *(this + 4) = v7;
    *(this + 11) = 1;
  }

  else
  {
    if (v5 != v3)
    {
      *(this + 4) = v3;
      (*(*this + 72))(this);
    }

    if (*(this + 11) == 1 && *v4)
    {
      operator delete[](*v4);
    }

    *(this + 11) = 0;
    *(this + 3) = 0;
    *(this + 4) = 0;
    *v4 = 0;
  }
}

uint64_t llvm::raw_ostream::SetBufferAndMode(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 44) == 1)
  {
    v4 = *(result + 16);
    if (v4)
    {
      v5 = result;
      v6 = a4;
      v7 = a2;
      v8 = a3;
      operator delete[](v4);
      a3 = v8;
      a2 = v7;
      result = v5;
      a4 = v6;
    }
  }

  *(result + 16) = a2;
  *(result + 24) = a2 + a3;
  *(result + 32) = a2;
  *(result + 44) = a4;
  return result;
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *a1, unint64_t a2)
{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

void *llvm::raw_ostream::operator<<(void *a1, uint64_t a2)
{
  v16[16] = *MEMORY[0x1E69E9840];
  v4 = a1[3] - a1[4];
  if (v4 <= 3)
  {
    v7 = 127;
  }

  else
  {
    v5 = (*(*a2 + 8))(a2);
    if (v5 < v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 + 1;
    }

    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = (2 * v4);
    }

    if (v4 >= v7)
    {
      a1[4] += v7;
      return a1;
    }
  }

  v14 = v16;
  v15 = xmmword_1E0971D70;
  do
  {
    v12 = v15;
    if (v15 != v7)
    {
      if (v15 <= v7)
      {
        if (*(&v15 + 1) < v7)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v14, v16, v7, 1);
          v12 = v15;
        }

        if (v7 != v12)
        {
          bzero(&v14[v12], v7 - v12);
        }
      }

      *&v15 = v7;
    }

    v8 = (*(*a2 + 8))(a2, v14, v7);
    if (v8 < v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = (2 * v7);
    }

    v11 = v7 >= v10;
    v7 = v10;
  }

  while (!v11);
  llvm::raw_ostream::write(a1, v14, v10);
  if (v14 != v16)
  {
    free(v14);
  }

  return a1;
}

{
  v21[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 20) == 1)
  {
    if (*(a2 + 22))
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    if (*(a2 + 22))
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    if (*(a2 + 21))
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    llvm::write_hex(a1, *a2, v5, *(a2 + 16), 1);
  }

  else
  {
    v18 = &v19;
    v19 = v21;
    v20 = xmmword_1E0971D80;
    v12 = 2;
    v16 = 0;
    v17 = 0;
    v11 = &unk_1F5B3FBC0;
    __p = 0;
    v14 = 0;
    v15 = 0;
    llvm::write_integer(&v11, *(a2 + 8), 0, 0);
    v7 = *(a2 + 16);
    if (v20 < v7)
    {
      v8 = v7 - v20;
      if ((v7 - v20) >= 0x50)
      {
        do
        {
          if (v8 >= 0x4F)
          {
            v9 = 79;
          }

          else
          {
            v9 = v8;
          }

          llvm::raw_ostream::write(a1, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v9);
          v8 -= v9;
        }

        while (v8);
      }

      else
      {
        llvm::raw_ostream::write(a1, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, (v7 - v20));
      }
    }

    llvm::raw_ostream::write(a1, v19, v20);
    v11 = &unk_1F5B3FA10;
    if (v17 == 1 && __p)
    {
      operator delete[](__p);
    }

    if (v19 != v21)
    {
      free(v19);
    }
  }

  return a1;
}

uint64_t llvm::raw_ostream::write_escaped(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  if (a3)
  {
    v6 = a2;
    v7 = &a2[a3];
    do
    {
      v10 = *v6;
      if (*v6 > 0x21u)
      {
        if (v10 == 34)
        {
          while (1)
          {
            v43 = *(a1 + 32);
            if (v43 < *(a1 + 24))
            {
              goto LABEL_117;
            }

            v44 = *(a1 + 16);
            if (v44)
            {
              break;
            }

            if (!*(a1 + 44))
            {
              v48 = 92;
              (*(*a1 + 72))(a1, &v48, 1);
              v45 = *(a1 + 32);
              if (v45 >= *(a1 + 24))
              {
LABEL_118:
                while (1)
                {
                  v46 = *(a1 + 16);
                  if (v46)
                  {
                    break;
                  }

                  if (!*(a1 + 44))
                  {
                    v48 = 34;
                    goto LABEL_142;
                  }

                  llvm::raw_ostream::SetBuffered(a1);
                  v45 = *(a1 + 32);
                  if (v45 < *(a1 + 24))
                  {
                    goto LABEL_123;
                  }
                }

                *(a1 + 32) = v46;
                (*(*a1 + 72))(a1);
                v45 = *(a1 + 32);
              }

              goto LABEL_123;
            }

            llvm::raw_ostream::SetBuffered(a1);
          }

          *(a1 + 32) = v44;
          (*(*a1 + 72))(a1);
          v43 = *(a1 + 32);
LABEL_117:
          *(a1 + 32) = v43 + 1;
          *v43 = 92;
          v45 = *(a1 + 32);
          if (v45 >= *(a1 + 24))
          {
            goto LABEL_118;
          }

LABEL_123:
          *(a1 + 32) = v45 + 1;
          *v45 = 34;
          goto LABEL_9;
        }

        if (v10 == 92)
        {
          v13 = *(a1 + 32);
          if (v13 >= *(a1 + 24))
          {
            while (1)
            {
              v14 = *(a1 + 16);
              if (v14)
              {
                break;
              }

              if (!*(a1 + 44))
              {
                v48 = 92;
                (*(*a1 + 72))(a1, &v48, 1);
                while (1)
                {
LABEL_41:
                  v19 = *(a1 + 32);
                  if (v19 < *(a1 + 24))
                  {
                    goto LABEL_46;
                  }

                  v20 = *(a1 + 16);
                  if (v20)
                  {
                    break;
                  }

                  if (!*(a1 + 44))
                  {
                    v48 = 92;
                    goto LABEL_142;
                  }

                  llvm::raw_ostream::SetBuffered(a1);
                }

                *(a1 + 32) = v20;
                (*(*a1 + 72))(a1);
                v19 = *(a1 + 32);
LABEL_46:
                *(a1 + 32) = v19 + 1;
                *v19 = 92;
                goto LABEL_9;
              }

              llvm::raw_ostream::SetBuffered(a1);
              v13 = *(a1 + 32);
              if (v13 < *(a1 + 24))
              {
                goto LABEL_40;
              }
            }

            *(a1 + 32) = v14;
            (*(*a1 + 72))(a1);
            v13 = *(a1 + 32);
          }

LABEL_40:
          *(a1 + 32) = v13 + 1;
          *v13 = 92;
          goto LABEL_41;
        }

LABEL_25:
        v16 = *(a1 + 24);
        v15 = *(a1 + 32);
        if ((v10 - 32) <= 0x5E)
        {
          if (v15 >= v16)
          {
            while (1)
            {
              v17 = *(a1 + 16);
              if (v17)
              {
                break;
              }

              if (!*(a1 + 44))
              {
                v48 = v10;
                goto LABEL_142;
              }

              llvm::raw_ostream::SetBuffered(a1);
              v15 = *(a1 + 32);
              if (v15 < *(a1 + 24))
              {
                goto LABEL_53;
              }
            }

            *(a1 + 32) = v17;
            (*(*a1 + 72))(a1);
            v15 = *(a1 + 32);
          }

LABEL_53:
          *(a1 + 32) = v15 + 1;
          *v15 = v10;
          goto LABEL_9;
        }

        if (a4)
        {
          if (v15 >= v16)
          {
            while (1)
            {
              v18 = *(a1 + 16);
              if (v18)
              {
                break;
              }

              if (!*(a1 + 44))
              {
                v48 = 92;
                (*(*a1 + 72))(a1, &v48, 1);
                while (1)
                {
LABEL_56:
                  v22 = *(a1 + 32);
                  if (v22 < *(a1 + 24))
                  {
                    goto LABEL_67;
                  }

                  v23 = *(a1 + 16);
                  if (v23)
                  {
                    break;
                  }

                  if (!*(a1 + 44))
                  {
                    v48 = 120;
                    (*(*a1 + 72))(a1, &v48, 1);
                    goto LABEL_68;
                  }

                  llvm::raw_ostream::SetBuffered(a1);
                }

                *(a1 + 32) = v23;
                (*(*a1 + 72))(a1);
                v22 = *(a1 + 32);
LABEL_67:
                *(a1 + 32) = v22 + 1;
                *v22 = 120;
LABEL_68:
                v27 = llvm::hexdigit(unsigned int,BOOL)::LUT[v10 >> 4];
                v28 = *(a1 + 32);
                if (v28 >= *(a1 + 24))
                {
                  while (1)
                  {
                    v29 = *(a1 + 16);
                    if (v29)
                    {
                      break;
                    }

                    if (!*(a1 + 44))
                    {
                      v48 = v27;
                      (*(*a1 + 72))(a1, &v48, 1);
LABEL_81:
                      v33 = llvm::hexdigit(unsigned int,BOOL)::LUT[v10 & 0xF];
                      v34 = *(a1 + 32);
                      if (v34 >= *(a1 + 24))
                      {
                        while (1)
                        {
                          v35 = *(a1 + 16);
                          if (v35)
                          {
                            break;
                          }

                          if (!*(a1 + 44))
                          {
                            v48 = v33;
                            goto LABEL_142;
                          }

                          llvm::raw_ostream::SetBuffered(a1);
                          v34 = *(a1 + 32);
                          if (v34 < *(a1 + 24))
                          {
                            goto LABEL_93;
                          }
                        }

                        *(a1 + 32) = v35;
                        (*(*a1 + 72))(a1);
                        v34 = *(a1 + 32);
                      }

LABEL_93:
                      *(a1 + 32) = v34 + 1;
                      *v34 = v33;
                      goto LABEL_9;
                    }

                    llvm::raw_ostream::SetBuffered(a1);
                    v28 = *(a1 + 32);
                    if (v28 < *(a1 + 24))
                    {
                      goto LABEL_80;
                    }
                  }

                  *(a1 + 32) = v29;
                  (*(*a1 + 72))(a1);
                  v28 = *(a1 + 32);
                }

LABEL_80:
                *(a1 + 32) = v28 + 1;
                *v28 = v27;
                goto LABEL_81;
              }

              llvm::raw_ostream::SetBuffered(a1);
              v15 = *(a1 + 32);
              if (v15 < *(a1 + 24))
              {
                goto LABEL_55;
              }
            }

            *(a1 + 32) = v18;
            (*(*a1 + 72))(a1);
            v15 = *(a1 + 32);
          }

LABEL_55:
          *(a1 + 32) = v15 + 1;
          *v15 = 92;
          goto LABEL_56;
        }

        if (v15 >= v16)
        {
          while (1)
          {
            v21 = *(a1 + 16);
            if (v21)
            {
              break;
            }

            if (!*(a1 + 44))
            {
              v48 = 92;
              (*(*a1 + 72))(a1, &v48, 1);
              v24 = (v10 >> 6) | 0x30;
              v25 = *(a1 + 32);
              if (v25 >= *(a1 + 24))
              {
LABEL_62:
                while (1)
                {
                  v26 = *(a1 + 16);
                  if (v26)
                  {
                    break;
                  }

                  if (!*(a1 + 44))
                  {
                    v48 = v24;
                    (*(*a1 + 72))(a1, &v48, 1);
                    v30 = (v10 >> 3) & 7 | 0x30;
                    v31 = *(a1 + 32);
                    if (v31 >= *(a1 + 24))
                    {
LABEL_75:
                      while (1)
                      {
                        v32 = *(a1 + 16);
                        if (v32)
                        {
                          break;
                        }

                        if (!*(a1 + 44))
                        {
                          v48 = v30;
                          (*(*a1 + 72))(a1, &v48, 1);
                          v36 = v10 & 7 | 0x30;
                          v37 = *(a1 + 32);
                          if (v37 >= *(a1 + 24))
                          {
LABEL_88:
                            while (1)
                            {
                              v38 = *(a1 + 16);
                              if (v38)
                              {
                                break;
                              }

                              if (!*(a1 + 44))
                              {
                                v48 = v36;
                                goto LABEL_142;
                              }

                              llvm::raw_ostream::SetBuffered(a1);
                              v37 = *(a1 + 32);
                              if (v37 < *(a1 + 24))
                              {
                                goto LABEL_95;
                              }
                            }

                            *(a1 + 32) = v38;
                            (*(*a1 + 72))(a1);
                            v37 = *(a1 + 32);
                          }

LABEL_95:
                          *(a1 + 32) = v37 + 1;
                          *v37 = v36;
                          goto LABEL_9;
                        }

                        llvm::raw_ostream::SetBuffered(a1);
                        v31 = *(a1 + 32);
                        if (v31 < *(a1 + 24))
                        {
                          goto LABEL_87;
                        }
                      }

                      *(a1 + 32) = v32;
                      (*(*a1 + 72))(a1);
                      v31 = *(a1 + 32);
                    }

LABEL_87:
                    *(a1 + 32) = v31 + 1;
                    *v31 = v30;
                    v36 = v10 & 7 | 0x30;
                    v37 = *(a1 + 32);
                    if (v37 >= *(a1 + 24))
                    {
                      goto LABEL_88;
                    }

                    goto LABEL_95;
                  }

                  llvm::raw_ostream::SetBuffered(a1);
                  v25 = *(a1 + 32);
                  if (v25 < *(a1 + 24))
                  {
                    goto LABEL_74;
                  }
                }

                *(a1 + 32) = v26;
                (*(*a1 + 72))(a1);
                v25 = *(a1 + 32);
              }

LABEL_74:
              *(a1 + 32) = v25 + 1;
              *v25 = v24;
              v30 = (v10 >> 3) & 7 | 0x30;
              v31 = *(a1 + 32);
              if (v31 >= *(a1 + 24))
              {
                goto LABEL_75;
              }

              goto LABEL_87;
            }

            llvm::raw_ostream::SetBuffered(a1);
            v15 = *(a1 + 32);
            if (v15 < *(a1 + 24))
            {
              goto LABEL_61;
            }
          }

          *(a1 + 32) = v21;
          (*(*a1 + 72))(a1);
          v15 = *(a1 + 32);
        }

LABEL_61:
        *(a1 + 32) = v15 + 1;
        *v15 = 92;
        v24 = (v10 >> 6) | 0x30;
        v25 = *(a1 + 32);
        if (v25 >= *(a1 + 24))
        {
          goto LABEL_62;
        }

        goto LABEL_74;
      }

      if (v10 == 9)
      {
        while (1)
        {
          v39 = *(a1 + 32);
          if (v39 < *(a1 + 24))
          {
            goto LABEL_103;
          }

          v40 = *(a1 + 16);
          if (v40)
          {
            break;
          }

          if (!*(a1 + 44))
          {
            v48 = 92;
            (*(*a1 + 72))(a1, &v48, 1);
            v41 = *(a1 + 32);
            if (v41 >= *(a1 + 24))
            {
LABEL_104:
              while (1)
              {
                v42 = *(a1 + 16);
                if (v42)
                {
                  break;
                }

                if (!*(a1 + 44))
                {
                  v48 = 116;
                  goto LABEL_142;
                }

                llvm::raw_ostream::SetBuffered(a1);
                v41 = *(a1 + 32);
                if (v41 < *(a1 + 24))
                {
                  goto LABEL_109;
                }
              }

              *(a1 + 32) = v42;
              (*(*a1 + 72))(a1);
              v41 = *(a1 + 32);
            }

            goto LABEL_109;
          }

          llvm::raw_ostream::SetBuffered(a1);
        }

        *(a1 + 32) = v40;
        (*(*a1 + 72))(a1);
        v39 = *(a1 + 32);
LABEL_103:
        *(a1 + 32) = v39 + 1;
        *v39 = 92;
        v41 = *(a1 + 32);
        if (v41 >= *(a1 + 24))
        {
          goto LABEL_104;
        }

LABEL_109:
        *(a1 + 32) = v41 + 1;
        *v41 = 116;
        goto LABEL_9;
      }

      if (v10 != 10)
      {
        goto LABEL_25;
      }

      v11 = *(a1 + 32);
      if (v11 < *(a1 + 24))
      {
        goto LABEL_38;
      }

      while (1)
      {
        v12 = *(a1 + 16);
        if (v12)
        {
          *(a1 + 32) = v12;
          (*(*a1 + 72))(a1);
          v11 = *(a1 + 32);
LABEL_38:
          *(a1 + 32) = v11 + 1;
          *v11 = 92;
          goto LABEL_3;
        }

        if (!*(a1 + 44))
        {
          break;
        }

        llvm::raw_ostream::SetBuffered(a1);
        v11 = *(a1 + 32);
        if (v11 < *(a1 + 24))
        {
          goto LABEL_38;
        }
      }

      v48 = 92;
      (*(*a1 + 72))(a1, &v48, 1);
      while (1)
      {
LABEL_3:
        v8 = *(a1 + 32);
        if (v8 < *(a1 + 24))
        {
          goto LABEL_8;
        }

        v9 = *(a1 + 16);
        if (v9)
        {
          *(a1 + 32) = v9;
          (*(*a1 + 72))(a1);
          v8 = *(a1 + 32);
LABEL_8:
          *(a1 + 32) = v8 + 1;
          *v8 = 110;
          goto LABEL_9;
        }

        if (!*(a1 + 44))
        {
          break;
        }

        llvm::raw_ostream::SetBuffered(a1);
      }

      v48 = 110;
LABEL_142:
      (*(*a1 + 72))(a1, &v48, 1);
LABEL_9:
      ++v6;
    }

    while (v6 != v7);
  }

  return a1;
}

llvm::raw_ostream *llvm::raw_ostream::write(llvm::raw_ostream *this, char a2)
{
  v2 = *(this + 4);
  if (v2 < *(this + 3))
  {
LABEL_2:
    *(this + 4) = v2 + 1;
    *v2 = a2;
    return this;
  }

  v3 = a2;
  v4 = *(this + 2);
  if (v4)
  {
LABEL_4:
    *(this + 4) = v4;
    v5 = this;
    (*(*this + 72))();
    this = v5;
    v2 = *(v5 + 4);
LABEL_5:
    a2 = v3;
    goto LABEL_2;
  }

  while (1)
  {
    v6 = this;
    if (!*(this + 11))
    {
      break;
    }

    llvm::raw_ostream::SetBuffered(this);
    v2 = *(v6 + 4);
    if (v2 < *(v6 + 3))
    {
      this = v6;
      goto LABEL_5;
    }

    this = v6;
    v4 = *(v6 + 2);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v7 = v3;
  (*(*this + 72))(this, &v7, 1);
  return v6;
}

void *llvm::raw_ostream::write(void *this, const char *a2, size_t a3)
{
  v3 = this[4];
  v4 = this[3] - v3;
  if (v4 < a3)
  {
    while (1)
    {
      v6 = this[2];
      if (!v6)
      {
        break;
      }

LABEL_16:
      v11 = a3;
      if (v3 == v6)
      {
        v4 *= a3 / v4;
        v7 = a3 - v4;
        v8 = this;
        v9 = a2;
        (*(*this + 72))();
        v3 = v8[4];
        this = v8;
        v10 = v8[3] - v3;
        a3 = v7;
        if (v7 <= v10)
        {
          llvm::raw_ostream::copy_to_buffer(v8, &v9[v4], v7);
          return v8;
        }
      }

      else
      {
        v12 = this;
        v9 = a2;
        llvm::raw_ostream::copy_to_buffer(this, a2, v4);
        v12[4] = v12[2];
        (*(*v12 + 72))(v12);
        this = v12;
        a3 = v11 - v4;
        v3 = v12[4];
        v10 = v12[3] - v3;
      }

      a2 = &v9[v4];
      v4 = v10;
      if (v10 >= a3)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v15 = a2;
      v16 = a3;
      v5 = this;
      if (!*(this + 11))
      {
        (*(*this + 72))(this, a2, a3);
        return v5;
      }

      llvm::raw_ostream::SetBuffered(this);
      v3 = v5[4];
      v4 = v5[3] - v3;
      if (v4 >= v16)
      {
        break;
      }

      this = v5;
      v6 = v5[2];
      a2 = v15;
      a3 = v16;
      if (v6)
      {
        goto LABEL_16;
      }
    }

    this = v5;
    a2 = v15;
    a3 = v16;
    if (v16 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_2:
    if (a3 > 1)
    {
LABEL_3:
      switch(a3)
      {
        case 2uLL:
LABEL_8:
          v3[1] = a2[1];
          v3 = this[4];
LABEL_23:
          *v3 = *a2;
          goto LABEL_24;
        case 3uLL:
LABEL_7:
          v3[2] = a2[2];
          v3 = this[4];
          goto LABEL_8;
        case 4uLL:
          v3[3] = a2[3];
          v3 = this[4];
          goto LABEL_7;
      }

LABEL_25:
      v13 = this;
      v14 = a3;
      memcpy(v3, a2, a3);
      a3 = v14;
      this = v13;
      goto LABEL_24;
    }
  }

  if (a3)
  {
    if (a3 == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_24:
  this[4] += a3;
  return this;
}

uint64_t llvm::raw_ostream::copy_to_buffer(uint64_t this, const char *a2, int64_t a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
LABEL_11:
      *(this + 32) += a3;
      return this;
    }

    if (a3 == 1)
    {
LABEL_10:
      **(this + 32) = *a2;
      goto LABEL_11;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
LABEL_7:
        *(*(this + 32) + 1) = a2[1];
        goto LABEL_10;
      case 3:
LABEL_6:
        *(*(this + 32) + 2) = a2[2];
        goto LABEL_7;
      case 4:
        *(*(this + 32) + 3) = a2[3];
        goto LABEL_6;
    }
  }

  v3 = this;
  memcpy(*(this + 32), a2, a3);
  this = v3;
  *(v3 + 32) += a3;
  return this;
}

void llvm::formatv_object_base::format(llvm::formatv_object_base *this, llvm::raw_ostream *a2)
{
  v17[14] = *MEMORY[0x1E69E9840];
  llvm::formatv_object_base::parseFormatString(*this, *(this + 1), &v15);
  v4 = v15;
  if (v16)
  {
    v5 = 56 * v16;
    v6 = (v15 + 24);
    do
    {
      if (*(v6 - 6) == 1 || (v7 = *v6, *(this + 3) <= v7))
      {
        v9 = *(v6 - 2);
        v10 = *(v6 - 1);
        v11 = *(a2 + 4);
        if (v10 > *(a2 + 3) - v11)
        {
          llvm::raw_ostream::write(a2, v9, v10);
        }

        else if (v10)
        {
          v12 = *(v6 - 1);
          memcpy(v11, v9, v10);
          *(a2 + 4) += v12;
        }
      }

      else
      {
        v8 = *(v6 + 12);
        v13[0] = *(*(this + 2) + 8 * v7);
        v13[1] = vrev64_s32(*(v6 + 1));
        v14 = v8;
        llvm::FmtAlign::format(v13, a2);
      }

      v6 += 14;
      v5 -= 56;
    }

    while (v5);
    v4 = v15;
  }

  if (v4 != v17)
  {
    free(v4);
  }
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *this, uint64_t a2)
{
  v4 = *(a2 + 16) - *(a2 + 8);
  if (v4 < 1)
  {
    LODWORD(v4) = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v5 = *(a2 + 20);
  if (v5 == 3)
  {
    v6 = v4 - (v4 >> 1);
    v4 = v4 >> 1;
    if (v4 < 0x50)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v5 != 2)
    {
      if (v5 == 1)
      {
        v6 = *(a2 + 16) - *(a2 + 8);
      }

      else
      {
        v6 = 0;
      }

      LODWORD(v4) = 0;
      goto LABEL_10;
    }

    v6 = 0;
    if (v4 < 0x50)
    {
LABEL_10:
      llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v4);
      goto LABEL_11;
    }
  }

  do
  {
    if (v4 >= 0x4F)
    {
      v13 = 79;
    }

    else
    {
      v13 = v4;
    }

    llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v13);
    LODWORD(v4) = v4 - v13;
  }

  while (v4);
LABEL_11:
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(this + 4);
  if (v8 <= *(this + 3) - v9)
  {
    if (v8)
    {
      v10 = *(a2 + 8);
      memcpy(v9, v7, v8);
      *(this + 4) += v10;
    }
  }

  else
  {
    llvm::raw_ostream::write(this, v7, v8);
  }

  if (v6 >= 0x50)
  {
    do
    {
      if (v6 >= 0x4F)
      {
        v11 = 79;
      }

      else
      {
        v11 = v6;
      }

      llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v11);
      v6 -= v11;
    }

    while (v6);
  }

  else
  {
    llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v6);
  }

  return this;
}

void *llvm::raw_ostream::indent(void *this, unsigned int a2)
{
  v2 = a2;
  if (a2 < 0x50)
  {
    return llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, a2);
  }

  do
  {
    if (v2 >= 0x4F)
    {
      v3 = 79;
    }

    else
    {
      v3 = v2;
    }

    this = llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v3);
    v2 -= v3;
  }

  while (v2);
  return this;
}

void llvm::raw_svector_ostream::~raw_svector_ostream(llvm::raw_svector_ostream *this)
{
  *this = &unk_1F5B3FA10;
  if (*(this + 11) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      operator delete[](v1);
    }
  }
}

{
  *this = &unk_1F5B3FA10;
  if (*(this + 11) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      v3 = this;
      operator delete[](v2);
      this = v3;
    }
  }

  operator delete(this);
}

void *llvm::raw_ostream::changeColor(void *a1, int a2, int a3, llvm::sys::Process *a4)
{
  if (*(a1 + 40) == 1 && (!getEnumTag for MPSGraphDelegateKernelError() || (*(*a1 + 48))(a1)))
  {
    if (getEnumTag for MPSGraphDelegateKernelError())
    {
      v8 = a1[2];
      if (a1[4] != v8)
      {
        a1[4] = v8;
        (*(*a1 + 72))(a1);
      }
    }

    if (a2 == 16)
    {
      v9 = llvm::sys::Process::OutputBold(a4);
      if (!v9)
      {
        return a1;
      }

      goto LABEL_11;
    }

    v9 = llvm::sys::Process::OutputColor(a2, a3, a4);
    if (v9)
    {
LABEL_11:
      v10 = v9;
      v11 = strlen(v9);
      llvm::raw_ostream::write(a1, v10, v11);
    }
  }

  return a1;
}

llvm::raw_ostream *llvm::raw_ostream::resetColor(llvm::raw_ostream *this)
{
  if (*(this + 40) == 1 && (!getEnumTag for MPSGraphDelegateKernelError() || (*(*this + 48))(this)))
  {
    Enum = getEnumTag for MPSGraphDelegateKernelError();
    if (Enum)
    {
      v3 = *(this + 2);
      if (*(this + 4) != v3)
      {
        *(this + 4) = v3;
        Enum = (*(*this + 72))(this);
      }
    }

    v4 = llvm::sys::Process::ResetColor(Enum);
    if (v4)
    {
      v5 = v4;
      v6 = strlen(v4);
      llvm::raw_ostream::write(this, v5, v6);
    }
  }

  return this;
}

llvm::raw_ostream *llvm::raw_ostream::reverseColor(llvm::raw_ostream *this)
{
  if (*(this + 40) == 1 && (!getEnumTag for MPSGraphDelegateKernelError() || (*(*this + 48))(this)))
  {
    Enum = getEnumTag for MPSGraphDelegateKernelError();
    if (Enum)
    {
      v3 = *(this + 2);
      if (*(this + 4) != v3)
      {
        *(this + 4) = v3;
        Enum = (*(*this + 72))(this);
      }
    }

    v4 = llvm::sys::Process::OutputReverse(Enum);
    if (v4)
    {
      v5 = v4;
      v6 = strlen(v4);
      llvm::raw_ostream::write(this, v5, v6);
    }
  }

  return this;
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 1 && *a2 == 45)
  {
    v6 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v6;
    llvm::sys::ChangeStdinMode();
    v7 = 1;
  }

  else
  {
    v13 = 0;
    v12 = 261;
    v11[0] = a2;
    v11[1] = a3;
    v8 = llvm::sys::fs::openFile(v11, &v13, 0, 2, 0, 438);
    *a4 = v8;
    *(a4 + 8) = v9;
    if (v8)
    {
      v7 = -1;
    }

    else
    {
      v7 = v13;
    }
  }

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, v7, 1, 0, 0);
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5, char a6, int a7)
{
  FD = getFD(a2, a3, a4, a5, a6, a7);

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, FD, 1, 0, 0);
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a3 == 1 && *a2 == 45)
  {
    v7 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v7;
    llvm::sys::ChangeStdinMode();
    v8 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 261;
    v12[0] = a2;
    v12[1] = a3;
    v9 = llvm::sys::fs::openFile(v12, &v14, 0, 2, a5, 438);
    *a4 = v9;
    *(a4 + 8) = v10;
    if (v9)
    {
      v8 = -1;
    }

    else
    {
      v8 = v14;
    }
  }

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, v8, 1, 0, 0);
}

uint64_t getFD(_BYTE *a1, uint64_t a2, uint64_t a3, int a4, char a5, int a6)
{
  if (a2 == 1 && *a1 == 45)
  {
    v7 = std::system_category();
    *a3 = 0;
    *(a3 + 8) = v7;
    llvm::sys::ChangeStdinMode();
    return 1;
  }

  else
  {
    v15 = 0;
    v14 = 261;
    v13[0] = a1;
    v13[1] = a2;
    if (a5)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = llvm::sys::fs::openFile(v13, &v15, a4, v10, a6, 438);
    *a3 = v11;
    *(a3 + 8) = v12;
    if (v11)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v15;
    }
  }
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, unsigned int a2, char a3, int a4, int a5)
{
  *(a1 + 8) = a5;
  *(a1 + 40) = 0;
  *(a1 + 44) = a4 ^ 1;
  *(a1 + 48) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5B3FA88;
  *(a1 + 52) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = std::system_category();
  *(a1 + 53) = 0;
  *(a1 + 80) = v7;
  *(a1 + 88) = 0;
  if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 52) = 0;
    return a1;
  }

  else
  {
    *(a1 + 40) = 1;
    if (a2 <= 2)
    {
      *(a1 + 52) = 0;
    }

    v8 = lseek(a2, 0, 1);
    memset(v13, 0, sizeof(v13));
    v14 = 0xFFFFLL;
    v15 = 0;
    v16 = 0;
    v10 = llvm::sys::fs::status(*(a1 + 48), v13, v9);
    *(a1 + 54) = *&v13[40] == 2;
    *(a1 + 53) = v10 == 0 && v8 != -1;
    if (v10 == 0 && v8 != -1)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 88) = v11;
    return a1;
  }
}

void llvm::raw_fd_ostream::~raw_fd_ostream(llvm::raw_fd_ostream *this)
{
  *this = &unk_1F5B3FA88;
  if ((*(this + 12) & 0x80000000) == 0)
  {
    v2 = *(this + 4);
    v3 = *(this + 2);
    if (v2 != v3)
    {
      *(this + 4) = v3;
      llvm::raw_fd_ostream::write_impl(this, v3, v2 - v3);
    }

    if (*(this + 52) == 1)
    {
      v4 = llvm::sys::Process::SafelyCloseFileDescriptor(*(this + 12));
      if (v4)
      {
        *(this + 9) = v4;
        *(this + 10) = v5;
      }
    }
  }

  if (*(this + 18))
  {
    v11 = "IO failure on output stream: ";
    v12 = 259;
    v7 = *(this + 72);
    std::error_code::message(&v8, &v7);
    v10 = 260;
    v9 = &v8;
    llvm::operator+(&v11, &v9, v13);
    llvm::report_fatal_error(v13, 0);
  }

  *this = &unk_1F5B3FA10;
  if (*(this + 11) == 1)
  {
    v6 = *(this + 2);
    if (v6)
    {
      operator delete[](v6);
    }
  }
}

{
  llvm::raw_fd_ostream::~raw_fd_ostream(this);

  operator delete(v1);
}

uint64_t llvm::raw_fd_ostream::write_impl(llvm::raw_fd_ostream *this, const char *__buf, unint64_t a3)
{
  v6 = *(this + 8);
  if (v6)
  {
    v7 = v6[2];
    if (v6[4] != v7)
    {
      v6[4] = v7;
      (*(*v6 + 72))(v6);
    }
  }

  *(this + 11) += a3;
  while (1)
  {
    v8 = a3 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : a3;
    result = write(*(this + 12), __buf, v8);
    if (result < 0)
    {
      break;
    }

    __buf += result;
    a3 -= result;
LABEL_6:
    if (!a3)
    {
      return result;
    }
  }

  result = __error();
  if (*result == 4)
  {
    goto LABEL_6;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_6;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_6;
  }

  v10 = *__error();
  result = std::generic_category();
  *(this + 9) = v10;
  *(this + 10) = result;
  return result;
}

uint64_t llvm::raw_fd_ostream::close(llvm::raw_fd_ostream *this)
{
  *(this + 52) = 0;
  v2 = *(this + 2);
  if (*(this + 4) != v2)
  {
    *(this + 4) = v2;
    (*(*this + 72))(this);
  }

  result = llvm::sys::Process::SafelyCloseFileDescriptor(*(this + 12));
  if (result)
  {
    *(this + 9) = result;
    *(this + 10) = v4;
  }

  *(this + 12) = -1;
  return result;
}

uint64_t llvm::raw_fd_ostream::pwrite_impl(llvm::raw_fd_ostream *this, const char *a2, size_t a3, off_t a4)
{
  v8 = (*(*this + 80))(this);
  v9 = *(this + 4);
  v10 = *(this + 2);
  v11 = v8 + v9;
  if (v9 != v10)
  {
    *(this + 4) = v10;
    (*(*this + 72))(this, v10, v9 - v10);
  }

  v12 = v11 - v10;
  v13 = lseek(*(this + 12), a4, 0);
  *(this + 11) = v13;
  if (v13 == -1)
  {
    v14 = *__error();
    v15 = std::generic_category();
    *(this + 9) = v14;
    *(this + 10) = v15;
  }

  llvm::raw_ostream::write(this, a2, a3);
  v16 = *(this + 2);
  if (*(this + 4) != v16)
  {
    *(this + 4) = v16;
    (*(*this + 72))(this);
  }

  result = lseek(*(this + 12), v12, 0);
  *(this + 11) = result;
  if (result == -1)
  {
    v18 = *__error();
    result = std::generic_category();
    *(this + 9) = v18;
    *(this + 10) = result;
  }

  return result;
}

uint64_t llvm::raw_fd_ostream::preferred_buffer_size(llvm::raw_fd_ostream *this)
{
  if (fstat(*(this + 12), &v3))
  {
    return 0;
  }

  if (v3.st_mode & 0xF000) == 0x2000 && ((*(*this + 48))(this))
  {
    return 0;
  }

  return v3.st_blksize;
}

uint64_t llvm::raw_fd_ostream::has_colors(llvm::raw_fd_ostream *this)
{
  if (*(this + 56) == 1)
  {
    return *(this + 55) & 1;
  }

  HasColors = llvm::sys::Process::FileDescriptorHasColors(*(this + 12));
  *(this + 55) = HasColors | 0x100;
  return HasColors & 1;
}

void *llvm::outs(llvm *this)
{
  std::system_category();
  if ((atomic_load_explicit(&_MergedGlobals_59, memory_order_acquire) & 1) == 0)
  {
    llvm::outs();
  }

  return &unk_1EE17D190;
}

void *llvm::errs(llvm *this)
{
  if ((atomic_load_explicit(qword_1EE17D150, memory_order_acquire) & 1) == 0)
  {
    llvm::errs();
  }

  return &unk_1EE17D1F0;
}

void llvm::raw_null_ostream::~raw_null_ostream(llvm::raw_null_ostream *this)
{
  *this = &unk_1F5B3FA10;
  if (*(this + 11) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      operator delete[](v1);
    }
  }
}

{
  *this = &unk_1F5B3FA10;
  if (*(this + 11) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      v3 = this;
      operator delete[](v2);
      this = v3;
    }
  }

  operator delete(this);
}

void llvm::raw_svector_ostream::write_impl(llvm::raw_svector_ostream *this, const char *a2, size_t __n)
{
  v4 = *(this + 6);
  v5 = v4[1];
  v6 = v5 + __n;
  if (v4[2] < v6)
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(*(this + 6), v4 + 3, v6, 1);
    a2 = v7;
    v5 = v4[1];
  }

  if (__n)
  {
    memcpy((*v4 + v5), a2, __n);
    v5 = v4[1];
  }

  v4[1] = v5 + __n;
}

void llvm::raw_string_ostream::~raw_string_ostream(llvm::raw_string_ostream *this)
{
  *this = &unk_1F5B3FA10;
  if (*(this + 11) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      v3 = this;
      operator delete[](v2);
      this = v3;
    }
  }

  operator delete(this);
}

void llvm::raw_string_ostream::reserveExtraSpace(llvm::raw_string_ostream *this, uint64_t a2)
{
  v2 = *(this + 6);
  v3 = (*(*this + 80))(this) + a2 + *(this + 4) - *(this + 2);

  std::string::reserve(v2, v3);
}

uint64_t llvm::raw_string_ostream::current_pos(llvm::raw_string_ostream *this)
{
  v1 = *(this + 6);
  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

void llvm::raw_svector_ostream::reserveExtraSpace(llvm::raw_svector_ostream *this, uint64_t a2)
{
  v2 = *(this + 6);
  v3 = (*(*this + 80))(this) + a2 + *(this + 4) - *(this + 2);
  if (*(v2 + 16) < v3)
  {

    llvm::SmallVectorBase<unsigned long long>::grow_pod(v2, (v2 + 24), v3, 1);
  }
}

void llvm::FmtAlign::format(void *a1, uint64_t a2)
{
  v39[8] = *MEMORY[0x1E69E9840];
  if (*(a1 + 3))
  {
    v37 = v39;
    *v38 = xmmword_1E0970870;
    v29 = 2;
    v33 = 0;
    v35 = &v37;
    v34 = 0;
    v28 = &unk_1F5B3FBC0;
    __p = 0;
    v31 = 0;
    v32 = 0;
    (*(**a1 + 24))(*a1, &v28);
    v4 = *(a1 + 3);
    v5 = v38[0];
    if (v38[0] < v4)
    {
      v6 = v4 - LODWORD(v38[0]);
      v7 = *(a1 + 2);
      if (v7 == 1)
      {
        v13 = v6 >> 1;
        v14 = v38[0];
        if (v6 >= 2)
        {
          v15 = 0;
          do
          {
            while (1)
            {
              v16 = *(a1 + 16);
              v17 = *(a2 + 32);
              if (v17 >= *(a2 + 24))
              {
                break;
              }

LABEL_28:
              *(a2 + 32) = v17 + 1;
              *v17 = v16;
              if (++v15 == v13)
              {
                goto LABEL_31;
              }
            }

            while (1)
            {
              v18 = *(a2 + 16);
              if (v18)
              {
                *(a2 + 32) = v18;
                (*(*a2 + 72))(a2);
                v17 = *(a2 + 32);
                goto LABEL_28;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v17 = *(a2 + 32);
              if (v17 < *(a2 + 24))
              {
                goto LABEL_28;
              }
            }

            v36 = v16;
            (*(*a2 + 72))(a2, &v36, 1);
            ++v15;
          }

          while (v15 != v13);
LABEL_31:
          v14 = v38[0];
        }

        llvm::raw_ostream::write(a2, v37, v14);
        if (v4 != v5)
        {
          v19 = 0;
          v20 = v6 - v13;
          do
          {
            while (1)
            {
              v21 = *(a1 + 16);
              v22 = *(a2 + 32);
              if (v22 >= *(a2 + 24))
              {
                break;
              }

LABEL_40:
              *(a2 + 32) = v22 + 1;
              *v22 = v21;
              if (++v19 == v20)
              {
                goto LABEL_57;
              }
            }

            while (1)
            {
              v23 = *(a2 + 16);
              if (v23)
              {
                *(a2 + 32) = v23;
                (*(*a2 + 72))(a2);
                v22 = *(a2 + 32);
                goto LABEL_40;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v22 = *(a2 + 32);
              if (v22 < *(a2 + 24))
              {
                goto LABEL_40;
              }
            }

            v36 = v21;
            (*(*a2 + 72))(a2, &v36, 1);
            ++v19;
          }

          while (v19 != v20);
        }

        goto LABEL_57;
      }

      if (!v7)
      {
        llvm::raw_ostream::write(a2, v37, v38[0]);
        if (v4 != v5)
        {
          v8 = 0;
          do
          {
            while (1)
            {
              v9 = *(a1 + 16);
              v10 = *(a2 + 32);
              if (v10 >= *(a2 + 24))
              {
                break;
              }

LABEL_13:
              *(a2 + 32) = v10 + 1;
              *v10 = v9;
              if (++v8 == v6)
              {
                goto LABEL_57;
              }
            }

            while (1)
            {
              v11 = *(a2 + 16);
              if (v11)
              {
                *(a2 + 32) = v11;
                (*(*a2 + 72))(a2);
                v10 = *(a2 + 32);
                goto LABEL_13;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v10 = *(a2 + 32);
              if (v10 < *(a2 + 24))
              {
                goto LABEL_13;
              }
            }

            v36 = v9;
            (*(*a2 + 72))(a2, &v36, 1);
            ++v8;
          }

          while (v8 != v6);
        }

        goto LABEL_57;
      }

      if (v4 != LODWORD(v38[0]))
      {
        v24 = 0;
        do
        {
          while (1)
          {
            v25 = *(a1 + 16);
            v26 = *(a2 + 32);
            if (v26 >= *(a2 + 24))
            {
              break;
            }

LABEL_52:
            *(a2 + 32) = v26 + 1;
            *v26 = v25;
            if (++v24 == v6)
            {
              goto LABEL_55;
            }
          }

          while (1)
          {
            v27 = *(a2 + 16);
            if (v27)
            {
              *(a2 + 32) = v27;
              (*(*a2 + 72))(a2);
              v26 = *(a2 + 32);
              goto LABEL_52;
            }

            if (!*(a2 + 44))
            {
              break;
            }

            llvm::raw_ostream::SetBuffered(a2);
            v26 = *(a2 + 32);
            if (v26 < *(a2 + 24))
            {
              goto LABEL_52;
            }
          }

          v36 = v25;
          (*(*a2 + 72))(a2, &v36, 1);
          ++v24;
        }

        while (v24 != v6);
LABEL_55:
        v5 = v38[0];
      }
    }

    llvm::raw_ostream::write(a2, v37, v5);
LABEL_57:
    v28 = &unk_1F5B3FA10;
    if (v34 == 1 && __p)
    {
      operator delete[](__p);
    }

    if (v37 != v39)
    {
      free(v37);
    }

    return;
  }

  v12 = *(**a1 + 24);

  v12();
}

uint64_t OUTLINED_FUNCTION_1_33(uint64_t a1, _BYTE *a2)
{

  return llvm::raw_fd_ostream::raw_fd_ostream(v2 + 72, a2, 1, v3, 0);
}

uint64_t llvm_regcomp(uint64_t a1, char *__s, int a3)
{
  if ((~a3 & 0x11) == 0)
  {
    return 16;
  }

  v88 = v3;
  v89 = v4;
  if ((a3 & 0x20) == 0)
  {
    v6 = a3;
    v7 = a1;
    v8 = __s;
    v9 = strlen(__s);
    v10 = malloc(0x18FuLL);
    if (v10)
    {
      goto LABEL_5;
    }

    return 12;
  }

  v26 = *(a1 + 16);
  v9 = v26 - __s;
  if (v26 < __s)
  {
    return 16;
  }

  v6 = a3;
  v8 = __s;
  v7 = a1;
  v10 = malloc(0x18FuLL);
  if (!v10)
  {
    return 12;
  }

LABEL_5:
  v11 = v10;
  v76 = 0;
  __ptr[0] = 0;
  v75 = 0u;
  v12 = 3 * (v9 >> 1);
  v13 = v12 + 1;
  *&v75 = v12 + 1;
  v14 = calloc(v12 + 1, 8uLL);
  __ptr[1] = v14;
  if (!v14)
  {
    free(v11);
    return 12;
  }

  v18 = v6;
  v77 = v11;
  v19 = v8;
  v20 = &v8[v9];
  v72 = v19;
  v73 = v20;
  LODWORD(__ptr[0]) = 0;
  LODWORD(v76) = 0;
  v21 = 0.0;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v11[4] = 256;
  *(v11 + 5) = 0;
  v22 = v11 + 5;
  *(v11 + 7) = 0;
  v11[9] = 0;
  *(v11 + 34) = 0u;
  *(v11 + 66) = 0u;
  v11[10] = v6 & 0xFFFFFF7F;
  *(v11 + 11) = v11 + 66;
  *(v11 + 12) = 0;
  v11[26] = 0;
  *(v11 + 14) = 0;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0x100000000;
  *(v11 + 38) = 0u;
  *(v11 + 42) = 0u;
  *(v11 + 46) = 0u;
  *(v11 + 50) = 0u;
  *(v11 + 54) = 0u;
  *(v11 + 58) = 0u;
  *(v11 + 62) = 0u;
  *(v11 + 70) = 0u;
  *(v11 + 74) = 0u;
  *(v11 + 78) = 0u;
  *(v11 + 82) = 0u;
  *(v11 + 86) = 0u;
  *(v11 + 90) = 0u;
  *(v11 + 94) = 0u;
  v11[30] = 0;
  if (v12 < 0x7FFFFFFFFFFFFFFFLL || (v23 = (v12 + 2) / 2, v24 = ((v12 + 2 + ((v12 + 2) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v23, v13 >= v24))
  {
    v25 = 1;
  }

  else if (v24 >> 61)
  {
    v25 = 0;
    LODWORD(__ptr[0]) = 12;
    v19 = &nuls;
    v72 = &nuls;
    v73 = &nuls;
    v20 = &nuls;
  }

  else
  {
    v55 = v6;
    v56 = v19;
    v57 = v14;
    v14 = realloc(v14, 24 * v23);
    if (v14)
    {
      __ptr[1] = v14;
      *&v75 = v24;
      v25 = 1;
      v19 = v56;
      v18 = v55;
    }

    else
    {
      v25 = 0;
      LODWORD(__ptr[0]) = 12;
      v19 = &nuls;
      v72 = &nuls;
      v73 = &nuls;
      v20 = &nuls;
      v18 = v55;
      v14 = v57;
    }
  }

  *(&v75 + 1) = 1;
  *v14 = 0x8000000;
  *(v11 + 7) = *(&v75 + 1) - 1;
  if (v18)
  {
    p_ere(&v72, 128, v21, v15, v16, v17);
  }

  else if ((v18 & 0x10) != 0)
  {
    if (v20 - v19 <= 0)
    {
      if (v25)
      {
        LODWORD(__ptr[0]) = 14;
      }

      v19 = &nuls;
      v72 = &nuls;
      v73 = &nuls;
      v20 = &nuls;
    }

    if (v20 - v19 >= 1)
    {
      do
      {
        v72 = v19 + 1;
        *&v21 = ordinary(&v72, *v19, v21, v15, v16, v17).n128_u64[0];
        v19 = v72;
      }

      while (v73 - v72 > 0);
    }
  }

  else
  {
    p_bre(&v72, 128, 128, v21, v15, v16, v17);
  }

  v27 = *(&v75 + 1);
  if (!LODWORD(__ptr[0]))
  {
    if (*(&v75 + 1) < v75 || (v28 = (v75 + 1) / 2, v29 = ((v75 + 1 + ((v75 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v28, v75 >= v29))
    {
      v30 = 1;
    }

    else
    {
      if (v29 >> 61)
      {
        v30 = 0;
        LODWORD(__ptr[0]) = 12;
        v72 = &nuls;
        v73 = &nuls;
        goto LABEL_34;
      }

      v64 = realloc(__ptr[1], 24 * v28);
      if (v64)
      {
        __ptr[1] = v64;
        *&v75 = v29;
        v30 = LODWORD(__ptr[0]) == 0;
      }

      else
      {
        if (!LODWORD(__ptr[0]))
        {
          LODWORD(__ptr[0]) = 12;
        }

        v30 = 0;
        v72 = &nuls;
        v73 = &nuls;
      }
    }

    v27 = *(&v75 + 1);
LABEL_34:
    *(&v75 + 1) = v27 + 1;
    *(__ptr[1] + v27) = 0x8000000;
    v27 = *(&v75 + 1);
    *(v11 + 8) = *(&v75 + 1) - 1;
    if (v30)
    {
      v31 = *(v11 + 11);
      for (i = -128; i != 128; ++i)
      {
        if (!*(v31 + i) && *v22 >= 1)
        {
          v33 = (*v22 + 7) >> 3;
          v34 = *(v11 + 4);
          while (!*(v34 + i))
          {
            v34 += v11[4];
            if (!--v33)
            {
              goto LABEL_36;
            }
          }

          v35 = v11[21];
          v11[21] = v35 + 1;
          *(v31 + i) = v35;
          if (i <= 126)
          {
            v36 = i;
            do
            {
              ++v36;
              if (!*(v31 + v36))
              {
                if (*v22 < 1)
                {
LABEL_45:
                  *(v31 + v36) = v35;
                }

                else
                {
                  v37 = (*v22 + 7) >> 3;
                  v38 = *(v11 + 4);
                  while (*(v38 + i) == *(v38 + v36))
                  {
                    v38 += v11[4];
                    if (!--v37)
                    {
                      goto LABEL_45;
                    }
                  }
                }
              }
            }

            while (v36 != 127);
          }
        }

LABEL_36:
        ;
      }

      v27 = *(&v75 + 1);
    }

    goto LABEL_54;
  }

  *(v11 + 8) = *(&v75 + 1) - 1;
LABEL_54:
  *(v11 + 6) = v27;
  if (v27 >> 61)
  {
    *(v11 + 1) = __ptr[1];
    v39 = v7;
    if (!LODWORD(__ptr[0]))
    {
      LODWORD(__ptr[0]) = 12;
    }

    v72 = &nuls;
    v73 = &nuls;
    goto LABEL_80;
  }

  v40 = realloc(__ptr[1], 8 * v27);
  *(v11 + 1) = v40;
  v41 = __ptr[0];
  if (!v40)
  {
    v39 = v7;
    if (!LODWORD(__ptr[0]))
    {
      LODWORD(__ptr[0]) = 12;
    }

    v72 = &nuls;
    v73 = &nuls;
    *(v11 + 1) = __ptr[1];
    goto LABEL_80;
  }

  v42 = v40;
  v39 = v7;
  if (LODWORD(__ptr[0]))
  {
LABEL_80:
    v52 = 0;
    v53 = 0;
    v54 = v11[18];
    v41 = 1;
    goto LABEL_81;
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = (v42 + 8);
  v47 = (v42 + 8);
  do
  {
    v49 = *v47++;
    LODWORD(v48) = v49;
    v50 = ((v49 & 0xF8000000) - 0x10000000) >> 27;
    if (v50 > 0xD)
    {
      goto LABEL_75;
    }

    if (((1 << v50) & 0x1880) != 0)
    {
      goto LABEL_62;
    }

    if (((1 << v50) & 0x2200) != 0)
    {
      v47 = v46;
      while (1)
      {
        v47 += v48 & 0x7FFFFFF;
        v48 = *v47;
        v51 = *v47 & 0xF8000000;
        if (v51 == 1610612736)
        {
          break;
        }

        if (v51 != -2013265920)
        {
          if (v51 == -1879048192)
          {
            break;
          }

          v11[18] |= 4u;
          goto LABEL_91;
        }
      }

LABEL_75:
      if (v45 > v11[26])
      {
        v11[26] = v45;
        v43 = v44;
      }

      v45 = 0;
      goto LABEL_62;
    }

    if (v50)
    {
      goto LABEL_75;
    }

    if (!v45)
    {
      v44 = v46;
    }

    ++v45;
LABEL_62:
    v46 = v47;
  }

  while ((v48 & 0xF8000000) != 0x8000000);
  v65 = v11[26];
  if (v65)
  {
    v66 = v39;
    v67 = malloc(v65 + 1);
    *(v11 + 12) = v67;
    if (v67)
    {
      v68 = v67;
      if (v65 < 1)
      {
        v39 = v66;
      }

      else
      {
        v39 = v66;
        do
        {
          do
          {
            v70 = *v43++;
            v69 = v70;
          }

          while ((v70 & 0xF8000000) != 0x10000000);
          *v68++ = v69;
        }

        while (v65-- > 1);
      }

      *v68 = 0;
    }

    else
    {
      v11[26] = 0;
      v39 = v66;
    }
  }

LABEL_91:
  v58 = 0;
  v53 = 0;
  v59 = (v42 + 8);
  do
  {
    v60 = *v59++;
    v61 = v60 & 0xF8000000;
    if (v58 <= v53)
    {
      v62 = v53;
    }

    else
    {
      v62 = v58;
    }

    v63 = v58 - 1;
    if (v61 == 1207959552)
    {
      ++v58;
    }

    if (v61 == 1342177280)
    {
      v58 = v63;
      v53 = v62;
    }
  }

  while (v61 != 0x8000000);
  v54 = v11[18];
  if (v58)
  {
    v54 |= 4u;
    v11[18] = v54;
  }

  v52 = 1;
LABEL_81:
  *(v11 + 16) = v53;
  *v11 = 53829;
  *(v39 + 8) = *(v11 + 14);
  *(v39 + 24) = v11;
  *v39 = 62053;
  if ((v54 & 4) != 0)
  {
    if (v52)
    {
      LODWORD(__ptr[0]) = 15;
    }

    v72 = &nuls;
    v73 = &nuls;
  }

  else if (!v41)
  {
    return 0;
  }

  llvm_regfree(v39);
  return LODWORD(__ptr[0]);
}

void p_ere(uint64_t a1, int a2, double a3, double a4, double a5, int32x4_t a6)
{
  v160 = 0;
  v161 = 0;
  v162 = 0;
  v158 = a1 + 64;
  v159 = a1 + 144;
  while (2)
  {
    v10 = *(a1 + 40);
    v11 = *a1;
    v12 = *(a1 + 8);
    v8 = v10;
    if (&v12[-*a1] < 1)
    {
LABEL_314:
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 14;
      }

      *a1 = &nuls;
      *(a1 + 8) = &nuls;
      v11 = &nuls;
      v12 = &nuls;
      goto LABEL_317;
    }

    while (1)
    {
      v13 = *v11;
      v8 = *(a1 + 40);
      if (v13 == 124 || v13 == a2)
      {
        break;
      }

      v15 = v11 + 1;
      *a1 = v11 + 1;
      v16 = *v11;
      if (v16 > 62)
      {
        if (v16 > 93)
        {
          if (v16 != 94)
          {
            if (v16 == 123)
            {
              if (v12 - v15 >= 1 && *v15 - 48 <= 9)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 13;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
              }
            }

            else if (v16 == 124)
            {
              if (*(a1 + 16))
              {
                goto LABEL_142;
              }

              v18 = 14;
              goto LABEL_141;
            }

            goto LABEL_71;
          }

          if (!*(a1 + 16))
          {
            v25 = *(a1 + 32);
            if (v8 >= v25)
            {
              v26 = (v25 + 1) / 2;
              v27 = ((v25 + 1 + ((v25 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v26;
              if (v25 < v27)
              {
                if (v27 >> 61)
                {
                  goto LABEL_55;
                }

                v48 = realloc(*(a1 + 24), 24 * v26);
                if (v48)
                {
                  *(a1 + 24) = v48;
                  *(a1 + 32) = v27;
                }

                else
                {
                  if (!*(a1 + 16))
                  {
LABEL_55:
                    *(a1 + 16) = 12;
                  }

                  *a1 = &nuls;
                  *(a1 + 8) = &nuls;
                }
              }
            }

            v49 = *(a1 + 24);
            v50 = *(a1 + 40);
            *(a1 + 40) = v50 + 1;
            *(v49 + 8 * v50) = 402653184;
          }

          v33 = 0;
          v51 = *(a1 + 56);
          v52 = v51[9];
          a4 = COERCE_DOUBLE(vadd_s32(v52, 0x100000001));
          LODWORD(a3) = v52.i32[0] | 1;
          HIDWORD(a3) = HIDWORD(a4);
          *&v51[9] = a3;
          v11 = *a1;
          v12 = *(a1 + 8);
          v34 = &v12[-*a1];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        if (v16 == 63)
        {
          goto LABEL_30;
        }

        if (v16 == 91)
        {
          p_bracket(a1, a3, a4, a5, a6);
          v33 = 1;
          v11 = *a1;
          v12 = *(a1 + 8);
          v34 = &v12[-*a1];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        if (v16 != 92)
        {
          goto LABEL_71;
        }

        if (v12 - v15 <= 0)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 5;
          }

          *a1 = &byte_1ECE752E1;
          *(a1 + 8) = &nuls;
          v17 = nuls;
          if ((nuls - 49) > 8)
          {
            goto LABEL_72;
          }
        }

        else
        {
          *a1 = v15 + 1;
          v17 = *v15;
          if ((v17 - 49) > 8)
          {
            goto LABEL_72;
          }
        }

        v35 = (v17 - 48);
        v36 = *(v159 + 8 * v35);
        v37 = *(a1 + 16);
        if (!v36)
        {
          if (v37)
          {
            goto LABEL_142;
          }

          v18 = 6;
          goto LABEL_141;
        }

        if (v37)
        {
          v38 = *(v158 + 8 * v35) + 1;
          v39 = v36 - v38;
          if (v36 == v38)
          {
            goto LABEL_82;
          }

LABEL_270:
          if (v39 >= 1)
          {
            v127 = *(a1 + 32) + v39;
            if (v127 >> 61 || (v128 = realloc(*(a1 + 24), 8 * v127)) == 0)
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }

            else
            {
              *(a1 + 24) = v128;
              *(a1 + 32) = v127;
            }
          }

          memmove((*(a1 + 24) + 8 * *(a1 + 40)), (*(a1 + 24) + 8 * v38), 8 * v39);
          *(a1 + 40) += v39;
          if (!*(a1 + 16))
          {
            goto LABEL_278;
          }

LABEL_286:
          v33 = 1;
          *(*(a1 + 56) + 120) = 1;
          v11 = *a1;
          v12 = *(a1 + 8);
          v34 = &v12[-*a1];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        v41 = *(a1 + 32);
        if (v8 >= v41)
        {
          v42 = (v41 + 1) / 2;
          v43 = ((v41 + 1 + ((v41 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v42;
          if (v41 < v43)
          {
            if (v43 >> 61)
            {
              goto LABEL_95;
            }

            v123 = realloc(*(a1 + 24), 24 * v42);
            if (v123)
            {
              *(a1 + 24) = v123;
              *(a1 + 32) = v43;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_95:
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }
          }
        }

        v124 = *(a1 + 24);
        v125 = *(a1 + 40);
        *(a1 + 40) = v125 + 1;
        *(v124 + 8 * v125) = v35 | 0x38000000;
        v126 = *(v159 + 8 * v35);
        v38 = *(v158 + 8 * v35) + 1;
        v39 = v126 - v38;
        if (v126 != v38)
        {
          goto LABEL_270;
        }

LABEL_82:
        if (*(a1 + 16))
        {
          goto LABEL_286;
        }

LABEL_278:
        v129 = *(a1 + 32);
        if (*(a1 + 40) >= v129)
        {
          v130 = (v129 + 1) / 2;
          v131 = ((v129 + 1 + ((v129 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v130;
          if (v129 < v131)
          {
            if (v131 >> 61)
            {
              goto LABEL_281;
            }

            v132 = realloc(*(a1 + 24), 24 * v130);
            if (v132)
            {
              *(a1 + 24) = v132;
              *(a1 + 32) = v131;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_281:
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }
          }
        }

        v133 = *(a1 + 24);
        v134 = *(a1 + 40);
        *(a1 + 40) = v134 + 1;
        *(v133 + 8 * v134) = v35 | 0x40000000;
        goto LABEL_286;
      }

      if (v16 > 41)
      {
        if ((v16 - 42) < 2)
        {
LABEL_30:
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 13;
          }

          goto LABEL_142;
        }

        if (v16 != 46)
        {
          goto LABEL_71;
        }

        if ((*(*(a1 + 56) + 40) & 8) != 0)
        {
          *a1 = &nonnewline_bracket;
          *(a1 + 8) = &unk_1E099E901;
          p_bracket(a1, a3, a4, a5, a6);
          *a1 = v15;
          *(a1 + 8) = v12;
          v33 = 1;
          v11 = *a1;
          v12 = *(a1 + 8);
          v34 = &v12[-*a1];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        if (*(a1 + 16))
        {
          goto LABEL_143;
        }

        v19 = *(a1 + 32);
        if (v8 >= v19)
        {
          v20 = (v19 + 1) / 2;
          v21 = ((v19 + 1 + ((v19 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v20;
          if (v19 < v21)
          {
            if (v21 >> 61)
            {
              goto LABEL_43;
            }

            v54 = realloc(*(a1 + 24), 24 * v20);
            if (v54)
            {
              *(a1 + 24) = v54;
              *(a1 + 32) = v21;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_43:
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }
          }
        }

        v55 = *(a1 + 24);
        v56 = *(a1 + 40);
        *(a1 + 40) = v56 + 1;
        *(v55 + 8 * v56) = 671088640;
        v33 = 1;
        v11 = *a1;
        v12 = *(a1 + 8);
        v34 = &v12[-*a1];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      if (v16 == 36)
      {
        if (!*(a1 + 16))
        {
          v22 = *(a1 + 32);
          if (v8 >= v22)
          {
            v23 = (v22 + 1) / 2;
            v24 = ((v22 + 1 + ((v22 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v23;
            if (v22 < v24)
            {
              if (v24 >> 61)
              {
                goto LABEL_49;
              }

              v44 = realloc(*(a1 + 24), 24 * v23);
              if (v44)
              {
                *(a1 + 24) = v44;
                *(a1 + 32) = v24;
              }

              else
              {
                if (!*(a1 + 16))
                {
LABEL_49:
                  *(a1 + 16) = 12;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
              }
            }
          }

          v45 = *(a1 + 24);
          v46 = *(a1 + 40);
          *(a1 + 40) = v46 + 1;
          *(v45 + 8 * v46) = 0x20000000;
        }

        v47 = *(a1 + 56);
        *(v47 + 72) |= 2u;
        ++*(v47 + 80);
        v33 = 1;
        v11 = *a1;
        v12 = *(a1 + 8);
        v34 = &v12[-*a1];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      if (v16 != 40)
      {
        if (v16 == 41)
        {
          if (*(a1 + 16))
          {
            goto LABEL_142;
          }

LABEL_140:
          v18 = 8;
LABEL_141:
          *(a1 + 16) = v18;
          goto LABEL_142;
        }

LABEL_71:
        v17 = v16;
LABEL_72:
        *&a3 = ordinary(a1, v17, a3, a4, a5, a6).n128_u64[0];
        v33 = 1;
        v11 = *a1;
        v12 = *(a1 + 8);
        v34 = &v12[-*a1];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      if (v12 - v15 <= 0)
      {
        if (!*(a1 + 16))
        {
          *(a1 + 16) = 8;
        }

        *a1 = &nuls;
        *(a1 + 8) = &nuls;
        v15 = &nuls;
        v12 = &nuls;
        v40 = *(a1 + 56);
        v29 = *(v40 + 112) + 1;
        *(v40 + 112) = v29;
        if (v29 <= 9)
        {
LABEL_59:
          *(v158 + 8 * v29) = v8;
          if (!*(a1 + 16))
          {
            goto LABEL_60;
          }

          goto LABEL_88;
        }
      }

      else
      {
        v28 = *(a1 + 56);
        v29 = *(v28 + 112) + 1;
        *(v28 + 112) = v29;
        if (v29 <= 9)
        {
          goto LABEL_59;
        }
      }

      if (!*(a1 + 16))
      {
LABEL_60:
        v30 = *(a1 + 32);
        if (*(a1 + 40) >= v30)
        {
          v31 = (v30 + 1) / 2;
          v32 = ((v30 + 1 + ((v30 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v31;
          if (v30 < v32)
          {
            if (v32 >> 61)
            {
              *(a1 + 16) = 12;
              v15 = &nuls;
              v12 = &nuls;
              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }

            else
            {
              v53 = realloc(*(a1 + 24), 24 * v31);
              if (v53)
              {
                *(a1 + 24) = v53;
                *(a1 + 32) = v32;
                v15 = *a1;
                v12 = *(a1 + 8);
              }

              else
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 12;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v15 = &nuls;
                v12 = &nuls;
              }
            }
          }
        }

        v57 = *(a1 + 24);
        v58 = *(a1 + 40);
        *(a1 + 40) = v58 + 1;
        *(v57 + 8 * v58) = v29 | 0x68000000;
        if (v12 - v15 < 1)
        {
          goto LABEL_129;
        }

        goto LABEL_121;
      }

LABEL_88:
      if (v12 - v15 < 1)
      {
        goto LABEL_129;
      }

LABEL_121:
      if (*v15 == 41)
      {
        if (v29 <= 9)
        {
          goto LABEL_123;
        }

        goto LABEL_130;
      }

LABEL_129:
      p_ere(a1, 41);
      if (v29 <= 9)
      {
LABEL_123:
        *(v159 + 8 * v29) = *(a1 + 40);
        if (!*(a1 + 16))
        {
          goto LABEL_124;
        }

        goto LABEL_131;
      }

LABEL_130:
      if (!*(a1 + 16))
      {
LABEL_124:
        v59 = *(a1 + 32);
        if (*(a1 + 40) >= v59)
        {
          v60 = (v59 + 1) / 2;
          v61 = ((v59 + 1 + ((v59 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v60;
          if (v59 < v61)
          {
            if (v61 >> 61)
            {
              goto LABEL_127;
            }

            v63 = realloc(*(a1 + 24), 24 * v60);
            if (v63)
            {
              *(a1 + 24) = v63;
              *(a1 + 32) = v61;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_127:
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }
          }
        }

        v64 = *(a1 + 24);
        v65 = *(a1 + 40);
        *(a1 + 40) = v65 + 1;
        *(v64 + 8 * v65) = v29 | 0x70000000;
        v62 = *a1;
        if ((*(a1 + 8) - *a1) < 1)
        {
          goto LABEL_139;
        }

        goto LABEL_136;
      }

LABEL_131:
      v62 = *a1;
      if ((*(a1 + 8) - *a1) < 1)
      {
        goto LABEL_139;
      }

LABEL_136:
      *a1 = v62 + 1;
      if (*v62 != 41)
      {
LABEL_139:
        if (!*(a1 + 16))
        {
          goto LABEL_140;
        }

LABEL_142:
        *a1 = &nuls;
        *(a1 + 8) = &nuls;
LABEL_143:
        v33 = 1;
        v11 = *a1;
        v12 = *(a1 + 8);
        v34 = &v12[-*a1];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      v33 = 1;
      v11 = *a1;
      v12 = *(a1 + 8);
      v34 = &v12[-*a1];
      if (v34 < 1)
      {
        goto LABEL_10;
      }

LABEL_144:
      v66 = *v11;
      if ((v66 - 42) < 2 || v66 == 63 || v66 == 123 && v34 != 1 && v11[1] - 48 <= 9)
      {
        v67 = v11 + 1;
        *a1 = v11 + 1;
        if ((v33 & 1) == 0)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 13;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
          v67 = &nuls;
          v12 = &nuls;
        }

        if (v66 <= 62)
        {
          if (v66 != 42)
          {
            if (v66 == 43)
            {
              doinsert(a1, 1207959552, *(a1 + 40) - v8 + 1, v8);
              if (!*(a1 + 16))
              {
                v68 = *(a1 + 32);
                v69 = *(a1 + 40);
                if (v69 >= v68)
                {
                  v70 = (v68 + 1) / 2;
                  v71 = ((v68 + 1 + ((v68 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v70;
                  if (v68 < v71)
                  {
                    if (v71 >> 61)
                    {
                      goto LABEL_160;
                    }

                    v102 = realloc(*(a1 + 24), 24 * v70);
                    if (v102)
                    {
                      *(a1 + 24) = v102;
                      *(a1 + 32) = v71;
                    }

                    else
                    {
                      if (!*(a1 + 16))
                      {
LABEL_160:
                        *(a1 + 16) = 12;
                      }

                      *a1 = &nuls;
                      *(a1 + 8) = &nuls;
                    }
                  }
                }

                v87 = (v69 - v8) | 0x50000000;
LABEL_235:
                v113 = *(a1 + 24);
                v114 = *(a1 + 40);
                *(a1 + 40) = v114 + 1;
                *(v113 + 8 * v114) = v87;
              }
            }

LABEL_297:
            v11 = *a1;
            v12 = *(a1 + 8);
            v137 = &v12[-*a1];
            if (v137 >= 1)
            {
              if ((v138 = *v11, (v138 - 42) < 2) || v138 == 63 || (v138 == 123 ? (v139 = v137 == 1) : (v139 = 1), !v139 && v11[1] - 48 <= 9))
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 13;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v11 = &nuls;
                v12 = &nuls;
              }
            }

            goto LABEL_10;
          }

          doinsert(a1, 1207959552, *(a1 + 40) - v8 + 1, v8);
          v77 = *(a1 + 40);
          v78 = v77 - v8;
          if (!*(a1 + 16))
          {
            v79 = *(a1 + 32);
            if (v77 >= v79)
            {
              v80 = (v79 + 1) / 2;
              v81 = ((v79 + 1 + ((v79 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v80;
              if (v79 < v81)
              {
                if (v81 >> 61)
                {
                  goto LABEL_175;
                }

                v103 = realloc(*(a1 + 24), 24 * v80);
                if (v103)
                {
                  *(a1 + 24) = v103;
                  *(a1 + 32) = v81;
                }

                else
                {
                  if (!*(a1 + 16))
                  {
LABEL_175:
                    *(a1 + 16) = 12;
                  }

                  *a1 = &nuls;
                  *(a1 + 8) = &nuls;
                }
              }
            }

            v104 = *(a1 + 24);
            v105 = *(a1 + 40);
            *(a1 + 40) = v105 + 1;
            *(v104 + 8 * v105) = v78 | 0x50000000;
            v78 = *(a1 + 40) - v8;
          }

          doinsert(a1, 1476395008, v78 + 1, v8);
          if (*(a1 + 16))
          {
            goto LABEL_297;
          }

          v106 = *(a1 + 32);
          v107 = *(a1 + 40);
          if (v107 >= v106)
          {
            v108 = (v106 + 1) / 2;
            v109 = ((v106 + 1 + ((v106 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v108;
            if (v106 < v109)
            {
              if (v109 >> 61)
              {
                goto LABEL_227;
              }

              v112 = realloc(*(a1 + 24), 24 * v108);
              if (v112)
              {
                *(a1 + 24) = v112;
                *(a1 + 32) = v109;
              }

              else
              {
                if (!*(a1 + 16))
                {
LABEL_227:
                  *(a1 + 16) = 12;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
              }
            }
          }

          v87 = (v107 - v8) | 0x60000000;
          goto LABEL_235;
        }

        if (v66 != 63)
        {
          if (v66 != 123)
          {
            goto LABEL_297;
          }

          v72 = v12 - v67;
          if (v12 - v67 < 1)
          {
            v74 = 0;
            goto LABEL_186;
          }

          v73 = 0;
          v74 = 0;
          while (*v67 - 48 <= 9 && v74 <= 255)
          {
            v75 = v67 + 1;
            *a1 = v67 + 1;
            v74 = (*v67 + 10 * v74 - 48);
            ++v73;
            ++v67;
            if (v72-- <= 1)
            {
              goto LABEL_185;
            }
          }

          v75 = v67;
          if (!v73)
          {
            goto LABEL_186;
          }

LABEL_185:
          if (v74 >= 256)
          {
LABEL_186:
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 10;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
            v75 = &nuls;
            v12 = &nuls;
          }

          v88 = v74;
          if (v12 - v75 < 1)
          {
            goto LABEL_240;
          }

          v88 = v74;
          if (*v75 != 44)
          {
            goto LABEL_240;
          }

          v89 = v75 + 1;
          *a1 = v75 + 1;
          if (v75[1] - 48 > 9)
          {
            v88 = 256;
            goto LABEL_240;
          }

          v90 = (v12 - v89);
          if (v12 - v89 < 1)
          {
            v88 = 0;
          }

          else
          {
            v91 = 0;
            v88 = 0;
            while (1)
            {
              v92 = &v89[v91];
              if (v89[v91] - 48 > 9 || v88 > 255)
              {
                break;
              }

              *a1 = v92 + 1;
              v88 = (*v92 + 10 * v88 - 48);
              ++v91;
              if (--v90 <= 0)
              {
                LODWORD(v91) = 1;
                break;
              }
            }

            if (v91 && v88 < 256)
            {
              if (v74 <= v88)
              {
                goto LABEL_240;
              }

LABEL_237:
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 10;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
              goto LABEL_240;
            }
          }

          if (!*(a1 + 16))
          {
            *(a1 + 16) = 10;
            *a1 = &nuls;
            *(a1 + 8) = &nuls;
            if (v74 <= v88)
            {
              goto LABEL_240;
            }

            goto LABEL_237;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
          if (v74 > v88)
          {
            goto LABEL_237;
          }

LABEL_240:
          repeat(a1, v8, v74, v88);
          v116 = *a1;
          v115 = *(a1 + 8);
          if (v115 - *a1 >= 1)
          {
            if (*v116 == 125)
            {
              *a1 = v116 + 1;
              goto LABEL_297;
            }

            v117 = (v116 + 1);
            v118 = ~v116 + v115;
            while (1)
            {
              *a1 = v117;
              if (v118 <= 0)
              {
                break;
              }

              v119 = *v117++;
              --v118;
              if (v119 == 125)
              {
                if (*(a1 + 16))
                {
                  goto LABEL_251;
                }

                v120 = 10;
                goto LABEL_250;
              }
            }
          }

          if (!*(a1 + 16))
          {
            v120 = 9;
LABEL_250:
            *(a1 + 16) = v120;
          }

LABEL_251:
          *a1 = &nuls;
          *(a1 + 8) = &nuls;
          goto LABEL_297;
        }

        doinsert(a1, 2013265920, *(a1 + 40) - v8 + 1, v8);
        if (*(a1 + 16))
        {
          goto LABEL_297;
        }

        v83 = *(a1 + 32);
        v82 = *(a1 + 40);
        v84 = v82 - v8;
        if (v82 < v83 || (v85 = (v83 + 1) / 2, v86 = ((v83 + 1 + ((v83 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v85, v83 >= v86))
        {
          v93 = *(a1 + 24);
          v94 = *(a1 + 40);
          *(a1 + 40) = v94 + 1;
          v93[v94] = v84 | 0x80000000;
        }

        else
        {
          if (v86 >> 61)
          {
            goto LABEL_181;
          }

          v93 = realloc(*(a1 + 24), 24 * v85);
          if (!v93)
          {
            if (!*(a1 + 16))
            {
LABEL_181:
              *(a1 + 16) = 12;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
            v87 = v84 | 0x80000000;
            goto LABEL_235;
          }

          *(a1 + 24) = v93;
          *(a1 + 32) = v86;
          v110 = *(a1 + 16);
          v111 = *(a1 + 40);
          *(a1 + 40) = v111 + 1;
          v93[v111] = v84 | 0x80000000;
          if (v110)
          {
            goto LABEL_297;
          }
        }

        v93[v8] = v93[v8] & 0xF8000000 | (*(a1 + 40) - v8);
        v95 = *(a1 + 32);
        if (*(a1 + 40) >= v95)
        {
          v96 = (v95 + 1) / 2;
          v97 = ((v95 + 1 + ((v95 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v96;
          if (v95 < v97)
          {
            if (v97 >> 61)
            {
              *(a1 + 16) = 12;
              *a1 = &nuls;
              *(a1 + 8) = &nuls;
              goto LABEL_291;
            }

            v93 = realloc(v93, 24 * v96);
            if (v93)
            {
              *(a1 + 24) = v93;
              *(a1 + 32) = v97;
              v121 = *(a1 + 16);
              v122 = *(a1 + 40);
              *(a1 + 40) = v122 + 1;
              v93[v122] = 2281701376;
              if (v121)
              {
                goto LABEL_297;
              }

LABEL_208:
              v93[*(a1 + 40) - 1] = v93[*(a1 + 40) - 1] & 0xF8000000 | 1;
              v99 = *(a1 + 32);
              if (*(a1 + 40) >= v99)
              {
                v100 = (v99 + 1) / 2;
                v101 = ((v99 + 1 + ((v99 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v100;
                if (v99 < v101)
                {
                  if (v101 >> 61)
                  {
                    *(a1 + 16) = 12;
                    *a1 = &nuls;
                    *(a1 + 8) = &nuls;
                  }

                  else
                  {
                    v93 = realloc(v93, 24 * v100);
                    if (v93)
                    {
                      *(a1 + 24) = v93;
                      *(a1 + 32) = v101;
                    }

                    else
                    {
                      if (!*(a1 + 16))
                      {
                        *(a1 + 16) = 12;
                      }

                      *a1 = &nuls;
                      *(a1 + 8) = &nuls;
                      v93 = *(a1 + 24);
                    }
                  }
                }
              }

              v135 = *(a1 + 40);
              *(a1 + 40) = v135 + 1;
              v136 = 2415919106;
            }

            else
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
              v93 = *(a1 + 24);
LABEL_291:
              v135 = *(a1 + 40);
              *(a1 + 40) = v135 + 1;
              v136 = 2281701376;
            }

            v93[v135] = v136;
            goto LABEL_297;
          }
        }

        v98 = *(a1 + 40);
        *(a1 + 40) = v98 + 1;
        v93[v98] = 2281701376;
        goto LABEL_208;
      }

LABEL_10:
      if (v12 - v11 <= 0)
      {
        v8 = *(a1 + 40);
        break;
      }
    }

    if (v8 == v10)
    {
      goto LABEL_314;
    }

LABEL_317:
    if (v12 - v11 >= 1 && *v11 == 124)
    {
      *a1 = v11 + 1;
      if (v162)
      {
        v10 = v160;
        if (!*(a1 + 16))
        {
          goto LABEL_321;
        }

LABEL_3:
        v9 = v8;
LABEL_4:
        v160 = v9 - 1;
        v161 = v8;
        v162 = 1;
        continue;
      }

      doinsert(a1, 2013265920, v8 - v10 + 1, v10);
      v8 = *(a1 + 40);
      v161 = v10;
      if (*(a1 + 16))
      {
        goto LABEL_3;
      }

LABEL_321:
      v140 = *(a1 + 32);
      if (v8 < v140 || (v141 = (v140 + 1) / 2, v142 = ((v140 + 1 + ((v140 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v141, v140 >= v142))
      {
        v143 = 1;
      }

      else
      {
        if (v142 >> 61)
        {
          v143 = 0;
          *(a1 + 16) = 12;
          goto LABEL_339;
        }

        v149 = realloc(*(a1 + 24), 24 * v141);
        if (v149)
        {
          *(a1 + 24) = v149;
          *(a1 + 32) = v142;
          v143 = *(a1 + 16) == 0;
        }

        else
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 12;
          }

          v143 = 0;
LABEL_339:
          *a1 = &nuls;
          *(a1 + 8) = &nuls;
        }
      }

      v144 = *(a1 + 24);
      v145 = *(a1 + 40);
      *(a1 + 40) = v145 + 1;
      v144[v145] = (v8 - v10) | 0x80000000;
      v9 = *(a1 + 40);
      if (v143)
      {
        v144[v161] = v144[v161] & 0xF8000000 | (v9 - v161);
        v146 = *(a1 + 32);
        v8 = *(a1 + 40);
        if (v8 >= v146)
        {
          v147 = (v146 + 1) / 2;
          v148 = ((v146 + 1 + ((v146 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v147;
          if (v146 < v148)
          {
            if (v148 >> 61)
            {
              *(a1 + 16) = 12;
              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }

            else
            {
              v144 = realloc(v144, 24 * v147);
              if (v144)
              {
                *(a1 + 24) = v144;
                *(a1 + 32) = v148;
              }

              else
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 12;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v144 = *(a1 + 24);
              }
            }
          }
        }

        v150 = *(a1 + 40);
        *(a1 + 40) = v150 + 1;
        v144[v150] = 2281701376;
      }

      else
      {
        v8 = *(a1 + 40);
      }

      goto LABEL_4;
    }

    break;
  }

  if ((v162 & 1) != 0 && !*(a1 + 16))
  {
    v151 = *(a1 + 24);
    v151[v161] = v151[v161] & 0xF8000000 | (v8 - v161);
    v152 = *(a1 + 32);
    v153 = *(a1 + 40);
    v154 = v153 - v160;
    if (v153 >= v152)
    {
      v155 = (v152 + 1) / 2;
      v156 = ((v152 + 1 + ((v152 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v155;
      if (v152 < v156)
      {
        if (v156 >> 61)
        {
          *(a1 + 16) = 12;
          *a1 = &nuls;
          *(a1 + 8) = &nuls;
        }

        else
        {
          v151 = realloc(v151, 24 * v155);
          if (v151)
          {
            *(a1 + 24) = v151;
            *(a1 + 32) = v156;
          }

          else
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 12;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
            v151 = *(a1 + 24);
          }
        }
      }
    }

    v157 = *(a1 + 40);
    *(a1 + 40) = v157 + 1;
    v151[v157] = v154 | 0x90000000;
  }
}

void p_bre(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, int32x4_t a7)
{
  v8 = *(a1 + 40);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = &v10[-*a1];
  if (v11 < 1)
  {
    goto LABEL_14;
  }

  if (*v9 == 94)
  {
    *a1 = ++v9;
    if (*(a1 + 16))
    {
      goto LABEL_12;
    }

    v14 = *(a1 + 32);
    if (v8 >= v14)
    {
      v15 = (v14 + 1) / 2;
      v16 = ((v14 + 1 + ((v14 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v15;
      if (v14 < v16)
      {
        if (v16 >> 61)
        {
          goto LABEL_7;
        }

        v17 = realloc(*(a1 + 24), 24 * v15);
        if (v17)
        {
          *(a1 + 24) = v17;
          *(a1 + 32) = v16;
          v9 = *a1;
          v10 = *(a1 + 8);
          goto LABEL_11;
        }

        if (!*(a1 + 16))
        {
LABEL_7:
          *(a1 + 16) = 12;
        }

        *a1 = &nuls;
        *(a1 + 8) = &nuls;
        v9 = &nuls;
        v10 = &nuls;
      }
    }

LABEL_11:
    v18 = *(a1 + 24);
    v19 = *(a1 + 40);
    *(a1 + 40) = v19 + 1;
    *(v18 + 8 * v19) = 402653184;
LABEL_12:
    v20 = *(a1 + 56);
    v21 = v20[9];
    a5 = COERCE_DOUBLE(vadd_s32(v21, 0x100000001));
    LODWORD(a4) = v21.i32[0] | 1;
    HIDWORD(a4) = HIDWORD(a5);
    *&v20[9] = a4;
    v11 = v10 - v9;
    if (v10 - v9 >= 1)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (*(a1 + 40) == v8)
    {
      goto LABEL_233;
    }

    return;
  }

LABEL_13:
  v117 = v8;
  v22 = 0;
  v23 = 0;
  v24 = a1 + 144;
  v25 = a1 + 64;
  while (v11 == 1 || *v9 != a2 || v9[1] != a3)
  {
    v118 = *(a1 + 40);
    v29 = v9 + 1;
    *a1 = v9 + 1;
    v30 = *v9;
    if (v30 == 92)
    {
      if (v10 - v29 <= 0)
      {
        if (!*(a1 + 16))
        {
          *(a1 + 16) = 5;
        }

        *(a1 + 8) = &nuls;
        v10 = &nuls;
        v29 = &nuls;
      }

      *a1 = v29 + 1;
      v30 = *v29++ | 0x100;
    }

    if (v30 <= 304)
    {
      if (v30 <= 90)
      {
        if (v30 == 42)
        {
          if (v23)
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 13;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
          }

LABEL_65:
          *&a4 = ordinary(a1, v30, a4, a5, a6, a7).n128_u64[0];
          goto LABEL_139;
        }

        if (v30 != 46)
        {
          goto LABEL_65;
        }

        if ((*(*(a1 + 56) + 40) & 8) != 0)
        {
          *a1 = &nonnewline_bracket;
          *(a1 + 8) = &unk_1E099E901;
          p_bracket(a1, a4, a5, a6, a7);
          *a1 = v29;
          *(a1 + 8) = v10;
          goto LABEL_139;
        }

        if (*(a1 + 16))
        {
          goto LABEL_139;
        }

        v36 = *(a1 + 32);
        if (v118 >= v36)
        {
          v37 = (v36 + 1) / 2;
          v38 = ((v36 + 1 + ((v36 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v37;
          if (v36 < v38)
          {
            if (v38 >> 61)
            {
              goto LABEL_54;
            }

            v66 = realloc(*(a1 + 24), 24 * v37);
            if (v66)
            {
              *(a1 + 24) = v66;
              *(a1 + 32) = v38;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_54:
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }
          }
        }

        v67 = *(a1 + 24);
        v68 = *(a1 + 40);
        *(a1 + 40) = v68 + 1;
        *(v67 + 8 * v68) = 671088640;
        goto LABEL_139;
      }

      if (v30 == 91)
      {
        p_bracket(a1, a4, a5, a6, a7);
        goto LABEL_139;
      }

      if (v30 != 296)
      {
        if (v30 != 297)
        {
          goto LABEL_65;
        }

        goto LABEL_135;
      }

      v42 = *(a1 + 56);
      v43 = *(v42 + 112) + 1;
      *(v42 + 112) = v43;
      if (v43 > 9)
      {
        if (!*(a1 + 16))
        {
          goto LABEL_68;
        }
      }

      else
      {
        *(v25 + 8 * v43) = v118;
        if (!*(a1 + 16))
        {
LABEL_68:
          v116 = a2;
          v44 = a3;
          v45 = *(a1 + 32);
          if (*(a1 + 40) >= v45)
          {
            v46 = (v45 + 1) / 2;
            v47 = ((v45 + 1 + ((v45 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v46;
            if (v45 < v47)
            {
              if (v47 >> 61)
              {
                *(a1 + 16) = 12;
                v29 = &nuls;
                v10 = &nuls;
                *a1 = &nuls;
                *(a1 + 8) = &nuls;
              }

              else
              {
                v65 = realloc(*(a1 + 24), 24 * v46);
                if (v65)
                {
                  *(a1 + 24) = v65;
                  *(a1 + 32) = v47;
                  v29 = *a1;
                  v10 = *(a1 + 8);
                }

                else
                {
                  if (!*(a1 + 16))
                  {
                    *(a1 + 16) = 12;
                  }

                  *a1 = &nuls;
                  *(a1 + 8) = &nuls;
                  v29 = &nuls;
                  v10 = &nuls;
                }
              }
            }
          }

          v69 = *(a1 + 24);
          v70 = *(a1 + 40);
          *(a1 + 40) = v70 + 1;
          *(v69 + 8 * v70) = v43 | 0x68000000;
          a3 = v44;
          a2 = v116;
          v48 = v10 - v29 == 1;
          if (v10 - v29 >= 1)
          {
LABEL_115:
            if (v48 || *v29 != 92 || v29[1] != 41)
            {
              p_bre(a1, 92, 41);
            }
          }

LABEL_119:
          if (v43 > 9)
          {
            if (!*(a1 + 16))
            {
              goto LABEL_121;
            }
          }

          else
          {
            *(v24 + 8 * v43) = *(a1 + 40);
            if (!*(a1 + 16))
            {
LABEL_121:
              v71 = *(a1 + 32);
              if (*(a1 + 40) >= v71)
              {
                v72 = (v71 + 1) / 2;
                v73 = ((v71 + 1 + ((v71 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v72;
                if (v71 < v73)
                {
                  if (v73 >> 61)
                  {
                    goto LABEL_124;
                  }

                  v75 = realloc(*(a1 + 24), 24 * v72);
                  if (v75)
                  {
                    *(a1 + 24) = v75;
                    *(a1 + 32) = v73;
                  }

                  else
                  {
                    if (!*(a1 + 16))
                    {
LABEL_124:
                      *(a1 + 16) = 12;
                    }

                    *a1 = &nuls;
                    *(a1 + 8) = &nuls;
                  }
                }
              }

              v76 = *(a1 + 24);
              v77 = *(a1 + 40);
              *(a1 + 40) = v77 + 1;
              *(v76 + 8 * v77) = v43 | 0x70000000;
              v74 = *a1;
              if ((*(a1 + 8) - *a1) < 2)
              {
                goto LABEL_135;
              }

LABEL_132:
              if (*v74 == 92 && v74[1] == 41)
              {
                *a1 = v74 + 2;
                goto LABEL_139;
              }

LABEL_135:
              if (!*(a1 + 16))
              {
                v49 = 8;
                goto LABEL_137;
              }

              goto LABEL_138;
            }
          }

          v74 = *a1;
          if ((*(a1 + 8) - *a1) < 2)
          {
            goto LABEL_135;
          }

          goto LABEL_132;
        }
      }

      v48 = v10 - v29 == 1;
      if (v10 - v29 >= 1)
      {
        goto LABEL_115;
      }

      goto LABEL_119;
    }

    if ((v30 - 305) < 9)
    {
      v31 = (v30 & 0xFFFFFEFF) - 48;
      v32 = *(v24 + 8 * v31);
      v33 = *(a1 + 16);
      if (!v32)
      {
        if (!v33)
        {
          *(a1 + 16) = 6;
        }

        *a1 = &nuls;
        *(a1 + 8) = &nuls;
        goto LABEL_99;
      }

      if (v33)
      {
        v34 = *(v25 + 8 * v31) + 1;
        v35 = v32 - v34;
        if (v32 == v34)
        {
          goto LABEL_34;
        }

LABEL_82:
        if (v35 >= 1)
        {
          v54 = v24;
          v55 = a2;
          v56 = a3;
          v57 = *(a1 + 32) + v35;
          if (v57 >> 61 || (v58 = realloc(*(a1 + 24), 8 * v57)) == 0)
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 12;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
          }

          else
          {
            *(a1 + 24) = v58;
            *(a1 + 32) = v57;
          }

          a3 = v56;
          a2 = v55;
          v24 = v54;
          v25 = a1 + 64;
        }

        memmove((*(a1 + 24) + 8 * *(a1 + 40)), (*(a1 + 24) + 8 * v34), 8 * v35);
        *(a1 + 40) += v35;
        if (!*(a1 + 16))
        {
          goto LABEL_91;
        }

LABEL_99:
        *(*(a1 + 56) + 120) = 1;
        goto LABEL_139;
      }

      v39 = *(a1 + 32);
      if (v118 >= v39)
      {
        v40 = (v39 + 1) / 2;
        v41 = ((v39 + 1 + ((v39 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v40;
        if (v39 < v41)
        {
          if (v41 >> 61)
          {
            goto LABEL_59;
          }

          v50 = realloc(*(a1 + 24), 24 * v40);
          if (v50)
          {
            *(a1 + 24) = v50;
            *(a1 + 32) = v41;
          }

          else
          {
            if (!*(a1 + 16))
            {
LABEL_59:
              *(a1 + 16) = 12;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
          }
        }
      }

      v51 = *(a1 + 24);
      v52 = *(a1 + 40);
      *(a1 + 40) = v52 + 1;
      *(v51 + 8 * v52) = v31 | 0x38000000;
      v53 = *(v24 + 8 * v31);
      v34 = *(v25 + 8 * v31) + 1;
      v35 = v53 - v34;
      if (v53 != v34)
      {
        goto LABEL_82;
      }

LABEL_34:
      if (*(a1 + 16))
      {
        goto LABEL_99;
      }

LABEL_91:
      v59 = *(a1 + 32);
      if (*(a1 + 40) >= v59)
      {
        v60 = (v59 + 1) / 2;
        v61 = ((v59 + 1 + ((v59 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v60;
        if (v59 < v61)
        {
          if (v61 >> 61)
          {
            goto LABEL_94;
          }

          v62 = realloc(*(a1 + 24), 24 * v60);
          if (v62)
          {
            *(a1 + 24) = v62;
            *(a1 + 32) = v61;
          }

          else
          {
            if (!*(a1 + 16))
            {
LABEL_94:
              *(a1 + 16) = 12;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
          }
        }
      }

      v63 = *(a1 + 24);
      v64 = *(a1 + 40);
      *(a1 + 40) = v64 + 1;
      *(v63 + 8 * v64) = v31 | 0x40000000;
      goto LABEL_99;
    }

    if (v30 != 379)
    {
      if (v30 != 381)
      {
        goto LABEL_65;
      }

      goto LABEL_135;
    }

    if (!*(a1 + 16))
    {
      v49 = 13;
LABEL_137:
      *(a1 + 16) = v49;
    }

LABEL_138:
    *a1 = &nuls;
    *(a1 + 8) = &nuls;
LABEL_139:
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = &v10[-*a1];
    if (v11 < 1)
    {
      goto LABEL_156;
    }

    v78 = *v9;
    if (v78 == 42)
    {
      *a1 = v9 + 1;
      doinsert(a1, 1207959552, *(a1 + 40) - v118 + 1, v118);
      v79 = *(a1 + 40);
      v80 = v79 - v118;
      if (!*(a1 + 16))
      {
        v81 = *(a1 + 32);
        if (v79 >= v81)
        {
          v82 = (v81 + 1) / 2;
          v83 = ((v81 + 1 + ((v81 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v82;
          if (v81 < v83)
          {
            if (v83 >> 61)
            {
              goto LABEL_145;
            }

            v98 = realloc(*(a1 + 24), 24 * v82);
            if (v98)
            {
              *(a1 + 24) = v98;
              *(a1 + 32) = v83;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_145:
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }
          }
        }

        v99 = *(a1 + 24);
        v100 = *(a1 + 40);
        *(a1 + 40) = v100 + 1;
        *(v99 + 8 * v100) = v80 | 0x50000000;
        v80 = *(a1 + 40) - v118;
      }

      doinsert(a1, 1476395008, v80 + 1, v118);
      if (*(a1 + 16))
      {
        goto LABEL_19;
      }

      v101 = *(a1 + 32);
      v102 = *(a1 + 40);
      if (v102 >= v101)
      {
        v103 = (v101 + 1) / 2;
        v104 = ((v101 + 1 + ((v101 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v103;
        if (v101 < v104)
        {
          if (v104 >> 61)
          {
            goto LABEL_189;
          }

          v26 = realloc(*(a1 + 24), 24 * v103);
          if (v26)
          {
            *(a1 + 24) = v26;
            *(a1 + 32) = v104;
          }

          else
          {
            if (!*(a1 + 16))
            {
LABEL_189:
              *(a1 + 16) = 12;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
          }
        }
      }

      v27 = *(a1 + 24);
      v28 = *(a1 + 40);
      *(a1 + 40) = v28 + 1;
      *(v27 + 8 * v28) = (v102 - v118) | 0x60000000;
      goto LABEL_19;
    }

    if (v11 != 1 && v78 == 92 && v9[1] == 123)
    {
      v84 = v9 + 2;
      *a1 = v9 + 2;
      v85 = v10 - (v9 + 2);
      if (v85 < 1)
      {
        v87 = 0;
        v88 = v118;
LABEL_164:
        if (!*(a1 + 16))
        {
          *(a1 + 16) = 10;
        }

        *a1 = &nuls;
        *(a1 + 8) = &nuls;
        v90 = v87;
        goto LABEL_178;
      }

      v86 = 0;
      v87 = 0;
      v88 = v118;
      while (*v84 - 48 <= 9 && v87 <= 255)
      {
        v89 = v84 + 1;
        *a1 = v84 + 1;
        v87 = (*v84 + 10 * v87 - 48);
        ++v86;
        --v85;
        ++v84;
        if (v85 <= 0)
        {
          goto LABEL_161;
        }
      }

      v89 = v84;
      if (!v86)
      {
        goto LABEL_164;
      }

LABEL_161:
      if (v87 >= 256)
      {
        goto LABEL_164;
      }

      v90 = v87;
      if (v10 - v89 >= 1)
      {
        v90 = v87;
        if (*v89 == 44)
        {
          v91 = v89 + 1;
          *a1 = v91;
          v92 = v10 - v91;
          if (v10 - v91 < 1)
          {
            repeat(a1, v118, v87, 256);
            v95 = *a1;
            v96 = *(a1 + 8) - *a1;
            v97 = v96 == 1;
            if (v96 <= 1)
            {
              goto LABEL_192;
            }

            goto LABEL_179;
          }

          if (*v91 - 48 > 9)
          {
            repeat(a1, v118, v87, 256);
            v95 = *a1;
            v96 = *(a1 + 8) - *a1;
            v97 = v96 == 1;
            if (v96 <= 1)
            {
              goto LABEL_192;
            }

            goto LABEL_179;
          }

          v93 = 0;
          v90 = 0;
          while (1)
          {
            v94 = &v91[v93];
            if (v91[v93] - 48 > 9 || v90 > 255)
            {
              break;
            }

            *a1 = v94 + 1;
            v90 = (*v94 + 10 * v90 - 48);
            ++v93;
            if (--v92 <= 0)
            {
              LODWORD(v93) = 1;
              break;
            }
          }

          if (v93 && v90 < 256)
          {
            if (v87 > v90)
            {
              goto LABEL_212;
            }
          }

          else
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 10;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
            if (v87 > v90)
            {
LABEL_212:
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 10;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
              repeat(a1, v118, v87, v90);
              v95 = *a1;
              v96 = *(a1 + 8) - *a1;
              v97 = v96 == 1;
              if (v96 <= 1)
              {
LABEL_192:
                if (v97)
                {
LABEL_194:
                  v105 = v95 + 1;
                  while (1)
                  {
                    if (--v96)
                    {
                      if (*(v105 - 1) == 92 && *v105 == 125)
                      {
                        break;
                      }
                    }

                    *a1 = v105++;
                    if (v96 <= 0)
                    {
                      goto LABEL_201;
                    }
                  }

                  if (!*(a1 + 16))
                  {
                    v106 = 10;
                    goto LABEL_203;
                  }
                }

                else
                {
LABEL_201:
                  if (!*(a1 + 16))
                  {
                    v106 = 9;
LABEL_203:
                    *(a1 + 16) = v106;
                  }
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                goto LABEL_19;
              }

              goto LABEL_179;
            }
          }
        }
      }

LABEL_178:
      repeat(a1, v88, v87, v90);
      v95 = *a1;
      v96 = *(a1 + 8) - *a1;
      v97 = v96 == 1;
      if (v96 <= 1)
      {
        goto LABEL_192;
      }

LABEL_179:
      if (*v95 != 92 || v95[1] != 125)
      {
        goto LABEL_194;
      }

      *a1 = v95 + 2;
LABEL_19:
      v22 = 0;
      v9 = *a1;
      v10 = *(a1 + 8);
      v11 = &v10[-*a1];
      v23 = 1;
      if (v11 <= 0)
      {
        break;
      }
    }

    else
    {
LABEL_156:
      if (v30 != 36)
      {
        goto LABEL_19;
      }

      v22 = 1;
      v23 = 1;
      if (v11 <= 0)
      {
        break;
      }
    }
  }

  v107 = *(a1 + 40);
  if (v22)
  {
    v108 = v107 - 1;
    *(a1 + 40) = v107 - 1;
    if (!*(a1 + 16))
    {
      v109 = *(a1 + 32);
      if (v107 > v109)
      {
        v110 = (v109 + 1) / 2;
        v111 = ((v109 + 1 + ((v109 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v110;
        if (v109 < v111)
        {
          if (v111 >> 61)
          {
            goto LABEL_225;
          }

          v112 = realloc(*(a1 + 24), 24 * v110);
          if (v112)
          {
            *(a1 + 24) = v112;
            *(a1 + 32) = v111;
          }

          else
          {
            if (!*(a1 + 16))
            {
LABEL_225:
              *(a1 + 16) = 12;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
          }
        }
      }

      v113 = *(a1 + 24);
      v114 = *(a1 + 40);
      *(a1 + 40) = v114 + 1;
      *(v113 + 8 * v114) = 0x20000000;
      v108 = *(a1 + 40);
    }

    v115 = *(a1 + 56);
    *(v115 + 72) |= 2u;
    ++*(v115 + 80);
    if (v108 == v117)
    {
LABEL_233:
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 14;
      }

      *a1 = &nuls;
      *(a1 + 8) = &nuls;
    }
  }

  else if (v107 == v117)
  {
    goto LABEL_233;
  }
}