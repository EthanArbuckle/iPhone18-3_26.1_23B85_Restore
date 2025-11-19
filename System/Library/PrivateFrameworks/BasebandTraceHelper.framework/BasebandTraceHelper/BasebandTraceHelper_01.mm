void sub_241A23D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,void *>>>>::~unique_ptr[abi:ne200100](&a31);
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
LABEL_3:
    if ((a30 & 0x80000000) == 0)
    {
LABEL_8:
      std::mutex::unlock(&support::log::global_client_descriptor_manager::get_descriptor_instance(std::string const&,std::string const&)::sMutex);
      _Unwind_Resume(a1);
    }

LABEL_7:
    operator delete(a25);
    std::mutex::unlock(&support::log::global_client_descriptor_manager::get_descriptor_instance(std::string const&,std::string const&)::sMutex);
    _Unwind_Resume(a1);
  }

  operator delete(a18);
  if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void *support::log::client::client(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2853A1D78;
  *v12 = *a2;
  v13 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *__p = *a3;
  v11 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  a1[1] = &unk_2853A2110;
  descriptor_instance = support::log::global_client_descriptor_manager::get_descriptor_instance(v12, __p);
  a1[2] = descriptor_instance;
  a1[3] = descriptor_instance;
  a1[4] = descriptor_instance + 1;
  a1[5] = descriptor_instance + 4;
  a1[6] = descriptor_instance + 7;
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(v12[0]);
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:
    pthread_mutex_lock(&ctu::Singleton<support::log::manager_global,support::log::manager_global,ctu::PthreadMutexGuardPolicy<support::log::manager_global>>::sInstance);
    if (!qword_27E5520D0)
    {
      v7 = operator new(0xA8uLL);
      v7[1] = 0;
      v7[2] = 0;
      *v7 = &unk_2853A2348;
      a4 = (v7 + 3);
      support::log::manager_global::manager_global((v7 + 3));
      v8 = off_27E5520D8;
      qword_27E5520D0 = (v7 + 3);
      off_27E5520D8 = v7;
      if (!v8)
      {
LABEL_13:
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
LABEL_14:
        pthread_mutex_unlock(&ctu::Singleton<support::log::manager_global,support::log::manager_global,ctu::PthreadMutexGuardPolicy<support::log::manager_global>>::sInstance);
        a1[7] = a4;
        a1[8] = v7;
        goto LABEL_15;
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    a4 = qword_27E5520D0;
    v7 = off_27E5520D8;
    if (!off_27E5520D8)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v13) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  a1[7] = 0;
  a1[8] = 0;
LABEL_15:
  a1[9] = a4;
  return a1;
}

void sub_241A240B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::__shared_weak_count::~__shared_weak_count(v21);
  operator delete(v23);
  pthread_mutex_unlock(&ctu::Singleton<support::log::manager_global,support::log::manager_global,ctu::PthreadMutexGuardPolicy<support::log::manager_global>>::sInstance);
  _Unwind_Resume(a1);
}

void *support::log::client::client(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = &unk_2853A1D78;
  *v12 = *a2;
  v13 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *__p = *a3;
  v11 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  a1[1] = &unk_2853A2110;
  descriptor_instance = support::log::global_client_descriptor_manager::get_descriptor_instance(v12, __p);
  a1[2] = descriptor_instance;
  a1[3] = descriptor_instance;
  a1[4] = descriptor_instance + 1;
  a1[5] = descriptor_instance + 4;
  a1[6] = descriptor_instance + 7;
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator delete(v12[0]);
    v7 = *a4;
    v8 = a4[1];
    a1[7] = *a4;
    a1[8] = v8;
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v13) < 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v7 = *a4;
  v8 = a4[1];
  a1[7] = *a4;
  a1[8] = v8;
  if (v8)
  {
LABEL_4:
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    v7 = a1[7];
  }

LABEL_5:
  a1[9] = v7;
  return a1;
}

void sub_241A24234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void *support::log::client::client(void *a1, uint64_t a2, uint64_t a3)
{
  *v7 = *a2;
  v8 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *__p = *a3;
  v6 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  support::log::client::client(a1, v7, __p, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((SHIBYTE(v8) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v7[0]);
  return a1;
}

{
  *v7 = *a2;
  v8 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *__p = *a3;
  v6 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  support::log::client::client(a1, v7, __p, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((SHIBYTE(v8) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v7[0]);
  return a1;
}

void sub_241A2431C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_241A24400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void support::log::stdout_delegate::~stdout_delegate(support::log::stdout_delegate *this)
{
  *this = &unk_2853A2038;
  if (*(this + 24) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_2853A2038;
  if (*(this + 24) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      v3 = this;
      std::__shared_weak_count::__release_weak(v2);
      this = v3;
    }
  }

  operator delete(this);
}

uint64_t ctu::PthreadMutexGuardPolicy<support::log::buffer>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t ctu::PthreadMutexGuardPolicy<support::log::manager_global>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void support::log::manager_global::~manager_global(support::log::manager_global *this)
{
  *this = &unk_2853A2080;
  if (*(this + 17))
  {
    v2 = this + 120;
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != this + 120)
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  std::mutex::~mutex((this + 8));
}

{
  *this = &unk_2853A2080;
  if (*(this + 17))
  {
    v2 = this + 120;
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != this + 120)
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  std::mutex::~mutex((this + 8));

  operator delete(this);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__split_buffer<char **>::emplace_back<char **&>(char **a1, void *a2)
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
    std::__throw_bad_array_new_length[abi:ne200100]();
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

uint64_t **std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>>>::find<std::string>(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](v2, v3);
  v5 = qword_27E5523D8;
  if (!qword_27E5523D8)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(qword_27E5523D8);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= qword_27E5523D8)
    {
      v8 = v4 % qword_27E5523D8;
    }
  }

  else
  {
    v8 = (qword_27E5523D8 - 1) & v4;
  }

  v9 = *(qword_27E5523D0 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = qword_27E5523D8 - 1;
      while (1)
      {
        v12 = v10[1];
        if (v12 == v6)
        {
          v13 = *(v10 + 39);
          v14 = v13;
          if (v13 < 0)
          {
            v13 = v10[3];
          }

          if (v13 == v3)
          {
            v15 = v14 >= 0 ? (v10 + 2) : v10[2];
            if (!memcmp(v15, v2, v3))
            {
              return v10;
            }
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        v10 = *v10;
        if (!v10)
        {
          return v10;
        }
      }
    }

    do
    {
      v17 = v10[1];
      if (v17 == v6)
      {
        v18 = *(v10 + 39);
        v19 = v18;
        if (v18 < 0)
        {
          v18 = v10[3];
        }

        if (v18 == v3)
        {
          v20 = v19 >= 0 ? (v10 + 2) : v10[2];
          if (!memcmp(v20, v2, v3))
          {
            return v10;
          }
        }
      }

      else
      {
        if (v17 >= v5)
        {
          v17 %= v5;
        }

        if (v17 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 > 0x40)
    {
      v21 = *(a1 + a2 - 48);
      v22 = *(a1 + a2 - 40);
      v23 = *(a1 + a2 - 24);
      v24 = *(a1 + a2 - 56);
      v25 = *(a1 + a2 - 16);
      v26 = *(a1 + a2 - 8);
      v27 = v24 + v25;
      v28 = 0x9DDFEA08EB382D69 * (v23 ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v21 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ (v21 + a2))));
      v29 = 0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47));
      v30 = *(a1 + a2 - 64) + a2;
      v31 = v21 + v24 + v30;
      v32 = __ROR8__(v31, 44) + v30;
      v33 = __ROR8__(v30 + v22 + v29, 21);
      v34 = v31 + v22;
      v35 = v32 + v33;
      v36 = v27 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
      v37 = v23 + v25 + v36;
      v38 = v37 + v26;
      v39 = __ROR8__(v37, 44) + v36 + __ROR8__(v36 + v22 + v26, 21);
      v41 = *a1;
      v40 = a1 + 4;
      v42 = v41 - 0x4B6D499041670D8DLL * v22;
      v43 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v44 = *(v40 - 3);
        v45 = v42 + v34 + v27 + v44;
        v46 = v40[2];
        v47 = v40[3];
        v48 = v40[1];
        v27 = v48 + v34 - 0x4B6D499041670D8DLL * __ROR8__(v27 + v35 + v46, 42);
        v49 = v29 + v38;
        v50 = *(v40 - 2);
        v51 = *(v40 - 1);
        v52 = *(v40 - 4) - 0x4B6D499041670D8DLL * v35;
        v53 = v52 + v38 + v51;
        v54 = v52 + v44 + v50;
        v34 = v54 + v51;
        v55 = __ROR8__(v54, 44) + v52;
        v56 = (0xB492B66FBE98F273 * __ROR8__(v45, 37)) ^ v39;
        v42 = 0xB492B66FBE98F273 * __ROR8__(v49, 33);
        v35 = v55 + __ROR8__(v53 + v56, 21);
        v57 = v42 + v39 + *v40;
        v38 = v48 + v46 + v57 + v47;
        v39 = __ROR8__(v48 + v46 + v57, 44) + v57 + __ROR8__(v27 + v50 + v57 + v47, 21);
        v40 += 8;
        v29 = v56;
        v43 += 64;
      }

      while (v43);
      v58 = v56 - 0x4B6D499041670D8DLL * (v27 ^ (v27 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v38 ^ ((0x9DDFEA08EB382D69 * (v38 ^ v34)) >> 47) ^ (0x9DDFEA08EB382D69 * (v38 ^ v34)))) ^ ((0x9DDFEA08EB382D69 * (v38 ^ ((0x9DDFEA08EB382D69 * (v38 ^ v34)) >> 47) ^ (0x9DDFEA08EB382D69 * (v38 ^ v34)))) >> 47));
      v59 = v42 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v39 ^ ((0x9DDFEA08EB382D69 * (v39 ^ v35)) >> 47) ^ (0x9DDFEA08EB382D69 * (v39 ^ v35)))) ^ ((0x9DDFEA08EB382D69 * (v39 ^ ((0x9DDFEA08EB382D69 * (v39 ^ v35)) >> 47) ^ (0x9DDFEA08EB382D69 * (v39 ^ v35)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v58)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v58)))) ^ ((0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v58)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v58)))) >> 47));
    }

    else
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9 + __ROR8__(v12, 31);
      v15 = 0xC3A5C85C97CB3127 * (*(a1 + a2 - 24) + v13 + v5 + *(a1 + a2 - 8) + v7 + v14) - 0x651E95C4D06FBFB1 * (v12 + v7 + __ROR8__(v13, 37) + __ROR8__(*(a1 + a2 - 24) + v13, 7) + __ROR8__(*(a1 + a2 - 8) + v7 + v13, 52) + __ROR8__(*(a1 + a2 - 24) + v13 + v5, 31));
      return 0x9AE16A3B2F90404FLL * ((v14 - 0x3C5A37A36834CED9 * (v15 ^ (v15 >> 47))) ^ ((v14 - 0x3C5A37A36834CED9 * (v15 ^ (v15 >> 47))) >> 47));
    }
  }

  else if (a2 > 0x10)
  {
    v16 = a1[1];
    v17 = 0xB492B66FBE98F273 * *a1;
    v18 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v17 - v16, 43);
    v19 = v17 + a2 + __ROR8__(v16 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v20 = 0x9DDFEA08EB382D69 * ((v18 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v19);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) ^ ((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) >> 47));
  }

  else if (a2 < 9)
  {
    if (a2 < 4)
    {
      if (a2)
      {
        v62 = 0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8));
        v63 = 0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)));
        return 0x9AE16A3B2F90404FLL * (v63 ^ v62 ^ ((v63 ^ v62) >> 47));
      }

      else
      {
        return 0x9AE16A3B2F90404FLL;
      }
    }

    else
    {
      v60 = *(a1 + a2 - 4);
      v61 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v60);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v60 ^ (v61 >> 47) ^ v61)) ^ ((0x9DDFEA08EB382D69 * (v60 ^ (v61 >> 47) ^ v61)) >> 47));
    }
  }

  else
  {
    v2 = *(a1 + a2 - 8);
    v3 = __ROR8__(v2 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
  }
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      *(v2 + 40) = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void support::log::global_client_descriptor::~global_client_descriptor(void **this)
{
  *this = &unk_2853A21E0;
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
  *this = &unk_2853A21E0;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
    if ((*(this + 31) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((*(this + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1]);
  v2 = this;

LABEL_5:
  operator delete(v2);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278D04410, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::__shared_ptr_pointer<support::log::delegate::context *,std::shared_ptr<support::log::delegate::context>::__shared_ptr_default_delete<support::log::delegate::context,support::log::delegate::context>,std::allocator<support::log::delegate::context>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::log::delegate::context *,std::shared_ptr<support::log::delegate::context>::__shared_ptr_default_delete<support::log::delegate::context,support::log::delegate::context>,std::allocator<support::log::delegate::context>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<support::log::delegate::context *,std::shared_ptr<support::log::delegate::context>::__shared_ptr_default_delete<support::log::delegate::context,support::log::delegate::context>,std::allocator<support::log::delegate::context>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000241A64BAELL)
  {
    if (((v2 & 0x8000000241A64BAELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000241A64BAELL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000241A64BAELL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<support::log::buffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2853A2260;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void support::log::buffer::~buffer(support::log::buffer *this)
{
  *this = &unk_2853A22B0;
  v2 = *(this + 9);
  v3 = this + 80;
  if (v2 != this + 80)
  {
    do
    {
      free(*(v2 + 4));
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  std::deque<char *>::~deque[abi:ne200100](this + 96);
  std::__tree<char *>::destroy(*(this + 10));
  std::mutex::~mutex((this + 8));
}

{
  *this = &unk_2853A22B0;
  v2 = *(this + 9);
  v3 = this + 80;
  if (v2 != this + 80)
  {
    do
    {
      free(*(v2 + 4));
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  std::deque<char *>::~deque[abi:ne200100](this + 96);
  std::__tree<char *>::destroy(*(this + 10));
  std::mutex::~mutex((this + 8));

  operator delete(this);
}

uint64_t std::deque<char *>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<char *>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<char *>::destroy(*a1);
    std::__tree<char *>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__shared_ptr_pointer<support::log::manager *,std::shared_ptr<support::log::manager>::__shared_ptr_default_delete<support::log::manager,support::log::manager>,std::allocator<support::log::manager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::log::manager *,std::shared_ptr<support::log::manager>::__shared_ptr_default_delete<support::log::manager,support::log::manager>,std::allocator<support::log::manager>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<support::log::manager *,std::shared_ptr<support::log::manager>::__shared_ptr_default_delete<support::log::manager,support::log::manager>,std::allocator<support::log::manager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000241A64D3ALL)
  {
    if (((v2 & 0x8000000241A64D3ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000241A64D3ALL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000241A64D3ALL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<support::log::manager_global>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2853A2348;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t __cxx_global_var_init_3()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_241A16000);
  }

  return result;
}

uint64_t __cxx_global_var_init_5()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::buffer>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance, &dword_241A16000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_241A16000);
  }

  return result;
}

uint64_t __cxx_global_var_init_6()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::manager_global>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::manager_global,support::log::manager_global,ctu::PthreadMutexGuardPolicy<support::log::manager_global>>::sInstance, &dword_241A16000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance, &dword_241A16000);
  }

  return result;
}

int *support::crc::generateCRC32(int *this, unsigned int *a2, const unsigned __int8 *a3)
{
  v3 = *this;
  v4 = ~*this;
  *this = v4;
  if (a3)
  {
    do
    {
      v5 = *a2;
      a2 = (a2 + 1);
      v4 = support::crc::crc32c_table[v4 ^ v5] ^ (v4 >> 8);
      *this = v4;
      --a3;
    }

    while (a3);
    v3 = ~v4;
  }

  *this = v3;
  return this;
}

void support::parsers::acp::ACPDataType::~ACPDataType(support::parsers::acp::ACPDataType *this)
{
  *this = &unk_2853A2398;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
    *(this + 1) = 0;
  }
}

BOOL support::parsers::acp::ACPDataType::init(support::parsers::acp::ACPDataType *this)
{
  v9 = *MEMORY[0x277D85DE8];
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  *(this + 1) = Mutable;
  if (Mutable)
  {
    *(this + 2) = 0;
  }

  else
  {
    support::parsers::acp::sGetOsLogContext(0);
    v5 = qword_27E552410;
    v6 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    Mutable = 0;
    if (v6)
    {
      v7 = 136315138;
      v8 = "init";
      _os_log_error_impl(&dword_241A16000, v5, OS_LOG_TYPE_ERROR, "[%s] Failed to init Trace Data Descriptor\n", &v7, 0xCu);
      Mutable = 0;
    }
  }

  result = Mutable != 0;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void support::parsers::acp::sGetOsLogContext(support::parsers::acp *this)
{
  if ((atomic_load_explicit(&qword_27E552400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552400))
  {
    qword_27E552408 = 0;
    qword_27E552410 = 0;
    __cxa_guard_release(&qword_27E552400);
  }

  if (_MergedGlobals_0 != -1)
  {

    dispatch_once(&_MergedGlobals_0, &__block_literal_global);
  }
}

BOOL support::parsers::acp::ACPDataType::appendToRawBytes(support::parsers::acp::ACPDataType *this, const unsigned __int8 *a2, CFIndex length)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2 && length && (this = *(this + 1)) != 0)
  {
    CFDataAppendBytes(this, a2, length);
    result = 1;
  }

  else
  {
    support::parsers::acp::sGetOsLogContext(this);
    v5 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v6 = 136315138;
      v7 = "appendToRawBytes";
      _os_log_error_impl(&dword_241A16000, v5, OS_LOG_TYPE_ERROR, "[%s] invalid input data\n", &v6, 0xCu);
      result = 0;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL support::parsers::acp::SuperFrame::init(support::parsers::acp::SuperFrame *this, char a2)
{
  v12 = *MEMORY[0x277D85DE8];
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  v3 = *(this + 8);
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = a2;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a2 = v4;
  }

  *(this + 72) = a2;
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  *(this + 1) = Mutable;
  if (Mutable)
  {
    *(this + 2) = 0;
  }

  else
  {
    support::parsers::acp::sGetOsLogContext(0);
    v8 = qword_27E552410;
    v9 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    Mutable = 0;
    if (v9)
    {
      v10 = 136315138;
      v11 = "init";
      _os_log_error_impl(&dword_241A16000, v8, OS_LOG_TYPE_ERROR, "[%s] Failed to init Trace Data Descriptor\n", &v10, 0xCu);
      Mutable = 0;
    }
  }

  result = Mutable != 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void support::parsers::acp::SuperFrame::create(support::parsers::acp::SuperFrame *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  v11 = *MEMORY[0x277D85DE8];
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x50uLL);
  v4[3] = 0u;
  v4[4] = 0u;
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *v4 = &unk_2853A23F8;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *a2 = v4;
  v5 = operator new(0x20uLL);
  *v5 = &unk_2853A25A0;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  a2[1] = v5;
  v6 = support::parsers::acp::SuperFrame::init(v4, v2);
  if (!v6)
  {
    support::parsers::acp::sGetOsLogContext(v6);
    v8 = qword_27E552410;
    if (os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "create";
      _os_log_error_impl(&dword_241A16000, v8, OS_LOG_TYPE_ERROR, "[%s] Failed to init SuperFrame\n", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

BOOL support::parsers::acp::SuperFrame::validateHeader(support::parsers::acp::SuperFrame *this)
{
  v34 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27E552400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552400))
  {
    qword_27E552408 = 0;
    qword_27E552410 = 0;
    __cxa_guard_release(&qword_27E552400);
  }

  if (_MergedGlobals_0 == -1)
  {
    v2 = qword_27E552410;
    if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

LABEL_13:
    v19 = *(this + 3);
    v30 = 67109888;
    *v31 = v19;
    *&v31[4] = 1024;
    *&v31[6] = WORD1(v19);
    *v32 = 1024;
    *&v32[2] = BYTE4(v19);
    LOWORD(v33[0]) = 1024;
    *(v33 + 2) = (HIDWORD(v19) >> 8);
    _os_log_debug_impl(&dword_241A16000, v2, OS_LOG_TYPE_DEBUG, "[SuperFrame Header]: SYNC1: 0x%x, SYNC2: 0x%x, VER: 0x%x, FSN: 0x%x\n", &v30, 0x1Au);
    if (atomic_load_explicit(&qword_27E552400, memory_order_acquire))
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  dispatch_once(&_MergedGlobals_0, &__block_literal_global);
  v2 = qword_27E552410;
  if (os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_13;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_27E552400, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_14:
  if (__cxa_guard_acquire(&qword_27E552400))
  {
    qword_27E552408 = 0;
    qword_27E552410 = 0;
    __cxa_guard_release(&qword_27E552400);
  }

LABEL_5:
  if (_MergedGlobals_0 == -1)
  {
    v3 = qword_27E552410;
    v4 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_DEBUG);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global);
    v3 = qword_27E552410;
    v4 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_DEBUG);
    if (!v4)
    {
LABEL_7:
      v5 = *(this + 3);
      if (v5 == 1520828415)
      {
        goto LABEL_8;
      }

LABEL_18:
      support::parsers::acp::sGetOsLogContext(v4);
      v22 = qword_27E552410;
      result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_11;
      }

      v30 = 136315138;
      *v31 = "validateHeader";
      v23 = "[%s] Invalid SYNC1/SYNC2\n";
      v24 = v22;
      v25 = 12;
LABEL_24:
      _os_log_error_impl(&dword_241A16000, v24, OS_LOG_TYPE_ERROR, v23, &v30, v25);
      result = 0;
      goto LABEL_11;
    }
  }

  v20 = *(this + 31);
  v21 = *(this + 4);
  v30 = 67109888;
  *v31 = v20;
  *&v31[4] = 1024;
  *&v31[6] = v21 & 0xFFFFFF;
  *v32 = 1024;
  *&v32[2] = BYTE3(v21) & 0xF;
  LOWORD(v33[0]) = 1024;
  *(v33 + 2) = HIDWORD(v21);
  _os_log_debug_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEBUG, "[SuperFrame Header]: BIDX: %u, FSIZE: %u, SVER: %u, HCRC32: 0x%x\n", &v30, 0x1Au);
  v5 = *(this + 3);
  if (v5 != 1520828415)
  {
    goto LABEL_18;
  }

LABEL_8:
  v6 = v5 >> 40;
  v7 = support::crc::crc32c_table[BYTE4(v5) ^ 0x69] ^ 0xED3965;
  v8 = support::crc::crc32c_table[(v7 ^ v6)] ^ (v7 >> 8);
  v9 = support::crc::crc32c_table[v8 ^ *(this + 30)] ^ (v8 >> 8);
  v10 = support::crc::crc32c_table[v9 ^ *(this + 31)] ^ (v9 >> 8);
  v11 = support::crc::crc32c_table[v10 ^ *(this + 32)] ^ (v10 >> 8);
  v12 = support::crc::crc32c_table[v11 ^ *(this + 33)] ^ (v11 >> 8);
  v13 = support::crc::crc32c_table[v12 ^ *(this + 34)] ^ (v12 >> 8);
  v14 = support::crc::crc32c_table[v13 ^ *(this + 35)] ^ ~(v13 >> 8);
  v15 = *(this + 4);
  if (v14 != HIDWORD(v15))
  {
    support::parsers::acp::sGetOsLogContext(v4);
    v26 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_11;
    }

    v27 = *(this + 9);
    v30 = 136315650;
    *v31 = "validateHeader";
    *&v31[8] = 1024;
    *v32 = v14;
    *&v32[4] = 1024;
    v33[0] = v27;
    v23 = "[%s] CRC32C mismatch, expected: 0x%x, received: 0x%x\n";
    v24 = v26;
    v25 = 24;
    goto LABEL_24;
  }

  v16 = BYTE3(v15) & 0xF;
  *(this + 12) = v16;
  if (v16 >= 3)
  {
    support::parsers::acp::sGetOsLogContext(v4);
    v28 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_11;
    }

    v29 = *(this + 12);
    v30 = 136315394;
    *v31 = "validateHeader";
    *&v31[8] = 1024;
    *v32 = v29;
    v23 = "[%s] Invalid ACP Payload type: %d\n";
    v24 = v28;
    v25 = 18;
    goto LABEL_24;
  }

  result = 1;
LABEL_11:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL support::parsers::acp::SuperFrame::parseHeader(support::parsers::acp::SuperFrame *this, unsigned __int8 *a2, unsigned int a3, unsigned int *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3 || !a4)
  {
    support::parsers::acp::sGetOsLogContext(this);
    v10 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_8;
    }

    v19 = 136315138;
    v20 = "parseHeader";
    v11 = "[%s], invalid input parameter\n";
    goto LABEL_18;
  }

  if (a3 <= 0xF)
  {
    support::parsers::acp::sGetOsLogContext(this);
    v13 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_8;
    }

    v19 = 136315394;
    v20 = "parseHeader";
    v21 = 1024;
    v22 = a3;
    v11 = "[%s] input size: %u less than superframe header size\n";
    v14 = v13;
    v15 = 18;
LABEL_19:
    _os_log_error_impl(&dword_241A16000, v14, OS_LOG_TYPE_ERROR, v11, &v19, v15);
    result = 0;
    goto LABEL_8;
  }

  *(this + 24) = *a2;
  *a4 = 16;
  v6 = support::parsers::acp::SuperFrame::validateHeader(this);
  if (!v6)
  {
    support::parsers::acp::sGetOsLogContext(v6);
    v10 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_8;
    }

    v19 = 136315138;
    v20 = "parseHeader";
    v11 = "[%s] Failed to validate frame header\n";
    goto LABEL_18;
  }

  *(this + 4) = *(this + 8) & 0xFFFFFF;
  v7 = *(this + 1);
  if (!v7)
  {
    support::parsers::acp::sGetOsLogContext(0);
    v16 = qword_27E552410;
    v17 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      v19 = 136315138;
      v20 = "appendToRawBytes";
      _os_log_error_impl(&dword_241A16000, v16, OS_LOG_TYPE_ERROR, "[%s] invalid input data\n", &v19, 0xCu);
      support::parsers::acp::sGetOsLogContext(v18);
      v10 = qword_27E552410;
      result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_8;
      }
    }

    else
    {
      support::parsers::acp::sGetOsLogContext(v17);
      v10 = qword_27E552410;
      result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_8;
      }
    }

    v19 = 136315138;
    v20 = "parseHeader";
    v11 = "[%s] Failed to append to raw bytes\n";
