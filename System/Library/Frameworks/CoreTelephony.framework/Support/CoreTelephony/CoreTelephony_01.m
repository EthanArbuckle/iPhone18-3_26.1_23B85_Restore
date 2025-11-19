uint64_t std::__function::__value_func<void ()(std::string,std::optional<VinylDriverError>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::map<subscriber::AuthInfo,std::vector<unsigned char>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<subscriber::AuthInfo,std::vector<unsigned char>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__tree_node<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<subscriber::AuthInfo,std::vector<unsigned char>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__tree_node<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_hint_unique_key_args<subscriber::AuthInfo,std::pair<subscriber::AuthInfo const,std::vector<unsigned char>> const&>(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_hint_unique_key_args<subscriber::AuthInfo,std::pair<subscriber::AuthInfo const,std::vector<unsigned char>> const&>(void *a1, uint64_t *a2, int *a3)
{
  v4 = 0;
  v5 = 0;
  result = *std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__find_equal<subscriber::AuthInfo>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__construct_node<std::pair<subscriber::AuthInfo const,std::vector<unsigned char>> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__find_equal<subscriber::AuthInfo>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
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
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_2374FCAB4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t std::__function::__value_func<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::string,std::optional<VinylDriverError>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(std::map<subscriber::AuthInfo,std::vector<unsigned char>>,std::optional<VinylDriverError>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void InterfaceAppMapperService::InterfaceAppMapperService(InterfaceAppMapperService *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *this = &unk_284A7AF38;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *this = &unk_284A7AF38;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
}

void InterfaceAppMapperService::~InterfaceAppMapperService(InterfaceAppMapperService *this)
{
  *this = &unk_284A7AF38;
  std::__tree<STKRegisteredEvent>::destroy(*(this + 5));
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

{
  InterfaceAppMapperService::~InterfaceAppMapperService(this);

  JUMPOUT(0x2383CD480);
}

void InterfaceAppMapperService::addInterfaceMapping(os_unfair_lock_s *this, int a2, int a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN25InterfaceAppMapperService19addInterfaceMappingEji_block_invoke;
  v4[3] = &__block_descriptor_tmp_0;
  v4[4] = this;
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock(this + 6);
  ___ZN25InterfaceAppMapperService19addInterfaceMappingEji_block_invoke(v4);
  os_unfair_lock_unlock(this + 6);
}

uint64_t ___ZN25InterfaceAppMapperService19addInterfaceMappingEji_block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 40);
  if (!v1)
  {
LABEL_8:
    operator new();
  }

  v2 = *(result + 40);
  while (1)
  {
    while (1)
    {
      v3 = v1;
      v4 = *(v1 + 7);
      if (v4 <= v2)
      {
        break;
      }

      v1 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v2)
    {
      break;
    }

    v1 = v3[1];
    if (!v1)
    {
      goto LABEL_8;
    }
  }

  *(v3 + 8) = *(result + 44);
  return result;
}

void InterfaceAppMapperService::removeInterfaceMapping(os_unfair_lock_s *this, int a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = ___ZN25InterfaceAppMapperService22removeInterfaceMappingEj_block_invoke;
  v3[3] = &__block_descriptor_tmp_1;
  v3[4] = this;
  v4 = a2;
  os_unfair_lock_lock(this + 6);
  ___ZN25InterfaceAppMapperService22removeInterfaceMappingEj_block_invoke(v3);
  os_unfair_lock_unlock(this + 6);
}

void ___ZN25InterfaceAppMapperService22removeInterfaceMappingEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = v2 + 5;
  v3 = v2[5];
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = v2 + 5;
    v7 = v2[5];
    do
    {
      v8 = *(v7 + 28);
      v9 = v8 >= v5;
      v10 = v8 < v5;
      if (v9)
      {
        v6 = v7;
      }

      v7 = *(v7 + 8 * v10);
    }

    while (v7);
    if (v6 != v4 && v5 >= *(v6 + 7))
    {
      v11 = v2 + 5;
      v12 = v2[5];
      do
      {
        v13 = *(v12 + 28);
        v9 = v13 >= v5;
        v14 = v13 < v5;
        if (v9)
        {
          v11 = v12;
        }

        v12 = *(v12 + 8 * v14);
      }

      while (v12);
      if (v11 != v4 && *(v11 + 7) <= v5)
      {
        v15 = v11[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          v17 = v11;
          do
          {
            v16 = v17[2];
            v18 = *v16 == v17;
            v17 = v16;
          }

          while (!v18);
        }

        if (v2[4] == v11)
        {
          v2[4] = v16;
        }

        --v2[6];
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v11);

        operator delete(v11);
      }
    }
  }
}

uint64_t InterfaceAppMapperService::getInterfaceMapping(os_unfair_lock_s *this, int a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK25InterfaceAppMapperService19getInterfaceMappingEj_block_invoke;
  v5[3] = &__block_descriptor_tmp_3;
  v5[4] = this;
  v6 = a2;
  os_unfair_lock_lock(this + 6);
  v3 = ___ZNK25InterfaceAppMapperService19getInterfaceMappingEj_block_invoke(v5);
  os_unfair_lock_unlock(this + 6);
  return v3;
}

uint64_t ___ZNK25InterfaceAppMapperService19getInterfaceMappingEj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = *(v1 + 40);
  v2 = v1 + 40;
  v3 = v4;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 40);
  v6 = v2;
  do
  {
    v7 = *(v3 + 28);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 != v2 && v5 >= *(v6 + 28))
  {
    return *(v6 + 32);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void InterfaceAppMapperService::getMapping(os_unfair_lock_s *this)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZNK25InterfaceAppMapperService10getMappingEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_5;
  v2[4] = this;
  os_unfair_lock_lock(this + 6);
  (___ZNK25InterfaceAppMapperService10getMappingEv_block_invoke)(v2);
  os_unfair_lock_unlock(this + 6);
}

uint64_t ___ZNK25InterfaceAppMapperService10getMappingEv_block_invoke@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  v3 = a2 + 1;
  v4 = *(result + 32);
  a2[2] = 0;
  *a2 = v3;
  v5 = *(v4 + 32);
  if (v5 != (v4 + 40))
  {
    v6 = 0;
    while (1)
    {
      if (v6)
      {
        v7 = v3 + 1;
      }

      else
      {
        v7 = v3;
      }

      if (!*v7)
      {
        operator new();
      }

      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      if (v9 == (v4 + 40))
      {
        break;
      }

      v6 = *v3;
      v5 = v9;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<InterfaceAppMapperService *,std::shared_ptr<InterfaceAppMapperService>::__shared_ptr_default_delete<InterfaceAppMapperService,InterfaceAppMapperService>,std::allocator<InterfaceAppMapperService>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CD480);
}

uint64_t std::__shared_ptr_pointer<InterfaceAppMapperService *,std::shared_ptr<InterfaceAppMapperService>::__shared_ptr_default_delete<InterfaceAppMapperService,InterfaceAppMapperService>,std::allocator<InterfaceAppMapperService>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<InterfaceAppMapperService *,std::shared_ptr<InterfaceAppMapperService>::__shared_ptr_default_delete<InterfaceAppMapperService,InterfaceAppMapperService>,std::allocator<InterfaceAppMapperService>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *AQMCommandDriver::AQMCommandDriver(void *a1, uint64_t *a2, NSObject **a3, char *a4)
{
  ctu::OsLogContext::OsLogContext(v12, *MEMORY[0x277CC4628], a4);
  a1[1] = 0;
  a1[2] = 0;
  v8 = *a3;
  a1[3] = *a3;
  if (v8)
  {
    dispatch_retain(v8);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v13);
  MEMORY[0x2383CCDD0](v13);
  ctu::OsLogContext::~OsLogContext(v12);
  *a1 = &unk_284A7B020;
  v10 = *a2;
  v9 = a2[1];
  a1[6] = a4;
  a1[7] = v10;
  a1[8] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  a1[9] = 0;
  a1[10] = 0;
  return a1;
}