LABEL_18:
    v14 = v10;
    v15 = 12;
    goto LABEL_19;
  }

  CFDataAppendBytes(v7, a2, 16);
  result = 1;
LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL support::parsers::acp::SuperFrame::parseFooter(__CFData **this, unsigned __int8 *a2, unsigned int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3)
  {
    support::parsers::acp::sGetOsLogContext(this);
    v16 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_10;
    }

    v27 = 136315138;
    *v28 = "parseFooter";
    v17 = "[%s] Invalid input parameter\n";
    goto LABEL_23;
  }

  if (a3 <= 7)
  {
    support::parsers::acp::sGetOsLogContext(this);
    v19 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_10;
    }

    v27 = 136315650;
    *v28 = "parseFooter";
    *&v28[8] = 1024;
    v29 = a3;
    v30 = 2048;
    v31 = 8;
    v17 = "[%s] Input size (%u) less than footer size: %zu\n";
    v20 = v19;
    v21 = 28;
LABEL_24:
    _os_log_error_impl(&dword_241A16000, v20, OS_LOG_TYPE_ERROR, v17, &v27, v21);
    result = 0;
    goto LABEL_10;
  }

  v5 = *(this + 9);
  this[5] = *a2;
  if ((atomic_load_explicit(&qword_27E552400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552400))
  {
    qword_27E552408 = 0;
    qword_27E552410 = 0;
    __cxa_guard_release(&qword_27E552400);
  }

  if (_MergedGlobals_0 == -1)
  {
    v6 = qword_27E552410;
    v7 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_DEBUG);
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global);
    v6 = qword_27E552410;
    v7 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_DEBUG);
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v22 = this[5];
  v27 = 67109376;
  *v28 = v22;
  *&v28[4] = 1024;
  *&v28[6] = HIDWORD(v22);
  _os_log_debug_impl(&dword_241A16000, v6, OS_LOG_TYPE_DEBUG, "[SuperFrame Footer] - TERMRN: 0x%x, TERMRNCRC32: 0x%x\n", &v27, 0xEu);
LABEL_7:
  v8 = *(this + 10);
  v9 = support::crc::crc32c_table[(v5 ^ ~v8)] ^ (~v5 >> 8);
  v10 = support::crc::crc32c_table[(v9 ^ BYTE1(v8))] ^ (v9 >> 8);
  v11 = support::crc::crc32c_table[(v10 ^ BYTE2(v8))] ^ (v10 >> 8);
  v12 = support::crc::crc32c_table[v11 ^ HIBYTE(v8)] ^ ~(v11 >> 8);
  if (v12 != *(this + 11))
  {
    support::parsers::acp::sGetOsLogContext(v7);
    v23 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_10;
    }

    v24 = *(this + 11);
    v27 = 136315650;
    *v28 = "parseFooter";
    *&v28[8] = 1024;
    v29 = v12;
    v30 = 1024;
    LODWORD(v31) = v24;
    v17 = "[%s] Footer CRC Mismatch, calculated: 0x%x, received: 0x%x\n";
    v20 = v23;
    v21 = 24;
    goto LABEL_24;
  }

  v13 = this[1];
  if (v13)
  {
    CFDataAppendBytes(v13, a2, 8);
    result = 1;
    goto LABEL_10;
  }

  support::parsers::acp::sGetOsLogContext(0);
  v25 = qword_27E552410;
  v26 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
  if (v26)
  {
    v27 = 136315138;
    *v28 = "appendToRawBytes";
    _os_log_error_impl(&dword_241A16000, v25, OS_LOG_TYPE_ERROR, "[%s] invalid input data\n", &v27, 0xCu);
  }

  support::parsers::acp::sGetOsLogContext(v26);
  v16 = qword_27E552410;
  result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v27 = 136315138;
    *v28 = "parseFooter";
    v17 = "[%s] Failed to append to raw bytes\n";
LABEL_23:
    v20 = v16;
    v21 = 12;
    goto LABEL_24;
  }

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL support::parsers::acp::SuperFrame::parsePayload(support::parsers::acp::SuperFrame *this, unsigned __int8 *a2, uint64_t a3, unsigned int *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a3;
    if (a3)
    {
      if (a4)
      {
        v7 = *(this + 4);
        v6 = *(this + 5);
        v8 = v7 - v6;
        if (v7 < v6)
        {
          support::parsers::acp::sGetOsLogContext(this);
          v16 = qword_27E552410;
          result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
          if (result)
          {
            v18 = *(this + 4);
            v17 = *(this + 5);
            v23 = 136315650;
            v24 = "parsePayload";
            v25 = 1024;
            v26 = v17;
            v27 = 1024;
            v28 = v18;
            v12 = "[%s] Received Payload Size: %u, Expected Payload Size: %u\n";
            v19 = v16;
            v20 = 24;
LABEL_24:
            _os_log_error_impl(&dword_241A16000, v19, OS_LOG_TYPE_ERROR, v12, &v23, v20);
            result = 0;
            goto LABEL_14;
          }

          goto LABEL_14;
        }

        if (v8 <= a3)
        {
          *a4 = v8;
          v13 = support::parsers::acp::SuperFrame::parseACPChunks(this, a2, v7 - v6);
          v4 = v8;
          if (!v13)
          {
            support::parsers::acp::sGetOsLogContext(v13);
            v10 = qword_27E552410;
            result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
            if (result)
            {
              v23 = 136315138;
              v24 = "parsePayload";
              v12 = "[%s] failed to parse ACP Chunks\n";
              goto LABEL_23;
            }

            goto LABEL_14;
          }
        }

        else
        {
          *a4 = a3;
          v9 = support::parsers::acp::SuperFrame::parseACPChunks(this, a2, a3);
          if (!v9)
          {
            support::parsers::acp::sGetOsLogContext(v9);
            v10 = qword_27E552410;
            result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
            if (result)
            {
              v23 = 136315138;
              v24 = "parsePayload";
              v12 = "[%s] failed to parse Base ACP Chunks\n";
LABEL_23:
              v19 = v10;
              v20 = 12;
              goto LABEL_24;
            }

            goto LABEL_14;
          }
        }

        *(this + 5) += v4;
        if ((atomic_load_explicit(&qword_27E552400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552400))
        {
          qword_27E552408 = 0;
          qword_27E552410 = 0;
          __cxa_guard_release(&qword_27E552400);
        }

        if (_MergedGlobals_0 == -1)
        {
          v14 = qword_27E552410;
          if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_DEBUG))
          {
LABEL_13:
            result = 1;
            goto LABEL_14;
          }
        }

        else
        {
          dispatch_once(&_MergedGlobals_0, &__block_literal_global);
          v14 = qword_27E552410;
          if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_13;
          }
        }

        v21 = *(this + 4);
        v22 = *(this + 5);
        v23 = 136315650;
        v24 = "parsePayload";
        v25 = 1024;
        v26 = v21;
        v27 = 1024;
        v28 = v22;
        _os_log_debug_impl(&dword_241A16000, v14, OS_LOG_TYPE_DEBUG, "[%s] expectedPayloadSize: %u, receivedPayloadSize: %u\n", &v23, 0x18u);
        goto LABEL_13;
      }
    }
  }

  support::parsers::acp::sGetOsLogContext(this);
  v10 = qword_27E552410;
  result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v23 = 136315138;
    v24 = "parsePayload";
    v12 = "[%s] invalid input parameter\n";
    goto LABEL_23;
  }

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL support::parsers::acp::SuperFrame::parseACPChunks(support::parsers::acp::SuperFrame *this, unsigned __int8 *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = a3;
    if (a3)
    {
      v4 = a2;
      v5 = this;
      v6 = a3;
      while (1)
      {
        if (v6 > v3)
        {
          support::parsers::acp::sGetOsLogContext(this);
          v24 = qword_27E552410;
          result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_34;
          }

          *buf = 136315650;
          *&buf[4] = "parseACPChunks";
          *&buf[12] = 1024;
          *&buf[14] = v6;
          v35 = 1024;
          v36 = v3;
          v25 = "[%s] size remaining: %u, input size: %u\n";
          v26 = v24;
          v27 = 24;
          goto LABEL_46;
        }

        v7 = *(v5 + 7);
        if (v7)
        {
          goto LABEL_17;
        }

        if (*(v5 + 12))
        {
          support::parsers::acp::LSCACPChunk::create(*(v5 + 72), buf);
        }

        else
        {
          support::parsers::acp::BaseACPChunk::create(*(v5 + 72), buf);
        }

        v8 = *buf;
        *buf = 0;
        *&buf[8] = 0;
        v9 = *(v5 + 8);
        *(v5 + 56) = v8;
        if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
          v10 = *&buf[8];
          if (!*&buf[8])
          {
            goto LABEL_16;
          }
        }

        else
        {
          v10 = *&buf[8];
          if (!*&buf[8])
          {
            goto LABEL_16;
          }
        }

        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

LABEL_16:
        v7 = *(v5 + 7);
        if (!v7)
        {
          support::parsers::acp::sGetOsLogContext(0);
          v30 = qword_27E552410;
          result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_34;
          }

          *buf = 136315138;
          *&buf[4] = "parseACPChunks";
          v25 = "[%s] failed to allocate ACP Chunk\n";
          goto LABEL_45;
        }

LABEL_17:
        if ((*(*v7 + 32))(v7))
        {
          v33 = 0;
          this = (*(**(v5 + 7) + 24))(*(v5 + 7), v4, v6, &v33);
          if ((this & 1) == 0)
          {
            support::parsers::acp::sGetOsLogContext(this);
            v28 = qword_27E552410;
            if (os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = "parseACPChunks";
              v19 = "[%s] Failed to parse payload\n";
              goto LABEL_51;
            }

            goto LABEL_53;
          }

          v11 = v33;
          if (v33 > v6)
          {
            support::parsers::acp::sGetOsLogContext(this);
            v29 = qword_27E552410;
            if (os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "parseACPChunks";
              *&buf[12] = 1024;
              *&buf[14] = v33;
              v35 = 1024;
              v36 = v6;
              v19 = "[%s] Failed to parse payload - sizeProcessed: %u, sizeRemaining: %u\n";
              v20 = v29;
              v21 = 24;
              goto LABEL_52;
            }

LABEL_53:
            result = 0;
            goto LABEL_34;
          }

          v12 = *(v5 + 7);
          if (*(v12 + 20) == *(v12 + 16))
          {
            if (*(v12 + 24) == 1)
            {
              v13 = *(v12 + 8);
              BytePtr = CFDataGetBytePtr(v13);
              Length = CFDataGetLength(v13);
              if (!BytePtr || (v16 = Length, !Length) || (Length = *(v5 + 1)) == 0)
              {
                support::parsers::acp::sGetOsLogContext(Length);
                v31 = qword_27E552410;
                v32 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
                if (v32)
                {
                  *buf = 136315138;
                  *&buf[4] = "appendToRawBytes";
                  _os_log_error_impl(&dword_241A16000, v31, OS_LOG_TYPE_ERROR, "[%s] invalid input data\n", buf, 0xCu);
                }

                support::parsers::acp::sGetOsLogContext(v32);
                v28 = qword_27E552410;
                if (os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315138;
                  *&buf[4] = "parseACPChunks";
                  v19 = "[%s] Failed to append to raw bytes\n";
LABEL_51:
                  v20 = v28;
                  v21 = 12;
LABEL_52:
                  _os_log_error_impl(&dword_241A16000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
                }

                goto LABEL_53;
              }

              CFDataAppendBytes(Length, BytePtr, v16);
            }

            v17 = *(v5 + 8);
            *(v5 + 7) = 0;
            *(v5 + 8) = 0;
            if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v17->__on_zero_shared)(v17);
              std::__shared_weak_count::__release_weak(v17);
            }
          }
        }

        else
        {
          v33 = 0;
          this = (*(**(v5 + 7) + 16))(*(v5 + 7), v4, v6, &v33);
          if ((this & 1) == 0)
          {
            support::parsers::acp::sGetOsLogContext(this);
            v28 = qword_27E552410;
            if (os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = "parseACPChunks";
              v19 = "[%s] Failed to parse ACP Header\n";
              goto LABEL_51;
            }

            goto LABEL_53;
          }

          v11 = v33;
          if (v33 > v6)
          {
            support::parsers::acp::sGetOsLogContext(this);
            v18 = qword_27E552410;
            if (os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "parseACPChunks";
              *&buf[12] = 1024;
              *&buf[14] = v33;
              v35 = 1024;
              v36 = v6;
              v19 = "[%s] Failed to parse ACP Header - sizeProcessed: %u, sizeRemaining: %u\n";
              v20 = v18;
              v21 = 24;
              goto LABEL_52;
            }

            goto LABEL_53;
          }
        }

        v4 += v11;
        v6 = v6 - v11;
        if (!v6)
        {
          result = 1;
          goto LABEL_34;
        }
      }
    }
  }

  support::parsers::acp::sGetOsLogContext(this);
  v30 = qword_27E552410;
  result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136315138;
    *&buf[4] = "parseACPChunks";
    v25 = "[%s] invalid input parameter\n";
LABEL_45:
    v26 = v30;
    v27 = 12;
LABEL_46:
    _os_log_error_impl(&dword_241A16000, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
    result = 0;
  }