void AQMCommandDriver::~AQMCommandDriver(AQMCommandDriver *this)
{
  *this = &unk_284A7B020;
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void sortFrequencyHints(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int16 **a6@<X5>, unsigned __int16 **a7@<X6>, void *a8@<X7>, void *a9@<X8>, unsigned __int16 **a10, unsigned __int16 **a11)
{
  a9[1] = 0;
  a9[2] = 0;
  *a9 = a9 + 1;
  v107[0] = a9;
  v107[1] = a9;
  v107[2] = a1;
  v107[3] = a2;
  v107[4] = a3;
  v107[5] = a4;
  v107[6] = a5;
  v12 = *a6;
  v13 = a6[1];
  if (*a6 != v13)
  {
    do
    {
      v14 = v12[3];
      v15 = sortFrequencyHints(ctu::OsLogLogger const*,unsigned long,unsigned long,unsigned long,unsigned long,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordLTE> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordNR> const&)::$_1::operator()(v107, 0, *v12, v12[1]);
      v16 = v15;
      v18 = v15[13];
      v17 = v15[14];
      if (v18 >= v17)
      {
        v20 = v15[12];
        v21 = v18 - v20;
        v22 = (v18 - v20) >> 1;
        if (v22 <= -2)
        {
          std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
        }

        v23 = v17 - v20;
        if (v23 <= v22 + 1)
        {
          v24 = v22 + 1;
        }

        else
        {
          v24 = v23;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>((v15 + 12), v25);
        }

        v26 = (v18 - v20) >> 1;
        v27 = (2 * v22);
        v28 = (2 * v22 - 2 * v26);
        *v27 = v14;
        v19 = v27 + 1;
        memcpy(v28, v20, v21);
        v29 = v16[12];
        v16[12] = v28;
        v16[13] = v19;
        v16[14] = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v18 = v14;
        v19 = v18 + 2;
      }

      v16[13] = v19;
      v12 += 5;
    }

    while (v12 != v13);
  }

  v30 = *a7;
  v31 = a7[1];
  if (*a7 != v31)
  {
    do
    {
      v32 = v30[3];
      v33 = sortFrequencyHints(ctu::OsLogLogger const*,unsigned long,unsigned long,unsigned long,unsigned long,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordLTE> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordNR> const&)::$_1::operator()(v107, 2, *v30, v30[1]);
      v34 = v33;
      v36 = v33[16];
      v35 = v33[17];
      if (v36 >= v35)
      {
        v38 = v33[15];
        v39 = v36 - v38;
        v40 = (v36 - v38) >> 1;
        if (v40 <= -2)
        {
          std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
        }

        v41 = v35 - v38;
        if (v41 <= v40 + 1)
        {
          v42 = v40 + 1;
        }

        else
        {
          v42 = v41;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v43 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v42;
        }

        if (v43)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>((v33 + 15), v43);
        }

        v44 = (v36 - v38) >> 1;
        v45 = (2 * v40);
        v46 = (2 * v40 - 2 * v44);
        *v45 = v32;
        v37 = v45 + 1;
        memcpy(v46, v38, v39);
        v47 = v34[15];
        v34[15] = v46;
        v34[16] = v37;
        v34[17] = 0;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else
      {
        *v36 = v32;
        v37 = v36 + 2;
      }

      v34[16] = v37;
      v30 += 5;
    }

    while (v30 != v31);
  }

  v48 = a8[1];
  if (*a8 != v48)
  {
    v49 = *a8 + 8;
    do
    {
      v50 = v49 - 8;
      v51 = sortFrequencyHints(ctu::OsLogLogger const*,unsigned long,unsigned long,unsigned long,unsigned long,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordLTE> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordNR> const&)::$_1::operator()(v107, 7, *(v49 - 8), *(v49 - 6));
      v52 = v51;
      v53 = v51[19];
      v54 = v51[20];
      if (v53 >= v54)
      {
        v57 = v51[18];
        v58 = (v53 - v57) >> 3;
        v59 = v58 + 1;
        if ((v58 + 1) >> 61)
        {
          std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
        }

        v60 = v54 - v57;
        if (v60 >> 2 > v59)
        {
          v59 = v60 >> 2;
        }

        if (v60 >= 0x7FFFFFFFFFFFFFF8)
        {
          v61 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v61 = v59;
        }

        if (v61)
        {
          if (!(v61 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v62 = 8 * v58;
        v63 = *(v49 + 5);
        *v62 = *v49;
        *(v62 + 4) = v63;
        v56 = 8 * v58 + 8;
        v64 = v51[18];
        v65 = v51[19] - v64;
        v66 = 8 * v58 - v65;
        memcpy((v62 - v65), v64, v65);
        v67 = v52[18];
        v52[18] = v66;
        v52[19] = v56;
        v52[20] = 0;
        if (v67)
        {
          operator delete(v67);
        }
      }

      else
      {
        v55 = *(v49 + 5);
        *v53 = *v49;
        *(v53 + 4) = v55;
        v56 = v53 + 8;
      }

      v52[19] = v56;
      v49 += 16;
    }

    while (v50 + 16 != v48);
  }

  v68 = *a10;
  v69 = a10[1];
  if (*a10 != v69)
  {
    do
    {
      v70 = v68[3];
      v71 = sortFrequencyHints(ctu::OsLogLogger const*,unsigned long,unsigned long,unsigned long,unsigned long,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordLTE> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordNR> const&)::$_1::operator()(v107, 9, *v68, v68[1]);
      v72 = v71;
      v74 = v71[16];
      v73 = v71[17];
      if (v74 >= v73)
      {
        v76 = v71[15];
        v77 = v74 - v76;
        v78 = (v74 - v76) >> 1;
        if (v78 <= -2)
        {
          std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
        }

        v79 = v73 - v76;
        if (v79 <= v78 + 1)
        {
          v80 = v78 + 1;
        }

        else
        {
          v80 = v79;
        }

        if (v79 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v81 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v81 = v80;
        }

        if (v81)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>((v71 + 15), v81);
        }

        v82 = (v74 - v76) >> 1;
        v83 = (2 * v78);
        v84 = (2 * v78 - 2 * v82);
        *v83 = v70;
        v75 = v83 + 1;
        memcpy(v84, v76, v77);
        v85 = v72[15];
        v72[15] = v84;
        v72[16] = v75;
        v72[17] = 0;
        if (v85)
        {
          operator delete(v85);
        }
      }

      else
      {
        *v74 = v70;
        v75 = v74 + 2;
      }

      v72[16] = v75;
      v68 += 5;
    }

    while (v68 != v69);
  }

  v86 = *a11;
  v87 = a11[1];
  while (v86 != v87)
  {
    v88 = v86[2];
    v89 = *(v86 + 2);
    v90 = v86[6];
    v91 = *(v86 + 14);
    v92 = *(v86 + 4);
    v93 = sortFrequencyHints(ctu::OsLogLogger const*,unsigned long,unsigned long,unsigned long,unsigned long,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordLTE> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordNR> const&)::$_1::operator()(v107, 10, *v86, v86[1]);
    v94 = v93;
    v95 = v93[22];
    v96 = v93[23];
    if (v95 >= v96)
    {
      v98 = v93[21];
      v99 = v95 - v98;
      v100 = (v95 - v98) >> 4;
      v101 = v100 + 1;
      if ((v100 + 1) >> 60)
      {
        std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
      }

      v102 = v96 - v98;
      if (v102 >> 3 > v101)
      {
        v101 = v102 >> 3;
      }

      if (v102 >= 0x7FFFFFFFFFFFFFF0)
      {
        v103 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v103 = v101;
      }

      if (v103)
      {
        if (!(v103 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v104 = 16 * v100;
      *v104 = v92;
      *(v104 + 4) = v89;
      *(v104 + 8) = v91;
      *(v104 + 12) = v88;
      *(v104 + 14) = v90;
      v97 = 16 * v100 + 16;
      memcpy(0, v98, v99);
      v105 = v94[21];
      v94[21] = 0;
      v94[22] = v97;
      v94[23] = 0;
      if (v105)
      {
        operator delete(v105);
      }
    }

    else
    {
      *v95 = v92;
      *(v95 + 4) = v89;
      *(v95 + 8) = v91;
      *(v95 + 12) = v88;
      v97 = v95 + 16;
      *(v95 + 14) = v90;
    }

    v94[22] = v97;
    v86 += 10;
  }
}

void *sortFrequencyHints(ctu::OsLogLogger const*,unsigned long,unsigned long,unsigned long,unsigned long,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordLTE> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordNR> const&)::$_1::operator()(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  *__p = 0u;
  v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  MEMORY[0x2383CD040](v25, a3, a4);
  v6 = (*a1 + 8);
  v7 = *v6;
  if (!*v6)
  {
    goto LABEL_11;
  }

  v8 = *a1 + 8;
  do
  {
    v9 = MCCAndMNC::operator<();
    if (v9)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    if (!v9)
    {
      v8 = v7;
    }

    v7 = *(v7 + v10);
  }

  while (v7);
  if (v8 == v6 || MCCAndMNC::operator<())
  {
LABEL_11:
    v8 = v6;
  }

  v11 = (*a1 + 8);
  if (v11 == v8)
  {
    sortFrequencyHints(ctu::OsLogLogger const*,unsigned long,unsigned long,unsigned long,unsigned long,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordLTE> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordNR> const&)::$_0::operator()(a1 + 1);
  }

  v12 = *v11;
  if (!*v11)
  {
    goto LABEL_19;
  }

  while ((MCCAndMNC::operator<() & 1) != 0)
  {
    v11 = v12;
LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  v13 = MCCAndMNC::operator<();
  if (v13)
  {
    ++v12;
    goto LABEL_18;
  }

  v15 = *v12;
  v16 = v12;
  if (*v12)
  {
    v16 = v12;
    do
    {
      v13 = MCCAndMNC::operator<();
      if (v13)
      {
        v17 = 1;
      }

      else
      {
        v17 = 0;
      }

      if (!v13)
      {
        v16 = v15;
      }

      v15 = v15[v17];
    }

    while (v15);
  }

  for (i = v12[1]; i; i = i[v19])
  {
    v13 = MCCAndMNC::operator<();
    if (v13)
    {
      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    if (v13)
    {
      v11 = i;
    }
  }

  if (v16 == v11)
  {
LABEL_19:
    sortFrequencyHints(ctu::OsLogLogger const*,unsigned long,unsigned long,unsigned long,unsigned long,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordLTE> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordNR> const&)::$_0::operator()(a1 + 1);
  }

  while (1)
  {
    if (a2 <= 6)
    {
      if (a2)
      {
        if (a2 != 2)
        {
          goto LABEL_56;
        }

LABEL_51:
        v20 = v16[16] - v16[15];
        v21 = a1[4];
      }

      else
      {
        v20 = v16[13] - v16[12];
        v21 = a1[3];
      }

      if (v21 > v20 >> 1)
      {
        break;
      }

      goto LABEL_56;
    }

    if (a2 == 7)
    {
      if (a1[5] > ((v16[19] - v16[18]) >> 3))
      {
        break;
      }

      goto LABEL_56;
    }

    if (a2 == 9)
    {
      goto LABEL_51;
    }

    if (a2 == 10)
    {
      v13 = capabilities::ct::supports5G(v13);
      if (v13)
      {
        if (a1[6] > ((v16[22] - v16[21]) >> 4))
        {
          break;
        }
      }
    }

LABEL_56:
    v22 = v16[1];
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
    }

    else
    {
      do
      {
        v23 = v16[2];
        v24 = *v23 == v16;
        v16 = v23;
      }

      while (!v24);
    }

    v16 = v23;
    if (v23 == v11)
    {
      goto LABEL_19;
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[1]);
  }

  return v16;
}

void sortFrequencyHints(ctu::OsLogLogger const*,unsigned long,unsigned long,unsigned long,unsigned long,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordLTE> const&,std::vector<SystemRecordGSM> const&,std::vector<SystemRecordNR> const&)::$_0::operator()(uint64_t *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  MEMORY[0x2383CD040](v17);
  v2 = *a1[1];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    MCCAndMNC::getMcc(v7, v17);
    IntValue = MCC::getIntValue(v7);
    MCCAndMNC::getMnc(v15, v17);
    IntegerWidth = MNC::getIntegerWidth(v15);
    MCCAndMNC::getMnc(v13, v17);
    v5 = MCC::getIntValue(v13);
    *buf = 67109632;
    v19 = IntValue;
    v20 = 1024;
    v21 = IntegerWidth;
    v22 = 1024;
    v23 = v5;
    _os_log_impl(&dword_2374EE000, v2, OS_LOG_TYPE_DEFAULT, "#I Added entry for PLMN %03d-%0.*d", buf, 0x14u);
    if (v14 < 0)
    {
      operator delete(v13[1]);
    }

    if (v16 < 0)
    {
      operator delete(v15[1]);
    }

    if (SHIBYTE(v8[1]) < 0)
    {
      operator delete(v7[1]);
    }
  }

  v6 = *a1;
  *v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  *v10 = 0u;
  *v7 = 0u;
  *v8 = 0u;
  operator new();
}

void sub_2374FE44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  MCCAndMNC::~MCCAndMNC((v37 - 144));
  _Unwind_Resume(a1);
}

void MCCAndMNC::~MCCAndMNC(void **this)
{
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<MCCAndMNC,FrequencyHints>,void *>>>::operator()[abi:ne200100](char a1, char *__p)
{
  if (a1)
  {
    v3 = *(__p + 21);
    if (v3)
    {
      *(__p + 22) = v3;
      operator delete(v3);
    }

    v4 = *(__p + 18);
    if (v4)
    {
      *(__p + 19) = v4;
      operator delete(v4);
    }

    v5 = *(__p + 15);
    if (v5)
    {
      *(__p + 16) = v5;
      operator delete(v5);
    }

    v6 = *(__p + 12);
    if (v6)
    {
      *(__p + 13) = v6;
      operator delete(v6);
    }

    if (__p[95] < 0)
    {
      operator delete(*(__p + 9));
    }

    if (__p[63] < 0)
    {
      operator delete(*(__p + 5));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void FrequencyHints::~FrequencyHints(FrequencyHints *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

void std::__tree<std::__value_type<MCCAndMNC,FrequencyHints>,std::__map_value_compare<MCCAndMNC,std::__value_type<MCCAndMNC,FrequencyHints>,std::less<MCCAndMNC>,true>,std::allocator<std::__value_type<MCCAndMNC,FrequencyHints>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<MCCAndMNC,FrequencyHints>,std::__map_value_compare<MCCAndMNC,std::__value_type<MCCAndMNC,FrequencyHints>,std::less<MCCAndMNC>,true>,std::allocator<std::__value_type<MCCAndMNC,FrequencyHints>>>::destroy(*a1);
    std::__tree<std::__value_type<MCCAndMNC,FrequencyHints>,std::__map_value_compare<MCCAndMNC,std::__value_type<MCCAndMNC,FrequencyHints>,std::less<MCCAndMNC>,true>,std::allocator<std::__value_type<MCCAndMNC,FrequencyHints>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 21);
    if (v2)
    {
      *(a1 + 22) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 18);
    if (v3)
    {
      *(a1 + 19) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 15);
    if (v4)
    {
      *(a1 + 16) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 12);
    if (v5)
    {
      *(a1 + 13) = v5;
      operator delete(v5);
    }

    if (a1[95] < 0)
    {
      operator delete(*(a1 + 9));
    }

    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

void *CallCommandDriver::CallCommandDriver(void *a1, void *a2, NSObject **a3, char *a4, char *a5)
{
  ctu::OsLogContext::OsLogContext(v16, *MEMORY[0x277CC4628], a5);
  a1[1] = 0;
  a1[2] = 0;
  v9 = *a3;
  a1[3] = *a3;
  if (v9)
  {
    dispatch_retain(v9);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v17);
  MEMORY[0x2383CCDD0](v17);
  ctu::OsLogContext::~OsLogContext(v16);
  *a1 = &unk_284A7B130;
  v10 = a2[1];
  a1[6] = *a2;
  a1[7] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[8] = a4;
  std::string::basic_string[abi:ne200100]<0>(&__p, a4);
  v11 = a1[3];
  v13 = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  ctu::RestModule::RestModule();
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  a1[13] = 0;
  a1[12] = 0;
  a1[11] = a1 + 12;
  return a1;
}

void sub_2374FE858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  v20 = *(v17 + 56);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  MEMORY[0x2383CCDD0](v17 + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(v18);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void CallCommandDriver::~CallCommandDriver(CallCommandDriver *this)
{
  *this = &unk_284A7B130;
  std::__tree<STKRegisteredEvent>::destroy(*(this + 12));
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void CallCommandDriver::bootstrap(Registry **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "/cc/props/clir_infos");
  v11 = &unk_284A7B670;
  v12 = a1 + 11;
  v14 = &v11;
  ctu::RestModule::observeProperty();
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](&v11);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  subscriber::makeSimSlotRange();
  v2 = v11;
  v3 = v12;
  if (v11 != v12)
  {
    v4 = v13;
    do
    {
      if (v4(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v3);
    v5 = v12;
    while (v2 != v5)
    {
      (*(*a1 + 34))(a1, *v2);
      do
      {
        ++v2;
      }

      while (v2 != v3 && (v4(*v2) & 1) == 0);
    }
  }

  Registry::createRestModuleOneTimeUseConnection(&v7, a1[6]);
  ctu::RestModule::connect();
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_2374FEB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CallCommandDriver::shouldMTCallContinue(uint64_t a1, int a2, uint64_t a3)
{
  v57 = *MEMORY[0x277D85DE8];
  cf = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v7 = ServiceMap;
  v8 = *(MEMORY[0x277CC4468] + 8);
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  *buf = v8;
  v12 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v7[1].__m_.__sig, buf);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  (*(*v14 + 96))(&cf, v14, *(a3 + 16), 1, @"CarrierAllowsRingingMultipleDevices", *MEMORY[0x277CBED10], 0);
  if ((v15 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v16 = cf;
  buf[0] = 0;
  if (cf)
  {
    v17 = CFGetTypeID(cf);
    if (v17 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v16, v18);
    }
  }

  v19 = buf[0];
  v20 = Registry::getServiceMap(*(a1 + 48));
  v21 = v20;
  v22 = *(MEMORY[0x277CC4460] + 8);
  if (v22 < 0)
  {
    v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
    v24 = 5381;
    do
    {
      v22 = v24;
      v25 = *v23++;
      v24 = (33 * v24) ^ v25;
    }

    while (v25);
  }

  std::mutex::lock(v20);
  *buf = v22;
  v26 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v21[1].__m_.__sig, buf);
  if (v26)
  {
    v28 = v26[3];
    v27 = v26[4];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v21);
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      v29 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v28 = 0;
  }

  std::mutex::unlock(v21);
  v27 = 0;
  v29 = 1;
LABEL_22:
  v30 = (*(*v28 + 16))(v28);
  v31 = v30;
  if ((v29 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v32 = capabilities::ct::supportsVoiceCall(v30);
  if ((((v32 | v31) & 1) != 0 || (v19 & 1) == 0) && ((v32 | capabilities::ct::supportsThumperService(v32) | v31) & 1) == 0)
  {
    v45 = *(a1 + 40);
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    *buf = 0;
    v46 = "This call cannot continue. This is a data only device that isn't Thumper capable on an external build!";
    goto LABEL_54;
  }

  v33 = 1;
  if (a2)
  {
    v54 = 1;
    v34 = Registry::getServiceMap(*(a1 + 48));
    v35 = v34;
    v36 = *(MEMORY[0x277CC4410] + 8);
    if (v36 < 0)
    {
      v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
      v38 = 5381;
      do
      {
        v36 = v38;
        v39 = *v37++;
        v38 = (33 * v38) ^ v39;
      }

      while (v39);
    }

    std::mutex::lock(v34);
    *buf = v36;
    v40 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v35[1].__m_.__sig, buf);
    if (v40)
    {
      v42 = v40[3];
      v41 = v40[4];
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v35);
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        v44 = 0;
        if (!v42)
        {
          goto LABEL_46;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v42 = 0;
    }

    std::mutex::unlock(v35);
    v41 = 0;
    v44 = 1;
    if (!v42)
    {
LABEL_46:
      if ((v44 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      if (v54)
      {
        v33 = 1;
        goto LABEL_52;
      }

      v45 = *(a1 + 40);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
LABEL_51:
        v33 = 0;
        goto LABEL_52;
      }

      *buf = 0;
      v46 = "CallWaiting is not enabled. Cannot allow this Waiting call through.";
LABEL_54:
      _os_log_error_impl(&dword_2374EE000, v45, OS_LOG_TYPE_ERROR, v46, buf, 2u);
      goto LABEL_51;
    }

LABEL_39:
    v47 = *(a3 + 16);
    isNoBBWatch = CallCommandDriver::isNoBBWatch(v43);
    if (*(a3 + 52) == 2)
    {
      v49 = isNoBBWatch;
    }

    else
    {
      v49 = 0;
    }

    if (v49)
    {
      v47 = (*(*v42 + 400))(v42);
      v50 = *(a1 + 40);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = subscriber::asString();
        *buf = 136315138;
        *&buf[4] = v51;
        _os_log_impl(&dword_2374EE000, v50, OS_LOG_TYPE_DEFAULT, "#I Checking CLIRInfo with User Default Voice Slot %s for no baseband device", buf, 0xCu);
      }
    }

    (*(*v42 + 160))(v42, v47, &v54, 1);
    goto LABEL_46;
  }

LABEL_52:
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&cf);
  v52 = *MEMORY[0x277D85DE8];
  return v33;
}

void sub_2374FF0C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if ((v3 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t CallCommandDriver::isNoBBWatch(CallCommandDriver *this)
{
  if ((atomic_load_explicit(&qword_2810D7940, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2810D7940);
    if (v2)
    {
      _MergedGlobals_0 = capabilities::radio::product(v2) == 0x8000;
      __cxa_guard_release(&qword_2810D7940);
    }
  }

  return _MergedGlobals_0;
}

void CallCommandDriver::startOTASP(CallCommandDriver *this)
{
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_2374EE000, v1, OS_LOG_TYPE_ERROR, "OTASP not suppored", v2, 2u);
  }
}

uint64_t CallCommandDriver::isOTASPSupported(CallCommandDriver *this)
{
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2374EE000, v1, OS_LOG_TYPE_ERROR, "OTASP not suppored", v3, 2u);
  }

  return 0;
}

void CallCommandDriver::endTheConfCall(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_2374EE000, v1, OS_LOG_TYPE_ERROR, "Command driver does not support endTheConfCall", v2, 2u);
  }
}

uint64_t CallCommandDriver::computeClirValue_sync(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 56);
  if (v2 == 3)
  {
    goto LABEL_27;
  }

  if (v2 != 4)
  {
    result = v2 == 2;
    goto LABEL_28;
  }

  v5 = *(a2 + 16);
  if (!CallCommandDriver::isNoBBWatch(a1) || *(a2 + 52) != 2)
  {
    goto LABEL_19;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v7 = ServiceMap;
  v8 = *(MEMORY[0x277CC4410] + 8);
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  *v23 = v8;
  v12 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v7[1].__m_.__sig, v23);
  if (!v12)
  {
    v14 = 0;
LABEL_14:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_17;
    }

LABEL_15:
    v5 = (*(*v14 + 400))(v14);
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = subscriber::asString();
      *v23 = 136315138;
      *&v23[4] = v18;
      _os_log_impl(&dword_2374EE000, v17, OS_LOG_TYPE_DEFAULT, "#I Checking CLIRInfo with User Default Voice Slot %s for no baseband device", v23, 0xCu);
    }

    goto LABEL_17;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  v15 = 0;
  if (v14)
  {
    goto LABEL_15;
  }

LABEL_17:
  if ((v15 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

LABEL_19:
  v19 = *(a1 + 96);
  if (!v19)
  {
    goto LABEL_27;
  }

  v20 = *(a1 + 96);
  while (1)
  {
    v21 = *(v20 + 7);
    if (v5 >= v21)
    {
      break;
    }

LABEL_24:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_27;
    }
  }

  if (v21 < v5)
  {
    ++v20;
    goto LABEL_24;
  }

  if (*(std::map<subscriber::SimSlot,rest::ClirInfo>::at(v19, v5) + 1) == 3)
  {
    goto LABEL_27;
  }

  if (*std::map<subscriber::SimSlot,rest::ClirInfo>::at(*(a1 + 96), v5) == 3 || !*(std::map<subscriber::SimSlot,rest::ClirInfo>::at(*(a1 + 96), v5) + 8))
  {
    result = *(std::map<subscriber::SimSlot,rest::ClirInfo>::at(*(a1 + 96), v5) + 1);
    goto LABEL_28;
  }

  if (*(std::map<subscriber::SimSlot,rest::ClirInfo>::at(*(a1 + 96), v5) + 8) != 2)
  {
    result = *std::map<subscriber::SimSlot,rest::ClirInfo>::at(*(a1 + 96), v5);
    goto LABEL_28;
  }

LABEL_27:
  result = 2;
LABEL_28:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2374FF574(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::map<subscriber::SimSlot,rest::ClirInfo>::at(uint64_t *a1, int a2)
{
  if (!a1)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = *(a1 + 7);
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_8;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 4;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_8;
    }
  }
}

void CallCommandDriver::dumpState(CallCommandDriver *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 8);
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&dword_2374EE000, v2, OS_LOG_TYPE_DEFAULT, "#I Command Driver Name: %s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t CallCommandDriver::carrierSupportsCallingTimewithFWIM(uint64_t a1, uint64_t a2, char a3)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v7 = ServiceMap;
  v8 = *(MEMORY[0x277CC4468] + 8);
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  *buf = v8;
  v12 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v7[1].__m_.__sig, buf);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  (*(*v14 + 96))(&cf, v14, a2, 1, @"SupportsFlashInfoCallTimer", *MEMORY[0x277CBED10], 0);
  if ((v15 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v16 = cf;
  buf[0] = 0;
  if (cf)
  {
    v17 = CFGetTypeID(cf);
    if (v17 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v16, v18);
      v19 = buf[0];
      if ((a3 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_17:
      v21 = *(a1 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v22 = "#I Roaming. Do not support FlashInfoCallTimer. Returning false";
LABEL_21:
        _os_log_impl(&dword_2374EE000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
      }

LABEL_22:
      v20 = 0;
      goto LABEL_23;
    }
  }

  v19 = 0;
  if (a3)
  {
    goto LABEL_17;
  }

LABEL_14:
  if ((v19 & 1) == 0)
  {
    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v22 = "#I SupportsFlashInfoCallTimer is not present in CB or value is false. Returning false";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v20 = 1;
LABEL_23:
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&cf);
  return v20;
}

void sub_2374FF898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if ((v10 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CallCommandDriver::fillUpDefaultCallCapabilities(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 304))(a1, *MEMORY[0x277CC4668], 1, a2);
  (*(*a1 + 304))(a1, *MEMORY[0x277CC4660], 2, a2);
  (*(*a1 + 304))(a1, *MEMORY[0x277CC4690], 0, a2);
  (*(*a1 + 304))(a1, *MEMORY[0x277CC4670], 0, a2);
  (*(*a1 + 304))(a1, *MEMORY[0x277CC4550], 0, a2);
  (*(*a1 + 304))(a1, *MEMORY[0x277CC4540], 0, a2);
  (*(*a1 + 304))(a1, *MEMORY[0x277CC4648], 0, a2);
  (*(*a1 + 304))(a1, *MEMORY[0x277CC4640], 0, a2);
  (*(*a1 + 304))(a1, *MEMORY[0x277CC4638], 0, a2);
  (*(*a1 + 304))(a1, *MEMORY[0x277CC4658], 0, a2);
  (*(*a1 + 304))(a1, *MEMORY[0x277CC4698], 0, a2);
  v4 = *MEMORY[0x277CC4688];
  v5 = *(*a1 + 304);

  return v5(a1, v4, 0, a2);
}

void CallCommandDriver::getAllCallCapabilities(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
}

const void **ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__func<ctu::rest::property_sink_t<rest::clir_infos>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1},std::allocator<ctu::rest::property_sink_t<rest::clir_infos>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1}>,void ()(xpc::object)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A7B670;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ctu::rest::property_sink_t<rest::clir_infos>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1},std::allocator<ctu::rest::property_sink_t<rest::clir_infos>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1}>,void ()(xpc::object)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = MEMORY[0x277D86440];
  if (*a2 && MEMORY[0x2383CD810](*a2) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v5 = v2 + 1;
  std::__tree<STKRegisteredEvent>::destroy(v2[1]);
  *v2 = v2 + 1;
  v2[2] = 0;
  v2[1] = 0;
  if (MEMORY[0x2383CD810](v3) == v4)
  {
    object = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    xpc::array::iterator::iterator(&v18, &object, 0);
    xpc_release(object);
    object = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    if (MEMORY[0x2383CD810](v3) == v4)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    xpc::array::iterator::iterator(v17, &object, count);
    xpc_release(object);
    v7 = v19;
    v8 = MEMORY[0x277D86468];
    while (1)
    {
      if (v7 == v17[1] && v18 == v17[0])
      {
        xpc_release(v17[0]);
        xpc_release(v18);
        goto LABEL_44;
      }

      v16 = 0;
      object = &v18;
      v21 = v7;
      xpc::array::object_proxy::operator xpc::dict(&object, &v16);
      if (MEMORY[0x2383CD810](v16) == v8)
      {
        break;
      }

LABEL_42:
      xpc_release(v16);
      v7 = ++v19;
    }

    v15 = 0;
    v9 = v16;
    if (v16)
    {
      xpc_retain(v16);
      v23 = v9;
    }

    else
    {
      v9 = xpc_null_create();
      v23 = v9;
      if (!v9)
      {
        v10 = xpc_null_create();
        v9 = 0;
        goto LABEL_26;
      }
    }

    if (MEMORY[0x2383CD810](v9) == v8)
    {
      xpc_retain(v9);
      v10 = v9;
LABEL_27:
      if (MEMORY[0x2383CD810](v10) == v8)
      {
        object = &v23;
        v21 = "first";
        xpc::dict::object_proxy::operator xpc::object(&object, &v22);
        v11 = MEMORY[0x2383CD810](v22);
        if (v11 == MEMORY[0x277D864C0])
        {
          v24 = 0;
          ctu::rest::detail::read_enum_string_value();
          v15 = v24;
        }

        else if (v11 == MEMORY[0x277D86448] || v11 == MEMORY[0x277D86498] || v11 == MEMORY[0x277D864C8])
        {
          v15 = xpc::dyn_cast_or_default();
        }

        xpc_release(v22);
        object = &v23;
        v21 = "second";
        xpc::dict::object_proxy::operator xpc::object(&object, &v22);
        rest::read_rest_value();
        xpc_release(v22);
        v10 = v23;
      }

      xpc_release(v10);
      xpc_release(v9);
      v12 = *v5;
      if (!*v5)
      {
LABEL_41:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v13 = v12;
          v14 = *(v12 + 28);
          if (v14 <= v15)
          {
            break;
          }

          v12 = *v13;
          if (!*v13)
          {
            goto LABEL_41;
          }
        }

        if (v14 >= v15)
        {
          goto LABEL_42;
        }

        v12 = v13[1];
        if (!v12)
        {
          goto LABEL_41;
        }
      }
    }

    v10 = xpc_null_create();
LABEL_26:
    v23 = v10;
    goto LABEL_27;
  }

LABEL_44:
  xpc_release(v3);
}

void sub_237500244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, uint64_t a13, xpc_object_t a14, uint64_t a15, xpc_object_t object, uint64_t a17, xpc_object_t a18, xpc_object_t a19)
{
  xpc_release(object);
  xpc_release(a14);
  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ctu::rest::property_sink_t<rest::clir_infos>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1},std::allocator<ctu::rest::property_sink_t<rest::clir_infos>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1}>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xpc::array::object_proxy::operator xpc::dict(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CD810](v4) != MEMORY[0x277D86468])
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