LABEL_34:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void support::parsers::acp::BaseACPChunk::create(support::parsers::acp::BaseACPChunk *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  v13 = *MEMORY[0x277D85DE8];
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x28uLL);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *v4 = &unk_2853A2490;
  *a2 = v4;
  v5 = operator new(0x20uLL);
  *v5 = &unk_2853A25F0;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  a2[1] = v5;
  *(v4 + 26) = 0;
  *(v4 + 8) = 0;
  *(v4 + 18) = 0;
  v4[24] = 1;
  v4[25] = v2;
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  *(v4 + 1) = Mutable;
  if (Mutable)
  {
    *(v4 + 2) = 0;
  }

  else
  {
    support::parsers::acp::sGetOsLogContext(0);
    v8 = qword_27E552410;
    v9 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      v11 = 136315138;
      v12 = "init";
      _os_log_error_impl(&dword_241A16000, v8, OS_LOG_TYPE_ERROR, "[%s] Failed to init Trace Data Descriptor\n", &v11, 0xCu);
    }

    support::parsers::acp::sGetOsLogContext(v9);
    v10 = qword_27E552410;
    if (os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "create";
      _os_log_error_impl(&dword_241A16000, v10, OS_LOG_TYPE_ERROR, "[%s] failed to init ACP Chunk\n", &v11, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void support::parsers::acp::LSCACPChunk::create(support::parsers::acp::LSCACPChunk *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  v13 = *MEMORY[0x277D85DE8];
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x30uLL);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = &unk_2853A24E0;
  *a2 = v4;
  v5 = operator new(0x20uLL);
  *v5 = &unk_2853A2640;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  a2[1] = v5;
  *(v4 + 11) = 0;
  *(v4 + 34) = 0;
  *(v4 + 26) = 0;
  v4[24] = 1;
  v4[25] = v2;
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  *(v4 + 1) = Mutable;
  if (Mutable)
  {
    *(v4 + 2) = 0;
  }

  else
  {
    support::parsers::acp::sGetOsLogContext(0);
    v8 = qword_27E552410;
    v9 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      v11 = 136315138;
      v12 = "init";
      _os_log_error_impl(&dword_241A16000, v8, OS_LOG_TYPE_ERROR, "[%s] Failed to init Trace Data Descriptor\n", &v11, 0xCu);
    }

    support::parsers::acp::sGetOsLogContext(v9);
    v10 = qword_27E552410;
    if (os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "create";
      _os_log_error_impl(&dword_241A16000, v10, OS_LOG_TYPE_ERROR, "[%s] failed to init LSCACP Chunk\n", &v11, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

BOOL support::parsers::acp::SuperFrame::postProcess(const __CFData **this)
{
  v62 = *MEMORY[0x277D85DE8];
  if (*(this + 5) != *(this + 4))
  {
    support::parsers::acp::sGetOsLogContext(this);
    v4 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_27;
    }

    v56 = 136315138;
    v57 = "postProcess";
    v6 = "[%s] Can't do postprocess if payload is incomplete\n";
    goto LABEL_7;
  }

  v2 = this[1];
  Length = CFDataGetLength(v2);
  if (Length > 0x18uLL)
  {
    v9 = (Length - 24);
    if ((Length & 3) != 0)
    {
      support::parsers::acp::sGetOsLogContext(Length);
      v39 = qword_27E552410;
      result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_27;
      }

      v56 = 136315394;
      v57 = "postProcess";
      v58 = 1024;
      v59 = v9;
      v6 = "[%s] Final Saved Payload Size (%u) must be 4 bytes aligned\n";
      v7 = v39;
      v8 = 18;
      goto LABEL_8;
    }

    MutableBytePtr = CFDataGetMutableBytePtr(v2);
    if ((atomic_load_explicit(&qword_27E552400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552400))
    {
      qword_27E552408 = 0;
      qword_27E552410 = 0;
      __cxa_guard_release(&qword_27E552400);
    }

    if (_MergedGlobals_0 == -1)
    {
      v11 = qword_27E552410;
      v12 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_DEBUG);
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global);
      v11 = qword_27E552410;
      v12 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_DEBUG);
      if (!v12)
      {
LABEL_13:
        v13 = *(MutableBytePtr + 1);
        v14 = this[4] ^ v13;
        if ((v14 & 0xFFFFFF) == 0)
        {
LABEL_14:
          if (!HIDWORD(v14))
          {
            v15 = v13 & 0xFFFFFFFFFF000000 | v9 & 0xFFFFFC;
            *(MutableBytePtr + 1) = v15;
            v16 = support::crc::crc32c_table[(LOBYTE(support::crc::crc32c_table[(LOBYTE(support::crc::crc32c_table[~LOBYTE(support::crc::crc32c_table[~*MutableBytePtr]) ^ MutableBytePtr[1]]) ^ (~LOWORD(support::crc::crc32c_table[~*MutableBytePtr]) >> 8)) ^ MutableBytePtr[2]]) ^ ((LOWORD(support::crc::crc32c_table[~LOBYTE(support::crc::crc32c_table[~*MutableBytePtr]) ^ MutableBytePtr[1]]) ^ ((support::crc::crc32c_table[~*MutableBytePtr] ^ 0xFFFFFFu) >> 8)) >> 8)) ^ MutableBytePtr[3]];
            v17 = v16 ^ ((support::crc::crc32c_table[(LOBYTE(support::crc::crc32c_table[~LOBYTE(support::crc::crc32c_table[~*MutableBytePtr]) ^ MutableBytePtr[1]]) ^ (~LOWORD(support::crc::crc32c_table[~*MutableBytePtr]) >> 8)) ^ MutableBytePtr[2]] ^ ((support::crc::crc32c_table[~LOBYTE(support::crc::crc32c_table[~*MutableBytePtr]) ^ MutableBytePtr[1]] ^ ((support::crc::crc32c_table[~*MutableBytePtr] ^ 0xFFFFFFu) >> 8)) >> 8)) >> 8);
            v18 = support::crc::crc32c_table[(v16 ^ ((LOWORD(support::crc::crc32c_table[(LOBYTE(support::crc::crc32c_table[~LOBYTE(support::crc::crc32c_table[~*MutableBytePtr]) ^ MutableBytePtr[1]]) ^ (~LOWORD(support::crc::crc32c_table[~*MutableBytePtr]) >> 8)) ^ MutableBytePtr[2]]) ^ ((support::crc::crc32c_table[~LOBYTE(support::crc::crc32c_table[~*MutableBytePtr]) ^ MutableBytePtr[1]] ^ ((support::crc::crc32c_table[~*MutableBytePtr] ^ 0xFFFFFFu) >> 8)) >> 8)) >> 8)) ^ MutableBytePtr[4]] ^ (v17 >> 8);
            v19 = support::crc::crc32c_table[v18 ^ MutableBytePtr[5]] ^ (v18 >> 8);
            v20 = support::crc::crc32c_table[v19 ^ MutableBytePtr[6]] ^ (v19 >> 8);
            v21 = support::crc::crc32c_table[v20 ^ MutableBytePtr[7]] ^ (v20 >> 8);
            v22 = support::crc::crc32c_table[v21 ^ v9 & 0xFC] ^ (v21 >> 8);
            v23 = support::crc::crc32c_table[(v22 ^ BYTE1(v9))] ^ (v22 >> 8);
            v24 = MutableBytePtr[10];
            v25 = support::crc::crc32c_table[v23 ^ v24] ^ (v23 >> 8);
            v26 = support::crc::crc32c_table[(LOBYTE(support::crc::crc32c_table[v23 ^ v24]) ^ BYTE1(v23)) ^ MutableBytePtr[11]];
            *(MutableBytePtr + 1) = v15 | ((v26 ^ ~(v25 >> 8)) << 32);
            if ((atomic_load_explicit(&qword_27E552400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552400))
            {
              qword_27E552408 = 0;
              qword_27E552410 = 0;
              __cxa_guard_release(&qword_27E552400);
            }

            if (_MergedGlobals_0 == -1)
            {
              v27 = qword_27E552410;
              if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_18;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_0, &__block_literal_global);
              v27 = qword_27E552410;
              if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_DEBUG))
              {
LABEL_18:
                if (atomic_load_explicit(&qword_27E552400, memory_order_acquire))
                {
                  goto LABEL_19;
                }

LABEL_43:
                if (__cxa_guard_acquire(&qword_27E552400))
                {
                  qword_27E552408 = 0;
                  qword_27E552410 = 0;
                  __cxa_guard_release(&qword_27E552400);
                }

LABEL_19:
                v28 = &MutableBytePtr[v9];
                if (_MergedGlobals_0 == -1)
                {
                  v29 = qword_27E552410;
                  v30 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_DEBUG);
                  if (!v30)
                  {
                    goto LABEL_21;
                  }
                }

                else
                {
                  dispatch_once(&_MergedGlobals_0, &__block_literal_global);
                  v29 = qword_27E552410;
                  v30 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_DEBUG);
                  if (!v30)
                  {
LABEL_21:
                    v31 = *(v28 + 2);
                    v32 = this[5];
                    if (v31 == v32)
                    {
LABEL_22:
                      if (!((v32 ^ v31) >> 32))
                      {
                        v33 = v26 ^ (v25 >> 8);
                        v34 = support::crc::crc32c_table[(v33 ^ v31)];
                        v35 = support::crc::crc32c_table[(v34 ^ BYTE1(v33) ^ BYTE1(v31))] ^ ((v34 ^ (v33 >> 8)) >> 8);
                        v36 = support::crc::crc32c_table[(v35 ^ BYTE2(v31))] ^ (v35 >> 8);
                        *(v28 + 2) = v31 | ((support::crc::crc32c_table[v36 ^ BYTE3(v31)] ^ ~(v36 >> 8)) << 32);
                        if ((atomic_load_explicit(&qword_27E552400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552400))
                        {
                          qword_27E552408 = 0;
                          qword_27E552410 = 0;
                          __cxa_guard_release(&qword_27E552400);
                        }

                        if (_MergedGlobals_0 == -1)
                        {
                          v37 = qword_27E552410;
                          if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_DEBUG))
                          {
LABEL_26:
                            result = 1;
                            goto LABEL_27;
                          }
                        }

                        else
                        {
                          dispatch_once(&_MergedGlobals_0, &__block_literal_global);
                          v37 = qword_27E552410;
                          if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_DEBUG))
                          {
                            goto LABEL_26;
                          }
                        }

                        v55 = *(v28 + 2);
                        v56 = 136315650;
                        v57 = "postProcess";
                        v58 = 1024;
                        v59 = v55;
                        v60 = 1024;
                        v61 = HIDWORD(v55);
                        _os_log_debug_impl(&dword_241A16000, v37, OS_LOG_TYPE_DEBUG, "[%s][After] Saved TERMRN: 0x%x, Saved TERMRNCRC32: 0x%x\n", &v56, 0x18u);
                        goto LABEL_26;
                      }

                      support::parsers::acp::sGetOsLogContext(v30);
                      v50 = qword_27E552410;
                      result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
                      if (!result)
                      {
                        goto LABEL_27;
                      }

                      v53 = *(v28 + 5);
                      v54 = *(this + 11);
                      v56 = 136315650;
                      v57 = "postProcess";
                      v58 = 1024;
                      v59 = v53;
                      v60 = 1024;
                      v61 = v54;
                      v6 = "[%s] Corruption - saved TERMCRC32: 0x%x, sframe footer TERMCRC32: 0x%x\n";
                      goto LABEL_51;
                    }

LABEL_47:
                    support::parsers::acp::sGetOsLogContext(v30);
                    v50 = qword_27E552410;
                    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
                    if (!result)
                    {
                      goto LABEL_27;
                    }

                    v51 = *(v28 + 2);
                    v52 = this[5];
                    v56 = 136315650;
                    v57 = "postProcess";
                    v58 = 1024;
                    v59 = v51;
                    v60 = 1024;
                    v61 = v52;
                    v6 = "[%s] Corruption - saved TERMRN: 0x%x, sframe footer TERMRN: 0x%x\n";
LABEL_51:
                    v7 = v50;
                    goto LABEL_52;
                  }
                }

                v49 = *(v28 + 2);
                v56 = 136315650;
                v57 = "postProcess";
                v58 = 1024;
                v59 = v49;
                v60 = 1024;
                v61 = HIDWORD(v49);
                _os_log_debug_impl(&dword_241A16000, v29, OS_LOG_TYPE_DEBUG, "[%s][Before] Saved TERMRN: 0x%x, Saved TERMRNCRC32: 0x%x\n", &v56, 0x18u);
                v31 = *(v28 + 2);
                v32 = this[5];
                if (v31 == v32)
                {
                  goto LABEL_22;
                }

                goto LABEL_47;
              }
            }

            v47 = *(MutableBytePtr + 1) & 0xFFFFFFLL;
            v48 = HIDWORD(*(MutableBytePtr + 1));
            v56 = 136315650;
            v57 = "postProcess";
            v58 = 1024;
            v59 = v47;
            v60 = 1024;
            v61 = v48;
            _os_log_debug_impl(&dword_241A16000, v27, OS_LOG_TYPE_DEBUG, "[%s][After] frameSavedHeaderPayloadSize: %u, frameSavedHeaderHCRC32: 0x%x\n", &v56, 0x18u);
            if (atomic_load_explicit(&qword_27E552400, memory_order_acquire))
            {
              goto LABEL_19;
            }

            goto LABEL_43;
          }

          support::parsers::acp::sGetOsLogContext(v12);
          v42 = qword_27E552410;
          result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_27;
          }

          v45 = *(MutableBytePtr + 3);
          v46 = *(this + 9);
          v56 = 136315650;
          v57 = "postProcess";
          v58 = 1024;
          v59 = v45;
          v60 = 1024;
          v61 = v46;
          v6 = "[%s] Corruption - saved header CRC32: 0x%x, sframe header CRC32: 0x%x\n";
LABEL_40:
          v7 = v42;
LABEL_52:
          v8 = 24;
          goto LABEL_8;
        }

LABEL_36:
        support::parsers::acp::sGetOsLogContext(v12);
        v42 = qword_27E552410;
        result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_27;
        }

        v43 = *(MutableBytePtr + 2) & 0xFFFFFF;
        v44 = this[4] & 0xFFFFFF;
        v56 = 136315650;
        v57 = "postProcess";
        v58 = 1024;
        v59 = v43;
        v60 = 1024;
        v61 = v44;
        v6 = "[%s] Corruption - saved header payload size: %u, sframe header size: %u\n";
        goto LABEL_40;
      }
    }

    v40 = *(MutableBytePtr + 1) & 0xFFFFFFLL;
    v41 = HIDWORD(*(MutableBytePtr + 1));
    v56 = 136315650;
    v57 = "postProcess";
    v58 = 1024;
    v59 = v40;
    v60 = 1024;
    v61 = v41;
    _os_log_debug_impl(&dword_241A16000, v11, OS_LOG_TYPE_DEBUG, "[%s][Before] frameSavedHeaderPayloadSize: %u, frameSavedHeaderHCRC32: 0x%x\n", &v56, 0x18u);
    v13 = *(MutableBytePtr + 1);
    v14 = this[4] ^ v13;
    if ((v14 & 0xFFFFFF) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

  if ((atomic_load_explicit(&qword_27E552400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552400))
  {
    qword_27E552408 = 0;
    qword_27E552410 = 0;
    __cxa_guard_release(&qword_27E552400);
  }

  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global);
    v4 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_27;
    }

    goto LABEL_6;
  }

  v4 = qword_27E552410;
  result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
  if (result)
  {
LABEL_6:
    v56 = 136315138;
    v57 = "postProcess";
    v6 = "[%s] Accumulated Superframe with no ACP Payload\n";
LABEL_7:
    v7 = v4;
    v8 = 12;
LABEL_8:
    _os_log_error_impl(&dword_241A16000, v7, OS_LOG_TYPE_ERROR, v6, &v56, v8);
    result = 0;
  }

LABEL_27:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL support::parsers::acp::SuperFrame::processData(uint64_t this, unsigned __int8 *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a2 || (v3 = a3) == 0)
  {
    support::parsers::acp::sGetOsLogContext(this);
    v13 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_22;
    }

    *buf = 136315138;
    v21 = "processData";
    v14 = "[%s] invalid input parameter\n";
    goto LABEL_27;
  }

  v4 = a2;
  v5 = this;
  v6 = 0;
  v7 = a3;
  while (1)
  {
    v8 = *(v5 + 13);
    if (!v8)
    {
      v19 = 0;
      this = (*(*v5 + 16))(v5, v4, v7, &v19);
      if ((this & 1) == 0)
      {
        support::parsers::acp::sGetOsLogContext(this);
        v13 = qword_27E552410;
        if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        *buf = 136315138;
        v21 = "processData";
        v14 = "[%s] Failed to parse SuperFrame Header\n";
        goto LABEL_27;
      }

      if (v7 < v19)
      {
        support::parsers::acp::sGetOsLogContext(this);
        v17 = qword_27E552410;
        if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      v4 += v19;
      v7 = v7 - v19;
      v6 += v19;
      *(v5 + 13) = 1;
      goto LABEL_5;
    }

    if (v8 != 1)
    {
      break;
    }

    v19 = 0;
    this = (*(*v5 + 24))(v5, v4, v7, &v19);
    if ((this & 1) == 0)
    {
      support::parsers::acp::sGetOsLogContext(this);
      v13 = qword_27E552410;
      if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 136315138;
      v21 = "processData";
      v14 = "[%s] Failed to parse payload\n";
      goto LABEL_27;
    }

    v9 = v19;
    if (v7 < v19)
    {
      support::parsers::acp::sGetOsLogContext(this);
      v17 = qword_27E552410;
      if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

LABEL_31:
      *buf = 136315650;
      v21 = "processData";
      v22 = 1024;
      v23 = v19;
      v24 = 1024;
      v25 = v7;
      v14 = "[%s] Unexpected - size processed: %u, size remaining: %u\n";
      v15 = v17;
LABEL_32:
      v16 = 24;
      goto LABEL_33;
    }

    if (*(v5 + 5) == *(v5 + 4))
    {
      *(v5 + 13) = 2;
    }

    v4 += v9;
    v7 = (v7 - v9);
    v6 += v9;
LABEL_5:
    if (!v7)
    {
      goto LABEL_20;
    }
  }

  if (v8 != 2)
  {
    goto LABEL_5;
  }

  v10 = support::parsers::acp::SuperFrame::parseFooter(v5, v4, v7);
  if (!v10)
  {
    support::parsers::acp::sGetOsLogContext(v10);
    v13 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_22;
    }

    *buf = 136315138;
    v21 = "processData";
    v14 = "[%s] Failed to parse footer\n";
LABEL_27:
    v15 = v13;
    v16 = 12;
LABEL_33:
    _os_log_error_impl(&dword_241A16000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
LABEL_34:
    result = 0;
    goto LABEL_22;
  }

  CFDataGetLength(*(v5 + 1));
  this = support::parsers::acp::SuperFrame::postProcess(v5);
  if ((this & 1) == 0)
  {
    support::parsers::acp::sGetOsLogContext(this);
    v13 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_22;
    }

    *buf = 136315138;
    v21 = "processData";
    v14 = "[%s] failed to post process current frame\n";
    goto LABEL_27;
  }

  v6 += v7;
  *(v5 + 13) = 3;
LABEL_20:
  if (v6 == v3)
  {
    result = 1;
    goto LABEL_22;
  }

  support::parsers::acp::sGetOsLogContext(this);
  v18 = qword_27E552410;
  result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136315650;
    v21 = "processData";
    v22 = 1024;
    v23 = v6;
    v24 = 1024;
    v25 = v3;
    v14 = "[%s] Size Processed (%u) is not same as input size(%u)\n";
    v15 = v18;
    goto LABEL_32;
  }

LABEL_22:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL support::parsers::acp::ACPChunk::init(support::parsers::acp::ACPChunk *this, char a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *(this + 24) = 1;
  *(this + 25) = a2;
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  *(this + 1) = Mutable;
  if (Mutable)
  {
    *(this + 2) = 0;
  }

  else
  {
    support::parsers::acp::sGetOsLogContext(0);
    v6 = qword_27E552410;
    v7 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    Mutable = 0;
    if (v7)
    {
      v8 = 136315138;
      v9 = "init";
      _os_log_error_impl(&dword_241A16000, v6, OS_LOG_TYPE_ERROR, "[%s] Failed to init Trace Data Descriptor\n", &v8, 0xCu);
      Mutable = 0;
    }
  }

  result = Mutable != 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t support::parsers::acp::ACPChunk::setShouldSaveBytes(uint64_t this, unsigned int a2)
{
  if (*(this + 25) == 1)
  {
    v2 = (a2 >> 10) & 1;
    if ((a2 & 0x110) == 0x10)
    {
      LOBYTE(v2) = 1;
    }

    *(this + 24) = v2;
  }

  return this;
}

uint64_t support::parsers::acp::ACPChunk::parseHeader(support::parsers::acp::ACPChunk *this, unsigned __int8 *a2, unsigned int a3, unsigned int *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27E552400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552400))
  {
    qword_27E552408 = 0;
    qword_27E552410 = 0;
    __cxa_guard_release(&qword_27E552400);
  }

  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global);
    v4 = qword_27E552410;
    if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 136315138;
    v9 = "parseHeader";
    _os_log_error_impl(&dword_241A16000, v4, OS_LOG_TYPE_ERROR, "[ACPChunk][%s] Should Never be Called\n", &v8, 0xCu);
    v7 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v4 = qword_27E552410;
  if (os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

BOOL support::parsers::acp::ACPChunk::parsePayload(__CFData **this, unsigned __int8 *a2, CFIndex length, unsigned int *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!a4 || !a2 || !length)
  {
    support::parsers::acp::sGetOsLogContext(this);
    v14 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_16;
    }

    v27 = 136315138;
    v28 = "parsePayload";
    v15 = "[ACPChunk][%s] invalid input parameter\n";
    goto LABEL_27;
  }

  v4 = this;
  v6 = *(this + 4);
  v5 = *(this + 5);
  v7 = v6 - v5;
  if (v6 < v5)
  {
    support::parsers::acp::sGetOsLogContext(this);
    v16 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_16;
    }

    v18 = *(v4 + 4);
    v17 = *(v4 + 5);
    v27 = 136315650;
    v28 = "parsePayload";
    v29 = 1024;
    v30 = v17;
    v31 = 1024;
    v32 = v18;
    v15 = "[%s] Received Payload Size: %u, Expected Payload Size: %u\n";
    v19 = v16;
    v20 = 24;
LABEL_28:
    _os_log_error_impl(&dword_241A16000, v19, OS_LOG_TYPE_ERROR, v15, &v27, v20);
    result = 0;
    goto LABEL_16;
  }

  if (v7 <= length)
  {
    *a4 = v7;
    if (*(this + 24) != 1)
    {
LABEL_14:
      v11 = *(v4 + 5) + v7;
      goto LABEL_15;
    }

    if (v6 != v5)
    {
      this = this[1];
      if (this)
      {
        CFDataAppendBytes(this, a2, v6 - v5);
        goto LABEL_14;
      }
    }

    support::parsers::acp::sGetOsLogContext(this);
    v21 = qword_27E552410;
    v22 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      v27 = 136315138;
      v28 = "appendToRawBytes";
      _os_log_error_impl(&dword_241A16000, v21, OS_LOG_TYPE_ERROR, "[%s] invalid input data\n", &v27, 0xCu);
      support::parsers::acp::sGetOsLogContext(v25);
      v14 = qword_27E552410;
      result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      support::parsers::acp::sGetOsLogContext(v22);
      v14 = qword_27E552410;
      result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_16;
      }
    }

    v27 = 136315138;
    v28 = "parsePayload";
    v15 = "[%s] Failed to append to raw bytes\n";
LABEL_27:
    v19 = v14;
    v20 = 12;
    goto LABEL_28;
  }

  if (*(this + 24) == 1)
  {
    v8 = this[1];
    if (v8)
    {
      v9 = length;
      v10 = a4;
      CFDataAppendBytes(v8, a2, length);
      LODWORD(length) = v9;
      a4 = v10;
      goto LABEL_9;
    }

    support::parsers::acp::sGetOsLogContext(0);
    v23 = qword_27E552410;
    v24 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      v27 = 136315138;
      v28 = "appendToRawBytes";
      _os_log_error_impl(&dword_241A16000, v23, OS_LOG_TYPE_ERROR, "[%s] invalid input data\n", &v27, 0xCu);
      support::parsers::acp::sGetOsLogContext(v26);
      v14 = qword_27E552410;
      result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      support::parsers::acp::sGetOsLogContext(v24);
      v14 = qword_27E552410;
      result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_16;
      }
    }

    v27 = 136315138;
    v28 = "parsePayload";
    v15 = "[%s] Failed to append to raw bytes\n";
    goto LABEL_27;
  }

LABEL_9:
  *a4 = length;
  v11 = *(v4 + 5) + length;
LABEL_15:
  *(v4 + 5) = v11;
  result = 1;
LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL support::parsers::acp::BaseACPChunk::init(support::parsers::acp::BaseACPChunk *this, char a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *(this + 26) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 24) = 1;
  *(this + 25) = a2;
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  *(this + 1) = Mutable;
  if (Mutable)
  {
    *(this + 2) = 0;
  }

  else
  {
    support::parsers::acp::sGetOsLogContext(0);
    v6 = qword_27E552410;
    v7 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    Mutable = 0;
    if (v7)
    {
      v8 = 136315138;
      v9 = "init";
      _os_log_error_impl(&dword_241A16000, v6, OS_LOG_TYPE_ERROR, "[%s] Failed to init Trace Data Descriptor\n", &v8, 0xCu);
      Mutable = 0;
    }
  }

  result = Mutable != 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t support::parsers::acp::BaseACPChunk::isHeaderComplete(support::parsers::acp::BaseACPChunk *this)
{
  if (*(this + 37) != 1)
  {
    return 0;
  }

  if ((*(this + 28) & 0x80) != 0)
  {
    return *(this + 36) & 1;
  }

  return 1;
}