void **xpc::array::iterator::iterator(void **a1, void **a2, void *a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  a1[1] = a3;
  return a1;
}

uint64_t std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void stk::truncateLanguageIfNeeded(NSObject **a1, std::string *this)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(&__p, 0, sizeof(__p));
  LODWORD(size) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&__p, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
    LODWORD(size) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x80000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_5;
    }
  }

  else
  {
    __p = *this;
  }

  size = size;
LABEL_5:
  if (size >= 3)
  {
    v5 = std::string::find(this, 45, 0);
    if (v5 != -1)
    {
      std::string::resize(this, v5, 0);
      v6 = *a1;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = this;
        }

        else
        {
          v8 = this->__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        v12 = p_p;
        v13 = 2080;
        v14 = v8;
        _os_log_impl(&dword_2374EE000, v6, OS_LOG_TYPE_DEFAULT, "#I Truncated language string from '%s' to '%s'", buf, 0x16u);
      }
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_237500634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CallAudioDriver::~CallAudioDriver(CallAudioDriver *this)
{
  *this = &unk_284A7B7D8;
  v2 = *(this + 17);
  *(this + 17) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void CallAudioDriver::bootstrap(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

uint64_t CallAudioDriver::CallAudioDriver(uint64_t a1, uint64_t a2, NSObject **a3, uint64_t a4, uint64_t a5, char *a6)
{
  ctu::OsLogContext::OsLogContext(v21, *MEMORY[0x277CC4628], a6);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v12 = *a3;
  *(a1 + 24) = *a3;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 40, v22);
  MEMORY[0x2383CCDD0](v22);
  ctu::OsLogContext::~OsLogContext(v21);
  *a1 = &unk_284A7B7D8;
  *(a1 + 48) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 64) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  Registry::getTimerService(*a2);
  v13 = *(a2 + 8);
  *(a1 + 96) = *a2;
  *(a1 + 104) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, a6);
  v14 = *(a1 + 24);
  v18 = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = *(a1 + 32);
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v18)
  {
    dispatch_release(v18);
  }

  if (v20 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 128) = a6;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return a1;
}

void sub_237500998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  v20 = v17[13];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = v17[11];
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = v17[9];
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v23 = v17[7];
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  MEMORY[0x2383CCDD0](v17 + 5);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(v18);
  _Unwind_Resume(a1);
}

void CallAudioDriver::playLocalDtmfDigits(uint64_t a1, uint64_t *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
  v5 = ServiceMap;
  v6 = *(MEMORY[0x277CC4480] + 8);
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      v13 = 0;
      if (!v12)
      {
        goto LABEL_7;
      }

LABEL_12:
      v15 = *(a1 + 80);
      std::string::basic_string[abi:ne200100]<0>(v26, *(a1 + 128));
      *&v20 = a1;
      *(&v20 + 1) = v12;
      if ((v13 & 1) == 0)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v21, *a2, a2[1], a2[1] - *a2);
      v24 = 0;
      v16 = *(a1 + 16);
      if (v16)
      {
        v17 = *(a1 + 8);
        v18 = std::__shared_weak_count::lock(v16);
        if (v18)
        {
          v25[0] = v17;
          v25[1] = v18;
          atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          v34 = xmmword_237527E30;
          ctu::TimerService::throwIfPeriodIsZero();
          v32 = *v26;
          v33 = v27;
          v26[1] = 0;
          v27 = 0;
          v26[0] = 0;
          *buf = v20;
          v29 = v11;
          memset(__p, 0, 24);
          std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, v21, v22, v22 - v21);
          __p[3] = v24;
          v31 = *v25;
          v25[0] = 0;
          v25[1] = 0;
          v35 = 0;
          operator new();
        }
      }

      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_7:
  v14 = *(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2374EE000, v14, OS_LOG_TYPE_ERROR, "Could not get CallAudioServiceInterface from Registry!", buf, 2u);
    if (v13)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((v13 & 1) == 0)
  {
LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_237500E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v30 - 120);
  CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0::~$_0(&a26);
  if (*(v30 - 153) < 0)
  {
    operator delete(*(v30 - 176));
  }

  CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0::~$_0(&a9);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if ((v29 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(a1);
}

void *CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0::~$_0(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

uint64_t CallAudioDriver::stopLocalDtmf(CallAudioDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2374EE000, v2, OS_LOG_TYPE_DEFAULT, "#I Canceling any in progress local DTMF sounds", v4, 2u);
  }

  result = *(this + 17);
  *(this + 17) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t CallAudioDriver::supportCSDownlinkDtmf(Registry **this)
{
  ServiceMap = Registry::getServiceMap(this[12]);
  v3 = ServiceMap;
  v4 = *(MEMORY[0x277CC4468] + 8);
  if (v4 < 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  __p = v4;
  v8 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v3[1].__m_.__sig, &__p);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      v11 = 0;
      if (!v10)
      {
        goto LABEL_7;
      }

LABEL_12:
      operator new();
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_7:
  v12 = this[5];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p) = 0;
    _os_log_error_impl(&dword_2374EE000, v12, OS_LOG_TYPE_ERROR, "Not supportCSDownlinkDtmf: CarrierSettings not found", &__p, 2u);
  }

  if ((v11 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return 0;
}

void sub_237501288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  operator delete(v15);
  if ((v16 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(a1);
}

uint64_t CallAudioDriver::handleOperatorBundleChange_sync(uint64_t this, const rest::BundleInfoEvent *a2)
{
  if (*a2)
  {
    v2 = this;
    if (*a2 != 255 || *(a2 + 1))
    {
      goto LABEL_10;
    }

    v3 = *(a2 + 31);
    if ((v3 & 0x80u) != 0)
    {
      v3 = *(a2 + 2);
    }

    if (v3)
    {
      goto LABEL_10;
    }

    v4 = *(a2 + 55);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a2 + 5);
    }

    if (v4)
    {
LABEL_10:
      this = CallAudioDriver::supportCSDownlinkDtmf(this);
      if (*(v2 + 145) != 1 || *(v2 + 144) != this)
      {
        *(v2 + 144) = this | 0x100;
        v5 = *(*v2 + 64);

        return v5(v2, this);
      }
    }
  }

  return this;
}

void dispatch::async<void ctu::SharedSynchronizable<CallAudioDriver>::execute_wrapped<CallAudioDriver::bootstrap(dispatch::group_session)::$_0>(CallAudioDriver::bootstrap(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CallAudioDriver::bootstrap(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CallAudioDriver::bootstrap(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  __p[7] = *MEMORY[0x277D85DE8];
  Registry::createRestModuleOneTimeUseConnection(&v1, *(**a1 + 96));
  ctu::RestModule::connect();
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "/cc/events/operator_bundle_event");
  operator new();
}

void sub_2375014CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<CallAudioDriver::bootstrap(dispatch::group_session)::$_0,std::default_delete<CallAudioDriver::bootstrap(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<CallAudioDriver::bootstrap(dispatch::group_session)::$_0,std::default_delete<CallAudioDriver::bootstrap(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v2 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    MEMORY[0x2383CD480](v2, 0x20C40A4A59CD2);
  }

  return a1;
}

__n128 std::__function::__func<void ctu::rest::event_sink_impl_t<rest::BundleInfoEvent,ctu::rest::path_generator_t<rest::operator_bundle_event>>::bind_impl<void (CallAudioDriver::*&)(rest::BundleInfoEvent const&),CallAudioDriver>(ctu::RestModule &,CallAudioDriver *,void (CallAudioDriver::*&)(rest::BundleInfoEvent const&) &&,std::integral_constant<BOOL,false>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A7B8C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<void ctu::rest::event_sink_impl_t<rest::BundleInfoEvent,ctu::rest::path_generator_t<rest::operator_bundle_event>>::bind_impl<void (CallAudioDriver::*&)(rest::BundleInfoEvent const&),CallAudioDriver>(ctu::RestModule &,CallAudioDriver *,void (CallAudioDriver::*&)(rest::BundleInfoEvent const&) &&,std::integral_constant<BOOL,false>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::operator()(void *a1)
{
  v5 = 255;
  *v6 = 0u;
  v7 = 0u;
  *__p_8 = 0u;
  v9 = 0;
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, &v5);
  if (SHIBYTE(__p_8[1]) < 0)
  {
    operator delete(*(&v7 + 1));
  }

  if (SBYTE7(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

uint64_t std::__function::__func<void ctu::rest::event_sink_impl_t<rest::BundleInfoEvent,ctu::rest::path_generator_t<rest::operator_bundle_event>>::bind_impl<void (CallAudioDriver::*&)(rest::BundleInfoEvent const&),CallAudioDriver>(ctu::RestModule &,CallAudioDriver *,void (CallAudioDriver::*&)(rest::BundleInfoEvent const&) &&,std::integral_constant<BOOL,false>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void rest::BundleInfoEvent::~BundleInfoEvent(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void *std::__function::__func<CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0,std::allocator<CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284A7B948;
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void std::__function::__func<CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0,std::allocator<CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284A7B948;
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2383CD480);
}

void sub_237501940(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0,std::allocator<CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A7B948;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2 + 32, *(a1 + 32), *(a1 + 40), *(a1 + 40) - *(a1 + 32));
  v6 = *(a1 + 64);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = v6;
  v7 = *(a1 + 72);
  *(a2 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2375019F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0,std::allocator<CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::__function::__func<CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0,std::allocator<CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    __p[5] = v3;
    operator delete(v3);
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(__p);
}

void std::__function::__func<CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0,std::allocator<CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 64))
      {
        v6 = *(a1 + 56);
        v7 = *(a1 + 32);
        v8 = *(a1 + 40) - v7;
        if (v6 == v8)
        {
          v9 = *(v3 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v14[0]) = 0;
            _os_log_impl(&dword_2374EE000, v9, OS_LOG_TYPE_DEFAULT, "#I Process Remaining Dtmf", v14, 2u);
          }

          (*(**(v3 + 48) + 32))(*(v3 + 48));
          v10 = *(v3 + 136);
          *(v3 + 136) = 0;
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }
        }

        else
        {
          v11 = *(v7 + v6);
          v12 = *(v3 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v14[0] = 67109632;
            v14[1] = v11;
            v15 = 2048;
            v16 = v6 + 1;
            v17 = 2048;
            v18 = v8;
          }

          (*(**(a1 + 16) + 16))(*(a1 + 16), v11);
          (*(**(a1 + 16) + 24))(*(a1 + 16), v11, 0);
          ++*(a1 + 56);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0,std::allocator<CallAudioDriver::playLocalDtmfDigits(std::vector<unsigned char> const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t event::EventLogger<void ()(subscriber::SimSlot,subscriber::SimCard),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A7BB50;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

uint64_t std::vector<unsigned char>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

BOOL subscriber::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 == v5 && v4 != 0)
  {
    v4 = *(a1 + 12);
    v5 = *(a2 + 12);
  }

  if (v4 != v5 || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  v7 = *(a1 + 25);
  v8 = *(a2 + 25);
  if (v7 == v8 && *(a1 + 25))
  {
    v7 = *(a1 + 24);
    v8 = *(a2 + 24);
  }

  if (v7 != v8)
  {
    return 0;
  }

  if (*(a1 + 26) != *(a2 + 26))
  {
    return 0;
  }

  if (*(a1 + 27) != *(a2 + 27))
  {
    return 0;
  }

  if (*(a1 + 28) != *(a2 + 28))
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if (*(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  if (*(a1 + 68) != *(a2 + 68))
  {
    return 0;
  }

  v9 = *(a1 + 96);
  v10 = *(a1 + 104);
  v11 = *(a2 + 96);
  if (v10 - v9 != *(a2 + 104) - v11)
  {
    return 0;
  }

  while (v9 != v10)
  {
    if (!subscriber::operator==())
    {
      return 0;
    }

    v9 += 40;
    v11 += 40;
  }

  return std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 120), (a2 + 120));
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void subscriber::markNotPresent(void *a1)
{
  *a1 = 0;
  v3 = a1 + 1;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  *a1 = 1;
}

void subscriber::maybeMarkNotPresent(void *a1)
{
  if (!*a1)
  {
    *a1 = 0;
    v3 = a1 + 1;
    v2 = a1[1];
    if (v2)
    {
      a1[2] = v2;
      operator delete(v2);
    }

    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *a1 = 1;
  }
}

const char *subscriber::asString(unsigned int a1)
{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_278A33658[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_278A33698[a1];
  }
}

const char *subscriber::asString(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 3)
  {
    return "???";
  }

  else
  {
    return off_278A336B0[v1];
  }
}

void subscriber::SimCommandDriver::setDelegate(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 96);
  *(a1 + 88) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void subscriber::SimCommandDriver::readFile(void **a1, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  *v12 = 0u;
  v13 = 0u;
  v8 = a2[3];
  subscriber::getFileId();
  if (a3 <= 0x28)
  {
    if (((1 << a3) & 0x132CFF1CAFLL) != 0)
    {
      std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::__value_func[abi:ne200100](v22, a4);
      ((*a1)[2])(a1, a2, v12, v22);
      std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::~__value_func[abi:ne200100](v22);
    }

    else
    {
      if (((1 << a3) & 0x6CD300E350) != 0)
      {
        v14 = a1;
        v15 = *a2;
        memset(v16, 0, sizeof(v16));
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v16, *(a2 + 2), *(a2 + 3), *(a2 + 3) - *(a2 + 2));
        v17 = a3;
        v18 = v12[0];
        __p[1] = 0;
        v20 = 0;
        __p[0] = 0;
        std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(__p, v12[1], v13, (v13 - v12[1]) >> 1);
        std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::__value_func[abi:ne200100](v21, a4);
        v21[7] = 0;
        operator new();
      }

      v10 = *(*(*a1[6] + 16))(a1[6], *a2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_2374EE000, v10, OS_LOG_TYPE_DEFAULT, "#I Unsupported file type", v11, 2u);
      }
    }
  }

  if (v12[1])
  {
    *&v13 = v12[1];
    operator delete(v12[1]);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_237502418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::SimFilePath,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0::~$_0(void *a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::~__value_func[abi:ne200100]((a1 + 11));
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void subscriber::SimCommandDriver::readFile(uint64_t a1, __int128 *a2, __int16 *a3, uint64_t a4)
{
  v10[8] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  memset(v7, 0, sizeof(v7));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v7, *(a2 + 2), *(a2 + 3), *(a2 + 3) - *(a2 + 2));
  v8 = *a3;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(__p, *(a3 + 1), *(a3 + 2), (*(a3 + 2) - *(a3 + 1)) >> 1);
  std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::__value_func[abi:ne200100](v10, a4);
  v10[7] = 0;
  operator new();
}

void sub_2375026FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::optional<subscriber::SimFileAttributes>,subscriber::SimFileType)>::~__value_func[abi:ne200100](v2 - 104);
  subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::FileId const&,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0::~$_0(va);
  _Unwind_Resume(a1);
}

void sub_237502760(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  JUMPOUT(0x237502758);
}

void *subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::FileId const&,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0::~$_0(void *a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::~__value_func[abi:ne200100]((a1 + 10));
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t subscriber::SimCommandDriver::writeFile(void **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 == 36 || a3 == 33)
  {
    v6 = (*a1)[4];

    return v6();
  }

  else
  {
    v8 = *(*(*a1[6] + 16))(a1[6], *a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_2374EE000, v8, OS_LOG_TYPE_DEFAULT, "#I Unsupported file type", v9, 2u);
    }

    return (*(a5 + 16))(a5, 0);
  }
}

void subscriber::SimCommandDriver::sendSimDriverInfo(uint64_t a1, unsigned int **a2)
{
  v3 = a1;
  v77 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 4);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v5;
    _os_log_impl(&dword_2374EE000, v4, OS_LOG_TYPE_DEFAULT, "#I Publishing driver info (%lu):", &buf, 0xCu);
  }

  v7 = *a2;
  v6 = a2[1];
  v36 = a2;
  if (*a2 == v6)
  {
    v32 = *a2;
  }

  else
  {
    v37 = a2[1];
    v38 = v3;
    do
    {
      v8 = *(v3 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        log = v8;
        v9 = *v7;
        v44 = subscriber::asString();
        v10 = v7[1];
        v43 = subscriber::asString();
        v46 = "<uninitialized_value>";
        if (*(v7 + 16) == 1)
        {
          v11 = v7[3];
          v46 = subscriber::asString();
        }

        v12 = v7[2];
        v42 = subscriber::asString();
        v13 = v7[5];
        v41 = subscriber::asString();
        if (*(v7 + 25) == 1)
        {
          v14 = *(v7 + 24);
        }

        else
        {
          v14 = 255;
        }

        v40 = v14;
        v15 = v7 + 30;
        if (*(v7 + 143) < 0)
        {
          v15 = *v15;
        }

        v39 = v15;
        if (*(v7 + 26))
        {
          v16 = "enabled";
        }

        else
        {
          v16 = "disabled";
        }

        v17 = *(v7 + 27);
        v18 = *(v7 + 28);
        v19 = v7[9];
        v20 = subscriber::asString();
        v21 = v7[8];
        v22 = subscriber::asString();
        v23 = v7[17];
        v24 = subscriber::asString();
        v25 = v7[16];
        v26 = subscriber::asString();
        v28 = *(v7 + 12);
        v27 = *(v7 + 13);
        memset(&__p, 0, sizeof(__p));
        if (v28 != v27)
        {
          subscriber::asShortString();
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = buf;
          while (1)
          {
            v28 += 40;
            if (v28 == v27)
            {
              break;
            }

            *(&buf.__r_.__value_.__s + 23) = 1;
            strcpy(&buf, ",");
            std::string::append(&__p, &buf, 1uLL);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            subscriber::asShortString();
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_buf = &buf;
            }

            else
            {
              p_buf = buf.__r_.__value_.__r.__words[0];
            }

            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = buf.__r_.__value_.__l.__size_;
            }

            std::string::append(&__p, p_buf, size);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136318722;
        *(buf.__r_.__value_.__r.__words + 4) = v44;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v43;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v52 = v46;
        v53 = 2080;
        v54 = v42;
        v55 = 2080;
        v56 = v41;
        v57 = 1024;
        v58 = v40;
        v59 = 2080;
        v60 = v39;
        v61 = 2080;
        v62 = v16;
        v63 = 1024;
        v64 = v17;
        v65 = 1024;
        v66 = v18;
        v67 = 2080;
        v68 = v20;
        v69 = 2080;
        v70 = v22;
        v71 = 2080;
        v72 = v24;
        v73 = 2080;
        v74 = v26;
        v75 = 2082;
        v76 = p_p;
        _os_log_impl(&dword_2374EE000, log, OS_LOG_TYPE_DEFAULT, "#I | slot=%s instance=%s state=%s tray_state=%s vinyl=%s (0x%02x) iccid=%s pin=%s [%u/%u] gw=[%s:%s] 1x=[%s:%s] np=[%{public}s]", &buf, 0x8Cu);
        v6 = v37;
        v3 = v38;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v7 += 36;
    }

    while (v7 != v6);
    v32 = *v36;
    v7 = v36[1];
  }

  v33 = *(v3 + 88);
  memset(v47, 0, sizeof(v47));
  v49 = v47;
  if (v7 != v32)
  {
    v34 = 0x8E38E38E38E38E39 * ((v7 - v32) >> 4);
    v50 = 0;
    if (v34 < 0x1C71C71C71C71C8)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<subscriber::SimDriverInfo>>(v34);
    }

    std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
  }

  (*(*v33 + 24))(v33, v47);
  buf.__r_.__value_.__r.__words[0] = v47;
  std::vector<subscriber::SimDriverInfo>::__destroy_vector::operator()[abi:ne200100](&buf);
  v35 = *MEMORY[0x277D85DE8];
}

void subscriber::SimCommandDriver::sendMSISDNUpdate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 88);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v6 = 0;
  if (*(a3 + 24) == 1)
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    }

    else
    {
      __p = *a3;
    }

    v6 = 1;
  }

  (*(*v4 + 40))(v4, a2, &__p);
  if (v6 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_237503098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void subscriber::SimCommandDriver::markAllowedToReadCDMAAuxInfo(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 136315394;
    *&v4[4] = subscriber::asString();
    *&v4[12] = 2080;
    *&v4[14] = CSIBOOLAsString();
    _os_log_impl(&dword_2374EE000, v2, OS_LOG_TYPE_DEFAULT, "#I %s: Allowed to read CDMA Aux info: %s", v4, 0x16u);
  }

  v3 = *(a1 + 88);
  *&v4[8] = 0uLL;
  *v4 = &v4[8];
  operator new();
}

uint64_t subscriber::SimCommandDriver::markAllowedToReadCDMAAuxInfo(uint64_t result, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2[2])
  {
    v3 = result;
    v4 = a2 + 1;
    v5 = *a2;
    if (*a2 != a2 + 1)
    {
      do
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(v5 + 7);
          v8 = subscriber::asString();
          v9 = *(v5 + 32);
          v10 = CSIBOOLAsString();
          *buf = 136315394;
          v16 = v8;
          v17 = 2080;
          v18 = v10;
          _os_log_impl(&dword_2374EE000, v6, OS_LOG_TYPE_DEFAULT, "#I %s: Allowed to read CDMA Aux info: %s", buf, 0x16u);
        }

        v11 = v5[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v5[2];
            v13 = *v12 == v5;
            v5 = v12;
          }

          while (!v13);
        }

        v5 = v12;
      }

      while (v12 != v4);
    }

    result = (*(**(v3 + 88) + 32))(*(v3 + 88), a2);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL subscriber::SimCommandDriver::allowSimRefresh(subscriber::SimCommandDriver *this)
{
  if (*(this + 104) != 1)
  {
    return 1;
  }

  v1 = *(this + 108);
  return v1 != 4 && v1 != 8;
}

void subscriber::SimCommandDriver::bootstrap(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void subscriber::SimCommandDriver::SimCommandDriver(void *a1, int a2, NSObject **a3, char *a4)
{
  v9 = *MEMORY[0x277D85DE8];
  ctu::OsLogContext::OsLogContext(v8, *MEMORY[0x277CC4628], a4);
  a1[1] = 0;
  a1[2] = 0;
  v6 = *a3;
  a1[3] = *a3;
  if (v6)
  {
    dispatch_retain(v6);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](a1 + 5, v7);
  MEMORY[0x2383CCDD0](v7);
  ctu::OsLogContext::~OsLogContext(v8);
  operator new();
}

void sub_237503738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  MEMORY[0x2383CD480](v20, 0x10A1C40FF1576FELL);
  MEMORY[0x2383CCDD0](v19 + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable((v19 + 8));
  _Unwind_Resume(a1);
}

void subscriber::SimCommandDriver::~SimCommandDriver(subscriber::SimCommandDriver *this)
{
  *this = &unk_284A7B9D8;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void subscriber::SimCommandDriver::sendSimReset()
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = 0x10F15330000000A0;
  v4 = 16844163;
  qmemcpy(v5, "RST", 3);
  v1 = 0;
  v2 = 0;
  v0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>();
}

void sub_237503AD4(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  if (v8)
  {
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

void subscriber::SimCommandDriver::handleSimConfigurationMismatch_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v6 = ServiceMap;
  v7 = *(MEMORY[0x277CC4448] + 8);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v30.__r_.__value_.__r.__words[0] = v7;
  v11 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v6[1].__m_.__sig, &v30);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      v14 = 0;
      if (!v13)
      {
        goto LABEL_38;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (!v13)
  {
    goto LABEL_38;
  }

LABEL_10:
  v26 = v14;
  v15 = *MEMORY[0x277CC4620];
  v16 = *MEMORY[0x277CBF040];
  v17 = *MEMORY[0x277CBF010];
  (*(*v13 + 40))(&cf, v13, @"kLastSimHardwareMisconfiguration", *MEMORY[0x277CC4620], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v18 = 0uLL;
  memset(&v30, 0, sizeof(v30));
  if (cf)
  {
    v19 = CFGetTypeID(cf);
    if (v19 == CFDataGetTypeID())
    {
      ctu::cf::assign();
    }

    v18 = *&v30.__r_.__value_.__l.__data_;
  }

  v25 = v18;
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&cf);
  if (*(&v25 + 1) - v25 != *(a3 + 8) - *a3 || memcmp(v25, *a3, *(&v25 + 1) - v25))
  {
    memset(&v30, 0, sizeof(v30));
    std::string::basic_string[abi:ne200100]<0>(&v30, "Expected Config: (");
    ctu::hex();
    if ((v29 & 0x80u) == 0)
    {
      p_cf = &cf;
    }

    else
    {
      p_cf = cf;
    }

    if ((v29 & 0x80u) == 0)
    {
      v21 = v29;
    }

    else
    {
      v21 = v28;
    }

    std::string::append(&v30, p_cf, v21);
    if (v29 < 0)
    {
      operator delete(cf);
    }

    std::string::append(&v30, "), received: (", 0xEuLL);
    ctu::hex();
    if ((v29 & 0x80u) == 0)
    {
      v22 = &cf;
    }

    else
    {
      v22 = cf;
    }

    if ((v29 & 0x80u) == 0)
    {
      v23 = v29;
    }

    else
    {
      v23 = v28;
    }

    std::string::append(&v30, v22, v23);
    if (v29 < 0)
    {
      operator delete(cf);
    }

    std::string::append(&v30, ")", 1uLL);
    v24 = *(a1 + 88);
    std::string::basic_string[abi:ne200100]<0>(&cf, "HardwareConfig");
    (*(*v24 + 88))(v24, &cf, &v30);
    if (v29 < 0)
    {
      operator delete(cf);
    }

    cf = CFDataCreate(*MEMORY[0x277CBECE8], *a3, *(a3 + 8) - *a3);
    (*(*v13 + 16))(v13, @"kLastSimHardwareMisconfiguration", cf, v15, v16, v17);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&cf);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  v14 = v26;
  if (v25)
  {
    operator delete(v25);
  }

LABEL_38:
  if ((v14 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_237503EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, char a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a13);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    operator delete(v25);
  }

  if ((a12 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

uint64_t subscriber::SimCommandDriver::indexToHardwareSimSlot(subscriber::SimCommandDriver *this, unsigned int a2)
{
  if (a2 < 3)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

void subscriber::SimCommandDriver::checkSimHwIdConfig_sync(uint64_t a1, __n128 **a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  __p = 0;
  v65 = 0;
  v66 = 0;
  __s2 = 0;
  v62 = 0;
  v63 = 0;
  v3 = *a2;
  if (*a2 != a2[1])
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      while (1)
      {
        v7 = *std::map<subscriber::SimSlot,rest::ClirInfo>::at(*(a3 + 8), v3->n128_u32[0]);
        v8 = v65;
        if (v65 >= v66)
        {
          v10 = __p;
          v11 = (v65 - __p);
          v12 = v65 - __p + 1;
          if (v12 < 0)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v13 = v66 - __p;
          if (2 * (v66 - __p) > v12)
          {
            v12 = 2 * v13;
          }

          if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v14 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            operator new();
          }

          *v11 = v7;
          v9 = v11 + 1;
          memcpy(0, v10, v11);
          __p = 0;
          v66 = 0;
          if (v10)
          {
            operator delete(v10);
          }
        }

        else
        {
          *v65 = v7;
          v9 = v8 + 1;
        }

        v65 = v9;
        if (*std::map<subscriber::SimSlot,rest::ClirInfo>::at(*(a3 + 8), v3->n128_u32[0]))
        {
          break;
        }

        if (v3[1].n128_u8[0] != 1)
        {
          goto LABEL_19;
        }

        if (v3->n128_u32[3] != 1)
        {
          goto LABEL_52;
        }

        if (v3->n128_u32[2] == 1)
        {
LABEL_19:
          if (v6 >= v5)
          {
            v15 = __s2;
            v16 = (v6 - __s2);
            v17 = v6 - __s2 + 1;
            if (v17 < 0)
            {
              std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
            }

            if (2 * (v5 - __s2) > v17)
            {
              v17 = 2 * (v5 - __s2);
            }

            if (v5 - __s2 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v18 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v17;
            }

            if (v18)
            {
              operator new();
            }

LABEL_40:
            v5 = v18;
            *v16 = 0;
            v6 = v16 + 1;
            memcpy(0, v15, v16);
            __s2 = 0;
            v63 = v18;
            if (v15)
            {
              operator delete(v15);
            }

            goto LABEL_42;
          }

          goto LABEL_31;
        }

        if (v3->n128_u32[0] != 3 || (subscriber::isEsimCapable() & 1) != 0)
        {
LABEL_52:
          v24 = *(a1 + 40);
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_62;
          }

          v25 = v3->n128_u32[0];
          v26 = subscriber::asString();
          v27 = v3->n128_u32[2];
          v28 = subscriber::asString();
          *buf = 136315394;
          *&buf[4] = v26;
          v68 = 2080;
          v69 = v28;
          v29 = v24;
          v30 = "Detected hardware slot configuration mismatch - hardware slot (%s) tray state (%s) when hardware is missing";
          v31 = 22;
          goto LABEL_54;
        }

        v6 = v62;
        v5 = v63;
        if (v62 >= v63)
        {
          v15 = __s2;
          v16 = (v62 - __s2);
          v19 = v62 - __s2 + 1;
          if (v19 < 0)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          if (2 * (v63 - __s2) > v19)
          {
            v19 = 2 * (v63 - __s2);
          }

          if (v63 - __s2 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v18 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v19;
          }

          if (v18)
          {
            operator new();
          }

          goto LABEL_40;
        }

LABEL_31:
        *v6++ = 0;
LABEL_42:
        v62 = v6;
        v20 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<subscriber::SimDriverInfo *,subscriber::SimDriverInfo *,subscriber::SimDriverInfo *>(v3 + 9, a2[1], v3);
        for (i = a2[1]; i != v20; std::allocator_traits<std::allocator<subscriber::SimDriverInfo>>::destroy[abi:ne200100]<subscriber::SimDriverInfo,void,0>(i))
        {
          i -= 144;
        }

        a2[1] = v20;
        if (v3 == v20)
        {
          goto LABEL_103;
        }
      }

      if (*std::map<subscriber::SimSlot,rest::ClirInfo>::at(*(a3 + 8), v3->n128_u32[0]) != 2)
      {
        goto LABEL_62;
      }

      if (v3[1].n128_u8[0] == 1 && v3->n128_u32[3] == 1 || v3[1].n128_u8[0] && subscriber::isSimDead())
      {
        v22 = *(a1 + 40);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v47 = v3->n128_u32[0];
          v48 = subscriber::asString();
          *buf = 136315138;
          *&buf[4] = v48;
          _os_log_error_impl(&dword_2374EE000, v22, OS_LOG_TYPE_ERROR, "Detected bad EUICC for slot (%s) - hardware could be bad", buf, 0xCu);
        }

        v23 = 0;
      }

      else
      {
        if (v3[1].n128_u32[1] == 1)
        {
          v32 = *(a1 + 40);
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_65;
          }

          v33 = v3->n128_u32[0];
          v34 = subscriber::asString();
          *buf = 136315138;
          *&buf[4] = v34;
          v29 = v32;
          v30 = "Detected non-Vinyl capable SIM for expected EUICC for slot (%s)";
          v31 = 12;
LABEL_54:
          _os_log_error_impl(&dword_2374EE000, v29, OS_LOG_TYPE_ERROR, v30, buf, v31);
          goto LABEL_62;
        }

        v23 = 1;
      }

      (*(**(a1 + 88) + 96))(*(a1 + 88), v23);
LABEL_62:
      if (v3[1].n128_u32[1] == 5)
      {
        v35 = v62;
        v5 = v63;
        if (v62 >= v63)
        {
          v37 = __s2;
          v38 = v62 - __s2;
          v39 = v62 - __s2 + 1;
          if (v39 < 0)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          if (2 * (v63 - __s2) > v39)
          {
            v39 = 2 * (v63 - __s2);
          }

          if (v63 - __s2 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v40 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v40 = v39;
          }

          if (v40)
          {
            operator new();
          }

          v45 = (v62 - __s2);
          v5 = 0;
          v46 = 3;
LABEL_98:
          *v45 = v46;
          v6 = v45 + 1;
          memcpy(0, v37, v38);
          __s2 = 0;
          v63 = 0;
          if (v37)
          {
            operator delete(v37);
          }

          goto LABEL_100;
        }

        v36 = 3;
        goto LABEL_70;
      }

LABEL_65:
      v35 = v62;
      v5 = v63;
      if (subscriber::isEsimCapable())
      {
        if (v62 >= v63)
        {
          v37 = __s2;
          v38 = v62 - __s2;
          v41 = v62 - __s2 + 1;
          if (v41 < 0)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          if (2 * (v63 - __s2) > v41)
          {
            v41 = 2 * (v63 - __s2);
          }

          if (v63 - __s2 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v42 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v41;
          }

          if (v42)
          {
            operator new();
          }

          v45 = (v62 - __s2);
          v5 = 0;
          v46 = 2;
          goto LABEL_98;
        }

        v36 = 2;
      }

      else
      {
        if (v62 >= v63)
        {
          v37 = __s2;
          v38 = v62 - __s2;
          v43 = v62 - __s2 + 1;
          if (v43 < 0)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          if (2 * (v63 - __s2) > v43)
          {
            v43 = 2 * (v63 - __s2);
          }

          if (v63 - __s2 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v44 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = v43;
          }

          if (v44)
          {
            operator new();
          }

          v45 = (v62 - __s2);
          v5 = 0;
          v46 = 1;
          goto LABEL_98;
        }

        v36 = 1;
      }

LABEL_70:
      *v35 = v36;
      v6 = v35 + 1;
LABEL_100:
      v62 = v6;
      v3 += 9;
      if (v3 == a2[1])
      {
        goto LABEL_103;
      }
    }
  }

  v6 = 0;
LABEL_103:
  v49 = __s2;
  if (v65 - __p != v6 - __s2 || memcmp(__p, __s2, v65 - __p))
  {
    v50 = a1;
    v51 = *(a1 + 40);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      ctu::hex();
      v53 = v70;
      v54 = *buf;
      ctu::hex();
      v55 = buf;
      if (v53 < 0)
      {
        v55 = v54;
      }

      if (v60 >= 0)
      {
        v56 = &v59;
      }

      else
      {
        v56 = v59;
      }

      *v71 = 136315394;
      v72 = v55;
      v73 = 2080;
      v74 = v56;
      _os_log_error_impl(&dword_2374EE000, v51, OS_LOG_TYPE_ERROR, "Mismatch configuration: Expected (%s) - Calculated (%s)", v71, 0x16u);
      if (v60 < 0)
      {
        operator delete(v59);
      }

      v50 = a1;
      if (v70 < 0)
      {
        operator delete(*buf);
      }
    }

    subscriber::SimCommandDriver::handleSimConfigurationMismatch_sync(v50, &__p, &__s2);
    v49 = __s2;
  }

  if (v49)
  {
    v62 = v49;
    operator delete(v49);
  }

  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }

  v52 = *MEMORY[0x277D85DE8];
}