uint64_t support::parsers::acp::BaseACPChunk::parseHeader(support::parsers::acp::BaseACPChunk *this, unsigned __int8 *a2, unsigned int a3, unsigned int *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3 || !a4)
  {
    support::parsers::acp::sGetOsLogContext(this);
    v16 = qword_27E552410;
    if (os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
    {
      v25 = 136315138;
      v26 = "parseHeader";
      v17 = "[BaseACPChunk][%s] invalid input parameter\n";
LABEL_34:
      v20 = v16;
      v21 = 12;
      goto LABEL_35;
    }

LABEL_31:
    v13 = 0;
    goto LABEL_22;
  }

  if (a3 <= 3)
  {
    v18 = a3;
    support::parsers::acp::sGetOsLogContext(this);
    v19 = qword_27E552410;
    if (os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
    {
      v25 = 136315650;
      v26 = "parseHeader";
      v27 = 1024;
      v28 = v18;
      v29 = 2048;
      v30 = 4;
      v17 = "[BaseACPChunk][%s] input size: %u, expected: %zu\n";
      v20 = v19;
      v21 = 28;
LABEL_35:
      _os_log_error_impl(&dword_241A16000, v20, OS_LOG_TYPE_ERROR, v17, &v25, v21);
      v13 = 0;
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  *a4 = 0;
  if ((*(this + 37) & 1) == 0)
  {
    v5 = *a2;
    *(this + 26) = *a2;
    *(this + 4) = ((v5 >> 25) + 4) & 0xFC;
    if (*(this + 25))
    {
      if ((v5 & 0x88000) == 0x8000)
      {
        v6 = 1;
      }

      else
      {
        v6 = (v5 >> 21) & 1;
      }

      *(this + 24) = v6;
      *(this + 36) = 0;
      if (v6 != 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v7 = *(this + 24);
      *(this + 36) = 0;
      if ((v7 & 1) == 0)
      {
LABEL_15:
        *(this + 37) = 1;
        a2 += 4;
        *a4 += 4;
        a3 -= 4;
        goto LABEL_16;
      }
    }

    if (!*(this + 1))
    {
      support::parsers::acp::sGetOsLogContext(this);
      v22 = qword_27E552410;
      v23 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
      if (v23)
      {
        v25 = 136315138;
        v26 = "appendToRawBytes";
        _os_log_error_impl(&dword_241A16000, v22, OS_LOG_TYPE_ERROR, "[%s] invalid input data\n", &v25, 0xCu);
        support::parsers::acp::sGetOsLogContext(v24);
        v16 = qword_27E552410;
        if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }
      }

      else
      {
        support::parsers::acp::sGetOsLogContext(v23);
        v16 = qword_27E552410;
        if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }
      }

      v25 = 136315138;
      v26 = "parseHeader";
      v17 = "[%s] Failed to append to raw bytes\n";
      goto LABEL_34;
    }

    v8 = this;
    v9 = a2;
    v10 = a3;
    CFDataAppendBytes(*(this + 1), a2, 4);
    a2 = v9;
    this = v8;
    a3 = v10;
    goto LABEL_15;
  }

LABEL_16:
  v11 = *(this + 26);
  if (a3 && ((v11 >> 23) & 1) != 0)
  {
    v12 = support::parsers::acp::BaseACPChunk::parseTimeStamp(this, a2, a3);
    if (v12)
    {
      *a4 += 4;
      v13 = 1;
      goto LABEL_22;
    }

    support::parsers::acp::sGetOsLogContext(v12);
    v16 = qword_27E552410;
    if (os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
    {
      v25 = 136315138;
      v26 = "parseHeader";
      v17 = "[%s] timestamp parsing pending\n";
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v13 = 1;
  if ((v11 & 0x800000) == 0)
  {
    *(this + 36) = 1;
  }

LABEL_22:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL support::parsers::acp::BaseACPChunk::parseTimeStamp(__CFData **this, unsigned __int8 *a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a2 || a3 <= 3)
  {
    support::parsers::acp::sGetOsLogContext(this);
    v13 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_9;
    }

    v17 = 136315650;
    v18 = "parseTimeStamp";
    v19 = 2048;
    v20 = a2;
    v21 = 1024;
    v22 = a3;
    v8 = "[%s] invalid input parameter, inputBuffer: %p, input size: %u\n";
    v9 = v13;
    v10 = 28;
LABEL_15:
    _os_log_error_impl(&dword_241A16000, v9, OS_LOG_TYPE_ERROR, v8, &v17, v10);
    result = 0;
    goto LABEL_9;
  }

  if ((*(this + 28) & 0x80) == 0 || *(this + 36) == 1)
  {
    support::parsers::acp::sGetOsLogContext(this);
    v7 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_9;
    }

    v17 = 136315138;
    v18 = "parseTimeStamp";
    v8 = "[%s] parse timestamp called in an invalid state\n";
LABEL_12:
    v9 = v7;
    v10 = 12;
    goto LABEL_15;
  }

  *(this + 8) = *a2;
  if (*(this + 24) == 1)
  {
    v4 = this[1];
    if (v4)
    {
      CFDataAppendBytes(v4, a2, 4);
      goto LABEL_8;
    }

    support::parsers::acp::sGetOsLogContext(0);
    v14 = qword_27E552410;
    v15 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (v15)
    {
      v17 = 136315138;
      v18 = "appendToRawBytes";
      _os_log_error_impl(&dword_241A16000, v14, OS_LOG_TYPE_ERROR, "[%s] invalid input data\n", &v17, 0xCu);
      support::parsers::acp::sGetOsLogContext(v16);
      v7 = qword_27E552410;
      result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_9;
      }
    }

    else
    {
      support::parsers::acp::sGetOsLogContext(v15);
      v7 = qword_27E552410;
      result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_9;
      }
    }

    v17 = 136315138;
    v18 = "parseTimeStamp";
    v8 = "[%s] Failed to append to raw bytes\n";
    goto LABEL_12;
  }

LABEL_8:
  result = 1;
  *(this + 36) = 1;
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void support::parsers::acp::LSCACPChunk::~LSCACPChunk(support::parsers::acp::LSCACPChunk *this)
{
  *this = &unk_2853A2398;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
    *(this + 1) = 0;
  }
}

{
  *this = &unk_2853A2398;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
    *(this + 1) = 0;
  }
}

{
  *this = &unk_2853A2398;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

BOOL support::parsers::acp::LSCACPChunk::init(support::parsers::acp::LSCACPChunk *this, char a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *(this + 11) = 0;
  *(this + 34) = 0;
  *(this + 26) = 0;
  *(this + 24) = 1;
  *(this + 25) = a2;
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  *(this + 1) = Mutable;
  if (Mutable)
  {
    *(this + 2) = 0;
  }

  else
  {
    support::parsers::acp::sGetOsLogContext(0);
    v6 = qword_27E552410;
    v7 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    Mutable = 0;
    if (v7)
    {
      v8 = 136315138;
      v9 = "init";
      _os_log_error_impl(&dword_241A16000, v6, OS_LOG_TYPE_ERROR, "[%s] Failed to init Trace Data Descriptor\n", &v8, 0xCu);
      Mutable = 0;
    }
  }

  result = Mutable != 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL support::parsers::acp::LSCACPChunk::parseHeader(UInt8 *this, unsigned __int8 *a2, unsigned int a3, unsigned int *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3 || !a4)
  {
    support::parsers::acp::sGetOsLogContext(this);
    v15 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }

    v25 = 136315138;
    v26 = "parseHeader";
    v16 = "[LSCACPChunk][%s] invalid input parameter\n";
LABEL_23:
    v17 = v15;
    v18 = 12;
    goto LABEL_28;
  }

  if (*(this + 11) >= 0x11u)
  {
    support::parsers::acp::sGetOsLogContext(this);
    v19 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }

    v20 = *(this + 11);
    v25 = 136315650;
    v26 = "parseHeader";
    v27 = 1024;
    v28 = v20;
    v29 = 2048;
    v30 = 16;
    v16 = "[LSCACPChunk][%s] Received Header Size (%u) greater than expected Header Size (%zu)\n";
    v17 = v19;
    v18 = 28;
LABEL_28:
    _os_log_error_impl(&dword_241A16000, v17, OS_LOG_TYPE_ERROR, v16, &v25, v18);
    result = 0;
    goto LABEL_20;
  }

  *a4 = 0;
  v6 = *(this + 11);
  v7 = (this + 26);
  if (16 - v6 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = (16 - v6);
  }

  memcpy(v7 + v6, a2, v8);
  *(this + 11) += v8;
  *a4 += v8;
  v9 = (*(*this + 32))(this);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = *v7;
  if (((v10 >> 23) ^ HIBYTE(v10)))
  {
    support::parsers::acp::sGetOsLogContext(v9);
    v21 = qword_27E552410;
    result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }

    LOWORD(v25) = 0;
    v16 = "For LSC packets, SoM == EoM Required";
    v17 = v21;
    v18 = 2;
    goto LABEL_28;
  }

  *(this + 4) = (*(this + 20) + 4) & 0x1FFFC;
  if (this[25])
  {
    if ((v10 & 0x88000) == 0x8000)
    {
      v11 = 1;
    }

    else
    {
      v11 = (v10 >> 21) & 1;
    }

    this[24] = v11;
    if (v11 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (this[24])
  {
LABEL_17:
    v12 = *(this + 1);
    if (v12)
    {
      CFDataAppendBytes(v12, this + 26, 16);
      goto LABEL_19;
    }

    support::parsers::acp::sGetOsLogContext(0);
    v22 = qword_27E552410;
    v23 = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      v25 = 136315138;
      v26 = "appendToRawBytes";
      _os_log_error_impl(&dword_241A16000, v22, OS_LOG_TYPE_ERROR, "[%s] invalid input data\n", &v25, 0xCu);
      support::parsers::acp::sGetOsLogContext(v24);
      v15 = qword_27E552410;
      result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_20;
      }
    }

    else
    {
      support::parsers::acp::sGetOsLogContext(v23);
      v15 = qword_27E552410;
      result = os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_20;
      }
    }

    v25 = 136315138;
    v26 = "parseHeader";
    v16 = "[%s] Failed to append to raw bytes\n";
    goto LABEL_23;
  }

LABEL_19:
  result = 1;
LABEL_20:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void support::parsers::acp::ParserEngine::create(const void **a1@<X0>, char a2@<W1>, atomic_ullong *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x48uLL);
  v7 = dispatch_queue_create("com.apple.acp.ParserEngine", 0);
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = v7;
  if (v7)
  {
    v8 = v7;
    dispatch_retain(v7);
    v6[4] = 0;
    dispatch_release(v8);
  }

  else
  {
    v6[4] = 0;
  }

  *v6 = &unk_2853A23C8;
  v6[6] = 0;
  v6[7] = 0;
  v6[5] = 0;
  std::shared_ptr<support::parsers::acp::ParserEngine>::shared_ptr[abi:ne200100]<support::parsers::acp::ParserEngine,std::shared_ptr<support::parsers::acp::ParserEngine> ctu::SharedSynchronizable<support::parsers::acp::ParserEngine>::make_shared_ptr<support::parsers::acp::ParserEngine>(support::parsers::acp::ParserEngine*)::{lambda(support::parsers::acp::ParserEngine*)#1},0>(a3, v6);
  v9 = *a3;
  if (*a3)
  {
    if (*a1)
    {
      v10 = _Block_copy(*a1);
    }

    else
    {
      v10 = 0;
    }

    v13 = v10;
    v11 = support::parsers::acp::ParserEngine::init(v9, &v13, a2);
    if (v10)
    {
      _Block_release(v10);
    }

    if (!v11)
    {
      v12 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      if (v12)
      {
        if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);

          std::__shared_weak_count::__release_weak(v12);
        }
      }
    }
  }
}

void sub_241A29748(_Unwind_Exception *a1)
{
  if (v2)
  {
    _Block_release(v2);
  }

  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

support::parsers::acp::ParserEngine *support::parsers::acp::ParserEngine::ParserEngine(support::parsers::acp::ParserEngine *this)
{
  v2 = dispatch_queue_create("com.apple.acp.ParserEngine", 0);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v2;
  if (v2)
  {
    v3 = v2;
    dispatch_retain(v2);
    *(this + 4) = 0;
    dispatch_release(v3);
  }

  else
  {
    *(this + 4) = 0;
  }

  *this = &unk_2853A23C8;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  return this;
}

{
  v2 = dispatch_queue_create("com.apple.acp.ParserEngine", 0);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v2;
  if (v2)
  {
    v3 = v2;
    dispatch_retain(v2);
    *(this + 4) = 0;
    dispatch_release(v3);
  }

  else
  {
    *(this + 4) = 0;
  }

  *this = &unk_2853A23C8;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  return this;
}

BOOL support::parsers::acp::ParserEngine::init(uint64_t a1, const void **a2, char a3)
{
  v3 = *a2;
  if (!*a2)
  {
    if ((atomic_load_explicit(&qword_27E552400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552400))
    {
      qword_27E552408 = 0;
      qword_27E552410 = 0;
      __cxa_guard_release(&qword_27E552400);
    }

    if (_MergedGlobals_0 == -1)
    {
      v8 = qword_27E552410;
      if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
      {
        return v3 != 0;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global);
      v8 = qword_27E552410;
      if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
      {
        return v3 != 0;
      }
    }

    *v10 = 0;
    _os_log_error_impl(&dword_241A16000, v8, OS_LOG_TYPE_ERROR, "Failed to init parser engine, callback null", v10, 2u);
    return v3 != 0;
  }

  v6 = _Block_copy(*a2);
  v7 = *(a1 + 56);
  *(a1 + 56) = v6;
  if (v7)
  {
    _Block_release(v7);
  }

  *(a1 + 64) = a3;
  *(a1 + 65) = 0;
  return v3 != 0;
}

void support::parsers::acp::ParserEngine::addData(support::parsers::acp::ParserEngine *this, unsigned __int8 *a2, int a3)
{
  v5[0] = this;
  v5[1] = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN7support7parsers3acp12ParserEngineEE20execute_wrapped_syncIZNS4_7addDataEPhjE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
  block[3] = &__block_descriptor_tmp_11_0;
  block[4] = this + 8;
  block[5] = v5;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

void support::parsers::acp::ParserEngine::~ParserEngine(support::parsers::acp::ParserEngine *this)
{
  *this = &unk_2853A23C8;
  *(this + 65) = 1;
  v2 = *(this + 7);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(this + 6);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

{
  support::parsers::acp::ParserEngine::~ParserEngine(this);

  operator delete(v1);
}

void support::parsers::acp::SuperFrame::~SuperFrame(support::parsers::acp::SuperFrame *this)
{
  *this = &unk_2853A23F8;
  v2 = *(this + 8);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    *this = &unk_2853A2398;
    v3 = *(this + 1);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    *this = &unk_2853A2398;
    v3 = *(this + 1);
    if (!v3)
    {
      return;
    }
  }

  CFRelease(v3);
  *(this + 1) = 0;
}

{
  *this = &unk_2853A23F8;
  v2 = *(this + 8);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    *this = &unk_2853A2398;
    v3 = *(this + 1);
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  *this = &unk_2853A2398;
  v3 = *(this + 1);
  if (v3)
  {
LABEL_4:
    CFRelease(v3);
  }

LABEL_5:

  operator delete(this);
}

void support::parsers::acp::BaseACPChunk::~BaseACPChunk(support::parsers::acp::BaseACPChunk *this)
{
  *this = &unk_2853A2398;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
    *(this + 1) = 0;
  }
}

{
  *this = &unk_2853A2398;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void ___ZN7support7parsers3acpL16sGetOsLogContextEv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "acp.parser");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void std::__shared_ptr_pointer<support::parsers::acp::SuperFrame *,std::shared_ptr<support::parsers::acp::SuperFrame>::__shared_ptr_default_delete<support::parsers::acp::SuperFrame,support::parsers::acp::SuperFrame>,std::allocator<support::parsers::acp::SuperFrame>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::parsers::acp::SuperFrame *,std::shared_ptr<support::parsers::acp::SuperFrame>::__shared_ptr_default_delete<support::parsers::acp::SuperFrame,support::parsers::acp::SuperFrame>,std::allocator<support::parsers::acp::SuperFrame>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<support::parsers::acp::SuperFrame *,std::shared_ptr<support::parsers::acp::SuperFrame>::__shared_ptr_default_delete<support::parsers::acp::SuperFrame,support::parsers::acp::SuperFrame>,std::allocator<support::parsers::acp::SuperFrame>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000241A653E1)
  {
    if (((v2 & 0x8000000241A653E1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000241A653E1))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000241A653E1 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<support::parsers::acp::BaseACPChunk *,std::shared_ptr<support::parsers::acp::BaseACPChunk>::__shared_ptr_default_delete<support::parsers::acp::BaseACPChunk,support::parsers::acp::BaseACPChunk>,std::allocator<support::parsers::acp::BaseACPChunk>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::parsers::acp::BaseACPChunk *,std::shared_ptr<support::parsers::acp::BaseACPChunk>::__shared_ptr_default_delete<support::parsers::acp::BaseACPChunk,support::parsers::acp::BaseACPChunk>,std::allocator<support::parsers::acp::BaseACPChunk>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<support::parsers::acp::BaseACPChunk *,std::shared_ptr<support::parsers::acp::BaseACPChunk>::__shared_ptr_default_delete<support::parsers::acp::BaseACPChunk,support::parsers::acp::BaseACPChunk>,std::allocator<support::parsers::acp::BaseACPChunk>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000241A654D2)
  {
    if (((v2 & 0x8000000241A654D2 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000241A654D2))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000241A654D2 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<support::parsers::acp::LSCACPChunk *,std::shared_ptr<support::parsers::acp::LSCACPChunk>::__shared_ptr_default_delete<support::parsers::acp::LSCACPChunk,support::parsers::acp::LSCACPChunk>,std::allocator<support::parsers::acp::LSCACPChunk>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::parsers::acp::LSCACPChunk *,std::shared_ptr<support::parsers::acp::LSCACPChunk>::__shared_ptr_default_delete<support::parsers::acp::LSCACPChunk,support::parsers::acp::LSCACPChunk>,std::allocator<support::parsers::acp::LSCACPChunk>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<support::parsers::acp::LSCACPChunk *,std::shared_ptr<support::parsers::acp::LSCACPChunk>::__shared_ptr_default_delete<support::parsers::acp::LSCACPChunk,support::parsers::acp::LSCACPChunk>,std::allocator<support::parsers::acp::LSCACPChunk>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000241A655C4)
  {
    if (((v2 & 0x8000000241A655C4 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000241A655C4))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000241A655C4 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

atomic_ullong *std::shared_ptr<support::parsers::acp::ParserEngine>::shared_ptr[abi:ne200100]<support::parsers::acp::ParserEngine,std::shared_ptr<support::parsers::acp::ParserEngine> ctu::SharedSynchronizable<support::parsers::acp::ParserEngine>::make_shared_ptr<support::parsers::acp::ParserEngine>(support::parsers::acp::ParserEngine*)::{lambda(support::parsers::acp::ParserEngine*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2853A2690;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_241A2A170(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<support::parsers::acp::ParserEngine> ctu::SharedSynchronizable<support::parsers::acp::ParserEngine>::make_shared_ptr<support::parsers::acp::ParserEngine>(support::parsers::acp::ParserEngine*)::{lambda(support::parsers::acp::ParserEngine*)#1}::operator() const(support::parsers::acp::ParserEngine*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<support::parsers::acp::ParserEngine *,std::shared_ptr<support::parsers::acp::ParserEngine> ctu::SharedSynchronizable<support::parsers::acp::ParserEngine>::make_shared_ptr<support::parsers::acp::ParserEngine>(support::parsers::acp::ParserEngine*)::{lambda(support::parsers::acp::ParserEngine *)#1},std::allocator<support::parsers::acp::ParserEngine>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::parsers::acp::ParserEngine *,std::shared_ptr<support::parsers::acp::ParserEngine> ctu::SharedSynchronizable<support::parsers::acp::ParserEngine>::make_shared_ptr<support::parsers::acp::ParserEngine>(support::parsers::acp::ParserEngine*)::{lambda(support::parsers::acp::ParserEngine *)#1},std::allocator<support::parsers::acp::ParserEngine>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN7support7parsers3acp12ParserEngineEE15make_shared_ptrIS4_EENSt3__110shared_ptrIT_EEPS9_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN7support7parsers3acp12ParserEngineEE15make_shared_ptrIS4_EENSt3__110shared_ptrIT_EEPS9_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN7support7parsers3acp12ParserEngineEE15make_shared_ptrIS4_EENSt3__110shared_ptrIT_EEPS9_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN7support7parsers3acp12ParserEngineEE15make_shared_ptrIS4_EENSt3__110shared_ptrIT_EEPS9_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<support::parsers::acp::ParserEngine> ctu::SharedSynchronizable<support::parsers::acp::ParserEngine>::make_shared_ptr<support::parsers::acp::ParserEngine>(support::parsers::acp::ParserEngine*)::{lambda(support::parsers::acp::ParserEngine*)#1}::operator() const(support::parsers::acp::ParserEngine*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ___ZNK3ctu20SharedSynchronizableIN7support7parsers3acp12ParserEngineEE20execute_wrapped_syncIZNS4_7addDataEPhjE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if ((*(*v1 + 65) & 1) == 0)
  {
    v4 = (v2 + 40);
    v3 = *(v2 + 40);
    if (!v3)
    {
      support::parsers::acp::SuperFrame::create(*(v2 + 64), &v13);
      v5 = v13;
      v13 = 0uLL;
      v6 = *(v2 + 48);
      *(v2 + 40) = v5;
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

      v7 = *(&v13 + 1);
      if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      v3 = *v4;
      if (!*v4)
      {
        if ((atomic_load_explicit(&qword_27E552400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552400))
        {
          qword_27E552408 = 0;
          qword_27E552410 = 0;
          __cxa_guard_release(&qword_27E552400);
        }

        if (_MergedGlobals_0 == -1)
        {
          v12 = qword_27E552410;
          if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        else
        {
          dispatch_once(&_MergedGlobals_0, &__block_literal_global);
          v12 = qword_27E552410;
          if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        LOWORD(v13) = 0;
        _os_log_error_impl(&dword_241A16000, v12, OS_LOG_TYPE_ERROR, "Failed to create SuperFrame", &v13, 2u);
        return;
      }
    }

    if (support::parsers::acp::SuperFrame::processData(v3, v1[1], *(v1 + 4)))
    {
      if (*(*v4 + 52) != 3)
      {
        return;
      }

      v8 = *(v2 + 56);
      if (!v8)
      {
        return;
      }

      v9 = *(v2 + 48);
      *&v13 = *v4;
      *(&v13 + 1) = v9;
      *v4 = 0;
      *(v2 + 48) = 0;
      (*(v8 + 16))(v8, &v13);
      v10 = *(&v13 + 1);
      if (!*(&v13 + 1))
      {
        return;
      }

LABEL_20:
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }

      return;
    }

    if ((atomic_load_explicit(&qword_27E552400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552400))
    {
      qword_27E552408 = 0;
      qword_27E552410 = 0;
      __cxa_guard_release(&qword_27E552400);
    }

    if (_MergedGlobals_0 == -1)
    {
      v11 = qword_27E552410;
      if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global);
      v11 = qword_27E552410;
      if (!os_log_type_enabled(qword_27E552410, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        v10 = *(v2 + 48);
        *(v2 + 40) = 0;
        *(v2 + 48) = 0;
        if (!v10)
        {
          return;
        }

        goto LABEL_20;
      }
    }

    LOWORD(v13) = 0;
    _os_log_error_impl(&dword_241A16000, v11, OS_LOG_TYPE_ERROR, "Failed to process data", &v13, 2u);
    v10 = *(v2 + 48);
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    if (!v10)
    {
      return;
    }

    goto LABEL_20;
  }
}

uint64_t DataRateObserver::DataRateObserver(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  object = 0;
  ctu::SharedSynchronizable<DataRateObserver>::SharedSynchronizable(a1, "DataRateObserver", v4, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 32), "com.apple.telephony.abm", "data.rate.observer");
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  Timestamp::Timestamp((a1 + 80));
  *(a1 + 104) = *a2;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  return a1;
}

void sub_241A2A664(_Unwind_Exception *a1)
{
  std::vector<DataRateObserver::Sample>::~vector[abi:ne200100]((v1 + 56));
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v2);
  MEMORY[0x245CF5550](v1 + 32);
  ctu::SharedSynchronizable<TCP>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

void sub_241A2A698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (!object)
  {
    _Unwind_Resume(exception_object);
  }

  dispatch_release(object);
  _Unwind_Resume(exception_object);
}

void DataRateObserver::~DataRateObserver(DataRateObserver *this)
{
  if (*(this + 120) == 1)
  {
    DataRateObserver::stop_sync(this);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 80, *(this + 11));
  v2 = *(this + 7);
  if (v2)
  {
    v3 = *(this + 8);
    v4 = *(this + 7);
    if (v3 != v2)
    {
      v5 = v3 - 56;
      do
      {
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v5 + 24, *(v5 + 32));
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v5, *(v5 + 8));
        v6 = v5 == v2;
        v5 -= 56;
      }

      while (!v6);
      v4 = *(this + 7);
    }

    *(this + 8) = v2;
    operator delete(v4);
  }

  v7 = *(this + 6);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  MEMORY[0x245CF5550](this + 32);
  v8 = *(this + 3);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 2);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(this + 1);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

void DataRateObserver::stop_sync(DataRateObserver *this)
{
  v2 = *(this + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241A16000, v2, OS_LOG_TYPE_DEFAULT, "#I Stopping data rate observer", buf, 2u);
  }

  v3 = *(this + 5);
  if (v3)
  {
    support::misc::safe_timer::stop(v3);
LABEL_5:
    *(this + 31) = 0;
    *(this + 120) = 0;
    return;
  }

  v4 = *(this + 4);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_5;
  }

  *v5 = 0;
  _os_log_error_impl(&dword_241A16000, v4, OS_LOG_TYPE_ERROR, "Timer object is gone", v5, 2u);
  *(this + 31) = 0;
  *(this + 120) = 0;
}

void DataRateObserver::create(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::allocate_shared[abi:ne200100]<DataRateObserver,std::allocator<DataRateObserver>,DataRateObserver::Config,0>(a1, a2);
}

void DataRateObserver::start(DataRateObserver *this)
{
  v3 = this;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZNS1_5startEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_2;
  block[4] = this;
  block[5] = &v3;
  v2 = this + 16;
  v1 = *(this + 2);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void DataRateObserver::start_sync(DataRateObserver *this)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v7;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v8 = operator new(0x20uLL);
  *v8 = &unk_2853A2730;
  *(v8 + 1) = v3;
  *(v8 + 2) = v5;
  *(v8 + 3) = this;
  v29 = v8;
  v22 = 18;
  strcpy(__p, "data.rate.observer");
  v9 = *(this + 13);
  v10 = operator new(0x20uLL);
  *v10 = &unk_2853A2730;
  v10[1] = v3;
  v10[2] = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10[3] = *(v8 + 3);
  v26 = v10;
  support::misc::safe_timer::create(__p, v9, v9, v25, QOS_CLASS_UTILITY, &block);
  v13 = block;
  if (block)
  {
    v14 = operator new(0x20uLL);
    *v14 = &unk_2853A27C0;
    v14[1] = 0;
    v14[2] = 0;
    v14[3] = v13;
    block = 0;
    v15 = *(this + 6);
    *(this + 5) = v13;
    *(this + 6) = v14;
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  else
  {
    block = 0;
    v15 = *(this + 6);
    *(this + 5) = 0;
    *(this + 6) = 0;
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

LABEL_11:
  v16 = block;
  block = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  if (v26 == v25)
  {
    (*(*v26 + 32))(v26);
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_21:
    operator delete(*__p);
    v17 = *(this + 5);
    if (v17)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  if (v26)
  {
    (*(*v26 + 40))(v26, v11, v12);
  }

  if (v22 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v17 = *(this + 5);
  if (v17)
  {
LABEL_18:
    v18 = *(v17 + 23);
    if (v18 == dispatch_get_specific("CurrentQueue"))
    {
      support::misc::safe_timer::start_sync(v17);
    }

    else
    {
      block = MEMORY[0x277D85DD0];
      v24[0] = 0x40000000;
      v24[1] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
      v24[2] = &__block_descriptor_tmp_8;
      v24[3] = v17;
      dispatch_sync(v18, &block);
    }

    Timestamp::Timestamp(&block);
    if ((this + 80) != &block)
    {
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<Timestamp::TimeDomain,timeval>,std::__tree_node<std::__value_type<Timestamp::TimeDomain,timeval>,void *> *,long>>(this + 10, block, v24);
    }

    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&block, v24[0]);
    *(this + 120) = 1;
    goto LABEL_28;
  }

LABEL_22:
  v19 = *(this + 4);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    LOWORD(block) = 0;
    _os_log_error_impl(&dword_241A16000, v19, OS_LOG_TYPE_ERROR, "Failed to create timer object", &block, 2u);
  }

LABEL_28:
  if (v29 == &v27)
  {
    (*(*v29 + 32))(v29);
  }

  else if (v29)
  {
    (*(*v29 + 40))(v29);
  }

  std::__shared_weak_count::__release_weak(v5);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_241A2AD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  std::function<void ()(void)>::~function(v23 - 96);
  std::__shared_weak_count::__release_weak(v22);
  _Unwind_Resume(a1);
}

void sub_241A2AE44(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void DataRateObserver::stop(DataRateObserver *this)
{
  v3 = this;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZNS1_4stopEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_19;
  block[4] = this;
  block[5] = &v3;
  v2 = this + 16;
  v1 = *(this + 2);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void DataRateObserver::feedSample(DataRateObserver *this, int a2)
{
  v4 = this;
  v5 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZNS1_10feedSampleEjE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_20;
  block[4] = this;
  block[5] = &v4;
  v3 = this + 16;
  v2 = *(this + 2);
  if (*(v3 + 1))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void DataRateObserver::gatherSamples(DataRateObserver *this@<X0>, void *a2@<X8>)
{
  v4 = this;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZNS1_13gatherSamplesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  v5[3] = &__block_descriptor_tmp_22;
  v5[4] = this;
  v5[5] = &v4;
  v6 = v5;
  v3 = this + 16;
  v2 = *(this + 2);
  if (*(v3 + 1))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__16vectorIN16DataRateObserver6SampleENS1_9allocatorIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_24_0;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__16vectorIN16DataRateObserver6SampleENS1_9allocatorIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_23_0;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

void DataRateObserver::clearSamples(DataRateObserver *this)
{
  v3 = this;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZNS1_12clearSamplesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_25;
  block[4] = this;
  block[5] = &v3;
  v2 = this + 16;
  v1 = *(this + 2);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void *ctu::SharedSynchronizable<DataRateObserver>::SharedSynchronizable(void *a1, const char *a2, dispatch_qos_class_t a3, dispatch_object_t *a4)
{
  v8 = *a4;
  if (*a4)
  {
    dispatch_retain(*a4);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v10 = dispatch_queue_create_with_target_V2(a2, initially_inactive, v8);
  dispatch_set_qos_class_floor(v10, a3, 0);
  dispatch_activate(v10);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = *a4;
  a1[3] = *a4;
  if (v11)
  {
    dispatch_retain(v11);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  return a1;
}

void **std::vector<DataRateObserver::Sample>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 56;
      do
      {
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v5 + 24, *(v5 + 32));
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v5, *(v5 + 8));
        v6 = v5 == v2;
        v5 -= 56;
      }

      while (!v6);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::allocate_shared[abi:ne200100]<DataRateObserver,std::allocator<DataRateObserver>,DataRateObserver::Config,0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = operator new(0x98uLL);
  v4->__shared_owners_ = 0;
  p_shared_owners = &v4->__shared_owners_;
  v4->__shared_weak_owners_ = 0;
  v4->__vftable = &unk_2853A26E0;
  *a2 = DataRateObserver::DataRateObserver(&v4[1], a1);
  a2[1] = v4;
  shared_owners = v4[1].__shared_owners_;
  if (shared_owners)
  {
    if (shared_owners->__shared_owners_ != -1)
    {
      return;
    }

    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4[1].__vftable = &v4[1];
    v4[1].__shared_owners_ = v4;
    std::__shared_weak_count::__release_weak(shared_owners);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4[1].__vftable = &v4[1];
    v4[1].__shared_owners_ = v4;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v4->__on_zero_shared)(v4);

  std::__shared_weak_count::__release_weak(v4);
}

void sub_241A2B3BC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<DataRateObserver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2853A26E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZNS1_5startEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v3 = **(a1 + 40);
  if (*(v3 + 120) == 1)
  {
    v6 = v1;
    v7 = v2;
    v4 = *(v3 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_241A16000, v4, OS_LOG_TYPE_DEFAULT, "#I DataRateObserver has started, skipping current start request", v5, 2u);
    }
  }

  else
  {

    DataRateObserver::start_sync(v3);
  }
}

uint64_t std::__function::__func<DataRateObserver::start_sync(void)::$_0,std::allocator<DataRateObserver::start_sync(void)::$_0>,void ()(void)>::~__func(uint64_t result)
{
  *result = &unk_2853A2730;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void std::__function::__func<DataRateObserver::start_sync(void)::$_0,std::allocator<DataRateObserver::start_sync(void)::$_0>,void ()(void)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2853A2730;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *std::__function::__func<DataRateObserver::start_sync(void)::$_0,std::allocator<DataRateObserver::start_sync(void)::$_0>,void ()(void)>::__clone(void *a1)
{
  result = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *result = &unk_2853A2730;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result[3] = a1[3];
  return result;
}

void *std::__function::__func<DataRateObserver::start_sync(void)::$_0,std::allocator<DataRateObserver::start_sync(void)::$_0>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2853A2730;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<DataRateObserver::start_sync(void)::$_0,std::allocator<DataRateObserver::start_sync(void)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<DataRateObserver::start_sync(void)::$_0,std::allocator<DataRateObserver::start_sync(void)::$_0>,void ()(void)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<DataRateObserver::start_sync(void)::$_0,std::allocator<DataRateObserver::start_sync(void)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[1])
      {
        goto LABEL_6;
      }

      v7 = v3;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZZNS1_10start_syncEvENK3__0clEvEUlvE_EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
      block[3] = &__block_descriptor_tmp_15;
      block[4] = v3;
      block[5] = &v7;
      v6 = *(v3 + 16);
      if (*(v3 + 24))
      {
        dispatch_async_and_wait(v6, block);
LABEL_6:
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }

LABEL_9:
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        return;
      }

      dispatch_sync(v6, block);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t std::__function::__func<DataRateObserver::start_sync(void)::$_0,std::allocator<DataRateObserver::start_sync(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN16DataRateObserver10start_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN16DataRateObserver10start_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN16DataRateObserver10start_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN16DataRateObserver10start_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZZNS1_10start_syncEvENK3__0clEvEUlvE_EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v1 = **(a1 + 40);
  memset(v36, 170, sizeof(v36));
  Timestamp::Timestamp(v36);
  v35 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33 = v2;
  v34 = v2;
  v32 = v2;
  Timestamp::Timestamp(&v32, (v1 + 80));
  Timestamp::Timestamp((&v33 + 8), v36);
  LODWORD(v35) = *(v1 + 124);
  v3 = *(v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    Timestamp::asString(&v32, 0, 9);
    v26 = SHIBYTE(v39);
    v27 = v37;
    Timestamp::asString(&v33 + 8, 0, 9);
    v28 = &v37;
    if (v26 < 0)
    {
      v28 = v27;
    }

    if (v31 >= 0)
    {
      v29 = __p;
    }

    else
    {
      v29 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = v28;
    *&buf[12] = 2080;
    *&buf[14] = v29;
    *&buf[22] = 1024;
    LODWORD(v43) = v35;
    _os_log_debug_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEBUG, "#D Pushing sample start time: %s, end time: %s, amount: %u bytes", buf, 0x1Cu);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v37);
    }
  }

  v5 = *(v1 + 64);
  v4 = *(v1 + 72);
  if (v5 >= v4)
  {
    v7 = *(v1 + 56);
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v5 - v7) >> 3);
    if ((v8 + 1) > 0x492492492492492)
    {
      std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v4 - v7) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x249249249249249)
    {
      v11 = 0x492492492492492;
    }

    else
    {
      v11 = v10;
    }

    v44 = v1 + 56;
    if (v11)
    {
      if (v11 > 0x492492492492492)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v12 = operator new(56 * v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[56 * v8];
    *buf = v12;
    *&buf[8] = v13;
    *&buf[16] = v13;
    v43 = &v12[56 * v11];
    Timestamp::Timestamp(v13, &v32);
    Timestamp::Timestamp((v13 + 24), &v33 + 1);
    *(v13 + 12) = v35;
    v6 = *&buf[16] + 56;
    *&buf[16] += 56;
    v15 = *(v1 + 56);
    v14 = *(v1 + 64);
    v37 = (v1 + 56);
    v38 = &v41;
    v39 = __p;
    v40 = 0xAAAAAAAAAAAAAA00;
    v16 = (*&buf[8] + v15 - v14);
    __p[0] = v16;
    v41 = v16;
    if (v15 != v14)
    {
      v17 = (*&buf[8] + v15 - v14);
      v18 = v15;
      do
      {
        Timestamp::Timestamp(v17, v18);
        Timestamp::Timestamp((v17 + 6), (v18 + 24));
        v17[12] = *(v18 + 48);
        v18 += 56;
        v17 = __p[0] + 56;
        __p[0] = __p[0] + 56;
      }

      while (v18 != v14);
      LOBYTE(v40) = 1;
      v19 = v15 + 24;
      do
      {
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v19, *(v19 + 8));
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v19 - 24, *(v19 - 16));
        v20 = v19 + 32;
        v19 += 56;
      }

      while (v20 != v14);
      if ((v40 & 1) == 0)
      {
        v21 = *v38;
        if (*v39 != *v38)
        {
          v22 = *v39 - 56;
          do
          {
            std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v22 + 24, *(v22 + 32));
            std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v22, *(v22 + 8));
            v23 = v22 == v21;
            v22 -= 56;
          }

          while (!v23);
        }
      }
    }

    v24 = *(v1 + 56);
    *(v1 + 56) = v16;
    *(v1 + 64) = v6;
    *(v1 + 72) = v43;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    Timestamp::Timestamp(*(v1 + 64), &v32);
    Timestamp::Timestamp((v5 + 24), &v33 + 1);
    *(v5 + 48) = v35;
    v6 = v5 + 56;
    *(v1 + 64) = v5 + 56;
  }

  *(v1 + 64) = v6;
  if ((v1 + 80) != v36)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<Timestamp::TimeDomain,timeval>,std::__tree_node<std::__value_type<Timestamp::TimeDomain,timeval>,void *> *,long>>((v1 + 80), v36[0], &v36[1]);
  }

  *(v1 + 124) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v33 + 8, v34);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v32, *(&v32 + 1));
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v36, v36[1]);
  v25 = *MEMORY[0x277D85DE8];
}

void sub_241A2BC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v29, *(v29 + 8));
  std::__split_buffer<DataRateObserver::Sample>::~__split_buffer(v30 - 144);
  DataRateObserver::Sample::~Sample(&a13);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a21, a22);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DataRateObserver::Sample>,DataRateObserver::Sample*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 56;
      do
      {
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v4 + 24, *(v4 + 32));
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v4, *(v4 + 8));
        v5 = v4 == v3;
        v4 -= 56;
      }

      while (!v5);
    }
  }

  return a1;
}

uint64_t std::__split_buffer<DataRateObserver::Sample>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(i - 32, *(i - 24));
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(i - 56, *(i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_pointer<support::misc::safe_timer  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::misc::safe_timer  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<support::misc::safe_timer  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000241A658A8)
  {
    if (((v2 & 0x8000000241A658A8 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000241A658A8))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000241A658A8 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZNS1_13gatherSamplesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = **(a1 + 40);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  v6 = v5 - v4;
  if (v5 != v4)
  {
    if ((0x6DB6DB6DB6DB6DB7 * (v6 >> 3)) >= 0x492492492492493)
    {
      std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
    }

    v7 = operator new(v5 - v4);
    *a2 = v7;
    a2[1] = v7;
    a2[2] = v7 + v6;
    v9 = v7;
    v8 = v7;
    do
    {
      Timestamp::Timestamp(v8, v4);
      Timestamp::Timestamp((v8 + 6), (v4 + 24));
      v8[12] = *(v4 + 48);
      v4 += 56;
      v8 = v9 + 14;
      v9 += 14;
    }

    while (v4 != v5);
    a2[1] = v8;
  }
}

void sub_241A2C000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DataRateObserver::Sample>,DataRateObserver::Sample*>>::~__exception_guard_exceptions[abi:ne200100](&a11);
  *(v11 + 8) = v12;
  std::__exception_guard_exceptions<std::vector<DataRateObserver::Sample>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ***std::__exception_guard_exceptions<std::vector<DataRateObserver::Sample>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 56;
        do
        {
          std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v6 + 24, *(v6 + 32));
          std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v6, *(v6 + 8));
          v7 = v6 == v2;
          v6 -= 56;
        }

        while (!v7);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

double ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__16vectorIN16DataRateObserver6SampleENS1_9allocatorIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v9);
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = *v2;
    if (v4 != v3)
    {
      v6 = v4 - 56;
      do
      {
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v6 + 24, *(v6 + 32));
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v6, *(v6 + 8));
        v7 = v6 == v3;
        v6 -= 56;
      }

      while (!v7);
      v5 = *v2;
    }

    v2[1] = v3;
    operator delete(v5);
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
  }

  result = *&v9;
  *v2 = v9;
  v2[2] = v10;
  return result;
}

double ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__16vectorIN16DataRateObserver6SampleENS1_9allocatorIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v9);
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = *v2;
    if (v4 != v3)
    {
      v6 = v4 - 56;
      do
      {
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v6 + 24, *(v6 + 32));
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v6, *(v6 + 8));
        v7 = v6 == v3;
        v6 -= 56;
      }

      while (!v7);
      v5 = *v2;
    }

    v2[1] = v3;
    operator delete(v5);
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
  }

  result = *&v9;
  *v2 = v9;
  v2[2] = v10;
  return result;
}

void ___ZNK3ctu20SharedSynchronizableI16DataRateObserverE20execute_wrapped_syncIZNS1_12clearSamplesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = **(a1 + 40);
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  if (v2 != v3)
  {
    v4 = v2 - 56;
    do
    {
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v4 + 24, *(v4 + 32));
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v4, *(v4 + 8));
      v5 = v4 == v3;
      v4 -= 56;
    }

    while (!v5);
  }

  *(v1 + 64) = v3;
}

uint64_t __cxx_global_var_init_4()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_241A16000);
  }

  return result;
}

uint64_t support::fs::toString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    a2[23] = 9;
    strcpy(a2, "_wireless");
  }

  else if (result)
  {
    a2[23] = 0;
    *a2 = 0;
  }

  else
  {
    a2[23] = 6;
    strcpy(a2, "mobile");
  }

  return result;
}

uint64_t support::fs::updateOwner(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__dst.st_blksize = v6;
  *__dst.st_qspare = v6;
  __dst.st_birthtimespec = v6;
  *&__dst.st_size = v6;
  __dst.st_mtimespec = v6;
  __dst.st_ctimespec = v6;
  *&__dst.st_uid = v6;
  __dst.st_atimespec = v6;
  *&__dst.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &__dst))
  {
    v16 = v5[23] >= 0 ? v5 : *v5;
    v17 = opendir(v16);
    if (v17)
    {
      v18 = v17;
      v19 = readdir(v17);
      closedir(v18);
      if (v19)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        support::fs::readDir(v5, &v58);
        v20 = v58;
        v54 = v59;
        if (v58 == v59)
        {
          updated = 0;
          if (v58)
          {
            goto LABEL_108;
          }

          return updated;
        }

        v21 = (v58 + 24);
        while (1)
        {
          memset(&v57, 170, sizeof(v57));
          if (*(v21 - 1) < 0)
          {
            std::string::__init_copy_ctor_external(&v57, *(v21 - 3), *(v21 - 2));
          }

          else
          {
            v23 = *(v21 - 3);
            v57.__r_.__value_.__r.__words[2] = *(v21 - 1);
            *&v57.__r_.__value_.__l.__data_ = v23;
          }

          memset(&__p, 170, sizeof(__p));
          v24 = v5[23];
          if (v24 >= 0)
          {
            v25 = *(v5 + 23);
          }

          else
          {
            v25 = *(v5 + 1);
          }

          v26 = v25 + 1;
          if (v25 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v26 < 0x17)
          {
            memset(&__dst, 0, 24);
            p_dst = &__dst;
            HIBYTE(__dst.st_gid) = v25 + 1;
            if (!v25)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if ((v26 | 7) == 0x17)
            {
              v27 = 25;
            }

            else
            {
              v27 = (v26 | 7) + 1;
            }

            p_dst = operator new(v27);
            __dst.st_ino = v25 + 1;
            *&__dst.st_uid = v27 | 0x8000000000000000;
            *&__dst.st_dev = p_dst;
          }

          v29 = *v5;
          if (v24 >= 0)
          {
            v30 = v5;
          }

          else
          {
            v30 = *v5;
          }

          memmove(p_dst, v30, v25);
LABEL_48:
          *&p_dst[v25] = 47;
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &v57;
          }

          else
          {
            v31 = v57.__r_.__value_.__r.__words[0];
          }

          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v57.__r_.__value_.__l.__size_;
          }

          v33 = std::string::append(&__dst, v31, size);
          v34 = *&v33->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.st_gid) < 0)
          {
            operator delete(*&__dst.st_dev);
            v35 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
            if ((*(&v57.__r_.__value_.__s + 23) & 0x80) == 0)
            {
LABEL_56:
              if (v35 == 1)
              {
                if (v57.__r_.__value_.__s.__data_[0] == 46)
                {
                  goto LABEL_72;
                }
              }

              else if (v35 == 2 && LOWORD(v57.__r_.__value_.__l.__data_) == 11822)
              {
                goto LABEL_72;
              }

              goto LABEL_68;
            }
          }

          else
          {
            v35 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
            if ((*(&v57.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              goto LABEL_56;
            }
          }

          if (v57.__r_.__value_.__l.__size_ == 1)
          {
            if (*v57.__r_.__value_.__l.__data_ == 46)
            {
              goto LABEL_72;
            }
          }

          else if (v57.__r_.__value_.__l.__size_ == 2 && *v57.__r_.__value_.__l.__data_ == 11822)
          {
            goto LABEL_72;
          }

LABEL_68:
          v36.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v36.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&__dst.st_blksize = v36;
          *__dst.st_qspare = v36;
          __dst.st_birthtimespec = v36;
          *&__dst.st_size = v36;
          __dst.st_mtimespec = v36;
          __dst.st_ctimespec = v36;
          *&__dst.st_uid = v36;
          __dst.st_atimespec = v36;
          *&__dst.st_dev = v36;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (stat(p_p, &__dst) || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v47 = &__p) : (v47 = __p.__r_.__value_.__r.__words[0]), (v48 = opendir(v47), (v49 = v48) == 0) || (v50 = readdir(v48), closedir(v49), !v50)))
          {
LABEL_72:
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &__p;
            }

            else
            {
              v38 = __p.__r_.__value_.__r.__words[0];
            }

            v39 = strlen(v38);
            if (v39 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v40 = v39;
            if (v39 >= 0x17)
            {
              if ((v39 | 7) == 0x17)
              {
                v42 = 25;
              }

              else
              {
                v42 = (v39 | 7) + 1;
              }

              v41 = operator new(v42);
              __dst.st_ino = v40;
              *&__dst.st_uid = v42 | 0x8000000000000000;
              *&__dst.st_dev = v41;
            }

            else
            {
              HIBYTE(__dst.st_gid) = v39;
              v41 = &__dst;
              if (!v39)
              {
LABEL_84:
                v41[v40] = 0;
                st_gid_high = SHIBYTE(__dst.st_gid);
                v44 = *&__dst.st_dev;
                if ((__dst.st_gid & 0x80000000) == 0)
                {
                  v45 = &__dst;
                }

                else
                {
                  v45 = *&__dst.st_dev;
                }

                updated = chown(v45, a2, a3) == 0;
                if (st_gid_high < 0)
                {
                  v46 = v44;
LABEL_89:
                  operator delete(v46);
                  goto LABEL_90;
                }

                goto LABEL_90;
              }
            }

            memmove(v41, v38, v40);
            goto LABEL_84;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v55, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v55 = __p;
          }

          updated = support::fs::updateOwner(&v55, a2, a3);
          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            v46 = v55.__r_.__value_.__r.__words[0];
            goto LABEL_89;
          }