void sub_237504710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t subscriber::SimCommandDriver::appendMissingDriverInfo_sync(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = 0;
    v6 = *a2;
    do
    {
      v7 = *v6;
      v6 += 36;
      if (v7 == 2)
      {
        ++v5;
      }
    }

    while (v6 != v3);
    if (v5)
    {
      return 0;
    }
  }

  v9 = a2[2];
  if (v3 >= v9)
  {
    v11 = 0x8E38E38E38E38E39 * ((v3 - v4) >> 4);
    v12 = v11 + 1;
    if (v11 + 1 > 0x1C71C71C71C71C7)
    {
      std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0x8E38E38E38E38E39 * ((v9 - v4) >> 4);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0xE38E38E38E38E3)
    {
      v14 = 0x1C71C71C71C71C7;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<subscriber::SimDriverInfo>>(v14);
    }

    v15 = 144 * v11;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 8) = 0;
    *v15 = 1;
    *(v15 + 4) = 0;
    *(v15 + 12) = 0;
    *(v15 + 20) = 0;
    *(v15 + 28) = 0;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0u;
    *(v15 + 64) = 0u;
    *(v15 + 80) = 0u;
    *(v15 + 96) = 0u;
    *(v15 + 112) = 0u;
    *(v15 + 128) = 0u;
    v16 = *a2;
    v17 = a2[1];
    v18 = v15 + *a2 - v17;
    if (*a2 != v17)
    {
      v19 = *a2;
      v20 = v15 + *a2 - v17;
      do
      {
        v21 = *v19;
        *(v20 + 13) = *(v19 + 13);
        *v20 = v21;
        v22 = *(v19 + 4);
        *(v20 + 48) = 0;
        *(v20 + 56) = 0;
        *(v20 + 32) = v22;
        *(v20 + 40) = 0;
        *(v20 + 40) = *(v19 + 10);
        *(v20 + 56) = *(v19 + 7);
        *(v19 + 6) = 0;
        *(v19 + 7) = 0;
        *(v19 + 5) = 0;
        v23 = *(v19 + 8);
        *(v20 + 80) = 0;
        *(v20 + 88) = 0;
        *(v20 + 64) = v23;
        *(v20 + 72) = 0;
        *(v20 + 72) = *(v19 + 18);
        *(v20 + 88) = *(v19 + 11);
        *(v19 + 9) = 0;
        *(v19 + 10) = 0;
        *(v19 + 11) = 0;
        *(v20 + 96) = 0;
        *(v20 + 104) = 0;
        *(v20 + 112) = 0;
        *(v20 + 96) = *(v19 + 6);
        *(v20 + 112) = *(v19 + 14);
        *(v19 + 12) = 0;
        *(v19 + 13) = 0;
        *(v19 + 14) = 0;
        v24 = *(v19 + 30);
        *(v20 + 136) = *(v19 + 17);
        *(v20 + 120) = v24;
        *(v19 + 16) = 0;
        *(v19 + 17) = 0;
        *(v19 + 15) = 0;
        v19 += 36;
        v20 += 144;
      }

      while (v19 != v17);
      do
      {
        std::allocator_traits<std::allocator<subscriber::SimDriverInfo>>::destroy[abi:ne200100]<subscriber::SimDriverInfo,void,0>(v16);
        v16 += 144;
      }

      while (v16 != v17);
      v16 = *a2;
    }

    v10 = v15 + 144;
    *a2 = v18;
    a2[1] = v10;
    a2[2] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *v3 = 1;
    *(v3 + 12) = 0;
    *(v3 + 4) = 0;
    *(v3 + 20) = 0;
    *(v3 + 28) = 0;
    *(v3 + 32) = 0u;
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
    *(v3 + 80) = 0u;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
    v10 = v3 + 144;
    *(v3 + 128) = 0u;
  }

  a2[1] = v10;
  *(v10 - 144) = 2;
  *(v10 - 132) = 1;
  *(v10 - 128) = 1;
  *(v10 - 124) = 1;
  if (a2[1] == *a2)
  {
    std::vector<subscriber::SimDriverInfo>::__throw_out_of_range[abi:ne200100]();
  }

  if (*(*a2 + 8) == 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = 3;
  }

  *(v10 - 136) = v25;
  return 1;
}

uint64_t subscriber::SimCommandDriver::getVinylCapabilitiesFromATR(uint64_t a1, uint64_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_30;
  }

  v4 = v2 - v3;
  if ((v2 - v3) <= 1)
  {
    v5 = *(a1 + 40);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    LOWORD(v22[0]) = 0;
    v6 = "ATR too short";
LABEL_5:
    v7 = v5;
    v8 = 2;
    goto LABEL_6;
  }

  if ((*(v3 + 1) & 0xF) != 0)
  {
    v11 = 1;
    while (v11 < v4)
    {
      v12 = v11 + 1;
      if (v11 + 1 >= v4)
      {
        v5 = *(a1 + 40);
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_28;
        }

        LOWORD(v22[0]) = 0;
        v6 = "Invalid interface byte";
        goto LABEL_5;
      }

      v13 = *(v3 + v11);
      v14 = v11 + 2;
      if ((v13 & 0x10) != 0)
      {
        v12 = v14;
      }

      v15 = v12 + ((v13 >> 5) & 1) + ((v13 >> 6) & 1);
      v11 = v15 + 1;
      if ((v13 & 0x80) == 0)
      {
        v11 = v15;
        break;
      }
    }

    if (v11 >= v4)
    {
      v5 = *(a1 + 40);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      LOWORD(v22[0]) = 0;
      v6 = "Historical bytes missing";
      goto LABEL_5;
    }

    v16 = *(v3 + v11);
    if (v16 == 128)
    {
      v17 = v11 + 1;
      if (v11 + 1 < v4)
      {
        while (1)
        {
          if (v4 <= v17)
          {
            std::vector<subscriber::SimDriverInfo>::__throw_out_of_range[abi:ne200100]();
          }

          v18 = *(v3 + v17);
          if ((v18 & 0xF0) == 0x70)
          {
            break;
          }

          v9 = 0;
          v11 = v17 + (v18 & 0xF);
          v17 = v11 + 1;
          v10 = 1;
          if (v11 + 1 >= v4)
          {
            goto LABEL_30;
          }
        }

        if ((*(v3 + v17) & 0xC) != 0)
        {
          if (v11 + 5 < v4)
          {
            v9 = *(v3 + v11 + 5);
            goto LABEL_29;
          }

          v5 = *(a1 + 40);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v22[0]) = 0;
            v6 = "ATR too short";
            goto LABEL_5;
          }
        }
      }

      goto LABEL_28;
    }

    v19 = *(a1 + 40);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v22[0] = 67109120;
    v22[1] = v16;
    v6 = "Invalid historical bytes format (0x%02x), expected 0x80";
    v7 = v19;
    v8 = 8;
LABEL_6:
    _os_log_error_impl(&dword_2374EE000, v7, OS_LOG_TYPE_ERROR, v6, v22, v8);
  }

LABEL_28:
  v9 = 0;
LABEL_29:
  v10 = 1;
LABEL_30:
  v20 = *MEMORY[0x277D85DE8];
  return v9 | (v10 << 8);
}

void subscriber::SimCommandDriver::dumpState(subscriber::SimCommandDriver *this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(this + 121) == 1)
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = printers::asString((this + 120), v3);
      _os_log_impl(&dword_2374EE000, v2, OS_LOG_TYPE_DEFAULT, "#I fLastReportedEuiccHealthState: %s", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t subscriber::SimCommandDriver::getCLAFromChannel(subscriber::SimCommandDriver *this, unsigned int a2)
{
  v2 = (a2 - 4) | 0x40;
  if (a2 <= 3)
  {
    return a2;
  }

  return v2;
}

BOOL subscriber::SimCommandDriver::parseEapSim(uint64_t a1, os_log_t *a2, int a3, char **a4, uint64_t a5)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v11 = *a4;
    v12 = a4[1];
    if (v12 - *a4 != 14)
    {
      v22 = *a2;
      result = os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_25;
      }

      v25 = subscriber::asString();
      v26 = a4[1] - *a4;
      *buf = 136315394;
      *&buf[4] = v25;
      v42 = 2048;
      v43 = v26;
      v18 = "SIM authenticate response for card %s should be 14 bytes but is %zd bytes; dropping";
LABEL_18:
      v20 = v22;
      v21 = 22;
      goto LABEL_24;
    }

    v40 = 3;
    *buf = &v40;
    v13 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a5, 3);
    if (v11 == v12 || (v16 = *v11, v15 = v11 + 1, v14 = v16, v12 - v15 < v16))
    {
      v17 = *a2;
      result = os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_25;
      }

      *buf = 0;
      v18 = "EAP-SIM authentication missing SRES field";
    }

    else
    {
      v27 = &v15[v14];
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v13 + 5, v15, &v15[v14], v14);
      v40 = 4;
      *buf = &v40;
      v28 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a5, 4);
      if (v27 != v12)
      {
        v31 = *v27;
        v30 = (v27 + 1);
        v29 = v31;
        if (v12 - v30 >= v31)
        {
          std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v28 + 5, v30, &v30[v29], v29);
          v40 = 3;
          *buf = &v40;
          v33 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a5, 3);
          if (v33[6] - v33[5] == 4)
          {
            v40 = 4;
            *buf = &v40;
            v34 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a5, 4);
            if (v34[6] - v34[5] == 8)
            {
              goto LABEL_5;
            }

            v35 = *a2;
            result = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              goto LABEL_25;
            }

            v40 = 4;
            *buf = &v40;
            v36 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a5, 4);
            v37 = v36[6] - v36[5];
            *buf = 134217984;
            *&buf[4] = v37;
            v18 = "EAP-SIM authentication invalid SRES size (%lu)";
          }

          else
          {
            v35 = *a2;
            result = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              goto LABEL_25;
            }

            v40 = 3;
            *buf = &v40;
            v38 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a5, 3);
            v39 = v38[6] - v38[5];
            *buf = 134217984;
            *&buf[4] = v39;
            v18 = "EAP-SIM authentication invalid SRES size (%lu)";
          }

          v20 = v35;
          goto LABEL_13;
        }
      }

      v17 = *a2;
      result = os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_25;
      }

      *buf = 0;
      v18 = "EAP-SIM authentication missing Kc field";
    }

    v20 = v17;
    v21 = 2;
    goto LABEL_24;
  }

  if (a3 != 1)
  {
    v19 = *a2;
    result = os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_25;
    }

    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    v18 = "SIM authenticate response invalid card %ss; dropping";
    v20 = v19;
LABEL_13:
    v21 = 12;
LABEL_24:
    _os_log_error_impl(&dword_2374EE000, v20, OS_LOG_TYPE_ERROR, v18, buf, v21);
    result = 0;
    goto LABEL_25;
  }

  if (a4[1] - *a4 != 12)
  {
    v22 = *a2;
    result = os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_25;
    }

    v23 = subscriber::asString();
    v24 = a4[1] - *a4;
    *buf = 136315394;
    *&buf[4] = v23;
    v42 = 2048;
    v43 = v24;
    v18 = "SIM authenticate response for card %s should be 12 bytes but is %zd bytes; dropping";
    goto LABEL_18;
  }

  v40 = 3;
  *buf = &v40;
  v8 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a5, 3);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v8 + 5, *a4, *a4 + 4, 4uLL);
  v40 = 4;
  *buf = &v40;
  v9 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a5, 4);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v9 + 5, a4[1] - 8, a4[1], 8uLL);