LABEL_90:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_94:
              operator delete(v57.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_94;
          }

          if (v21 == v54)
          {
            v22 = 0;
          }

          else
          {
            v22 = updated;
          }

          v21 += 3;
          if ((v22 & 1) == 0)
          {
            v20 = v58;
            if (!v58)
            {
              return updated;
            }

LABEL_108:
            v51 = v59;
            v15 = v20;
            if (v59 != v20)
            {
              do
              {
                v52 = *(v51 - 1);
                v51 -= 3;
                if (v52 < 0)
                {
                  operator delete(*v51);
                }
              }

              while (v51 != v20);
              v15 = v58;
            }

            v59 = v20;
LABEL_115:
            operator delete(v15);
            return updated;
          }
        }
      }
    }
  }

  if (v5[23] < 0)
  {
    v5 = *v5;
  }

  v7 = strlen(v5);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    __dst.st_ino = v8;
    *&__dst.st_uid = v10 | 0x8000000000000000;
    *&__dst.st_dev = v9;
    goto LABEL_14;
  }

  HIBYTE(__dst.st_gid) = v7;
  v9 = &__dst;
  if (v7)
  {
LABEL_14:
    memmove(v9, v5, v8);
  }

  *(v9 + v8) = 0;
  v11 = SHIBYTE(__dst.st_gid);
  v12 = *&__dst.st_dev;
  if ((__dst.st_gid & 0x80000000) == 0)
  {
    v13 = &__dst;
  }

  else
  {
    v13 = *&__dst.st_dev;
  }

  updated = chown(v13, a2, a3) == 0;
  if (v11 < 0)
  {
    v15 = v12;
    goto LABEL_115;
  }

  return updated;
}

DIR *support::fs::isDir(const char *a1)
{
  v1 = a1;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v7.st_blksize = v2;
  *v7.st_qspare = v2;
  v7.st_birthtimespec = v2;
  *&v7.st_size = v2;
  v7.st_mtimespec = v2;
  v7.st_ctimespec = v2;
  *&v7.st_uid = v2;
  v7.st_atimespec = v2;
  *&v7.st_dev = v2;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v7))
  {
    return 0;
  }

  if (v1[23] >= 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = *v1;
  }

  result = opendir(v4);
  if (result)
  {
    v5 = result;
    v6 = readdir(result);
    closedir(v5);
    return (v6 != 0);
  }

  return result;
}

BOOL support::fs::chown(const char *a1, uid_t a2, gid_t a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return chown(a1, a2, a3) == 0;
}

DIR *support::fs::readDir(const char *a1, uint64_t a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = readdir(result);
    if (v5)
    {
      v6 = v5;
      do
      {
        memset(__dst, 170, sizeof(__dst));
        d_namlen = v6->d_namlen;
        if (d_namlen >= 0x17)
        {
          if ((d_namlen | 7) == 0x17)
          {
            v11 = 25;
          }

          else
          {
            v11 = (d_namlen | 7) + 1;
          }

          v8 = operator new(v11);
          *&__dst[8] = d_namlen;
          *&__dst[16] = v11 | 0x8000000000000000;
          *__dst = v8;
        }

        else
        {
          __dst[23] = v6->d_namlen;
          v8 = __dst;
          if (!d_namlen)
          {
            __dst[d_namlen] = 0;
            v9 = *(a2 + 8);
            if (v9 < *(a2 + 16))
            {
              goto LABEL_10;
            }

            goto LABEL_17;
          }
        }

        memmove(v8, v6->d_name, d_namlen);
        v8[d_namlen] = 0;
        v9 = *(a2 + 8);
        if (v9 < *(a2 + 16))
        {
LABEL_10:
          if ((__dst[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v9, *__dst, *&__dst[8]);
          }

          else
          {
            v10 = *__dst;
            v9->__r_.__value_.__r.__words[2] = *&__dst[16];
            *&v9->__r_.__value_.__l.__data_ = v10;
          }

          *(a2 + 8) = v9 + 1;
          *(a2 + 8) = v9 + 1;
          if ((__dst[23] & 0x80000000) == 0)
          {
            goto LABEL_6;
          }

LABEL_21:
          operator delete(*__dst);
          goto LABEL_6;
        }

LABEL_17:
        *(a2 + 8) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a2, __dst);
        if ((__dst[23] & 0x80000000) != 0)
        {
          goto LABEL_21;
        }

LABEL_6:
        v6 = readdir(v4);
      }

      while (v6);
    }

    return closedir(v4);
  }

  return result;
}

void sub_241A2CB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 8) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
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
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t support::fs::getUidGid(int a1, uid_t *a2, gid_t *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(__p, 170, sizeof(__p));
  if (a1 == 1)
  {
    HIBYTE(__p[2]) = 9;
    strcpy(__p, "_wireless");
    v5 = getpwnam(__p);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (a1)
  {
    goto LABEL_12;
  }

  HIBYTE(__p[2]) = 6;
  strcpy(__p, "mobile");
  v5 = getpwnam(__p);
  if (!v5)
  {
LABEL_6:
    if ((atomic_load_explicit(&qword_27E552420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552420))
    {
      qword_27E552428 = 0;
      qword_27E552430 = 0;
      __cxa_guard_release(&qword_27E552420);
    }

    if (_MergedGlobals_1 != -1)
    {
      dispatch_once(&_MergedGlobals_1, &__block_literal_global_0);
    }

    v7 = qword_27E552430;
    if (os_log_type_enabled(qword_27E552430, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v9 = __p[0];
      }

      *buf = 136315138;
      v12 = v9;
      _os_log_error_impl(&dword_241A16000, v7, OS_LOG_TYPE_ERROR, "Getting uid and gid: failed to get passwd for %s", buf, 0xCu);
      if ((HIBYTE(__p[2]) & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if ((HIBYTE(__p[2]) & 0x80) != 0)
    {
LABEL_11:
      operator delete(__p[0]);
    }

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

LABEL_4:
  *a2 = v5->pw_uid;
  *a3 = v5->pw_gid;
  result = 1;
LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL support::fs::writeToCompletion(support::fs *this, char *__buf, size_t __nbyte)
{
  v4 = this;
  do
  {
    v5 = __nbyte;
    if (!__nbyte)
    {
      break;
    }

    v6 = write(v4, __buf, __nbyte);
    __nbyte = v5 - v6;
    __buf += v6;
  }

  while ((v6 & 0x8000000000000000) == 0);
  return v5 == 0;
}

BOOL support::fs::writeToCompletion(FILE *__stream, __sFILE *__ptr, size_t __nitems)
{
  while (1)
  {
    v5 = __nitems;
    if (!__nitems)
    {
      break;
    }

    v6 = fwrite(__ptr, 1uLL, __nitems, __stream);
    __nitems = v5 - v6;
    __ptr = (__ptr + v6);
    if (!v6)
    {
      return v5 == 0;
    }
  }

  fflush(__stream);
  return 1;
}

uint64_t support::fs::openFile(const char *a1, int a2, uint64_t a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return open(a1, a2, a3);
}

BOOL support::fs::closeFile(support::fs *this)
{
  v1 = this;
  do
  {
    v2 = close(v1);
  }

  while (v2 && *__error() == 4);
  return v2 == 0;
}

BOOL support::fs::copyFile(const char *a1, const char *a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1[23] >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = strlen(v6);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    *&__dst[8] = v8;
    *&__dst[16] = v10 | 0x8000000000000000;
    *__dst = v9;
    goto LABEL_12;
  }

  __dst[23] = v7;
  v9 = __dst;
  if (v7)
  {
LABEL_12:
    memmove(v9, v6, v8);
  }

  v9[v8] = 0;
  if (__dst[23] >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = *__dst;
  }

  v12 = open(v11, 0, 420);
  v13 = v12;
  if ((__dst[23] & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    if ((atomic_load_explicit(&qword_27E552420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552420))
    {
      qword_27E552428 = 0;
      qword_27E552430 = 0;
      __cxa_guard_release(&qword_27E552420);
    }

    if (_MergedGlobals_1 == -1)
    {
      v18 = qword_27E552430;
      if (!os_log_type_enabled(qword_27E552430, OS_LOG_TYPE_ERROR))
      {
LABEL_29:
        v19 = 0;
        goto LABEL_60;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_1, &__block_literal_global_0);
      v18 = qword_27E552430;
      if (!os_log_type_enabled(qword_27E552430, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }
    }

    if (a1[23] >= 0)
    {
      v31 = a1;
    }

    else
    {
      v31 = *a1;
    }

    *__dst = 136315138;
    *&__dst[4] = v31;
    _os_log_error_impl(&dword_241A16000, v18, OS_LOG_TYPE_ERROR, "Failed to open the source file %s", __dst, 0xCu);
    goto LABEL_29;
  }

  operator delete(*__dst);
  if (v13 < 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (a2[23] >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  v15 = strlen(v14);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v15 | 7) + 1;
    }

    v17 = operator new(v20);
    *&__dst[8] = v16;
    *&__dst[16] = v20 | 0x8000000000000000;
    *__dst = v17;
    goto LABEL_34;
  }

  __dst[23] = v15;
  v17 = __dst;
  if (v15)
  {
LABEL_34:
    memmove(v17, v14, v16);
  }

  v17[v16] = 0;
  if (__dst[23] >= 0)
  {
    v21 = __dst;
  }

  else
  {
    v21 = *__dst;
  }

  v22 = open(v21, 1541, 420);
  v23 = v22;
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
LABEL_40:
    memset(__dst, 170, sizeof(__dst));
    v24 = read(v13, __dst, 0x400uLL);
    if (v24 < 1)
    {
LABEL_46:
      v19 = v24 == 0;
      if (!v24 && a3)
      {
        *&v27 = 0xAAAAAAAAAAAAAAAALL;
        *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&__dst[112] = v27;
        *&__dst[128] = v27;
        *&__dst[80] = v27;
        *&__dst[96] = v27;
        *&__dst[48] = v27;
        *&__dst[64] = v27;
        *&__dst[16] = v27;
        *&__dst[32] = v27;
        *__dst = v27;
        if (fstat(v13, __dst))
        {
          v19 = 0;
        }

        else
        {
          v19 = fchmod(v23, *&__dst[4]) == 0;
        }
      }
    }

    else
    {
      v25 = __dst;
      do
      {
        while (!v24)
        {
          memset(__dst, 170, sizeof(__dst));
          v24 = read(v13, __dst, 0x400uLL);
          v25 = __dst;
          if (v24 <= 0)
          {
            goto LABEL_46;
          }
        }

        v26 = write(v23, v25, v24);
        v24 -= v26;
        v25 += v26;
      }

      while ((v26 & 0x8000000000000000) == 0);
      v19 = 0;
    }

      ;
    }

    goto LABEL_58;
  }

  if ((atomic_load_explicit(&qword_27E552420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552420))
  {
    qword_27E552428 = 0;
    qword_27E552430 = 0;
    __cxa_guard_release(&qword_27E552420);
  }

  if (_MergedGlobals_1 != -1)
  {
    dispatch_once(&_MergedGlobals_1, &__block_literal_global_0);
    v28 = qword_27E552430;
    if (!os_log_type_enabled(qword_27E552430, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

LABEL_67:
    if (a2[23] >= 0)
    {
      v32 = a2;
    }

    else
    {
      v32 = *a2;
    }

    *__dst = 136315138;
    *&__dst[4] = v32;
    _os_log_error_impl(&dword_241A16000, v28, OS_LOG_TYPE_ERROR, "Failed to open the destination file %s", __dst, 0xCu);
    goto LABEL_54;
  }

  v28 = qword_27E552430;
  if (os_log_type_enabled(qword_27E552430, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_67;
  }

LABEL_54:
  v19 = 0;
LABEL_58:
    ;
  }

LABEL_60:
  v29 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_241A2D3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::fs::loadFile(uint64_t *a1, char **a2)
{
  v19[89] = *MEMORY[0x277D85DE8];
  memset(v19, 170, 0x240uLL);
  std::ifstream::basic_ifstream(v19, a1);
  if (v19[17] && (std::istream::tellg(), std::istream::seekg(), std::istream::tellg(), v4 = v19[88], std::istream::seekg(), v4) && !*(&v19[4] + *(v19[0] - 24)))
  {
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 - *a2;
    v11 = v4 - v10;
    if (v4 <= v10)
    {
      if (v4 < v10)
      {
        a2[1] = &v9[v4];
      }
    }

    else
    {
      v12 = a2[2];
      if (v12 - v8 >= v11)
      {
        v17 = &v8[v11];
        bzero(v8, v4 - v10);
        a2[1] = v17;
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
        }

        v13 = v12 - v9;
        v14 = 2 * v13;
        if (2 * v13 <= v4)
        {
          v14 = v4;
        }

        if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v16 = operator new(v15);
        bzero(&v16[v10], v4 - v10);
        memcpy(v16, v9, v10);
        *a2 = v16;
        a2[1] = &v16[v4];
        a2[2] = &v16[v15];
        if (v9)
        {
          operator delete(v9);
        }
      }
    }

    v18 = *a2;
    std::istream::read();
    v5 = v19[1] == v4;
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v19 + *(v19[0] - 24)), *(&v19[4] + *(v19[0] - 24)) | 4);
    }
  }

  else
  {
    v5 = 0;
  }

  v19[0] = *MEMORY[0x277D82808];
  *(v19 + *(v19[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x245CF5860](&v19[2]);
  std::istream::~istream();
  MEMORY[0x245CF5AE0](&v19[53]);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  a1[59] = 0;
  v4 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v5 = *(MEMORY[0x277D82808] + 16);
  v6 = *(MEMORY[0x277D82808] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x277D82858] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x245CF5850](a1 + 2);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_241A2D87C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x245CF5AE0](v1);
  _Unwind_Resume(a1);
}

BOOL support::fs::getFileSize(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 136);
  if (v2)
  {
    std::istream::tellg();
    std::istream::seekg();
    std::istream::tellg();
    *a2 = v6;
    std::istream::seekg();
  }

  result = v2 != 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v9[89] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    memset(v9, 170, 0x240uLL);
    std::ifstream::basic_ifstream(v9, a1);
    v5 = v9[17] != 0;
    if (v9[17])
    {
      std::istream::tellg();
      std::istream::seekg();
      std::istream::tellg();
      *a2 = v9[88];
      std::istream::seekg();
      if (!std::filebuf::close())
      {
        std::ios_base::clear((v9 + *(v9[0] - 24)), *(&v9[4] + *(v9[0] - 24)) | 4);
      }
    }

    v9[0] = *MEMORY[0x277D82808];
    *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82808] + 24);
    MEMORY[0x245CF5860](&v9[2]);
    std::istream::~istream();
    MEMORY[0x245CF5AE0](&v9[53]);
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = 0;
    v8 = *MEMORY[0x277D85DE8];
  }

  return v5;
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x245CF5860](a1 + 2);
  std::istream::~istream();
  MEMORY[0x245CF5AE0](a1 + 53);
  return a1;
}

uint64_t support::fs::loadFile(const char *a1, char **a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v3 = fopen(a1, "rb");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (fseek(v3, 0, 2) || (v6 = MEMORY[0x245CF5FE0](v4), v6 == -1))
  {
    v5 = 0;
  }

  else
  {
    v7 = v6;
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 - *a2;
    v11 = v7 - v10;
    if (v7 <= v10)
    {
      if (v7 < v10)
      {
        a2[1] = &v9[v7];
      }
    }

    else
    {
      v12 = a2[2];
      if (v12 - v8 >= v11)
      {
        v17 = &v8[v11];
        bzero(v8, v7 - v10);
        a2[1] = v17;
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
        }

        v13 = v12 - v9;
        v14 = 2 * v13;
        if (2 * v13 <= v7)
        {
          v14 = v7;
        }

        if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v16 = operator new(v15);
        bzero(&v16[v10], v7 - v10);
        memcpy(v16, v9, v10);
        *a2 = v16;
        a2[1] = &v16[v7];
        a2[2] = &v16[v15];
        if (v9)
        {
          operator delete(v9);
        }
      }
    }

    rewind(v4);
    v18 = *a2;
    v5 = 1;
    fread(v18, v7, 1uLL, v4);
  }

  fclose(v4);
  return v5;
}

BOOL support::fs::fileExists(const char *a1)
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v3.st_blksize = v1;
  *v3.st_qspare = v1;
  v3.st_birthtimespec = v1;
  *&v3.st_size = v1;
  v3.st_mtimespec = v1;
  v3.st_ctimespec = v1;
  *&v3.st_uid = v1;
  v3.st_atimespec = v1;
  *&v3.st_dev = v1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return stat(a1, &v3) == 0;
}

void support::fs::createUniqueFilename(std::string::value_type *a1@<X0>, uint64_t a2@<X8>)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v119[32] = v3;
  *v119 = v3;
  *&v119[16] = v3;
  *&v118[0].__locale_ = v3;
  MEMORY[0x245CF5A90](v118);
  v118[1].__locale_ = std::locale::use_facet(v118, MEMORY[0x277D82680]);
  *v119 = std::locale::use_facet(v118, MEMORY[0x277D826A0]);
  memset(&v119[8], 0, 40);
  if (std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(v118, "^([/_\\-[:alnum:]]*)(.*)", "") != "")
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  memset(&v117, 170, sizeof(v117));
  if (a1[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v117, *a1, *(a1 + 1));
  }

  else
  {
    v117 = *a1;
  }

  v103 = 0;
  v102 = a1;
  while (1)
  {
    v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v120.st_blksize = v4;
    *v120.st_qspare = v4;
    v120.st_birthtimespec = v4;
    *&v120.st_size = v4;
    v120.st_mtimespec = v4;
    v120.st_ctimespec = v4;
    *&v120.st_uid = v4;
    v120.st_atimespec = v4;
    *&v120.st_dev = v4;
    if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v117;
    }

    else
    {
      v5 = v117.__r_.__value_.__r.__words[0];
    }

    if (stat(v5, &v120))
    {
      *a2 = v117;
      goto LABEL_159;
    }

    if (!std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(a1, v118))
    {
      break;
    }

    memset(__p, 170, 24);
    std::to_string(v121, ++v103);
    v6 = std::string::insert(v121, 0, "$1-");
    v7 = *&v6->__r_.__value_.__l.__data_;
    *&v120.st_uid = *(&v6->__r_.__value_.__l + 2);
    *&v120.st_dev = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v120, "$2");
    v9 = *&v8->__r_.__value_.__l.__data_;
    __p[2] = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v120.st_gid) < 0)
    {
      operator delete(*&v120.st_dev);
      if (SHIBYTE(v121[0].__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_145:
        operator delete(v121[0].__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(v121[0].__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_145;
    }

    memset(&v115, 0, sizeof(v115));
    v10 = *(a1 + 1);
    if (a1[23] >= 0)
    {
      v11 = a1[23];
    }

    else
    {
      a1 = *a1;
      v11 = v10;
    }

    v12 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v12 = __p[0];
    }

    __s = v12;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v120.st_gen = v13;
    v120.st_size = 0xAAAAAAAAAAAAAAAALL;
    v120.st_ctimespec.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *(&v120.st_rdev + 1) = -1431655766;
    *&v120.st_dev = a1;
    v120.st_ino = &a1[v11];
    *&v120.st_uid = v118;
    v120.st_rdev = 0;
    memset(&v120.st_birthtimespec, 0, 17);
    memset(&v120.st_blocks, 0, 17);
    LOBYTE(v120.st_qspare[0]) = 0;
    v120.st_qspare[1] = 0;
    memset(&v120.st_atimespec, 0, 40);
    v125 = v13;
    v123 = 0xAAAAAAAAAAAAAA00;
    v121[1].__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
    v122 = 0uLL;
    v124 = 0uLL;
    LOBYTE(v125) = 0;
    BYTE8(v125) = 0;
    v126 = 0;
    memset(v121, 0, 41);
    std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v118, a1, &a1[v11], v121, 0);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v120.st_atimespec, a1, &a1[v11], v121, 0);
    if (v121[0].__r_.__value_.__r.__words[0])
    {
      v121[0].__r_.__value_.__l.__size_ = v121[0].__r_.__value_.__r.__words[0];
      operator delete(v121[0].__r_.__value_.__l.__data_);
    }

    tv_sec = v120.st_atimespec.tv_sec;
    if (v120.st_atimespec.tv_nsec != v120.st_atimespec.tv_sec)
    {
      v109 = strlen(__s);
      v15 = &__s[v109];
      v16 = v120.st_birthtimespec.tv_sec;
      for (i = v120.st_birthtimespec.tv_nsec; v16 != i; ++v16)
      {
LABEL_27:
        std::string::push_back(&v115, *v16);
      }

      while (1)
      {
        if (v109)
        {
          v18 = __s;
          do
          {
            v20 = *v18;
            v19 = (v18 + 1);
            if (v20 == 36 && v19 != v15)
            {
              v22 = *v19;
              if (v22 > 0x26)
              {
                if (v22 == 39)
                {
                  st_blocks = v120.st_blocks;
                  for (j = *&v120.st_blksize; st_blocks != j; ++st_blocks)
                  {
                    std::string::push_back(&v115, *st_blocks);
                  }

                  goto LABEL_32;
                }

                if (v22 == 96)
                {
                  v25 = v120.st_birthtimespec.tv_sec;
                  for (k = v120.st_birthtimespec.tv_nsec; v25 != k; ++v25)
                  {
                    std::string::push_back(&v115, *v25);
                  }

                  goto LABEL_32;
                }

LABEL_48:
                LODWORD(v27) = v22 - 48;
                if (v27 <= 9)
                {
                  v27 = v27;
                  if (v18 + 2 != v15)
                  {
                    v28 = v18[2];
                    v29 = v28 - 48;
                    v30 = v28 + 10 * v27 - 48;
                    if (v29 > 9)
                    {
                      v19 = (v18 + 1);
                    }

                    else
                    {
                      v27 = v30;
                      v19 = (v18 + 2);
                    }
                  }

                  v31 = 0xAAAAAAAAAAAAAAABLL * ((v120.st_atimespec.tv_nsec - v120.st_atimespec.tv_sec) >> 3);
                  v32 = v120.st_atimespec.tv_sec + 24 * v27;
                  v33 = v31 > v27;
                  if (v31 <= v27)
                  {
                    p_tv_nsec = &v120.st_mtimespec.tv_nsec;
                  }

                  else
                  {
                    p_tv_nsec = (v120.st_atimespec.tv_sec + 24 * v27);
                  }

                  v35 = *p_tv_nsec;
                  p_st_ctimespec = (v32 + 8);
                  if (!v33)
                  {
                    p_st_ctimespec = &v120.st_ctimespec;
                  }

                  for (m = p_st_ctimespec->tv_sec; v35 != m; ++v35)
                  {
                    std::string::push_back(&v115, *v35);
                  }

                  goto LABEL_32;
                }

                goto LABEL_31;
              }

              if (v22 != 36)
              {
                if (v22 == 38)
                {
                  v23 = *v120.st_atimespec.tv_sec;
                  v24 = *(v120.st_atimespec.tv_sec + 8);
                  if (*v120.st_atimespec.tv_sec != v24)
                  {
                    do
                    {
                      std::string::push_back(&v115, *v23++);
                    }

                    while (v23 != v24);
                  }

                  goto LABEL_32;
                }

                goto LABEL_48;
              }

              ++v18;
            }

LABEL_31:
            std::string::push_back(&v115, v20);
            v19 = v18;
LABEL_32:
            v18 = (v19 + 1);
          }

          while (v19 + 1 != v15);
        }

        st_rdev = v120.st_rdev;
        v41 = v120.st_rdev | 0x800;
        v120.st_rdev |= 0x800u;
        if (v120.st_atimespec.tv_nsec == v120.st_atimespec.tv_sec)
        {
          v42 = &v120.st_mtimespec.tv_nsec;
        }

        else
        {
          v42 = v120.st_atimespec.tv_sec;
        }

        v43 = (v120.st_atimespec.tv_sec + 8);
        if (v120.st_atimespec.tv_nsec == v120.st_atimespec.tv_sec)
        {
          v43 = &v120.st_ctimespec;
        }

        v44 = v43->tv_sec;
        st_ino = v120.st_ino;
        v107 = *&v120.st_blksize;
        v108 = v120.st_blocks;
        if (*v42 != v43->tv_sec)
        {
          v114 = v43->tv_sec;
          v46 = v43->tv_sec;
          goto LABEL_71;
        }

        if (v120.st_ino == v44)
        {
          break;
        }

        *&v68 = 0xAAAAAAAAAAAAAAAALL;
        *(&v68 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v125 = v68;
        v123 = 0xAAAAAAAAAAAAAA00;
        v121[1].__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
        v122 = 0uLL;
        v124 = 0uLL;
        LOBYTE(v125) = 0;
        BYTE8(v125) = 0;
        v126 = 0;
        memset(v121, 0, 41);
        v69 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(*&v120.st_uid, v44, v120.st_ino, v121, st_rdev | 0x860u);
        v70 = v122.i64[0];
        v71 = v121[0].__r_.__value_.__l.__size_ - v121[0].__r_.__value_.__r.__words[0];
        v72 = 0xAAAAAAAAAAAAAAABLL * ((v121[0].__r_.__value_.__l.__size_ - v121[0].__r_.__value_.__r.__words[0]) >> 3);
        v74 = v120.st_atimespec.tv_sec;
        tv_nsec = v120.st_atimespec.tv_nsec;
        v75 = 0xAAAAAAAAAAAAAAABLL * ((v120.st_atimespec.tv_nsec - v120.st_atimespec.tv_sec) >> 3);
        if (v72 <= v75)
        {
          if (v72 < v75)
          {
            tv_nsec = v120.st_atimespec.tv_sec + v71;
            v120.st_atimespec.tv_nsec = v120.st_atimespec.tv_sec + v71;
          }
        }

        else
        {
          std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(&v120.st_atimespec, v72 - v75);
          v74 = v120.st_atimespec.tv_sec;
          tv_nsec = v120.st_atimespec.tv_nsec;
        }

        if (tv_nsec == v74)
        {
          v92 = v44 - v70;
          v90 = v121[0].__r_.__value_.__r.__words[0];
        }

        else
        {
          v88 = 0;
          v89 = 0xAAAAAAAAAAAAAAABLL * ((tv_nsec - v74) >> 3);
          v90 = v121[0].__r_.__value_.__r.__words[0];
          v91 = 0xAAAAAAAAAAAAAAABLL * ((v121[0].__r_.__value_.__l.__size_ - v121[0].__r_.__value_.__r.__words[0]) >> 3);
          v92 = v44 - v70;
          if (v89 <= 1)
          {
            v89 = 1;
          }

          v93 = (v74 + 16);
          v94 = v121[0].__r_.__value_.__r.__words[0];
          do
          {
            if (v91 <= v88)
            {
              v95 = &v121[1];
            }

            else
            {
              v95 = v94;
            }

            *(v93 - 2) = v92 + v95->__r_.__value_.__r.__words[0];
            p_size = (v94 + 8);
            if (v91 <= v88)
            {
              p_size = &v121[1].__r_.__value_.__l.__size_;
            }

            *(v93 - 1) = v92 + *p_size;
            v97 = (v94 + 16);
            if (v91 <= v88)
            {
              v97 = &v121[1].__r_.__value_.__s.__data_[16];
            }

            *v93 = *v97;
            v93 += 24;
            ++v88;
            v94 += 24;
          }

          while (v89 != v88);
        }

        v120.st_mtimespec.tv_nsec = st_ino;
        v120.st_ctimespec.tv_sec = st_ino;
        LOBYTE(v120.st_ctimespec.tv_nsec) = 0;
        v98 = vdupq_n_s64(v92);
        v120.st_birthtimespec = vaddq_s64(v98, v122);
        LOBYTE(v120.st_size) = v123;
        *&v120.st_blocks = vaddq_s64(v98, v124);
        LOBYTE(v120.st_gen) = v125;
        LOBYTE(v120.st_qspare[0]) = BYTE8(v125);
        if (v90)
        {
          v121[0].__r_.__value_.__l.__size_ = v90;
          operator delete(v90);
        }

        if ((v69 & 1) == 0)
        {
          v114 = v44;
          v46 = (&v44->first + 1);
          v41 = v120.st_rdev;
          st_ino = v120.st_ino;
LABEL_71:
          v112 = v41;
          v120.st_rdev = v41 | 0x80;
          *&v47 = 0xAAAAAAAAAAAAAAAALL;
          *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v125 = v47;
          v123 = 0xAAAAAAAAAAAAAA00;
          v121[1].__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
          v122 = 0uLL;
          v124 = 0uLL;
          LOBYTE(v125) = 0;
          BYTE8(v125) = 0;
          v126 = 0;
          memset(v121, 0, 41);
          v110 = v46;
          v113 = st_ino;
          v111 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(*&v120.st_uid, v46, st_ino, v121, v41 | 0x80u);
          v48 = v122.i64[0];
          v49 = v121[0].__r_.__value_.__l.__size_ - v121[0].__r_.__value_.__r.__words[0];
          v50 = 0xAAAAAAAAAAAAAAABLL * ((v121[0].__r_.__value_.__l.__size_ - v121[0].__r_.__value_.__r.__words[0]) >> 3);
          v52 = v120.st_atimespec.tv_sec;
          v51 = v120.st_atimespec.tv_nsec;
          v53 = v120.st_atimespec.tv_nsec - v120.st_atimespec.tv_sec;
          v54 = 0xAAAAAAAAAAAAAAABLL * ((v120.st_atimespec.tv_nsec - v120.st_atimespec.tv_sec) >> 3);
          v55 = v50 - v54;
          if (v50 <= v54)
          {
            if (v50 < v54)
            {
              v51 = v120.st_atimespec.tv_sec + v49;
              v120.st_atimespec.tv_nsec = v120.st_atimespec.tv_sec + v49;
            }

            v65 = v114;
            v66 = v112;
            if (v51 != v120.st_atimespec.tv_sec)
            {
              goto LABEL_95;
            }

LABEL_88:
            v67 = v110 - v48;
          }

          else
          {
            if (0xAAAAAAAAAAAAAAABLL * ((v120.st_mtimespec.tv_sec - v120.st_atimespec.tv_nsec) >> 3) >= v55)
            {
              v86 = v120.st_atimespec.tv_nsec + 24 * v55;
              v87 = 8 * ((v121[0].__r_.__value_.__l.__size_ - v121[0].__r_.__value_.__r.__words[0]) >> 3) - 8 * ((v120.st_atimespec.tv_nsec - v120.st_atimespec.tv_sec) >> 3);
              do
              {
                *v51 = 0;
                *(v51 + 8) = 0;
                *(v51 + 16) = 0;
                v51 += 24;
                v87 -= 24;
              }

              while (v87);
              v120.st_atimespec.tv_nsec = v86;
              v65 = v114;
              v66 = v112;
              v52 = v120.st_atimespec.tv_sec;
              v51 = v86;
              if (v86 == v120.st_atimespec.tv_sec)
              {
                goto LABEL_88;
              }
            }

            else
            {
              if (v50 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
              }

              v105 = v122.i64[0];
              v56 = 0x5555555555555556 * ((v120.st_mtimespec.tv_sec - v120.st_atimespec.tv_sec) >> 3);
              if (v56 <= v50)
              {
                v56 = 0xAAAAAAAAAAAAAAABLL * ((v121[0].__r_.__value_.__l.__size_ - v121[0].__r_.__value_.__r.__words[0]) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v120.st_mtimespec.tv_sec - v120.st_atimespec.tv_sec) >> 3) >= 0x555555555555555)
              {
                v57 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v57 = v56;
              }

              if (v57 > 0xAAAAAAAAAAAAAAALL)
              {
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v104 = v57;
              v58 = operator new(24 * v57);
              v59 = &v58[24 * v55 + v53];
              v60 = 24 * v50 - 24 * v54;
              v61 = &v58[v53];
              do
              {
                *v61 = 0;
                *(v61 + 1) = 0;
                v61[16] = 0;
                v61 += 24;
                v60 -= 24;
              }

              while (v60);
              v48 = v105;
              if (v52 != v51)
              {
                v62 = v52;
                v63 = v58;
                do
                {
                  v64 = *v62;
                  *(v63 + 2) = *(v62 + 2);
                  *v63 = v64;
                  v63 += 24;
                  v62 += 24;
                }

                while (v62 != v51);
              }

              v120.st_atimespec.tv_sec = v58;
              v120.st_atimespec.tv_nsec = &v58[24 * v55 + v53];
              v120.st_mtimespec.tv_sec = &v58[24 * v104];
              v65 = v114;
              v66 = v112;
              if (v52)
              {
                operator delete(v52);
                v48 = v105;
                v59 = v120.st_atimespec.tv_nsec;
              }

              v52 = v120.st_atimespec.tv_sec;
              v51 = v59;
              if (v59 == v120.st_atimespec.tv_sec)
              {
                goto LABEL_88;
              }
            }

LABEL_95:
            v76 = 0;
            v77 = 0xAAAAAAAAAAAAAAABLL * ((v51 - v52) >> 3);
            v78 = v121[0].__r_.__value_.__r.__words[0];
            v79 = 0xAAAAAAAAAAAAAAABLL * ((v121[0].__r_.__value_.__l.__size_ - v121[0].__r_.__value_.__r.__words[0]) >> 3);
            v67 = v110 - v48;
            if (v77 <= 1)
            {
              v77 = 1;
            }

            v80 = v52 + 16;
            do
            {
              if (v79 <= v76)
              {
                v81 = &v121[1];
              }

              else
              {
                v81 = v78;
              }

              *(v80 - 2) = v67 + v81->__r_.__value_.__r.__words[0];
              v82 = (v78 + 8);
              if (v79 <= v76)
              {
                v82 = &v121[1].__r_.__value_.__l.__size_;
              }

              *(v80 - 1) = v67 + *v82;
              v83 = (v78 + 16);
              if (v79 <= v76)
              {
                v83 = &v121[1].__r_.__value_.__s.__data_[16];
              }

              *v80 = *v83;
              v80 += 24;
              ++v76;
              v78 += 24;
            }

            while (v77 != v76);
          }

          v120.st_mtimespec.tv_nsec = v113;
          v120.st_ctimespec.tv_sec = v113;
          LOBYTE(v120.st_ctimespec.tv_nsec) = 0;
          v84 = vdupq_n_s64(v67);
          v85 = vaddq_s64(v84, v122);
          v120.st_birthtimespec = v85;
          LOBYTE(v120.st_size) = v123;
          *&v120.st_blocks = vaddq_s64(v84, v124);
          LOBYTE(v120.st_gen) = v125;
          if ((v66 & 0x800) == 0)
          {
            v120.st_qspare[1] = v85.tv_sec;
          }

          LOBYTE(v120.st_qspare[0]) = BYTE8(v125);
          if (v121[0].__r_.__value_.__r.__words[0])
          {
            v121[0].__r_.__value_.__l.__size_ = v121[0].__r_.__value_.__r.__words[0];
            operator delete(v121[0].__r_.__value_.__l.__data_);
          }

          if (v111)
          {
            v120.st_birthtimespec.tv_sec = v65;
            LOBYTE(v120.st_size) = v120.st_birthtimespec.tv_nsec != v65;
            goto LABEL_25;
          }

          if (v120.st_atimespec.tv_sec)
          {
            v120.st_atimespec.tv_nsec = v120.st_atimespec.tv_sec;
            operator delete(v120.st_atimespec.tv_sec);
          }

LABEL_120:
          LOBYTE(v120.st_qspare[0]) = 0;
          memset(&v120.st_atimespec, 0, 41);
          memset(&v120.st_birthtimespec, 0, 17);
          memset(&v120.st_blocks, 0, 17);
          v120.st_qspare[1] = 0;
        }

LABEL_25:
        tv_sec = v120.st_atimespec.tv_sec;
        if (v120.st_atimespec.tv_nsec == v120.st_atimespec.tv_sec)
        {
          v99 = v108;
          if (v108 != v107)
          {
            do
            {
              std::string::push_back(&v115, *v99++);
            }

            while (v99 != v107);
            goto LABEL_148;
          }

          goto LABEL_149;
        }

        v16 = v120.st_birthtimespec.tv_sec;
        i = v120.st_birthtimespec.tv_nsec;
        if (v120.st_birthtimespec.tv_sec != v120.st_birthtimespec.tv_nsec)
        {
          goto LABEL_27;
        }
      }

      if (v120.st_atimespec.tv_sec)
      {
        v120.st_atimespec.tv_nsec = v120.st_atimespec.tv_sec;
        operator delete(v120.st_atimespec.tv_sec);
      }

      goto LABEL_120;
    }

    if (v11)
    {
      do
      {
        std::string::push_back(&v115, *a1++);
        --v11;
      }

      while (v11);
LABEL_148:
      tv_sec = v120.st_atimespec.tv_sec;
    }

LABEL_149:
    if (tv_sec)
    {
      v120.st_atimespec.tv_nsec = tv_sec;
      operator delete(tv_sec);
    }

    a1 = v102;
    if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v117.__r_.__value_.__l.__data_);
      v117 = v115;
      if (SHIBYTE(__p[2]) < 0)
      {
LABEL_6:
        operator delete(__p[0]);
      }
    }

    else
    {
      v117 = v115;
      if (SHIBYTE(__p[2]) < 0)
      {
        goto LABEL_6;
      }
    }
  }

  *(a2 + 23) = 0;
  *a2 = 0;
  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

LABEL_159:
  v100 = *&v119[32];
  if (*&v119[32] && !atomic_fetch_add((*&v119[32] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v100->__on_zero_shared)(v100);
    std::__shared_weak_count::__release_weak(v100);
  }

  std::locale::~locale(v118);
}

void sub_241A2E808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::locale a35)
{
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v35 + 40);
  std::locale::~locale(&a35);
  _Unwind_Resume(a1);
}

void sub_241A2E838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, std::locale a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60)
{
  if (*(v60 - 185) < 0)
  {
    operator delete(*(v60 - 208));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a44);
  _Unwind_Resume(a1);
}

uint64_t std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  v3 = *(a1 + 8);
  if ((v2 & 0x80u) == 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v10[24] = v5;
  if ((v2 & 0x80u) == 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  v12 = 0xAAAAAAAAAAAAAA00;
  v14 = v5;
  *&v10[32] = 0;
  v11 = 0;
  v13 = 0uLL;
  LOBYTE(v14) = 0;
  BYTE8(v14) = 0;
  v15 = 0;
  *v9 = 0u;
  memset(v10, 0, 25);
  v17[6] = 0xAAAAAAAAAAAAAA00;
  v17[3] = v5;
  v18 = v5;
  v17[4] = 0;
  v17[5] = 0;
  v17[7] = 0;
  v17[8] = 0;
  LOBYTE(v18) = 0;
  BYTE8(v18) = 0;
  v19 = 0;
  *__p = 0u;
  memset(v17, 0, 25);
  v7 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a2, v4, (v4 + v6), __p, 4160);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v9, v4, (v4 + v6), __p, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7 && (v14 & 1) != 0)
  {
    v7 = 0;
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  return v7;
}

void sub_241A2EA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
    v25 = a9;
    if (!a9)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v25 = a9;
    if (!a9)
    {
      goto LABEL_3;
    }
  }

  operator delete(v25);
  _Unwind_Resume(exception_object);
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *a1)
{
  locale = a1[6].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
    a1 = v2;
  }

  std::locale::~locale(a1);
}

void support::fs::createUniquePath(const char *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v29 = *MEMORY[0x277D85DE8];
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__src.st_blksize = v4;
  *__src.st_qspare = v4;
  __src.st_birthtimespec = v4;
  *&__src.st_size = v4;
  __src.st_mtimespec = v4;
  __src.st_ctimespec = v4;
  *&__src.st_uid = v4;
  __src.st_atimespec = v4;
  *&__src.st_dev = v4;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &__src))
  {
    v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    v27 = v5;
    v28 = v5;
    v25 = v5;
    v26 = v5;
    v23 = v5;
    v24 = v5;
    *__src.st_qspare = v5;
    v22 = v5;
    *&__src.st_size = v5;
    *&__src.st_blksize = v5;
    __src.st_ctimespec = v5;
    __src.st_birthtimespec = v5;
    __src.st_atimespec = v5;
    __src.st_mtimespec = v5;
    *&__src.st_dev = v5;
    *&__src.st_uid = v5;
    snprintf(&__src, 0x100uLL, "-%u", 1);
    memset(a2, 170, sizeof(std::string));
    v6 = strlen(&__src);
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_33:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    v8 = 2;
    while (v7 < 0x17)
    {
      HIBYTE(__dst.st_gid) = v7;
      p_dst = &__dst;
      if (v7)
      {
        goto LABEL_16;
      }

LABEL_17:
      *(&p_dst->st_dev + v7) = 0;
      v12 = v2[23];
      if (v12 >= 0)
      {
        v13 = v2;
      }

      else
      {
        v13 = *v2;
      }

      if (v12 >= 0)
      {
        v14 = *(v2 + 23);
      }

      else
      {
        v14 = *(v2 + 1);
      }

      v15 = std::string::insert(&__dst, 0, v13, v14);
      v16 = *&v15->__r_.__value_.__l.__data_;
      a2->__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&a2->__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.st_gid) < 0)
      {
        operator delete(*&__dst.st_dev);
      }

      v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&__dst.st_blksize = v17;
      *__dst.st_qspare = v17;
      __dst.st_birthtimespec = v17;
      *&__dst.st_size = v17;
      __dst.st_mtimespec = v17;
      __dst.st_ctimespec = v17;
      *&__dst.st_uid = v17;
      __dst.st_atimespec = v17;
      *&__dst.st_dev = v17;
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = a2->__r_.__value_.__r.__words[0];
      }

      if (stat(v18, &__dst))
      {
        goto LABEL_32;
      }

      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(a2->__r_.__value_.__l.__data_);
      }

      v9.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v9.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      v27 = v9;
      v28 = v9;
      v25 = v9;
      v26 = v9;
      v23 = v9;
      v24 = v9;
      *__src.st_qspare = v9;
      v22 = v9;
      *&__src.st_size = v9;
      *&__src.st_blksize = v9;
      __src.st_ctimespec = v9;
      __src.st_birthtimespec = v9;
      __src.st_atimespec = v9;
      __src.st_mtimespec = v9;
      *&__src.st_dev = v9;
      *&__src.st_uid = v9;
      snprintf(&__src, 0x100uLL, "-%u", v8);
      memset(a2, 170, sizeof(std::string));
      v7 = strlen(&__src);
      ++v8;
      if (v7 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_33;
      }
    }

    if ((v7 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v7 | 7) + 1;
    }

    p_dst = operator new(v11);
    __dst.st_ino = v7;
    *&__dst.st_uid = v11 | 0x8000000000000000;
    *&__dst.st_dev = p_dst;
LABEL_16:
    memcpy(p_dst, &__src, v7);
    goto LABEL_17;
  }

  if (v2[23] < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v2, *(v2 + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
  }

LABEL_32:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_241A2EDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::fs::createDir(const char *a1, mode_t a2, int a3)
{
  v5 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v30.st_blksize = v6;
  *v30.st_qspare = v6;
  v30.st_birthtimespec = v6;
  *&v30.st_size = v6;
  v30.st_ctimespec = v6;
  v30.st_atimespec = v6;
  v30.st_mtimespec = v6;
  *&v30.st_dev = v6;
  *&v30.st_uid = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &v30))
  {
    return 1;
  }

  if (!a3)
  {
    if (v5[23] >= 0)
    {
      v21 = v5;
    }

    else
    {
      v21 = *v5;
    }

    return mkdir(v21, a2) == 0;
  }

  __str.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  __str.__r_.__value_.__r.__words[2] = 0x1AAAAAAAAAAAAAALL;
  __str.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAA002FLL;
  memset(__p, 170, sizeof(__p));
  ctu::tokenize();
  memset(&v27, 0, sizeof(v27));
  if (v5[23] >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (*v7 == 47)
  {
    std::string::operator=(&v27, &__str);
  }

  v8 = __p[0];
  if (__p[1] != __p[0])
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      if (v10 != 1)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        std::string::append(&v27, p_str, size);
        v8 = __p[0];
      }

      v13 = &v8[24 * v9];
      v14 = v13[23];
      v15 = v14 >= 0 ? v13 : *v13;
      v16 = v14 >= 0 ? v13[23] : *(v13 + 1);
      std::string::append(&v27, v15, v16);
      v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v30.st_blksize = v17;
      *v30.st_qspare = v17;
      v30.st_birthtimespec = v17;
      *&v30.st_size = v17;
      v30.st_ctimespec = v17;
      v30.st_atimespec = v17;
      v30.st_mtimespec = v17;
      *&v30.st_dev = v17;
      *&v30.st_uid = v17;
      v18 = (v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v27 : v27.__r_.__value_.__r.__words[0];
      if (stat(v18, &v30))
      {
        v19 = (v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v27 : v27.__r_.__value_.__r.__words[0];
        if (mkdir(v19, a2))
        {
          break;
        }
      }

      v9 = v10;
      v8 = __p[0];
      ++v10;
      if (0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3) <= v9)
      {
        goto LABEL_42;
      }
    }

    v20 = 0;
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = 1;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_43:
    operator delete(v27.__r_.__value_.__l.__data_);
  }