LABEL_5:
  result = 1;
LABEL_25:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL subscriber::SimCommandDriver::parseEapAka(uint64_t a1, os_log_t *a2, unsigned __int8 **a3, uint64_t a4)
{
  v5 = *a3;
  v6 = a3[1];
  if (*a3 == v6)
  {
    v14 = *a2;
    result = os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_error_impl(&dword_2374EE000, v14, OS_LOG_TYPE_ERROR, "EAP-AKA response empty; dropping", buf, 2u);
    return 0;
  }

  v8 = *v5;
  if (v8 != 219)
  {
    if (v8 != 220)
    {
      v11 = *a2;
      result = os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 0;
      v13 = "#I EAP-AKA authentication returned auth failure; dropping";
      goto LABEL_16;
    }

    v34 = 9;
    *buf = &v34;
    v9 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a4, 9);
    if (v5 + 1 == v6 || (v10 = v5[1], v6 - (v5 + 2) < v10))
    {
      v11 = *a2;
      result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 0;
      v13 = "#I EAP-AKA authentication missing AUTS field, dropping";
      goto LABEL_16;
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v9 + 5, v5 + 2, &v5[v10 + 2], v10);
    return 1;
  }

  v34 = 5;
  *buf = &v34;
  v15 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a4, 5);
  if (v5 + 1 == v6 || (v16 = v5 + 2, v17 = v5[1], v6 - (v5 + 2) < v17))
  {
    v11 = *a2;
    result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v13 = "#I EAP-AKA authentication missing RES field; dropping";
    goto LABEL_16;
  }

  v18 = &v16[v17];
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v15 + 5, v16, &v16[v17], v17);
  v34 = 6;
  *buf = &v34;
  v19 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a4, 6);
  if (v18 == v6 || (v22 = *v18, v21 = (v18 + 1), v20 = v22, v6 - v21 < v22))
  {
    v11 = *a2;
    result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 0;
      v13 = "#I EAP-AKA authentication missing CK field; dropping";
LABEL_16:
      _os_log_impl(&dword_2374EE000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
      return 0;
    }
  }

  else
  {
    v23 = &v21[v20];
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v19 + 5, v21, &v21[v20], v20);
    v34 = 7;
    *buf = &v34;
    v24 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a4, 7);
    if (v23 == v6 || (v27 = *v23, v26 = (v23 + 1), v25 = v27, v6 - v26 < v27))
    {
      v11 = *a2;
      result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        *buf = 0;
        v13 = "#I EAP-AKA authentication missing IK field; dropping";
        goto LABEL_16;
      }
    }

    else
    {
      v28 = &v26[v25];
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v24 + 5, v26, &v26[v25], v25);
      v34 = 4;
      *buf = &v34;
      v29 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a4, 4);
      if (v28 == v6)
      {
        return 1;
      }

      v32 = *v28;
      v31 = (v28 + 1);
      v30 = v32;
      if (v6 - v31 >= v32)
      {
        v33 = &v31[v30];
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v29 + 5, v31, &v31[v30], v30);
        v31 = v33;
      }

      if (v31 == v6)
      {
        return 1;
      }

      v11 = *a2;
      result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        *buf = 0;
        v13 = "#I EAP-AKA authentication has extra bytes left over; dropping";
        goto LABEL_16;
      }
    }
  }

  return result;
}

BOOL subscriber::SimCommandDriver::parseImsAka(uint64_t a1, os_log_t *a2, int a3, unsigned __int8 **a4, uint64_t a5)
{
  v6 = *a4;
  v7 = a4[1];
  if (*a4 == v7)
  {
    v15 = *a2;
    result = os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v17 = "#I AKA response empty; dropping";
    goto LABEL_16;
  }

  v10 = v6 + 1;
  v9 = *v6;
  if (v9 == 220)
  {
    v32 = 9;
    *buf = &v32;
    v18 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a5, 9);
    if (v10 == v7 || (v19 = (v6 + 2), v20 = v6[1], v7 - (v6 + 2) < v20))
    {
      v15 = *a2;
      result = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 0;
      v17 = "#I AKA authentication missing AUTS field; dropping";
      goto LABEL_16;
    }

    v26 = &v19[v20];
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v18 + 5, v19, &v19[v20], v20);
  }

  else
  {
    if (v9 != 219)
    {
      v15 = *a2;
      result = os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 0;
      v17 = "#I AKA authentication returned auth failure; dropping";
      goto LABEL_16;
    }

    v32 = 5;
    *buf = &v32;
    v12 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a5, 5);
    if (v10 == v7 || (v13 = (v6 + 2), v14 = v6[1], v7 - (v6 + 2) < v14))
    {
      v15 = *a2;
      result = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 0;
      v17 = "#I AKA authentication missing RES field; dropping";
      goto LABEL_16;
    }

    v21 = &v13[v14];
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v12 + 5, v13, &v13[v14], v14);
    v32 = 6;
    *buf = &v32;
    v22 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a5, 6);
    if (v21 == v7 || (v25 = *v21, v24 = (v21 + 1), v23 = v25, v7 - v24 < v25))
    {
      v15 = *a2;
      result = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        *buf = 0;
        v17 = "#I AKA authentication missing CK field; dropping";
LABEL_16:
        _os_log_impl(&dword_2374EE000, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
        return 0;
      }

      return result;
    }

    v27 = &v24[v23];
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v22 + 5, v24, &v24[v23], v23);
    v32 = 7;
    *buf = &v32;
    v28 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a5, 7);
    if (v27 == v7 || (v31 = *v27, v30 = (v27 + 1), v29 = v31, v7 - v30 < v31))
    {
      v15 = *a2;
      result = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        *buf = 0;
        v17 = "#I AKA authentication missing IK field; dropping";
        goto LABEL_16;
      }

      return result;
    }

    v26 = &v30[v29];
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v28 + 5, v30, &v30[v29], v29);
    if (a3)
    {
      if (v26 != v7)
      {
        v26 += *v26 + 1;
      }
    }
  }

  if (v26 == v7)
  {
    return 1;
  }

  v15 = *a2;
  result = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    *buf = 0;
    v17 = "#I AKA authentication has extra bytes left over; dropping";
    goto LABEL_16;
  }

  return result;
}

BOOL subscriber::SimCommandDriver::parseImsGbaBs(uint64_t a1, os_log_t *a2, unsigned __int8 **a3, uint64_t a4)
{
  v5 = *a3;
  v6 = a3[1];
  if (*a3 == v6)
  {
    v12 = *a2;
    result = os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v14 = "GBA-BS response empty; dropping";
    goto LABEL_16;
  }

  v8 = v5 + 1;
  v7 = *v5;
  if (v7 == 220)
  {
    v17 = 9;
    *buf = &v17;
    v9 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a4, 9);
    if (v8 == v6 || (v10 = (v5 + 2), v11 = v5[1], v6 - (v5 + 2) < v11))
    {
      v12 = *a2;
      result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 0;
      v14 = "GBA-BS authentication missing AUTS field; dropping";
      goto LABEL_16;
    }
  }

  else
  {
    if (v7 != 219)
    {
      v12 = *a2;
      result = os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 0;
      v14 = "GBA-BS authentication returned auth failure; dropping";
      goto LABEL_16;
    }

    v17 = 5;
    *buf = &v17;
    v9 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a4, 5);
    if (v8 == v6 || (v10 = (v5 + 2), v11 = v5[1], v6 - (v5 + 2) < v11))
    {
      v12 = *a2;
      result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 0;
      v14 = "GBA-BS authentication missing RES field; dropping";
LABEL_16:
      _os_log_error_impl(&dword_2374EE000, v12, OS_LOG_TYPE_ERROR, v14, buf, 2u);
      return 0;
    }
  }

  v15 = &v10[v11];
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v9 + 5, v10, &v10[v11], v11);
  if (v15 != v6)
  {
    v16 = *a2;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2374EE000, v16, OS_LOG_TYPE_ERROR, "GBA-BS authentication has extra bytes left over; dropping", buf, 2u);
    }
  }

  return 1;
}

BOOL subscriber::SimCommandDriver::parseImsGbaNaf(uint64_t a1, os_log_t *a2, unsigned __int8 **a3, uint64_t a4)
{
  v5 = *a3;
  v6 = a3[1];
  if (*a3 == v6)
  {
    v12 = *a2;
    result = os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v13 = "BGA-NAF response empty; dropping";
LABEL_11:
    _os_log_error_impl(&dword_2374EE000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    return 0;
  }

  if (*v5 != 219)
  {
    v12 = *a2;
    result = os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v13 = "GBA-NAF authentication returned auth failure; dropping";
    goto LABEL_11;
  }

  v16 = 8;
  *buf = &v16;
  v7 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(a4, 8);
  if (v5 + 1 == v6 || (v8 = (v5 + 2), v9 = v5[1], v6 - (v5 + 2) < v9))
  {
    v10 = *a2;
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_impl(&dword_2374EE000, v10, OS_LOG_TYPE_DEFAULT, "#I BGA-NAF authentication missing Ks_Ext_NAF field; dropping", buf, 2u);
    return 0;
  }

  v14 = &v8[v9];
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v7 + 5, v8, &v8[v9], v9);
  if (v14 != v6)
  {
    v15 = *a2;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2374EE000, v15, OS_LOG_TYPE_ERROR, "BGA-NAF authentication has extra bytes left over; dropping", buf, 2u);
    }
  }

  return 1;
}

uint64_t boost::signals2::signal<void ()(subscriber::SimSlot,subscriber::SimCard),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,subscriber::SimCard)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A7BB50;
  boost::detail::shared_count::~shared_count((a1 + 16));
  return a1;
}

void boost::signals2::signal<void ()(subscriber::SimSlot,subscriber::SimCard),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,subscriber::SimCard)>,boost::signals2::mutex>::~signal(uint64_t a1)
{
  *a1 = &unk_284A7BB50;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CD480);
}

uint64_t boost::signals2::signal<void ()(subscriber::SimSlot,subscriber::SimCard),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,subscriber::SimCard)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (*this && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

void sub_237505D60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<unsigned char>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<subscriber::SimDriverInfo>>(unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<subscriber::NpAppInfo>,subscriber::NpAppInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    for (i = **(a1 + 16); i != v3; i -= 40)
    {
      v5 = *(i - 32);
      if (v5)
      {
        *(i - 24) = v5;
        operator delete(v5);
      }
    }
  }

  return a1;
}

void std::vector<subscriber::NpAppInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<subscriber::NpAppInfo>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<subscriber::NpAppInfo>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void std::allocator_traits<std::allocator<subscriber::SimDriverInfo>>::destroy[abi:ne200100]<subscriber::SimDriverInfo,void,0>(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v4 = (a1 + 96);
  std::vector<subscriber::NpAppInfo>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;

    operator delete(v3);
  }
}

void std::vector<subscriber::SimDriverInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 144;
        std::allocator_traits<std::allocator<subscriber::SimDriverInfo>>::destroy[abi:ne200100]<subscriber::SimDriverInfo,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<subscriber::SimDriverInfo *,subscriber::SimDriverInfo *,subscriber::SimDriverInfo *>(__n128 *a1, __n128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6 * 16;
      v8 = a1[v6];
      *(v7 + 13) = *(&a1[v6] + 13);
      *v7 = v8;
      *(v7 + 32) = a1[v6 + 2].n128_u64[0];
      std::vector<unsigned char>::__move_assign(a3 + v6 * 16 + 40, &a1[v6 + 2].n128_i8[8]);
      *(v7 + 64) = a1[v6 + 4].n128_u64[0];
      v9 = &a1[v6 + 4].n128_i8[8];
      std::vector<unsigned char>::__move_assign(a3 + v6 * 16 + 72, v9);
      v10 = (a3 + v6 * 16 + 96);
      if (*v10)
      {
        std::vector<subscriber::NpAppInfo>::clear[abi:ne200100]((v7 + 96));
        operator delete(*v10);
        *v10 = 0;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0;
      }

      *v10 = a1[v6 + 6];
      *(v7 + 112) = a1[v6 + 7].n128_u64[0];
      a1[v6 + 6].n128_u64[0] = 0;
      a1[v6 + 6].n128_u64[1] = 0;
      a1[v6 + 7].n128_u64[0] = 0;
      if (*(v7 + 143) < 0)
      {
        operator delete(*(v7 + 120));
      }

      v11 = *(&a1[v6 + 7] + 8);
      *(v7 + 136) = a1[v6 + 8].n128_u64[1];
      *(v7 + 120) = v11;
      a1[v6 + 8].n128_u8[15] = 0;
      a1[v6 + 7].n128_u8[8] = 0;
      v6 += 9;
    }

    while (&v9[4].n128_i8[8] != a2);
    a3 += v6 * 16;
  }

  return a3;
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v9 = 2 * v7;
    if (2 * v7 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    std::vector<unsigned char>::__vallocate[abi:ne200100](v6, v10);
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = (&a3[v11] - v13);
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void event::EventLogger<void ()(subscriber::SimSlot,subscriber::SimCard),event::CSIEventLogger>::~EventLogger(uint64_t a1)
{
  *a1 = &unk_284A7BB50;
  boost::detail::shared_count::~shared_count((a1 + 16));

  JUMPOUT(0x2383CD480);
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,subscriber::SimCard),boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>>,boost::signals2::mutex>>>::clear(atomic_uint **a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 1);
    v4 = *v2;
    *(v4 + 1) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        boost::detail::shared_count::~shared_count(v2 + 3);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

BOOL boost::signals2::detail::group_key_less<int,std::less<int>>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *a1 < *a2;
  if (*a1 == *a2)
  {
    if (*a1 != 1)
    {
      return 0;
    }

    if ((*(a1 + 4) & 1) == 0 || (*(a2 + 4) & 1) == 0)
    {
      __assert_rtn("get", "optional.hpp", 1211, "this->is_initialized()");
    }

    return *(a1 + 8) < *(a2 + 8);
  }

  return v2;
}

uint64_t boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,subscriber::SimCard),boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>>,boost::signals2::mutex>>>>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::__tree<STKRegisteredEvent>::destroy(*(result + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,subscriber::SimCard),boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CD480);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,subscriber::SimCard),boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>>,boost::signals2::mutex>>>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    std::__tree<STKRegisteredEvent>::destroy(*(v1 + 32));
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,subscriber::SimCard),boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>>,boost::signals2::mutex>>>::clear(v1);

    JUMPOUT(0x2383CD480);
  }

  return result;
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::optional_last_value<void>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    JUMPOUT(0x2383CD480);
  }

  return result;
}

uint64_t boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,subscriber::SimCard),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,subscriber::SimCard)>,boost::signals2::mutex>::invocation_state>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    boost::detail::shared_count::~shared_count((result + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CD480);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,subscriber::SimCard),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,subscriber::SimCard)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 24));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CD480);
  }

  return result;
}

pthread_mutex_t *boost::detail::sp_counted_impl_p<boost::signals2::mutex>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    boost::signals2::mutex::~mutex(result);

    JUMPOUT(0x2383CD480);
  }

  return result;
}

void boost::signals2::mutex::~mutex(pthread_mutex_t *this)
{
  if (pthread_mutex_destroy(this))
  {
    __assert_rtn("~mutex", "lwm_pthreads.hpp", 55, "pthread_mutex_destroy(&m_) == 0");
  }
}

uint64_t boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,subscriber::SimCard),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,subscriber::SimCard)>,boost::signals2::mutex>>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    boost::detail::shared_count::~shared_count((result + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CD480);
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,subscriber::SimCard),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,subscriber::SimCard)>,boost::signals2::mutex>>::dispose(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    boost::detail::shared_count::~shared_count((v1 + 32));
    boost::detail::shared_count::~shared_count((v1 + 8));

    JUMPOUT(0x2383CD480);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__func<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::SimFilePath,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0,std::allocator<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::SimFilePath,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0>,void ()(std::optional<subscriber::SimFileAttributes>,subscriber::SimFileType)>::~__func(void *a1)
{
  *a1 = &unk_284A7BE40;
  std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::~__value_func[abi:ne200100]((a1 + 12));
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::SimFilePath,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0,std::allocator<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::SimFilePath,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0>,void ()(std::optional<subscriber::SimFileAttributes>,subscriber::SimFileType)>::~__func(void *a1)
{
  *a1 = &unk_284A7BE40;
  std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::~__value_func[abi:ne200100]((a1 + 12));
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2383CD480);
}

void sub_237506AB0(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v1[10] = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[5] = v6;
    operator delete(v6);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::SimFilePath,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0,std::allocator<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::SimFilePath,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0>,void ()(std::optional<subscriber::SimFileAttributes>,subscriber::SimFileType)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_284A7BE40;
  *(a2 + 8) = v4;
  v5 = *(a1 + 16);
  *(a2 + 32) = 0;
  *(a2 + 16) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2 + 32, *(a1 + 32), *(a1 + 40), *(a1 + 40) - *(a1 + 32));
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *(a2 + 72) = 0;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a2 + 72, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 1);
  return std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::__value_func[abi:ne200100](a2 + 96, a1 + 96);
}

void sub_237506BA0(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::SimFilePath,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0,std::allocator<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::SimFilePath,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0>,void ()(std::optional<subscriber::SimFileAttributes>,subscriber::SimFileType)>::destroy(void *a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::~__value_func[abi:ne200100]((a1 + 12));
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void std::__function::__func<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::SimFilePath,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0,std::allocator<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::SimFilePath,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0>,void ()(std::optional<subscriber::SimFileAttributes>,subscriber::SimFileType)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::~__value_func[abi:ne200100]((a1 + 12));
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  operator delete(a1);
}

void std::__function::__func<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::SimFilePath,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0,std::allocator<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::SimFilePath,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0>,void ()(std::optional<subscriber::SimFileAttributes>,subscriber::SimFileType)>::operator()(uint64_t a1, uint64_t *a2)
{
  v8 = *a2;
  v3 = *(a1 + 8);
  if ((v8 & 0x1000000000000) != 0)
  {
    (*(*v3[11] + 72))(v3[11], a1 + 16, *(a1 + 56), &v8);
    ((*v3)[3])(v3, a1 + 16, a1 + 64, WORD1(v8), a1 + 96);
  }

  else
  {
    v4 = *(*(*v3[6] + 16))(v3[6], *(a1 + 16));
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6) = 0;
      _os_log_error_impl(&dword_2374EE000, v4, OS_LOG_TYPE_ERROR, "Missing file attributes", &v6, 2u);
    }

    v6 = 0;
    v7 = 0;
    v5 = *(a1 + 120);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, &v6);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_237506DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::SimFilePath,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0,std::allocator<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::SimFilePath,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0>,void ()(std::optional<subscriber::SimFileAttributes>,subscriber::SimFileType)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t std::__function::__value_func<void ()(std::optional<subscriber::SimFileAttributes>,subscriber::SimFileType)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__func<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::FileId const&,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0,std::allocator<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::FileId const&,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0>,void ()(std::optional<subscriber::SimFileAttributes>,subscriber::SimFileType)>::~__func(void *a1)
{
  *a1 = &unk_284A7BED0;
  std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::~__value_func[abi:ne200100]((a1 + 11));
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::FileId const&,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0,std::allocator<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::FileId const&,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0>,void ()(std::optional<subscriber::SimFileAttributes>,subscriber::SimFileType)>::~__func(void *a1)
{
  *a1 = &unk_284A7BED0;
  std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::~__value_func[abi:ne200100]((a1 + 11));
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2383CD480);
}

void sub_2375070C4(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v1[9] = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[5] = v6;
    operator delete(v6);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::FileId const&,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0,std::allocator<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::FileId const&,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0>,void ()(std::optional<subscriber::SimFileAttributes>,subscriber::SimFileType)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_284A7BED0;
  *(a2 + 8) = v4;
  v5 = *(a1 + 16);
  *(a2 + 32) = 0;
  *(a2 + 16) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2 + 32, *(a1 + 32), *(a1 + 40), *(a1 + 40) - *(a1 + 32));
  v6 = *(a1 + 56);
  *(a2 + 64) = 0;
  *(a2 + 56) = v6;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a2 + 64, *(a1 + 64), *(a1 + 72), (*(a1 + 72) - *(a1 + 64)) >> 1);
  return std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::__value_func[abi:ne200100](a2 + 88, a1 + 88);
}

void sub_2375071AC(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::FileId const&,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0,std::allocator<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::FileId const&,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0>,void ()(std::optional<subscriber::SimFileAttributes>,subscriber::SimFileType)>::destroy(void *a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::~__value_func[abi:ne200100]((a1 + 11));
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void std::__function::__func<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::FileId const&,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0,std::allocator<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::FileId const&,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0>,void ()(std::optional<subscriber::SimFileAttributes>,subscriber::SimFileType)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::~__value_func[abi:ne200100]((a1 + 11));
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  operator delete(a1);
}

void std::__function::__func<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::FileId const&,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0,std::allocator<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::FileId const&,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0>,void ()(std::optional<subscriber::SimFileAttributes>,subscriber::SimFileType)>::operator()(uint64_t a1, uint64_t *a2, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a1 + 8);
  if ((*a2 & 0x1000000000000) == 0)
  {
    v6 = *(*(*v5[6] + 16))(v5[6], *(a1 + 16));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_error_impl(&dword_2374EE000, v6, OS_LOG_TYPE_ERROR, "Missing file attributes", &v17, 2u);
    }

    v17 = 0;
    v18 = 0;
    v7 = *(a1 + 112);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v7 + 48))(v7, &v17);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    goto LABEL_16;
  }

  v8 = *a3;
  if (*a3 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_16;
      }

LABEL_13:
      v9 = *(*(*v5[6] + 16))(v5[6], *(a1 + 16));
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_2374EE000, v9, OS_LOG_TYPE_DEFAULT, "#I Unsupported file type", &v17, 2u);
      }

      goto LABEL_16;
    }

    std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::__value_func[abi:ne200100](&v17, a1 + 88);
    ((*v5)[2])(v5, a1 + 16, a1 + 56, &v17);
    std::__function::__value_func<void ()(std::shared_ptr<std::vector<unsigned char>>)>::~__value_func[abi:ne200100](&v17);
LABEL_16:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v8 != 2)
  {
    if (v8 == 3)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v11 = (*v5)[3];
  v12 = *MEMORY[0x277D85DE8];
  v13 = a1 + 16;
  v14 = a1 + 56;
  v15 = a1 + 88;
  v16 = *(a1 + 8);

  v11(v16, v13, v14, WORD1(v4), v15);
}

uint64_t std::__function::__func<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::FileId const&,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0,std::allocator<subscriber::SimCommandDriver::readFile(subscriber::SimCardInfo const&,subscriber::FileId const&,std::function<void ()(std::shared_ptr<std::vector<unsigned char>>)> const&)::$_0>,void ()(std::optional<subscriber::SimFileAttributes>,subscriber::SimFileType)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<subscriber::SimCommandDriver>::execute_wrapped<subscriber::SimCommandDriver::bootstrap(dispatch::group_session)::$_0>(subscriber::SimCommandDriver::bootstrap(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<subscriber::SimCommandDriver::bootstrap(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<subscriber::SimCommandDriver::bootstrap(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  (*(**v1 + 168))(*v1);
  std::string::basic_string[abi:ne200100]<0>(__p, "/cc/props/call_state");
  v9 = &unk_284A7BF50;
  v10 = (v2 + 104);
  v11 = &v9;
  ctu::RestModule::observeProperty();
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](&v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "/cc/props/current_calls");
  v9 = &unk_284A7BFD0;
  v10 = (v2 + 108);
  v11 = &v9;
  ctu::RestModule::observeProperty();
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](&v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  Registry::createRestModuleOneTimeUseConnection(&v9, *(v2 + 56));
  ctu::RestModule::connect();
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::unique_ptr<CallAudioDriver::bootstrap(dispatch::group_session)::$_0,std::default_delete<CallAudioDriver::bootstrap(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&v6);
  result = std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2375076F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  std::unique_ptr<CallAudioDriver::bootstrap(dispatch::group_session)::$_0,std::default_delete<CallAudioDriver::bootstrap(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AppContext>::execute_wrapped<awd::AppContext::updateClientState(awd::ClientState)::$_0>(awd::AppContext::updateClientState(awd::ClientState)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::AppContext::updateClientState(awd::ClientState)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ctu::rest::property_derived_sink_t<call_state::active>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1},std::allocator<ctu::rest::property_derived_sink_t<call_state::active>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1}>,void ()(xpc::object)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A7BF50;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ctu::rest::property_derived_sink_t<call_state::active>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1},std::allocator<ctu::rest::property_derived_sink_t<call_state::active>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1}>,void ()(xpc::object)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v14 = 0;
  v15 = 0;
  v3 = *a2;
  v4 = MEMORY[0x277D86440];
  if (*a2 && MEMORY[0x2383CD810](*a2) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  std::__tree<std::__value_type<PersonalityID,CallStateSummary>,std::__map_value_compare<PersonalityID,std::__value_type<PersonalityID,CallStateSummary>,std::less<PersonalityID>,true>,std::allocator<std::__value_type<PersonalityID,CallStateSummary>>>::destroy(v14);
  v14 = 0;
  v15 = 0;
  if (MEMORY[0x2383CD810](v3) == v4)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    xpc::array::iterator::iterator(&v20, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (MEMORY[0x2383CD810](v3) == v4)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    v13 = v2;
    xpc::array::iterator::iterator(v19, object, count);
    xpc_release(object[0]);
    v6 = v21;
    v7 = MEMORY[0x277D86468];
    while (1)
    {
      if (v6 == v19[1] && v20 == v19[0])
      {
        xpc_release(v19[0]);
        xpc_release(v20);
        v2 = v13;
        goto LABEL_43;
      }

      v18 = 0;
      object[0] = &v20;
      object[1] = v6;
      xpc::array::object_proxy::operator xpc::dict(object, &v18);
      if (MEMORY[0x2383CD810](v18) == v7)
      {
        break;
      }

LABEL_41:
      xpc_release(v18);
      v6 = ++v21;
    }

    *object = 0u;
    v17 = 0u;
    HIDWORD(v17) = 1;
    v8 = v18;
    if (v18)
    {
      xpc_retain(v18);
      v25 = v8;
    }

    else
    {
      v8 = xpc_null_create();
      v25 = v8;
      if (!v8)
      {
        v9 = xpc_null_create();
        v8 = 0;
        goto LABEL_26;
      }
    }

    if (MEMORY[0x2383CD810](v8) == v7)
    {
      xpc_retain(v8);
      v9 = v8;
      goto LABEL_27;
    }

    v9 = xpc_null_create();
LABEL_26:
    v25 = v9;
LABEL_27:
    if (MEMORY[0x2383CD810](v9) == v7)
    {
      v22 = &v25;
      v23 = "first";
      xpc::dict::object_proxy::operator xpc::object(&v22, &v24);
      read_rest_value();
      xpc_release(v24);
      v22 = &v25;
      v23 = "second";
      xpc::dict::object_proxy::operator xpc::object(&v22, &v24);
      read_rest_value();
      xpc_release(v24);
      v9 = v25;
    }

    xpc_release(v9);
    xpc_release(v8);
    v10 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }

    v11 = &v14;
    while (1)
    {
      while (1)
      {
        v12 = v10;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(object, v10 + 4) & 0x80) == 0)
        {
          break;
        }

        v10 = *v12;
        v11 = v12;
        if (!*v12)
        {
          goto LABEL_38;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, object) & 0x80) == 0)
      {
        break;
      }

      v11 = v12 + 1;
      v10 = v12[1];
      if (!v10)
      {
        goto LABEL_38;
      }
    }

    if (!*v11)
    {
LABEL_38:
      operator new();
    }

    if (SBYTE7(v17) < 0)
    {
      operator delete(object[0]);
    }

    goto LABEL_41;
  }

LABEL_43:
  xpc_release(v3);
  *v2 = 0;
  std::__tree<std::__value_type<PersonalityID,CallStateSummary>,std::__map_value_compare<PersonalityID,std::__value_type<PersonalityID,CallStateSummary>,std::less<PersonalityID>,true>,std::allocator<std::__value_type<PersonalityID,CallStateSummary>>>::destroy(v14);
}

void sub_237507C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, xpc_object_t object, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, xpc_object_t a21, xpc_object_t a22, uint64_t a23, xpc_object_t a24)
{
  xpc_release(object);
  xpc_release(a24);
  xpc_release(v24);
  std::__tree<std::__value_type<PersonalityID,CallStateSummary>,std::__map_value_compare<PersonalityID,std::__value_type<PersonalityID,CallStateSummary>,std::less<PersonalityID>,true>,std::allocator<std::__value_type<PersonalityID,CallStateSummary>>>::destroy(a11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ctu::rest::property_derived_sink_t<call_state::active>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1},std::allocator<ctu::rest::property_derived_sink_t<call_state::active>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1}>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<PersonalityID,CallStateSummary>,std::__map_value_compare<PersonalityID,std::__value_type<PersonalityID,CallStateSummary>,std::less<PersonalityID>,true>,std::allocator<std::__value_type<PersonalityID,CallStateSummary>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<PersonalityID,CallStateSummary>,std::__map_value_compare<PersonalityID,std::__value_type<PersonalityID,CallStateSummary>,std::less<PersonalityID>,true>,std::allocator<std::__value_type<PersonalityID,CallStateSummary>>>::destroy(*a1);
    std::__tree<std::__value_type<PersonalityID,CallStateSummary>,std::__map_value_compare<PersonalityID,std::__value_type<PersonalityID,CallStateSummary>,std::less<PersonalityID>,true>,std::allocator<std::__value_type<PersonalityID,CallStateSummary>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t std::__function::__func<ctu::rest::property_derived_sink_t<current_calls::last_call_sub_type>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1},std::allocator<ctu::rest::property_derived_sink_t<current_calls::last_call_sub_type>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1}>,void ()(xpc::object)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A7BFD0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ctu::rest::property_derived_sink_t<current_calls::last_call_sub_type>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1},std::allocator<ctu::rest::property_derived_sink_t<current_calls::last_call_sub_type>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1}>,void ()(xpc::object)>::operator()(uint64_t a1, xpc_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v4 = MEMORY[0x277D86440];
  if (v3 && MEMORY[0x2383CD810](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v24 = v23;
  if (MEMORY[0x2383CD810](v3) == v4)
  {
    object = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    xpc::array::iterator::iterator(&v20, &object, 0);
    xpc_release(object);
    v26[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v26[0] = xpc_null_create();
    }

    v19 = v3;
    if (MEMORY[0x2383CD810](v3) == v4)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    xpc::array::iterator::iterator(&object, v26, count);
    xpc_release(v26[0]);
    for (i = v21; i != v28 || v20 != object; i = ++v21)
    {
      v26[0] = &v20;
      v26[1] = i;
      v7 = v24;
      if (v24 >= v25)
      {
        v9 = v24 - v23;
        if ((v9 + 1) >> 61)
        {
          std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
        }

        v10 = (v25 - v23) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v25 - v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CurrentCallInfo>>(v11);
        }

        v12 = (8 * v9);
        *v12 = 0;
        *v12 = xpc_null_create();
        v13 = v23;
        v14 = v24;
        v15 = 8 * v9 + v23 - v24;
        if (v23 != v24)
        {
          v16 = v23;
          v17 = (v12 + v23 - v24);
          do
          {
            *v17 = *v16;
            *v16++ = xpc_null_create();
            ++v17;
          }

          while (v16 != v14);
          do
          {
            std::__destroy_at[abi:ne200100]<CurrentCallInfo,0>(v13++);
          }

          while (v13 != v14);
          v13 = v23;
        }

        v8 = v12 + 1;
        v23 = v15;
        v24 = v8;
        v25 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v24 = 0;
        *v7 = xpc_null_create();
        v8 = v7 + 1;
      }

      v24 = v8;
      xpc::array::object_proxy::operator xpc::object(v26, &v29);
      read_rest_value();
      xpc_release(v29);
    }

    xpc_release(object);
    xpc_release(v20);
    v3 = v19;
  }

  xpc_release(v3);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  object = &v20;
  v18 = v24 - v23;
  if (v24 != v23)
  {
    v28 = 0;
    if (!((v18 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CurrentCallInfo>>(v18 >> 3);
    }

    std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
  }

  object = &v20;
  std::vector<CurrentCallInfo>::__destroy_vector::operator()[abi:ne200100](&object);
  object = &v23;
  std::vector<CurrentCallInfo>::__destroy_vector::operator()[abi:ne200100](&object);
}

void sub_237508294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, xpc_object_t object, uint64_t a19, char *a20)
{
  xpc_release(*(v20 - 88));
  xpc_release(object);
  a20 = &a12;
  std::vector<CurrentCallInfo>::__destroy_vector::operator()[abi:ne200100](&a20);
  a20 = &a15;
  std::vector<CurrentCallInfo>::__destroy_vector::operator()[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ctu::rest::property_derived_sink_t<current_calls::last_call_sub_type>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1},std::allocator<ctu::rest::property_derived_sink_t<current_calls::last_call_sub_type>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1}>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

xpc_object_t xpc::array::object_proxy::operator xpc::object@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CurrentCallInfo>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<CurrentCallInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<CurrentCallInfo,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t SimInstanceLoggerDefault<ctu::OsLogLogger,subscriber::HardwareSimSlot,std::function<char const* const ()(subscriber::HardwareSimSlot)>>::~SimInstanceLoggerDefault(uint64_t a1)
{
  *a1 = &unk_284A7C050;
  MEMORY[0x2383CCDD0](a1 + 32);
  std::__tree<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>>>::destroy(*(a1 + 16));
  return a1;
}

void SimInstanceLoggerDefault<ctu::OsLogLogger,subscriber::HardwareSimSlot,std::function<char const* const ()(subscriber::HardwareSimSlot)>>::~SimInstanceLoggerDefault(uint64_t a1)
{
  *a1 = &unk_284A7C050;
  MEMORY[0x2383CCDD0](a1 + 32);
  std::__tree<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>>>::destroy(*(a1 + 16));

  JUMPOUT(0x2383CD480);
}

uint64_t SimInstanceLoggerDefault<ctu::OsLogLogger,subscriber::HardwareSimSlot,std::function<char const* const ()(subscriber::HardwareSimSlot)>>::getLoggerForSlot(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return a1 + 32;
  }

  v3 = a1 + 16;
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v3 != a1 + 16 && *(v3 + 32) <= a2)
  {
    return v3 + 40;
  }

  else
  {
    return a1 + 32;
  }
}