LABEL_44:
  v22 = __p[0];
  if (__p[0])
  {
    v23 = __p[1];
    v24 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v25 = *(v23 - 1);
        v23 -= 3;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v22);
      v24 = __p[0];
    }

    __p[1] = v22;
    operator delete(v24);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v20;
}

void sub_241A2F074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a16);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

BOOL support::fs::rename(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, std::error_code *a3)
{
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a1 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a2 = a2->__pn_.__r_.__value_.__r.__words[0];
  }

  rename(a1, a2, a3);
  return v3 == 0;
}

BOOL support::fs::chmod(const char *a1, mode_t a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return chmod(a1, a2) == 0;
}

BOOL support::fs::removeDir(const char *a1)
{
  v1 = a1;
  v46[2] = *MEMORY[0x277D85DE8];
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v45.st_blksize = v2;
  *v45.st_qspare = v2;
  v45.st_birthtimespec = v2;
  *&v45.st_size = v2;
  v45.st_mtimespec = v2;
  v45.st_ctimespec = v2;
  *&v45.st_uid = v2;
  v45.st_atimespec = v2;
  *&v45.st_dev = v2;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v45))
  {
    v3 = 1;
    goto LABEL_86;
  }

  v42 = 0;
  v43 = 0;
  v44 = 0;
  support::fs::readDir(v1, &v42);
  v5 = 0;
  while (1)
  {
    v6 = v5;
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 3);
    v3 = v7 <= v5;
    if (v7 <= v5)
    {
      break;
    }

    v8 = v42 + 24 * v5;
    memset(&__p, 170, sizeof(__p));
    if (v8[23] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 1)
      {
        if (*__p.__r_.__value_.__l.__data_ == 46)
        {
          goto LABEL_61;
        }
      }

      else if (__p.__r_.__value_.__l.__size_ == 2 && *__p.__r_.__value_.__l.__data_ == 11822)
      {
        goto LABEL_61;
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 1)
    {
      if (__p.__r_.__value_.__s.__data_[0] == 46)
      {
        goto LABEL_61;
      }
    }

    else if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 2 && LOWORD(__p.__r_.__value_.__l.__data_) == 11822)
    {
      goto LABEL_61;
    }

    v11 = SHIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
    if (v11 >= 0)
    {
      size = HIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v1->__pn_.__r_.__value_.__l.__size_;
    }

    v13 = size + 1;
    if (size + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v13 < 0x17)
    {
      memset(&v45, 0, 24);
      v15 = &v45;
      HIBYTE(v45.st_gid) = size + 1;
      if (!size)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v13 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v13 | 7) + 1;
      }

      v15 = operator new(v14);
      v45.st_ino = size + 1;
      *&v45.st_uid = v14 | 0x8000000000000000;
      *&v45.st_dev = v15;
    }

    v16 = v1->__pn_.__r_.__value_.__r.__words[0];
    if (v11 >= 0)
    {
      v17 = v1;
    }

    else
    {
      v17 = v1->__pn_.__r_.__value_.__r.__words[0];
    }

    memmove(v15, v17, size);
LABEL_38:
    *&v15[size] = 47;
    if ((v10 & 0x80000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v10 & 0x80000000) == 0)
    {
      v19 = v10;
    }

    else
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    v20 = std::string::append(&v45, p_p, v19);
    v21 = v20->__r_.__value_.__r.__words[0];
    v46[0] = v20->__r_.__value_.__l.__size_;
    *(v46 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v21;
    __p.__r_.__value_.__l.__size_ = v46[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v46 + 7);
    *(&__p.__r_.__value_.__s + 23) = v22;
    if (SHIBYTE(v45.st_gid) < 0)
    {
      operator delete(*&v45.st_dev);
      v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v21 = __p.__r_.__value_.__r.__words[0];
    }

    v23.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v23.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v45.st_blksize = v23;
    *v45.st_qspare = v23;
    v45.st_birthtimespec = v23;
    *&v45.st_size = v23;
    v45.st_mtimespec = v23;
    v45.st_ctimespec = v23;
    *&v45.st_uid = v23;
    v45.st_atimespec = v23;
    if (v22 >= 0)
    {
      v24 = &__p;
    }

    else
    {
      v24 = v21;
    }

    *&v45.st_dev = v23;
    if (!stat(v24, &v45) && ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v29 = &__p) : (v29 = __p.__r_.__value_.__r.__words[0]), (v30 = opendir(v29), (v31 = v30) != 0) && (v32 = readdir(v30), closedir(v31), v32)))
    {
      std::string::append(&__p, "/");
      v28 = support::fs::removeDir(&__p);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &__p;
      }

      else
      {
        v26 = __p.__r_.__value_.__r.__words[0];
      }

      if (!remove(v26, v25))
      {
LABEL_61:
        v28 = 1;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &__p;
      }

      else
      {
        v27 = __p.__r_.__value_.__r.__words[0];
      }

      v28 = unlink(v27) == 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    operator delete(__p.__r_.__value_.__l.__data_);
LABEL_7:
    v5 = v6 + 1;
    if ((v28 & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  if ((v1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = v1;
  }

  else
  {
    v33 = v1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (remove(v33, v4))
  {
    if ((v1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = v1;
    }

    else
    {
      v34 = v1->__pn_.__r_.__value_.__r.__words[0];
    }

    unlink(v34);
  }

LABEL_78:
  v35 = v42;
  if (v42)
  {
    v36 = v43;
    v37 = v42;
    if (v43 != v42)
    {
      do
      {
        v38 = *(v36 - 1);
        v36 -= 3;
        if (v38 < 0)
        {
          operator delete(*v36);
        }
      }

      while (v36 != v35);
      v37 = v42;
    }

    v43 = v35;
    operator delete(v37);
  }

LABEL_86:
  v39 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_241A2F54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_241A2F564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a14 & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&a15);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::vector<std::string>::~vector[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

BOOL support::fs::removeFile(const std::__fs::filesystem::path *a1, std::error_code *a2)
{
  v2 = a1;
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a1 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (!remove(a1, a2))
  {
    return 1;
  }

  if ((v2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = v2->__pn_.__r_.__value_.__r.__words[0];
  }

  return unlink(v3) == 0;
}

uint64_t support::fs::removeDirContents(const char *a1, unint64_t a2)
{
  v3 = a1;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  support::fs::readDir(a1, &v59);
  v54 = time(0);
  v5 = v59;
  v4 = v60;
  if (v59 == v60)
  {
    v49 = 1;
    if (v59)
    {
      goto LABEL_108;
    }

    return v49 & 1;
  }

  v6 = a2;
  v55 = 1;
  while (1)
  {
    memset(&v58, 170, sizeof(v58));
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, *v5, v5[1]);
    }

    else
    {
      v7 = *v5;
      v58.__r_.__value_.__r.__words[2] = v5[2];
      *&v58.__r_.__value_.__l.__data_ = v7;
    }

    v8 = SHIBYTE(v58.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      break;
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) == 1)
    {
      if (v58.__r_.__value_.__s.__data_[0] == 46)
      {
        goto LABEL_98;
      }
    }

    else if (HIBYTE(v58.__r_.__value_.__r.__words[2]) == 2 && LOWORD(v58.__r_.__value_.__l.__data_) == 11822)
    {
      goto LABEL_98;
    }

LABEL_19:
    memset(__p, 170, 24);
    v9 = v3[23];
    if (v9 >= 0)
    {
      v10 = *(v3 + 23);
    }

    else
    {
      v10 = *(v3 + 1);
    }

    v11 = v10 + 1;
    if (v10 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v11 < 0x17)
    {
      memset(&v62, 0, 24);
      v16 = &v62;
      HIBYTE(v62.st_gid) = v10 + 1;
      if (!v10)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v12 = v3;
      v13 = v4;
      v14 = a2;
      if ((v11 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v11 | 7) + 1;
      }

      v16 = operator new(v15);
      v62.st_ino = v10 + 1;
      *&v62.st_uid = v15 | 0x8000000000000000;
      *&v62.st_dev = v16;
      a2 = v14;
      v4 = v13;
      v3 = v12;
    }

    v17 = *v3;
    if (v9 >= 0)
    {
      v18 = v3;
    }

    else
    {
      v18 = *v3;
    }

    memmove(v16, v18, v10);
LABEL_33:
    *&v16[v10] = 47;
    if ((v8 & 0x80000000) == 0)
    {
      v19 = &v58;
    }

    else
    {
      v19 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v8 & 0x80000000) == 0)
    {
      size = v8;
    }

    else
    {
      size = v58.__r_.__value_.__l.__size_;
    }

    v21 = std::string::append(&v62, v19, size);
    v22 = *&v21->__r_.__value_.__l.__data_;
    __p[2] = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v62.st_gid) < 0)
    {
      operator delete(*&v62.st_dev);
      if (!a2)
      {
        goto LABEL_50;
      }
    }

    else if (!a2)
    {
      goto LABEL_50;
    }

    v23.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v23.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v62.st_blksize = v23;
    *v62.st_qspare = v23;
    v62.st_birthtimespec = v23;
    *&v62.st_size = v23;
    v62.st_mtimespec = v23;
    v62.st_ctimespec = v23;
    v62.st_atimespec = v23;
    *&v62.st_dev = v23;
    *&v62.st_uid = v23;
    if (SHIBYTE(__p[2]) >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    if (!stat(v24, &v62) && difftime(v54, v62.st_ctimespec.tv_sec) >= v6)
    {
LABEL_50:
      v27.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v27.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v62.st_blksize = v27;
      *v62.st_qspare = v27;
      v62.st_birthtimespec = v27;
      *&v62.st_size = v27;
      v62.st_mtimespec = v27;
      v62.st_ctimespec = v27;
      v62.st_atimespec = v27;
      *&v62.st_dev = v27;
      *&v62.st_uid = v27;
      if (SHIBYTE(__p[2]) >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      if (stat(v28, &v62) || (SHIBYTE(__p[2]) >= 0 ? (v32 = __p) : (v32 = __p[0]), (v33 = opendir(v32), (v34 = v33) == 0) || (v35 = readdir(v33), closedir(v34), !v35)))
      {
        if (SHIBYTE(__p[2]) >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        if (!remove(v30, v29) || (SHIBYTE(__p[2]) >= 0 ? (v31 = __p) : (v31 = __p[0]), !unlink(v31)))
        {
LABEL_92:
          v26 = 0;
          v55 = 1;
          v25 = 1;
          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }

        goto LABEL_62;
      }

      v36 = v3[23];
      if (v36 >= 0)
      {
        v37 = *(v3 + 23);
      }

      else
      {
        v37 = *(v3 + 1);
      }

      v38 = v37 + 1;
      if (v37 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v38 < 0x17)
      {
        memset(&v56, 0, sizeof(v56));
        v41 = &v56;
        *(&v56.__r_.__value_.__s + 23) = v37 + 1;
        if (v37)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v39 = a2;
        if ((v38 | 7) == 0x17)
        {
          v40 = 25;
        }

        else
        {
          v40 = (v38 | 7) + 1;
        }

        v41 = operator new(v40);
        v56.__r_.__value_.__l.__size_ = v37 + 1;
        v56.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
        v56.__r_.__value_.__r.__words[0] = v41;
        a2 = v39;
LABEL_79:
        v42 = *v3;
        if (v36 >= 0)
        {
          v43 = v3;
        }

        else
        {
          v43 = *v3;
        }

        memmove(v41, v43, v37);
      }

      *&v41[v37] = 47;
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v58;
      }

      else
      {
        v44 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v58.__r_.__value_.__l.__size_;
      }

      v46 = std::string::append(&v56, v44, v45);
      v47 = *&v46->__r_.__value_.__l.__data_;
      *&v62.st_uid = *(&v46->__r_.__value_.__l + 2);
      *&v62.st_dev = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      v48 = support::fs::removeDir(&v62);
      if (SHIBYTE(v62.st_gid) < 0)
      {
        operator delete(*&v62.st_dev);
        if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_91;
        }
      }

      else if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_91:
        if (v48)
        {
          goto LABEL_92;
        }

LABEL_62:
        v55 = 0;
        v25 = 0;
        v26 = 2;
        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      operator delete(v56.__r_.__value_.__l.__data_);
      if (v48)
      {
        goto LABEL_92;
      }

      goto LABEL_62;
    }

    v25 = 0;
    v26 = 3;
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

LABEL_93:
    operator delete(__p[0]);
LABEL_94:
    if (v25)
    {
      goto LABEL_98;
    }

    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_96;
    }

LABEL_99:
    operator delete(v58.__r_.__value_.__l.__data_);
    if (v26 != 3)
    {
      goto LABEL_100;
    }

LABEL_3:
    v5 += 3;
    if (v5 == v4)
    {
      goto LABEL_105;
    }
  }

  if (v58.__r_.__value_.__l.__size_ == 1)
  {
    if (*v58.__r_.__value_.__l.__data_ == 46)
    {
      goto LABEL_98;
    }

    goto LABEL_19;
  }

  if (v58.__r_.__value_.__l.__size_ != 2 || *v58.__r_.__value_.__l.__data_ != 11822)
  {
    goto LABEL_19;
  }

LABEL_98:
  v26 = 0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_99;
  }

LABEL_96:
  if (v26 == 3)
  {
    goto LABEL_3;
  }

LABEL_100:
  if (!v26)
  {
    goto LABEL_3;
  }

LABEL_105:
  v5 = v59;
  v49 = v55;
  if (!v59)
  {
    return v49 & 1;
  }

LABEL_108:
  v50 = v60;
  v51 = v5;
  if (v60 != v5)
  {
    do
    {
      v52 = *(v50 - 1);
      v50 -= 3;
      if (v52 < 0)
      {
        operator delete(*v50);
      }
    }

    while (v50 != v5);
    v51 = v59;
  }

  v60 = v5;
  operator delete(v51);
  return v49 & 1;
}

void sub_241A2FB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void **a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

void support::fs::moveDirUnique(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v16.st_blksize = v6;
  *v16.st_qspare = v6;
  v16.st_birthtimespec = v6;
  *&v16.st_size = v6;
  v16.st_mtimespec = v6;
  v16.st_ctimespec = v6;
  *&v16.st_uid = v6;
  v16.st_atimespec = v6;
  *&v16.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v16))
  {
    goto LABEL_4;
  }

  v7 = (v4->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v4 : v4->__pn_.__r_.__value_.__r.__words[0];
  v8 = opendir(v7);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  v10 = readdir(v8);
  closedir(v9);
  if (!v10)
  {
    goto LABEL_4;
  }

  memset(a3, 170, 24);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  support::fs::createUniquePath(&__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v4->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = v4;
  }

  else
  {
    v12 = v4->__pn_.__r_.__value_.__r.__words[0];
  }

  if (*(a3 + 23) >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  rename(v12, v13, v11);
  if (v14)
  {
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

LABEL_4:
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

void sub_241A2FDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getFileName(std::string *a1@<X8>)
{
  memset(__p, 170, sizeof(__p));
  ctu::tokenize();
  if (*(__p[1] - 1) < 0)
  {
    std::string::__init_copy_ctor_external(a1, *(__p[1] - 3), *(__p[1] - 2));
  }

  else
  {
    v2 = *(__p[1] - 24);
    a1->__r_.__value_.__r.__words[2] = *(__p[1] - 1);
    *&a1->__r_.__value_.__l.__data_ = v2;
  }

  if (__p[0])
  {
    v3 = __p[1];
    v4 = __p[0];
    if (__p[1] != __p[0])
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

      while (v3 != __p[0]);
      v4 = __p[0];
    }

    operator delete(v4);
  }
}

void sub_241A2FE7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t support::fs::lockDir(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v1 = open(a1, 0);
  if ((v1 & 0x80000000) != 0)
  {
    return v1;
  }

  v5 = 1;
  v3[0] = 0;
  v3[1] = 0;
  v4 = getpid();
  if ((fcntl(v1, 9, v3) & 0x80000000) == 0)
  {
    return v1;
  }

  close(v1);
  return 0xFFFFFFFFLL;
}

BOOL support::fs::unlockDir(support::fs *this)
{
  v1 = this;
  v6 = 2;
  v4[0] = 0;
  v4[1] = 0;
  v5 = getpid();
  v2 = fcntl(v1, 9, v4) == 0;
  close(v1);
  return v2;
}

uint64_t support::fs::getFilteredFiles(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  *__error() = 0;
  if (a1[23] < 0)
  {
    v7 = opendir(*a1);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_69:
    if ((atomic_load_explicit(&qword_27E552420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E552420))
    {
      qword_27E552428 = 0;
      qword_27E552430 = 0;
      __cxa_guard_release(&qword_27E552420);
    }

    if (_MergedGlobals_1 == -1)
    {
      v36 = qword_27E552430;
      if (!os_log_type_enabled(qword_27E552430, OS_LOG_TYPE_ERROR))
      {
LABEL_72:
        v37 = 0;
        goto LABEL_75;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_1, &__block_literal_global_0);
      v36 = qword_27E552430;
      if (!os_log_type_enabled(qword_27E552430, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_72;
      }
    }

    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v40 = __error();
    v41 = strerror(*v40);
    v48.st_dev = 136315394;
    *&v48.st_mode = a1;
    WORD2(v48.st_ino) = 2080;
    *(&v48.st_ino + 6) = v41;
    _os_log_error_impl(&dword_241A16000, v36, OS_LOG_TYPE_ERROR, "Failed to open base directory %s (%s)", &v48, 0x16u);
    goto LABEL_72;
  }

  v7 = opendir(a1);
  if (!v7)
  {
    goto LABEL_69;
  }

LABEL_3:
  v8 = v7;
  v9 = readdir(v7);
  if (v9)
  {
    v10 = v9;
    v42 = 0;
    while (1)
    {
      memset(__dst, 170, sizeof(__dst));
      v11 = strlen(v10->d_name);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v15 = 25;
        }

        else
        {
          v15 = (v11 | 7) + 1;
        }

        v13 = operator new(v15);
        *&__dst[8] = v12;
        *&__dst[16] = v15 | 0x8000000000000000;
        *__dst = v13;
      }

      else
      {
        __dst[23] = v11;
        v13 = __dst;
        if (!v11)
        {
          __dst[0] = 0;
          v14 = __dst[23];
          if ((__dst[23] & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_18;
        }
      }

      memmove(v13, v10->d_name, v12);
      v13[v12] = 0;
      v14 = __dst[23];
      if ((__dst[23] & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v14 == 1)
        {
          if (__dst[0] == 46)
          {
            goto LABEL_64;
          }
        }

        else if (v14 == 2 && *__dst == 11822)
        {
          goto LABEL_64;
        }

        goto LABEL_25;
      }

LABEL_18:
      if (*&__dst[8] == 1)
      {
        if (**__dst == 46)
        {
          goto LABEL_64;
        }
      }

      else if (*&__dst[8] == 2 && **__dst == 11822)
      {
        goto LABEL_64;
      }

LABEL_25:
      if (a4)
      {
        goto LABEL_55;
      }

      v16 = v8;
      v17 = a3;
      v18 = a4;
      v19.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v19.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v48.st_blksize = v19;
      *v48.st_qspare = v19;
      v48.st_birthtimespec = v19;
      *&v48.st_size = v19;
      v48.st_ctimespec = v19;
      v48.st_atimespec = v19;
      v48.st_mtimespec = v19;
      *&v48.st_dev = v19;
      *&v48.st_uid = v19;
      v20 = a1[23];
      v21 = a1;
      if (v20 >= 0)
      {
        v22 = *(a1 + 23);
      }

      else
      {
        v22 = *(a1 + 1);
      }

      v23 = v22 + 1;
      if (v22 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v23 < 0x17)
      {
        memset(&v44, 0, sizeof(v44));
        v25 = &v44;
        *(&v44.__r_.__value_.__s + 23) = v22 + 1;
        if (!v22)
        {
          a4 = v18;
          a1 = v21;
          goto LABEL_40;
        }
      }

      else
      {
        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        v25 = operator new(v24);
        v44.__r_.__value_.__l.__size_ = v22 + 1;
        v44.__r_.__value_.__r.__words[2] = v24 | 0x8000000000000000;
        v44.__r_.__value_.__r.__words[0] = v25;
      }

      a1 = v21;
      v26 = *v21;
      if (v20 >= 0)
      {
        v27 = v21;
      }

      else
      {
        v27 = *v21;
      }

      memmove(v25, v27, v22);
      a4 = v18;
LABEL_40:
      *&v25[v22] = 47;
      if ((v14 & 0x80000000) == 0)
      {
        v28 = __dst;
      }

      else
      {
        v28 = *__dst;
      }

      if ((v14 & 0x80000000) == 0)
      {
        v29 = v14;
      }

      else
      {
        v29 = *&__dst[8];
      }

      v30 = std::string::append(&v44, v28, v29);
      a3 = v17;
      v31 = *&v30->__r_.__value_.__l.__data_;
      v46 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      if (v46 >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      lstat(v32, &v48);
      v8 = v16;
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_51:
          if ((v48.st_mode & 0xF000) != 0xA000)
          {
            goto LABEL_55;
          }

          goto LABEL_64;
        }
      }

      else if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      operator delete(v44.__r_.__value_.__l.__data_);
      if ((v48.st_mode & 0xF000) != 0xA000)
      {
LABEL_55:
        if (std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(__dst, a2))
        {
          v33 = *(a3 + 8);
          if (v33 >= *(a3 + 16))
          {
            v35 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a3, __dst);
          }

          else
          {
            if ((__dst[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(*(a3 + 8), *__dst, *&__dst[8]);
            }

            else
            {
              v34 = *__dst;
              *(v33 + 16) = *&__dst[16];
              *v33 = v34;
            }

            v35 = (v33 + 24);
            *(a3 + 8) = v33 + 24;
          }

          *(a3 + 8) = v35;
          v42 = 1;
        }
      }

LABEL_64:
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      v10 = readdir(v8);
      if (!v10)
      {
        goto LABEL_74;
      }
    }
  }

  v42 = 0;
LABEL_74:
  closedir(v8);
  v37 = v42;
LABEL_75:
  v38 = *MEMORY[0x277D85DE8];
  return v37 & 1;
}