uint64_t std::__function::__value_func<char const* const ()(subscriber::HardwareSimSlot)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void _GLOBAL__sub_I_SubscriberSimCommandDriver_cpp()
{
  v0 = *MEMORY[0x277D85DE8];
  event::subscriber::sim_refresh = &unk_284A7BB50;
  operator new();
}

void sub_237508FA0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,subscriber::SimCard),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,subscriber::SimCard)>,boost::signals2::mutex>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_237508FC0(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(&qword_2810D76F0);
  _Unwind_Resume(a1);
}

void sub_237508FDC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::signals2::mutex::~mutex(v2);
    MEMORY[0x2383CD480]();
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_237509010()
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v2);
  boost::detail::shared_count::~shared_count(v1);
  MEMORY[0x2383CD480](v0, 0x20C40769AC3DALL);
  JUMPOUT(0x2375091C4);
}

void sub_237509030(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(subscriber::SimSlot,subscriber::SimCard),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>,boost::function<void ()(boost::signals2::connection const&,subscriber::SimSlot,subscriber::SimCard)>,boost::signals2::mutex>::invocation_state>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_237509050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v15);
  std::__tree<STKRegisteredEvent>::destroy(a14);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,subscriber::SimCard),boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>>,boost::signals2::mutex>>>::clear(&a10);
  MEMORY[0x2383CD480](v14, 0x20C40769AC3DALL);
  JUMPOUT(0x2375091C4);
}

void sub_237509078(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    MEMORY[0x2383CD480](v2, 0xC400A2AC0F1);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_2375090A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v15);
  boost::detail::shared_count::~shared_count(v16);
  std::__tree<STKRegisteredEvent>::destroy(a14);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,subscriber::SimCard),boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>>,boost::signals2::mutex>>>::clear(&a10);
  MEMORY[0x2383CD480](v14, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x2375091ACLL);
}

void sub_2375090C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,subscriber::SimCard),boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>>,boost::signals2::mutex>>>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_2375090FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::__tree<STKRegisteredEvent>::destroy(a14);
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,subscriber::SimCard),boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>>,boost::signals2::mutex>>>::clear(&a10);
  MEMORY[0x2383CD480](v14, 0x20C40DC1BFBCFLL);
  JUMPOUT(0x2375091ACLL);
}

void sub_23750910C()
{
  std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(subscriber::SimSlot,subscriber::SimCard),boost::function<void ()(subscriber::SimSlot,subscriber::SimCard)>>,boost::signals2::mutex>>>::clear(v0);
  MEMORY[0x2383CD480](v0, 0x1020C40A2524F59);
  JUMPOUT(0x237509184);
}

void sub_237509120(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *operator<<(void *a1, unsigned int a2)
{
  v3 = asString(a2);
  v4 = strlen(v3);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
}

{
  if (a2 > 2)
  {
    v3 = "???";
  }

  else
  {
    v3 = off_278A339D8[a2];
  }

  v4 = strlen(v3);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
}

void VinylCommandDriver::VinylCommandDriver(VinylCommandDriver *this, char *a2)
{
  ctu::OsLogContext::OsLogContext(v7, *MEMORY[0x277CC4628], "vinyl");
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v5 = dispatch_queue_create(a2, v4);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v5;
  if (v5)
  {
    v6 = v5;
    dispatch_retain(v5);
    *(this + 4) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(this + 4) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x2383CCDC0](this + 40, v8);
  MEMORY[0x2383CCDD0](v8);
  ctu::OsLogContext::~OsLogContext(v7);
  *this = &unk_284A7C0A0;
  std::string::basic_string[abi:ne200100]<0>(this + 48, a2);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
}

void VinylCommandDriver::~VinylCommandDriver(VinylCommandDriver *this)
{
  *this = &unk_284A7C0A0;
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  MEMORY[0x2383CCDD0](this + 40);
  ctu::SharedSynchronizable<AttachApnCommandDriver>::~SharedSynchronizable(this + 1);
}

void VinylCommandDriver::queryCsn(void *a1, int a2, uint64_t a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZN18VinylCommandDriver8queryCsnEN10subscriber7SimSlotEU13block_pointerFvN3ctu6resultINSt3__15arrayIhLm16EEENS4_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v9[3] = &unk_278A336D8;
  v10 = a2;
  v9[4] = a3;
  v9[5] = a1;
  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void VinylCommandDriver::getSignIdMap(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylCommandDriver12getSignIdMapEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v11[3] = &unk_284A7C228;
  v15 = a2;
  v11[5] = a1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v11[4] = a4;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void ___ZN18VinylCommandDriver12getSignIdMapEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 32))(v3, v2, &__p, *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_2375097C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_48c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = a1 + 48;
  *(v2 + 16) = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v2, *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
}

void __destroy_helper_block_e8_48c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void VinylCommandDriver::fetchProfiles(void *a1, int a2, uint64_t a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZN18VinylCommandDriver13fetchProfilesEN10subscriber7SimSlotEU13block_pointerFvN3ctu6resultINSt3__16vectorIhNS4_9allocatorIhEEEENS4_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v9[3] = &unk_278A33700;
  v10 = a2;
  v9[4] = a3;
  v9[5] = a1;
  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void VinylCommandDriver::activateProfile(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 0x40000000;
  v14[2] = ___ZN18VinylCommandDriver15activateProfileEN10subscriber7SimSlotENSt3__15arrayIhLm16EEEU13block_pointerFvN3ctu6resultIbNS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v14[3] = &unk_278A33728;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v14[4] = a5;
  v14[5] = a1;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v13 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v14;
  dispatch_async(v10, block);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_237509AA8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void VinylCommandDriver::deactivateProfile(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 0x40000000;
  v14[2] = ___ZN18VinylCommandDriver17deactivateProfileEN10subscriber7SimSlotENSt3__15arrayIhLm16EEEU13block_pointerFvN3ctu6resultIbNS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v14[3] = &unk_278A33750;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v14[4] = a5;
  v14[5] = a1;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v13 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v14;
  dispatch_async(v10, block);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_237509C38(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void VinylCommandDriver::deleteProfiles(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1174405120;
  v16[2] = ___ZN18VinylCommandDriver14deleteProfilesEN10subscriber7SimSlotENSt3__15arrayIhLm16EEENS2_6vectorIS4_NS2_9allocatorIS4_EEEEU13block_pointerFvN3ctu6resultIbNS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v16[3] = &unk_284A7C260;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v16[5] = a1;
  __p = 0;
  v18 = 0;
  v19 = 0;
  std::vector<std::array<unsigned char,16ul>>::__init_with_size[abi:ne200100]<std::array<unsigned char,16ul>*,std::array<unsigned char,16ul>*>(&__p, *a5, a5[1], (a5[1] - *a5) >> 4);
  v16[4] = a6;
  v8 = a1[2];
  if (!v8 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = a1[3];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1174405120;
  v14[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v14[3] = &unk_284A7C748;
  v14[5] = v9;
  v15 = v11;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14[4] = v16;
  dispatch_async(v12, v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_237509DFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ___ZN18VinylCommandDriver14deleteProfilesEN10subscriber7SimSlotENSt3__15arrayIhLm16EEENS2_6vectorIS4_NS2_9allocatorIS4_EEEEU13block_pointerFvN3ctu6resultIbNS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 76);
  v4 = *(a1 + 84);
  v7 = 0;
  v8 = 0;
  __p = 0;
  v5 = *(a1 + 40);
  std::vector<std::array<unsigned char,16ul>>::__init_with_size[abi:ne200100]<std::array<unsigned char,16ul>*,std::array<unsigned char,16ul>*>(&__p, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 4);
  (*(*v5 + 64))(v5, v2, v3, v4, &__p, *(a1 + 32));
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_237509EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_48c58_ZTSNSt3__16vectorINS_5arrayIhLm16EEENS_9allocatorIS2_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = a1 + 48;
  *(v2 + 16) = 0;
  std::vector<std::array<unsigned char,16ul>>::__init_with_size[abi:ne200100]<std::array<unsigned char,16ul>*,std::array<unsigned char,16ul>*>(v2, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 4);
}

void __destroy_helper_block_e8_48c58_ZTSNSt3__16vectorINS_5arrayIhLm16EEENS_9allocatorIS2_EEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void VinylCommandDriver::getCardInfo(void *a1, int a2, uint64_t a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZN18VinylCommandDriver11getCardInfoEN10subscriber7SimSlotEU13block_pointerFvN3ctu6resultINSt3__16vectorIhNS4_9allocatorIhEEEENS4_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v9[3] = &unk_278A33778;
  v10 = a2;
  v9[4] = a3;
  v9[5] = a1;
  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void VinylCommandDriver::getFirmwareUpdateData(void *a1, int a2, uint64_t a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZN18VinylCommandDriver21getFirmwareUpdateDataEN10subscriber7SimSlotEU13block_pointerFvN3ctu6resultI23VinylFirmwareUpdateDataNSt3__15tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v9[3] = &unk_278A337A0;
  v10 = a2;
  v9[4] = a3;
  v9[5] = a1;
  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void VinylCommandDriver::secureAuth(void *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1174405120;
  v13[2] = ___ZN18VinylCommandDriver10secureAuthEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEERKS6_U13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v13[3] = &unk_284A7C298;
  v18 = a2;
  v13[5] = a1;
  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v17 = a4;
  v13[4] = a5;
  v8 = a1[2];
  if (!v8 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v9;
  v20 = v11;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v13;
  dispatch_async(v12, block);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }
}

void VinylCommandDriver::signPayload(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylCommandDriver11signPayloadEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v11[3] = &unk_284A7C2D0;
  v15 = a2;
  v11[5] = a1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v11[4] = a4;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void ___ZN18VinylCommandDriver11signPayloadEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 96))(v3, v2, &__p, *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23750A504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VinylCommandDriver::getSessionData(void *a1, int a2, uint64_t a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZN18VinylCommandDriver14getSessionDataEN10subscriber7SimSlotEU13block_pointerFvN3ctu6resultINSt3__16vectorIhNS4_9allocatorIhEEEENS4_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v9[3] = &unk_278A337C8;
  v10 = a2;
  v9[4] = a3;
  v9[5] = a1;
  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void VinylCommandDriver::clearSessionData(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylCommandDriver16clearSessionDataEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIbNS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v11[3] = &unk_284A7C308;
  v15 = a2;
  v11[5] = a1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v11[4] = a4;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void ___ZN18VinylCommandDriver16clearSessionDataEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIbNS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 112))(v3, v2, &__p, *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23750A848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VinylCommandDriver::getVinylSlotTestMode(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v6, a2);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_23750A994(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void VinylCommandDriver::enableVinylSlotTestMode(uint64_t a1, char a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v8, a3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 8);
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_23750AAF0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void VinylCommandDriver::getTapeEid(void *a1, int a2, uint64_t a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZN18VinylCommandDriver10getTapeEidEN10subscriber7SimSlotEU13block_pointerFvN3ctu6resultINSt3__15arrayIhLm16EEENS4_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v9[3] = &unk_278A337F0;
  v10 = a2;
  v9[4] = a3;
  v9[5] = a1;
  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void VinylCommandDriver::enableTapeProfile(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylCommandDriver17enableTapeProfileEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v11[3] = &unk_284A7C340;
  v15 = a2;
  v11[5] = a1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v11[4] = a4;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void ___ZN18VinylCommandDriver17enableTapeProfileEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 176))(v3, v2, &__p, *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23750AE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VinylCommandDriver::disableTapeProfile(void *a1, int a2, uint64_t *a3, char a4, uint64_t a5)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1174405120;
  v13[2] = ___ZN18VinylCommandDriver18disableTapeProfileEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEbU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v13[3] = &unk_284A7C378;
  v17 = a2;
  v13[5] = a1;
  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v18 = a4;
  v13[4] = a5;
  v8 = a1[2];
  if (!v8 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v9;
  v20 = v11;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v13;
  dispatch_async(v12, block);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }
}

void ___ZN18VinylCommandDriver18disableTapeProfileEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEbU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 184))(v3, v2, &__p, *(a1 + 76), *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23750B034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VinylCommandDriver::deleteTapeProfile(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylCommandDriver17deleteTapeProfileEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v11[3] = &unk_284A7C3B0;
  v15 = a2;
  v11[5] = a1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v11[4] = a4;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void ___ZN18VinylCommandDriver17deleteTapeProfileEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 192))(v3, v2, &__p, *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23750B22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VinylCommandDriver::getTapeEuiccInfo(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylCommandDriver16getTapeEuiccInfoEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v11[3] = &unk_284A7C3E8;
  v15 = a2;
  v11[5] = a1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v11[4] = a4;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void ___ZN18VinylCommandDriver16getTapeEuiccInfoEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 200))(v3, v2, &__p, *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23750B424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VinylCommandDriver::tapeSetProprietaryData(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylCommandDriver22tapeSetProprietaryDataEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v11[3] = &unk_284A7C420;
  v15 = a2;
  v11[5] = a1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v11[4] = a4;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void ___ZN18VinylCommandDriver22tapeSetProprietaryDataEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 312))(v3, v2, &__p, *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23750B630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VinylCommandDriver::getTapeEuiccChallenge(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylCommandDriver21getTapeEuiccChallengeEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v11[3] = &unk_284A7C458;
  v15 = a2;
  v11[5] = a1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v11[4] = a4;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void ___ZN18VinylCommandDriver21getTapeEuiccChallengeEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 208))(v3, v2, &__p, *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23750B828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VinylCommandDriver::tapeAuthenticateServer(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylCommandDriver22tapeAuthenticateServerEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v11[3] = &unk_284A7C490;
  v15 = a2;
  v11[5] = a1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v11[4] = a4;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void ___ZN18VinylCommandDriver22tapeAuthenticateServerEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 216))(v3, v2, &__p, *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23750BA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VinylCommandDriver::tapePrepareDownload(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylCommandDriver19tapePrepareDownloadEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v11[3] = &unk_284A7C4C8;
  v15 = a2;
  v11[5] = a1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v11[4] = a4;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void ___ZN18VinylCommandDriver19tapePrepareDownloadEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 224))(v3, v2, &__p, *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23750BC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VinylCommandDriver::tapeLoadBoundProfilePackage(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylCommandDriver27tapeLoadBoundProfilePackageEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v11[3] = &unk_284A7C500;
  v15 = a2;
  v11[5] = a1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v11[4] = a4;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void ___ZN18VinylCommandDriver27tapeLoadBoundProfilePackageEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 232))(v3, v2, &__p, *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23750BE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VinylCommandDriver::tapeListProfilesInfo(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylCommandDriver20tapeListProfilesInfoEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v11[3] = &unk_284A7C538;
  v15 = a2;
  v11[5] = a1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v11[4] = a4;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void ___ZN18VinylCommandDriver20tapeListProfilesInfoEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 240))(v3, v2, &__p, *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23750C008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VinylCommandDriver::tapeListNotifications(void *a1, int a2, uint64_t a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZN18VinylCommandDriver21tapeListNotificationsEN10subscriber7SimSlotEU13block_pointerFvN3ctu6resultINSt3__16vectorIhNS4_9allocatorIhEEEENS4_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v9[3] = &unk_278A33818;
  v10 = a2;
  v9[4] = a3;
  v9[5] = a1;
  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void VinylCommandDriver::tapeGetNotification(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylCommandDriver19tapeGetNotificationEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v11[3] = &unk_284A7C570;
  v15 = a2;
  v11[5] = a1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v11[4] = a4;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void ___ZN18VinylCommandDriver19tapeGetNotificationEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 256))(v3, v2, &__p, *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23750C360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VinylCommandDriver::tapeDeleteNotification(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylCommandDriver22tapeDeleteNotificationEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v11[3] = &unk_284A7C5A8;
  v15 = a2;
  v11[5] = a1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v11[4] = a4;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void ___ZN18VinylCommandDriver22tapeDeleteNotificationEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = *(a1 + 40);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  (*(*v3 + 264))(v3, v2, &__p, *(a1 + 32));
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23750C56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VinylCommandDriver::tapeResetMemory(void *a1, int a2, uint64_t a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZN18VinylCommandDriver15tapeResetMemoryEN10subscriber7SimSlotEU13block_pointerFvN3ctu6resultINSt3__16vectorIhNS4_9allocatorIhEEEENS4_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v9[3] = &unk_278A33840;
  v10 = a2;
  v9[4] = a3;
  v9[5] = a1;
  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void VinylCommandDriver::tapeCancelSession(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylCommandDriver17tapeCancelSessionEN10subscriber7SimSlotENSt3__16vectorIhNS2_9allocatorIhEEEEU13block_pointerFvN3ctu6resultIS6_NS2_5tupleIJ16VinylDriverErrorhhEEEEEE_block_invoke;
  v11[3] = &unk_284A7C5E0;
  v15 = a2;
  v11[5] = a1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
  v11[4] = a4;
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18VinylCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284A7C748;
  block[5] = v7;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}